local Plugin = script.Parent.Parent.Parent

local CopyPath = require(Plugin.Src.Util.CopyPath)

return function()
	it("Copy empty path", function()
		local path = {}
		
		local copiedPath = CopyPath(path)

		expect(#copiedPath).to.equal(0)
	end)

	it("Copy path", function()
		local path = { "Test", "Path", "Copy" }
		
		local copiedPath = CopyPath(path)

		expect(#copiedPath).to.equal(#path)
		for index, directory in ipairs(copiedPath) do
			expect(directory).to.equal(path[index])
		end
	end)
end
