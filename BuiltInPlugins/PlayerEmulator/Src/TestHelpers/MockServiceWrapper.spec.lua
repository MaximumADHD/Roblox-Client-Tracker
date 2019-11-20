local MockServiceWrapper = require(script.Parent.MockServiceWrapper)

local Plugin = script.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)

return function()
	it("should create and destroy without errors", function()
		local element = Roact.createElement(MockServiceWrapper, {}, {
			TestElement = Roact.createElement("Frame")
		})

		local container = Instance.new("Folder")
		local instance = Roact.mount(element, container)
		Roact.unmount(instance)
	end)

	it("should error if you do not provide an element to wrap", function()
		expect(function()
			local element = Roact.createElement(MockServiceWrapper)
			local container = Instance.new("Folder")
			local instance = Roact.mount(element, container)
			Roact.unmount(instance)
		end).to.throw()
	end)
end