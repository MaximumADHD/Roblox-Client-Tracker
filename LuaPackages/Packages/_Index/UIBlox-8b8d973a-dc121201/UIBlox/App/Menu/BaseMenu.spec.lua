return function()
	local Menu = script.Parent
	local App = Menu.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local Images = require(UIBloxRoot.App.ImageSet.Images)

	local BaseMenu = require(script.Parent.BaseMenu)

	describe("lifecycle", function()
		it("should mount and unmount without issue with only required props", function()
			local element = mockStyleComponent({
				BaseMenu = Roact.createElement(BaseMenu, {
					buttonProps = {
						{
							text = "Test Text",
							onActivated = function()
								print("test")
							end,
						}
					},
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount and unmount without issue with all props", function()
			local element = mockStyleComponent({
				BaseMenu = Roact.createElement(BaseMenu, {
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

					width = UDim.new(0, 300),
					position = UDim2.fromScale(0.5, 0.5),
					anchorPoint = Vector2.new(0.5, 0.5),
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)
end