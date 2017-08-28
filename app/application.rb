class Application
	def call(env)
		resp = Rack::Response.new

		the_time = Time.now.hour
		if the_time.to_i < 12
			resp.write "Good Morning!"
		elsif the_time.to_i >= 12 
			resp.write "Good Afternoon!"
		end
		resp.finish
	end
end