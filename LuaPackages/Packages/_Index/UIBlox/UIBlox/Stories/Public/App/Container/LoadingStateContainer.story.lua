local Packages = script.Parent.Parent.Parent.Parent.Parent.Parent
local Roact = require(Packages.Roact)

local App = Packages.UIBlox.App
local RetrievalStatus = require(App.Loading.Enum.RetrievalStatus)
local ReloadingStyle = require(App.Loading.Enum.ReloadingStyle)
local RenderOnFailedStyle = require(App.Loading.Enum.RenderOnFailedStyle)

local LoadingStateContainer = require(App.Container.LoadingStateContainer)

local LoadingStateContainerStory = Roact.PureComponent:extend("LoadingStateContainerStory")

function LoadingStateContainerStory:init()
	self:setState({
		dataStatus = RetrievalStatus.NotStarted,
		renderOnFailed = RenderOnFailedStyle.EmptyStatePage,
		reloadingStyle = ReloadingStyle.AllowReload,
	})
	self.forceRetryFail = function(frame)
		self:setState({
			renderOnFailed = RenderOnFailedStyle.RetryButton,
			dataStatus = RetrievalStatus.Failed,
			reloadingStyle = ReloadingStyle.AllowReload,
		})
	end
	self.forceEmptyStateFail = function(frame)
		self:setState({
			renderOnFailed = RenderOnFailedStyle.EmptyStatePage,
			dataStatus = RetrievalStatus.Failed,
			reloadingStyle = ReloadingStyle.AllowReload,
		})
	end
	self.forceLoading = function(frame)
		self:setState({
			reloadingStyle = ReloadingStyle.AllowReload,
			dataStatus = RetrievalStatus.Fetching,
		})
	end
end

function LoadingStateContainerStory:render()
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
	}, {
		-- The UIListLayout may cause the component to appear off center.
		UIListLayout = Roact.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
		StoryButtonFrame = Roact.createElement("Frame", {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(600, 40),
			BackgroundTransparency = 1,
		}, {
			RetryStateButton = Roact.createElement("TextButton", {
				Text = "forceRetryFail",
				[Roact.Event.MouseButton1Click] = self.forceRetryFail,
				Size = UDim2.fromOffset(200, 40),
			}),
			LoadingStateButton = Roact.createElement("TextButton", {
				Text = "forceLoading",
				[Roact.Event.MouseButton1Click] = self.forceLoading,
				Size = UDim2.fromOffset(200, 40),
				Position = UDim2.fromOffset(200, 0),
			}),
			FailedStateButton = Roact.createElement("TextButton", {
				Text = "forceEmptyStateFail",
				[Roact.Event.MouseButton1Click] = self.forceEmptyStateFail,
				Size = UDim2.fromOffset(200, 40),
				Position = UDim2.fromOffset(400, 0),
			}),
		}),
		StoryFrame = Roact.createElement("Frame", {
			LayoutOrder = 2,
			Size = UDim2.fromScale(1, 1),
			Position = UDim2.fromScale(0.5, 0.5),
			AnchorPoint = Vector2.new(0.5, 0.5),
			BackgroundTransparency = 1,
		}, {
			LoadingStateContainer = Roact.createElement(LoadingStateContainer, {
				onRetry = function()
					print("onRetry")
				end,
				renderOnLoaded = function() end,
				renderOnFailed = self.state.renderOnFailed,
				dataStatus = self.state.dataStatus,
				reloadingStyle = self.state.reloadingStyle,
			}),
		}),
	})
end

return LoadingStateContainerStory
