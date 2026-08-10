local HttpService = game:GetService("HttpService")

local function stripMeshFromGltf(gltfString: string): string
	local data = HttpService:JSONDecode(gltfString)

	-- Remove mesh-related top-level arrays
	data.meshes = nil
	data.materials = nil
	data.textures = nil
	data.images = nil
	data.skins = nil

	-- Remove mesh references from nodes and filter out _Geo nodes
	if data.nodes then
		local keptNodes = {}
		local remappedIndices = {} -- old index -> new index (0-based)
		local removedSet = {}

		-- First pass: identify _Geo nodes to remove
		for i, node in ipairs(data.nodes) do
			if node.name and string.find(node.name, "_Geo$") then
				removedSet[i] = true
			end
		end

		-- Second pass: build kept nodes and index remap
		local newIndex = 0
		for i, node in ipairs(data.nodes) do
			if not removedSet[i] then
				node.mesh = nil
				node.skin = nil
				-- Remove children references to removed nodes
				if node.children then
					local newChildren = {}
					for _, childIdx in ipairs(node.children) do
						if not removedSet[childIdx + 1] then -- glTF uses 0-based indices
							table.insert(newChildren, childIdx)
						end
					end
					node.children = if #newChildren > 0 then newChildren else nil
				end
				table.insert(keptNodes, node)
				remappedIndices[i] = newIndex
				newIndex += 1
			end
		end

		-- Third pass: remap all node index references
		for _, node in ipairs(keptNodes) do
			if node.children then
				for j, childIdx in ipairs(node.children) do
					local oldIdx = childIdx + 1 -- convert 0-based to 1-based for lookup
					if remappedIndices[oldIdx] then
						node.children[j] = remappedIndices[oldIdx]
					end
				end
			end
		end

		-- Remap animation channel target nodes
		if data.animations then
			for _, anim in ipairs(data.animations) do
				if anim.channels then
					for _, channel in ipairs(anim.channels) do
						if channel.target and channel.target.node then
							local oldIdx = channel.target.node + 1
							if remappedIndices[oldIdx] then
								channel.target.node = remappedIndices[oldIdx]
							end
						end
					end
				end
			end
		end

		-- Remap scene root nodes
		if data.scenes then
			for _, scene in ipairs(data.scenes) do
				if scene.nodes then
					local newSceneNodes = {}
					for _, nodeIdx in ipairs(scene.nodes) do
						local oldIdx = nodeIdx + 1
						if remappedIndices[oldIdx] then
							table.insert(newSceneNodes, remappedIndices[oldIdx])
						end
					end
					scene.nodes = newSceneNodes
				end
			end
		end

		data.nodes = keptNodes
	end

	return HttpService:JSONEncode(data)
end

return stripMeshFromGltf
