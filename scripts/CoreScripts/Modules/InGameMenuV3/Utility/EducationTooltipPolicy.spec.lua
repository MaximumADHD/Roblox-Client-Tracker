local EducationTooltipPolicy = require(script.Parent.EducationTooltipPolicy)
local LocalStoreIGM = require(script.Parent.LocalStoreIGM)

return function()
	describe("EducationTooltipPolicy", function()

		if EducationTooltipPolicy.isEnabled() and not game:GetFastFlag("EducationTooltipPolicyDisableAll") then

			beforeEach(function()
				EducationTooltipPolicy.reset("tooltip1")
				EducationTooltipPolicy.reset("tooltip2")
				EducationTooltipPolicy.reset("tooltip3")

			end)

			afterEach(function()
				EducationTooltipPolicy.reset("tooltip1")
				EducationTooltipPolicy.reset("tooltip2")
				EducationTooltipPolicy.reset("tooltip3")

			end)

			it("should load policy and dismiss", function()
				local a = EducationTooltipPolicy.canShow("tooltip3")
				EducationTooltipPolicy.dismissForever("tooltip3")
				local b = EducationTooltipPolicy.canShow("tooltip3")

				expect(a).to.equal(true)
				expect(b).to.equal(false)
			end)

			it("should load policy and dismiss with clean cache", function()
				local a = EducationTooltipPolicy.canShow("tooltip1")
				EducationTooltipPolicy.dismissForever("tooltip1")
				LocalStoreIGM.clearCache()
				local b = EducationTooltipPolicy.canShow("tooltip1")

				expect(a).to.equal(true)
				expect(b).to.equal(false)

			end)

			it("can dismiss before loading", function()
				EducationTooltipPolicy.dismissForever("tooltip1")
				local a = EducationTooltipPolicy.canShow("tooltip1")
				expect(a).to.equal(false)
			end)

			it("can dismiss a different identifier without impact", function()
				local a = EducationTooltipPolicy.canShow("tooltip1")
				EducationTooltipPolicy.dismissForever("tooltip2")
				local b = EducationTooltipPolicy.canShow("tooltip1")
				expect(a).to.equal(true)
				expect(b).to.equal(true)
			end)

		end
	end)
end
