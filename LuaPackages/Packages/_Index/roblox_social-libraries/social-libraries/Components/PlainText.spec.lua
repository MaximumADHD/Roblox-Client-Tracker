return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local dependencies = require(SocialLibraries.dependencies)
	local Roact = dependencies.Roact

	local PlainText = require(script.Parent.PlainText)

	describe("lifecycle", function()
		it("should mount and unmount without issue", function(context)
			local _, cleanup = context.UnitTestHelpers.mountFrame(Roact.createElement(PlainText))

			cleanup()
		end)
	end)

	describe("props isPending", function()
		it("SHOULD have a higher TextTransparency when its pending", function(context)
			local plainText = Roact.createElement(PlainText, {
				isPending = false,
			})
			local pendingPlainText = Roact.createElement(PlainText, {
				isPending = true,
			})
			local plainTextTree, plainTextCleanup = context.UnitTestHelpers.mountFrame(plainText)
			local pendingPlainTextTree, pendingPlainTextCleanup = context.UnitTestHelpers.mountFrame(pendingPlainText)

			local plainTextContent = plainTextTree:findFirstChild("textContent", true)
			local pendingPlainTextContent = pendingPlainTextTree:findFirstChild("textContent", true)

			expect(plainTextContent.TextTransparency < pendingPlainTextContent.TextTransparency).to.equal(true)

			plainTextCleanup()
			pendingPlainTextCleanup()
		end)

		it("SHOULD not be transparent if not pending", function(context)
			local chatBubbleContainer = Roact.createElement(PlainText, {
				isPending = false,
			})
			local tree, cleanup = context.UnitTestHelpers.mountFrame(chatBubbleContainer)

			local textContent = tree:findFirstChild("textContent", true)

			expect(textContent.TextTransparency).to.equal(0)

			cleanup()
		end)
	end)
end
