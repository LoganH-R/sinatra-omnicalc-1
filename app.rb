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
  @the_apr = params.fetch("users_apr").to_f.to_fs(:percentage)
  @the_years = params.fetch("users_years").to_i
  @the_principal = params.fetch("users_principal").to_f.to_fs(:currency)

  
  rate_per_period = (params.fetch("users_apr").to_f / 100) / 12
  numerator = rate_per_period * params.fetch("users_principal").to_f
  num_periods = @the_years * 12
  parenthesis = 1 + rate_per_period
  power = (parenthesis) ** -num_periods
  denominator = 1 - power
  @monthly_payment = (numerator / denominator).to_fs(:currency)
    
  erb(:payment_results)
end

get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @the_min = params.fetch("users_min").to_f
  @the_max = params.fetch("users_max").to_f

  @the_random_num = rand(@the_min..@the_max)

  erb(:random_results)
end
