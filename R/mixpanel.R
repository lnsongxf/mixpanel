#==============================================================================
# purpose: wrap the Mixpanel API (https://mixpanel.com/docs/api-documentation/data-export-api)
#   in an R package
# author: tirthankar chakravarty
# created: 10th May 2016
# revised: 10th May 2016
# comments:
# 1. endpoint: annotations
#   1.1 method: annotations -- get_mixpanel_annotations_annotations
#   1.2 method: create      -- post_mixpanel_annotations_create
#   1.3 method: update      -- get_mixpanel_annotations_update
#   1.4 method: delete      -- post_mixpanel_annotations_delete
#
# 2. endpoint: events
#   2.1 method: events      -- get_mixpanel_events_events
#   2.2 method: top         -- get_mixpanel_events_top
#   2.3 method: names       -- get_mixpanel_events_names
#
# 3. endpoint: event properties
#   3.1 method: properties  -- get_mixpanel_event_properties_properties
#   3.2 method: top         -- get_mixpanel_event_properties_top
#   3.3 method: values      -- get_mixpanel_event_properties_values
#
# 4. endpoint: funnels
#   4.1 method: funnels     -- get_mixpanel_funnels_funnels
#   4.2 method: list        -- get_mixpanel_funnels_list
#
# 5. endpoint: segmentation
#   5.1 method: segmentation-- get_mixpanel_segmentation_segmentation
#   5.2 method: numeric     -- get_mixpanel_segmentation_numeric
#   5.3 method: sum         -- get_mixpanel_segmentation_sum
#   5.4 method: average     -- get_mixpanel-segmentation_average
#
# 6. endpoint: retention
#  6.1 method: retention    -- get_mixpanel_retention_retention
#  6.2 method: addiction    -- get_mixpanel_retention_addiction
#
# 7. endpoint: engage
#  7.1 method: engage       -- get_mixpanel_engage_engage
#==============================================================================


get_mixpanel_annotations = function(
  api_secret,
  from_date,
  to_date
) {
  # compose the URL
  url_mixpanel = modify_url(
    scheme = "https",
    url = "data.mixpanel.com",
    path = "api/2.0/annotations/",
    hostname = "mixpanel.com",
    query = list(
      from_date = from_date,
      to_date
    ),
    username = api_secret
  )
  data_mixpanel = GET(url_mixpanel)
}