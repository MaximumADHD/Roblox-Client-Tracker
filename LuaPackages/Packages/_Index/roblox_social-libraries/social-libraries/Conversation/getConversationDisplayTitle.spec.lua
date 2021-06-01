return function()
	local getConversationDisplayTitle = require(script.Parent.getConversationDisplayTitle)

	describe("GIVEN a conversation with only a title", function()
		describe("GIVEN a title with no new lines", function()
			local conversation = {
				title = "hello world"
			}
			it("SHOULD return the title as-is", function()
				expect(getConversationDisplayTitle(conversation)).to.equal("hello world")
			end)
		end)

		describe("GIVEN a title with new lines", function()
			local conversation = {
				title = "hello\nworld"
			}
			it("SHOULD return the title as-is", function()
				expect(getConversationDisplayTitle(conversation)).to.equal("helloworld")
			end)
		end)
	end)

	describe("GIVEN a conversation with only a titleForViewer", function()
		describe("GIVEN a titleForViewer with no new lines", function()
			local conversation = {
				titleForViewer = "hello world"
			}
			it("SHOULD return the titleForViewer as-is", function()
				expect(getConversationDisplayTitle(conversation)).to.equal("hello world")
			end)
		end)

		describe("GIVEN a titleForViewer with new lines", function()
			local conversation = {
				titleForViewer = "hello\nworld"
			}
			it("SHOULD return the titleForViewer without ", function()
				expect(getConversationDisplayTitle(conversation)).to.equal("helloworld")
			end)
		end)
	end)

	describe("GIVEN a title and a titleForViewer", function()
		local conversation = {
			title = "title",
			titleForViewer = "titleForViewer"
		}
		it("SHOULD prioritize the title", function()
			expect(getConversationDisplayTitle(conversation)).to.equal("title")
		end)
	end)

	describe("GIVEN a without a title or titleForViewer", function()
		local conversation = {}
		it("SHOULD return empty string", function()
			expect(getConversationDisplayTitle(conversation)).to.equal("")
		end)
	end)

	describe("GIVEN an nil conversation", function()
		local conversation = nil
		it("SHOULD return empty string", function()
			expect(getConversationDisplayTitle(conversation)).to.equal("")
		end)
	end)
end
