local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService('GuiService')
local HttpRbxApiService = game:GetService('HttpRbxApiService')
local HttpService = game:GetService('HttpService')
local RunService = game:GetService('RunService')
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)

local DevConsole = script.Parent.DevConsole
local Constants = require(DevConsole.Constants)

local Components = DevConsole.Components
local DevConsoleWindow = require(Components.DevConsoleWindow)
local DataProvider = require(Components.DataProvider)
local Log = require(Components.Log.MainViewLog)
local Memory = require(Components.Memory.MainViewMemory)
local Network = require(Components.Network.MainViewNetwork)
local Scripts = require(Components.Scripts.MainViewScripts)
local DataStores = require(Components.DataStores.MainViewDataStores)
local ServerStats = require(Components.ServerStats.MainViewServerStats)
local ActionBindings = require(Components.ActionBindings.MainViewActionBindings)
local ServerJobs = require(Components.ServerJobs.MainViewServerJobs)

local DevConsoleReducer = require(DevConsole.Reducers.DevConsoleReducer)

local SetDevConsoleVisibility = require(DevConsole.Actions.SetDevConsoleVisibility)

local DEV_TAB_LIST = {
	{
		label = "Log",
		tab = Log,
	}, {
		label = "Memory",
		tab = Memory,
	}, {
		label = "Network",
		tab = Network,
	}, {
		label = "Scripts",
		tab = Scripts,
	}, {
		label = "DataStores",
		tab = DataStores,
	}, {
		label = "ServerStats",
		tab = ServerStats,
	}, {
		label = "ActionBindings",
		tab = ActionBindings,
	}, {
		label = "ServerJobs",
		tab = ServerJobs,
	}
}

local PLAYER_TAB_LIST = {
	{
		label = "Log",
		tab = Log,
	}, {
		label = "Memory",
		tab = Memory,
	},
}

local DevConsoleMaster = {}
DevConsoleMaster.__index = DevConsoleMaster

local platformConversion = {
	[Enum.Platform.Windows] = Constants.FormFactor.Large,
	[Enum.Platform.OSX] = Constants.FormFactor.Large,
	[Enum.Platform.IOS] = Constants.FormFactor.Small,
	[Enum.Platform.Android] = Constants.FormFactor.Small,
	[Enum.Platform.XBoxOne] = Constants.FormFactor.Console,
	[Enum.Platform.PS4] = Constants.FormFactor.Console,
	[Enum.Platform.PS3] = Constants.FormFactor.Console,
	[Enum.Platform.XBox360] = Constants.FormFactor.Console,
	[Enum.Platform.WiiU] = Constants.FormFactor.Console,
	[Enum.Platform.NX] = Constants.FormFactor.Console,
	[Enum.Platform.Ouya] = Constants.FormFactor.Console,
	[Enum.Platform.AndroidTV] = Constants.FormFactor.Console,
	[Enum.Platform.Chromecast] = Constants.FormFactor.Console,
	[Enum.Platform.Linux] = Constants.FormFactor.Large,
	[Enum.Platform.SteamOS] = Constants.FormFactor.Console,
	[Enum.Platform.WebOS] = Constants.FormFactor.Large,
	[Enum.Platform.DOS] = Constants.FormFactor.Large,
	[Enum.Platform.BeOS] = Constants.FormFactor.Large,
	[Enum.Platform.UWP] = Constants.FormFactor.Large,
	[Enum.Platform.None] = Constants.FormFactor.Large,
}

local function isDeveloper()
	if RunService:IsStudio() then
		return true
	end

	local canManageSuccess, canManageResult = pcall(function()
		local url = string.format("/users/%d/canmanage/%d", game:GetService("Players").LocalPlayer.UserId, game.PlaceId)
		return HttpRbxApiService:GetAsync(url, Enum.ThrottlingPriority.Default, Enum.HttpRequestType.Default, true)
	end)
	if canManageSuccess and type(canManageResult) == "string" then
		-- API returns: {"Success":BOOLEAN,"CanManage":BOOLEAN}
		-- Convert from JSON to a table
		-- pcall in case of invalid JSON
		local success, result = pcall(function()
			return HttpService:JSONDecode(canManageResult)
		end)
		if success and result.CanManage == true then
			return true
		end
	end
	return false
end

function DevConsoleMaster.new()
	local self = {}
	setmetatable(self, DevConsoleMaster)

	-- will need to decide on whether to use DPI and screensize or
	-- to use Platform to distinguish between the different form factors
	local platformEnum = UserInputService:GetPlatform()
	local formFactor = platformConversion[platformEnum]
	local screenSizePixel = GuiService:GetScreenResolution()

	local developerConsoleView = isDeveloper()

	-- create store
	self.store = Rodux.Store.new(DevConsoleReducer)
	self.init = false
	self.isVisible = false

	-- use connector to wrap store and root together
	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		DataProvider = Roact.createElement(DataProvider, {
			isDeveloperView = developerConsoleView,
		}, {
			App = Roact.createElement("ScreenGui", {}, {
				DevConsoleWindow = Roact.createElement(DevConsoleWindow, {
					formFactor = formFactor,
					isdeveloperView = developerConsoleView,
					isVisible = false,  -- determines if visible or not
					isMinimized = false, -- false means windowed, otherwise shows up as a minimized bar
					position = Constants.MainWindowInit.Position,
					size = Constants.MainWindowInit.Size,
					tabList = developerConsoleView and DEV_TAB_LIST or PLAYER_TAB_LIST
				})
			}),
		})
	})
	return self
end

function DevConsoleMaster:Start()
	if not self.init then
		self.init = true
		self.element = Roact.mount(self.root, CoreGui, "DevConsoleMaster")
	end
end

function DevConsoleMaster:Stop()

end

function DevConsoleMaster:ToggleVisibility()
	self.isVisible = not self.store:getState().DisplayOptions.isVisible
	self.store:dispatch(SetDevConsoleVisibility(self.isVisible))
end

function DevConsoleMaster:GetVisibility()
	return self.isVisible
end

function DevConsoleMaster:SetVisibility(value)
	if type(value) == "boolean" then
		self.isVisible = value
		self.store:dispatch(SetDevConsoleVisibility(self.isVisible))
	end
end

local master = DevConsoleMaster.new()
master:Start()

StarterGui:RegisterGetCore("DevConsoleVisible", function()
	return master:GetVisibility()
end)

StarterGui:RegisterSetCore("DevConsoleVisible", function(visible)
	if (type(visible) ~= "boolean") then
		error("DevConsoleVisible must be given a boolean value.")
	end
	master:SetVisibility(visible)
end)

return master