local Packages = script:FindFirstAncestor("ApolloLocalState").Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local expect = JestGlobals.expect
local OmniFeedItemPolicy = require(script.Parent.OmniFeedItem)
local GetFFlagApolloClientFetchExperiences = require(Packages.SharedFlags).GetFFlagApolloClientFetchExperiences

local function makeMockReadField(fieldMap)
	return {
		readField = function(_self, key)
			return fieldMap[key]
		end,
	}
end

return function()
	if GetFFlagApolloClientFetchExperiences() then
		describe("hasMoreRows", function()
			local readHasMoreRows = OmniFeedItemPolicy.fields.hasMoreRows.read :: (any, any, any) -> boolean

			it("should return false for empty lists and nil", function()
				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = {},
						recommendations = {},
					})
				)).toEqual(false)

				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = nil,
						recommendations = nil,
					})
				)).toEqual(false)

				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = nil,
						recommendations = {},
					})
				)).toEqual(false)

				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = {},
						recommendations = nil,
					})
				)).toEqual(false)
			end)

			it("should return false when there are as many experiences as recommendations", function()
				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = { 1, 2, 3, 4 },
						recommendations = { 1, 2, 3, 4 },
					})
				)).toEqual(false)
			end)

			it("should return true when there are fewer experiences than recommendations", function()
				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = { 1, 2, 3 },
						recommendations = { 1, 2, 3, 4 },
					})
				)).toEqual(true)

				expect(readHasMoreRows(
					nil,
					nil,
					makeMockReadField({
						experiences = nil,
						recommendations = { 1, 2, 3, 4 },
					})
				)).toEqual(true)
			end)
		end)
	end
end
