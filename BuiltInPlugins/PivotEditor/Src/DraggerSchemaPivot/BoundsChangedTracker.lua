local BoundsChangedTracker = {}
BoundsChangedTracker.__index = BoundsChangedTracker

function BoundsChangedTracker.new(draggerContext, handler)
	return setmetatable({
		_handler = handler,
		_installed = false,
	}, BoundsChangedTracker)
end

function BoundsChangedTracker:install()
	self:_connect()
	self._installed = true
end

function BoundsChangedTracker:uninstall()
	self:_disconnect()
	self._installed = false
end

function BoundsChangedTracker:setSelection(selectionInfo)
	if self._installed then
		self:_disconnect()
		self._instance = selectionInfo:getPrimaryObject()
		self:_connect()
	end
end

function BoundsChangedTracker:_connect()
	if not self._instance then
		self:_setPart(nil)
	elseif self._instance:IsA("Model") then
		self._primaryConnection = self._instance:GetPropertyChangedSignal("PrimaryPart"):Connect(function()
			self:_setPart(self._instance.PrimaryPart)
		end)
		self._pivotChangedConnection = self._instance:GetPropertyChangedSignal("WorldPivot"):Connect(function()
			self._handler()
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
	if self._pivotChangedConnection then
		self._pivotChangedConnection:Disconnect()
		self._pivotChangedConnection = nil
	end
	self:_setPart(nil)
end

function BoundsChangedTracker:_setPart(part)
	if self._movedConnection then
		self._movedConnection:Disconnect()
		self._movedConnection = nil
	end
	if self._partPivotChangedConnection then
		self._partPivotChangedConnection:Disconnect()
		self._partPivotChangedConnection = nil
	end
	if part then
		local function handlerTrampoline()
			self._handler()
		end
		self._partPivotChangedConnection = part:GetPropertyChangedSignal("PivotOffset"):Connect(handlerTrampoline)
		local root = part or part:GetRootPart()
		self._movedConnection = root:GetPropertyChangedSignal("CFrame"):Connect(handlerTrampoline)
	end
end

return BoundsChangedTracker