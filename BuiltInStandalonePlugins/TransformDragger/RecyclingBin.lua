-- @CloneTrooper1019 <3

local recyclingBin = {}
local bin = {}
local expirationTime = 5

local HttpService = game:GetService("HttpService")

function recyclingBin:Recycle(object)
	local class = object.ClassName
	local classBin = bin[class]
	if not classBin then
		classBin = {}
		bin[class] = classBin
	end
	local expirationGuid = HttpService:GenerateGUID(false)
	classBin[object] = expirationGuid;
	delay(expirationTime,function ()
		if classBin[object] == expirationGuid then
			classBin[object] = nil
			object:Destroy()
		end
	end)
	object.Parent = nil
end

function recyclingBin:RecycleObjects(objects)
	for _,v in pairs(objects) do
		self:Recycle(v)
	end	
end

function recyclingBin:Pull(objectType,parent)
	local object do
		local objects = bin[objectType]
		if objects then
			object = next(objects)
			if object then
				objects[object] = nil
			end
		end
	end
	if not object then
		object = Instance.new(objectType)
	end
	if parent then
		object.Parent = parent
	end
	return object
end

-- Allocate works similarly to Pull, except it tries to reuse objects that exist in the specified bin.
-- This removes the need to recycle every object during every frame.

function recyclingBin:Allocate(objectType,needed,allocationStorage)
	local allocation = {}
	local allocated = 0
	for _,v in pairs(allocationStorage:GetChildren()) do
		if v:IsA(objectType) then
			allocated = allocated + 1
			if allocated > needed then
				self:Recycle(v)
			else
				allocation[allocated] = v
			end
		end
	end
	while allocated < needed do
		allocated = allocated + 1
		allocation[allocated] = self:Pull(objectType,allocationStorage)
	end
	return allocation
end

return recyclingBin