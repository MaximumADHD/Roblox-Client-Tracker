--[[
				// GameGenreScreen.lua

				// Creates a GameGenreScreen that is used to navigate games for a
				// selected sort.
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local BaseCarouselScreen = require(ShellModules:FindFirstChild('BaseCarouselScreen'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function CreateGameGenreScreen(sortName, gameCollection)
	local this = BaseCarouselScreen()

    local currentShownCollection = gameCollection

	this:SetTitleZIndex(2)
	this:SetTitle(sortName)
	this:LoadGameCollection(gameCollection)

	return this
end

return CreateGameGenreScreen
