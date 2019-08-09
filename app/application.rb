class Application
  
@@items = [Item.new("Apples", 2), Item.new("Oranges", 3.50)]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      if item = @@items.find{|i| i.name == item_name}
        resp.write item.price
      else
        resp.status = 400
        resp.write "item not found"
      end
    else
        resp.status = 404
        resp.write "route not found"
    end
    
    resp.finish
  end
end