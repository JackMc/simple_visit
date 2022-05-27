require 'sinatra'

get '/track' do
  visits_csv = File.open('visits.csv', 'a')
  referrer = request.referrer

  visits_csv << "#{Time.now},#{request.user_agent},#{referrer}\n"

  visits_csv.close

  'This only tracks the referrer, the user agent, and the time of your visit. To learn more visit https://github.com/JackMc/simple_visit'
end
