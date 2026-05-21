--[[
How to run & update the stat:
> roblox-cli run --run src/Utils/ParserTestSuite/Runner.lua --load.place default.project.json > src/Utils/ParserTestSuite/result.txt
]]

local Packages = script:FindFirstAncestor("Packages")
if not Packages then
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	Packages = ReplicatedStorage.Packages
end
local Dash = require(Packages.Dash)

local Root = Packages.Markdown

local Spec = require(Root.Utils.ParserTestSuite.Spec)
local Ast2HtmlMapper = require(Root.Utils.ParserTestSuite.AST2HTMLMapper)
local Parser = require(Root.Utils.Parser)

export type Stat = {
	[string]: {
		passed: { number },
		failed: { number },
		skipped: { number },
	},
}

local function TestSuite()
	-- For a local debug purpose. Allows to run selected tests or sections only:
	-- local FOCUSED_EXAMPLES = {
	-- 	[21] = true,
	-- 	["Raw HTML"] = true,
	-- }
	local FOCUSED_EXAMPLES = nil

	-- For a local debug purpose. Allows not to run selected tests or sections:
	-- local EXCLUDED_EXAMPLES = {
	-- 	[22] = true,
	-- 	["Raw HTML"] = true,
	-- }
	local EXCLUDED_EXAMPLES = {
		[43] = true,
		[46] = true,
		[52] = true,
		[77] = true,
		[120] = true,
		[148] = true,
		[151] = true,
		[165] = true,
		[177] = true,
		[179] = true,
		[180] = true,
		[181] = true,
		[182] = true,
		[183] = true,
		[194] = true,
		[200] = true,
		[308] = true,
		[309] = true,
		[365] = true,
		[378] = true,
		[379] = true,
		[391] = true,
		[392] = true,
		[394] = true,
		[395] = true,
		[396] = true,
		[399] = true,
		[406] = true,
		[408] = true,
		[409] = true,
		[412] = true,
		[416] = true,
		[417] = true,
		[418] = true,
		[421] = true,
		[422] = true,
		[423] = true,
		[424] = true,
		[427] = true,
		[428] = true,
		[429] = true,
		[430] = true,
		[431] = true,
		[432] = true,
		[433] = true,
		[436] = true,
		[438] = true,
		[441] = true,
		[445] = true,
		[446] = true,
		[448] = true,
		[450] = true,
		[453] = true,
		[454] = true,
		[455] = true,
		[456] = true,
		[459] = true,
		[460] = true,
		[463] = true,
		[464] = true,
		[466] = true,
		[468] = true,
		[469] = true,
		[470] = true,
		[471] = true,
		[530] = true,
		[607] = true,
		[608] = true,
		[616] = true,
		[618] = true,
		[621] = true,
		[623] = true,
		[624] = true,
		[625] = true,
		[626] = true,
		[627] = true,
		[628] = true,
		[629] = true,
	}

	local stat: Stat = {}

	local function updateStat(example, status)
		local section = example.section
		local id = example.id

		if not stat[section] then
			stat[section] = {
				passed = {},
				failed = {},
				skipped = {},
			}
		end
		if status == "passed" then
			table.insert(stat[section].passed, id)
		elseif status == "failed" then
			table.insert(stat[section].failed, id)
		elseif status == "skipped" then
			table.insert(stat[section].skipped, id)
		end
	end

	local function runExample(example)
		local ast = Parser.parse(example.markdown)
		local output = Ast2HtmlMapper.map(ast)
		return output == example.html
	end

	for _, example in Spec do
		if FOCUSED_EXAMPLES then
			if FOCUSED_EXAMPLES[example.id] or FOCUSED_EXAMPLES[example.section] then
				updateStat(example, if runExample(example) then "passed" else "failed")
			else
				updateStat(example, "skipped")
			end
		elseif EXCLUDED_EXAMPLES then
			if not EXCLUDED_EXAMPLES[example.id] and not EXCLUDED_EXAMPLES[example.section] then
				updateStat(example, if runExample(example) then "passed" else "failed")
			else
				updateStat(example, "skipped")
			end
		else
			updateStat(example, if runExample(example) then "passed" else "failed")
		end
	end

	return stat
end

local function printStat(stat)
	local total = {
		total = 0,
		passed = 0,
		failed = 0,
		skipped = 0,
	}
	for section, result in stat do
		local sectionTotal = #result.passed + #result.failed + #result.skipped
		total.total += sectionTotal
		total.passed += #result.passed
		total.failed += #result.failed
		total.skipped += #result.skipped
		print(
			`{section}: {sectionTotal} total, {#result.passed} passed, {#result.failed} failed, {#result.skipped} skipped`
		)
	end
	print(`Total: {total.total}, {total.passed} passed, {total.failed} failed, {total.skipped} skipped`)
end

local stat = TestSuite()
printStat(stat)
print("\nRaw data:")
print(Dash.pretty(stat, { multiline = true, depth = 3 }))
