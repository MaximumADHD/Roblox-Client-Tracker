local function createDesign(name: string)
	local root = Instance.new("Folder")
	root.Name = name or "Design"
	root:SetAttribute("StyleCategory", "Design")

	local themes = Instance.new("Folder")
	themes.Name = "Themes"
	themes.Parent = root
	themes:SetAttribute("StyleCategory", "Themes")

	local design = Instance.new("StyleSheet")
	design.Name = "Design"
	design.Parent = root

	local stories = Instance.new("Folder")
	stories.Name = "Stories"
	stories.Parent = root

	return root
end

return createDesign
