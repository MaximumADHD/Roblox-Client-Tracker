local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Parent.Components
local ServerJobsChart = require(Components.ServerJobs.ServerJobsChart)
local UtilAndTab = require(Components.UtilAndTab)

local Actions = script.Parent.Parent.Parent.Actions
local ServerJobsUpdateSearchFilter = require(Actions.ServerJobsUpdateSearchFilter)

local Constants = require(script.Parent.Parent.Parent.Constants)
local PADDING = Constants.GeneralFormatting.MainRowPadding

local MainViewServerJobs = Roact.Component:extend("MainViewServerJobs")

function MainViewServerJobs:init()
	self.onUtilTabHeightChanged = function(utilTabHeight)
		self:setState({
			utilTabHeight = utilTabHeight
		})
	end

	self.onSearchTermChanged = function(newSearchTerm)
		self.props.dispatchServerJobsUpdateSearchFilter(newSearchTerm, {})
	end

	self.utilRef = Roact.createRef()

	self.state = {
		utilTabHeight = 0
	}
end

function MainViewServerJobs:didMount()
	local utilSize = self.utilRef.current.Size
	self:setState({
		utilTabHeight = utilSize.Y.Offset
	})
end

function MainViewServerJobs:didUpdate()
	local utilSize = self.utilRef.current.Size
	if utilSize.Y.Offset ~= self.state.utilTabHeight then
		self:setState({
			utilTabHeight = utilSize.Y.Offset
		})
	end
end


function MainViewServerJobs:render()
	local size = self.props.size
	local formFactor = self.props.formFactor
	local tabList = self.props.tabList
	local searchTerm = self.props.jobsSearchTerm

	local utilTabHeight = self.state.utilTabHeight

	return Roact.createElement("Frame",{
		Size = size,
		BackgroundColor3 = Constants.Color.BaseGray,
		BackgroundTransparency = 1,
		LayoutOrder = 3
	}, {
		UIListLayout = Roact.createElement("UIListLayout", {
			Padding = UDim.new(0, PADDING),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),

		UtilAndTab = Roact.createElement(UtilAndTab,{
			windowWidth = size.X.Offset,
			formFactor = formFactor,
			tabList = tabList,
			searchTerm = searchTerm,
			layoutOrder = 1,

			refForParent = self.utilRef,

			onHeightChanged = self.onUtilTabHeightChanged,
			onSearchTermChanged = self.onSearchTermChanged,
		}),

		ServerJobs = utilTabHeight > 0  and Roact.createElement(ServerJobsChart, {
			size = UDim2.new(1, 0, 1, -utilTabHeight),
			searchTerm = searchTerm,
			layoutOrder = 2,
		})
	})
end

local function mapStateToProps(state, props)
	return {
		jobsSearchTerm = state.ServerJobsData.jobsSearchTerm,
	}
end

local function mapDispatchToProps(dispatch)
	return {
		dispatchServerJobsUpdateSearchFilter = function(searchTerm, filters)
			dispatch(ServerJobsUpdateSearchFilter(searchTerm, filters))
		end
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(MainViewServerJobs)