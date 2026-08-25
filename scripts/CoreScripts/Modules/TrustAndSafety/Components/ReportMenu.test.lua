--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local createStyleProvider = UnitTestHelpers.createStyleProvider

local TnsModule = script.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)
local Reducers = require(TnsModule.Reducers)
local OpenReportMenu = require(TnsModule.Actions.OpenReportMenu)

local ReportMenu = require(script.Parent.ReportMenu)

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

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
			StyleProvider = createStyleProvider({
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
