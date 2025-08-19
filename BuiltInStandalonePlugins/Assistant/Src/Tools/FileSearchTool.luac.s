PROTO_0:
  DUPTABLE R1 K3 [{"Script", "LocalScript", "ModuleScript"}]
  LOADB R2 1
  SETTABLEKS R2 R1 K0 ["Script"]
  LOADB R2 1
  SETTABLEKS R2 R1 K1 ["LocalScript"]
  LOADB R2 1
  SETTABLEKS R2 R1 K2 ["ModuleScript"]
  NEWTABLE R2 0 0
  GETIMPORT R3 K6 [string.gmatch]
  MOVE R4 R0
  LOADK R5 K7 ["[^%s,]+"]
  CALL R3 2 3
  FORGPREP R3
  MOVE R9 R2
  NAMECALL R10 R6 K8 ["lower"]
  CALL R10 1 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R8 K11 [table.insert]
  CALL R8 -1 0
  FORGLOOP R3 1 [-9]
  NEWTABLE R3 0 0
  NEWTABLE R4 0 0
  GETIMPORT R5 K13 [game]
  NAMECALL R5 R5 K14 ["GetDescendants"]
  CALL R5 1 3
  FORGPREP R5
  GETTABLEKS R11 R9 K15 ["ClassName"]
  GETTABLE R10 R1 R11
  JUMPIFNOT R10 [+61]
  LENGTH R10 R4
  LOADN R11 10
  JUMPIFNOTLT R10 R11 [+58]
  NAMECALL R10 R9 K16 ["GetFullName"]
  CALL R10 1 1
  LOADK R13 K17 ["^CoreGui"]
  NAMECALL R11 R10 K18 ["find"]
  CALL R11 2 1
  JUMPIF R11 [+49]
  LOADK R13 K19 ["^PlayerGui"]
  NAMECALL R11 R10 K18 ["find"]
  CALL R11 2 1
  JUMPIF R11 [+44]
  GETTABLEKS R11 R9 K20 ["Name"]
  NAMECALL R11 R11 K8 ["lower"]
  CALL R11 1 1
  MOVE R12 R2
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  MOVE R19 R16
  LOADN R20 1
  LOADB R21 1
  NAMECALL R17 R11 K18 ["find"]
  CALL R17 4 1
  JUMPIFNOT R17 [+26]
  MOVE R18 R10
  LOADK R19 K21 ["|"]
  GETTABLEKS R20 R9 K15 ["ClassName"]
  CONCAT R17 R18 R20
  GETTABLE R18 R3 R17
  JUMPIF R18 [+21]
  GETIMPORT R18 K23 [string.format]
  LOADK R19 K24 ["Name: %s | Type: %s | Path: %s"]
  GETTABLEKS R20 R9 K20 ["Name"]
  GETTABLEKS R21 R9 K15 ["ClassName"]
  MOVE R22 R10
  CALL R18 4 1
  FASTCALL2 TABLE_INSERT R4 R18 [+5]
  MOVE R20 R4
  MOVE R21 R18
  GETIMPORT R19 K11 [table.insert]
  CALL R19 2 0
  LOADB R19 1
  SETTABLE R19 R3 R17
  JUMP [+2]
  FORGLOOP R12 2 [-34]
  FORGLOOP R5 2 [-66]
  LENGTH R5 R4
  JUMPIFNOTEQKN R5 K25 [0] [+3]
  LOADK R5 K26 ["No matches found for the given query."]
  RETURN R5 1
  LENGTH R5 R4
  LOADN R6 10
  JUMPIFNOTLE R6 R5 [+11]
  MOVE R6 R4
  GETIMPORT R7 K23 [string.format]
  LOADK R8 K27 ["... Search stopped after reaching the limit of %d matches."]
  LOADN R9 10
  CALL R7 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R5 K11 [table.insert]
  CALL R5 -1 0
  GETIMPORT R5 K29 [table.concat]
  MOVE R6 R4
  LOADK R7 K30 ["
"]
  CALL R5 2 -1
  RETURN R5 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["keywords"]
  CALL R2 1 -1
  RETURN R2 -1

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

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StudioNetworking"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Tools"]
  GETTABLEKS R5 R6 K13 ["ToolTypes"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K10 ["Util"]
  GETTABLEKS R5 R6 K14 ["ToolBuilder"]
  GETTABLEKS R7 R2 K10 ["Util"]
  GETTABLEKS R6 R7 K15 ["ToolResult"]
  GETTABLEKS R7 R4 K16 ["ToolNames"]
  GETTABLEKS R8 R3 K17 ["get"]
  CALL R8 0 1
  DUPCLOSURE R9 K18 [PROTO_0]
  LOADK R12 K19 ["FileSearchTool_searchScript"]
  DUPCLOSURE R13 K20 [PROTO_1]
  CAPTURE VAL R9
  NAMECALL R10 R8 K21 ["OnHostInvokeAsync"]
  CALL R10 3 1
  DUPCLOSURE R11 K22 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R6
  GETTABLEKS R12 R5 K23 ["define"]
  CALL R12 0 1
  GETTABLEKS R14 R7 K24 ["FileSearch"]
  NAMECALL R12 R12 K25 ["setName"]
  CALL R12 2 1
  LOADK R14 K26 ["Fast file search based on fuzzy matching against script names.
Use if you know part of the script name but don't know where it's located exactly.
Response will be capped to 10 results.
Make your query more specific if need to filter results further.
Note: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.
"]
  NAMECALL R12 R12 K27 ["setDescription"]
  CALL R12 2 1
  LOADK R14 K28 ["keywords"]
  DUPTABLE R15 K31 [{"type", "description"}]
  LOADK R16 K32 ["string"]
  SETTABLEKS R16 R15 K29 ["type"]
  LOADK R16 K33 ["The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."]
  SETTABLEKS R16 R15 K30 ["description"]
  NAMECALL R12 R12 K34 ["addArgument"]
  CALL R12 3 1
  MOVE R14 R11
  NAMECALL R12 R12 K35 ["setHandler"]
  CALL R12 2 1
  NAMECALL R12 R12 K36 ["build"]
  CALL R12 1 1
  DUPTABLE R13 K38 [{"definition"}]
  SETTABLEKS R12 R13 K37 ["definition"]
  RETURN R13 1
