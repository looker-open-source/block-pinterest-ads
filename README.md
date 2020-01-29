# Pinterest Ads Block

This repository contains views and explores used for the Pinterest Ads Block dashboards. There are 5 dashboards that come with this block: Pinterest Overview, Pinterest Ads - Clicks, Pinterest Ads - Conversions, Pinterest Ads - Impressions and Pinterest Ads - Spend. Each of the dashboards provides in-depth analysis of ad (pin) & campaign performance over a given timeframe.

This project is remotely included through the Pinterest Ads Block Config project. 
To pull updates from this project, update the `ref:` parameter in the manifest file. It should point to the latest commit in [block-pinterest-ads](https://github.com/looker/block-pinterest-ads/commits/master).

The LookML constants are used to specify the name of the schema and connection. They are defined in the Pinterest Ads Block Config project.


### Block Info

This Block is modeled on the schema from Fivetrans's [Pinterst Ads ETL](https://fivetran.com/directory/pinterest-ads).

The schema documentation for Pinterest Ads can be found in [API docs](https://developers.pinterest.com/docs/getting-started/introduction/?).
