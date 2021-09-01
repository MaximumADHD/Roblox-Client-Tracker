local root = script:FindFirstAncestor("root")

local Roact = require(root.lib.Roact)
local RoactRodux = require(root.lib.RoactRodux)

local InputBundleId = require(root.src.Components.Screens.InputBundleId)
local SelectRig = require(root.src.Components.Screens.SelectRig)

local constants = require(root.src.constants)

local function wrapShow(expectedScreen)
	return function(currentScreen)
		return currentScreen == expectedScreen
	end
end

local showInputBundleId = wrapShow(constants.SCREENS.INPUT_BUNDLE_ID)
local showSelectRig = wrapShow(constants.SCREENS.SELECT_MESH_PART)

local ScreenSelect = Roact.PureComponent:extend("ScreenSelect")

function ScreenSelect:render()
	local props = self.props
	local currentScreen = props.currentScreen

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		InputBundleId = showInputBundleId(currentScreen) and Roact.createElement(InputBundleId, {}),
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
