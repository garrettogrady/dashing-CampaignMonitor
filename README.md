# dashing-CampaignMonitor
Open source Campaign Monitor widget for the Dashing framework using the [Campaign Monitor Ruby API](http://campaignmonitor.github.io/createsend-ruby/).
 <br>
![](https://raw.githubusercontent.com/Garrettogrady/dashing-CampaignMonitor/master/Screen%20Shot%202016-03-31%20at%2010.26.07%20PM.png)

## Dependencies

[createsend](https://github.com/campaignmonitor/createsend-ruby)

Add it to dashing's gemfile:

```
gem 'createsend'
```

And run

```
bundle install
```


## Using the Campaign Monitor widgets

To use this widget: 

1. create a new folder in `/widgets/` and name it `campaign_monitor`

2. copy `campaign_monitor.coffee`, `campaign_monitor.html`, and `campaign_monitor.scss` into the `/widgets/campaign_monitor` directory of your Dashing app.

3. Copy the `campaign_monitor.rb` file into your `/jobs` folder.

4. Change your API Key and list ID in `campaign_monitor.rb`

```
:api_key: "Your API Key"
:listID: 'Your ListID'
```

for help finding your API Key: [here](http://help.campaignmonitor.com/topic.aspx?t=206) 
and List ID: [here](http://ilikekillnerds.com/2014/03/finding-your-campaign-monitor-subscriber-list-id-client-api-key/)

To include the widget in a dashboard, add the following snippet to the dashboard layout file:


```html
<li data-row="2" data-col="2" data-sizex="1" data-sizey="1">
   <div data-id="campaign_monitor" data-view="CampaignMonitor" data-title="subscribers"></div>
</li>
```

