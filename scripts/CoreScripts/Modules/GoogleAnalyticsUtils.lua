--[[
  Filename: GoogleAnalyticsUtils.lua
  Written by: dbanks
  Description: Shared variables/work in reporting analytics.
--]]

local GoogleAnalyticsUtils = {}

-- Make sure these stay in sync with values in Analytics.h
GoogleAnalyticsUtils.CA_CATEGORY_GAME = "Game"
GoogleAnalyticsUtils.GA_CATEGORY_ACTION = "Action"
GoogleAnalyticsUtils.GA_CATEGORY_ERROR = "Error"
GoogleAnalyticsUtils.GA_CATEGORY_STUDIO = "Studio"
GoogleAnalyticsUtils.GA_CATEGORY_COUNTERS = "Counters"
GoogleAnalyticsUtils.GA_CATEGORY_RIBBONBAR = "RibbonBar"
GoogleAnalyticsUtils.GA_CATEGORY_SECURITY = "Security"
GoogleAnalyticsUtils.GA_CATEGORY_STUDIO_SETTINGS = "StudioSettings"

return GoogleAnalyticsUtils