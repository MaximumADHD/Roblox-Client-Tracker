return function()
	SKIP()

	--[[local pluginRoot = script.Parent.Parent.Parent
	local paths = require(pluginRoot.Code.Paths)
	paths.requireAll(require(pluginRoot.Code.Debug).GetRoactRoduxPath(pluginRoot, require(pluginRoot.Code.UtilityFunctions.UtilityFunctionsService)))

	it("should return a table", function()
		local action = paths.ActionTemplatesClobberTemplate()

		expect(action).to.be.a("table")
	end)

	it("should set the name", function()
		expect(paths.ActionTemplatesClobberTemplate.name).to.equal("ActionTemplatesClobberTemplate")
	end)

	it("should set the type", function()
		local action = paths.ActionTemplatesClobberTemplate()

		expect(action.type).to.equal(paths.ActionTemplatesClobberTemplate.name)
	end)

	it("should set values", function()
		local morpherTemplate = paths.StateModelTemplate.new()
		local action = paths.ActionTemplatesClobberTemplate(1, morpherTemplate)

		expect(action.templateToClobber).to.equal(1)
		expect(action.newTemplateModel).to.equal(morpherTemplate)
	end)]]
end
