# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create(first_name:"Joe", last_name:"Schmoe", current_city:"San Francisco", email:"joe@mail.com", password:"password")
u2 = User.create(first_name:"Bob", last_name:"Jones", current_city:"New York", email:"bob@mail.com", password:"password")
u3 = User.create(first_name:"Sue", last_name:"Smith", current_city:"Chicago", email:"sue@mail.com", password:"password")
u4 = User.create(first_name:"Don", last_name:"Ho", current_city:"Honolulu", email:"don@mail.com", password:"password")
u5 = User.create(first_name:"Betty", last_name:"Hosehead", current_city:"Toronto", email:"betty@mail.com", password:"password")
u6 = User.create(first_name:"Julia", last_name:"Mozzarella", current_city:"Rome", email:"julia@mail.com", password:"password")
u7 = User.create(first_name:"Mary", last_name:"Brown", current_city:"Sydney", email:"mary@mail.com", password:"password")
u8 = User.create(first_name:"Jorge", last_name:"Villalobos", current_city:"Barcelona", email:"jorge@mail.com", password:"password")
u9 = User.create(first_name:"Hans", last_name:"Gruber", current_city:"Berlin", email:"hiro@mail.com", password:"password")

c1 = City.create(name:"San Francisco")
c2 = City.create(name:"New York")
c3 = City.create(name:"Chicago")
c4 = City.create(name:"London")
c5 = City.create(name:"Sydney")
c6 = City.create(name:"Copenhagen")
c7 = City.create(name:"Tokyo")
c8 = City.create(name:"Honolulu")
c9 = City.create(name:"Toronto")
c10 = City.create(name:"Barcelona")
c12 = City.create(name:"Rome")
c13 = City.create(name:"Berlin")

l1 = Log.create(title:"Wtf, Barcelona",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac metus molestie, tempus diam blandit, sodales turpis. Nunc tempus pretium orci nec placerat. Duis leo diam, ultrices in efficitur eu, mollis pellentesque ante. Aenean pretium quam vel vehicula pharetra. Duis in accumsan metus, quis ultricies velit. Etiam at ex vitae nunc sollicitudin blandit. Phasellus maximus vitae ligula sit amet dapibus. Curabitur rhoncus mauris massa, non vestibulum lectus pulvinar at. Vivamus id odio ac massa ultricies tincidunt. Pellentesque volutpat dui ac quam ullamcorper commodo. Aliquam erat volutpat. In pellentesque luctus dolor, et fringilla risus euismod ac. Nam mauris dolor, feugiat sed quam nec, mattis ullamcorper sem.",
  city_id:c10.id,
  user_id:u7.id)
l2 = Log.create(title:"Copenhagen is cold",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ipsum nisl, suscipit nec orci sit amet, finibus tempus eros. Nam eu egestas neque. Praesent eget mauris tincidunt, fermentum nisl vitae, sodales metus. Sed in scelerisque diam. Proin eget sem auctor, viverra purus quis, efficitur felis. Curabitur quis mauris elit. Duis massa dui, cursus sit amet nibh non, porta dictum turpis. Morbi euismod rhoncus elit in dapibus. Maecenas est arcu, elementum quis diam sed, pulvinar lacinia odio. Aliquam elementum sollicitudin semper. Mauris eu tristique sapien.",
  city_id:c6.id,
  user_id:u3.id)
l3 = Log.create(title:"Honolulu is nice",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis, dui vel dictum consequat, leo purus semper velit, in tincidunt turpis lectus ac mauris. Morbi non metus convallis, fringilla leo ut, porta augue. Vestibulum sed ligula venenatis, bibendum lacus nec, tincidunt mauris. Sed lacinia metus erat. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean ut euismod ex. Aenean pharetra leo at arcu porttitor dictum. Donec sollicitudin ante eu sapien interdum, ac porttitor velit blandit. In vehicula eros quis dui lacinia faucibus. Mauris fermentum sodales varius. Praesent sodales odio fringilla mauris vehicula fermentum. Mauris vitae velit tincidunt, aliquet lectus pharetra, eleifend enim. Suspendisse potenti. Sed erat orci, interdum sit amet risus condimentum, tincidunt pretium risus. Nulla ante libero, mattis vitae blandit gravida, congue sed erat. Interdum et malesuada fames ac ante ipsum primis in faucibus.",
  city_id:c8.id,
  user_id:u5.id)
l4 = Log.create(title:"Ride the trolleys",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rhoncus dignissim mi ut cursus. Suspendisse mattis felis at justo dignissim, id sagittis ex hendrerit. Sed sed pellentesque dolor. Nam ut suscipit ipsum. Proin suscipit turpis ut est consequat tincidunt. Vivamus ut eros et nulla fermentum tempus. Aliquam erat volutpat. Mauris bibendum laoreet purus et luctus. Fusce sed nulla eget metus finibus pulvinar. Etiam justo mi, pellentesque non enim in, aliquet luctus tellus. Aliquam non erat in purus suscipit rhoncus eu ac velit.",
  city_id:c1.id,
  user_id:u4.id)
l5 = Log.create(title:"Put another shrimp on the barbie",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed scelerisque nunc ac justo vestibulum dignissim. Vivamus egestas, elit quis tempor pulvinar, justo ante venenatis libero, vel blandit velit nunc vitae elit. Vestibulum convallis mauris tortor, tristique tempus ante consequat non. Maecenas facilisis, nisi sed consequat convallis, ipsum magna suscipit ante, vel auctor urna libero id urna. Integer mollis felis id aliquam tempus. Donec nec nisi leo. Integer elit lectus, varius at massa id, efficitur consequat odio. Etiam commodo ante quis tempus ultricies. Aenean eget rutrum velit, ac vestibulum augue. Nam at sollicitudin nibh. Nam vel hendrerit augue, at imperdiet urna.",
  city_id:c5.id,
  user_id:u9.id)
l6 = Log.create(title:"Ich Bein Ein Berliner",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ornare, velit nec ultricies auctor, mi turpis rutrum ligula, nec lacinia neque arcu ac augue. Cras venenatis ligula id massa commodo, semper mollis risus pellentesque. Praesent ultrices nec massa eu volutpat. Praesent non metus lobortis, finibus libero vel, viverra ipsum. Sed id purus vitae quam tincidunt fringilla eget id mi. Aenean semper id neque id mollis. Cras vehicula ultrices nibh in pellentesque. Fusce imperdiet nunc at nunc bibendum hendrerit.",
  city_id:c13.id,
  user_id:u8.id)
l7 = Log.create(title:"Let's drink some pints",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum magna sapien, pulvinar ac risus ac, suscipit gravida augue. Nullam ipsum neque, aliquet in euismod ut, bibendum ac ligula. Donec at ante non est pellentesque consequat. Quisque interdum ex id euismod hendrerit. Aenean a quam volutpat, vestibulum arcu vitae, pulvinar est. Nunc in augue lectus. Integer ut ornare nibh.",
  city_id:c4.id,
  user_id:u1.id)
l8 = Log.create(title:"I did it my way",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque nibh lacus, scelerisque et ultrices tempor, fringilla ut enim. Nulla iaculis mi vitae nulla volutpat posuere. Mauris accumsan justo augue, sed volutpat lorem egestas eu. Pellentesque sagittis consequat magna, a egestas leo finibus at. Nam id dui id risus ullamcorper dictum. Sed vitae placerat magna, ac hendrerit nulla. Donec congue volutpat rutrum. Pellentesque tristique purus pellentesque, fringilla metus id, congue leo. Phasellus aliquet id dolor sed tincidunt. Pellentesque et urna gravida, pellentesque dui eu, ultrices sem. Nam id magna eget ex aliquam suscipit. Vestibulum sit amet risus aliquet mauris consequat vehicula. Integer luctus sit amet ex a scelerisque. Sed accumsan lorem orci, id pretium ante tempor at.",
  city_id:c2.id,
  user_id:u2.id)
l9 = Log.create(title:"Stanley Cup winners!!!",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus lorem risus, volutpat non mi non, semper fringilla felis. Sed ultricies dolor sit amet nunc blandit malesuada porta a neque. Praesent neque odio, faucibus et molestie non, pretium aliquet urna. Nulla sed sollicitudin tellus, in convallis odio. Aenean aliquet sagittis massa, nec commodo nulla varius nec. Integer ultricies leo vel tempus blandit. Pellentesque suscipit, neque in fringilla tristique, erat enim facilisis massa, at ornare odio magna in ipsum. Phasellus in mauris lectus. Ut dignissim, elit nec commodo commodo, nunc purus finibus dolor, eget porta urna nisl vitae metus. Phasellus dignissim ullamcorper blandit. In dignissim tempus tellus, a tempor tortor pulvinar sit amet. Integer id sem aliquet, viverra eros finibus, egestas lacus. Proin neque justo, placerat at sollicitudin ut, scelerisque ut nisl. Mauris sit amet quam vitae leo vehicula malesuada.",
  city_id:c3.id,
  user_id:u4.id)
l10 = Log.create(title:"Lots to see in Rome",
  content:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis dapibus dui, sed consequat sapien ultricies quis. Integer ultrices urna augue, eget luctus libero dictum eget. Nunc id felis molestie, tincidunt metus ut, congue ante. Phasellus eros dui, sodales vel diam nec, hendrerit bibendum felis. Praesent porttitor orci neque, ut semper nisi aliquet a. Vivamus volutpat sed lectus at suscipit. Nullam ut ante dignissim, imperdiet ex nec, facilisis diam. Praesent blandit lectus quis eros blandit pulvinar. Pellentesque non finibus tellus, vel sollicitudin dolor. Vivamus dignissim eu purus nec tempor. Quisque tincidunt massa et ligula venenatis, quis suscipit ipsum tristique. Aliquam nec nisi laoreet quam convallis elementum non lobortis est. Aenean commodo lacinia tortor ac ultricies. Nulla in justo eu neque facilisis tempor sed eget metus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam porttitor odio nisl, non placerat leo ornare id.",
  city_id:c12.id,
  user_id:u7.id)


