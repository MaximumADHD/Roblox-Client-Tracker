--	// FileName: TransparencyTweener.lua
--	// Written by: Xsitsu
--	// Description: Data structure for tweening transparency of a group of objects as one unit.

local module = {}

local RunService = game:GetService("RunService")
--////////////////////////////// Include
--//////////////////////////////////////
local modulesFolder = script.Parent

--// Can't use ClassMaker in it's current state since this uses custom __index and __newindex.
--// Maybe in the future I'll expand that to be more powerful, but it's alright like this for now.

--////////////////////////////// Details
--//////////////////////////////////////
local metatable = {}
metatable.__ClassName = "TransparencyTweener"

metatable.__tostring = function(tbl)
	return tbl.__ClassName .. ": " .. tbl.MemoryLocation
end

metatable.__metatable = "The metatable is locked"
metatable.__index = function(tbl, index, value)
	if rawget(tbl, index) then return rawget(tbl, index) end
	if rawget(metatable, index) then return rawget(metatable, index) end

	if (index == "Transparency") then
		return rawget(tbl, "InternalLastTweenPercentage")
	end

	error(index .. " is not a valid member of " .. tbl.__ClassName)
end
metatable.__newindex = function(tbl, index, value)
	if (index == "Transparency") then
		tbl.InternalLastTweenPercentage = value
		tbl:SetPropertiesToTweenPercentage(value)
		return
	end

	error(index .. " is not a valid member of " .. tbl.__ClassName)
end


--////////////////////////////// Methods
--//////////////////////////////////////
function metatable:Dump()
	local str = tostring(self)

	for tweenObject, objectProperties in pairs(self.TweenObjects) do
		local addStr = " | "
		if (type(tweenObject) == "table") then
			addStr = addStr .. "{{" .. tweenObject:Dump() .. "}}"
		elseif (type(tweenObject) == "userdata") then
			addStr = addStr .. tweenObject.Name .. "/" .. (tweenObject.Parent and tweenObject.Parent.Name or nil)
		end

		for propertyName, baseValue in pairs(objectProperties) do
			addStr =  addStr .. " [" .. propertyName .. "=" .. string.sub(tostring(baseValue), 1, 4) .. "]"
		end

		str = str .. addStr
	end

	return str
end

function metatable:OutputTest()
	print("Test Output for {={" .. self:Dump() .. "}=}")
	for tweenObject, objectProperties in pairs(self.TweenObjects) do
		print("TweenObject:", tweenObject)
		for propertyName, baseValue in pairs(objectProperties) do
			print("\t[" .. propertyName .. "=" .. string.sub(tostring(baseValue), 1, 4) .. "] Actual:" .. tweenObject[propertyName])
		end
	end
end

function metatable:RegisterTweenObjectProperty(objectValue, propertyName, baseValue)
	baseValue = baseValue or objectValue[propertyName]

	if (not self.TweenObjects[objectValue]) then
		self.TweenObjects[objectValue] = {}
	end

	self.TweenObjects[objectValue][propertyName] = baseValue

	self:SetObjectPropertyToPercentValue(objectValue, propertyName, baseValue, self.InternalLastTweenPercentage)
end

function metatable:UnregisterTweenObject(objectValue)
	self.TweenObjects[objectValue] = nil
end

function metatable:SetObjectPropertyToPercentValue(objectValue, propertyName, baseValue, percentValue)
	local tweenOverValue = 1 - baseValue
	local actualValue = baseValue + (tweenOverValue * percentValue)
	objectValue[propertyName] = actualValue
end

function metatable:SetPropertiesToTweenPercentage(percentValue)
	for tweenObject, objectProperties in pairs(self.TweenObjects) do
		for propertyName, baseValue in pairs(objectProperties) do
			self:SetObjectPropertyToPercentValue(tweenObject, propertyName, baseValue, percentValue)
		end
	end
end

function metatable:Tween(duration, targetPercentage, startingPercentage)
	if (self.Tweening) then
		self.QueuedTween = {duration,  targetPercentage, startingPercentage}
		self.TweenIsQueued = true
		self:CancelTween()
		return
	end
	self.Tweening = true

	local vStartingPercentage = startingPercentage

	if (vStartingPercentage) then
		self:SetPropertiesToTweenPercentage(vStartingPercentage)
	else
		vStartingPercentage = self.InternalLastTweenPercentage
	end

	local startTime = tick()
	local endTime = startTime + duration
	local tweeningOverPercentage = targetPercentage - vStartingPercentage

	local percentComplete = 0
	spawn(function()
		local now = tick()
		while(now < endTime and not self.Canceled) do
			percentComplete = math.min(math.max((now - startTime) / duration, 0), 1)
			local percentValue = vStartingPercentage + (tweeningOverPercentage * percentComplete)
			self.InternalLastTweenPercentage = percentValue
			self:SetPropertiesToTweenPercentage(percentValue)

			RunService.RenderStepped:wait()
			now = tick()
		end

		if (not self.Canceled) then
			self.InternalLastTweenPercentage = targetPercentage
			self:SetPropertiesToTweenPercentage(targetPercentage)

		else
			self.Canceled = false

			if (self.TweenIsQueued) then
				self.TweenIsQueued = false
				self.Tweening = false
				self:Tween(unpack(self.QueuedTween))
				return
			end
		end

		self.Tweening = false
	end)
end

function metatable:CancelTween()
	self.Canceled = true
end

--///////////////////////// Constructors
--//////////////////////////////////////
function module.new()
	local obj = {}
	obj.MemoryLocation = tostring(obj):match("[0123456789ABCDEF]+")

	--// We do not want to hold strong references to objects.
	obj.TweenObjects = setmetatable({}, {__mode = "k"})

	--// Transparency is a property that doesn't actually exist.
	--// The index of 'Transparency' is used for reading from and
	--// writing to InternalLastTweenPercentage. This needs to be
	--// done through metatables so we can also get the behavior
	--// of calling the method 'SetPropertiesToTweenPercentage'
	--// automatically when a new value is set.

	obj.Transparency = nil
	obj.InternalLastTweenPercentage = 0
	obj.Tweening = false
	obj.Canceled = false

	obj.TweenIsQueued = false
	obj.QueuedTween = {}

	obj = setmetatable(obj, metatable)

	return obj
end

return module
