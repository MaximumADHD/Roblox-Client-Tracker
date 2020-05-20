return function()
	local Menu = script.Parent
	local App = Menu.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(UIBloxRoot.App.ImageSet.Images)

	local ContextualMenu = require(script.Parent.ContextualMenu)
	local MenuDirection = require(script.Parent.MenuDirection)

	describe("lifecycle", function()
		it("should mount and unmount without issue with only required props", function()
			local element = mockStyleComponent({
				ContextualMenu = Roact.createElement(ContextualMenu, {
					buttonProps = {
						{
							text = "Test Text",
							onActivated = function()
								print("test")
							end,
						}
					},

					open = true,
					menuDirection = MenuDirection.Down,
					openPositionY = UDim.new(0, 20),

					screenSize = Vector2.new(1024, 1024),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount and unmount without issue with all props", function()
			local element = mockStyleComponent({
				ContextualMenu = Roact.createElement(ContextualMenu, {
					buttonProps = {
						{
							icon = Images["component_assets/circle_17"],
							text = "Option 1",
							onActivated = function()
								print("Option 1 pressed")
							end,
						},
						{
							icon = Images["component_assets/circle_17"],
							text = "Option 2",
							keyCodeLabel = Enum.KeyCode.Tab,
							selected = false,
							onActivated = function()
								print("Option 2 pressed")
							end,

							iconColorOverride = Color3.new(1, 0, 0),
							textColorOverride = Color3.new(1, 0, 0),
						},
						{
							icon = Images["component_assets/circle_17"],
							text = "Option 3",
							selected = true,
							onActivated = function()
								print("Option 3 pressed")
							end,
						},
					},

					open = true,
					menuDirection = MenuDirection.Up,
					openPositionY = UDim.new(0, 20),

					screenSize = Vector2.new(1024, 1024),

					onDismiss = function()
						print("Dismiss")
					end,
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)
end