local Root = script.Parent.Parent.Parent

local LuaPackages = Root.Parent
local Roact = require(LuaPackages.Roact)

local ClickScamDetector = require(Root.Utils.ClickScamDetector)

local Button = require(script.Parent.Button)
local withLayoutValues = require(script.Parent.Parent.Connection.withLayoutValues)

local CONFIRM_BUTTON = Enum.KeyCode.ButtonA

local ConfirmButton = Roact.Component:extend("ConfirmButton")

function ConfirmButton:init()
	local onClick = self.props.onClick

	self.activated = function()
		if self.clickScamDetector:isClickValid() then
			onClick()
		end
	end

	self.clickScamDetector = ClickScamDetector.new({
		buttonInput = CONFIRM_BUTTON,
		initialDelay = 0.5,
	})
end

function ConfirmButton:willUnmount()
	self.clickScamDetector:destroy()
end

function ConfirmButton:render()
	return withLayoutValues(function(values)
		local stringKey = self.props.stringKey

		return Roact.createElement(Button, {
			font = Enum.Font.SourceSansBold,
			imageUp = "ButtonUpLeft",
			imageDown = "ButtonDownLeft",
			gamepadButton = CONFIRM_BUTTON,

			stringKey = stringKey,
			size = UDim2.new(0.5, 0, 1, 0),

			onClick = self.activated,
		})
	end)
end

return ConfirmButton