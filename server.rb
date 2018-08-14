require 'sinatra'

get '/' do
  erb :home
end

get '/cookie' do
  @snickerdoodle = Cookie.new('Snickerdoodle', 'To me, Snickerdoodles are the quintessential Christmas cookie. Nope, they are altogether the quintessential cookie. Not chocolate chip cookies. Not oatmeal. And for heaven’s sake, not fussy decorated cookies.')
  @madeleine = Cookie.new('Madeleine', 'Are they cookies? Are they tiny cakes? (I’m having flashbacks of Fig Newton commercials now.) I think of madeleines as cake-like cookies: pillow-y with a beautiful crumb, delicate but sturdy enough for a glaze or a dip in melted chocolate.')
  @butterscotch = Cookie.new('Butterscotch Chocolate Chunk Cookies', 'These soft and chewy Butterscotch Chocolate Chunk Cookies are a staple at our bakery. We can bake a batch with our eyes closed because we bake them so often. Our staff loves them and I hope you do too!')
  cookie_arr = [@snickerdoodle, @madeleine, @butterscotch]
  erb :cookie
end

get '/muffin' do
  @chocolate = Muffin.new('Chocolate Streusel Muffins', 'These chocolate streusel muffins are serious business. Seriously chocolate, that is. They’re made with cocoa powder, mini chocolate chips, regular chocolate chips, and chocolate milk! If you have a chocolate-lover in your house, these muffins are made for them!')
  @cornemal = Muffin.new('Cornmeal Muffins with Blackberry Jam', 'There’s something so comforting about corn breads: cornbread, corn muffins, corn sticks. Don’t even get me started on hushpuppies. These corn muffins are simply enough to whip up anytime. They’re perfect for breakfast, of course, but also great for a snack or to go with lunch.', '$6')
  @brown_butter = Muffin.new('Brown BUtter Apple Cinnamon MUffins', 'The muffins are perfectly spiced and have big chunks of apples inside. They are finished with a simple cinnamon sugar topping that is pretty and sweet. And the brown butter, yeah, it makes these muffins extra special.')
  muffin_arr = [@chocolate, @cornmeal, @brown_butter]
  erb :muffin
end

get '/cake' do
  @bundt = Cake.new('Meyer Lemon, Ginger, and Turmeric Cake', 'Please do not run screaming from this post. I know turmeric cake may sounds strange. No, this cake does not taste of curry. It’s bright, it’s zingy, it’s moist, it’s so good. Also, can you believe that sunny yellow color? All without one drop of food coloring.', '$18')
  @peanut = Cake.new('Peanut Butter and Pretzel Icebox Cake', 'Have you ever had peanut butter stuffed pretzels? I could eat my weight in them. It’s one of the best combinations. So this icebox cake is made with layers of peanut butter ice cream and pretzel crackers, then topped with chocolate shell and sticky caramel.', '$15')
  @ginger = Cake.new('Gingerbread Layer Cake', 'This cake is a lovely dessert to take to a holiday party. It’s definitely a show-stopper. And so festive!', '$24')
  cake_arr = [@bundt, @peanut, @ginger]
  erb :cake
end

# CLASSES
class Cookie
  attr_reader :type, :description, :price
  def initialize(type, description, price = '$3')
    @type = type
    @description = description
    @price = price
  end
end

class Cake
  attr_reader :type, :description, :price
  def initialize(type, description, price)
    @type = type
    @description = description
    @price = price
  end
end

class Muffin
  attr_reader :type, :description, :price
  def initialize(type, description, price = '$4')
    @type = type
    @description = description
    @price = price
  end
end

class Bakery
  attr_accessor :cookies, :cakes, :muffins
  def initialize(_cookies, _cakes, _muffins)
    @cookies = cookies
    @cakes = cakes
    @muffins = muffins
  end
end
