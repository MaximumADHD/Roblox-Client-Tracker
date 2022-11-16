--!nonstrict
local SocialTestHelpers = script:FindFirstAncestor("SocialTestHelpers")
local dependencies = require(SocialTestHelpers.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local Rodux = dependencies.Rodux
local UIBlox = dependencies.UIBlox
local LocalizationProvider = dependencies.LocalizationProvider
local Mock = dependencies.Mock

local mockLocalization = Mock.MagicMock.new({ name = "Localization" })
mockLocalization.Format = function(_, key, _)
	return key
end

local EMPTY_STORE = Rodux.Store.new(function()
	return {}
end, {}, { Rodux.thunkMiddleware })

-- TODO: replace when SOCCONN-1516 is in social libraries
local createTreeWithProviders = function(element, config)
	local tree = Roact.createFragment({
		storeProvider = Roact.createElement(RoactRodux.StoreProvider, {
			store = config.store or EMPTY_STORE,
		}, {
			styleProvider = Roact.createElement(UIBlox.App.Style.AppStyleProvider, {
				style = {
					themeName = "Dark",
					fontName = "Gotham",
				},
			}, {
				localizationProvider = Roact.createElement(LocalizationProvider, {
					localization = mockLocalization,
				}, {
					myElement = Roact.createElement(element, config.props),
				}),
			}),
		}),
	})

	return tree
end

return createTreeWithProviders
