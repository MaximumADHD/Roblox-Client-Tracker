--!strict
--[[
	PlayerModule - This module file contains the public API for PlayerModule.

--]]
local RunService = game:GetService("RunService")

local CommonUtils = require(script:WaitForChild("CommonUtils"))

local CharacterUtil = CommonUtils.get("CharacterUtil")
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local EventBus = CommonUtils.get("EventBus")

local CameraModule = require(script:WaitForChild("CameraModule"))
local ControlModule = require(script:WaitForChild("ControlModule"))
local ServerAuthority = require(script:WaitForChild("ServerAuthority"))

local CONNECTIONS = {
	BIND_TO_SIMULATION = "BIND_TO_SIMULATION", -- switch to bind_to_simulation when possible
	RENDERSTEPPED_INPUT = "PLAYERMODULE_RENDERSTEPPED_INPUT",
	RENDERSTEPPED_CAMERA = "PLAYERMODULE_RENDERSTEPPED_CAMERA",
	ONLOCALPLAYER = "ONLOCALPLAYER",
}

type PlayerModuleInternalType = {
	__index: PlayerModuleInternalType,
	new: () -> PlayerModuleInternalType,

	-- start the camera and controls
	start: (PlayerModuleInternalType) -> (),
	-- stop the camera and controls
	stop: (PlayerModuleInternalType) -> (),

	-- holds player specific data controlled by this module, not the data for all players
	data : PlayerModuleInternalData,
}

export type PlayerData = {
	isJumping : boolean,
	-- input move vector, not in world space
	moveVector : Vector2,

	-- holds references to the InputActions that control this Player
	actions : { [string] : InputAction },

	player : Player?,
	-- reference to the player's character, if it exists
	character : Model?,
}

export type PlayerModuleInternalData = {
	-- data for players currently being controlled by this module, not all players in the game.
	-- TODO : this should hold more than one Player (the LocalPlayer)
	playerData : { [Player] : PlayerData },

	-- holds the connects to major Roblox services
	connectionUtil: any, -- ConnectionUtil.ConnectionUtilType

	eventBus: any, -- EventBus.EventBus

	isServerAuthority: boolean
}

local PlayerModuleInternal : PlayerModuleInternalType = {} :: PlayerModuleInternalType
PlayerModuleInternal.__index = PlayerModuleInternal

function PlayerModuleInternal.new()
	local self = setmetatable({
		data = {
			playerData = {},
			connectionUtil = ConnectionUtil.new(),
			eventBus = EventBus.new(),
			isServerAuthority = false
		},
	}, PlayerModuleInternal)

	return self
end

function PlayerModuleInternal:start()
	-- actually start when the localplayer is valid
	self.data.connectionUtil:trackConnection(CONNECTIONS.ONLOCALPLAYER, CharacterUtil.onLocalPlayer(function(player)

		-- initialize playerData
		self.data.playerData[player] = {
			isJumping = false,
			moveVector = Vector2.new(),
			actions = {},
			player = player,
			character = nil,
		}

		ServerAuthority.initialize(self.data)
		ControlModule:initialize(self.data, self.data.playerData[player])

		-- connect controlModule to update loop
		RunService:BindToRenderStep(CONNECTIONS.RENDERSTEPPED_INPUT, Enum.RenderPriority.Input.Value, function(dt)
			for _, playerData in pairs(self.data.playerData) do
				playerData.character = CharacterUtil.getCharacter() -- this is only valid in the local client world
				if not playerData.character then
					return
				end

				ControlModule:Update(self.data, playerData, dt)
			end
		end)
		self.data.connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_INPUT, function()
			RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_INPUT)
		end)

		-- connect cameraModule to update loop
		RunService:BindToRenderStep(CONNECTIONS.RENDERSTEPPED_CAMERA, Enum.RenderPriority.Camera.Value, function(dt)
			for _, playerData in pairs(self.data.playerData) do
				CameraModule:Update(playerData, dt)
			end
		end)
		self.data.connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_CAMERA, function()
			RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_CAMERA)
		end)
	end))
end

function PlayerModuleInternal:stop()
	self.data.connectionUtil:disconnectAll()
end

-- PlayerModule's internal singleton instance.
-- Depending on the package API, this may shift to no longer be a singleton and owned by the requiring script (which may or may not be PlayerScriptLoader)
local PlayerModuleInternalInstance = PlayerModuleInternal.new()
PlayerModuleInternalInstance:start()

-- PlayerModule currently has no public API, but in future we can instantiate the internal class and expose methods here.
export type PlayerModuleType = {}
local PlayerModule : PlayerModuleType = {} :: PlayerModuleType
return PlayerModule
