return function()
	local ToastRoot = script.Parent
	local UIBloxRoot = ToastRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local Images = require(UIBloxRoot.ImageSet.Images)
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
			Image = "rbxassetid://3792530835",
			Size = UDim2.new(0, 36, 0, 36),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors with ImageSet compatible icon", function()
		local element = createToastIcon({
			Image = Images["toast/iconAlert"],
			Size = UDim2.new(0, 36, 0, 36),
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end