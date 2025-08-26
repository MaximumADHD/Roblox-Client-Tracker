PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["findOrCreateInstance"]
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 2
  JUMPIFNOT R0 [+5]
  LOADK R4 K1 ["LuaSourceContainer"]
  NAMECALL R2 R0 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETIMPORT R2 K4 [error]
  GETUPVAL R4 1
  LOADK R5 K5 [" is not a valid script path"]
  CONCAT R3 R4 R5
  CALL R2 1 0
  JUMPIFNOT R0 [+45]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K6 ["updateScriptSource"]
  GETUPVAL R3 4
  LOADK R4 K7 [""]
  MOVE R5 R0
  GETUPVAL R6 5
  MOVE R7 R1
  CALL R2 5 0
  NAMECALL R2 R0 K8 ["GetTags"]
  CALL R2 1 1
  LOADNIL R3
  MOVE R4 R2
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  LOADN R11 1
  LOADN R12 10
  FASTCALL3 STRING_SUB R8 R11 R12
  MOVE R10 R8
  GETIMPORT R9 K11 [string.sub]
  CALL R9 3 1
  JUMPIFNOTEQKS R9 K12 ["Assistant:"] [+3]
  MOVE R3 R8
  JUMP [+2]
  FORGLOOP R4 2 [-13]
  JUMPIF R3 [+12]
  GETUPVAL R4 6
  LOADB R6 0
  NAMECALL R4 R4 K13 ["GenerateGUID"]
  CALL R4 2 1
  LOADK R5 K12 ["Assistant:"]
  MOVE R6 R4
  CONCAT R3 R5 R6
  MOVE R7 R3
  NAMECALL R5 R0 K14 ["AddTag"]
  CALL R5 2 0
  RETURN R3 1
  LOADNIL R2
  RETURN R2 1

PROTO_1:
  GETTABLEKS R2 R1 K0 ["scriptPath"]
  GETTABLEKS R3 R1 K1 ["className"]
  GETTABLEKS R4 R1 K2 ["code"]
  JUMPIFEQKNIL R3 [+13]
  JUMPIFEQKS R3 K3 [""] [+11]
  JUMPIFEQKS R3 K4 ["Script"] [+9]
  JUMPIFEQKS R3 K5 ["LocalScript"] [+7]
  JUMPIFEQKS R3 K6 ["ModuleScript"] [+5]
  GETIMPORT R5 K8 [error]
  LOADK R6 K9 ["New inserted script className must be Script, LocalScript, or ModuleScript"]
  CALL R5 1 0
  GETUPVAL R5 0
  LOADB R7 0
  NAMECALL R5 R5 K10 ["GenerateGUID"]
  CALL R5 2 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K11 ["get"]
  CALL R6 0 1
  GETTABLEKS R7 R6 K12 ["startRecording"]
  MOVE R8 R5
  CALL R7 1 0
  GETIMPORT R7 K14 [pcall]
  NEWCLOSURE R8 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CALL R7 1 2
  GETTABLEKS R9 R6 K15 ["endRecording"]
  MOVE R10 R5
  CALL R9 1 0
  JUMPIFNOT R7 [+8]
  LOADK R10 K16 ["Script inserted or modified successfully with tag: "]
  FASTCALL1 TOSTRING R8 [+3]
  MOVE R12 R8
  GETIMPORT R11 K18 [tostring]
  CALL R11 1 1
  CONCAT R9 R10 R11
  RETURN R9 1
  GETIMPORT R9 K8 [error]
  MOVE R10 R8
  CALL R9 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  LOADNIL R2
  MOVE R3 R0
  CALL R1 2 1
  GETUPVAL R2 1
  CALL R2 0 1
  MOVE R4 R1
  NAMECALL R2 R2 K0 ["addText"]
  CALL R2 2 1
  NAMECALL R2 R2 K1 ["build"]
  CALL R2 1 -1
  RETURN R2 -1

PROTO_3:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["ScriptInsertionTool_InsertScript"]
  DUPCLOSURE R5 K2 [PROTO_1]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U3
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  GETUPVAL R7 5
  GETTABLEKS R6 R7 K5 ["ScriptInsertion"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R6 K7 ["Insert a script or modify an existing script.
Before using this tool, execute Luau code to find the script path first
"]
  NAMECALL R4 R4 K8 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K9 ["className"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K14 ["The class name of the script to insert (e.g., 'Script', 'LocalScript', 'ModuleScript'), used for creating new Instance, leave empty if exists"]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K15 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K16 ["code"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K17 ["The updated Luau code"]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addArgument"]
  CALL R4 3 1
  LOADK R6 K19 ["scriptPath"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K20 ["The path to the script to modify or create (e.g., 'game.Workspace.Scripts.MyScript')"]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K18 ["addArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K21 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K22 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K24 [{"definition"}]
  SETTABLEKS R4 R5 K23 ["definition"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["AssistantUI"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["ModelContextProtocol"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R0 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Tools"]
  GETTABLEKS R5 R6 K15 ["ToolTypes"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K16 ["Guest"]
  GETTABLEKS R5 R6 K17 ["Environment"]
  GETTABLEKS R7 R2 K18 ["Utils"]
  GETTABLEKS R6 R7 K14 ["Tools"]
  GETTABLEKS R8 R3 K19 ["Util"]
  GETTABLEKS R7 R8 K20 ["ToolBuilder"]
  GETTABLEKS R9 R3 K19 ["Util"]
  GETTABLEKS R8 R9 K21 ["ToolResult"]
  GETTABLEKS R9 R4 K22 ["ToolNames"]
  DUPCLOSURE R10 K23 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  RETURN R10 1
