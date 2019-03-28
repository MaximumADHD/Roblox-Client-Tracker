--[[
	math functionality
]]

local DFIntJumpPowerInstantControllerMultiplierPercent =  tonumber(settings():GetFVariable("JumpPowerInstantControllerMultiplierPercent"))

local MathUtil = {}

function MathUtil.round(numToRound, numDecimalPlaces)
	numToRound = tonumber(numToRound) or 0
	numDecimalPlaces = numDecimalPlaces and tonumber(numDecimalPlaces) or 3

	if numDecimalPlaces >= 0 then
		local mult = 10^numDecimalPlaces
		return math.floor(numToRound * mult + 0.5) / mult
	end
	return numToRound
end

function MathUtil.calculateJumpHeightFromPower(gravity, jumpPower)
	gravity = tonumber(gravity) or 0
	if nil == gravity or gravity <= 0 then
		return 0
	end
	jumpPower = tonumber(jumpPower) and math.max(tonumber(jumpPower), 0) or 0

	return ((jumpPower*(DFIntJumpPowerInstantControllerMultiplierPercent * 0.01))^2)/2/gravity
end

function MathUtil.calculateJumpPowerFromHeight(gravity, jumpHeight)
	gravity = tonumber(gravity) and math.max(tonumber(gravity), 0) or 0
	jumpHeight = tonumber(jumpHeight) and math.max(tonumber(jumpHeight), 0) or 0
	return game.Workspace:CalculateJumpPower(gravity, jumpHeight)
end

return MathUtil
