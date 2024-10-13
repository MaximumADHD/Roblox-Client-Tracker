local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local KeyLabel = require(Foundation.Components.KeyLabel)

local function Story(props)
	return React.createElement(KeyLabel, props)
end

local stories = {}

for i, keyCode in Enum.KeyCode:GetEnumItems() do
	local newStory = {
		name = tostring(keyCode),
		story = function(props)
			return Story({
				keyCode = keyCode :: Enum.KeyCode,
				holdBehavior = if props.controls.holdBehavior
					then {
						holdTime = props.controls.holdTime,
						resetTime = props.controls.resetTime,
						onBeginHold = function()
							print("BEGIN HOLD ")
						end,
						onEndHold = function(didActivate: boolean)
							print("END HOLD: " .. (didActivate and "TRUE" or "FALSE"))
						end,
					}
					else nil,
				Size = UDim2.fromOffset(35, 35),
			})
		end,
	}
	stories[tostring(keyCode)] = newStory
end

return {
	summary = "KeyLabel",
	stories = stories,
	controls = {
		holdTime = 1,
		resetTime = 0.5,
		holdBehavior = true,
	},
}
