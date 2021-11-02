return function()
	local __tests__ = script.Parent
	local testData = require(__tests__["testoutput1.gen"])
	local escapeString = require(__tests__.escapeString)
	local RegEx = require(__tests__.Parent)

	local function shortenIfTooLong(str)
		if str:len() > 80 then
			str = str:sub(1, 76) .. " ..."
		end
		return escapeString(str)
	end

	for _, case in pairs(testData) do
		local message = ("regex `%s`%s"):format(
			shortenIfTooLong(case.source),
			case.flags == nil and "" or ("with %s flags"):format(case.flags)
		)
		describe(message, function()
			local regex = nil
			beforeEach(function()
				regex = RegEx.new(case.source, case.flags)
			end)

			for _, testCase in ipairs(case.tests) do
				if testCase.matches == nil then
					-- using the length in the test name will dedup tests
					-- where the match is identical except one ends with `\0`
					local testMessage = ("does not match with `%s` (len: %d)"):format(
						testCase.input,
						testCase.input:len()
					)
					it(testMessage, function()
						expect(regex:match(testCase.input)).to.equal(nil)
					end)
				else
					describe(("matches with `%s`"):format(testCase.input), function()
						local matchResults = nil
						beforeEach(function()
							matchResults = regex:match(testCase.input)
						end)

						for _, match in ipairs(testCase.matches) do
							local testMessage = ("match #%d is `%s`"):format(
								match.index,
								match.match
							)
							it(testMessage, function()
								expect(matchResults).to.be.ok()
								local expectedMatch = match.match
								if expectedMatch == "<unset>" then
									expectedMatch = nil
								end
								expect(matchResults:group(match.index)).to.equal(expectedMatch)
							end)
						end
					end)
				end
			end
		end)
	end
end
