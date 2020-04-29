--[[
	Public interface to access renderable component examples.
	The primary consumer of these examples is the DevFramework Companion,
	which uses these to display inline examples of components along with
	their documentation.
]]

local Render = {}
local examples = script:GetChildren()
for _, example in ipairs(examples) do
	Render[example.Name] = require(example)
end

return Render
