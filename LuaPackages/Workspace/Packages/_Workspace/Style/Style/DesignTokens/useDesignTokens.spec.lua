return function()
	local Root = script:FindFirstAncestor("Style")
	local Packages = Root.Parent
	local React = require(Packages.React)
	local RobloxAppEnums = require(Packages.RobloxAppEnums)
	local GetFFlagTenFootUiDesignTokens = require(Packages.SharedFlags).GetFFlagTenFootUiDesignTokens
	local RoactRodux = require(Packages.Dev.RoactRodux)
	local ReactRoblox = require(Packages.Dev.ReactRoblox)
	local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
	local mockStore = UnitTestHelpers.mockStore
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local expect = JestGlobals.expect

	local AppStyleProvider = require(script.Parent.Parent.AppStyleProvider)
	local Constants = require(script.Parent.Parent.Constants)
	local DesignTokenProvider = require(script.Parent.DesignTokenProvider)
	local useDesignTokens = require(script.Parent.useDesignTokens)
	local appStyle = {
		themeName = Constants.ThemeName.Dark,
		fontName = Constants.FontName.Gotham,
	}
	local tokenMappers = {
		Foo = function(_, _)
			return {
				Bar = true,
			}
		end,
	}

	local function Wrapper(props: any)
		return React.createElement(RoactRodux.StoreProvider, {
			store = mockStore(),
		}, {
			AppStyleProvider = React.createElement(AppStyleProvider, {
				style = appStyle,
				deviceType = RobloxAppEnums.DeviceType.Console,
			}, {
				DesignTokenProvider = React.createElement(DesignTokenProvider, {
					tokenMappers = tokenMappers,
				}, props.children),
			}),
		})
	end

	if GetFFlagTenFootUiDesignTokens() then
		describe("useDesignTokens", function()
			local innerProps
			local function Frame(props: any)
				innerProps = props
				return React.createElement("Frame")
			end

			afterEach(function()
				innerProps = nil
			end)

			it("should create and destroy without errors", function()
				local function FrameWithDesignTokens()
					local designTokens = useDesignTokens()
					return React.createElement(Frame, designTokens)
				end

				local element = React.createElement(Wrapper, nil, {
					Element = React.createElement(FrameWithDesignTokens),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				root:unmount()
			end)

			it("should return design tokens", function()
				local function FrameWithDesignTokens()
					local designTokens = useDesignTokens()
					return React.createElement(Frame, designTokens)
				end

				local element = React.createElement(Wrapper, nil, {
					Element = React.createElement(FrameWithDesignTokens),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				expect(innerProps).toEqual(expect.any("table"))

				root:unmount()
			end)

			it("should map design tokens to selected values if a selector is provided", function()
				local function FrameWithDesignTokens()
					local bar = useDesignTokens(function(tokens)
						return tokens.LuaApps.Foo.Bar
					end)
					return React.createElement(Frame, { bar = bar })
				end

				local element = React.createElement(Wrapper, nil, {
					Element = React.createElement(FrameWithDesignTokens),
				})

				local container = Instance.new("Folder")
				local root = ReactRoblox.createRoot(container)

				ReactRoblox.act(function()
					root:render(element)
				end)

				expect(innerProps.bar).toBe(true)

				root:unmount()
			end)
		end)
	end
end
