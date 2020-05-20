return function()
	local ToastRoot = script.Parent
	local DialogRoot = ToastRoot.Parent
	local AppRoot = DialogRoot.Parent
	local UIBloxRoot = AppRoot.Parent
	local Packages = UIBloxRoot.Parent

	local Roact = require(Packages.Roact)

	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local InformativeToast = require(ToastRoot.InformativeToast)
	local InteractiveToast = require(ToastRoot.InteractiveToast)
	local ToastContainer = require(ToastRoot.ToastContainer)

	local createToastContainer = function(props)
		return mockStyleComponent({
			ToastContainer = Roact.createElement(ToastContainer, props)
		})
	end

	it("should throw on empty renderToast and toastTitle", function()
		local element = createToastContainer({
			renderToast = nil,
			toastTitle = nil,
		})
		expect(function()
			Roact.mount(element)
		end).to.throw()
	end)

	it("should create and destroy without errors", function()
		local element = createToastContainer({
			renderToast = function() end,
			toastTitle = "Test Title",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InformativeToast", function()
		local element = createToastContainer({
			iconImage = "rbxassetid://4126499279",
			renderToast = function(props)
				return Roact.createElement(InformativeToast, props)
			end,
			toastSubtitle = "test test test",
			toastTitle = "Item on sale",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)

	it("should create and destroy without errors when render InteractiveToast", function()
		local element = createToastContainer({
			iconImage = "rbxassetid://4126499279",
			onActivated = function() end,
			renderToast = function(props)
				return Roact.createElement(InteractiveToast, props)
			end,
			toastSubtitle = "Tap to see more information",
			toastTitle = "System Outage",
		})

		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end