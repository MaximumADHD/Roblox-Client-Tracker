return function()
	local ToastTextRoot = script.Parent
	local UIBloxRoot = ToastTextRoot.Parent
	local Roact = require(UIBloxRoot.Parent.Roact)
	local mockStyleComponent = require(UIBloxRoot.Utility.mockStyleComponent)
	local InformativeToast = require(script.Parent.InformativeToast)
	local InteractiveToast = require(script.Parent.InteractiveToast)
	local ToastContainer = require(script.Parent.ToastContainer)

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
			iconImage = "rbxassetid://3792530835",
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
			iconImage = "rbxassetid://3792530835",
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