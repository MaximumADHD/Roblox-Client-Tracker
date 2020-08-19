local Container = script.Parent
local App = Container.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local RetrievalStatus = require(UIBlox.App.Loading.Enum.RetrievalStatus)
local LoadingStateEnum = require(UIBlox.App.Loading.Enum.LoadingState)
local ReloadingStyle = require(UIBlox.App.Loading.Enum.ReloadingStyle)
local RenderOnFailedStyle = require(UIBlox.App.Loading.Enum.RenderOnFailedStyle)
local LoadingStatePage = require(UIBlox.App.Container.LoadingStatePage)
local FailedStatePage = require(UIBlox.App.Container.FailedStatePage)
local LoadingStateTables = require(UIBlox.App.Container.LoadingStateTables)

local INITIAL_RELOADING_STYLE = ReloadingStyle.AllowReload
local INITIAL_LOADING_STATE = LoadingStateEnum.Loading

local LoadingStateContainer = Roact.PureComponent:extend("LoadingStateContainer")

LoadingStateContainer.validateProps = t.strictInterface({
	-- The dataStatus is a retrieval status enum
	dataStatus = RetrievalStatus.isEnumValue,
	-- Text for FailedStatePage EmptyState
	failedText = t.string,
	-- The onRetry function is called when a button is pressed
	onRetry = t.optional(t.callback),
	-- The renderOnLoaded is rendered if loading state is LoadingStateEnum.Loaded
	renderOnLoaded = t.callback,
	-- The renderOnFailed is rendered if loading state is LoadingStateEnum.Failed or is a RenderOnFailedStyle Enum.
	renderOnFailed = t.optional(t.union(RenderOnFailedStyle.isEnumValue, t.callback)),
	-- The renderOnLoading is rendered if loading state is LoadingStateEnum.Loading
	renderOnLoading = t.optional(t.callback),
	-- The reloadingStyle is the style of state table
	reloadingStyle = t.optional(ReloadingStyle.isEnumValue),
})

LoadingStateContainer.defaultProps = {
	renderOnFailed = RenderOnFailedStyle.RetryButton,
	reloadingStyle = INITIAL_RELOADING_STYLE,
}

function LoadingStateContainer:init()
	self.onStateChange = function(oldState, newState)
		self:setState({
			loadingState = newState,
		})
	end

	self.updateState = function()
		self.state.currentReloadingStyle:onStateChange(self.onStateChange)
		self.state.currentReloadingStyle.events[self.props.dataStatus]()
	end

	self:setState({
		loadingState = INITIAL_LOADING_STATE,
		currentReloadingStyle = LoadingStateTables[INITIAL_RELOADING_STYLE],
	})

	self.statePages = {
		[LoadingStateEnum.Loading] = function()
			if self.props.renderOnLoading then
				return self.props.renderOnLoading()
			else
				return Roact.createElement(LoadingStatePage)
			end
		end,
		[LoadingStateEnum.Failed] = function()
			if t.callback(self.props.renderOnFailed) then
				return self.props.renderOnFailed()
			else
				return Roact.createElement(FailedStatePage, {
					onRetry = self.props.onRetry,
					renderOnFailed = self.props.renderOnFailed,
					text = self.props.failedText,
				})
			end
		end,
		[LoadingStateEnum.Loaded] = function()
			return self.props.renderOnLoaded()
		end,
	}
end

function LoadingStateContainer.getDerivedStateFromProps(nextProps, lastState)
	if lastState.currentReloadingStyle ~= nil and lastState.currentReloadingStyle ~= nextProps.reloadingStyle then
		return {
			--reloadingStyle = nextProps.reloadingStyle,
			currentReloadingStyle = LoadingStateTables[nextProps.reloadingStyle]
		}
	end
end

function LoadingStateContainer:render()
	return self.statePages[self.state.loadingState]()
end

function LoadingStateContainer:didMount()
	self.updateState()
end

function LoadingStateContainer:didUpdate(prevProps)
	if prevProps.dataStatus ~= self.props.dataStatus or prevProps.reloadingStyle ~= self.props.reloadingStyle then
		self.updateState()
	end
end


return LoadingStateContainer
