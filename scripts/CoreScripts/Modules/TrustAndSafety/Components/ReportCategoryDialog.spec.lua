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
	local Reducers = require(TnsModule.Reducers)
	local SetVoiceReportingFlow = require(TnsModule.Actions.SetVoiceReportingFlow)
	local BeginReportFlow = require(TnsModule.Actions.BeginReportFlow)


	local ReportCategoryDialog = require(script.Parent.ReportCategoryDialog)

	local function getStore()
		local store = Rodux.Store.new(Reducers)
		store:dispatch(SetVoiceReportingFlow(true))
		store:dispatch(BeginReportFlow())
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
						ReportCategoryDialog = Roact.createElement(ReportCategoryDialog),
					}),
				}),
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
