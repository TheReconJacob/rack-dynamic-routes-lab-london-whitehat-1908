class Application
  
@@items = []@@items = ["Apples","Carrots","Pears"]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/item/)
      item = req.params["item"]
      if @@items.include? item