local root = script:FindFirstAncestor("root")

local Roact = require(root.Packages.Roact)
local RoactRodux = require(root.Packages.RoactRodux)

local SetCurrentScreen = require(root.src.Actions.SetCurrentScreen)
local SetId = require(root.src.Actions.SetId)

local InputId = require(root.src.Components.InputId)

local constants = require(root.src.constants)

local InputAccessoryId = Roact.PureComponent:extend("InputAccessoryId")

function InputAccessoryId:init() end

function InputAccessoryId:render()
	local props = self.props

	return Roact.createElement(InputId, {
		text = "1. Input Accessory ID",
		placeHolder = "Accessory ID",
		parse = function(input)
			return tonumber(input)
		end,
		onNext = function(id)
			if id then
				props.setId(id)
				props.setScreen(constants.SCREENS.SELECT_RIG)
			end
		end,
	})
end

local function mapDispatchToProps(dispatch)
	return {
		setId = function(scaleType)
			dispatch(SetId(scaleType))
		end,
		setScreen = function(screen)
			dispatch(SetCurrentScreen(screen))
		end,
	}
end

return RoactRodux.connect(nil, mapDispatchToProps)(InputAccessoryId)
