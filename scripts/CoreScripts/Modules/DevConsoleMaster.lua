--!nonstrict
local CoreGui = game:GetService("CoreGui")
local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)

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
local MicroProfiler = require(Components.MicroProfiler.MainViewMicroProfiler)
local ScriptProfiler = require(Components.ScriptProfiler.MainViewScriptProfiler)
local DebugVisualizations = require(Components.DebugVisualizations.MainViewDebugVisualizations)
local LuauHeap = require(Components.LuauHeap.MainViewLuauHeap)
local VoiceChat = require(Components.VoiceChat.MainViewVoiceChat)

local RCCProfilerDataCompleteListener = require(Components.MicroProfiler.RCCProfilerDataCompleteListener)
local getClientReplicator = require(DevConsole.Util.getClientReplicator)

local MainView = require(DevConsole.Reducers.MainView)
local DevConsoleReducer = require(DevConsole.Reducers.DevConsoleReducer)

local Actions = DevConsole.Actions
local SetDevConsoleVisibility = require(Actions.SetDevConsoleVisibility)
local SetTabList = require(Actions.SetTabList)

local MiddleWare = DevConsole.MiddleWare
local DevConsoleAnalytics = require(MiddleWare.DevConsoleAnalytics)

local PlayerPermissionsModule = require(CoreGui.RobloxGui.Modules.PlayerPermissionsModule)

local ScriptProfilerEngineFeature = game:GetEngineFeature("ScriptProfiler")

local VoiceChatServiceManager = require(CoreGui.RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local DEV_TAB_LIST = {
	Log = {
		tab = Log,
		layoutOrder = 1,
		hasClientServer = true,
	},
	Memory = {
		tab = Memory,
		layoutOrder = 2,
		hasClientServer = true,
	},
	Network = {
		tab = Network,
		layoutOrder = 3,
		hasClientServer = true,
	},
	Scripts = {
		tab = Scripts,
		layoutOrder = 4,
	},
	DataStores = {
		tab = DataStores,
		layoutOrder = 5,
	},
	ServerStats = {
		tab = ServerStats,
		layoutOrder = 6,
	},
	ActionBindings = {
		tab = ActionBindings,
		layoutOrder = 7,
	},
	ServerJobs = {
		tab = ServerJobs,
		layoutOrder = 8,
	},
	MicroProfiler = {
		tab = MicroProfiler,
		layoutOrder = 9,
	},
	DebugVisualizations = {
		tab = DebugVisualizations,
		layoutOrder = 10,
	},
	ScriptProfiler = if ScriptProfilerEngineFeature
		then {
			tab = ScriptProfiler,
			layoutOrder = 11,
		}
		else nil,
	LuauHeap = {
		tab = LuauHeap,
		layoutOrder = 12,
	},
}

local ADMIN_TAB_LIST = {
	Log = {
		tab = Log,
		layoutOrder = 1,
	},
	Memory = {
		tab = Memory,
		layoutOrder = 2,
	},
	ScriptProfiler = if ScriptProfilerEngineFeature
		then {
			tab = ScriptProfiler,
			layoutOrder = 3,
		}
		else nil,
	LuauHeap = {
		tab = LuauHeap,
		layoutOrder = 4,
	},
	VoiceChat = if game:GetEngineFeature("VoiceChatDevConsoleTabEnabled") and VoiceChatServiceManager and VoiceChatServiceManager:canUseService()
	then {
		tab = VoiceChat,
		layoutOrder = 5,
	} else nil,
}

local PLAYER_TAB_LIST = {
	Log = {
		tab = Log,
		layoutOrder = 1,
	},
	Memory = {
		tab = Memory,
		layoutOrder = 2,
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

local function isAdminAsync()
	return PlayerPermissionsModule.IsPlayerAdminAsync(Players.LocalPlayer)
end

function DevConsoleMaster.new()
	local self = {}
	setmetatable(self, DevConsoleMaster)

	self.init = false

	self.isDeveloperTabListActive = false

	self.waitForStart = true
	self.waitForStartBindable = Instance.new("BindableEvent")
	coroutine.wrap(function()
		self:SetupDevConsole()
	end)()

	return self
end

function DevConsoleMaster:SetupDevConsole()
	-- will need to decide on whether to use DPI and screensize or
	-- to use Platform to distinguish between the different form factors
	local platformEnum = UserInputService:GetPlatform()
	local formFactor = platformConversion[platformEnum]

	local initTabListForStore = {
		MainView = MainView(nil, SetTabList(PLAYER_TAB_LIST, "Log")),
	}

	-- create store
	local middleWare = { DevConsoleAnalytics }
	self.store = Rodux.Store.new(DevConsoleReducer, initTabListForStore, middleWare)

	local isVisible = self.store:getState().DisplayOptions.isVisible

	-- use connector to wrap store and root together
	self.root = Roact.createElement(RoactRodux.StoreProvider, {
		store = self.store,
	}, {
		DataProvider = Roact.createElement(DataProvider, {
			isDeveloperView = false,
		}, {
			App = Roact.createElement("ScreenGui", {
				OnTopOfCoreBlur = true,
				DisplayOrder = 10,
			}, {
				DevConsoleWindow = Roact.createElement(DevConsoleWindow, {
					formFactor = formFactor,
					isDeveloperView = false,
					isVisible = isVisible, -- determines if visible or not
					isMinimized = false, -- false means windowed, otherwise shows up as a minimized bar
					position = Constants.MainWindowInit.Position,
					size = Constants.MainWindowInit.Size,
					tabList = PLAYER_TAB_LIST,
					onCloseCallback = function(value)
						self:SetServerStatsConnection(value)
					end,
				}),

				RCCProfilerDataCompleteListener = Roact.createElement(RCCProfilerDataCompleteListener),
			}),
		}),
	})

	self.waitForStart = false
	self.waitForStartBindable:Fire()
end

local master = DevConsoleMaster.new()

function DevConsoleMaster:Start()
	if not self.init then
		if self.waitForStart then
			self.waitForStartBindable.Event:Wait()
		end
		self.init = true
		self.element = Roact.mount(self.root, CoreGui, "DevConsoleMaster")
		local clientReplicator = getClientReplicator()

		-- Because the request is async, we spawn it as a separate task
		task.spawn(function()
			-- Switch to Admin tab list if we didn't already switch to the developer list
			if isAdminAsync() and not self.isDeveloperTabListActive then
				self.store:dispatch(SetTabList(ADMIN_TAB_LIST, "Log", false))
			end
		end)

		if clientReplicator then
			self._statsConnector = clientReplicator.StatsReceived:connect(function(stats)
				if not self._statsConnector then
					return
				end
				self._statsConnector:Disconnect()
				self._statsConnector = nil

				self.isDeveloperTabListActive = true

				self.store:dispatch(SetTabList(DEV_TAB_LIST, "Log", true))
			end)
			
			self:SetServerStatsConnection(true)
		end
	end
end

function DevConsoleMaster:ToggleVisibility()
	if not self.init then
		master:Start()
	end

	local isVisible = not self.store:getState().DisplayOptions.isVisible
	self:SetVisibility(isVisible)
end

function DevConsoleMaster:GetVisibility()
	if not self.init then
		return false
	end

	local state = self.store:getState()
	if state then
		if state.DisplayOptions then
			return state.DisplayOptions.isVisible and not state.DisplayOptions.isMinimized
		end
	end

	return false
end

function DevConsoleMaster:SetServerStatsConnection(value)
	local clientReplicator = getClientReplicator()
	if clientReplicator then
		clientReplicator:RequestServerStats(value)
	end
end

function DevConsoleMaster:SetVisibility(value)
	if type(value) == "boolean" then
		if not self.init and value then
			master:Start()
		end

		self:SetServerStatsConnection(value)

		self.store:dispatch(SetDevConsoleVisibility(value))
	end
end

StarterGui:RegisterGetCore("DevConsoleVisible", function()
	return master:GetVisibility()
end)

StarterGui:RegisterSetCore("DevConsoleVisible", function(visible)
	if type(visible) ~= "boolean" then
		error("DevConsoleVisible must be given a boolean value.")
	end

	master:SetVisibility(visible)
end)

return master
