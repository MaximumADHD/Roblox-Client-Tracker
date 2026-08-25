--!nonstrict
local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Packages.Roact)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Rodux = require(CorePackages.Packages.Rodux)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local describe = JestGlobals.describe
local it = JestGlobals.it

local TnsModule = script.Parent.Parent.Parent
local Dependencies = require(TnsModule.Dependencies)
local Localization = Dependencies.Localization
local LocalizationProvider = require(Dependencies.LocalizationProvider)
local Constants = require(TnsModule.Resources.Constants)
local Reducers = require(TnsModule.Reducers)
local OpenReportSentDialog = require(TnsModule.Actions.OpenReportSentDialog)

local ScreenshotDialog = require(script.Parent.ScreenshotDialog)

local fn = JestGlobals.jest.fn

local function getStore()
	local store = Rodux.Store.new(Reducers)
	return store
end

describe("mount & unmount", function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = getStore(),
		}, {
			StyleProvider = UnitTestHelpers.createStyleProvider({
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					ScreenshotDialog = Roact.createElement(ScreenshotDialog, {
						screenshot = "",
						reportAction = fn(),
						dismissAction = fn(),
					}),
				}),
			}),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end)
