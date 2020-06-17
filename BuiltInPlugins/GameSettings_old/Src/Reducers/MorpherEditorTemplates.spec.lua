return function()
	SKIP()

	--[[local pluginRoot = script.Parent.Parent.Parent
	local paths = require(pluginRoot.Code.Paths)
	paths.requireAll(require(pluginRoot.Code.Debug).GetRoactRoduxPath(pluginRoot, require(pluginRoot.Code.UtilityFunctions.UtilityFunctionsService)))

	it("should initialize with templates table if given nil", function()
		local store = paths.Rodux.Store.new(paths.ReducerTemplates)
		expect(store:getState()).to.be.ok()
		expect(store:getState().templates).to.be.ok()
		expect(#store:getState().templates).to.equal(0)
	end)

	it("should initialize with template table with single entry if given startState", function()
		local startState = {
			templates = {paths.StateModelTemplate.new()},
		}

		local store = paths.Rodux.Store.new(paths.ReducerTemplates, startState)
		expect(store:getState()).to.be.ok()
		expect(store:getState().templates).to.be.ok()
		expect(#store:getState().templates).to.equal(1)
	end)

	describe("ActionTemplatesAdd", function()
		it("should add a Morpher template entry", function()
			local store = paths.Rodux.Store.new(paths.ReducerTemplates)

			store:dispatch(paths.ActionTemplatesAdd())

			expect(store:getState().templates).to.be.ok()
			expect(#store:getState().templates).to.equal(1)
		end)
	end)

	describe("ActionTemplatesClobberTemplate", function()
		it("should swap to a new Morpher Template table", function()
			local originalMorpherTemplate = paths.StateModelTemplate.new()
			local startState = {
				templates = {originalMorpherTemplate},
			}

			local store = paths.Rodux.Store.new(paths.ReducerTemplates, startState)

			local clobberredMorpherTemplate = paths.StateModelTemplate.new()
			store:dispatch(paths.ActionTemplatesClobberTemplate(1, clobberredMorpherTemplate))

			expect(store:getState().templates).to.be.ok()
			expect(#store:getState().templates).to.equal(1)
			expect(store:getState().templates[1]).to.be.ok()
			expect(store:getState().templates[1]).to.equal(clobberredMorpherTemplate)
		end)

		it("should set Morpher Template table value", function()
			local startState = {
				templates = {paths.StateModelTemplate.new()},
			}

			local store = paths.Rodux.Store.new(paths.ReducerTemplates, startState)

			local clobberredMorpherTemplate = paths.StateModelTemplate.new()
			clobberredMorpherTemplate.ClothingShirtIDValue = 123
			store:dispatch(paths.ActionTemplatesClobberTemplate(1, clobberredMorpherTemplate))

			expect(store:getState().templates).to.be.ok()
			expect(#store:getState().templates).to.equal(1)
			expect(store:getState().templates[1].ClothingShirtIDValue).to.equal(123)
		end)

		it("passing a nil table key should not change the templates table", function()
			local originalMorpherTemplate = paths.StateModelTemplate.new()
			local startState = {
				templates = {originalMorpherTemplate},
			}

			local store = paths.Rodux.Store.new(paths.ReducerTemplates, startState)

			store:dispatch(paths.ActionTemplatesClobberTemplate(nil, paths.StateModelTemplate.new()))

			expect(store:getState().templates).to.be.ok()
			expect(#store:getState().templates).to.equal(1)
			expect(store:getState().templates[1]).to.be.ok()
			expect(store:getState().templates[1]).to.equal(originalMorpherTemplate)
		end)

		it("passing a new table key should not change the templates table", function()
			local originalMorpherTemplate = paths.StateModelTemplate.new()
			local startState = {
				templates = {originalMorpherTemplate},
			}

			local store = paths.Rodux.Store.new(paths.ReducerTemplates, startState)

			store:dispatch(paths.ActionTemplatesClobberTemplate(2, paths.StateModelTemplate.new()))

			expect(store:getState().templates).to.be.ok()
			expect(#store:getState().templates).to.equal(1)
			expect(store:getState().templates[1]).to.be.ok()
			expect(store:getState().templates[1]).to.equal(originalMorpherTemplate)
		end)
	end)]]
end