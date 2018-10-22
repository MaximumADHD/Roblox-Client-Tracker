local ScrollZoom = {}
ScrollZoom.__index = ScrollZoom

function ScrollZoom:execute(Paths, fromScroll, toScroll, fromZoom, toZoom)
	Paths.UtilityScriptUndoRedo:registerUndo(ScrollZoom:new(Paths, fromScroll, toScroll, fromZoom, toZoom))
end

function ScrollZoom:new(Paths, fromScroll, toScroll, fromZoom, toZoom)
	local self = setmetatable({}, ScrollZoom)
	self.Paths = Paths
	self.fromScroll = fromScroll
	self.toScroll = toScroll
	self.fromZoom = fromZoom
	self.toZoom = toZoom
	return self
end

function ScrollZoom:undo()
	self.Paths.DataModelSession:setScrollAndZoom(self.fromScroll, self.fromZoom)
end

function ScrollZoom:redo()
	self.Paths.DataModelSession:setScrollAndZoom(self.toScroll, self.toZoom)
end

function ScrollZoom:getDescription()
	return "Scroll/Zoom"
end

return ScrollZoom
