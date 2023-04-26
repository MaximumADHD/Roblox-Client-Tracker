return function()
	local Root = script:FindFirstAncestor("Style")
	local Packages = Root.Parent
	local React = require(Packages.React)
	local RobloxAppEnums = require(Packages.RobloxAppEnums)
	local RoactRodux = require(Packages.Dev.RoactRodux)
	local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
	local mockStore = UnitTestHelpers.mockStore
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local UiModeStyleProvider = require(script.Parent.UiModeStyleProvider)
	local GetFFlagTenFootUiDesignTokens = require(Packages.SharedFlags).GetFFlagTenFootUiDesignTokens
	local Constants = require(script.Parent.Constants)
	local appStyle = {
		themeName = Constants.ThemeName.Dark,
		fontName = Constants.FontName.Gotham,
		deviceType = RobloxAppEnums.DeviceType.Console :: string,
	}

	local function Wrapper(props: any)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(),
		}, props.children)
	end

	describe("UiModeStyleProvider", function()
		if GetFFlagTenFootUiDesignTokens() then
			it("should create and destroy without errors", function()
				local element = React.createElement(Wrapper, nil, {
					UiModeStyleProvider = React.createElement(UiModeStyleProvider, {
						style = appStyle,
					}, {
						Element = React.createElement("Frame"),
					}),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				root:unmount()
			end)
		end
	end)
end
