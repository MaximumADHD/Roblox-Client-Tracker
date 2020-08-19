return function()
	local Container = script.Parent
	local App = Container.Parent
	local UIBlox = App.Parent
	local Packages = UIBlox.Parent

	local Roact = require(Packages.Roact)
	local RetrievalStatus = require(UIBlox.App.Loading.Enum.RetrievalStatus)
	local ReloadingStyle = require(UIBlox.App.Loading.Enum.ReloadingStyle)
	local RenderOnFailedStyle = require(UIBlox.App.Loading.Enum.RenderOnFailedStyle)
	local LoadingStateContainer = require(script.Parent.LoadingStateContainer)
	local mockStyleComponent = require(Packages.UIBlox.Utility.mockStyleComponent)

	describe("lifecycle", function()
		local frame = Instance.new("Frame")

		it("should mount and unmount with only required props", function()
			local element = mockStyleComponent({
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					renderOnLoaded = function() end,
					dataStatus = RetrievalStatus.NotStarted,
					failedText = "failed",
				})
			})
			local instance = Roact.mount(element, frame, "LoadingStateContainer")
			Roact.unmount(instance)
		end)

		it("should mount and unmount with all props", function()
			local element = mockStyleComponent({
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					dataStatus = RetrievalStatus.NotStarted,
					onRetry = function() end,
					renderOnLoaded = function() end,
					renderOnFailed = function() end,
					renderOnLoading = function() end,
					reloadingStyle = ReloadingStyle.AllowReload,
					failedText = "failed",
				})
			})
			local instance = Roact.mount(element, frame, "LoadingStateContainer")
			Roact.unmount(instance)
		end)

		it("should render loading state page", function()
			local element = mockStyleComponent({
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					dataStatus = RetrievalStatus.Fetching,
					onRetry = function() end,
					renderOnLoaded = function() end,
					renderOnFailed = RenderOnFailedStyle.EmptyStatePage,
					reloadingStyle = ReloadingStyle.AllowReload,
					failedText = "failed",
				})
			})
			local instance = Roact.mount(element, frame, "LoadingStateContainer")
			local loadingIcon = frame:FindFirstChild("inner", true)
			expect(loadingIcon).to.be.ok()
			Roact.unmount(instance)
		end)

		it("should render failed state page emptyState", function()
			local element = mockStyleComponent({
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					dataStatus = RetrievalStatus.Failed,
					onRetry = function() end,
					renderOnLoaded = function() end,
					renderOnFailed = RenderOnFailedStyle.EmptyStatePage,
					reloadingStyle = ReloadingStyle.AllowReload,
					failedText = "failed",
				})
			})
			local instance = Roact.mount(element, frame, "LoadingStateContainer")
			local content = frame:FindFirstChild("Content", true)
			local buttonFrame = content:FindFirstChild("buttonFrame", true)

			expect(buttonFrame).to.be.ok()
			Roact.unmount(instance)
		end)

		it("should render failed state page RetryButton", function()
			local element = mockStyleComponent({
				loadingStateContainer = Roact.createElement(LoadingStateContainer, {
					dataStatus = RetrievalStatus.Failed,
					onRetry = function() end,
					renderOnLoaded = function() end,
					renderOnFailed = RenderOnFailedStyle.RetryButton,
					reloadingStyle = ReloadingStyle.AllowReload,
					failedText = "failed",
				})
			})
			local instance = Roact.mount(element, frame, "LoadingStateContainer")
			local ButtonContent = frame:FindFirstChild("ButtonContent", true)

			expect(ButtonContent).to.be.ok()
			Roact.unmount(instance)
		end)
	end)
end
