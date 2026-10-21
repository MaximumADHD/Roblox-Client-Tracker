--!nonstrict
local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local expect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local convertTimeStamp = require(script.Parent.convertTimeStamp)

local function formatWithZero(n)
	return (n < 10 and "0" or "") .. n
end

local function expectedFromOsDate(timestamp)
	local d = os.date("*t", timestamp)
	return formatWithZero(d.hour) .. ":" .. formatWithZero(d.min) .. ":" .. formatWithZero(d.sec)
end

-- A well-known UTC timestamp: 2024-03-10 14:05:09 UTC
local TEST_TIMESTAMP = 1710076509

describe("convertTimeStamp", function()
	it("returns an HH:MM:SS formatted string", function()
		local result = convertTimeStamp(TEST_TIMESTAMP)
		expect(#result).toBe(8)
		expect(result:sub(3, 3)).toBe(":")
		expect(result:sub(6, 6)).toBe(":")
	end)

	it("always returns an 8-character string for a range of timestamps", function()
		local timestamps = { 3600, 86400, TEST_TIMESTAMP, 1704070923 }
		for _, ts in ipairs(timestamps) do
			expect(#convertTimeStamp(ts)).toBe(8)
		end
	end)

	-- When FFlagDevConsoleFixTimestampDST is on (e.g. fastFlags-allOn run), the output
	-- must exactly match os.date("*t", timestamp) — the DST-correct local time.
	-- When the flag is off, only format correctness can be asserted since the legacy
	-- path applies the current UTC offset which varies by machine and moment.
	it("with FFlagDevConsoleFixTimestampDST enabled, matches os.date for each timestamp", function()
		if game:GetFastFlag("DevConsoleFixTimestampDST") then
			expect(convertTimeStamp(TEST_TIMESTAMP)).toBe(expectedFromOsDate(TEST_TIMESTAMP))
			-- 2024-03-10 00:00:00 UTC
			expect(convertTimeStamp(1710028800)).toBe(expectedFromOsDate(1710028800))
			-- 2024-01-01 01:02:03 UTC
			expect(convertTimeStamp(1704070923)).toBe(expectedFromOsDate(1704070923))
		else
			local result = convertTimeStamp(TEST_TIMESTAMP)
			expect(#result).toBe(8)
			expect(result:sub(3, 3)).toBe(":")
			expect(result:sub(6, 6)).toBe(":")
		end
	end)
end)
