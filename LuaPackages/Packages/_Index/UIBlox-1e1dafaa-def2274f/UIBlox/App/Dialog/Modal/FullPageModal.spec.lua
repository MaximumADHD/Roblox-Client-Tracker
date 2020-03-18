local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local ButtonType = require(AppRoot.Button.Enum.ButtonType)

local FullPageModal = require(script.Parent.FullPageModal)

return function()
    describe("lifecycle", function()
		it("should mount and unmount FullPageModal without issue", function()
			local element = mockStyleComponent({
				FullPageModalContainer = Roact.createElement(FullPageModal, {
					position = UDim2.new(0, 0, 0, 0),
					title = "Title",
					screenSize = Vector2.new(1920, 1080),
					buttonStackProps = {
						buttons = {
							{
								props = {
									isDisabled = false,
									onActivated = function() print("Cancel button was clicked") end,
									text = "Cancel",
								},
							},
							{
								buttonType = ButtonType.PrimarySystem,
								props = {
									isDisabled = false,
									onActivated = function() print("Confirm button was clicked") end,
									text = "Confirm",
								},
							},
						},
					},
					onCloseClicked = function() print("Close button was clicked") end,
				}, {
					Custom = Roact.createElement("Frame", {
						BorderSizePixel = 0,
						BackgroundColor3 = Color3.fromRGB(164, 86, 78),
						Size = UDim2.new(1, 0, 0, 60),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
    end)
end