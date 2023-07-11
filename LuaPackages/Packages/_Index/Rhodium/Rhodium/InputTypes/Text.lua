--!strict
local VirtualInputManager = game:GetService("VirtualInputManager")

local Rhodium = script:FindFirstAncestor("Rhodium")
local VirtualInputUtils = require(Rhodium.VirtualInputUtils)

local Text = {}

function Text.sendText(str: string)
	local window = VirtualInputUtils.getCurrentWindow()
	-- VirtualInputManager is typed to disallow a nil window, but it does not
	-- throw errors and tests rely on it `nil` being allowed
	VirtualInputManager:SendTextInputCharacterEvent(str, window :: any)
end

return Text
