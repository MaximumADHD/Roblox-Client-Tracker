return function()
	local Container = script.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent
	local Roact = require(Packages.Roact)
	local FailedStatePage = require(script.Parent.FailedStatePage)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)
	local RenderOnFailedStyle = require(UIBlox.App.Loading.Enum.RenderOnFailedStyle)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")
		it("should mount and unmount with the optional props", function()
			local element = mockStyleComponent({
				failedStatePage = Roact.createElement(FailedStatePage, {
					onRetry = function() end,
					renderOnFailed = RenderOnFailedStyle.RetryButton,
					text = "Failed"
				})
			})
			local instance = Roact.mount(element, frame, "FailedStatePage")
			Roact.unmount(instance)
		end)
		it("should error when RetryButton passed without onRetry callback", function()
			local element = mockStyleComponent({
				failedStatePage = Roact.createElement(FailedStatePage, {
					renderOnFailed = RenderOnFailedStyle.RetryButton,
					text = "Failed"
				})
			})
			expect(function()
				return Roact.mount(element, frame, "FailedStatePage")
			end).to.throw()
		end)
	end)
end
