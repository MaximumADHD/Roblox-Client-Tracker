--[[
	Dumps a tree representation of the hierarchy rooted at the given Instance
	(for debug purposes).
]]

local IndentedLineBuffer = require(script.Parent.IndentedLineBuffer)

local function dumpInstanceTree(instance, lineBuffer)
	if instance == nil then
		lineBuffer:addLine("[nil Instance]")
		return
	end

	if instance.Name == nil then
		lineBuffer:addLine("[Invalid Instance]")
		return
	end

	lineBuffer:addLine(instance.Name)
	lineBuffer:indent()
	for _, child in ipairs(instance:GetChildren()) do
		dumpInstanceTree(child, lineBuffer)
	end
	lineBuffer:unindent()
end

return function(instance)
	local lineBuffer = IndentedLineBuffer.new()
	dumpInstanceTree(instance, lineBuffer)
	return tostring(lineBuffer)
end
