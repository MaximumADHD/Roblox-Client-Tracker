--!strict
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagEnableStyleProviderCleanUp =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableStyleProviderCleanUp
local GetFFlagIrisUseLocalizationProvider =
	require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagIrisUseLocalizationProvider
local AppDarkTheme = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Themes.DarkTheme
local AppFont = if GetFFlagEnableStyleProviderCleanUp()
	then nil
	else require(CorePackages.Workspace.Packages.Style).Fonts.Gotham
local renderWithCoreScriptsStyleProvider = require(script.Parent.Common.renderWithCoreScriptsStyleProvider)

local React = require(CorePackages.Packages.React)
local Rodux = require(CorePackages.Packages.Rodux)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)
local UIBlox = require(CorePackages.UIBlox)
local CallProtocol = require(CorePackages.Workspace.Packages.CallProtocol)

local Localization, LocalizationProvider
if GetFFlagIrisUseLocalizationProvider() then
	Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
end

local ApolloProvider = require(CorePackages.Packages.ApolloClient).ApolloProvider
local ApolloClient = require(RobloxGui.Modules.ApolloClient)

local initCall = require(script.initCall)
local Reducer = require(script.Reducer)
local ContactListApp = require(script.Components.ContactListApp)
local ContactListContext = require(script.Context)
local ContactListAnalytics = require(script.Analytics)

-- Screen should be beneath the in game menu
local CONTACT_LIST_DISPLAY_ORDER = -1

local ContactList = {}
ContactList.__index = ContactList

function ContactList.new()
	local self = setmetatable({}, ContactList)

	local AnalyticsFactory = ContactListAnalytics.Analytics()

	local defaultContextValues = {
		fireAnalyticsEvent = AnalyticsFactory.fireAnalyticsEvent,
	}

	-- Init call
	initCall(CallProtocol.CallProtocol.default :: CallProtocol.CallProtocolModule)

	local renderLocalizationProvider = function(element)
		if GetFFlagIrisUseLocalizationProvider() then
			return React.createElement(LocalizationProvider, {
				localization = Localization.new(LocalizationService.RobloxLocaleId),
			}, {
				element,
			})
		else
			return element
		end
	end

	-- Mount component
	self.store = Rodux.Store.new(Reducer, nil, {
		Rodux.thunkMiddleware,
	})
	if GetFFlagEnableStyleProviderCleanUp() then
		self.root = React.createElement("ScreenGui", {
			AutoLocalize = false,
			DisplayOrder = CONTACT_LIST_DISPLAY_ORDER,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Content = React.createElement(RoactRodux.StoreProvider, {
				store = self.store,
			}, {
				ThemeProvider = renderWithCoreScriptsStyleProvider({
					ApolloProvider = React.createElement(ApolloProvider, {
						client = ApolloClient,
					}, {
						ContextProvider = Roact.createElement(ContactListContext.Provider, {
							value = defaultContextValues,
						}, {
							ContactListApp = renderLocalizationProvider(React.createElement(ContactListApp)),
						}),
					}),
				}),
			}),
		})
	else
		local appStyle = {
			Theme = AppDarkTheme,
			Font = AppFont,
		}
		self.root = React.createElement("ScreenGui", {
			AutoLocalize = false,
			DisplayOrder = CONTACT_LIST_DISPLAY_ORDER,
			IgnoreGuiInset = true,
			ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		}, {
			Content = React.createElement(RoactRodux.StoreProvider, {
				store = self.store,
			}, {
				ThemeProvider = React.createElement(UIBlox.Style.Provider, {
					style = appStyle,
				}, {
					ApolloProvider = React.createElement(ApolloProvider, {
						client = ApolloClient,
					}, {
						ContextProvider = Roact.createElement(ContactListContext.Provider, {
							value = defaultContextValues,
						}, {
							ContactListApp = renderLocalizationProvider(React.createElement(ContactListApp)),
						}),
					}),
				}),
			}),
		})
	end

	self.element = Roact.mount(self.root, CoreGui, "ContactList")

	return self
end

return ContactList.new()
