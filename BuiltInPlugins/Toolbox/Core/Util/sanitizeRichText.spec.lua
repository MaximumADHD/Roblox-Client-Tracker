--!strict
return function()
	local sanitizeRichText = require(script.Parent.sanitizeRichText)
	describe("sanitizeRichText", function()
		it("returns the same string when no sanitization is needed", function()
			local text = sanitizeRichText("hello")
			expect(text).to.equal("hello")
		end)

		it("sanitizes RichText special characters", function()
			local text = sanitizeRichText("<''>&")
			expect(text).to.equal("&lt;&apos;&apos;&gt;&amp;")
		end)

		it("sanitizes quotes", function()
			local text = sanitizeRichText('"')
			expect(text).to.equal("&quot;")
		end)

		it("sanitizes a mixture of RichText special and normal charcters", function()
			local text = sanitizeRichText("<'font'> hello &")
			expect(text).to.equal("&lt;&apos;font&apos;&gt; hello &amp;")
		end)

		it("it ignores character based languages", function()
			local text = sanitizeRichText("テクノロジー")
			expect(text).to.equal("テクノロジー")
		end)
	end)
end
