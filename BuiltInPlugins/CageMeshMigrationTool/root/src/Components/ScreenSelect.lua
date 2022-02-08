local root = script:FindFirstAncestor("root")

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local InputBundleId = require(root.src.Components.Screens.InputBundleId)
local InputHeadId = require(root.src.Components.Screens.InputHeadId)
local InputAccessoryId = require(root.src.Components.Screens.InputAccessoryId)
local SelectRig = require(root.src.Components.Screens.SelectRig)

local constants = require(root.src.constants)

local function wrapShow(expectedScreen)
	return function(currentScreen)
		return currentScreen == expectedScreen
	end
end

local showInputBundleId = wrapShow(constants.SCREENS.INPUT_BUNDLE_ID)
local showInputHeadId = wrapShow(constants.SCREENS.INPUT_HEAD_ID)
local showInputAccessoryId = wrapShow(constants.SCREENS.INPUT_ACCESSORY_ID)
local showSelectRig = wrapShow(constants.SCREENS.SELECT_RIG)

local ScreenSelect = Roact.PureComponent:extend("ScreenSelect")

function ScreenSelect:render()
	local props = self.props
	local currentScreen = props.currentScreen

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		InputBundleId = showInputBundleId(currentScreen) and Roact.createElement(InputBundleId, {}),
		InputHeadId = showInputHeadId(currentScreen) and Roact.createElement(InputHeadId, {}),
		InputAccessoryId = showInputAccessoryId(currentScreen) and Roact.createElement(InputAccessoryId, {}),
		SelectRig = showSelectRig(currentScreen) and Roact.createElement(SelectRig, {}),
	})
end

local function mapStateToProps(state)
	state = state or {}
	return {
		currentScreen = state.plugin.currentScreen,
	}
end

return RoactRodux.connect(mapStateToProps)(ScreenSelect)
