return function()
	local Root = script:FindFirstAncestor("Style")
	local Packages = Root.Parent
	local Cryo = require(Packages.Cryo)
	local React = require(Packages.React)
	local RobloxAppEnums = require(Packages.RobloxAppEnums)
	local GetFFlagTenFootUiDesignTokens = require(Packages.SharedFlags).GetFFlagTenFootUiDesignTokens
	local RoactRodux = require(Packages.Dev.RoactRodux)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
	local mockStore = UnitTestHelpers.mockStore
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jest = JestGlobals.jest
	local expect = JestGlobals.expect

	local AppStyleProvider = require(script.Parent.Parent.AppStyleProvider)
	local StyleContext = require(Packages.UIBlox).Style.Context
	local Constants = require(script.Parent.Parent.Constants)
	local DesignTokenProvider = require(script.Parent.DesignTokenProvider)
	local DesignTokenContext = require(script.Parent.DesignTokenContext)
	local appStyle = {
		themeName = Constants.ThemeName.Dark,
		fontName = Constants.FontName.Gotham,
	}
	local uiModeInfo = {
		deviceType = RobloxAppEnums.DeviceType.Console,
		uiMode = RobloxAppEnums.UiMode.TenFoot,
	}
	local Tokens = {
		Global = 1,
	}
	local tokenMappers = {}

	local function Wrapper(props: any)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(),
		}, {
			AppStyleProvider = React.createElement(AppStyleProvider, {
				style = appStyle,
				deviceType = RobloxAppEnums.DeviceType.Console,
			}, props.children),
		})
	end

	if GetFFlagTenFootUiDesignTokens() then
		describe("DesignTokenProvider", function()
			local innerTokens: any
			local function Frame(_: any)
				innerTokens = React.useContext(DesignTokenContext)
				return React.createElement("Frame")
			end

			beforeEach(function()
				innerTokens = nil
				tokenMappers.Foo = jest.fn(function()
					return {
						Bar = true,
					}
				end)
			end)

			it("should create and destroy without errors", function()
				local element = React.createElement(Wrapper, nil, {
					DesignTokenProvider = React.createElement(DesignTokenProvider, {
						tokenMappers = tokenMappers,
					}, {
						Element = React.createElement(Frame),
					}),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				root:unmount()
			end)

			it("should aggregate feature mapped tokens under a LuaApps namespace", function()
				local element = React.createElement(Wrapper, nil, {
					DesignTokenProvider = React.createElement(DesignTokenProvider, {
						tokenMappers = tokenMappers,
					}, {
						Element = React.createElement(Frame),
					}),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				expect(innerTokens).toBeDefined()
				expect(innerTokens.LuaApps).toBeDefined()

				root:unmount()
			end)

			it("should map feature tokens into a namespace under LuaApps", function()
				local element = React.createElement(Wrapper, nil, {
					DesignTokenProvider = React.createElement(DesignTokenProvider, {
						tokenMappers = tokenMappers,
					}, {
						Element = React.createElement(Frame),
					}),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				expect(innerTokens.LuaApps.Foo).toBeDefined()
				expect(innerTokens.LuaApps.Foo.Bar).toBe(true)

				root:unmount()
			end)

			it("should invoke token mappers with provided uiModeInfo and tokens", function()
				local function StyleOverride(props: any)
					return React.createElement(StyleContext.Provider, {
						value = {
							style = {
								Tokens = Tokens,
							},
						},
					}, props.children)
				end
				local element = React.createElement(Wrapper, nil, {
					StyleOverride = React.createElement(StyleOverride, nil, {
						DesignTokenProvider = React.createElement(DesignTokenProvider, {
							uiModeInfo = uiModeInfo,
							tokenMappers = tokenMappers,
						}, React.createElement(Frame)),
					}),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				local expected = Cryo.Dictionary.join(Tokens, { LuaApps = {} })
				expect(tokenMappers.Foo).toHaveBeenCalledWith(uiModeInfo, expected)

				root:unmount()
			end)
		end)
	end
end
