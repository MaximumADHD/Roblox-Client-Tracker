return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local Reducer = require(script.Parent.Parent.Reducer)
	local ContactListSearchBar = require(script.Parent.ContactListSearchBar)
	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

	local mockState = function(currentPage)
		return {
			Navigation = {
				currentPage = currentPage,
			},
		}
	end

	it("should mount and unmount without errors hidden", function()
		local store = Rodux.Store.new(Reducer, mockState(nil), {
			Rodux.thunkMiddleware,
		})

		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					ContactListSearchBar = Roact.createElement(ContactListSearchBar),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local searchBarIconElement = folder:FindFirstChild("SearchImage", true)
		expect(searchBarIconElement).never.toBeNull()

		Roact.unmount(instance)
	end)
end
