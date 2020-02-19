local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers

local PartSelectionModel = require(script.Parent.PartSelectionModel)

local MockSelectionService = require(TestHelpers.MockSelectionService)

return function()
	describe("its constructor", function()
		it("should be creatable", function()
			local mockSelectionService = MockSelectionService.new()
			local psm = PartSelectionModel.new({
				getSelection = function()
					return mockSelectionService:Get()
				end,
				selectionChanged = mockSelectionService.SelectionChanged,
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
				})
			end).to.throw()
		end)

		it("should require a selectionChanged signal", function()
			expect(function()
				PartSelectionModel.new({
					getSelection = function() end,
				})
			end).to.throw()
		end)
	end)

	describe("selection convertible", function()
		it("should update correctly", function()
			local mockSelectionService = MockSelectionService.new()

			local psm = PartSelectionModel.new({
				getSelection = function()
					return mockSelectionService:Get()
				end,
				selectionChanged = mockSelectionService.SelectionChanged,
			})

			expect(psm:isSelectionConvertible()).to.equal(false)

			local model = Instance.new("Model")
			local part = Instance.new("Part", model)

			mockSelectionService:Set({part})
			expect(psm:isSelectionConvertible()).to.equal(true)

			mockSelectionService:Set({})
			expect(psm:isSelectionConvertible()).to.equal(false)

			psm:destroy()
		end)
	end)
end
