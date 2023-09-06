--!nonstrict
return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")

	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local VirtualInput = Rhodium.VirtualInput

	local Modules = CoreGui.RobloxGui.Modules
	local act = require(Modules.act)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect
	local jest = JestGlobals.jest

	local GetFIntFullscreenTitleBarTriggerDelayMillis = require(Modules.InGameMenu.Flags.GetFIntFullscreenTitleBarTriggerDelayMillis)

	local SettingsFullScreenTitleBar = require(Modules.Settings.Components.SettingsFullScreenTitleBar)

	local TITLE_BAR_OFF_POS = UDim2.new(0, 0, 0, -88)
	local TITLE_BAR_ON_POS = UDim2.fromOffset(0, 0)
	local OUTSIDE_OF_TITLE_BAR_POSITION = Vector2.new(100, 500)
	local TRIGGER_DELAY = 0.1

	describe("SettingsFullScreenTitleBar", function()
		beforeEach(function(c)
			c.triggerDelay = game:SetFastIntForTesting("FullscreenTitleBarTriggerDelayMillis", TRIGGER_DELAY * 1000)
		end)

		afterEach(function(c)
			game:SetFastIntForTesting("FullscreenTitleBarTriggerDelayMillis", c.triggerDelay)
		end)

		it("should create and destroy without errors", function()
			local tree = SettingsFullScreenTitleBar.mount()
			SettingsFullScreenTitleBar.unmount(tree)
		end)

		it("should be a child ScreenGui of CoreGui", function()
			local tree = SettingsFullScreenTitleBar.mount()

			local instance = CoreGui:FindFirstChild("InGameFullscreenTitleBarScreen")
			expect(instance).never.toBeNil()
			expect(instance.ClassName).toBe("ScreenGui")

			SettingsFullScreenTitleBar.unmount(tree)
		end)

		local function waitForEvents()
			act(function()
				-- execut any action triggered by the mouse move
				task.wait()
			end)
			act(function()
				-- stay on trigger area longer than the trigger delay
				task.wait(TRIGGER_DELAY)
				task.wait()
			end)
			act(function()
				-- This wait plays the scheduler forward through an animation
				task.wait(2)
			end)
		end

		itSKIP("should be triggered/hidden on mouse in/out after delay", function(c)
			local tree = SettingsFullScreenTitleBar.mount({
				_mockFullScreen = true,
			}, game.CoreGui, "SettingsFullScreenTitleBar")

			local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
			local triggerAreaInstance = triggerArea:waitForRbxInstance()
			expect(triggerAreaInstance).never.toBeNil()
			local bar = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar")
			local barInstance = bar:waitForRbxInstance()
			expect(barInstance).never.toBeNil()

			expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

			VirtualInput.Mouse.mouseMove(triggerArea:getCenter())
			waitForEvents()
			expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

			VirtualInput.Mouse.mouseMove(bar:getCenter())
			waitForEvents()
			expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

			VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TITLE_BAR_POSITION)
			waitForEvents()
			expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

			SettingsFullScreenTitleBar.unmount(tree)
		end)

		itSKIP("should trigger the close action on button click", function()
			local clicked = 0
			local mockFn = jest.fn()
			local tree = SettingsFullScreenTitleBar.mount({
				_mockFullScreen = true,
				onClose = mockFn,
			})

			local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
			expect(triggerArea:waitForRbxInstance()).never.toBeNil()
			local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
			expect(barInstance).never.toBeNil()
			local closeButtonInstance = barInstance:FindFirstChild("CloseButton", true)
			expect(closeButtonInstance).never.toBeNil()

			expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

			VirtualInput.Mouse.mouseMove(triggerArea:getCenter())
			waitForEvents()
			expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

			Element.new(closeButtonInstance):click()
			waitForEvents()
			expect(mockFn).toHaveBeenCalledTimes(1)

			SettingsFullScreenTitleBar.unmount(tree)
		end)
	end)
end
