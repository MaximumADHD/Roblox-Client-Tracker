return function()
	local CoreGui = game:GetService("CoreGui")
	local CorePackages = game:GetService("CorePackages")
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local NotificationStyledText = require(script.Parent.NotificationStyledText)
	local JestGlobals = require(CorePackages.JestGlobals)
	local jestExpect = JestGlobals.expect

	local StyleConstants = require(CorePackages.Workspace.Packages.Style).Constants
	local StyleProvider = require(CorePackages.Workspace.Packages.Style).AppStyleProvider
	local RoactServices = require(CorePackages.Workspace.Packages.RoactServices).RoactServices

	local appStyle = {
		themeName = StyleConstants.ThemeName.Dark,
		fontName = StyleConstants.FontName.Gotham,
	}

	-- TODO: Replace mockServices with util version once it is packagified
	local mockServices = function(componentMap, extraArgs: any?)
		local root = componentMap

		if extraArgs.includeStyleProvider then
			root = {
				StyleProvider = React.createElement(StyleProvider, {
					style = appStyle,
				}, root),
			}
		end

		root = React.createElement(RoactServices.ServiceProvider, {}, root)

		return root
	end

	local container
	local root

	beforeEach(function()
		container = Instance.new("ScreenGui")
		container.Parent = CoreGui

		root = ReactRoblox.createRoot(container)
	end)

	afterEach(function()
		root:unmount()
		container:Destroy()
	end)

	it("Should render a TextLabel with basic text", function()
		local element: any = mockServices({
			React.createElement(NotificationStyledText, {
				Text = {
					text = "This is test text",
					styledElements = {},
				},
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 16,
			}),
		}, {
			includeStyleProvider = true,
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local textLabel: TextLabel? = container:FindFirstChildOfClass("TextLabel")
		jestExpect(textLabel).toBeDefined()
		if textLabel then
			jestExpect(textLabel.Text).toBe("This is test text")
			jestExpect(textLabel.RichText).toBe(true)
			jestExpect(textLabel.AnchorPoint).toBe(Vector2.new(0.5, 0.5))
			jestExpect(textLabel.Position).toBe(UDim2.new(0.5, 0, 0.5, 0))
			jestExpect(textLabel.Size).toBe(UDim2.new(1, 0, 0, 0))
			jestExpect(textLabel.AutomaticSize).toBe(Enum.AutomaticSize.Y)
			jestExpect(textLabel.TextSize).toBe(16)
		end
	end)

	it("Should respect highlight formatting", function()
		local element: any = mockServices({
			React.createElement(NotificationStyledText, {
				Text = {
					text = "This is test text",
					styledElements = {
						{
							styledElementType = "highlight",
							offset = 8,
							length = 4,
						},
					},
				},
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = Enum.AutomaticSize.Y,
				TextSize = 16,
			}),
		}, {
			includeStyleProvider = true,
		})

		ReactRoblox.act(function()
			root:render(element)
		end)

		local textLabel: TextLabel? = container:FindFirstChildOfClass("TextLabel")
		jestExpect(textLabel).toBeDefined()
		if textLabel then
			jestExpect(textLabel.Text).toBe("This is <b>test</b> text")
			jestExpect(textLabel.RichText).toBe(true)
		end
	end)
end
