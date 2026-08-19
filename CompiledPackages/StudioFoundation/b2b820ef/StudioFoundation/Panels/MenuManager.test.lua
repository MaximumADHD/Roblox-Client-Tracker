local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach

local MenuManager = require(Main.Panels.MenuManager)
local StudioUri = require(Main.Util.StudioUri)

describe("MenuManager", function()
	local mockPanels
	local mockPlugin
	local createdWidgets
	local bindToCloseCallback

	beforeEach(function()
		bindToCloseCallback = nil
		createdWidgets = {}
		mockPanels = {
			SetAttachmentAsync = jest.fn(),
			SetSizeAsync = jest.fn(),
		}
		mockPlugin = (
			{
				GetPluginComponent = jest.fn(function(self, name): any
					if name == "Panels" then
						return mockPanels
					end
					return nil
				end),
				CreateQWidgetPluginGui = jest.fn(function(self, id, options)
					local widget = {
						Id = id,
						Enabled = options.InitialEnabled,
						Destroy = jest.fn(),
						BindToClose = jest.fn(function(_, callback)
							bindToCloseCallback = callback
						end),
						IsA = function()
							return true
						end,
					}
					table.insert(createdWidgets, widget)
					return widget
				end),
				GetUri = jest.fn(function()
					return {
						DataModel = "Standalone",
						PluginType = "Mock",
						PluginId = "TestPlugin",
					}
				end),
			} :: unknown
		) :: Plugin
	end)

	it("should open a menu at a specific depth", function()
		local manager = MenuManager.new(mockPlugin)
		local onClose = jest.fn()
		local handle = manager:openAtAsync(1, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "Target"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		}, onClose)

		expect(mockPlugin.CreateQWidgetPluginGui).toHaveBeenCalledTimes(1)
		expect(mockPanels.SetAttachmentAsync).toHaveBeenCalledTimes(1)
		expect(mockPanels.SetSizeAsync).toHaveBeenCalledWith(mockPanels, expect.any("table"), Vector2.new(0, 0))
		expect(handle.container.Enabled).toBe(true)
	end)

	it("should set size on the panel", function()
		local manager = MenuManager.new(mockPlugin)
		local handle = manager:openAtAsync(1, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "Target"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		})

		handle.setSizeAsync(Vector2.new(200, 300))
		expect(mockPanels.SetSizeAsync).toHaveBeenCalledWith(mockPanels, expect.any("table"), Vector2.new(200, 300))
	end)

	it("should close menus from a certain depth", function()
		local manager = MenuManager.new(mockPlugin)
		local onClose1 = jest.fn()
		local onClose2 = jest.fn()
		manager:openAtAsync(1, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "A"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		}, onClose1)
		manager:openAtAsync(2, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "B"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		}, onClose2)

		expect(#createdWidgets).toBe(2)
		expect(createdWidgets[1].Enabled).toBe(true)
		expect(createdWidgets[2].Enabled).toBe(true)

		manager:_closeMenu(manager._menus[2])

		expect(createdWidgets[1].Enabled).toBe(true)
		expect(createdWidgets[2].Enabled).toBe(false)
		expect(onClose1).toHaveBeenCalledTimes(0)
		expect(onClose2).toHaveBeenCalledTimes(1)

		manager:_closeMenu(manager._menus[1])
		expect(createdWidgets[1].Enabled).toBe(false)
		expect(onClose1).toHaveBeenCalledTimes(1)
	end)

	it("should destroy all panels", function()
		local manager = MenuManager.new(mockPlugin)
		manager:openAtAsync(1, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "A"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		})
		manager:openAtAsync(2, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "B"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		})

		manager:destroy()

		expect(createdWidgets[1].Destroy).toHaveBeenCalledTimes(1)
		expect(createdWidgets[2].Destroy).toHaveBeenCalledTimes(1)
	end)

	it("should call onClose when panel is closed externally", function()
		local manager = MenuManager.new(mockPlugin)
		local onClose = jest.fn()
		manager:openAtAsync(1, {
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "A"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 5),
		}, onClose)

		expect(bindToCloseCallback).toBeDefined()
		if bindToCloseCallback then
			bindToCloseCallback()
		end

		expect(onClose).toHaveBeenCalledTimes(1)
		expect(createdWidgets[1].Enabled).toBe(false)
	end)
end)
