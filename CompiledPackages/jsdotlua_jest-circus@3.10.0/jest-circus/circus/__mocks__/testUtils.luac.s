PROTO_0:
  LOADK R1 K0 ["		return function(__script, __env)
			-- ROBLOX deviation START
			local Module = __env.Module
			Module.resetModules()
			local require = Module.requireOverride
			local LuauPolyfill = require(
				__script.Parent.Parent.Parent.Parent.Parent
					:FindFirstChild(\"luau-polyfill\")
					:FindFirstChild(\"src\")
			)
			local Array = LuauPolyfill.Array
			local Error = LuauPolyfill.Error
			local console = LuauPolyfill.console

			local stdout = {}

			local function getStdout()
				return Array.join(stdout, \"\n\")
			end

			local function log(...)
				table.insert(stdout, Array.join({ ... }, \" \"))
			end

			console.log = log

			local global = getfenv()
			-- ROBLOX deviation END

			local circus = require(__script.Parent.Parent)


			global.console = console
			global.test = circus.test
			global.describe = circus.describe
			global.beforeEach = circus.beforeEach
			global.afterEach = circus.afterEach
			global.beforeAll = circus.beforeAll
			global.afterAll = circus.afterAll

			local testEventHandler = require(__script.Parent.testEventHandler).default
			local addEventHandler = require(__script.Parent.Parent.state).addEventHandler
			addEventHandler(testEventHandler)

			%s

			local run = require(__script.Parent.Parent.run).default

			run();

			return getStdout()
		end
  "]
  MOVE R3 R0
  NAMECALL R1 R1 K1 ["format"]
  CALL R1 2 1
  GETIMPORT R2 K3 [loadstring]
  MOVE R3 R1
  CALL R2 1 2
  MOVE R5 R2
  LOADK R6 K4 ["Error while loading code: %s"]
  FASTCALL1 TOSTRING R3 [+3]
  MOVE R9 R3
  GETIMPORT R8 K6 [tostring]
  CALL R8 1 1
  NAMECALL R6 R6 K1 ["format"]
  CALL R6 2 -1
  FASTCALL ASSERT [+2]
  GETIMPORT R4 K8 [assert]
  CALL R4 -1 0
  MOVE R4 R2
  CALL R4 0 1
  MOVE R5 R4
  GETIMPORT R6 K10 [script]
  DUPTABLE R7 K13 [{"LuauPolyfill", "Module"}]
  GETUPVAL R8 0
  SETTABLEKS R8 R7 K11 ["LuauPolyfill"]
  GETIMPORT R8 K15 [require]
  GETIMPORT R10 K10 [script]
  GETTABLEKS R9 R10 K16 ["Parent"]
  LOADK R11 K12 ["Module"]
  NAMECALL R9 R9 K17 ["WaitForChild"]
  CALL R9 2 -1
  CALL R8 -1 1
  SETTABLEKS R8 R7 K12 ["Module"]
  CALL R5 2 1
  DUPTABLE R6 K19 [{"stdout"}]
  SETTABLEKS R5 R6 K18 ["stdout"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K4 ["Parent"]
  GETTABLEKS R1 R2 K4 ["Parent"]
  LOADK R3 K5 ["luau-polyfill"]
  NAMECALL R1 R1 K6 ["WaitForChild"]
  CALL R1 2 -1
  CALL R0 -1 1
  NEWTABLE R1 1 0
  DUPCLOSURE R2 K7 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R2 R1 K8 ["runTest"]
  RETURN R1 1
