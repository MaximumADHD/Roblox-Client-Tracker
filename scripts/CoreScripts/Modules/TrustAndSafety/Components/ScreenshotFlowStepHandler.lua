--!nonstrict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local CoreGui = game:GetService("CoreGui")

local TnsModule = script.Parent.Parent
local ScreenshotDialog = require(TnsModule.Components.ScreenshotDialog)
local ScreenshotReviewDialog = require(TnsModule.Components.ScreenshotReviewDialog)

export type Props = ScreenshotDialog.Props & {
	titleText: never,
	skipAnnotationAction: () -> (),
	restartAction: () -> (),
	-- provide optional capability for mounting menu flow to specify which page to start with
	initialPageNumber: number?,
	dismissAction: (() -> ())
}

local function ScreenshotFlowStepHandler(props: Props)
	local currentPageIndex, setCurrentPageIndex =
		React.useState(props.initialPageNumber == nil and 1 or props.initialPageNumber)
	local imageAspectRatio, setImageAspectRatio = React.useState(16 / 9)
	local onNextPage = React.useCallback(function() setCurrentPageIndex(2) end, {setCurrentPageIndex})
	local onPreviousPage = React.useCallback(function() setCurrentPageIndex(1) end, {setCurrentPageIndex})

	React.useEffect(function()
		-- obtain the window aspect ratio on mounting this component
		-- it should be the same as the screenshot at this point
		-- it should maintain this ratio even with screen resizing
		-- so to not distort the screenshot image
		local camera = game.Workspace.CurrentCamera
		if camera ~= nil then
			setImageAspectRatio(camera.ViewportSize.X / camera.ViewportSize.Y)
		end
	end, {})

	local currentPageDialog = nil
	if currentPageIndex == 1 then
		currentPageDialog = React.createElement(ScreenshotReviewDialog, {
			imageAspectRatio = imageAspectRatio,
			onNextPage = onNextPage,
			onBack = props.dismissAction,
			onSkip = props.skipAnnotationAction,
			onRestart = props.restartAction,
			screenshot = props.screenshot,
			reportAnythingAnalytics = props.reportAnythingAnalytics,
		}, {})
	else
		currentPageDialog = React.createElement(ScreenshotDialog, {
			titleText = "Highlight What's Wrong",
			backAction = onPreviousPage,
			dismissAction = props.dismissAction,
			reportAction = props.reportAction,
			initialAnnotationPoints = props.initialAnnotationPoints,
			screenshot = props.screenshot,
			imageAspectRatio = imageAspectRatio,
			reportAnythingAnalytics = props.reportAnythingAnalytics,
		})
	end
	return currentPageDialog
end

return ScreenshotFlowStepHandler
