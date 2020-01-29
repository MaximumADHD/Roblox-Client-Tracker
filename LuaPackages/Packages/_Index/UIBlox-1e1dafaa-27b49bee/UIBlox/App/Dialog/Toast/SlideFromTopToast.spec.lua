return function()
	local ToastRoot = script.Parent
	local DialogRoot = ToastRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local SlideFromTopToast = require(ToastRoot.SlideFromTopToast)

	local createSlideFromTopToast = function(props)
		return mockStyleComponent({
			SlideFromTopToast = Roact.createElement(SlideFromTopToast, props)
		})
	end

	it("should throw on empty toastTitle", function()
		local element = createSlideFromTopToast({
			toastContent = {
				toastTitle = nil,
			},
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors", function()
		local element = createSlideFromTopToast({
			toastContent = {
				toastTitle = "Test Title",
			},
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InformativeToast", function()
		local element = createSlideFromTopToast({
			toastContent = {
				iconImage = "rbxassetid://4126499279",
				toastSubtitle = "test test test",
				toastTitle = "Item on sale",
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InteractiveToast", function()
		local element = createSlideFromTopToast({
			toastContent = {
				iconImage = "rbxassetid://4126499279",
				onActivated = function() end,
				toastSubtitle = "Tap to see more information",
				toastTitle = "System Outage",
			},
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end