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
	local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)


	local ReportSentDialog = require(script.Parent.ReportSentDialog)

	local function getStore()
		local store = Rodux.Store.new(Reducers)
		store:dispatch(OpenReportSentDialog(Constants.ReportType.Player, {
			UserId = 123,
			Name = "testName",
			DisplayName = "testDisplay",
		}))
		return store
	end

	describe("mount & unmount", function()
		it("should create and destroy without errors", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = getStore(),
			}, {
				StyleProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					LocalizationProvider = Roact.createElement(LocalizationProvider, {
						localization = Localization.new("en-us"),
					}, {
						ReportSentDialog = Roact.createElement(ReportSentDialog),
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
