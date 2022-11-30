local CollectionService = game:GetService("CollectionService")

local ALWAYS_TRANSPARENT_PART_TAG = "__RBX__LOCKED_TRANSPARENT"

local connections = {}

local function maintainPropertyValue(instance, prop, value)
	local function setPropValue()
		if instance[prop] ~= value then
			instance[prop] = value
		end
	end

	if not connections[instance] then
		connections[instance] = {}
	end

	local existingConnection = connections[instance][prop]
	if existingConnection then
		existingConnection:Disconnect()
	end

	local propertyChanged = instance:GetPropertyChangedSignal(prop)
	connections[instance][prop] = propertyChanged:Connect(setPropValue)
	setPropValue()
end

local function onTransparentPartAdded(instance)
	if not instance:IsA("BasePart") then
		return
	end

	maintainPropertyValue(instance, "LocalTransparencyModifier", 1)
end

local function onTransparentPartRemoved(instance)
	local instanceConnections = connections[instance]
	if not instanceConnections then
		return
	end

	for _, connection in instanceConnections do
		connection:Disconnect()
	end
	connections[instance] = nil
end

CollectionService:GetInstanceAddedSignal(ALWAYS_TRANSPARENT_PART_TAG):Connect(onTransparentPartAdded)
CollectionService:GetInstanceRemovedSignal(ALWAYS_TRANSPARENT_PART_TAG):Connect(onTransparentPartRemoved)

for _, object in CollectionService:GetTagged(ALWAYS_TRANSPARENT_PART_TAG) do
	onTransparentPartAdded(object)
end
