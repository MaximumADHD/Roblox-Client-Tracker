local ProjectRoot = script:FindFirstAncestor("ExperienceChat").Parent
local Roact = require(ProjectRoot.Roact)
local llama = require(ProjectRoot.llama)
local Dictionary = llama.Dictionary
local UIBlox = require(ProjectRoot.UIBlox)
local VerticalScrollView = UIBlox.App.Container.VerticalScrollView

local MAX_NUM = 2 ^ 63 - 1

local BottomLockedScrollView = Roact.Component:extend("BottomLockedScrollView")
function BottomLockedScrollView:init()
	self.scrollViewRef = Roact.createRef()
	self.canvasPositionAtBottom = 0
	self.currCanvasPositionY = 0
end

function BottomLockedScrollView:didUpdate(previousProps, _)
	if Dictionary.count(previousProps[Roact.Children]) < Dictionary.count(self.props[Roact.Children]) then
		self.canvasPositionAtBottom = math.max(
			self.canvasPositionAtBottom,
			self.scrollViewRef:getValue().CanvasPosition.Y
		)
		if self.currCanvasPositionY >= self.canvasPositionAtBottom then
			self.scrollViewRef:getValue().CanvasPosition = Vector2.new(0, MAX_NUM)
		end
	end
end

function BottomLockedScrollView:render()
	return Roact.createElement(VerticalScrollView, {
		useAutomaticCanvasSize = true,
		size = UDim2.fromScale(1, 1),
		canvasSizeY = UDim.new(0, 0),
		paddingHorizontal = 8,
		[Roact.Ref] = self.scrollViewRef,
		[Roact.Change.CanvasPosition] = function()
			self.currCanvasPositionY = self.scrollViewRef:getValue().CanvasPosition.Y
		end,
	}, self.props[Roact.Children])
end

return BottomLockedScrollView
