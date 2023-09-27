return function()
	local CorePackages = game:GetService("CorePackages")
	local AvatarIdentificationModule = require(CorePackages.Workspace.Packages.TnSAvatarIdentification)
	type AvatarIDResults = AvatarIdentificationModule.AvatarIDResults

	local JestGlobals = require(CorePackages.JestGlobals)
	local expect = JestGlobals.expect

	local AbuseReportBuilder = require(script.Parent.AbuseReportBuilder)
	local AvatarIdentification

	describe("AbuseReportBuilder", function()
		afterEach(function()
			AbuseReportBuilder.clear()
		end)

		it("should select abusers correctly", function()
			local identifiedAvatars: AvatarIDResults = {
				[38] = {
					player = ({ UserId = 38 } :: any ) :: Player,
					boundingBox = {
						min = Vector2.new(0.25, 0.25),
						max = Vector2.new(0.75, 0.75),
					},
					distance = 10,
					hitRate = 1,
					convexHull = {
						Vector2.new(0.25, 0.25),
						Vector2.new(0.75, 0.25),
						Vector2.new(0.75, 0.75),
						Vector2.new(0.25, 0.75)
					}
				},
				[39] = {
					player = ({ UserId = 39 } :: any ) :: Player,
					boundingBox = {
						min = Vector2.new(0.5, 0.5),
						max = Vector2.new(0.75, 0.75),
					},
					distance = 5,
					hitRate = 1,
					convexHull = {
						Vector2.new(0.5, 0.5),
						Vector2.new(0.75, 0.5),
						Vector2.new(0.75, 0.75),
						Vector2.new(0.5, 0.75)
					}
				},
			}
			AbuseReportBuilder.setIdentifiedAvatars(identifiedAvatars)

			local annotationPoints: {Vector2} = {
				Vector2.new(0.66, 0.66), -- should get 39 first since closer even though both are under point
				Vector2.new(0.37, 0.37)
			}
			AbuseReportBuilder.setAspectRatioDimensions(100, 100)
			AbuseReportBuilder.setAnnotationCircleRadius(0.05)
			AbuseReportBuilder.setAnnotationPoints(annotationPoints)
			local selectedAbusers = AbuseReportBuilder.getSelectedAbusers()
			expect(#selectedAbusers).toBe(2)
			expect(selectedAbusers[1].UserId).toBe(39)
			expect(selectedAbusers[2].UserId).toBe(38)
		end)
	end)
end
