return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local BootcampPluginMyJiraTicket  = require(script.Parent.BootcampPluginMyJiraTicket )

	it("should create and destroy without errors", function()
		local element = mockContext({
			BootcampPluginMyJiraTicket  = Roact.createElement(BootcampPluginMyJiraTicket )
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
