return function()
	local CorePackages = game:GetService("CorePackages")
	local GuiService = game:GetService("GuiService")
	local Players = game:GetService("Players")

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Roact = InGameMenuDependencies.Roact
	local Cryo = InGameMenuDependencies.Cryo
	local FocusHandlerContextProvider = require(script.Parent.FocusHandlerUtils.FocusHandlerContextProvider)
	local FocusHandler = require(script.Parent.FocusHandler)
	
	local act = Roact.act

	local JestGlobals = require(CorePackages.JestGlobals)
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local InGameMenu = script.Parent.Parent.Parent
	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)

	local function localPlayer()
		return Players.LocalPlayer :: Player
	end

	local TestApp = Roact.PureComponent:extend("TestApp")

	function TestApp:init()
		self.button1Ref = Roact.createRef()
	end

	function TestApp:render()
		return Roact.createElement("Frame", {},
			Cryo.Dictionary.join(self.props[Roact.Children] or {}, {
				[self.props.button1Name or "button1"] = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 20),
					Text = "button 1",
					[Roact.Ref] = self.button1Ref,
				}),
				[self.props.button2Name or "button2"] = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 20),
					Text = "button 2",
				}),
				[self.props.button3Name or "button3"] = Roact.createElement("TextButton", {
					Size = UDim2.new(0, 100, 0, 20),
					Text = "button 3",
				}),
				FocusHandler = Roact.createElement(FocusHandler, {
					isFocused = self.props.isFocused,
					shouldForgetPreviousSelection = self.props.shouldForgetPreviousSelection,
					didFocus = function(previousSelection)
						GuiService.SelectedCoreObject = previousSelection or self.button1Ref.current
					end,
					didBlur = self.props.didBlur,
				})
			}
		))
	end

	if GetFFlagIGMGamepadSelectionHistory() then
		describe("FocusHandler", function()
			afterEach(function()
				GuiService.SelectedCoreObject = nil
			end)

			describe("Focus hand-offs", function()
				it("Should capture focus when mounted with isFocused set to true", function()
					local element = Roact.createElement(FocusHandlerContextProvider, {}, {
						Roact.createElement(TestApp, {
							isFocused = true,
						})
					})
					expect(localPlayer().PlayerGui).never.toBeNil()

					expect(GuiService.SelectedCoreObject).toBeNil()
					local instance = Roact.mount(element, localPlayer().PlayerGui)

					expect(tostring(GuiService.SelectedCoreObject)).toBe("button1")

					Roact.unmount(instance)
				end)

				it("Should capture focus when isFocused switches to true", function()
					local element = Roact.createElement(FocusHandlerContextProvider, {}, {
						Roact.createElement(TestApp, {
							isFocused = false,
						})
					})
					expect(localPlayer().PlayerGui).never.toBeNil()

					local instance = Roact.mount(element, localPlayer().PlayerGui)
					expect(GuiService.SelectedCoreObject).toBeNil()
					act(function()
						Roact.update(instance, Roact.createElement(FocusHandlerContextProvider, {}, {
							Roact.createElement(TestApp, {
								isFocused = true,
							})
						}))
					end)

					expect(tostring(GuiService.SelectedCoreObject)).toBe("button1")

					Roact.unmount(instance)
				end)

				it("Components can steal and then restitutefocus from one another", function()
					local outerDidBlurSpy, outerDidBlur = jest.fn()
					local innerDidBlurSpy, innerDidBlur = jest.fn()
					local getTree = function(focusOuter, focusInner)
						return Roact.createElement(FocusHandlerContextProvider, {}, {
							OuterApp = Roact.createElement(TestApp, {
								isFocused = focusOuter,
								button1Name = "outerButton",
								didBlur = outerDidBlur,
							}, {
								InnerApp = Roact.createElement(TestApp, {
									isFocused = focusInner,
									button1Name = "innerButton",
									didBlur = innerDidBlur,
								})
							})
						})
					end
					local element = getTree(true, false)
					expect(localPlayer().PlayerGui).never.toBeNil()

					expect(GuiService.SelectedCoreObject).toBeNil()
					expect(outerDidBlurSpy).never.toHaveBeenCalled()
					local instance = Roact.mount(element, localPlayer().PlayerGui)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("outerButton")

					act(function()
						Roact.update(instance, getTree(true, true))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("innerButton")
					expect(outerDidBlurSpy).toHaveBeenCalledTimes(1)
					expect(innerDidBlurSpy).never.toHaveBeenCalled()

					act(function()
						Roact.update(instance, getTree(true, false))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("outerButton")
					expect(outerDidBlurSpy).toHaveBeenCalledTimes(1)
					expect(innerDidBlurSpy).toHaveBeenCalledTimes(1)

					Roact.unmount(instance)
				end)

				it("Handles focus hand-offs between mutually-exclusive components", function()
					local didBlurSpyA, didBlurA = jest.fn()
					local didBlurSpyB, didBlurB = jest.fn()
					local getTree = function(focusA, focusB)
						return Roact.createElement(FocusHandlerContextProvider, {}, {
							appA = Roact.createElement(TestApp, {
								isFocused = focusA,
								button1Name = "buttonA",
								didBlur = didBlurA
							}),
							appB = Roact.createElement(TestApp, {
								isFocused = focusB,
								button1Name = "buttonB",
								didBlur = didBlurB
							}),
						})
					end
					local element = getTree(true, false)

					expect(localPlayer().PlayerGui).never.toBeNil()

					expect(GuiService.SelectedCoreObject).toBeNil()
					expect(didBlurSpyA).never.toHaveBeenCalled()
					expect(didBlurSpyB).never.toHaveBeenCalled()
					local instance = Roact.mount(element, localPlayer().PlayerGui)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")

					act(function()
						Roact.update(instance, getTree(false, true))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonB")
					expect(didBlurSpyA).toHaveBeenCalledTimes(1)
				end)
			end)

			describe("Remembering previous selections", function()
				it("Should remember the previous selection by default", function()
					local frameRef = Roact.createRef()

					local getTree = function(focusA, focusB)
						return Roact.createElement(FocusHandlerContextProvider, {}, {
							Frame = Roact.createElement("Frame", {
								[Roact.Ref] = frameRef
							}, {
								appA = Roact.createElement(TestApp, {
									isFocused = focusA,
									button1Name = "buttonA",
									button2Name = "buttonToBeRememberedA",
								}),
								appB = Roact.createElement(TestApp, {
									isFocused = focusB,
									button1Name = "buttonB",
									button2Name = "buttonToBeRememberedB",
								}),
							})
						})
					end

					local element = getTree(true, false)

					expect(localPlayer().PlayerGui).never.toBeNil()

					expect(GuiService.SelectedCoreObject).toBeNil()
					local instance = Roact.mount(element, localPlayer().PlayerGui)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")
					-- Select the second button before capturing focus elsewhere
					GuiService.SelectedCoreObject = frameRef.current:FindFirstChild("buttonToBeRememberedA", true)

					act(function()
						Roact.update(instance, getTree(false, true))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonB")
					-- Select the second button before capturing focus elsewhere
					GuiService.SelectedCoreObject = frameRef.current:FindFirstChild("buttonToBeRememberedB", true)

					-- Focusing on the previous element should highlight the previously selected button
					-- (instead of the default, first button)
					act(function()
						Roact.update(instance, getTree(true, false))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonToBeRememberedA")

					-- This applies to every focus handler
					act(function()
						Roact.update(instance, getTree(false, true))
					end)
					expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonToBeRememberedB")
				end)
			end)

			it("Should forget previous selection when specified", function()
				local frameRef = Roact.createRef()

				local getTree = function(options)
					return Roact.createElement(FocusHandlerContextProvider, {}, {
						Frame = Roact.createElement("Frame", {
							[Roact.Ref] = frameRef
						}, {
							appA = Roact.createElement(TestApp, {
								isFocused = options.focusA,
								shouldForgetPreviousSelection = options.shouldForgetA,
								button1Name = "buttonA",
								button2Name = "buttonToBeRememberedA",
							}),
							appB = Roact.createElement(TestApp, {
								isFocused = options.focusB,
								shouldForgetPreviousSelection = options.shouldForgetB,
								button1Name = "buttonB",
								button2Name = "buttonToBeRememberedB",
							}),
						})
					})
				end

				local element = getTree({focusA = true, focusB = false, shouldForgetA = true})

				expect(localPlayer().PlayerGui).never.toBeNil()

				expect(GuiService.SelectedCoreObject).toBeNil()
				local instance = Roact.mount(element, localPlayer().PlayerGui)

				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")
				-- Select the second button before capturing focus elsewhere
				GuiService.SelectedCoreObject = frameRef.current:FindFirstChild("buttonToBeRememberedA", true)

				act(function()
					Roact.update(instance, getTree({focusA = false, focusB = true, shouldForgetA = true}))
				end)
				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonB")

				act(function()
					Roact.update(instance, getTree({focusA = true, focusB = false, shouldForgetA=true}))
				end)
				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")
			end)

			it("Choose to forget right as the element gains focus", function()
				local frameRef = Roact.createRef()

				local getTree = function(options)
					return Roact.createElement(FocusHandlerContextProvider, {}, {
						Frame = Roact.createElement("Frame", {
							[Roact.Ref] = frameRef
						}, {
							appA = Roact.createElement(TestApp, {
								isFocused = options.focusA,
								shouldForgetPreviousSelection = options.shouldForgetA,
								button1Name = "buttonA",
								button2Name = "buttonToBeRememberedA",
							}),
							appB = Roact.createElement(TestApp, {
								isFocused = options.focusB,
								shouldForgetPreviousSelection = options.shouldForgetB,
								button1Name = "buttonB",
								button2Name = "buttonToBeRememberedB",
							}),
						})
					})
				end

				local element = getTree({focusA = true, focusB = false})

				expect(localPlayer().PlayerGui).never.toBeNil()

				expect(GuiService.SelectedCoreObject).toBeNil()
				local instance = Roact.mount(element, localPlayer().PlayerGui)

				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")
				-- Select the second button before capturing focus elsewhere
				GuiService.SelectedCoreObject = frameRef.current:FindFirstChild("buttonToBeRememberedA", true)

				act(function()
					Roact.update(instance, getTree({focusA = false, focusB = true}))
				end)
				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonB")

				act(function()
					Roact.update(instance, getTree({focusA = true, focusB = false, shouldForgetA=true}))
				end)
				expect(tostring(GuiService.SelectedCoreObject)).toBe("buttonA")
			end)
		end)
	end
end
