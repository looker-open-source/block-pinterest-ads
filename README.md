# Pinterest Ads Block
## What Does This Block Do For Me? ##

This Block contains views, explores and dashboards that utilize exported Pinterest Ads data. This content will bring your Pinterest Ad analysis into your Looker instance for convenient analysis.

This Block is modeled on the schema from Fivetrans's [Pinterst Ads ETL](https://fivetran.com/directory/pinterest-ads).
The schema documentation for Pinterest Ads can be found in [API docs](https://developers.pinterest.com/docs/getting-started/introduction/?).


## Content ##
#### Explores ####
* Account
* Ad
* Ad Group
* Campaign
* Period


#### Dashboards ####
There are 7 dashboards included. Each of the dashboards provides in-depth analysis of ad (pin) & campaign performance over a given timeframe.
* Pinterest Ads Overview
* Pinterest Ads Clicks
* Pinterest Ads Conversions
* Pinterest Ads Impressions
* Pinterest Ads Spend
* Pinterest Ads Metrics
* Pinterest Ads Base

## Installation ##
This block is installed via the Looker Marketplace. For more information about the Looker Marketplace, please visit this [link](https://docs.looker.com/data-modeling/marketplace).

#### Constants ####
During installation you will provide two values to populate the following constants:
* Connection Name - the Looker connection with access to and permission to retrieve data from your [block tables]
* Pinterest Schema - the schema name for your Pinterest data.

#### Customization ####
- This block uses Refinements to allow for modification or extension of the LookML content. For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
