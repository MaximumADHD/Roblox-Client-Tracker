local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Button = UI.Button
local InfiniteScrollingGrid = UI.InfiniteScrollingGrid

local InfiniteDataProvider = Roact.PureComponent:extend("InfiniteDataProvider")

local MIN = 1
local MAX = 300

function InfiniteDataProvider:init()
	self.createItem = function(index)
		return {
			id = index,
			text = "Item " .. tostring(index)
		}
	end

	local absoluteMax = 40
	local items = {}

	for i = 1, absoluteMax do
		items[i] = self.createItem(i)
	end

	self.state = {
		absoluteMax = absoluteMax,
		items = items,
	}
end

function InfiniteDataProvider:render()
	local state = self.state

	return Roact.createElement(InfiniteScrollingGrid, {
		AbsoluteMax = state.absoluteMax,
		CellPadding = UDim2.new(0, 10, 0, 10),
		CellSize = UDim2.new(0, 100, 0, 100),
		BufferedRows = 2,
		GetItemKey = function(item)
			return item.id
		end,
		Items = state.items,
		LoadRange = function(offset, count)
			self:setState({
				loading = true,
			})

			local items = self.state.items

			for i = math.max(offset, MIN), math.min(offset + count, MAX) do
				if not items[i] then
					items[i] = self.createItem(i)
				end
			end

			self:setState({
				items = items,
				absoluteMax = math.min(offset + count, MAX),
				loading = false,
			})
		end,
		Loading = state.loading,
		RenderItem = function(i, item)
			return Roact.createElement(Button, {
				Style = "Round",
				LayoutOrder = i,
				Text = item.text,
				Size = UDim2.new(0, 100, 0, 20),
				OnClick = function()
					print(item.text)
				end,
			})
		end,
		Size = UDim2.new(1, 0, 0, 500),
	})
end

return {
	stories = {
		{
			name = "Deferred loading",
			summary = "In this story, the scroller starts at element 1, and scrolling down loads more elements.",
			story = InfiniteDataProvider,
		}
	}
}
