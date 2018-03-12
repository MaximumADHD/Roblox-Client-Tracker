local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

local Modules = CoreGui.RobloxGui.Modules

local AppNameEnum = require(Modules.Mobile.AppNameEnum)
local Create = require(Modules.Mobile.Create)
local Constants = require(Modules.Mobile.Constants)
local AvatarEditorFlags = require(Modules.LuaApp.Legacy.AvatarEditor.Flags)
local LayoutInfo = require(Modules.LuaApp.Legacy.AvatarEditor.LayoutInfo)
local AppGui = require(Modules.LuaApp.Legacy.AvatarEditor.AppGui)

local AvatarEditorSetup = {}

function AvatarEditorSetup:Initialize(notifyAppReady)
	--This is to cover the sky while loading, and also prevent the sky from flashing in when the global gui inset changes
	local screenGui

	if not UserSettings().GameSettings:InStudioMode() then
		screenGui = Create.new "ScreenGui" {
			Name = "SkyCoverGui",
			DisplayOrder = 1,

			Create.new "Frame" {
				Name = "HackHeader",
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, UserInputService.NavBarSize.Y+UserInputService.StatusBarSize.Y),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.BLUE_PRESSED,
			},
			Create.new "Frame" {
				Name = "HackBody",
				Position = UDim2.new(0, 0, 0, UserInputService.NavBarSize.Y+UserInputService.StatusBarSize.Y),
				Size = UDim2.new(1, 0, 1, 200),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.WHITE,
			},
		}
	else
		screenGui = Create.new "ScreenGui" {
			Name = "SkyCoverGui",
			DisplayOrder = 1,

			Create.new "Frame" {
				Name = "HackHeader",
				Position = UDim2.new(0, 0, 0, 0),
				Size = UDim2.new(1, 0, 0, 64),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.BLUE_PRESSED,
			},
			Create.new "Frame" {
				Name = "HackBody",
				Position = UDim2.new(0, 0, 0, 64),
				Size = UDim2.new(1, 0, 1, 200),
				BorderSizePixel = 0,
				BackgroundColor3 = Constants.Color.WHITE,
			},
		}
	end

	local function adjustScreenGuiLayout()
		local headerHeight = UserInputService.NavBarSize.Y+UserInputService.StatusBarSize.Y
		screenGui.HackHeader.Size = UDim2.new(1, 0, 0, headerHeight)
		screenGui.HackBody.Position = UDim2.new(0, 0, 0, headerHeight)
	end

	local navBarChanged = UserInputService:GetPropertyChangedSignal("NavBarSize")
	navBarChanged:Connect(function()
		adjustScreenGuiLayout()
	end)

	local statusBarChanged = UserInputService:GetPropertyChangedSignal("StatusBarSize")
	statusBarChanged:Connect(function()
		adjustScreenGuiLayout()
	end)

	screenGui.Parent = CoreGui

	--[[
		As long as initializing AvatarEditorMain requires a yield, it has to run in a
		spawned task.  It is then possible for the user to switch apps in the middle of
		initialization.  So, openAvatarEditor and closeAvatarEditor first check to see
		if it's currently initializing, and if it is, they set a bool indicating whether
		to call Start() when initialization is done.
	]]
	local startAvatarEditorAfterInitializing = false

	self.openAvatarEditor = function()
		startAvatarEditorAfterInitializing = true
	end

	self.closeAvatarEditor = function()
		startAvatarEditorAfterInitializing = false
	end

	spawn(function()

		local header
		local appGui

		if not UserSettings().GameSettings:InStudioMode() then
			header = require(Modules.LuaApp.Legacy.AvatarEditor.Header).new("Avatar",
				UserInputService.NavBarSize.Y, UserInputService.StatusBarSize.Y)

			local headerHeight = UserInputService.StatusBarSize.Y + UserInputService.NavBarSize.Y
			appGui = AppGui(
				UDim2.new(0, 0, 0,  headerHeight),
				UDim2.new(1, 0, 1, -headerHeight))

			local function updateUIDimensions()
				header:SetNavAndStatusBarHeight(UserInputService.NavBarSize.Y, UserInputService.StatusBarSize.Y)
				local headerHeight = UserInputService.NavBarSize.Y + UserInputService.StatusBarSize.Y
				appGui:setDimensions(
					UDim2.new(0, 0, 0,  headerHeight),
					UDim2.new(1, 0, 1, -headerHeight))
			end

			UserInputService:GetPropertyChangedSignal("NavBarSize"):Connect( updateUIDimensions )
			UserInputService:GetPropertyChangedSignal("StatusBarSize"):Connect( updateUIDimensions )
		else
			local navBarHeight = 44
			local statusBarHeight = 20

			header = require(Modules.LuaApp.Legacy.AvatarEditor.Header).new("Avatar",
				navBarHeight, statusBarHeight)

			local headerHeight = navBarHeight + statusBarHeight
			appGui = AppGui(
				UDim2.new(0, 0, 0,  headerHeight),
				UDim2.new(1, 0, 1, -headerHeight))
		end

		header.rbx.Parent = appGui.ScreenGui

		AvatarEditorMain =
			require(Modules.LuaApp.Legacy.AvatarEditor.AvatarEditorMain)
				.new(appGui)

		local function startAvatarEditor()
			screenGui.HackBody.Visible = false
			AvatarEditorMain:Start()
			notifyAppReady(AppNameEnum.AvatarEditor)
		end

		if startAvatarEditorAfterInitializing then
			startAvatarEditor()
		end

		self.openAvatarEditor = startAvatarEditor

		self.closeAvatarEditor = function()
			screenGui.HackBody.Visible = true
			AvatarEditorMain:Stop()
		end
	end)
end

function AvatarEditorSetup:Open()
	self.openAvatarEditor()
end

function AvatarEditorSetup:Close()
	self.closeAvatarEditor()
end

return AvatarEditorSetup