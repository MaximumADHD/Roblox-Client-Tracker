return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)

	local Roact = dependencies.Roact
	local AvatarCircle = require(script.Parent.AvatarCircle)

	local function CountHeadshots(container)
		local headshots = 0

		for _, element in pairs(container:GetChildren()) do
			if element.className == "Frame" then
				headshots = headshots + 1
			end
		end

		return headshots
	end

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AvatarCircle))

			cleanup()
		end)
	end)

	it("should have a single frame element in the center frame when given one thumbnail", function(context)
		local elementContainer, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AvatarCircle, {
			thumbnails = {
				"",
			}
		}))

		expect(CountHeadshots(elementContainer:FindFirstChild("center", true).elementContainer)).to.equal(1)

		cleanup()
	end)

	it("should have a frame element on the left and a frame element on the right when given two thumbnails",
		function(context)
			local elementContainer, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AvatarCircle, {
				thumbnails = {
					"",
					"",
				}
			}))

			expect(CountHeadshots(elementContainer:FindFirstChild("right", true).elementContainer)).to.equal(1)
			expect(CountHeadshots(elementContainer:FindFirstChild("left", true).elementContainer)).to.equal(1)

			cleanup()
		end
	)

	it("should have 1 frame element on the left and 2 frame elements on the right when given 3 thumbnails",
		function(context)
			local elementContainer, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AvatarCircle, {
				thumbnails = {
					"",
					"",
					"",
				}
			}))

			expect(CountHeadshots(elementContainer:FindFirstChild("right", true).elementContainer)).to.equal(2)
			expect(CountHeadshots(elementContainer:FindFirstChild("left", true).elementContainer)).to.equal(1)

			cleanup()
		end
	)

	it("should have 2 frame elements on the left and 2 frame elements on the right when given 4 thumbnails",
		function(context)
			local elementContainer, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(AvatarCircle, {
				thumbnails = {
					"",
					"",
					"",
					"",
				}
			}))

			expect(CountHeadshots(elementContainer:FindFirstChild("right", true).elementContainer)).to.equal(2)
			expect(CountHeadshots(elementContainer:FindFirstChild("left", true).elementContainer)).to.equal(2)

			cleanup()
		end
	)
end
