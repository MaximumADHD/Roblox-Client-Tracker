--[[
	Controller for various world physics settings

	NOTE: Currently `game` is passed into the controller even though it is globally accessible as we want to
	convert Game Settings to a standalone plugin in the future. In this case, the game global would refer to
	the standalone DM and not the Edit DM. There are some places we access the game/workspace globals directly
	because we don't care which DM we're in (e.g. workspace:CalculateJumpPower is the same for every DM)
]]

local WorldRootPhysicsController = {}
WorldRootPhysicsController.__index = WorldRootPhysicsController

function WorldRootPhysicsController.new()
	local self = {}

	return setmetatable(self, WorldRootPhysicsController)
end

--[[
	Conversion between studs and some real world scale is tricky. If we try to convert based off our
	default gravity (196.2 studs/s^2) and real world gravity (9.81 m/s^2), then our 6 stud tall avatars
	are only 30cm (< 1 ft) tall! So to get some semblance of a reasonable conversion, we tried mapping
	studs to meters in a way that our avatars would be the same height as the average human.

	There isn't a lot of science behind this, and we may need to change this in the future, but it is
	sufficient for our conversion of studs for display purposes only
--]]
function WorldRootPhysicsController.convertStudsToMeters(amountInStuds)
	-- Rthro characters have a wide range of heights, but this was determined as the most "normal". See
	-- @mmchale or @mbrown for additional information
	local HEIGHT_OF_RTHRO_CHARACTER_STUDS = 6.25
	-- The height of the average North American adult male as found by the National Health and Nutrition
	-- Examination Survey (NHANES) from 2007 to 2010 is roughly 175 centimeters (or 1.75m)
	local HEIGHT_OF_AVG_MALE_METERS = 1.75

	return amountInStuds * (HEIGHT_OF_AVG_MALE_METERS / HEIGHT_OF_RTHRO_CHARACTER_STUDS)
end

function WorldRootPhysicsController.calculateJumpDistance(gravity, jumpPower, walkspeed)
	return workspace:CalculateJumpDistance(gravity, jumpPower, walkspeed)
end

function WorldRootPhysicsController.calculateJumpHeight(gravity, jumpPower)
	return workspace:CalculateJumpHeight(gravity, jumpPower)
end

function WorldRootPhysicsController.calculateJumpPower(gravity, jumpHeight)
	return workspace:CalculateJumpPower(gravity, jumpHeight)
end

function WorldRootPhysicsController:getGravity(game)
	local workspace = game:GetService("Workspace")

	return workspace.Gravity
end

function WorldRootPhysicsController:setGravity(game, gravity)
	local workspace = game:GetService("Workspace")

	workspace.Gravity = gravity
end

function WorldRootPhysicsController:getUseJumpPower(game)
	local starterPlayer = game:GetService("StarterPlayer")

	return starterPlayer.CharacterUseJumpPower
end

function WorldRootPhysicsController:setUseJumpPower(game, useJumpPower)
	local starterPlayer = game:GetService("StarterPlayer")

	starterPlayer.CharacterUseJumpPower = useJumpPower
end

function WorldRootPhysicsController:getJumpHeight(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local workspace = game:GetService("Workspace")

	if self:getUseJumpPower(game) then
		return workspace:CalculateJumpHeight(self:getGravity(game), self:getJumpPower(game))
	else
		return starterPlayer.CharacterJumpHeight
	end
end

function WorldRootPhysicsController:setJumpHeight(game, jumpHeight)
	local starterPlayer = game:GetService("StarterPlayer")
	local workspace = game:GetService("Workspace")
	local gravity = self:getGravity(game)

	starterPlayer.CharacterJumpHeight = jumpHeight
	starterPlayer.CharacterJumpPower = workspace:CalculateJumpPower(gravity, jumpHeight)
end

function WorldRootPhysicsController:getJumpPower(game)
	local starterPlayer = game:GetService("StarterPlayer")
	local gravity = self:getGravity(game)

	if self:getUseJumpPower(game) then
		return starterPlayer.CharacterJumpPower
	else
		return workspace:CalculateJumpPower(gravity, self:getJumpHeight(game))
	end
end

function WorldRootPhysicsController:setJumpPower(game, jumpPower)
	local starterPlayer = game:GetService("StarterPlayer")

	starterPlayer.CharacterJumpPower = jumpPower
	starterPlayer.CharacterJumpHeight = workspace:CalculateJumpHeight(self:getGravity(game), jumpPower)
end

function WorldRootPhysicsController:getWalkspeed(game)
	local starterPlayer = game:GetService("StarterPlayer")

	return starterPlayer.CharacterWalkSpeed
end

function WorldRootPhysicsController:setWalkspeed(game, walkspeed)
	local starterPlayer = game:GetService("StarterPlayer")

	starterPlayer.CharacterWalkSpeed = walkspeed
end

function WorldRootPhysicsController:getMaxSlopeAngle(game)
	local starterPlayer = game:GetService("StarterPlayer")

	return starterPlayer.CharacterMaxSlopeAngle
end

function WorldRootPhysicsController:setMaxSlopeAngle(game, maxSlopeAngle)
	local starterPlayer = game:GetService("StarterPlayer")

	starterPlayer.CharacterMaxSlopeAngle = maxSlopeAngle
end

return WorldRootPhysicsController