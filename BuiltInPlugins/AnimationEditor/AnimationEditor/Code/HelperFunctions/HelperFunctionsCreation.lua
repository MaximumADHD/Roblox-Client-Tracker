-- singleton

local Creation = {}

function Creation:make(ty, data)
	local obj = Instance.new(ty)
	for k, v in pairs(data) do
		if type(k) == 'number' then
			v.Parent = obj
		else
			obj[k] = v
		end
	end
	return obj
end

function Creation:tag(obj, tagName)
	if not self:hasTag(obj, tagName) then
		local tag = Instance.new("StringValue")
		tag.Parent = obj
		tag.Name = tagName
		tag.Value = tagName
	end
end

function Creation:hasTag(obj, tagName)
	local tag = obj:FindFirstChild(tagName)
	if tag then
		return true
	end
	return false
end

function Creation:removeTag(obj, tagName)
	local tag = obj:FindFirstChild(tagName)
	if tag then
		tag:Destroy()
	end
end

return Creation