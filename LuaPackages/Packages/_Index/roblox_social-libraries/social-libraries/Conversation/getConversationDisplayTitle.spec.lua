return function()
	local SocialLibraries = script:FindFirstAncestor("social-libraries")
	local Packages = SocialLibraries.Parent
	local JestGlobals = require(Packages.Dev.JestGlobals)
	local jestExpect = JestGlobals.expect
	local getConversationDisplayTitle = require(script.Parent.getConversationDisplayTitle)

	describe("GIVEN a conversation with only a title", function()
		describe("GIVEN a title with no new lines", function()
			local conversation = {
				title = "hello world",
			}
			it("SHOULD return the title as-is", function()
				getConversationDisplayTitle(conversation)

				local title = getConversationDisplayTitle(conversation)

				jestExpect(title).toEqual("hello world")
			end)
		end)

		describe("GIVEN a title with new lines", function()
			local conversation = {
				title = "hello\nworld",
			}
			it("SHOULD return the title as-is", function()
				local title = getConversationDisplayTitle(conversation)

				jestExpect(title).toBe("helloworld")
			end)
		end)
	end)

	describe("GIVEN a conversation with only a titleForViewer", function()
		describe("GIVEN a titleForViewer with no new lines", function()
			local conversation = {
				titleForViewer = "hello world",
			}
			it("SHOULD return the titleForViewer as-is", function()
				local title = getConversationDisplayTitle(conversation)
				jestExpect(title).toBe("hello world")
			end)
		end)

		describe("GIVEN a titleForViewer with new lines", function()
			local conversation = {
				titleForViewer = "hello\nworld",
			}
			it("SHOULD return the titleForViewer without ", function()
				local title = getConversationDisplayTitle(conversation)

				jestExpect(title).toBe("helloworld")
			end)
		end)
	end)

	describe("GIVEN a title and a titleForViewer", function()
		local conversation = {
			title = "title",
			titleForViewer = "titleForViewer",
		}
		it("SHOULD prioritize the title", function()
			local title = getConversationDisplayTitle(conversation)

			jestExpect(title).toBe("title")
		end)
	end)

	describe("GIVEN a without a title or titleForViewer", function()
		local conversation = {}
		it("SHOULD return empty string", function()
			local title = getConversationDisplayTitle(conversation)

			jestExpect(title).toBe("")
		end)
	end)

	describe("GIVEN an nil conversation", function()
		local conversation = nil
		it("SHOULD return empty string", function()
			local title = getConversationDisplayTitle(conversation)

			jestExpect(title).toBe("")
		end)
	end)
end
