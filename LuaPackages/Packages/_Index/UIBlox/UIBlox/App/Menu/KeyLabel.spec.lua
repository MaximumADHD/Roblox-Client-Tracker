return function()
	local Menu = script.Parent
	local App = Menu.Parent
	local UIBloxRoot = App.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)

	local KeyLabel = require(script.Parent.KeyLabel)

	describe("lifecycle", function()
		it("should mount and unmount without issue with only required props", function()
			local element = mockStyleComponent({
				KeyLabel = Roact.createElement(KeyLabel, {
					keyCode = Enum.KeyCode.X,
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount and unmount without issue with all props", function()
			local element = mockStyleComponent({
				KeyLabel = Roact.createElement(KeyLabel, {
					keyCode = Enum.KeyCode.X,

					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					layoutOrder = 1,

					[Roact.Change.AbsoluteSize] = function(rbx)
						print("Size changed!")
					end,
				}),
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)

		it("should mount and unmount without issue when using special override keycodes", function()
			local element = mockStyleComponent({
				Frame = Roact.createElement("Frame", {
					BackgroundTransparency = 1,
				}, {
					EscapeKeyLabel = Roact.createElement(KeyLabel, {
						keyCode = Enum.KeyCode.Escape,
					}),

					SpaceKeyLabel = Roact.createElement(KeyLabel, {
						keyCode = Enum.KeyCode.Space,
					}),

					LeftControlKeyLabel = Roact.createElement(KeyLabel, {
						keyCode = Enum.KeyCode.LeftControl,
					}),

					F10KeyLabel = Roact.createElement(KeyLabel, {
						keyCode = Enum.KeyCode.F10,
					}),

					DownKeyLabel = Roact.createElement(KeyLabel, {
						keyCode = Enum.KeyCode.Down,
					}),
				})
			})

			local folder = Instance.new("Folder")
			local instance = Roact.mount(element, folder)

			Roact.unmount(instance)
			folder:Destroy()
		end)
	end)
end