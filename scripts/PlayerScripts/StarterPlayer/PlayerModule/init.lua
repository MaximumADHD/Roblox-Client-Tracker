--!strict
--[[
	PlayerModule - This module file returns the public API for PlayerModule.
--]]

local CommonUtils = require(script:WaitForChild("CommonUtils"))
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserControlModuleEnabledAPI = FlagUtil.getUserFlag("UserControlModuleEnabledAPI")

if FFlagUserControlModuleEnabledAPI then
	export type PlayerModule = {
		ControlModule: ControlModule,
	}
	export type ControlModule = {
		Enabled: boolean,
	}

	local PlayerModuleAPI : PlayerModule = {
		ControlModule = {
			Enabled = true,
		},
	}
	return PlayerModuleAPI

else
	local RunService = game:GetService("RunService")

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

	type PlayerData = {
		isJumping : boolean,
		moveVector : Vector2,
		actions : { [string] : InputAction },
		player : Player?,
		character : Model?,
	}

	type PlayerModuleInternalData = {
		playerData : { [Player] : PlayerData },
		connectionUtil: any, -- ConnectionUtil.ConnectionUtilType
		eventBus: any, -- EventBus.EventBus
		isServerAuthority: boolean,
	}

	type PlayerModuleInternalType = {
		__index: PlayerModuleInternalType,
		new: () -> PlayerModuleInternalType,
		start: (PlayerModuleInternalType) -> (),
		stop: (PlayerModuleInternalType) -> (),
		data : PlayerModuleInternalData,
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

	local PlayerModuleInternalInstance = PlayerModuleInternal.new()
	PlayerModuleInternalInstance:start()

	export type PlayerModuleType = {}
	local PlayerModule : PlayerModuleType = {} :: PlayerModuleType
	return PlayerModule
end

