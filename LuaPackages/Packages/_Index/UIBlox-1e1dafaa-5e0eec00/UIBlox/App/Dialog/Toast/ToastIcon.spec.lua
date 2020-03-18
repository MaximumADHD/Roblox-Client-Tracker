return function()
	local ToastRoot = script.Parent
	local DialogRoot = ToastRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local Images = require(UIBloxRoot.App.ImageSet.Images)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local ToastIcon = require(ToastRoot.ToastIcon)

	local createToastIcon = function(props)
		return mockStyleComponent({
			ToastIcon = Roact.createElement(ToastIcon, props)
		})
	end

	it("should throw on invalid props", function()
		local element = createToastIcon({})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors with valid props", function()
		local element = createToastIcon({
			Image = "rbxassetid://4126499279",
			Size = UDim2.new(0, 36, 0, 36),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with ImageSet compatible icon", function()
		local element = createToastIcon({
			Image = Images["icons/status/warning"],
			Size = UDim2.new(0, 36, 0, 36),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end