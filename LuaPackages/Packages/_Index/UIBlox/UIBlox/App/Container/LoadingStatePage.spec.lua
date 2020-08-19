return function()
	local Container = script.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local LoadingStatePage = require(script.Parent.LoadingStatePage)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount", function()
			local element = mockStyleComponent({
				loadingStatePage = Roact.createElement(LoadingStatePage)
			})
			local instance = Roact.mount(element, frame, "LoadingStatePage")
			Roact.unmount(instance)
		end)
	end)
end
