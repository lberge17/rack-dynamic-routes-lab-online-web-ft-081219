class Application
  def call(env)
    def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      req.path.split("/items/")
      resp.write "You requested the songs"
    else
      resp.write "Route not found"
      resp.status = 404
    end
 
    resp.finish
  end
  end
end