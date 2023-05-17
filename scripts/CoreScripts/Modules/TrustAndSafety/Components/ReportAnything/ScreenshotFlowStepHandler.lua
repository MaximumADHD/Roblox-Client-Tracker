--!nonstrict
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)

local TnsModule = script.Parent.Parent.Parent
local ScreenshotDialog = require(TnsModule.Components.ReportAnything.ScreenshotDialog)
local ScreenshotReviewDialog = require(TnsModule.Components.ReportAnything.ScreenshotReviewDialog)

export type Props = ScreenshotDialog.Props & {
	titleText: never,
	skipAnnotationAction: () -> (),
	restartAction: () -> (),
	entryPoint: string,
	-- provide optional capability for mounting menu flow to specify which page to start with
	initialPageNumber: number?,
	dismissAction: (() -> ()),
}

local function ScreenshotFlowStepHandler(props: Props)
	local currentPageIndex, setCurrentPageIndex =
		React.useState(props.initialPageNumber == nil and 1 or props.initialPageNumber)
	local imageAspectRatio, setImageAspectRatio = React.useState(16 / 9)
	local viewportHeight, setviewportHeight = React.useState(800)
	local isSmallPortraitMode, setIsSmallPortraitMode = React.useState(true)
	local onNextPage = React.useCallback(function()
		setCurrentPageIndex(2)
	end, { setCurrentPageIndex })
	local onPreviousPage = React.useCallback(function()
		setCurrentPageIndex(1)
	end, { setCurrentPageIndex })

	React.useEffect(function()
		-- obtain the window aspect ratio on mounting this component
		-- it should be the same as the screenshot at this point
		-- it should maintain this ratio even with screen resizing
		-- so to not distort the screenshot image
		local camera = game.Workspace.CurrentCamera
		if camera ~= nil then
			local viewportSize = camera.ViewportSize
			setImageAspectRatio(viewportSize.X / viewportSize.Y)
			setviewportHeight(viewportSize.Y)
			setIsSmallPortraitMode(viewportSize.X < viewportSize.Y and viewportSize.X < 800)
		end
	end, {})

	local currentPageDialog = nil
	if currentPageIndex == 1 then
		currentPageDialog = React.createElement(ScreenshotReviewDialog, {
			imageAspectRatio = imageAspectRatio,
			isSmallPortraitMode = isSmallPortraitMode,
			viewportHeight = viewportHeight,
			onNextPage = onNextPage,
			onBack = props.dismissAction,
			onSkip = props.skipAnnotationAction,
			onRestart = props.restartAction,
			screenshot = props.screenshot,
			reportAnythingAnalytics = props.reportAnythingAnalytics,
		}, {})
	else
		local title = props.entryPoint == "player" and "Select Person in Scene" or "Select Problem in Scene"
		currentPageDialog = React.createElement(ScreenshotDialog, {
			titleText = title,
			backAction = onPreviousPage,
			dismissAction = props.dismissAction,
			reportAction = props.reportAction,
			initialAnnotationPoints = props.initialAnnotationPoints,
			isSmallPortraitMode = isSmallPortraitMode,
			screenshot = props.screenshot,
			imageAspectRatio = imageAspectRatio,
			reportAnythingAnalytics = props.reportAnythingAnalytics,
		})
	end
	return currentPageDialog
end

return ScreenshotFlowStepHandler
