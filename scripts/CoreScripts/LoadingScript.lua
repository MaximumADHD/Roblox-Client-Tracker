--!nonstrict
-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
-- Updates by 0xBAADF00D, 2017
local VRService = game:GetService("VRService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui:WaitForChild("Modules")
local CorePackages = game:GetService("CorePackages")

--[[
	NOTE: We need to initify the instance hierarchy as early as possible
	to avoid spurious require errors. Only call require() and
	AddCoreScriptLocal() AFTER this block.
]]
local initify = require(CorePackages.initify)
initify(CorePackages)
initify(Modules)

local GetFFlagLuaAppUseUIBloxColorPalettes =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagLuaAppUseUIBloxColorPalettes
if GetFFlagLuaAppUseUIBloxColorPalettes() then
	-- With flag on, styles from UIBlox in LoadingScreen (required below)
	-- are being used prior to UIBlox initialization which is in
	-- StarterScript. So add one more initialization here to make
	-- LoadingScreen being required correctly.
	-- UIBlox can be initialized only once and later initialization will
	-- do nothing but output warnings. So it is safe to have one more
	-- initialization.
	local UIBlox = require(CorePackages.UIBlox)
	local uiBloxConfig = require(Modules.UIBloxInGameConfig)
	UIBlox.init(uiBloxConfig)
end

local create = require(RobloxGui:WaitForChild("Modules"):WaitForChild("Common"):WaitForChild("Create"))
local LoadingScreen = require(Modules.LoadingScreen.LoadingScreen)
local LoadingScreenReducer = require(Modules.LoadingScreen.Reducers.LoadingScreenReducer)
local LoggingProtocol = require(CorePackages.UniversalApp.Logging.LoggingProtocol)

--FFlags
local FFlagReportFirstGameInteractive = game:DefineFastFlag("ReportFirstGameInteractive", false)
local FFlagRemoveMandatoryFiveSecondWait = game:DefineFastFlag("RemoveMandatoryFiveSecondWait", false)

local debugMode = false

local LOADING_SCREEN_FADE_OUT_TIME = 5

-- Check if engine has passed down place_id as Args or not. If yes, use the place_id for quicker start up.
local PLACE_ID_FROM_ENGINE = game.PlaceId
local numArgs = select("#", ...)
if PLACE_ID_FROM_ENGINE <= 0 and numArgs > 0 then
	PLACE_ID_FROM_ENGINE = select(1, ...)
end

-- Generate transtion when prepraing the loading screen ui
local function GenerateTransition()
	local screenGui = create("ScreenGui")({
		Name = "RobloxLoadingTransitionGui",
		DisplayOrder = 8,
		IgnoreGuiInset = true,
	})

	local mainBackgroundContainer = create("Frame")({
		Name = "BlackFrame",
		BackgroundColor3 = Color3.fromRGB(0, 0, 0),
		BackgroundTransparency = 0,
		Size = UDim2.fromScale(10, 10), -- make sure whole screen is covered, since canvas size might not be correct at this point
		Position = UDim2.fromOffset(0, 0),
		Active = true,
		Parent = screenGui,
	})
	screenGui.Parent = CoreGui
	return screenGui
end

---------------------------------------------------------
-- Main Script (show something now + setup connections)
local transtion = GenerateTransition()

local loadingScreenUIHandle = nil
local spwanUI = coroutine.create(function()
	local Roact = require(CorePackages:WaitForChild("Roact"))
	local Rodux = require(CorePackages:WaitForChild("Rodux"))
	local RoactRodux = require(CorePackages:WaitForChild("RoactRodux"))
	local store = Rodux.Store.new(LoadingScreenReducer, {}, { Rodux.thunkMiddleware })
	local app = Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		loadingScreenUI = Roact.createElement(LoadingScreen, {
			placeId = PLACE_ID_FROM_ENGINE,
		}),
	})
	loadingScreenUIHandle = Roact.mount(app, CoreGui, "RobloxLoadingGUI")
	-- Roact mount might lag one frame, make sure transition is destroyed after loading screen shows up.
	RunService.Heartbeat:wait()
	transtion:Destroy()
end)
coroutine.resume(spwanUI)

-- Loading screen removal
local function waitForCharacterLoaded()
	if Players.CharacterAutoLoads then
		local localPlayer = Players.LocalPlayer
		if not localPlayer then
			Players:GetPropertyChangedSignal("LocalPlayer"):wait()
			localPlayer = Players.LocalPlayer
		end
		if not localPlayer.Character then
			localPlayer.CharacterAdded:wait()
		end
	end
end

local function handleRemoveDefaultLoadingGui(instant)
	local Roact = require(CorePackages.Roact)
	if not instant then
		-- wait until loading screen fade out animation is finished, safely unmout the component
		wait(LOADING_SCREEN_FADE_OUT_TIME)
	end
	if loadingScreenUIHandle then
		Roact.unmount(loadingScreenUIHandle)
		loadingScreenUIHandle = nil
	end
	ReplicatedFirst:SetDefaultLoadingGuiRemoved()

	-- When the loading screen completely fades away and the user sees the experience,
	-- we want to send the first_experience_interactive
	if FFlagReportFirstGameInteractive then
		LoggingProtocol.default:logEventOnce("first_experience_interactive")
	end
end

local function handleFinishedReplicating()
	if FFlagRemoveMandatoryFiveSecondWait or #ReplicatedFirst:GetChildren() == 0 then
		if game:IsLoaded() then
			waitForCharacterLoaded()
			handleRemoveDefaultLoadingGui()
		else
			local gameLoadedCon = nil
			gameLoadedCon = game.Loaded:Connect(function()
				gameLoadedCon:disconnect()
				gameLoadedCon = nil
				waitForCharacterLoaded()
				handleRemoveDefaultLoadingGui()
			end)
		end
	else
		wait(5) -- some games don't have custom loading screens, but still have Instances under ReplicatedFirst, and are stuck on loading screen longer because of it.
		handleRemoveDefaultLoadingGui()
	end
end

if debugMode then
	warn("Not destroying loading screen because debugMode is true")
	return
end

ReplicatedFirst.FinishedReplicating:Connect(handleFinishedReplicating)
if ReplicatedFirst:IsFinishedReplicating() then
	handleFinishedReplicating()
end

ReplicatedFirst.RemoveDefaultLoadingGuiSignal:Connect(handleRemoveDefaultLoadingGui)
if ReplicatedFirst:IsDefaultLoadingGuiRemoved() then
	handleRemoveDefaultLoadingGui()
end

-- VR
coroutine.wrap(function()
	if not VRService.VREnabled then
		VRService:GetPropertyChangedSignal("VREnabled"):Wait()
	end
	handleRemoveDefaultLoadingGui(true)
	require(RobloxGui.Modules.LoadingScreen3D)
end)()
