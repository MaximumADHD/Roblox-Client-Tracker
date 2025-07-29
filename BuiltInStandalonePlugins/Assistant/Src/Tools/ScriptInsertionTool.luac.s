PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R2 1
  GETTABLE R0 R1 R2
  RETURN R0 1

PROTO_1:
  LOADK R4 K0 ["."]
  NAMECALL R2 R0 K1 ["split"]
  CALL R2 2 1
  GETIMPORT R3 K3 [game]
  LOADB R4 0
  MOVE R5 R2
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  JUMPIFNOTEQKN R8 K4 [1] [+3]
  JUMPIFEQKS R9 K2 ["game"] [+27]
  GETIMPORT R10 K6 [pcall]
  NEWCLOSURE R11 P0
  CAPTURE REF R3
  CAPTURE VAL R9
  CALL R10 1 2
  JUMPIF R10 [+1]
  LOADNIL R11
  JUMPIF R11 [+16]
  LENGTH R13 R2
  JUMPIFNOTEQ R8 R13 [+3]
  MOVE R12 R1
  JUMPIF R12 [+1]
  LOADK R12 K7 ["Folder"]
  GETIMPORT R13 K10 [Instance.new]
  MOVE R14 R12
  CALL R13 1 1
  MOVE R11 R13
  SETTABLEKS R9 R11 K11 ["Name"]
  SETTABLEKS R3 R11 K12 ["Parent"]
  LOADB R4 1
  MOVE R3 R11
  FORGLOOP R5 2 [-31]
  CLOSEUPVALS R3
  RETURN R3 2

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R1 1
  GETUPVAL R2 2
  CALL R0 2 2
  JUMPIFNOT R0 [+5]
  LOADK R4 K0 ["LuaSourceContainer"]
  NAMECALL R2 R0 K1 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+6]
  GETIMPORT R2 K3 [error]
  GETUPVAL R4 1
  LOADK R5 K4 [" is not a valid script path"]
  CONCAT R3 R4 R5
  CALL R2 1 0
  JUMPIFNOT R0 [+48]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K5 ["get"]
  CALL R3 0 1
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

PROTO_3:
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
  GETTABLEKS R6 R7 K11 ["startRecording"]
  MOVE R7 R5
  CALL R6 1 0
  GETIMPORT R6 K13 [pcall]
  NEWCLOSURE R7 P0
  CAPTURE UPVAL U2
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE UPVAL U3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE UPVAL U0
  CALL R6 1 2
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K14 ["endRecording"]
  MOVE R9 R5
  CALL R8 1 0
  JUMPIFNOT R6 [+8]
  LOADK R9 K15 ["Script inserted or modified successfully with tag: "]
  FASTCALL1 TOSTRING R7 [+3]
  MOVE R11 R7
  GETIMPORT R10 K17 [tostring]
  CALL R10 1 1
  CONCAT R8 R9 R10
  RETURN R8 1
  GETIMPORT R8 K8 [error]
  MOVE R9 R7
  CALL R8 1 0
  RETURN R0 0

PROTO_4:
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
  GETTABLEKS R6 R7 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["StudioNetworking"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K16 ["Guest"]
  GETTABLEKS R5 R6 K17 ["Environment"]
  GETTABLEKS R7 R2 K18 ["Utils"]
  GETTABLEKS R6 R7 K19 ["Tools"]
  GETTABLEKS R8 R3 K14 ["Util"]
  GETTABLEKS R7 R8 K20 ["ToolBuilder"]
  GETTABLEKS R9 R3 K14 ["Util"]
  GETTABLEKS R8 R9 K21 ["ToolResult"]
  GETTABLEKS R9 R4 K22 ["get"]
  CALL R9 0 1
  DUPCLOSURE R10 K23 [PROTO_1]
  LOADK R13 K24 ["ScriptInsertionTool_InsertScript"]
  DUPCLOSURE R14 K25 [PROTO_3]
  CAPTURE VAL R1
  CAPTURE VAL R6
  CAPTURE VAL R10
  CAPTURE VAL R5
  NAMECALL R11 R9 K26 ["OnHostInvokeAsync"]
  CALL R11 3 1
  DUPCLOSURE R12 K27 [PROTO_4]
  CAPTURE VAL R11
  CAPTURE VAL R8
  GETTABLEKS R13 R7 K28 ["define"]
  CALL R13 0 1
  LOADK R15 K29 ["script_insertion"]
  NAMECALL R13 R13 K30 ["setName"]
  CALL R13 2 1
  LOADK R15 K31 ["Insert a script or modify an existing script.
Before using this tool, execute Luau code to find the script path first
"]
  NAMECALL R13 R13 K32 ["setDescription"]
  CALL R13 2 1
  LOADK R15 K33 ["className"]
  DUPTABLE R16 K36 [{"type", "description"}]
  LOADK R17 K37 ["string"]
  SETTABLEKS R17 R16 K34 ["type"]
  LOADK R17 K38 ["The class name of the script to insert (e.g., 'Script', 'LocalScript', 'ModuleScript'), used for creating new Instance, leave empty if exists"]
  SETTABLEKS R17 R16 K35 ["description"]
  NAMECALL R13 R13 K39 ["addOptionalArgument"]
  CALL R13 3 1
  LOADK R15 K40 ["code"]
  DUPTABLE R16 K36 [{"type", "description"}]
  LOADK R17 K37 ["string"]
  SETTABLEKS R17 R16 K34 ["type"]
  LOADK R17 K41 ["The updated Luau code"]
  SETTABLEKS R17 R16 K35 ["description"]
  NAMECALL R13 R13 K42 ["addArgument"]
  CALL R13 3 1
  LOADK R15 K43 ["scriptPath"]
  DUPTABLE R16 K36 [{"type", "description"}]
  LOADK R17 K37 ["string"]
  SETTABLEKS R17 R16 K34 ["type"]
  LOADK R17 K44 ["The path to the script to modify or create (e.g., 'game.Workspace.Scripts.MyScript')"]
  SETTABLEKS R17 R16 K35 ["description"]
  NAMECALL R13 R13 K42 ["addArgument"]
  CALL R13 3 1
  MOVE R15 R12
  NAMECALL R13 R13 K45 ["setHandler"]
  CALL R13 2 1
  NAMECALL R13 R13 K46 ["build"]
  CALL R13 1 -1
  RETURN R13 -1
