--!strict
local RunService = game:GetService("RunService")

local CommonUtils = require(script.Parent:WaitForChild("CommonUtils"))
local Types = require(script.Parent.Types)

local CharacterUtil = CommonUtils.get("CharacterUtil")
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local EventBus = CommonUtils.get("EventBus")
local FlagUtil = CommonUtils.get("FlagUtil")

local FFlagUserPlayerModuleEngineAPI = FlagUtil.getUserFlag("UserPlayerModuleEngineAPI")

local PlayerModule = require(script.Parent)
local CameraModule = require(script.Parent:WaitForChild("CameraModule"))
local ControlModule = require(script.Parent:WaitForChild("ControlModule"))
local EngineInterface = require(script.Parent:WaitForChild("EngineInterface"))
local InputSampler = require(script.Parent:WaitForChild("InputSampler"))
local ServerAuthority = require(script.Parent:WaitForChild("ServerAuthority"))

local CONNECTIONS = {
	BIND_TO_SIMULATION = "BIND_TO_SIMULATION", -- switch to bind_to_simulation when possible
	RENDERSTEPPED_INPUT = "PLAYERMODULE_RENDERSTEPPED_INPUT",
	RENDERSTEPPED_CAMERA = "PLAYERMODULE_RENDERSTEPPED_CAMERA",
	ONLOCALPLAYER = "ONLOCALPLAYER",
}

type PlayerModuleInternalType = {
	__index: PlayerModuleInternalType,
	new: () -> PlayerModuleInternal,

	-- start the camera and controls
	start: (PlayerModuleInternal) -> (),
	-- remove with FFlagUserPlayerModuleEngineAPI
	-- stop the camera and controls
	stop: (PlayerModuleInternal) -> (),
}

export type PlayerModuleInternal = typeof(setmetatable(
	{} :: {
		-- this should be the only shared component between different modules
		data: Types.PlayerModuleInternalData,
		inputSampler: InputSampler.InputSampler,
	},
	{} :: PlayerModuleInternalType
))

local PlayerModuleInternal: PlayerModuleInternalType = {} :: PlayerModuleInternalType
PlayerModuleInternal.__index = PlayerModuleInternal

function PlayerModuleInternal.new()
	local self = setmetatable({
		data = {
			playerModule = PlayerModule,
			controlModule = {
				isJumping = false,
				moveVector = Vector2.new(),
				worldMoveVector = Vector3.new(),
				actions = {},
				enabled = true,
			},
			engineInterface = {
				player = nil,
				character = nil,
				humanoid = nil,
				characterChanged = false,
			},
			connectionUtil = ConnectionUtil.new(),
			eventBus = EventBus.new(),
			isServerAuthority = false,
		},
		inputSampler = InputSampler.new(),
	}, PlayerModuleInternal)

	return self
end

function PlayerModuleInternal:start()
	-- actually start when the localplayer is valid
	self.data.connectionUtil:trackConnection(
		CONNECTIONS.ONLOCALPLAYER,
		CharacterUtil.onLocalPlayer(function(player)
			if FFlagUserPlayerModuleEngineAPI then
				EngineInterface.update(self.data)
				ServerAuthority.initialize(self.data) -- TODO: no more initialize functions
				ControlModule:initialize(self.data)

				-- connect controlModule to update loop
				RunService:BindToRenderStep(
					CONNECTIONS.RENDERSTEPPED_INPUT,
					Enum.RenderPriority.Input.Value,
					function(dt)
						EngineInterface.update(self.data)
						ControlModule:Update(self.data, dt)
					end
				)

				-- connect cameraModule to update loop
				RunService:BindToRenderStep(
					CONNECTIONS.RENDERSTEPPED_CAMERA,
					Enum.RenderPriority.Camera.Value,
					function(dt)
						CameraModule:Update(self.data, dt)
						self.inputSampler:Update(self.data)
						EngineInterface.cleanDirty(self.data)
					end
				)
			else
				self.data.engineInterface.player = player

				ServerAuthority.initialize(self.data)
				ControlModule:initialize(self.data)

				-- connect controlModule to update loop
				RunService:BindToRenderStep(
					CONNECTIONS.RENDERSTEPPED_INPUT,
					Enum.RenderPriority.Input.Value,
					function(dt)
						self.data.engineInterface.character = CharacterUtil.getCharacter() -- this is only valid in the local client world
						if not self.data.engineInterface.character then
							return
						end

						ControlModule:Update(self.data, dt)
					end
				)
				self.data.connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_INPUT, function()
					RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_INPUT)
				end)

				-- connect cameraModule to update loop
				RunService:BindToRenderStep(
					CONNECTIONS.RENDERSTEPPED_CAMERA,
					Enum.RenderPriority.Camera.Value,
					function(dt)
						CameraModule:Update(self.data, dt)
						self.inputSampler:Update(self.data)
					end
				)
				self.data.connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_CAMERA, function()
					RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_CAMERA)
				end)
			end
		end)
	)
end

if not FFlagUserPlayerModuleEngineAPI then
	function PlayerModuleInternal:stop()
		self.data.connectionUtil:disconnectAll()
	end
end

return PlayerModuleInternal
