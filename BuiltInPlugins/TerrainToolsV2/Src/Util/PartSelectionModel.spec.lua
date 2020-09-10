local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)

local TestHelpers = Framework.TestHelpers
local makeSettableValue = TestHelpers.makeSettableValue
local MockSelectionService = TestHelpers.Instances.MockSelectionService
local setEquals = TestHelpers.setEquals

local PartConverterUtil = require(Plugin.Src.Util.PartConverterUtil)

local PartSelectionModel = require(script.Parent.PartSelectionModel)

return function()
	local function createPartSelectionModel()
		local selection = makeSettableValue({})
			local psm = PartSelectionModel.new({
				getSelection = selection.get,
				selectionChanged = selection.changed,
				getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
			})
		return selection, psm
	end

	describe("its constructor", function()
		it("should be creatable", function()
			local mockSelectionService = MockSelectionService.new()
			local psm = PartSelectionModel.new({
				getSelection = function()
					return mockSelectionService:Get()
				end,
				selectionChanged = mockSelectionService.SelectionChanged,
				getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
			})
			expect(psm).to.be.ok()
			psm:destroy()
		end)

		it("should require an options table", function()
			expect(function() PartSelectionModel.new() end).to.throw()
		end)

		it("should require a getSelection callback", function()
			expect(function()
				PartSelectionModel.new({
					selectionChanged = MockSelectionService.new().SelectionChanged,
					getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
				})
			end).to.throw()
		end)

		it("should require a selectionChanged signal", function()
			expect(function()
				PartSelectionModel.new({
					getSelection = function() end,
					getValidAndWarnings = PartConverterUtil.getValidInstancesAndWarnings,
				})
			end).to.throw()
		end)

		it("should require a getValidAndWarnings callback", function()
			expect(function()
				PartSelectionModel.new({
					getSelection = function() end,
					selectionChanged = MockSelectionService.new().SelectionChanged,
				})
			end).to.throw()
		end)
	end)

	describe("update selection", function()
		it("should get the selection when it changes", function()
			local selection, psm = createPartSelectionModel()

			expect(#psm:getSelection()).to.equal(0)
			expect(setEquals(psm:getSelectionSet(), {})).to.equal(true)

			local p = Instance.new("Part")
			selection.set({p})

			expect(#psm:getSelection()).to.equal(1)
			expect(psm:getSelection()[1]).to.equal(p)
			expect(setEquals(psm:getSelectionSet(), {[p] = true})).to.equal(true)

			psm:destroy()
		end)

		it("should filter valid and invalid instances", function()
			local selection, psm = createPartSelectionModel()

			expect(psm:hasValidInstances()).to.equal(false)
			expect(setEquals(psm:getValidInstancesSet(), {})).to.equal(true)
			expect(psm:hasWarnings()).to.equal(false)

			local m = Instance.new("Model")
			local p = Instance.new("Part")
			p.Size = Vector3.new(10, 10, 10)
			p.Parent = m

			selection.set({p})

			expect(psm:hasValidInstances()).to.equal(true)
			expect(setEquals(psm:getValidInstancesSet(), {[p] = true})).to.equal(true)
			expect(psm:hasWarnings()).to.equal(false)

			local v = Instance.new("IntValue")
			selection.set({p, v})

			expect(psm:hasValidInstances()).to.equal(true)
			expect(setEquals(psm:getValidInstancesSet(), {[p] = true})).to.equal(true)
			expect(psm:hasWarnings()).to.equal(true)

			selection.set({v})

			expect(psm:hasValidInstances()).to.equal(false)
			expect(setEquals(psm:getValidInstancesSet(), {})).to.equal(true)
			expect(psm:hasWarnings()).to.equal(true)

			psm:destroy()
		end)

		it("should fire instance selected and deselected events", function()
			local selection, psm = createPartSelectionModel()

			-- Keep track of what instances were selected/deselected
			-- Reset these sets after checking them
			local selectedSet = {}
			local deselectedSet = {}

			local selectionConnection = psm:subscribeToInstanceSelected(function(instance)
				selectedSet[instance] = true
			end)
			local deselectionConnection = psm:subscribeToInstanceDeselected(function(instance)
				deselectedSet[instance] = true
			end)

			local p = Instance.new("Part")
			selection.set({p})
			expect(setEquals(selectedSet, {[p] = true})).to.equal(true)
			selectedSet = {}

			local v = Instance.new("IntValue")
			selection.set({p, v})
			expect(setEquals(selectedSet, {[v] = true})).to.equal(true)
			selectedSet = {}

			local m = Instance.new("Model")
			selection.set({p, v, m})
			expect(setEquals(selectedSet, {[m] = true})).to.equal(true)
			selectedSet = {}

			selection.set({p, m})
			expect(setEquals(deselectedSet, {[v] = true})).to.equal(true)
			deselectedSet = {}

			selection.set({})
			expect(setEquals(deselectedSet, {[p] = true, [m] = true})).to.equal(true)
			-- deselectedSet = {}

			selection.set({v, m})
			expect(setEquals(selectedSet, {[v] = true, [m] = true})).to.equal(true)
			-- selectedSet = {}

			selectionConnection:Disconnect()
			deselectionConnection:Disconnect()
			psm:destroy()
		end)
	end)

	describe("isInstanceOrAncestorsSelected", function()
		it("should work", function()
			local selection, psm = createPartSelectionModel()

			local m = Instance.new("Model")
			local p = Instance.new("Part")
			p.Parent = m

			selection.set({})
			expect(psm:isInstanceOrAncestorsSelected(p)).to.equal(false)
			expect(psm:isInstanceOrAncestorsSelected(m)).to.equal(false)

			selection.set({p})
			expect(psm:isInstanceOrAncestorsSelected(p)).to.equal(true)
			expect(psm:isInstanceOrAncestorsSelected(m)).to.equal(false)

			selection.set({m})
			expect(psm:isInstanceOrAncestorsSelected(p)).to.equal(true)
			expect(psm:isInstanceOrAncestorsSelected(m)).to.equal(true)

			selection.set({m, p})
			expect(psm:isInstanceOrAncestorsSelected(p)).to.equal(true)
			expect(psm:isInstanceOrAncestorsSelected(m)).to.equal(true)

			psm:destroy()
		end)
	end)
end
