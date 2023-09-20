return function()
	local InspectAndBuyFolder = script.Parent.Parent
	local SetExperienceInfo = require(InspectAndBuyFolder.Actions.SetExperienceInfo)
	local CreatingExperiences = require(script.Parent.CreatingExperiences)
	local ExperienceInfo = require(InspectAndBuyFolder.Models.ExperienceInfo)

	local MOCK_EXPERIENCE = ExperienceInfo.mock()
	MOCK_EXPERIENCE.universeId = "123"

	local MOCK_NAME = "Mock Name"

	local function countKeys(t)
		local count = 0
		for _ in pairs(t) do
			count = count + 1
		end
		return count
	end

	describe("SetExperienceInfo", function()
		it("should set a single experience's info", function()
			local newState = CreatingExperiences(nil, SetExperienceInfo(MOCK_EXPERIENCE))

			expect(newState[MOCK_EXPERIENCE.universeId].universeId).to.equal(MOCK_EXPERIENCE.universeId)
			expect(countKeys(newState)).to.equal(1)
		end)

		it("should update an experience", function()
			local newState = CreatingExperiences(nil, SetExperienceInfo(MOCK_EXPERIENCE))

			expect(newState[MOCK_EXPERIENCE.universeId].universeId).to.equal(MOCK_EXPERIENCE.universeId)
			expect(countKeys(newState)).to.equal(1)

			local updatedExperience = MOCK_EXPERIENCE
			updatedExperience.name = MOCK_NAME

			newState = CreatingExperiences(newState, SetExperienceInfo(updatedExperience))

			expect(newState[MOCK_EXPERIENCE.universeId].universeId).to.equal(MOCK_EXPERIENCE.universeId)
			expect(newState[MOCK_EXPERIENCE.universeId].name).to.equal(MOCK_NAME)
			expect(countKeys(newState)).to.equal(1)
		end)
	end)
end
