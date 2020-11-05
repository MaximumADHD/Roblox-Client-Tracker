local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(draggerContext, handler)
	return setmetatable({
		_handler = handler,
	}, BoundsChangedTracker)
end

function BoundsChangedTracker:install()
	self:_connect()
end

function BoundsChangedTracker:uninstall()
	self:_disconnect()
end

function BoundsChangedTracker:setSelection(selectionInfo)
	self:_disconnect()
	self._instance = selectionInfo:getPrimaryObject()
	self:_connect()
end

function BoundsChangedTracker:_connect()
	if not self._instance then
		self:_setPart(nil)
	elseif self._instance:IsA("Model") then
		self._primaryConnection = self._instance:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
			self:_setPart(self._instance.PrimaryPart)
		end)
		self:_setPart(self._instance.PrimaryPart)
	elseif self._instance:IsA("BasePart") then
		self:_setPart(self._instance)
	else
		self:_setPart(nil)
	end
end

function BoundsChangedTracker:_disconnect()
	if self._primaryConnection then
		self._primaryConnection:Disconnect()
		self._primaryConnection = nil
	end
	self:_setPart(nil)
end

function BoundsChangedTracker:_setPart(part)
	if self._movedConnection then
		self._movedConnection:Disconnect()
		self._movedConnection = nil
	end
	if part and part:GetRootPart() then
		self._movedConnection = part:GetRootPart():GetPropertyChangedSignal("CFrame"):Connect(function()
			self._handler()
		end)
	end
end

return BoundsChangedTracker