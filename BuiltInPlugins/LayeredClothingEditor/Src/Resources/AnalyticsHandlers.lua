local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

return function(analyticsService : RbxAnalyticsService)
    return {
    	PluginOpened = function()
			analyticsService:ReportCounter("AccessoryFittingToolOpened", 1)
    	end,
    	LayeredAccessoryPublished = function()
    		analyticsService:ReportCounter("AccessoryFittingToolPublishedLC", 1)
    	end,
    	RigidAccessoryPublished = function()
    		analyticsService:ReportCounter("AccessoryFittingToolPublishedAcc", 1)
    	end,
    	LayeredAccessorySelected = function()
    		analyticsService:ReportCounter("AccessoryFittingToolSelectedLC", 1)
    	end,
    	RigidAccessorySelected = function()
    		analyticsService:ReportCounter("AccessoryFittingToolSelectedAcc", 1)
    	end,
        PreviewAssetSelected = function(isCustom, isAnimation)
            if isCustom then
                if isAnimation then
                    analyticsService:ReportCounter("AccessoryFittingToolCustomAnim", 1)
                else
                    analyticsService:ReportCounter("AccessoryFittingToolCustomClothing", 1)
                end
            else
                if isAnimation then
                    analyticsService:ReportCounter("AccessoryFittingToolDefaultAnim", 1)
                else
                    analyticsService:ReportCounter("AccessoryFittingToolDefaultClothing", 1)
                end
            end
        end,
    	ExitScreen = function(screenId)
    		if screenId == Constants.SCREENS.Select then
				analyticsService:ReportCounter("AccessoryFittingToolExitSelect", 1)
    		elseif screenId == Constants.SCREENS.AssetType then
				analyticsService:ReportCounter("AccessoryFittingToolExitAssetType", 1)
    		elseif screenId == Constants.SCREENS.Edit then
				analyticsService:ReportCounter("AccessoryFittingToolExitEdit", 1)
    		elseif screenId == Constants.SCREENS.Generate then
				analyticsService:ReportCounter("AccessoryFittingToolExitGenerate", 1)
    		end
    	end,
    }
end