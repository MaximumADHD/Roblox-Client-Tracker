return function()
	local ModalRoot = script.Parent
	local DialogRoot = ModalRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBlox = AppRoot.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local Images = require(Packages.UIBlox.App.ImageSet.Images)

	local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

	local EducationalModal = require(script.Parent.EducationalModal)

	local requiredProps = {
		bodyContents = {
			{
				icon = Images["icons/logo/block"],
				text = "Body 1",
				layoutOrder = 1
			},
			{
				icon = Images["icons/menu/home_on"],
				text = "Body 2",
				layoutOrder = 2
			},
			{
				icon = Images["icons/menu/games_on"],
				text = "Body 3",
				layoutOrder = 3
			},
		},
		cancelText = "Cancel",
		confirmText = "Confirm",
		titleText = "Title",
		titleBackgroundImageProps = {
			image = "rbxassetid://2610133241",
			imageHeight = 200,
		},
		screenSize = Vector2.new(1920, 1080),

		onDismiss = function()
			print("Dismiss")
		end,
		onCancel = function()
			print("Cancel")
		end,
		onConfirm = function()
			print("Confirm")
		end,
	}

	it("should create and destroy without errors", function()
		local element = mockStyleComponent({
			EducationalModalDialog = Roact.createElement(EducationalModal, requiredProps),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
