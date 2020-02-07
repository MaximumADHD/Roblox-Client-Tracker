-- This test will be removed with the flag as the file it tests is no longer used
-- TestEZ expects a spec file to return a function, so just return an empty one
if game:GetFastFlag("TerrainToolsRefactorSculptOperations") then
	return function() end
end

local smoothBrush = require(script.Parent.smoothBrush)

return function()
	it("should return a function", function()
		expect(type(smoothBrush)).to.equal("function")
	end)
end
