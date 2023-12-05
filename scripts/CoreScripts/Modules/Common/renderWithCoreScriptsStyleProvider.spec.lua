--!nonstrict
local CoresGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Workspace.Packages.React)
local RoactRodux = require(CorePackages.Workspace.Packages.RoactRodux)
local ReactRoblox = require(CorePackages.Workspace.Packages.ReactRoblox)
local UnitTestHelpers = require(CorePackages.Workspace.Packages.UnitTestHelpers)
local mockStore = UnitTestHelpers.mockStore

local renderWithCoreScriptsStyleProvider = require(script.Parent.renderWithCoreScriptsStyleProvider)

local function runTest(config)
	local provider = renderWithCoreScriptsStyleProvider({
		Element = React.createElement("Frame"),
	}, {
		withUiModeSupport = config.withUiModeSupport,
		withDarkTheme = config.withDarkTheme,
	})

	local element
	if config.withStoreProvider then
		element = React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(),
		}, {
			StyleProvider = provider,
		})
	else
		element = provider
	end

	local container = Instance.new("Folder")
	local root = ReactRoblox.createRoot(container)

	ReactRoblox.act(function()
		root:render(element)
	end)

	root:unmount()
end

return function()
	describe("renderWithCoreScriptsStyleProvider", function()
		it("should render correctly with default props", function()
			runTest({})
		end)

		it("should render dark themed styleProvider correctly", function()
			runTest({
				withDarkTheme = true,
			})
		end)

		it("should render light themed styleProvider correctly", function()
			runTest({
				withDarkTheme = false,
			})
		end)

		it("should render styleProvider correctly withUiModeSupport is true", function()
			runTest({
				withUiModeSupport = true,
				withStoreProvider = true,
			})
		end)
	end)
end
