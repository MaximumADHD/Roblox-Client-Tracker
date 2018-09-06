return function()
	local trimCharacterFromEndString = require(script.Parent.trimCharacterFromEndString)

	describe("single byte characters", function()
		it("should not trim a string if it does not end with passed character", function()
			local passedString = "testing"
			local passedCharacter = "/"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(passedString)
		end)

		it("should trim a string if it ends with a single instance of the passed character", function()
			local passedString = "testing/"
			local passedCharacter = "/"
			local expectedString = "testing"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)

		it("should trim a string if it ends with multiple instances of the passed character", function()
			local passedString = "testing///"
			local passedCharacter = "/"
			local expectedString = "testing"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)

		it("should do nothing if the passed character is empty", function()
			local passedString = "hunter2"
			local passedCharacter = ""
			local expectedString = "hunter2"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)
	end)

	describe("multiple byte characters", function()
		it("should not trim a string if it does not end with passed character", function()
			local passedString = "testing"
			local passedCharacter = "🐶"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(passedString)
		end)

		it("should trim a string if it ends with a single instance of the passed character", function()
			local passedString = "testing🐶"
			local passedCharacter = "🐶"
			local expectedString = "testing"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)

		it("should trim a string if it ends with multiple instances of the passed character", function()
			local passedString = "testing🐶🐶🐶"
			local passedCharacter = "🐶"
			local expectedString = "testing"

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)
	end)

	describe("a string with all blacklisted characters", function()
		it("should return a empty string", function()
			local passedString = "pppppppppppp"
			local passedCharacter = "p"
			local expectedString = ""

			expect(trimCharacterFromEndString(passedString, passedCharacter)).to.equal(expectedString)
		end)
	end)
end