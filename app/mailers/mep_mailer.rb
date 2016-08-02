class MepMailer < ActionMailer::Base
  default from: "mepcontactcampaign@gmail.com"

  def initial_contact(message)
  	@message = message
  	mail(from: "#{message.from_name} <#{message.from_email}>", reply_to: "mepcontactcampaign@gmail.com", to: "hellomep@ianmoss.com", subject: "Please support the remainers.")  	
  	#message.mep.email

  end

end