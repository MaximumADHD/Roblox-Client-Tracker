return function()
	local Packages = script.Parent.Parent.Parent.Parent
	local Roact = require(Packages.Roact)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	local FullscreenTitleBar = require(script.Parent.FullscreenTitleBar)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function()
			local element = mockStyleComponent({
				TestTitleBar = Roact.createElement(FullscreenTitleBar, {
					title = "",
				})
			})
			local instance = Roact.mount(element, nil, "FullscreenTitleBar")
			Roact.unmount(instance)
		end)

		it("should mount and unmount without issue with valid properties", function()
			local element = mockStyleComponent({
				TestTitleBar = Roact.createElement(FullscreenTitleBar, {
					title = "",
					onDisappear = function() end,
					isTriggered = false,
					exitFullscreen = function() end,
					closeRoblox = function() end,
				})
			})
			local instance = Roact.mount(element, nil, "FullscreenTitleBar")
			Roact.unmount(instance)
		end)
	end)
end
