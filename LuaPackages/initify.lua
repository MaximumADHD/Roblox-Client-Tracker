--[[
	Restructures a tree of ModuleScript objects to emulate the behavior of stock
	Lua and Rojo's `init.lua` mechanism, which essentially lets you load folders
	as modules.

	A file structure like this:

	foo (directory)
	`-- bar (directory)
		`-- init.lua (file)

	Is turned into:

	foo (Folder)
	`-- bar (ModuleScript)
]]

local function initify(rbx)
	local init = rbx:FindFirstChild("init")

	if init then
		init.Name = rbx.Name
		init.Parent = rbx.Parent

		for _, child in ipairs(rbx:GetChildren()) do
			child.Parent = init
		end

		rbx:Destroy()
		rbx = init
	end

	for _, child in ipairs(rbx:GetChildren()) do
		initify(child)
	end

	return rbx
end

return initify