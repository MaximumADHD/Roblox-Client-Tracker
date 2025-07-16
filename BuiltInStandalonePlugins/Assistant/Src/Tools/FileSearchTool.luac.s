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
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["StudioNetworking"]
  CALL R2 1 1
  GETTABLEKS R4 R1 K9 ["Util"]
  GETTABLEKS R3 R4 K11 ["ToolBuilder"]
  GETTABLEKS R4 R2 K12 ["get"]
  CALL R4 0 1
  DUPCLOSURE R5 K13 [PROTO_0]
  LOADK R8 K14 ["FileSearchTool_searchScript"]
  DUPCLOSURE R9 K15 [PROTO_1]
  CAPTURE VAL R5
  NAMECALL R6 R4 K16 ["OnHostInvokeAsync"]
  CALL R6 3 1
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R6
  GETTABLEKS R8 R3 K18 ["define"]
  CALL R8 0 1
  LOADK R10 K19 ["file_search"]
  NAMECALL R8 R8 K20 ["setName"]
  CALL R8 2 1
  LOADK R10 K21 ["Fast file search based on fuzzy matching against script names.
Use if you know part of the script name but don't know where it's located exactly.
Response will be capped to 10 results.
Make your query more specific if need to filter results further.
Note: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.
"]
  NAMECALL R8 R8 K22 ["setDescription"]
  CALL R8 2 1
  LOADK R10 K23 ["keywords"]
  DUPTABLE R11 K26 [{"type", "description"}]
  LOADK R12 K27 ["string"]
  SETTABLEKS R12 R11 K24 ["type"]
  LOADK R12 K28 ["The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."]
  SETTABLEKS R12 R11 K25 ["description"]
  NAMECALL R8 R8 K29 ["addArgument"]
  CALL R8 3 1
  MOVE R10 R7
  NAMECALL R8 R8 K30 ["setHandler"]
  CALL R8 2 1
  NAMECALL R8 R8 K31 ["build"]
  CALL R8 1 -1
  RETURN R8 -1
