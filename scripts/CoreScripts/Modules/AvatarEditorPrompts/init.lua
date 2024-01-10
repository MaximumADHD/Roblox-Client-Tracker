local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider = require(RobloxGui.Modules.Common.renderWithCoreScriptsStyleProvider)

local Roact = require(CorePackages.Roact)
local Rodux = require(CorePackages.Rodux)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)

local AvatarEditorPromptsApp = require(script.Components.AvatarEditorPromptsApp)
local Reducer = require(script.Reducer)

local GetGameName = require(script.Thunks.GetGameName)
local AvatarEditorPromptsPolicy = require(script.AvatarEditorPromptsPolicy)

local RoactGlobalConfig = require(script.RoactGlobalConfig)

local ConnectAvatarEditorServiceEvents = require(script.ConnectAvatarEditorServiceEvents)

local AvatarEditorPrompts = {}
AvatarEditorPrompts.__index = AvatarEditorPrompts

function AvatarEditorPrompts.new()
	local self = setmetatable({}, AvatarEditorPrompts)

	if RoactGlobalConfig.propValidation then
		Roact.setGlobalConfig({
			propValidation = true,
		})
	end
	if RoactGlobalConfig.elementTracing then
		Roact.setGlobalConfig({
			elementTracing = true,
		})
	end

	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})

	self.store:dispatch(GetGameName)

	if GetFFlagEnableStyleProviderCleanUp() then
		self.root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			PolicyProvider = Roact.createElement(AvatarEditorPromptsPolicy.Provider, {
				policy = { AvatarEditorPromptsPolicy.Mapper },
			}, {
				ThemeProvider = renderWithCoreScriptsStyleProvider({
					AvatarEditorPromptsApp = Roact.createElement(AvatarEditorPromptsApp),
				}),
			}),
		})
	else
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}

		self.root = Roact.createElement(RoactRodux.StoreProvider, {
			store = self.store,
		}, {
			PolicyProvider = Roact.createElement(AvatarEditorPromptsPolicy.Provider, {
				policy = { AvatarEditorPromptsPolicy.Mapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					AvatarEditorPromptsApp = Roact.createElement(AvatarEditorPromptsApp),
				}),
			}),
		})
	end

	self.element = Roact.mount(self.root, CoreGui, "AvatarEditorPrompts")

	self.serviceConnections = ConnectAvatarEditorServiceEvents(self.store)

	return self
end

return AvatarEditorPrompts.new()
