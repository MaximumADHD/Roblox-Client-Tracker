return function ()
	local CorePackages = game:GetService("CorePackages")

	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local useStyle = require(script.Parent.useStyle)
	local StyleConstants = require(CorePackages.AppTempCommon.LuaApp.Style.Constants)
	local StyleProvider = require(CorePackages.AppTempCommon.LuaApp.Style.AppStyleProvider)

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local function defaultStyle()
		return {
			themeName = StyleConstants.ThemeName.Dark,
			fontName = StyleConstants.FontName.Gotham,
		}
	end

	local function renderWithStyleProvider(element, style: any?)
		style = style or defaultStyle()
		return React.createElement(StyleProvider, {
			style = style,
		}, {
			Child = element,
		})
	end

	it("it should provide the current style table", function()
		local style
		local function component()
			style = useStyle()
		end

		local element = React.createElement(component)
		element = renderWithStyleProvider(element)

		local container = Instance.new("Frame")
		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(element)
		end)

		expect(style).toMatchObject({
			Font = expect.any("table"),
			Theme = expect.any("table"),
		})
		root:unmount()
	end)
end
