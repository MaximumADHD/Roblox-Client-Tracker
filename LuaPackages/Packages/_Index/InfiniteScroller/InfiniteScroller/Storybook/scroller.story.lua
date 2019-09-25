local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(Root.InfiniteScroller.Components.Scroller)

local Thing = require(script.Parent.ResizingThing)

local Story = Roact.PureComponent:extend("Story")

function Story:render()
	return Roact.createFragment({
		scroller = Roact.createElement(Scroller, {
			BackgroundColor3 = Color3.fromRGB(56, 19, 18),
			Size = UDim2.new(0, 200, 1, -100),
			Position = UDim2.new(0, 50, 0, 50),
			ScrollBarThickness = 8,
			padding = UDim.new(0, 5),
			orientation = Scroller.Orientation.Down,
			itemList = self.state.items,
			loadNext = self.loadNext,
			loadPrevious = self.loadPrevious,
			focusLock = self.state.lock,
			focusIndex = 101,
			anchorLocation = UDim.new(0, 0),
			estimatedItemSize = 40,
			identifier = function(item) return item.token end,
			renderItem = function(item, _)
				return Roact.createElement(Thing, item)
			end,
		}),
		refresh = Roact.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 50),
			Position = UDim2.new(1, -50, 0, 50),
			AnchorPoint = Vector2.new(1, 0),
			Text = "Refresh",
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			[Roact.Event.Activated] = self.click,
		}),
	})
end

local function generate(token)
	if token == 0 then
		return {color=Color3.fromRGB(255, 255, 255), width=50, token=0}
	end
	return {color=Color3.fromRGB(128-token, 255, 128+token), width=50+40*math.sin(token/5), token=token}
end

function Story:init()
	local items = {}
	for i = -100,100 do table.insert(items, generate(i)) end
	self.state = {
		lock = 1,
		items = items,
	}

	self.loadNext = function()
		self:setState({
			items = Cryo.List.join(self.state.items, {generate(self.state.items[#self.state.items].token + 1)}),
		})
	end

	self.loadPrevious = function()
		self:setState({
			items = Cryo.List.join({generate(self.state.items[1].token - 1)}, self.state.items),
		})
	end

	self.click = function()
		print("Recentering")
		self:setState({
			lock = self.state.lock + 1
		})
	end
end

return Story