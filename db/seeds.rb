# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = ["Kiev", "Kharkiv", "Dnipropetrovsk", "Odessa", "Donetsk", "Zaporizhia", "Lviv", "Kryvyi Rih", "Mykolaiv", "Mariupol", 
         "Luhansk", "Makiivka", "Vinnytsia", "Simferopol", "Sevastopol", "Kherson", "Poltava", "Chernihiv", "Cherkasy", "Sumy", 
         "Horlivka", "Zhytomyr", "Dniprodzerzhynsk", "Kirovohrad", "Khmelnytskyi", "Rivne", "Chernivtsi", "Kremenchuk", "Ternopil", 
         "Ivano-Frankivsk", "Lutsk", "Bila Tserkva", "Kramatorsk", "Melitopol", "Kerch", "Nikopol", "Sloviansk", "Berdiansk", 
         "Sieverodonetsk", "Alchevsk", "Pavlohrad", "Uzhhorod", "Lysychansk", "Yevpatoria", "Yenakiieve", "Kamianets-Podilskyi", 
         "Kostiantynivka", "Krasnyi Luch", "Oleksandriia", "Konotop", "Stakhanov", "Uman", "Berdychiv", "Shostka", "Brovary", "Izmail", 
         "Artemivsk", "Mukachevo", "Yalta", "Drohobych", "Nizhyn", "Feodosiya", "Sverdlovsk", "Novomoskovsk", "Torez", "Chervonohrad", 
         "Pervomaisk", "Smila", "Krasnoarmiysk", "Kalush", "Korosten", "Kovel", "Rubizhne", "Pryluky", "Druzhkivka", "Khartsyzk", "Lozova", 
         "Antratsyt", "Stryi", "Kolomyia", "Shakhtarsk", "Snizhne", "Novohrad-Volynskyi", "Enerhodar", "Izium", "Dymytrov", "Brianka"]

City.create!(names.map { |n| { :name => n } })
