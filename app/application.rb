class Application
  
 @@items = [Item.new("Apples"),
            Item.new("Carrots"),
            Item.new("Pears")]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/item/)
      item = req.params["item"]
      if @@items.include? item