class Application
  @@items = [Item.new("Apples", 1.5)]
  
  def call(env)
    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|item| item.name = item_name}
      resp.write ""
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
  end
end