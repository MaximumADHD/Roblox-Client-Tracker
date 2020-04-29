return function()
	local Framework = script.Parent.Parent

	-- Only run tests if in a plugin that uses UILibrary.
	-- We assume plugins will completely move away from the UILibrary
	-- to the Framework in the future, so we don't want to depend on it.
	if not Framework.Parent:FindFirstChild("UILibrary") then
		SKIP()
		return
	end

	local Roact = require(Framework.Parent.Roact)
	local provide = require(Framework.ContextServices.provide)
	local Plugin = require(Framework.ContextServices.Plugin)
	local Focus = require(Framework.ContextServices.Focus)
	local Theme = require(Framework.ContextServices.Theme)
	local UILibraryWrapper = require(script.Parent.UILibraryWrapper)

	it("should expect a Plugin ContextItem provided above", function()
		local focus = Focus.new(Instance.new("ScreenGui"))
		local wrapper = UILibraryWrapper.new()
		local theme = Theme.new(function()
			return {}
		end)
		function theme:getUILibraryTheme()
			return {}
		end

		local element = provide({
			focus,
			theme,
			wrapper,
		}, {
			Frame = Roact.createElement("Frame"),
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should expect a Focus ContextItem provided above", function()
		local plugin = Plugin.new({})
		local wrapper = UILibraryWrapper.new()
		local theme = Theme.new(function()
			return {}
		end)
		function theme:getUILibraryTheme()
			return {}
		end

		local element = provide({
			plugin,
			theme,
			wrapper,
		}, {
			Frame = Roact.createElement("Frame"),
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should expect a Theme ContextItem provided above", function()
		local plugin = Plugin.new({})
		local focus = Focus.new(Instance.new("ScreenGui"))
		local wrapper = UILibraryWrapper.new()

		local element = provide({
			plugin,
			focus,
			wrapper,
		}, {
			Frame = Roact.createElement("Frame"),
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should expect a getUILibraryTheme function on Theme", function()
		local plugin = Plugin.new({})
		local focus = Focus.new(Instance.new("ScreenGui"))
		local wrapper = UILibraryWrapper.new()
		local theme = Theme.new(function()
			return {}
		end)

		local element = provide({
			plugin,
			focus,
			theme,
			wrapper,
		}, {
			Frame = Roact.createElement("Frame"),
		})
		expect(function()
			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end).to.throw()
	end)

	it("should be providable as a ContextItem", function()
		local plugin = Plugin.new({})
		local focus = Focus.new(Instance.new("ScreenGui"))
		local wrapper = UILibraryWrapper.new()
		local theme = Theme.new(function()
			return {}
		end)
		function theme:getUILibraryTheme()
			return {}
		end

		local element = provide({
			plugin,
			focus,
			theme,
			wrapper,
		}, {
			Frame = Roact.createElement("Frame"),
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
