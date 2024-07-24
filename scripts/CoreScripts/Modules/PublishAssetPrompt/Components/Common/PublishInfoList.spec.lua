return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Reducer = require(script.Parent.Parent.Parent.Reducer)

	local PublishInfoList = require(script.Parent.PublishInfoList)

	it("should create and destroy without errors", function()
		local store = Rodux.Store.new(Reducer, nil, {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = UnitTestHelpers.createStyleProvider({
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					PublishInfoList = Roact.createElement(PublishInfoList, {
						typeName = "Body",
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
