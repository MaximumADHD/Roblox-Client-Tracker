return function()
	local Plugin = script.Parent.Parent.Parent.Parent
	local Roact = require(Plugin.Packages.Roact)
	local mockContext = require(Plugin.Src.Util.mockContext)

	local MyJiraTicket = require(script.Parent.MyJiraTicket)

	it("should create and destroy without errors", function()
		local element = mockContext({
			MyJiraTicket = Roact.createElement(MyJiraTicket)
		})
		local instance = Roact.mount(element)
		Roact.unmount(instance)
	end)
end
