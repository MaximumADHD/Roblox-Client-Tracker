--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)
local Constants = require(TnsModule.Resources.Constants)
local Reducers = require(TnsModule.Reducers)
local OpenReportDialog = require(TnsModule.Actions.OpenReportDialog)

local ReportDialog = require(script.Parent.ReportDialog)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

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
			StyleProvider = UnitTestHelpers.createStyleProvider({
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
			StyleProvider = UnitTestHelpers.createStyleProvider({
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
