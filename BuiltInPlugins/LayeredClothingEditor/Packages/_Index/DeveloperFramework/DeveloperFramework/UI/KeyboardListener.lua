--[[
	A Roact component that listens to keyboard events within the PluginGui.

	Required Props:
		Focus Focus: A Focus ContextItem, which is provided via withContext.

	Optional Props:
		callback OnKeyPressed: A callback for when the user presses a key inside the plugin.
			Passes the input object itself as a parameter.
		callback OnKeyReleased: A callback for when the user releases a key.
]]

local Framework = script.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local ContextServices = require(Framework.ContextServices)
local withContext = ContextServices.withContext
local Typecheck = require(Framework.Util).Typecheck
local ShowOnTop = require(Framework.UI.ShowOnTop)
local Util = require(Framework.Util)
local FlagsList = Util.Flags.new({
	FFlagRefactorDevFrameworkContextItems2 = {"RefactorDevFrameworkContextItems2"},
})


local KeyboardListener = Roact.PureComponent:extend("KeyboardListener")
Typecheck.wrap(KeyboardListener, script)

function KeyboardListener:init()
	self.onInputBegan = function(_, input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self.keysHeld[input.KeyCode] = true
			if self.props.OnKeyPressed then
				self.props.OnKeyPressed(input, self.keysHeld)
			end
		end
	end

	self.onInputEnded = function(_, input)
		if input.UserInputType == Enum.UserInputType.Keyboard then
			self.keysHeld[input.KeyCode] = nil
			if self.props.OnKeyReleased then
				self.props.OnKeyReleased(input)
			end
		end
	end
end

function KeyboardListener:didMount()
	local props = self.props
	self.keysHeld = {}
	self.target = FlagsList:get("FFlagRefactorDevFrameworkContextItems2") and props.Focus:get() or props.Focus:getTarget()

	if self.target:IsA("PluginGui") then
		self.focusConnection = self.target.WindowFocusReleased:Connect(function()
			if self.props.OnKeyReleased then
				for key, _ in pairs(self.keysHeld) do
					props.OnKeyReleased({
						KeyCode = key,
						UserInputType = Enum.UserInputType.Keyboard,
					})
				end
			end
			self.keysHeld = {}
		end)
	end
end

function KeyboardListener:render()
	return Roact.createElement(ShowOnTop, {}, {
		Listener = Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
			[Roact.Event.InputBegan] = self.onInputBegan,
			[Roact.Event.InputEnded] = self.onInputEnded,
		}),
	})
end

function KeyboardListener:willUnmount()
	if self.focusConnection then
		self.focusConnection:Disconnect()
	end
end


KeyboardListener = withContext({
	Focus = ContextServices.Focus,
})(KeyboardListener)



return KeyboardListener
