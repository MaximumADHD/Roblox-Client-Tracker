local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach
local beforeAll = JestGlobals.beforeAll
local afterAll = JestGlobals.afterAll
local it = JestGlobals.it
local jest = JestGlobals.jest

local ReactTestingLibrary
local ReactTestingUtils
local renderTestHook

local ThemeContext
local React
local e
local StudioThemeContextProvider
local useThemeName
local SharedPluginConstants
local FFlagStudioFoundationThemeContext = require(Main.SharedFlags.getFFlagStudioFoundationThemeContext)()

if not FFlagStudioFoundationThemeContext then
	describe("useThemeName", function()
		it.skip("old implementation", function() end)
	end)
	return
end

function mockModules(mocksFactory: (() -> ())?)
	if mocksFactory then
		mocksFactory()
	end
	jest.resetModules()

	SharedPluginConstants = require(Packages.SharedPluginConstants)
	ReactTestingLibrary = require(Packages.Dev.ReactTestingLibrary)
	ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
	renderTestHook = ReactTestingUtils.renderTestHook
	React = require(Packages.React)
	e = React.createElement
	StudioThemeContextProvider = require(Main.Contexts.StudioThemeContextProvider)
	ThemeContext = require(Main.Contexts.ThemeContext)
	useThemeName = require(script.Parent.useThemeName)
end

describe("useThemeName", function()
	beforeEach(function()
		jest.clearAllMocks()
	end)

	beforeAll(function()
		_G.RTL_SKIP_AUTO_CLEANUP = "true"
	end)

	afterAll(function()
		_G.RTL_SKIP_AUTO_CLEANUP = nil
	end)

	describe("with StudioThemeContextProvider", function()
		it("should return the default theme when settings are not available", function()
			-- settings() is fine on FTF, so let's mock the error
			mockModules(function()
				jest.mock(Main.Util.getStudioSettings, function()
					return function()
						return nil
					end
				end)
			end)

			local value = renderTestHook(useThemeName, {
				wrapper = function(props)
					return e(StudioThemeContextProvider, nil, props)
				end,
			})
			expect(value()).toEqual(SharedPluginConstants.DEFAULT_STUDIO_THEME_NAME)
		end)

		it("should return the settings theme when available", function()
			mockModules(function()
				jest.mock(Main.Util.getStudioSettings, function()
					return function()
						return {
							Theme = {
								Name = "Light",
							},
						}
					end
				end)
			end)

			local value = renderTestHook(useThemeName, {
				wrapper = function(props)
					return e(StudioThemeContextProvider, nil, props)
				end,
			})
			expect(value()).toEqual("Light")
		end)

		it("should update the settings theme when settings changes", function()
			local changeTheme
			mockModules(function()
				jest.mock(Main.Util.getStudioSettings, function()
					local theme = "Light"
					return function()
						return {
							Theme = {
								Name = theme,
							},
							ThemeChanged = {
								Connect = function(_, callback)
									changeTheme = function()
										theme = "Dark"
										callback()
									end
									return {
										Disconnect = function() end,
									}
								end,
							},
						}
					end
				end)
			end)

			local value = renderTestHook(useThemeName, {
				wrapper = function(props)
					return e(StudioThemeContextProvider, nil, props)
				end,
			})
			expect(value()).toEqual("Light")
			ReactTestingLibrary.act(function()
				changeTheme()
			end)
			expect(value()).toEqual("Dark")
		end)
	end)

	describe("with ThemeContextProvider", function()
		it("should return set theme", function()
			mockModules()
			local value = renderTestHook(useThemeName, {
				wrapper = function(props)
					return e(ThemeContext.Provider, { value = "Dark" }, props)
				end,
			})
			expect(value()).toEqual("Dark")
		end)
	end)
end)
