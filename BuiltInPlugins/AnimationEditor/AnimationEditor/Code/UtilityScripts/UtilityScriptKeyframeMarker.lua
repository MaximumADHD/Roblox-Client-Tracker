local KeyframeMarker = {}
KeyframeMarker.__index = KeyframeMarker
KeyframeMarker.count = 0

function KeyframeMarker:new(Paths, time)
	local self = setmetatable({}, KeyframeMarker)
	KeyframeMarker.count = KeyframeMarker.count + 1
	self.Name = "KeyframeMarker" ..KeyframeMarker.count
	self.Value = ""
	self.Time = time
	return self
end

function KeyframeMarker:getName()
	return self.Name
end

function KeyframeMarker:getValue()
	return self.Value
end

function KeyframeMarker:setName(name)
	self.Name = name
end

function KeyframeMarker:setValue(value)
	self.Value = value
end

function KeyframeMarker:getTime()
	return self.Time
end

function KeyframeMarker:setTime(time)
	self.Time = time
end

return KeyframeMarker
