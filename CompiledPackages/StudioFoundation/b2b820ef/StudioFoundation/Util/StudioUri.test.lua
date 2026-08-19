local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect

local StudioUri = require(script.Parent.StudioUri)

type FIXME<T = any> = T

describe("StudioUri", function()
	it("should wrap URIs in a metatable and freeze them", function()
		-- Unfrozen, non-metatable URI
		local uri1 = StudioUri.wrap({
			DataModel = "Standalone",
		})
		expect(getmetatable(uri1 :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
		expect(table.isfrozen(uri1)).toBe(true)

		-- Frozen, non-metatable URI
		local uri2 = StudioUri.wrap(table.freeze({
			DataModel = "Standalone",
		}))
		expect(getmetatable(uri2 :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
		expect(table.isfrozen(uri2)).toBe(true)

		-- Unfrozen, metatable URI
		local uri3 = StudioUri.wrap(setmetatable({
			DataModel = "Standalone",
		}, StudioUri.RESTRICTED_Mt) :: FIXME)
		expect(getmetatable(uri3 :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
		expect(table.isfrozen(uri3)).toBe(true)

		-- Frozen, metatable URI
		local uri4 = StudioUri.wrap(table.freeze(setmetatable({
			DataModel = "Standalone",
		}, StudioUri.RESTRICTED_Mt)) :: FIXME)
		expect(getmetatable(uri4 :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
		expect(table.isfrozen(uri4)).toBe(true)
	end)

	it("should check if a URI is valid", function()
		expect(StudioUri.isValid("A string")).toBe(false)

		expect(StudioUri.isNull({
			DataModel = "Null",
		})).toBe(true)
	end)

	it("should output a string for a URI", function()
		local result = "DataModel:Standalone, PluginType:Asset, PluginId:12345678, Category:Actions, ItemId:TestAction"

		expect(StudioUri.toString({
			DataModel = "Standalone",
			PluginType = "Asset",
			PluginId = "12345678",
			Category = "Actions",
			ItemId = "TestAction",
		})).toEqual(result)
	end)

	it("should check if a URI is null", function()
		expect(StudioUri.isNull({
			DataModel = "Standalone",
		})).toBe(false)

		expect(StudioUri.isNull({
			DataModel = "Null",
		})).toBe(true)
	end)

	it("should create an Action URI", function()
		local actionUri = StudioUri.fromAction("BuilderTools", "Rotate")
		expect(actionUri).toEqual({
			DataModel = "Standalone",
			PluginId = "BuilderTools",
			Category = "Actions",
			ItemId = "Rotate",
		})
		expect(getmetatable(actionUri :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
	end)

	it("should create a Setting URI", function()
		local settingUri = StudioUri.fromSetting("BuilderTools", "Rotate")
		expect(settingUri).toEqual({
			DataModel = "Standalone",
			PluginId = "BuilderTools",
			Category = "Settings",
			ItemId = "Rotate",
		})
		expect(getmetatable(settingUri :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
	end)

	it("should create a Widget URI", function()
		local widgetUri = StudioUri.fromWidget("Ribbon", "Main")
		expect(widgetUri).toEqual({
			DataModel = "Standalone",
			PluginId = "Ribbon",
			Category = "Widgets",
			ItemId = "Main",
		})
		expect(getmetatable(widgetUri :: FIXME)).toBe(StudioUri.RESTRICTED_Mt)
	end)

	it("should check for equality of URIs via StudioUri.equals", function()
		local uri1 = StudioUri.fromAction("BuilderTools", "Rotate")
		local uri2 = StudioUri.fromAction("BuilderTools", "Rotate")
		local uri3 = StudioUri.fromAction("BuilderTools", "Move")

		expect(StudioUri.equals(uri1, uri1)).toBe(true)
		expect(StudioUri.equals(uri1, uri2)).toBe(true)
		expect(StudioUri.equals(uri1, uri3)).toBe(false)
	end)

	it("should check for equality of URIs via metamethod", function()
		local uri1 = StudioUri.fromAction("BuilderTools", "Rotate")
		local uri2 = StudioUri.fromAction("BuilderTools", "Rotate")
		local uri3 = StudioUri.fromAction("BuilderTools", "Move")

		expect(uri1).toEqual(uri1)
		expect(uri1).toEqual(uri2)
		expect(uri1).never.toEqual(uri3)
	end)
end)
