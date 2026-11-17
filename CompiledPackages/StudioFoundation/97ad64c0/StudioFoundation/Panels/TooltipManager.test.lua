local Main = script:FindFirstAncestor("StudioFoundation")
local Packages = Main.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local jest = JestGlobals.jest
local describe = JestGlobals.describe
local it = JestGlobals.it
local expect = JestGlobals.expect
local beforeEach = JestGlobals.beforeEach

local TooltipManager = require(Main.Panels.TooltipManager)
local StudioUri = require(Main.Util.StudioUri)

describe("TooltipManager", function()
	local mockPanels
	local mockPlugin
	local createdPanel: any

	beforeEach(function()
		createdPanel = nil
		mockPanels = {
			SetAttachmentAsync = jest.fn(),
			SetSizeAsync = jest.fn(),
			ShowIfAttachedAsync = jest.fn(function(self)
				createdPanel.Enabled = true
			end),
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
					createdPanel = {
						Id = id,
						Enabled = options.InitialEnabled,
						Destroy = jest.fn(),
						IsA = function()
							return true
						end,
					}
					return createdPanel
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

	it("should open, set size, and close a tooltip", function()
		local manager = TooltipManager.new(mockPlugin)
		local handle = manager:openAsync({
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "Target"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 0),
		})

		expect(mockPanels.SetAttachmentAsync).toHaveBeenCalledTimes(1)
		expect(mockPanels.ShowIfAttachedAsync).toHaveBeenCalledTimes(1)
		expect(createdPanel).toBeDefined()
		expect(createdPanel.Enabled).toBe(true)

		handle.setSizeAsync(Vector2.new(123, 456))
		expect(mockPanels.SetSizeAsync).toHaveBeenLastCalledWith(mockPanels, expect.any("table"), Vector2.new(123, 456))

		handle.close()
		expect(createdPanel.Enabled).toBe(false)
	end)

	it("should ignore stale close after a newer open (token guarding)", function()
		local manager = TooltipManager.new(mockPlugin)
		local h1 = manager:openAsync({
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "T1"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 0),
		})
		expect(createdPanel.Enabled).toBe(true) -- Should not be disabled by stale close
		local h2 = manager:openAsync({
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "T2"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 0),
		})

		h1.close()
		expect(createdPanel.Enabled).toBe(true) -- Should not be disabled by stale close

		h2.close()
		expect(createdPanel.Enabled).toBe(false)
	end)

	it("should closeAll disables the tooltip immediately", function()
		local manager = TooltipManager.new(mockPlugin)
		manager:openAsync({
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "T"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 0),
		})
		manager:closeAll()
		expect(createdPanel.Enabled).toBe(false)
	end)

	it("should destroy the panel", function()
		local manager = TooltipManager.new(mockPlugin)
		manager:openAsync({
			targetWidgetUri = StudioUri.fromWidget("TestPlugin", "T"),
			targetAnchorPoint = Vector2.new(0, 1),
			subjectAnchorPoint = Vector2.new(0, 0),
			offset = Vector2.new(0, 0),
		})
		manager:destroy()
		expect(createdPanel.Destroy).toHaveBeenCalledTimes(1)
		expect(createdPanel.Enabled).toBe(false)
	end)
end)
