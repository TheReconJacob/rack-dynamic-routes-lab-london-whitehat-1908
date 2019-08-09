class Application
  
@@items = [Item.new("Apples"),
            Item.new("Carrots"),
            Item.new("Pears")]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/items/)
      item_name = req.path.split("/items/").last #turn /songs/Sorry into Sorry
      item = @@items.find{|s| s.name == item_name}
      
      resp.write item.name
    end
    
    resp.finish
  end
end