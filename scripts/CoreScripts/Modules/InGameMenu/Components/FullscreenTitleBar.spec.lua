--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")
	local CoreGui = game:GetService("CoreGui")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Rodux = InGameMenuDependencies.Rodux
	local UIBlox = InGameMenuDependencies.UIBlox

	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local InGameMenuPolicy = require(InGameMenu.InGameMenuPolicy)
	local Rhodium = require(CorePackages.Rhodium)
	local Element = Rhodium.Element
	local VirtualInput = Rhodium.VirtualInput
	local withInt = require(InGameMenu.TestHelpers.withInt)

	local act = Roact.act

	local DeferredLuaHelpers = require(CorePackages.Workspace.Packages.TestUtils).DeferredLuaHelpers
	local waitForEvents = DeferredLuaHelpers.waitForEvents
	local forceUpdateGuiObject = DeferredLuaHelpers.forceUpdateGuiObject
	local MockUserGameSettings = require(InGameMenu.Mocks.MockUserGameSettings)
	local GetFFlagFullscreenTitleBarInjectGameServices = require(InGameMenu.Flags.GetFFlagFullscreenTitleBarInjectGameServices)

	local TITLE_BAR_OFF_POS = UDim2.new(0, 0, 0, -88)
	local TITLE_BAR_ON_POS = UDim2.fromOffset(0, 0)
	local OUTSIDE_OF_TITLE_BAR_POSITION = Vector2.new(100, 500)
	local OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION = Vector2.new(2, 2)


	local mockPolicyMapper = function(policy)
		return {
			enableEducationalPopup = function()
				return false
			end,
			educationalPopupMaxDisplayCount = function()
				return 0
			end,
		}
	end

	local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)
	local mockUserGameSettings = MockUserGameSettings.new()

	local mockProps = {
		titleText = "Roblox",
		displayOrder = 1,
		isMenuOpen = true,
		isEducationalPopupEnabled = true,
		maxDisplayCount = 1,
		openEducationalPopup = function() end,
		startLeavingGame = function() end,
		userGameSettings = mockUserGameSettings,
	}

	it("should create and destroy without errors", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})

		local handle = Roact.mount(element)
		Roact.unmount(handle)
	end)

	it("should be a child ScreenGui of CoreGui", function()
		local element = Roact.createElement(RoactRodux.StoreProvider, {
			store = Rodux.Store.new(reducer)
		}, {
			PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
				policy = { mockPolicyMapper },
			}, {
				ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
					FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
				}),
			}),
		})

		local handle = Roact.mount(element)
		local instance = CoreGui:FindFirstChild("InGameFullscreenTitleBarScreen")
		expect(instance).toMatchInstance({ ClassName = "ScreenGui" })
		Roact.unmount(handle)
	end)

	if GetFFlagFullscreenTitleBarInjectGameServices() then
		it("should be triggered when mouse moved on top", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = Rodux.Store.new(reducer)
			}, {
				PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
					policy = { mockPolicyMapper },
				}, {
					ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
						FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
					}),
				}),
			})


			local handle = Roact.mount(element)
			act(function()
				mockUserGameSettings.FullscreenChanged:GoFullscreen()
				waitForEvents()
			end)

			local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
			local triggerAreaInstance = triggerArea:waitForRbxInstance()
			expect(triggerAreaInstance).never.toBeNil()
			local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
			expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

			act(function()
				VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
				task.wait()
				forceUpdateGuiObject(barInstance)
			end)

			act(function()
				-- This wait plays the scheduler forward through an animation
				task.wait(2)
			end)

			expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

			Roact.unmount(handle)
		end)

		it("should hide the bar when mouse moved out of the title bar", function()
			local element = Roact.createElement(RoactRodux.StoreProvider, {
				store = Rodux.Store.new(reducer)
			}, {
				PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
					policy = { mockPolicyMapper },
				}, {
					ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
						FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
					}),
				}),
			})


			local handle = Roact.mount(element)
			act(function()
				mockUserGameSettings.FullscreenChanged:GoFullscreen()
				waitForEvents()
			end)

			local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
			local triggerAreaInstance = triggerArea:waitForRbxInstance()
			expect(triggerAreaInstance).never.toBeNil()
			local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
			expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

			act(function()
				VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
				task.wait()
			end)

			act(function()
				-- This wait plays the scheduler forward through an animation
				task.wait(2)
			end)

			expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

			act(function()
				-- Re-move the mouse, so that the MouseEnter event can fire on the title bar frame.
				VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
				task.wait()
				VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TITLE_BAR_POSITION)
				task.wait(1)
			end)

			act(function()
				task.wait(2)
			end)

			expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)
			Roact.unmount(handle)
		end)

		it("should cancel triggering title bar when mouse moved out of the trigger area within the delay", function()
			withInt("FullscreenTitleBarTriggerDelayMillis", 500, function()
				local element = Roact.createElement(RoactRodux.StoreProvider, {
					store = Rodux.Store.new(reducer)
				}, {
					PolicyProvider = Roact.createElement(InGameMenuPolicy.Provider, {
						policy = { mockPolicyMapper },
					}, {
						ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
							FullscreenTitleBar = Roact.createElement(FullscreenTitleBar, mockProps),
						}),
					}),
				})


				local handle = Roact.mount(element)
				act(function()
					mockUserGameSettings.FullscreenChanged:GoFullscreen()
					waitForEvents()
				end)

				local triggerArea = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.TriggerArea")
				local triggerAreaInstance = triggerArea:waitForRbxInstance()
				expect(triggerAreaInstance).never.toBeNil()
				local barInstance = Element.new("game.CoreGui.InGameFullscreenTitleBarScreen.Bar"):waitForRbxInstance()
				expect(barInstance).toMatchInstance({ Position = TITLE_BAR_OFF_POS })

				act(function()
					VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
					task.wait(0.4)
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION)
				end)

				act(function()
					task.wait(1.5) -- wait for any remaining action
				end)

				expect(barInstance.Position).toBe(TITLE_BAR_OFF_POS)

				act(function()
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TITLE_BAR_POSITION)
					task.wait()
					VirtualInput.Mouse.mouseMove(triggerArea:getAnchor())
					task.wait(0.6)
					VirtualInput.Mouse.mouseMove(OUTSIDE_OF_TRIGGER_INSIDE_OF_TITLE_BAR__POSITION)
				end)

				act(function()
					task.wait(1.5) -- wait for any remaining action
				end)

				expect(barInstance.Position).toBe(TITLE_BAR_ON_POS)

				Roact.unmount(handle)
			end)
		end)
	end
end
