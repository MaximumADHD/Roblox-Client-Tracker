--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local Modules
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local jest = JestGlobals.jest
local ReactTestingLibrary = require(CorePackages.Workspace.Packages.ReactTestingLibrary)
local render = ReactTestingLibrary.render
local fireEvent = ReactTestingLibrary.fireEvent

local act

local InGameMenuDependencies
local Roact
local Rodux
local RoactRodux
local UIBlox
local Cryo

local InGameMenu
local Constants
local SetCurrentPage
local SetInputType
local Localization
local LocalizationProvider
local reducer

local GetFFlagIGMGamepadSelectionHistory

local renderWithCoreScriptsStyleProvider
local FocusHandlerContextProvider
local ReportList

local function resetModules()
	jest.resetModules()
	Modules = CoreGui.RobloxGui.Modules
	act = require(CorePackages.Roact).act -- re-import this first or things will break
	InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
	UIBlox = InGameMenuDependencies.UIBlox
	UIBlox.init(require(CorePackages.Workspace.Packages.RobloxAppUIBloxConfig))
	Roact = InGameMenuDependencies.Roact
	Rodux = InGameMenuDependencies.Rodux
	RoactRodux = InGameMenuDependencies.RoactRodux
	Cryo = InGameMenuDependencies.Cryo

	InGameMenu = script.Parent.Parent.Parent
	Constants = require(InGameMenu.Resources.Constants)
	SetCurrentPage = require(InGameMenu.Actions.SetCurrentPage)
	SetInputType = require(InGameMenu.Actions.SetInputType)
	Localization = require(InGameMenu.Localization.Localization)
	LocalizationProvider = require(InGameMenu.Localization.LocalizationProvider)
	reducer = require(InGameMenu.reducer)

	renderWithCoreScriptsStyleProvider = require(Modules.Common.renderWithCoreScriptsStyleProvider)
	FocusHandlerContextProvider = require(script.Parent.Parent.Connection.FocusHandlerUtils.FocusHandlerContextProvider)
	ReportList = require(script.Parent.ReportList)

	GetFFlagIGMGamepadSelectionHistory = require(InGameMenu.Flags.GetFFlagIGMGamepadSelectionHistory)
end

local function getMountableTreeAndStore(props)
	local store = Rodux.Store.new(reducer, {
		currentZone = 1,
	})

	local testPlayers = {
			{
				UserId = 2231221,
				Name = "TheGamer101"
			},
			{
				UserId = 1,
				Name = "Roblox",
			},
			{
				UserId = 2,
				Name = "Jonah",
			},
			{
				UserId = 3,
				Name = "Simeon",
			},
			{
				UserId = 4,
				Name = "Elias",
			}
		}

	local reportList = Roact.createElement(ReportList, Cryo.Dictionary.join(props or {}, {
		placeName = "Crossroads",
		players = testPlayers
	}))

	return Roact.createElement(RoactRodux.StoreProvider, {
		store = store,
	}, {
		ThemeProvider = renderWithCoreScriptsStyleProvider({
			LocalizationProvider = Roact.createElement(LocalizationProvider, {
				localization = Localization.new("en-us"),
			}, {
				FocusHandlerContextProvider = GetFFlagIGMGamepadSelectionHistory() and Roact.createElement(FocusHandlerContextProvider, {}, {
					ReportList = reportList,
				}) or nil,
				ReportList = not GetFFlagIGMGamepadSelectionHistory() and reportList or nil,
			}),
		}),
	}),
		store
end

describe("In-Game Menu Report List", function()
	beforeEach(function()
		resetModules()
	end)

	describe("Mount/unmount", function()
		it("should create with correct children, and destroy without errors", function()
			local element = getMountableTreeAndStore()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			expect(#Players.LocalPlayer.PlayerGui:GetChildren()).toEqual(1)

			-- check for a few things we expect to find at various places in the tree
			expect(Players.LocalPlayer.PlayerGui:FindFirstChild("GameIcon", true)).toBeDefined()
			expect(Players.LocalPlayer.PlayerGui:FindFirstChild("PlayerIcon", true)).toBeDefined()
			expect(Players.LocalPlayer.PlayerGui:FindFirstChild("ContentsScrollingFrame", true)).toBeDefined()


			local count = 0
			for _, inst in pairs(Players.LocalPlayer.PlayerGui:FindFirstChild("ContentsScrollingFrame", true)[1]:GetChildren()) do
				if inst.ClassName == "TextButton" then
					count += 1
				end
			end

			-- 5 players + 1 game
			expect(count).toEqual(6)

			Roact.unmount(instance)
		end)
	end)

	describe("Gamepad support", function()
		it("Should not gain focus when gamepad is not the last used device", function()
			local element, store = getMountableTreeAndStore()
			expect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.MouseAndKeyboard))
				store:dispatch(SetCurrentPage("Report"))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).toBeNil()

			Roact.unmount(instance)
		end)

		it("Should gain focus only when gamepad was used", function()
			local element, store = getMountableTreeAndStore()
			expect(Players.LocalPlayer.PlayerGui).toBeDefined()

			local instance = Roact.mount(element, Players.LocalPlayer.PlayerGui)
			act(function()
				store:dispatch(SetInputType(Constants.InputType.Gamepad))
				store:dispatch(SetCurrentPage("Report"))
				store:flush()
			end)

			expect(GuiService.SelectedCoreObject).toBeDefined()

			Roact.unmount(instance)
			GuiService.SelectedCoreObject = nil
		end)
	end)

	describe("Voice Abuse Report", function()
		it("Should start report user flow when reporting a user", function()
			local openReportDialogForPlayerMock = jest.fn()
			local openReportDialogForPlaceMock = jest.fn()
			jest.mock(RobloxGui.Modules.TrustAndSafety, function()
				return {
					openReportDialogForPlayer = openReportDialogForPlayerMock,
					openReportDialogForPlace = openReportDialogForPlaceMock,
				}
			end)

			jest.mock(InGameMenu.Components.BarOnTopScrollingFrame, function()
				return function(props)
					props.CanvasSize = nil
					return Roact.createElement("Frame", props)
				end
			end)

			resetModules()
			local element = getMountableTreeAndStore()
				local result = render(element)

			local playerButton = result.getByText("TheGamer101").Parent
			expect(playerButton).toBeDefined()
			expect(#openReportDialogForPlayerMock.mock.calls).toEqual(0)
			fireEvent.click(playerButton)
			expect(#openReportDialogForPlayerMock.mock.calls).toEqual(1)

			-- Since there isn't yet many usage examples of these new testing tools
			-- I'm using test-id here to add to the variety, for whoever reads this
			-- later while in search of testing examples.
			local experienceButton = result.getByTestId("experienceLabel")
			expect(experienceButton).toBeDefined()
			expect(#openReportDialogForPlaceMock.mock.calls).toEqual(0)
			fireEvent.click(experienceButton)
			expect(#openReportDialogForPlaceMock.mock.calls).toEqual(1)
		end)
	end)
end)
