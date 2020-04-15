return function()
	SKIP()

	--[[local pluginRoot = script.Parent.Parent.Parent
	local paths = require(pluginRoot.Code.Paths)
	paths.requireAll(require(pluginRoot.Code.Debug).GetRoactRoduxPath(pluginRoot, require(pluginRoot.Code.UtilityFunctions.UtilityFunctionsService)))

	it("should return a table", function()
		local action = paths.ActionTemplatesAdd()

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		expect(paths.ActionTemplatesAdd.name).to.equal("ActionTemplatesAdd")
	end)

	it("should set the type", function()
		local action = paths.ActionTemplatesAdd()

		expect(action.type).to.equal(paths.ActionTemplatesAdd.name)
	end)

	it("should try to add one morpher template", function()
		local action = paths.ActionTemplatesAdd()

		expect(action.templatesArrayToAdd).to.be.ok()
		expect(#action.templatesArrayToAdd).to.equal(1)
		expect(action.templatesArrayToAdd[1].__index).to.equal(paths.StateModelTemplate)
	end)]]
end
