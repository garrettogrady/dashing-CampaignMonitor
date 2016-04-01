require 'createsend'

SCHEDULER.every '15m', first_in: 0 do |job|
  list = CreateSend::List.new({:api_key=>'YOUR API KEY'},'YOUR LIST ID')
  stats = list.stats
  send_event('campaign_monitor', {
    subscribers: stats["TotalActiveSubscribers"]
  }) 
end
