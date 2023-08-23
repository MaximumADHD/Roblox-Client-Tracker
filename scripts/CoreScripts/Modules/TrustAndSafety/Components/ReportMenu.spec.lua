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
	local OpenReportMenu = require(TnsModule.Actions.OpenReportMenu)


	local ReportMenu = require(script.Parent.ReportMenu)

	local function getStore()
		local store = Rodux.Store.new(Reducers)
		store:dispatch(OpenReportMenu())
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
						ReportMenu = Roact.createElement(ReportMenu),
					}),
				}),
			})
			
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end
