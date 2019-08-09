class Application
  
@@items = [Item.new("Apples"),
            Item.new("Carrots"),
            Item.new("Pears")]

def call(env)
  resp = Rack::Response.new
  req = Rack::Response.new(env)
  
  if req.path.match(/item/)
      song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
      song = @@songs.find{|s| s.title == song_title}