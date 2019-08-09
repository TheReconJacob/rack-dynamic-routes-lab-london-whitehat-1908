class Application
  
@@items = [Item.new("Apples", 2),
            Item.new("Carrots", 3.50),
            Item.new("Pears", 5)]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.find{|s| s.name == item_name}
        resp.write item.price
      else
        resp.status = 400
        resp.write "item not found"
      end
    end
    
    resp.finish
  end
end