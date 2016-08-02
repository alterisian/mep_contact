#"name","country","group","id","email"
require 'csv'
csv_file = "./meps.csv"
meps = CSV.foreach(csv_file, encoding: "bom|utf-8", headers: :first_row, return_headers: :true)

meps.each do |mep|
	puts mep[0], mep[1], mep[2], mep[3], mep[4]
	puts "===================================="
	new_mep = Mep.create(id: mep[3], name: mep[0], country: mep[1], group: mep[2], email: mep[4])
end

	#Add 8 ch public ref - can use devise
	#Add 