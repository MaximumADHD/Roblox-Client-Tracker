--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local Roact = require(CorePackages.Roact)
	local RoactRodux = require(CorePackages.RoactRodux)
	local Rodux = require(CorePackages.Rodux)
	local UIBlox = require(CorePackages.UIBlox)

	local TnsModule = script.Parent.Parent
	local Dependencies = require(TnsModule.Dependencies)
	local Localization = Dependencies.Localization
	local LocalizationProvider = require(Dependencies.LocalizationProvider)
	local Constants = require(TnsModule.Resources.Constants)
	local Reducers = require(TnsModule.Reducers)
	local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)


	local ReportDialog = require(script.Parent.ReportDialog)

	describe("mount & unmount", function()
		it("report player page", function()
			local store = Rodux.Store.new(Reducers)
			store:dispatch(OpenReportDialog(Constants.ReportType.Player, {
				UserId = 123,
				Name = "testName",
				DisplayName = "testDisplay",
			}))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ReportDialog = Roact.createElement(ReportDialog),
					}),
				}),
			})
			
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("report place page", function()
			local store = Rodux.Store.new(Reducers)
			store:dispatch(OpenReportDialog(Constants.ReportType.Place))

			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = store,
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ReportDialog = Roact.createElement(ReportDialog),
					}),
				}),
			})
			
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
