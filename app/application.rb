class Application 

     def call(env)
          resp = Rack::Response.new
          current_time = Time.now
          noon = Time.parse "12:00 pm"
          late_afternoon = Time.parse "16:00 pm"

          if current_time <= noon 
               resp.write "Good Morning!"
          elsif current_time >= late_afternoon
               resp.write "It's getting dark"
          else 
               resp.write "Good Afternoon!"
          end

          resp.finish
     end
end
