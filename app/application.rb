class Application
  
@@items = []@@items = ["Apples","Carrots","Pears"]

def call(env)
  resp = Rack.Response.new
  