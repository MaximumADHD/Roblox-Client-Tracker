--[[
  This is the base container for the Inspect and Buy 2.0 pop-up menu.
]]

local CorePackages = game:GetService("CorePackages")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local InspectAndBuyFolder = script.Parent.Parent
local React = require(CorePackages.Packages.React)
local AvatarExperienceInspectAndBuy = require(CorePackages.Workspace.Packages.AvatarExperienceInspectAndBuy)
local useViewBreakpoints = AvatarExperienceInspectAndBuy.Hooks.useViewBreakpoints
local ResponsivePanelLayout = AvatarExperienceInspectAndBuy.Components.ResponsivePanelLayout
local useResponsivePanelLayoutProps = AvatarExperienceInspectAndBuy.Hooks.useResponsivePanelLayoutProps

local UpdateBulkPuchaseResults = require(InspectAndBuyFolder.Actions.UpdateBulkPuchaseResults)
local useDispatch = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useDispatch

local useUnifiedEventListenerInExperience =
	require(CorePackages.Workspace.Packages.AvatarExperienceAnalytics).useUnifiedEventListener.useUnifiedEventListenerInExperience

local Foundation = require(CorePackages.Packages.Foundation)
local useTokens = Foundation.Hooks.useTokens
local Modules = CoreGui.RobloxGui.Modules
local Theme = require(Modules.Settings.Theme)
local TopBarConstants = require(Modules.TopBar.Constants)

type PromptBulkPurchaseFinishedResult = AvatarExperienceInspectAndBuy.PromptBulkPurchaseFinishedResult

local function InspectAndBuyBaseContainer(props)
	local onInspectMenuClosed = React.useCallback(function()
		GuiService:CloseInspectMenu()
	end, {})

	local viewBreakpoints = useViewBreakpoints(TopBarConstants.TopBarHeight)
	local tokens = useTokens()
	local dispatch = useDispatch()

	local onBulkPurchaseFinished = React.useCallback(function(player, status, result: PromptBulkPurchaseFinishedResult)
		dispatch(UpdateBulkPuchaseResults(result))
	end, { dispatch })

	local responsivePanelLayoutProps = useResponsivePanelLayoutProps({
		onInspectMenuClosed = onInspectMenuClosed,
		onBulkPurchaseFinished = onBulkPurchaseFinished,
	})

	useUnifiedEventListenerInExperience()

	-- outer overlay container will close the menu when clicked on
	return React.createElement(Foundation.View, {
		Size = viewBreakpoints.OverlaySize,
		Position = viewBreakpoints.OverlayPosition,
		backgroundStyle = {
			-- same theme used by SettingsHub menu
			Color3 = Theme.color("MenuContainer"),
			Transparency = Theme.transparency("MenuContainer", 1),
		},
		stateLayer = {
			affordance = Foundation.Enums.StateLayerAffordance.None,
		},
		onActivated = function()
			GuiService:CloseInspectMenu()
		end,
	}, {
		ContainerView = React.createElement(Foundation.View, {
			AnchorPoint = viewBreakpoints.ContainerAnchorPoint,
			ClipsDescendants = true,
			Size = viewBreakpoints.ContainerSize,
			Position = viewBreakpoints.ContainerPosition,
			backgroundStyle = tokens.Color.Common.Shadow,
			stateLayer = {
				affordance = Foundation.Enums.StateLayerAffordance.None,
			},
			onActivated = function() end, -- stop click events from propagating up to overlay
		}, {
			UICorner = React.createElement("UICorner", {
				CornerRadius = Theme.DefaultCornerRadius,
			}),
			ResponsivePanelLayout = React.createElement(ResponsivePanelLayout, responsivePanelLayoutProps),
		}),
	})
end

return InspectAndBuyBaseContainer
