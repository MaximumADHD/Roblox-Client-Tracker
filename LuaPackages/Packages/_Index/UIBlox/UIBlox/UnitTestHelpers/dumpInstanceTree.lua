local function dumpInstanceTree(instance: Instance?, indent: string?)
	indent = indent or ""
	assert(indent ~= nil, "indent must be a string")

	if instance == nil then
		print(indent .. "[nil Instance]")
		return
	end

	assert(instance ~= nil, "instance must be non-nil")
	print(indent .. instance.Name)
	indent ..= "  "
	for _, child in ipairs(instance:GetChildren()) do
		dumpInstanceTree(child, indent)
	end
end

return dumpInstanceTree
