local StylingService = game:GetService("StylingService")

local concat = table.concat
local insert = table.insert

local function printStyleSheetHierarchy(plugin: Plugin)
	local lines = {}
	local root = plugin:FindFirstChildWhichIsA("Folder")
	local pluginName = root.Name
	local design = StylingService:FindFirstChild(pluginName):FindFirstChild("Design")
	assert(design and design:IsA("StyleSheet"), "Expected design to be a StyleSheet")

	local visited = {}
	local queue = { design }
	local i = 1
	while i <= #queue do
		local sheet = queue[i]
		if not visited[sheet] then
			visited[sheet] = true
			local derivesList = {}
			for _, derivation in sheet:GetDerives() do
				insert(derivesList, derivation.Name)
				insert(queue, derivation)
			end
			insert(lines, `{sheet.Name} -> {concat(derivesList, ",")}`)
		end
		i += 1
	end
	return concat(lines, "\n")
end

return printStyleSheetHierarchy
