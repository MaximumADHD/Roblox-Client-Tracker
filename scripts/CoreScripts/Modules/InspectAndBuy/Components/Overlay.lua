--[[
	General overlay component to be opened/closed via OpenOverlay/CloseOverlay thunks
	This allows us to open overlays such as the AttributionTraversal atop our
	InspectAndBuy module while maintaining important constants across overlay components
	showing the proper tinted background, mounting the underlying overlay component, and
	setting up the focus navigation
]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local useSelector = require(CorePackages.Workspace.Packages.RoactUtils).Hooks.RoactRodux.useSelector

local UIBlox = require(CorePackages.Packages.UIBlox)
local useStyle = UIBlox.Core.Style.useStyle

local ReactFocusNavigation = require(CorePackages.Packages.ReactFocusNavigation)
local focusNavigationService =
	ReactFocusNavigation.FocusNavigationService.new(ReactFocusNavigation.EngineInterface.CoreGui)
local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceRegistry = FocusNavigationUtils.FocusNavigableSurfaceRegistry
local FocusNavigationRegistryProvider = FocusNavigableSurfaceRegistry.Provider
local FocusNavigationEffects = require(RobloxGui.Modules.Common.FocusNavigationEffectsWrapper)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum

local InspectAndBuyFolder = script.Parent.Parent
local Colors = require(InspectAndBuyFolder.Colors)
local OverlayComponents = require(InspectAndBuyFolder.Components.OverlayComponents)

local SELECTION_GROUP_NAME = "InspectAndBuyOverlay"

local function selectOverlayComponent(state)
	return OverlayComponents[state.overlay.overlay]
end

local function selectOverlayProps(state)
	return state.overlay.overlayProps
end

local function Overlay(props)
	local overlayComponent = useSelector(selectOverlayComponent)
	local overlayProps = useSelector(selectOverlayProps)
	local style = useStyle()

	return React.createElement(ReactFocusNavigation.FocusNavigationContext.Provider, {
		value = focusNavigationService,
	}, {
		FocusNavigationRegistryProvider = React.createElement(FocusNavigationRegistryProvider, nil, {
			FocusNavigationEffects = React.createElement(FocusNavigationEffects, {
				selectionGroupName = SELECTION_GROUP_NAME,
				focusNavigableSurfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.CentralOverlay,
			}, {
				OverlayContainer = React.createElement("Frame", {
					BackgroundTransparency = style.Tokens.Semantic.Color.Common.Overlay.Transparency,
					BackgroundColor3 = Colors.Black,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					Visible = overlayComponent ~= nil,
				}, {
					Overlay = overlayComponent and React.createElement(overlayComponent, overlayProps) or nil,
				}),
			}),
		}),
	})
end

return Overlay
