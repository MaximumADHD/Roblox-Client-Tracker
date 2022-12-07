--[[
	A separate reducer for game thumbnails,setting
	it to a separate table. We are using the universeId rightNow
]]
local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local Packages = GameIconRodux.Parent

local Cryo = require(Packages.Cryo)
local SetBigGameIcons = require(GameIconRodux.Actions).SetBigGameIcons

return function(state, action)
	state = state or {}

	if action.type == SetBigGameIcons.name then
		state = Cryo.Dictionary.join(state, action.gameIcons)
	end

	return state
end
