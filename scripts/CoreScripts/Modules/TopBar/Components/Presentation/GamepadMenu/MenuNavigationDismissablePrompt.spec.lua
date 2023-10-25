--!strict
return function()
	local CorePackages = game:GetService("CorePackages")

	local expect = require(CorePackages.Packages.Dev.JestGlobals).expect
	local React = require(CorePackages.Packages.React)
	local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
	local Rodux = require(CorePackages.Packages.Rodux)
	local RoactRodux = require(CorePackages.RoactRodux)
	local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider
	local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
	local UIBlox = require(CorePackages.UIBlox)
	local DesignTokenProvider = require(CorePackages.Workspace.Packages.Style).DesignTokenProvider

	local MenuNavigationPromptTokenMapper =
		require(script.Parent.Parent.Parent.Parent.TokenMappers.MenuNavigationPromptTokenMapper)
	local MenuNavigationDismissablePrompt = require(script.Parent.MenuNavigationDismissablePrompt)

	local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)

	local defaultStyle = {
		themeName = "dark",
		fontName = "gotham",
		deviceType = RobloxAppEnums.DeviceType.Console,
	}

	it("should render the MenuNavigationDismissablePrompt", function()
		local localization = Localization.new("en-us")

		local function App(props: { Visible: boolean })
			return React.createElement(RoactRodux.StoreProvider, {
				store = Rodux.Store.new(function(state)
					return state
				end, {}, {}),
			}, {
				StyleProvider = React.createElement(UIBlox.App.Style.AppStyleProvider, {
					style = defaultStyle,
				}, {
					DesignTokenProvider = React.createElement(DesignTokenProvider, {
						tokenMappers = {
							MenuNavigationPrompt = MenuNavigationPromptTokenMapper,
						},
					}, {
						LocalizationProvider = React.createElement(LocalizationProvider, {
							localization = localization,
						}, {
							MenuNavigationDismissablePrompt = React.createElement(MenuNavigationDismissablePrompt, {
								Position = UDim2.fromScale(0.5, 0.5),
								Visible = props.Visible,
							}),
						}),
					}),
				}),
			})
		end

		local container = Instance.new("Frame")
		container.Size = UDim2.fromOffset(1920, 1080)

		local root = ReactRoblox.createRoot(container)

		ReactRoblox.act(function()
			root:render(React.createElement(App))
		end)

		local prompt = container:FindFirstChild("MenuNavigationDismissablePrompt", true)
		expect(prompt).toBeDefined()

		local ControllerArea = container:FindFirstChild("ControllerArea", true) :: GuiObject
		expect(ControllerArea).toBeDefined()
		expect(ControllerArea.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(ControllerArea.AbsoluteSize.X).toBeGreaterThan(0)

		local ControllerButtonLabel = ControllerArea:FindFirstChild("ControllerButtonLabel", true) :: TextLabel
		expect(ControllerButtonLabel.Text).toEqual("View Button")

		local HeaderArea = container:FindFirstChild("HeaderArea", true) :: GuiObject
		expect(HeaderArea).toBeDefined()
		expect(HeaderArea.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(HeaderArea.AbsoluteSize.X).toBeGreaterThan(0)

		local Header = HeaderArea:FindFirstChild("Header", true) :: TextLabel
		expect(Header.Text).toEqual("How to toggle menu navigation")

		local Body = container:FindFirstChild("Body", true) :: GuiObject
		expect(Body).toBeDefined()
		expect(Body.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(Body.AbsoluteSize.X).toBeGreaterThan(0)

		local ImageDescription = Body:FindFirstChild("ImageDescription", true) :: TextLabel
		expect(ImageDescription.Text).toContain(
			"Some experiences require pressing the Touchpad button to toggle menu navigation"
		)

		ReactRoblox.act(function()
			root:render(nil)
		end)
	end)
end
