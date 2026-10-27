local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local AudioPlayer = require(script.Parent)

return function()
	local baseProps = {
		SoundId = "rbxassetid://1837461008",
	}

	return {
		Default = Roact.createElement(AudioPlayer, baseProps),
	}
end
