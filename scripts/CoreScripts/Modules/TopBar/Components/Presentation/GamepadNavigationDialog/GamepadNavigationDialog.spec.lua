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
	local GamepadNavigationDialog = require(script.Parent.GamepadNavigationDialog)

	local RobloxAppEnums = require(CorePackages.Workspace.Packages.RobloxAppEnums)

	local defaultStyle = {
		themeName = "dark",
		fontName = "builder",
		deviceType = RobloxAppEnums.DeviceType.Console,
	}

	it("should render the GamepadNavigationDialog", function()
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
							GamepadNavigationDialog = React.createElement(GamepadNavigationDialog, {
								selectButtonDismissesGamepadNavigationDialog = true,
								onDismissed = function() end,
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

		local prompt = container:FindFirstChild("GamepadNavigationDialog", true)
		expect(prompt).toBeDefined()

		local GamepadImageArea = container:FindFirstChild("GamepadImageArea", true) :: GuiObject
		expect(GamepadImageArea).toBeDefined()
		expect(GamepadImageArea.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(GamepadImageArea.AbsoluteSize.X).toBeGreaterThan(0)

		local ControllerButtonLabel = GamepadImageArea:FindFirstChild("ControllerButtonLabel", true) :: TextLabel
		expect(ControllerButtonLabel.Text).toEqual("View Button")

		local HeaderArea = container:FindFirstChild("HeaderArea", true) :: GuiObject
		expect(HeaderArea).toBeDefined()
		expect(HeaderArea.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(HeaderArea.AbsoluteSize.X).toBeGreaterThan(0)

		local Header = HeaderArea:FindFirstChild("Header", true) :: TextLabel
		expect(Header.Text).toEqual("How to toggle UI Navigation Mode")

		local Body = container:FindFirstChild("Body", true) :: GuiObject
		expect(Body).toBeDefined()
		expect(Body.AbsoluteSize.Y).toBeGreaterThan(0)
		expect(Body.AbsoluteSize.X).toBeGreaterThan(0)

		local ImageDescription = Body:FindFirstChild("ImageDescription", true) :: TextLabel
		expect(ImageDescription.Text).toContain("Some experiences")

		ReactRoblox.act(function()
			root:render(nil)
		end)
	end)
end
