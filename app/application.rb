class Application
  
@@items = [Item.new("Apples"),
            Item.new("Carrots"),
            Item.new("Pears")]
            
@@price = ["£10","£5","£10"]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|s| s.name == item_name}
      
      resp.write item.name
  elsif req.path.match(/price/)
      price = 
    end
    
    resp.finish
  end
end