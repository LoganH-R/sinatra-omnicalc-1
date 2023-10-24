require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @the_num = params.fetch("users_num").to_f
  
  @the_result = params.fetch("users_num").to_f ** 2
  
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @the_num = params.fetch("users_num").to_f

  @the_result = params.fetch("users_num").to_f ** 0.5
  
  erb(:square_root_results)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @the_apr = params.fetch("users_apr").to_f 
  
  erb(:payment_results)
end

get("/random/new") do



  erb(:random)
end
