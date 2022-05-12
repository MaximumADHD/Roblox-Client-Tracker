--[[
	AvatarImporter - Wrapper component to display the current screen based on Rodux store
]]

local root = script.Parent.Parent.Parent
local FFlagAvatarImporterDeduplicatePackages = game:GetFastFlag("AvatarImporterDeduplicatePackages")

-- imports
local Roact = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.Roact) else require(root.Packages._Old.lib.Roact)
local RoactRodux = if FFlagAvatarImporterDeduplicatePackages then require(root.Packages.RoactRodux) else require(root.Packages._Old.lib.RoactRodux)

local Constants = require(root.src.Constants)
local AvatarPrompt = require(root.src.components.AvatarPrompt)
local LoadingPrompt = require(root.src.components.LoadingPrompt)
local ErrorPrompt = require(root.src.components.ErrorPrompt)
local RedirectRigPrompt = require(root.src.components.RedirectRigPrompt)

local function showAvatarPrompt(currentScreen)
	return currentScreen == Constants.SCREENS.AVATAR
end

local function showLoadingPrompt(currentScreen)
	return currentScreen == Constants.SCREENS.LOADING
end

local function showErrorPrompt(currentScreen)
	return currentScreen == Constants.SCREENS.ERROR
end

local function showRedirectRigPrompt(currentScreen)
	return currentScreen == Constants.SCREENS.REDIRECT_RIG
end

-- component
local AvatarImporter = Roact.Component:extend("AvatarImporter")

function AvatarImporter:render()
	local screen = self.props.screen

	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		AvatarPrompt = showAvatarPrompt(screen) and Roact.createElement(AvatarPrompt),
		LoadingPrompt = showLoadingPrompt(screen) and Roact.createElement(LoadingPrompt),
		ErrorPrompt = showErrorPrompt(screen) and Roact.createElement(ErrorPrompt),
		RedirectRigPrompt = showRedirectRigPrompt(screen) and Roact.createElement(RedirectRigPrompt),
	})
end

local function mapStateToProps(state)
	state = state or {}

	return {
		screen = state.plugin.screen,
	}
end

return RoactRodux.connect(mapStateToProps)(AvatarImporter)