--[[
			// GameJoin.lua

			// Handles game join logic
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local GameOptionsSettings = settings():FindFirstChild("Game Options")

local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlayModule = require(ShellModules:FindFirstChild('ErrorOverlay'))
local OverscanScreenModule = require(ShellModules:FindFirstChild('OverscanScreen'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local GameJoin = {}

GameJoin.JoinType = {
	Normal = 0;			-- use placeId
	GameInstance = 1;	-- use game instance id
	Follow = 2;			-- use userId or user you are following
	PMPCreator = 3;		-- use placeId, used when a player joins their own place
}

local overscanClosedCn = nil

local function joinGame(joinType, joinId, creatorUserId)
	overscanClosedCn = Utility.DisconnectEvent(overscanClosedCn)

	if UserSettings().GameSettings:InStudioMode() then
		ScreenManager:OpenScreen(ErrorOverlayModule(Errors.Test.CannotJoinGame), false)
	else
		local success, result = pcall(function()
			-- check if we are the creator for normal joins
			if joinType == GameJoin.JoinType.Normal and creatorUserId == UserData:GetRbxUserId() then
				joinType = GameJoin.JoinType.PMPCreator
			end

			return PlatformService:BeginStartGame3(joinType, joinId)
		end)
		-- catch pcall error, something went wrong with call into API
		-- all other game join errors are caught in AppHome.lua
		if not success then
			ScreenManager:OpenScreen(ErrorOverlayModule(Errors.GameJoin.Default, false))
		end
	end
end

-- joinType - GameJoin.JoinType
-- joinId - can be a userId or placeId, see JoinType for which one to use
function GameJoin:StartGame(joinType, joinId, creatorUserId)
	-- check if we need to open the overscan screen
	local needToOverscan = false
	local success, result = pcall(function()
		if GameOptionsSettings.OverscanPX < 0 or GameOptionsSettings.OverscanPY < 0 then
			needToOverscan = true
		end
	end)
	if game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
		needToOverscan = false
	end
	if needToOverscan or UserSettings().GameSettings:InStudioMode() then
		local overscanScreen = OverscanScreenModule(GuiRoot)
		overscanClosedCn = Utility.DisconnectEvent(overscanClosedCn)
		overscanClosedCn = overscanScreen.Closed:connect(function()
			joinGame(joinType, joinId, creatorUserId)
		end)
		ScreenManager:OpenScreen(overscanScreen)
	else
		joinGame(joinType, joinId, creatorUserId)
	end
end

return GameJoin
