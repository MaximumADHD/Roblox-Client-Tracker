local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)
local UI = require(Framework.UI)
local Button = UI.Button
local InfiniteScrollingFrame = UI.InfiniteScrollingFrame

local InfiniteDataProvider = Roact.PureComponent:extend("InfiniteDataProvider")

local MAX = 100
local MIN = 1

function InfiniteDataProvider:init()
	self.state = {
		low = 10,
		high = 30
	}
end

function InfiniteDataProvider:render()
	local state = self.state
	local low = state.low
	local high = state.high

	local items = {}
	for i = low, high do
		table.insert(items, {
			id = i,
			text = "Item " .. tostring(i)
		})
	end

	return Roact.createElement(InfiniteScrollingFrame, {
		Size = UDim2.fromOffset(300, 100),
		Items = items,
		ItemIdentifier = function(item)
			return item.id
		end,
		RenderItem = function(item)
			return Roact.createElement(Button, {
				Style = "Round",
				LayoutOrder = item.id,
				Text = item.text,
				Size = UDim2.new(1, -8, 0, 20),
				OnClick = function()
					print(item.text)
				end,
			})
		end,
		LoadNext = function()
			self:setState(function(prevState)
				if prevState.high == MAX then
					return
				end
				return {
					high = math.min(prevState.high + 5, MAX)
				}
			end)
		end,
		LoadPrevious = function()
			self:setState(function(prevState)
				if prevState.low == MIN then
					return
				end
				return {
					low = math.max(prevState.low - 5, MIN)
				}
			end)
		end
	})
end

return InfiniteDataProvider