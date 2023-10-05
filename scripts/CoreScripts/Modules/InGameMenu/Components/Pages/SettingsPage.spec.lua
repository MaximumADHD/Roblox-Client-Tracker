--!nonstrict
return function()
	local GuiService = game:GetService("GuiService")
	local CorePackages = game:GetService("CorePackages")
	local VRService = game:GetService("VRService")
	local Modules = game:GetService("CoreGui").RobloxGui.Modules

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local act = require(Modules.act)
	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local Cryo = InGameMenuDependencies.Cryo
	local InGameMenu = script.Parent.Parent.Parent
	local Constants = require(InGameMenu.Resources.Constants)
	local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox
	local Players = game:GetService("Players")
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local SetInputType = require(InGameMenu.Actions.SetInputType)


	local Localization = require(InGameMenu.Localization.Localization)
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local BasicPage = require(script.Parent.Parent.GameSettingsPage.BasicPage)

	local Flags = InGameMenu.Flags
	local GetFFlagIGMGamepadSelectionHistory = require(Flags.GetFFlagIGMGamepadSelectionHistory)
	local GetFFlagIGMVRSettingsPolish = require(Flags.GetFFlagIGMVRSettingsPolish)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer)
		local basicPage = Roact.createElement(
			BasicPage,
			Cryo.Dictionary.join({ pageTitle = "Settings" }, props or {})
		)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
						BasicPage = basicPage,
					}) or nil,
					BasicPage = not GetFFlagIGMGamepadSelectionHistory() and basicPage or nil,
				}),
			}),
		}),
			store
	end

	beforeEach(function()
		GuiService.SelectedCoreObject = nil
	end)

	describe("Settings Page", function()
		it("mounts and unmounts with rendered children", function()
			local element = getMountableTreeAndStore()

			local playerGui = Players.LocalPlayer.PlayerGui
			local instance = Roact.mount(element, playerGui)
			expect(#playerGui:GetChildren()).toBe(1)

			-- check for a few things we expect to find at various places in the tree
			local renderedTitle = playerGui:FindFirstChild("PageTitle", true)
			expect(renderedTitle.text).toBe("Settings")
			expect(playerGui:FindFirstChild("CameraModeEntrySelector", true)).never.toBeNil()
			expect(playerGui:FindFirstChild("CameraSensitivityMouseSlider", true)).never.toBeNil()
			expect(playerGui:FindFirstChild("FullScreen", true)).never.toBeNil()
			expect(playerGui:FindFirstChild("GraphicsQualityEntry", true)).never.toBeNil()
			expect(playerGui:FindFirstChild("MovementModeEntrySelector", true)).never.toBeNil()
			expect(playerGui:FindFirstChild("AdvancedSettings", true)).never.toBeNil()

			Roact.unmount(instance)
		end)
	end)

	describe("Settings Page Gamepad support", function()
		it("SelectedCoreObject does not get modified if no gamepad is enabled", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage("GameSettings"))
				store:flush()
			end)

			-- Make sure the page is mounted, or SelectedCoreObject might be nil for the wrong reasons
			local playerGui = Players.LocalPlayer.PlayerGui
			expect(playerGui:FindFirstChild("CameraModeEntrySelector", true)).never.toBeNil()

			expect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("SelectedCoreObject gets modified by FFlagInGameMenuController if a gamepad is enabled", function()
			local element, store = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage("GameSettings"))
				store:flush()
			end)

			-- Make sure the page is mounted, or SelectedCoreObject might be nil for the wrong reasons
			local playerGui = Players.LocalPlayer.PlayerGui
			expect(playerGui:FindFirstChild("CameraModeEntrySelector", true)).never.toBeNil()

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("OpenDropDownButton")

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)

		local propsForVR = {
			vrService = {
				VREnabled = true,
				GetPropertyChangedSignal = function(self, propertyName)
					return VRService:GetPropertyChangedSignal(propertyName)
				end
			}
		}

		it("SelectedCoreObject gets modified by FFlagInGameMenuController if a gamepad is enabled in VR", function()

			local element, store = getMountableTreeAndStore(propsForVR)

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage("GameSettings"))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).never.toBeNil()
			expect(tostring(GuiService.SelectedCoreObject)).toBe("Dot")

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)

	if GetFFlagIGMVRSettingsPolish() then
		describe("Settings Page VR support", function()
			it("Adds new VR Controls section in VR", function()
				local propsForVR = {
					vrService = {
						VREnabled = true,
						GetPropertyChangedSignal = function(self, propertyName)
							return VRService:GetPropertyChangedSignal(propertyName)
						end
					},
					isVRAppBuild = function() return false end
				}

			local element, store = getMountableTreeAndStore(propsForVR)

				local playerGui = Players.LocalPlayer.PlayerGui
				local instance = Roact.mount(element, playerGui)

				act(function()
					store:dispatch(SetMenuOpen(true))
					store:dispatch(SetCurrentPage("GameSettings"))
					store:flush()
				end)

				local VRControlsHeader = playerGui:FindFirstChild("VRControlsHeader", true)
				expect(VRControlsHeader).toMatchInstance({ LayoutOrder = 1 })

				Roact.unmount(instance)
			end)

			it("Does not display Camera section in VR", function()
				local propsForVR = {
					vrService = {
						VREnabled = true,
						GetPropertyChangedSignal = function(self, propertyName)
							return VRService:GetPropertyChangedSignal(propertyName)
						end
					},
					isVRAppBuild = function() return false end
				}

				local _element, store = getMountableTreeAndStore(propsForVR)

				local playerGui = Players.LocalPlayer.PlayerGui
				act(function()
					store:dispatch(SetMenuOpen(true))
					store:dispatch(SetCurrentPage("GameSettings"))
					store:flush()
				end)

				local CameraHeader = playerGui:FindFirstChild("CameraHeader", true)
				expect(CameraHeader).toBeNil()
			end)

		end)
	end
end
