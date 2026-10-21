local CorePackages = game:GetService("CorePackages")
local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local it = JestGlobals.it
local expect = JestGlobals.expect

local parseIceCandidate = require(script.Parent.IceCandidateParser)

it("should parse a host candidate line", function()
	local result = parseIceCandidate("candidate:1 1 udp 2130706431 10.0.0.1 54321 typ host generation 0")
	expect(result.candidateType).toBe("host")
	expect(result.protocol).toBe("udp")
	expect(result.priority).toBe("2130706431")
	expect(result.component).toBe("1")
end)

it("should parse a srflx candidate line, ignoring the raddr/rport address fields", function()
	local result = parseIceCandidate(
		"candidate:2 1 udp 1694498815 203.0.113.5 12345 typ srflx raddr 10.0.0.1 rport 5000 generation 0"
	)
	expect(result.candidateType).toBe("srflx")
	expect(result.protocol).toBe("udp")
	expect(result.priority).toBe("1694498815")
	expect(result.component).toBe("1")
end)

it("should parse a relay candidate line", function()
	local result = parseIceCandidate("candidate:3 1 udp 16777215 198.51.100.9 3478 typ relay raddr 0.0.0.0 rport 0")
	expect(result.candidateType).toBe("relay")
	expect(result.protocol).toBe("udp")
	expect(result.priority).toBe("16777215")
	expect(result.component).toBe("1")
end)

it("should return every field nil for an empty or nil candidate string", function()
	local emptyResult = parseIceCandidate("")
	expect(emptyResult.candidateType).toBe(nil)
	expect(emptyResult.protocol).toBe(nil)
	expect(emptyResult.priority).toBe(nil)
	expect(emptyResult.component).toBe(nil)

	local nilResult = parseIceCandidate(nil)
	expect(nilResult.candidateType).toBe(nil)
	expect(nilResult.protocol).toBe(nil)
	expect(nilResult.priority).toBe(nil)
	expect(nilResult.component).toBe(nil)
end)

it("should return every field nil when the string has no 'typ' token", function()
	local result = parseIceCandidate("this is not a candidate string")
	expect(result.candidateType).toBe(nil)
	expect(result.protocol).toBe(nil)
	expect(result.priority).toBe(nil)
	expect(result.component).toBe(nil)
end)
