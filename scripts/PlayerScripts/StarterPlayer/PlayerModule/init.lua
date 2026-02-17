--!strict
--[[
	PlayerModule - This module file contains the public API for PlayerModule. 

--]]
local RunService = game:GetService("RunService")

local CommonUtils = require(script:WaitForChild("CommonUtils"))
local ConnectionUtil = CommonUtils.get("ConnectionUtil")
local FlagUtil = CommonUtils.get("FlagUtil")
local FFlagUserPlayerModuleHiddenAPI = FlagUtil.getUserFlag("UserPlayerModuleHiddenAPI")

if FFlagUserPlayerModuleHiddenAPI then
	local CameraModule = require(script:WaitForChild("CameraModule"))
	local ControlModule = require(script:WaitForChild("ControlModule"))

	local CONNECTIONS = {
		BIND_TO_SIMULATION = "BIND_TO_SIMULATION", -- switch to bind_to_simulation when possible
		RENDERSTEPPED_INPUT = "PLAYERMODULE_RENDERSTEPPED_INPUT",
		RENDERSTEPPED_CAMERA = "PLAYERMODULE_RENDERSTEPPED_CAMERA",
	}
	type PlayerModuleInternalType = {
		__index: PlayerModuleInternalType,
		new: () -> PlayerModuleInternalType,
		-- start the camera and controls
		start: (PlayerModuleInternalType) -> (),
		-- stop the camera and controls
		stop: (PlayerModuleInternalType) -> (),

		-- holds the connects to major Roblox services
		_connectionUtil: any -- ConnectionUtil.ConnectionUtilType
	}

	type PlayerModuleInternalData = {
		isJumping : boolean,
		-- input move vector, not in world space
		moveVector : Vector2,
	}

	local PlayerModuleInternal : PlayerModuleInternalType = {} :: PlayerModuleInternalType
	PlayerModuleInternal.__index = PlayerModuleInternal

	function PlayerModuleInternal.new()
		local self = setmetatable({
			_connectionUtil = ConnectionUtil.new(),
			data = {
				isJumping = false,
				moveVector = Vector2.new(),
			},
		}, PlayerModuleInternal)

		return self
	end

	function PlayerModuleInternal:start()
		RunService:BindToRenderStep(CONNECTIONS.RENDERSTEPPED_INPUT, Enum.RenderPriority.Input.Value, function(dt)
			ControlModule:Update(self.data, dt)
		end)
		self._connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_INPUT, function()
			RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_INPUT)
		end)

		RunService:BindToRenderStep(CONNECTIONS.RENDERSTEPPED_CAMERA, Enum.RenderPriority.Camera.Value, function(dt)
			CameraModule:Update(self.data, dt)
		end)
		self._connectionUtil:trackBoundFunction(CONNECTIONS.RENDERSTEPPED_CAMERA, function()
			RunService:UnbindFromRenderStep(CONNECTIONS.RENDERSTEPPED_CAMERA)
		end)
	end

	function PlayerModuleInternal:stop()
		self._connectionUtil:disconnectAll()
	end

	-- PlayerModule's internal singleton instance. 
	-- Depending on the package API, this may shift to no longer be a singleton and owned by the requiring script (which may or may not be PlayerScriptLoader)
	local PlayerModuleInternalInstance = PlayerModuleInternal.new()
	PlayerModuleInternalInstance:start()

	-- PlayerModule currently has no public API, but in future we can instantiate the internal class and expose methods here.
	export type PlayerModuleType = {}
	local PlayerModule : PlayerModuleType = {} :: PlayerModuleType
	return PlayerModule
else
	local PlayerModule = {}
	PlayerModule.__index = PlayerModule

	function PlayerModule.new()
		local self = setmetatable({},PlayerModule)
		self.cameras = require(script:WaitForChild("CameraModule"))
		self.controls = require(script:WaitForChild("ControlModule"))
		return self
	end

	function PlayerModule:GetCameras()
		return self.cameras
	end

	function PlayerModule:GetControls()
		return self.controls
	end

	function PlayerModule:GetClickToMoveController()
		return self.controls:GetClickToMoveController()
	end

	return PlayerModule.new()
end
