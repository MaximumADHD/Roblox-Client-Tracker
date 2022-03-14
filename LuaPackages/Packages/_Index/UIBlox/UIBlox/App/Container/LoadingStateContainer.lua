local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RetrievalStatus = require(UIBlox.App.Loading.Enum.RetrievalStatus)
local LoadingStatePage = require(UIBlox.App.Container.LoadingStatePage)
local FailedStatePage = require(UIBlox.App.Container.FailedStatePage)

local LoadingStateContainer = Roact.PureComponent:extend("LoadingStateContainer")

LoadingStateContainer.validateProps = t.strictInterface({
	-- The dataStatus is a retrieval status enum
	dataStatus = RetrievalStatus.isEnumValue,

	-- The renderOnLoaded is rendered if loading state is LoadingStateEnum.Loaded
	renderOnLoaded = t.callback,

	-- The renderOnFailed is rendered if loading state is LoadingStateEnum.Failed
	renderOnFailed = t.optional(t.callback),
	-- The onRetry function is called when a button is pressed
	onRetry = t.optional(t.callback),

	-- The renderOnLoading is rendered if loading state is LoadingStateEnum.Loading will use LoadingStatePage if nil
	renderOnLoading = t.optional(t.callback),

	-- The renderOnLoaded is rendered if loading state is LoadingStateEnum.Empty will use LoadingStatePage if nil
	renderOnEmpty = t.optional(t.callback),
})

function LoadingStateContainer:init()
	self.statePages = {
		[RetrievalStatus.NotStarted] = function()
			if self.props.renderOnEmpty then
				return self.props.renderOnEmpty()
			else
				if self.props.renderOnLoading then
					return self.props.renderOnLoading()
				else
					return Roact.createElement(LoadingStatePage)
				end
			end
		end,
		[RetrievalStatus.Fetching] = function()
			if self.props.renderOnLoading then
				return self.props.renderOnLoading()
			else
				return Roact.createElement(LoadingStatePage)
			end
		end,
		[RetrievalStatus.Failed] = function()
			if self.props.renderOnFailed then
				return self.props.renderOnFailed()
			else
				return Roact.createElement(FailedStatePage, {
					onRetry = self.props.onRetry,
				})
			end
		end,
		[RetrievalStatus.Done] = function()
			return self.props.renderOnLoaded()
		end,
	}
end

function LoadingStateContainer:render()
	return self.statePages[self.props.dataStatus]()
end

return LoadingStateContainer
