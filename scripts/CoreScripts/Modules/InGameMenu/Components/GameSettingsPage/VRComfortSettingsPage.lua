--!nonstrict
local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Roact = InGameMenuDependencies.Roact
local RoactRodux = InGameMenuDependencies.RoactRodux
local t = InGameMenuDependencies.t
local UIBlox = InGameMenuDependencies.UIBlox
local withStyle = UIBlox.Core.Style.withStyle
local InGameMenu = script.Parent.Parent.Parent
local Page = require(script.Parent.Parent.Page)
local CloseMenu = require(InGameMenu.Thunks.CloseMenu)
local VRComfortAutoToggleEntry
local ComfortSettingsEntry
if game:GetEngineFeature("VRMoreComfortSettings") then
	VRComfortAutoToggleEntry = require(script.Parent.VRComfortAutoToggleEntry)
	ComfortSettingsEntry = require(script.Parent.ComfortSettingsEntry)
end

local VRComfortSettingsPage = Roact.PureComponent:extend("VRComfortSettingsPage")

VRComfortSettingsPage.validateProps = t.strictInterface({
	closeMenu = t.callback,
	pageTitle = t.string,
})

local function createLayoutOrderGenerator()
	local layoutOrder = 0
	return function()
		layoutOrder += 1
		return layoutOrder
	end
end

function VRComfortSettingsPage:render()
	return withStyle(function(style)
		local getNextLayoutOrder = createLayoutOrderGenerator()

		return Roact.createElement(Page, {
			pageTitle = self.props.pageTitle,
			zIndex = 2,
			position = self.props.position,
		}, {
			Layout = Roact.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				HorizontalAlignment = Enum.HorizontalAlignment.Right,
				VerticalAlignment = Enum.VerticalAlignment.Top,
			}),
			VRComfortSettings = if game:GetEngineFeature("VRMoreComfortSettings") then Roact.createElement(ComfortSettingsEntry, {
				LayoutOrder = getNextLayoutOrder(),
			}) else nil,
			VignetteEnabled = if game:GetEngineFeature("VRMoreComfortSettings") then Roact.createElement(VRComfortAutoToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VignetteEnabled",
				customValueKey = "VignetteEnabledCustomOption",
				derivedValueKey = "VignetteEnabled",
			}) else nil,
			VRSteppedRotationEnabled = if game:GetEngineFeature("VRMoreComfortSettings") then Roact.createElement(VRComfortAutoToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VRSteppedRotationEnabled",
				customValueKey = "VRSmoothRotationEnabledCustomOption",
				derivedValueKey = "VRSmoothRotationEnabled",
				checkedValue = false,
			}) else nil,
			VRThirdPersonFixedCamEnabled = if game:GetEngineFeature("VRMoreComfortSettings") then Roact.createElement(VRComfortAutoToggleEntry, {
				LayoutOrder = getNextLayoutOrder(),
				labelKey = "CoreScripts.InGameMenu.GameSettings.VRThirdPersonFixedCamEnabled",
				customValueKey = "VRThirdPersonFollowCamEnabledCustomOption",
				derivedValueKey = "VRThirdPersonFollowCamEnabled",
				checkedValue = false,
			}) else nil,
		})
	end)
end

return RoactRodux.UNSTABLE_connect2(nil, function(dispatch)
	return {
		closeMenu = function()
			dispatch(CloseMenu)
		end
	}
end)(VRComfortSettingsPage)
