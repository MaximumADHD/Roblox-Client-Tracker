local ModalRoot = script.Parent
local DialogRoot = ModalRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local ButtonType = require(AppRoot.Button.Enum.ButtonType)

local PartialPageModal = require(script.Parent.PartialPageModal)

return function()
	describe("lifecycle", function()
		it("should mount and unmount PartialPageModal without issue", function()
			local element = mockStyleComponent({
				PartialPageModalContainer = Roact.createElement(PartialPageModal, {
					position = UDim2.new(0, 0, 0, 0),
					anchorPoint = Vector2.new(0, 0.5),
					title = "Title",
					screenSize = Vector2.new(1920, 1080),
					bottomPadding = 100,
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
						Size = UDim2.new(1, 0, 1, 0),
					}),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)

		it("should return correct getMiddleContentWidth when screen size is larger than modal max width", function()
			-- modal width - left margin - right margin
			assert(PartialPageModal:getMiddleContentWidth(800) == 540 - 2 * 24)
		end)

		it("should return correct getMiddleContentWidth when screen size is smaller than modal max width", function()
			-- modal width - left margin - right margin
			assert(PartialPageModal:getMiddleContentWidth(400) == 400 - 2 * 24)
		end)
	end)
end