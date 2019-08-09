class Application
  
@@items = [Item.new("Apples"),
            Item.new("Carrots"),
            Item.new("Pears")]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.find{|s| s.name == item_name}
        resp.write item.price
      else
        resp.status = 400
      end
    end
    
    resp.finish
  end
end