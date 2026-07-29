local Framework = script.Parent.Parent

local Dash = require(Framework.Parent.Dash)
local includes = Dash.includes

local concat = table.concat
local insert = table.insert
local sort = table.sort

export type SnapshotOptions = {
	InstanceProperties: { [string]: { string } }?,
	IgnoreInstances: { string }?,
	Tags: { string }?,
}

local function snapshotLines(instance: Instance, optionsOrNil: SnapshotOptions?)
	local options = optionsOrNil or {}
	if options.IgnoreInstances and includes(options.IgnoreInstances, instance.ClassName) then
		return {}
	end
	local properties = options.InstanceProperties and options.InstanceProperties[instance.ClassName] or nil
	local propertyString = ""
	local propertyValues = {}
	if properties then
		for _, name in ipairs(properties) do
			local value = (instance :: any)[name]
			if typeof(value) == "string" then
				value = ("%q"):format(value)
			elseif
				typeof(value) == "number"
				or typeof(value) == "boolean"
				or typeof(value) == "userdata"
				or typeof(value) == "function"
				or typeof(value) == "table"
			then
				value = tostring(value)
			else
				value = ("%s(%s)"):format(typeof(value), tostring(value))
			end
			insert(propertyValues, ("%s=%s"):format(name, value))
		end
		propertyString = (" %s"):format(concat(propertyValues, " "))
	end
	local tagsString = ""
	if options.Tags then
		local tags = {}
		for _, tag in options.Tags do
			if instance:HasTag(tag) then
				insert(tags, `.{tag}`)
			end
		end
		tagsString = if #tags > 0 then ` {concat(tags, " ")}` else ""
	end
	if #instance:GetChildren() == 0 then
		return { ("<%s #%s%s%s/>"):format(instance.ClassName, instance.Name, tagsString, propertyString) }
	end
	local lines = { ("<%s #%s%s%s>"):format(instance.ClassName, instance.Name, tagsString, propertyString) }
	local children = {}
	local useLayoutOrder = false
	for _, child in ipairs(instance:GetChildren()) do
		insert(children, child)
		if child:IsA("UIListLayout") and child.SortOrder == Enum.SortOrder.LayoutOrder then
			useLayoutOrder = true
		end
	end
	sort(children, function(a, b)
		if useLayoutOrder and a:IsA("GuiObject") and b:IsA("GuiObject") then
			return a.LayoutOrder < b.LayoutOrder
		else
			return a.Name < b.Name
		end
	end)
	for _, child in ipairs(children) do
		local childLines = snapshotLines(child, options)
		for _, line in ipairs(childLines) do
			insert(lines, "\t" .. line)
		end
	end
	insert(lines, ("</%s>"):format(instance.ClassName))
	return lines
end

local function getInstanceSnapshot(instance: Instance, options: SnapshotOptions?)
	return concat(snapshotLines(instance, options), "\n")
end

return getInstanceSnapshot
