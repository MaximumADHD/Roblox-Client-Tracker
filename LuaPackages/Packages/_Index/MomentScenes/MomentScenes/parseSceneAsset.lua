--[[
	Parse a moment scene asset (loaded instance tree) into a ParsedSceneAsset.

	A moment scene asset is a Folder (or Model wrapper from InsertService)
	containing Value objects that describe the scene recipe:

	  MomentScene/              -- or the top-level wrapper from LoadAsset
	    Type: StringValue       -- e.g. "AvatarMoment"
	    Args/                   -- Folder of typed Value instances
	      outfitId: IntValue    -- or userId, exactly one positive id
	      cameraPath: StringValue
	      emoteId: IntValue
	      userIds/1, userIds/2  -- Folder of IntValues, read in name order

	The parser reads whatever Value children exist under Args/ and builds
	a flat table. Unknown keys pass through unchanged — builders decide
	what they accept. If Args/ is missing the args table is empty. A class
	the parser cannot read leaves its array slot empty and warns, so a
	builder sees a gap at the authored index rather than a shifted list.

	Parsing is deliberately lenient about Type: an asset may omit it and let
	the job supply it, so this returns ParsedSceneAsset (type is optional)
	rather than SceneSpec. Resolve `type` before calling createMomentScene.
]]
local Types = require(script.Parent.Types)

type ParsedSceneAsset = Types.ParsedSceneAsset

local function readValue(inst: Instance): any
	if inst:IsA("StringValue") then
		return inst.Value
	elseif inst:IsA("IntValue") or inst:IsA("NumberValue") then
		return inst.Value
	elseif inst:IsA("BoolValue") then
		return inst.Value
	elseif inst:IsA("Color3Value") then
		return inst.Value
	elseif inst:IsA("Vector3Value") then
		return inst.Value
	elseif inst:IsA("CFrameValue") then
		return inst.Value
	elseif inst:IsA("ObjectValue") then
		return inst.Value
	elseif inst:IsA("Folder") then
		local children = inst:GetChildren()
		-- An array is a folder whose children are *named* 1, 2, 3. Keying off
		-- "are all children ValueBase" instead would flatten a record like
		-- camera/{fov, distance} into a positional list and drop the names, in
		-- whatever order GetChildren happened to return.
		local indexed: { { index: number, child: Instance } } = {}
		local isArray = #children > 0
		for _, child in children do
			local index = tonumber(child.Name)
			if index == nil or index < 1 or index % 1 ~= 0 then
				isArray = false
				break
			end
			table.insert(indexed, { index = index, child = child })
		end
		if isArray then
			table.sort(indexed, function(a, b)
				return a.index < b.index
			end)
			local arr = {}
			for position, entry in indexed do
				local value = readValue(entry.child)
				-- Assigned by position instead of appended. readValue returns nil
				-- for a class this parser does not read, and appending would
				-- renumber every entry after it, so `userIds/{1,2,3}` with an
				-- unreadable 2 would hand the builder 3's id as the second user.
				arr[position] = value
				if value == nil then
					warn(
						`parseSceneAsset: {entry.child:GetFullName()} is a {entry.child.ClassName}, which holds no value this parser reads. Slot {position} is empty.`
					)
				end
			end
			return arr
		end
		local map = {}
		for _, child in children do
			map[child.Name] = readValue(child)
		end
		return map
	end
	return nil
end

-- Two shapes to handle: the wrapper is the scene folder, or it contains it.
-- InsertService:LoadAsset always wraps, a host holding the tree already does not.
-- MomentScene is matched by name first so a wrapper with several children
-- resolves the same way every time rather than by GetChildren order; the child
-- scan below is the fallback for a folder the author named something else.
local function findSceneFolder(wrapper: Instance): Instance?
	local named = wrapper:FindFirstChild("MomentScene")
	if named ~= nil then
		return named
	end
	if wrapper:FindFirstChild("Type") ~= nil then
		return wrapper
	end
	if wrapper:FindFirstChild("Args") ~= nil then
		return wrapper
	end
	for _, child in wrapper:GetChildren() do
		if child:FindFirstChild("Type") ~= nil or child:FindFirstChild("Args") ~= nil then
			return child
		end
	end
	return wrapper
end

local function parseSceneAsset(wrapper: Instance): ParsedSceneAsset
	local folder = findSceneFolder(wrapper)

	local typeName: string? = nil
	local typeValue = if folder then folder:FindFirstChild("Type") else nil
	if typeValue ~= nil and typeValue:IsA("StringValue") then
		typeName = typeValue.Value
	end

	local args: { [string]: any } = {}
	local argsFolder = if folder then folder:FindFirstChild("Args") else nil
	if argsFolder ~= nil then
		for _, child in argsFolder:GetChildren() do
			args[child.Name] = readValue(child)
		end
	end

	return {
		type = typeName,
		args = args,
	}
end

return parseSceneAsset
