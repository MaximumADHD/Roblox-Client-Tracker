--[[
	Purpose: Tracks the glyph platform for a component tree.

	Origin: Foundation `Utility.usePreferredInput`.

	Notes:
	- Refreshes on gamepad connect and disconnect, because the preferred-input
	  property does not include console generation.
	- Detecting once per tree keeps callers off the per-key probes in BuilderIcons
	  `getBuilderIconForKeycode`.
]]
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local UserInputService = require(Foundation.Utility.Wrappers.Services).UserInputService

local InputPlatform = require(Foundation.Enums.InputPlatform)
local detectInputPlatform = require(script.Parent.detectInputPlatform)

type InputPlatform = InputPlatform.InputPlatform

local function useInputPlatform(): InputPlatform
	local platform, setPlatform = React.useState(detectInputPlatform)

	React.useEffect(function()
		local function refresh()
			setPlatform(detectInputPlatform())
		end

		local connected = UserInputService.GamepadConnected:Connect(refresh)
		local disconnected = UserInputService.GamepadDisconnected:Connect(refresh)

		refresh()

		return function()
			connected:Disconnect()
			disconnected:Disconnect()
		end
	end, {})

	return platform :: InputPlatform
end

return useInputPlatform
