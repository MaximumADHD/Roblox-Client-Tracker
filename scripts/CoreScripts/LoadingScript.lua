--!nonstrict
-- Creates the generic "ROBLOX" loading screen on startup
-- Written by ArceusInator & Ben Tkacheff, 2014
-- Updates by 0xBAADF00D, 2017
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules = RobloxGui:WaitForChild("Modules")
local CorePackages = game:GetService("CorePackages")

local GetFFlagHideExperienceLoadingJudder =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagHideExperienceLoadingJudder

-- Check if engine has passed down place_id as Args or not. If yes, use the place_id for quicker start up.
local PLACE_ID_FROM_ENGINE = game.PlaceId
local numArgs = select("#", ...)
if PLACE_ID_FROM_ENGINE <= 0 and numArgs > 0 then
	PLACE_ID_FROM_ENGINE = select(1, ...)
end

if GetFFlagHideExperienceLoadingJudder() then
	-- Refresh rate in experiences is set to 90,
	-- so that the FRM oscillates somewhere between 72 and 90 instead of dipping below 72.
	-- So the actual target FPS should be anything above 72.
	local TARGET_EXPERIENCE_REFRESH_RATE = 72

	local loadingScript = require(CorePackages.Workspace.Packages.ExperienceLoadingScript).loadingScript
	coroutine.wrap(loadingScript)(PLACE_ID_FROM_ENGINE, TARGET_EXPERIENCE_REFRESH_RATE)
else
	local VRService = game:GetService("VRService")
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local ReplicatedFirst = game:GetService("ReplicatedFirst")

	local GetFFlagHideExperienceLoadingJudder =
		require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagHideExperienceLoadingJudder

	local UIBlox = require(CorePackages.UIBlox)
	local uiBloxConfig = require(Modules.UIBloxInGameConfig)
	UIBlox.init(uiBloxConfig)

	local StyleConstants = UIBlox.App.Style.Constants

	local UiModeStyleProvider = require(CorePackages.Workspace.Packages.Style).UiModeStyleProvider

	local create = require(RobloxGui:WaitForChild("Modules"):WaitForChild("Common"):WaitForChild("Create"))
	local LoadingScreen = require(Modules.LoadingScreen.LoadingScreen)
	local LoadingScreenReducer = require(Modules.LoadingScreen.Reducers.LoadingScreenReducer)
	local LoggingProtocol = require(CorePackages.Workspace.Packages.LoggingProtocol)

	--FFlags
	local FFlagReportFirstGameInteractive = game:DefineFastFlag("ReportFirstGameInteractive", false)


	local LOADING_SCREEN_FADE_OUT_TIME = 5

	-- Generate transition when prepraing the loading screen ui
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
	local transition = GenerateTransition()

	local debugMode = false
	local loadingScreenUIHandle = nil
	local spwanUI = coroutine.create(function()
		local Roact = require(CorePackages:WaitForChild("Roact"))
		local Rodux = require(CorePackages:WaitForChild("Rodux"))
		local RoactRodux = require(CorePackages:WaitForChild("RoactRodux"))
		local store = Rodux.Store.new(LoadingScreenReducer, {}, { Rodux.thunkMiddleware })

		local loadingScreenUI = Roact.createElement(LoadingScreen, {
			placeId = PLACE_ID_FROM_ENGINE,
		})

		local app = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			Roact.createElement(UiModeStyleProvider, {
				style =  {
					themeName = StyleConstants.ThemeName.Dark,
					fontName = StyleConstants.FontName.Gotham
				},
			}, {
				loadingScreenUI = loadingScreenUI
			})
		})

		loadingScreenUIHandle = Roact.mount(app, CoreGui, "RobloxLoadingGUI")
		-- Roact mount might lag one frame, make sure transition is destroyed after loading screen shows up.
		RunService.Heartbeat:wait()
		transition:Destroy()
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
end
