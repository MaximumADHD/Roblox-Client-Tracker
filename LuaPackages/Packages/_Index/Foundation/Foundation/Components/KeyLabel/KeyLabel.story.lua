local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local KeyLabel = require(Foundation.Components.KeyLabel)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local keyCodes = Enum.KeyCode:GetEnumItems()

local function getHoldBehavior(controls)
	return if controls.holdBehavior
		then {
			holdTime = controls.holdTime,
			resetTime = controls.resetTime,
			onBeginHold = function()
				print("BEGIN HOLD ")
			end,
			onEndHold = function(didActivate: boolean)
				print("END HOLD: " .. (didActivate and "TRUE" or "FALSE"))
			end,
		}
		else nil
end

local function PlaygroundStory(props)
	return React.createElement(KeyLabel, {
		keyCode = props.controls.keyCode,
		holdBehavior = getHoldBehavior(props.controls),
		Size = UDim2.fromOffset(35, 35),
	})
end

local function AllKeyCodesStory()
	local children: { [string]: React.ReactNode } = {}
	for index, keyCode in keyCodes do
		children[tostring(keyCode)] = React.createElement(View, {
			tag = "col align-x-center gap-xsmall auto-xy",
			LayoutOrder = index,
		}, {
			Key = React.createElement(KeyLabel, {
				keyCode = keyCode :: Enum.KeyCode,
				Size = UDim2.fromOffset(35, 35),
				LayoutOrder = 1,
			}),
			Label = React.createElement(Text, {
				Text = tostring(keyCode),
				tag = "auto-xy text-body-small content-default",
				LayoutOrder = 2,
			}),
		})
	end

	return React.createElement(View, {
		tag = "row wrap gap-medium auto-xy padding-large",
	}, children)
end

return {
	summary = "KeyLabel",
	stories = {
		{
			name = "Playground",
			story = PlaygroundStory :: unknown,
		},
		{
			name = "All key codes",
			story = AllKeyCodesStory,
		},
	},
	controls = {
		keyCode = keyCodes,
		holdTime = 1,
		resetTime = 0.5,
		holdBehavior = true,
	},
}
