return function()
	local CorePackages = game:GetService("CorePackages")
	local Roact = require(CorePackages.Roact)
	local Rodux = require(CorePackages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local UIBlox = require(CorePackages.UIBlox)
	local Reducer = require(script.Parent.Parent.Reducer)
	local ContactListHeader = require(script.Parent.ContactListHeader)
	local Pages = require(script.Parent.Parent.Enums.Pages)
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
					ContactListHeader = Roact.createElement(ContactListHeader, {
						headerHeight = 48,
						currentPage = Pages.FriendList,
						dismissCallback = function() end,
					}),
				}),
			}),
		})

		local folder = Instance.new("Folder")
		local instance = Roact.mount(element, folder)

		local headerTextElement = folder:FindFirstChild("HeaderText", true)
		expect(headerTextElement).never.toBeNull()

		local dismissButtonElement = folder:FindFirstChild("DismissButton", true)
		expect(dismissButtonElement).never.toBeNull()

		Roact.unmount(instance)
	end)
end
