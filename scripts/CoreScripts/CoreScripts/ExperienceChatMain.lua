local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local TextChatService = game:GetService("TextChatService")

-- Wait for the game to be Loaded before checking ChatVersion
-- Otherwise it will always return its default value.
local _ = game:IsLoaded() or game.Loaded:Wait()
if TextChatService.ChatVersion ~= Enum.ChatVersion.TextChatService then
	return
end

local RobloxGui = CoreGui:WaitForChild("RobloxGui", math.huge)
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)

local Roact = require(CorePackages.Packages.Roact)
local Rodux = require(CorePackages.Packages.Rodux)
local UIBlox = require(CorePackages.UIBlox)

local AppStyleProvider = UIBlox.App.Style.AppStyleProvider
local StyleConstants = UIBlox.App.Style.Constants
local DarkTheme = StyleConstants.ThemeName.Dark
local Gotham = StyleConstants.FontName.Gotham

local ExperienceChat = require(CorePackages.ExperienceChat)
local App = ExperienceChat.mountClientApp()

local themes = {
	Dark = {
		themeName = DarkTheme,
		fontName = Gotham,
	},
}

local root = Roact.createElement(AppStyleProvider, {
	style = themes["Dark"],
}, {
	Child = Roact.createElement(App, {
		translator = RobloxTranslator,
		isChatWindowVisible = true,
		isChatInputBarVisible = true,
		isDefaultChatEnabled = true,
	}),
})

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ExperienceChat"
screenGui.Parent = CoreGui

Roact.mount(root, screenGui, "ExperienceChat")
