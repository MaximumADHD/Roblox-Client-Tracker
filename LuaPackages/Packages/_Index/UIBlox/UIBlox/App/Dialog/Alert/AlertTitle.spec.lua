local AlertRoot = script.Parent
local DialogRoot = AlertRoot.Parent
local AppRoot = DialogRoot.Parent
local UIBlox = AppRoot.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)

local mockStyleComponent = require(UIBlox.Utility.mockStyleComponent)

local AlertTitle = require(script.Parent.AlertTitle)


return function()
	describe("lifecycle", function()
		it("should mount and unmount informative alerts without issue", function()
			local element = mockStyleComponent({
				Item = Roact.createElement(AlertTitle, {
					title = "Hello World",
					screenSize = Vector2.new(100, 100),
				})
			})

			local instance = Roact.mount(element)
			Roact.unmount(instance)
		end)
	end)
end