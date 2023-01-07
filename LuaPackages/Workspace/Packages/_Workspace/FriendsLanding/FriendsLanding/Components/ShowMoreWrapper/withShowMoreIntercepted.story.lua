local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local Roact = dependencies.Roact
local llama = dependencies.llama
local UIBlox = dependencies.UIBlox
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local ShowMoreWrapper = require(script.Parent)
local friendsPerRow = require(script.Parent.helpers.friendsPerRow)

local SMALL_SCREEN_SIZE = 600
local ITEM_SIZE = {
	itemWidth = 100,
	itemHeight = 100,
}

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	self.state = {
		visibleRows = self.props.initialVisibleRows or 2,
	}
	local populateFriendsList = function(friendsCount)
		local friends = {}
		for i = 1, friendsCount do
			table.insert(friends, {
				id = i,
			})
		end
		return friends
	end
	self.fullFriendsList = populateFriendsList(100)
end

function Story:render()
	return Roact.createElement(
		ShowMoreWrapper,
		llama.Dictionary.join({
			listComponent = function(props)
				if self.props.onListComponentRendered then
					local numberOfFriendsPerRow = friendsPerRow({
						width = SMALL_SCREEN_SIZE,
						itemSize = ITEM_SIZE.itemWidth,
					})
					self.props.onListComponentRendered(props.friends, props.visibleRows, numberOfFriendsPerRow)
				end
				return Roact.createElement(
					"Frame",
					{ Size = UDim2.new(0, SMALL_SCREEN_SIZE, 0, SMALL_SCREEN_SIZE), BackgroundTransparency = 1 },
					{
						layout = Roact.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Vertical,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
							SortOrder = Enum.SortOrder.LayoutOrder,
							VerticalAlignment = Enum.VerticalAlignment.Center,
						}),
						ExampleGridView = Roact.createElement(DefaultMetricsGridView, {
							getItemMetrics = function()
								return ITEM_SIZE
							end,
							getItemHeight = function()
								return ITEM_SIZE.itemHeight
							end,
							items = props.friends,
							renderItem = function(item)
								return Roact.createElement(
									"TextLabel",
									{ Size = UDim2.fromScale(1, 1), Text = "#" .. item.id, LayoutOrder = 1 }
								)
							end,
							itemPadding = Vector2.new(0, 0),
							maxHeight = math.huge,
							defaultChildIndex = 1,
							LayoutOrder = 1,
						}),
						props.renderShowMore(2, "show more"),
						updateVisibleRowsButton = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 0, 40),
							Text = "props.visibleRows changed by ShowMore Button: " .. tostring(self.state.visibleRows),
							LayoutOrder = 3,
						}),
						reset = Roact.createElement("TextButton", {
							Size = UDim2.new(1, 0, 0, 50),
							Text = "reset",
							LayoutOrder = 3,
							[Roact.Event.Activated] = function()
								self:setState({
									visibleRows = 0,
								})
							end,
						}),
					}
				)
			end,
			itemSize = ITEM_SIZE.itemWidth,
			visibleRows = self.state.visibleRows,
			friends = self.fullFriendsList,
			overrideRenderShowMore = function(visibleFriendsCount)
				return visibleFriendsCount < #self.fullFriendsList
			end,
			handleShowMore = self.props.handleShowMore or function()
				self:setState({
					visibleRows = self.state.visibleRows + 1,
				})
			end,
		}, self.props)
	)
end

return {
	name = "withShowMoreIntercepted",
	summary = "ShowMoreWrapper with ShowMore intercepted by prop.handleShowMore. Each ShowMore button click will increase the props.visibleRows by 1.",
	story = Story,
}
