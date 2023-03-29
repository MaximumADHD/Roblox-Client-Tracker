--!nonstrict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local TnsModule = script.Parent.Parent
local ScreenshotDialog = require(TnsModule.Components.ScreenshotDialog)
local ScreenshotReviewDialog = require(TnsModule.Components.ScreenshotReviewDialog)
local ScreenshotLoadingDialog = require(TnsModule.Components.ScreenshotLoadingDialog)

export type Props = {
	dismissAction: (() -> ())
}

local function ScreenshotFlowStepHandler(props: Props)
	local currentPageIndex, setCurrentPageIndex = React.useState(1)
	local currentPageDialog = nil
	if currentPageIndex == 1 then
		currentPageDialog = React.createElement(ScreenshotReviewDialog, {
			onNextPage = function()
				setCurrentPageIndex(2)
			end,
			onBack = function()
				props.dismissAction()
			end
		}, {})
	else
		currentPageDialog = React.createElement(ScreenshotDialog, {
			titleText = "Highlight What's Wrong",
			backAction = function()
				setCurrentPageIndex(1)
			end,
			retakeAction = function() end,
			dismissAction = function() end,
			reportAction = function() end,
			initialAnnotationPoints = nil,
		})
	end
	return currentPageDialog
end

return ScreenshotFlowStepHandler
