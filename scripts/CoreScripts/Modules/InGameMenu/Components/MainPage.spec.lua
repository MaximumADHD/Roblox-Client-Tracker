--!nonstrict
return function()
	local CorePackages = game:GetService("CorePackages")

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	local InGameMenu = script.Parent.Parent
	local reducer = require(InGameMenu.reducer)
	local UIBlox = InGameMenuDependencies.UIBlox
	local Players = game:GetService("Players")
	local SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	local SetInputType = require(InGameMenu.Actions.SetInputType)
	local SetMenuOpen = require(InGameMenu.Actions.SetMenuOpen)
	local Pages = require(script.Parent.Pages)
	
	local Localization = require(InGameMenu.Localization.Localization)
	local Rodux = InGameMenuDependencies.Rodux
	local RoactRodux = InGameMenuDependencies.RoactRodux
	local Roact = InGameMenuDependencies.Roact
	local LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	local Constants = require(InGameMenu.Resources.Constants)
	local FocusHandlerContextProvider = require(script.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	local MainPage = require(script.Parent.MainPage)
	
	local act = Roact.act

	local GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)
	local GuiService = game:GetService("GuiService")

	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	local RhodiumHelpers = require(CorePackages.Workspace.Packages.RhodiumHelpers)
	local ParticipantAdded = require(RobloxGui.Modules.VoiceChat.Actions.ParticipantAdded)

	local function getMountableTreeAndStore(props)
		local store = Rodux.Store.new(reducer)

		return Roact.createElement(RoactRodux.StoreProvider, {
			store = store,
		}, {
			ThemeProvider = Roact.createElement(UIBlox.Core.Style.Provider, {}, {
				LocalizationProvider = Roact.createElement(LocalizationProvider, {
					localization = Localization.new("en-us"),
				}, {
					FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(
						FocusHandlerContextProvider,
						{},
						{
							MainPage = Roact.createElement(MainPage, props),
						}
					) or nil,
					MainPage = not GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(MainPage, props) or nil,
				}),
			}),
		}),
			store
	end

	it("should mount and unmount with minimal props", function()
		local element = getMountableTreeAndStore()

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should render basic MainPage components", function()
		local element, store = getMountableTreeAndStore()
		expect(Players.LocalPlayer.PlayerGui).never.toBeNil()

		local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
		act(function()
			store:dispatch(SetCurrentPage(Constants.MainPagePageKey))
			store:flush()
		end)

		local renderedMainPage = Players.LocalPlayer.PlayerGui:GetChildren()[1]
		expect(renderedMainPage).never.toBeNil()

		-- Check all the NavigationButtons are rendered
		local renderedPageNavigation = renderedMainPage:FindFirstChild("PageNavigation", true)
		expect(renderedPageNavigation).never.toBeNil()

		local expectedPageCount = 0
		local renderedPageCount = 0

		for _, page in ipairs(Pages.pagesByIndex) do
			if page.parentPage == Constants.MainPagePageKey then
				expect(renderedPageNavigation:FindFirstChild("Page" .. page.key))
				expectedPageCount += 1
			end
		end

		for _, inst in pairs(renderedPageNavigation:GetChildren()) do
			-- filter out non-navigationButton children (some children are layout related)
			if inst:FindFirstChild("ContentContainer") then
				renderedPageCount += 1
			end
		end
		expect(renderedPageCount).toBe(expectedPageCount)

		-- Check the BottomButtons are rendered
		local renderedBottomButtons = renderedMainPage:FindFirstChild("BottomButtons", true)
		expect(renderedBottomButtons).never.toBeNil()

		Roact.unmount(instance)
	end)

	describe("Gamepad", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element, store = getMountableTreeAndStore()
			expect(Players.LocalPlayer.PlayerGui).never.toBeNil()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetMenuOpen(true))
				store:dispatch(SetCurrentPage(Constants.MainPagePageKey))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("Should gain focus only when gamepad was used and FFlagInGameMenuController is enabled", function()
			local element, store = getMountableTreeAndStore({ open = true })
			expect(Players.LocalPlayer.PlayerGui).never.toBeNil()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetCurrentPage(Constants.MainPagePageKey))
				store:dispatch(SetMenuOpen(true))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).never.toBeNil()

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)

	describe("Voice chat mute button", function()
		it("should render mute button when voice chat is enabled", function()
			local element, store = getMountableTreeAndStore({ voiceEnabled = true })

			-- ensure initial player voice state is available for local player
			local localUserId = tostring(Players.LocalPlayer.UserId)
			act(function()
				store:dispatch(ParticipantAdded(localUserId))
			end)

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			expect(Players.LocalPlayer.PlayerGui).never.toBeNil()

			local button = RhodiumHelpers.findFirstInstance(Players.LocalPlayer.PlayerGui, {
				Name = "VoiceChatMuteButton",
			})
			expect(button).never.toBeNil()

			Roact.unmount(instance)
		end)

		it("should render mute button when voice chat is not enabled", function()
			local element, store = getMountableTreeAndStore({ voiceEnabled = false })

			-- ensure initial player voice state is available for local player
			local localUserId = tostring(Players.LocalPlayer.UserId)
			store:dispatch(ParticipantAdded(localUserId))

			expect(Players.LocalPlayer.PlayerGui).never.toBeNil()
			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)

			local button = RhodiumHelpers.findFirstInstance(Players.LocalPlayer.PlayerGui, {
				Name = "VoiceChatMuteButton",
			})
			expect(button).toBeNil()

			Roact.unmount(instance)
		end)
	end)
end
