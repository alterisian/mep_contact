class MessagesController < InheritedResources::Base

	def new
		@mep = Mep.find_one
		@message = Message.new
		@message.mep = @mep
		@message.value = Template.where("active IS ?", true).first.text_en
	end

	def create
		@mep = Mep.find_one
    @message = Message.new(message_params)
    @message.mep = @mep
		@message.value = Template.where("active IS ?", true).first.text_en
		@message.uniqueid = Devise.friendly_token.first(16)
		@message.ip_address = request.remote_ip

    respond_to do |format|
			@message.value += "Please select the following link to show you support those who voted to remain in the EU. " + message_url(@message.uniqueid)    	

      if @message.save
      	
      	MepMailer.initial_contact(@message).deliver #now #TODO: consider queueing .deliver_later

        format.html { redirect_to about_url, notice: "Message to #{@message.mep.name} was successfully sent." }        
      else
      	@mep = Mep.find_one
        format.html { render :new }        
      end
    end
  end

  def update
  	id = params(:id)

  	respond_to do |format|
	  	if id.length == 16
	  		@message = Message.where("uniqueid=?",id)
	  		@message.mep_support = true
	  		@message.save

	  		if @message.mep.mep_support.nil?
	  			@message.mep.mep_support = true
	  			@mep = @message.mep 
	  			@mep.mep_support = true
	  			@mep.save
	  		end

				format.html { redirect_to about_url, notice: "Thank you for supporting this campaign, #{@message.mep.name}." }
			else
				format.html { redirect_to about_url, notice: "Your link hasn't worked. Please try again." }
	  	end
	  end
  end

  private

    def message_params
      params.require(:message).permit(:mep_id, :from_name, :from_email, :from_location, :ip_address, :lat, :lng, :value)
    end
end