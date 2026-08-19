local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local React = require(Packages.React)

local Framework = require(Packages.Framework)
local provideMockContext = Framework.TestHelpers.provideMockContext
local MockPlugin = Framework.TestHelpers.Instances.MockPlugin
local Plugin = Framework.ContextServices.Plugin

local ReactTestingUtils = require(Packages.Dev.ReactTestingUtils)
local renderTestHook = ReactTestingUtils.renderTestHook

local usePluginSetting = require(script.Parent.usePluginSetting)

describe("usePluginSetting", function()
	it("should return the value from the setting", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({
			[KEY] = true,
		})
		local result = renderTestHook(function()
			local value, _setValue = usePluginSetting(KEY)
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})
		expect(result()).toEqual(true)
	end)

	it("should return nil if the setting is missing", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({})
		local result = renderTestHook(function()
			local value, _setValue = usePluginSetting(KEY)
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})
		expect(result()).toBeNil()
	end)

	it("should save the settings", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({})
		local result = renderTestHook(function()
			local value, setValue = usePluginSetting(KEY)
			React.useEffect(function()
				setValue("Test")
			end, {})
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(result()).toEqual("Test")
		expect(mockPlugin:GetSetting(KEY)).toEqual("Test")
	end)

	it("should use serializers", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({})
		local result = renderTestHook(function()
			local value, setValue = usePluginSetting(KEY, nil, {
				serialize = function(value)
					return value.key
				end,
				deserialize = function(value)
					return { key = value }
				end,
			})
			React.useEffect(function()
				setValue({ key = "Test" })
			end, {})
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(result()).toEqual({ key = "Test" })
		expect(mockPlugin:GetSetting(KEY)).toEqual("Test")
	end)

	--
	it("should correctly deserialize a pre-existing setting on initial load", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({
			[KEY] = "serialized",
		})
		local result = renderTestHook(function()
			local value, _setValue = usePluginSetting(KEY, nil, {
				serialize = function(value)
					return value.key
				end,
				deserialize = function(value)
					return { key = value }
				end,
			})
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(result()).toEqual({ key = "serialized" })
	end)

	it("should not write to settings on initial render when a default value is used", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({})
		local setSettingSpy = jest.spyOn(mockPlugin, "SetSetting")

		renderTestHook(function()
			usePluginSetting(KEY, "default")
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(setSettingSpy).never.toHaveBeenCalled()
	end)

	it("should not write to settings on initial render when an existing value is loaded", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({ [KEY] = "existing" })
		local setSettingSpy = jest.spyOn(mockPlugin, "SetSetting")

		renderTestHook(function()
			usePluginSetting(KEY, "default")
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(setSettingSpy).never.toHaveBeenCalled()
	end)

	it("should handle functional updates when calling the setter", function()
		local mockPlugin = MockPlugin.new()
		local KEY = "PlugSettingKey"
		mockPlugin:MockSettings({ [KEY] = 10 })
		local result = renderTestHook(function()
			local value, setValue = usePluginSetting(KEY, 5)
			React.useEffect(function()
				setValue(function(oldValue)
					return oldValue + 5
				end)
			end, {})
			return value
		end, {
			wrapper = function(props)
				return provideMockContext({
					Plugin.new(mockPlugin),
				}, { Children = props.children })
			end,
		})

		expect(result()).toEqual(15)
		expect(mockPlugin:GetSetting(KEY)).toEqual(15)
	end)
	--

	describe("with default", function()
		it("should return the value from the setting", function()
			local mockPlugin = MockPlugin.new()
			local KEY = "PlugSettingKey"
			mockPlugin:MockSettings({
				[KEY] = true,
			})
			local result = renderTestHook(function()
				local value, _setValue = usePluginSetting(KEY, false)
				return value
			end, {
				wrapper = function(props)
					return provideMockContext({
						Plugin.new(mockPlugin),
					}, { Children = props.children })
				end,
			})
			expect(result()).toEqual(true)
		end);

		(it.each :: any)({
			0 :: unknown,
			true,
			false,
			"value",
		})("should return default if the setting is missing", function(default)
			local mockPlugin = MockPlugin.new()
			local KEY = "PlugSettingKey"
			mockPlugin:MockSettings({})
			local result = renderTestHook(function()
				local value, _setValue = usePluginSetting(KEY, default)
				return value
			end, {
				wrapper = function(props)
					return provideMockContext({
						Plugin.new(mockPlugin),
					}, { Children = props.children })
				end,
			})
			expect(result()).toEqual(default)
		end)

		it("should return setting if it's falsy", function(value)
			local mockPlugin = MockPlugin.new()
			local KEY = "PlugSettingKey"
			mockPlugin:MockSettings({
				[KEY] = false,
			})
			local result = renderTestHook(function()
				local value, _setValue = usePluginSetting(KEY, true)
				return value
			end, {
				wrapper = function(props)
					return provideMockContext({
						Plugin.new(mockPlugin),
					}, { Children = props.children })
				end,
			})
			expect(result()).toEqual(false)
		end)
	end)
end)
