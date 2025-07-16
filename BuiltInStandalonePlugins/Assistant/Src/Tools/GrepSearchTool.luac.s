PROTO_0:
  NEWTABLE R1 0 0
  DUPTABLE R2 K3 [{"Script", "LocalScript", "ModuleScript"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["Script"]
  LOADB R3 1
  SETTABLEKS R3 R2 K1 ["LocalScript"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["ModuleScript"]
  NAMECALL R3 R0 K4 ["lower"]
  CALL R3 1 1
  GETIMPORT R4 K6 [game]
  NAMECALL R4 R4 K7 ["GetDescendants"]
  CALL R4 1 3
  FORGPREP R4
  LENGTH R9 R1
  LOADN R10 50
  JUMPIFLE R10 R9 [+70]
  GETTABLEKS R10 R8 K8 ["ClassName"]
  GETTABLE R9 R2 R10
  JUMPIFNOT R9 [+63]
  NAMECALL R9 R8 K9 ["GetFullName"]
  CALL R9 1 1
  LOADK R12 K10 ["^CoreGui"]
  NAMECALL R10 R9 K11 ["find"]
  CALL R10 2 1
  JUMPIF R10 [+55]
  LOADK R12 K12 ["^PlayerGui"]
  NAMECALL R10 R9 K11 ["find"]
  CALL R10 2 1
  JUMPIF R10 [+50]
  GETTABLEKS R10 R8 K13 ["Source"]
  NEWTABLE R11 0 0
  GETIMPORT R12 K16 [string.gmatch]
  MOVE R13 R10
  LOADK R14 K17 ["[^
]+"]
  CALL R12 2 3
  FORGPREP R12
  FASTCALL2 TABLE_INSERT R11 R15 [+5]
  MOVE R18 R11
  MOVE R19 R15
  GETIMPORT R17 K20 [table.insert]
  CALL R17 2 0
  FORGLOOP R12 1 [-8]
  MOVE R12 R11
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  NAMECALL R17 R16 K4 ["lower"]
  CALL R17 1 1
  GETIMPORT R18 K21 [string.find]
  MOVE R19 R17
  MOVE R20 R3
  CALL R18 2 1
  JUMPIFNOT R18 [+16]
  MOVE R19 R1
  GETIMPORT R20 K23 [string.format]
  LOADK R21 K24 ["Path: %s | Line: %d | %s"]
  MOVE R22 R9
  MOVE R23 R15
  MOVE R24 R16
  CALL R20 4 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R18 K20 [table.insert]
  CALL R18 -1 0
  LENGTH R18 R1
  LOADN R19 50
  JUMPIFLE R19 R18 [+3]
  FORGLOOP R12 2 [-26]
  FORGLOOP R4 2 [-72]
  LENGTH R4 R1
  JUMPIFNOTEQKN R4 K25 [0] [+3]
  LOADK R4 K26 ["No matches found for the given query."]
  RETURN R4 1
  LENGTH R4 R1
  LOADN R5 50
  JUMPIFNOTLE R5 R4 [+11]
  MOVE R5 R1
  GETIMPORT R6 K23 [string.format]
  LOADK R7 K27 ["... Search stopped after reaching the limit of %d matches."]
  LOADN R8 50
  CALL R6 2 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R4 K20 [table.insert]
  CALL R4 -1 0
  GETIMPORT R4 K29 [table.concat]
  MOVE R5 R1
  LOADK R6 K30 ["
"]
  CALL R4 2 -1
  RETURN R4 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["query"]
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
  LOADK R8 K14 ["GrepSearchTool_GrepSearch"]
  DUPCLOSURE R9 K15 [PROTO_1]
  CAPTURE VAL R5
  NAMECALL R6 R4 K16 ["OnHostInvokeAsync"]
  CALL R6 3 1
  DUPCLOSURE R7 K17 [PROTO_2]
  CAPTURE VAL R6
  GETTABLEKS R8 R3 K18 ["define"]
  CALL R8 0 1
  LOADK R10 K19 ["grep_search"]
  NAMECALL R8 R8 K20 ["setName"]
  CALL R8 2 1
  LOADK R10 K21 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
  NAMECALL R8 R8 K22 ["setDescription"]
  CALL R8 2 1
  LOADK R10 K23 ["query"]
  DUPTABLE R11 K26 [{"type", "description"}]
  LOADK R12 K27 ["string"]
  SETTABLEKS R12 R11 K24 ["type"]
  LOADK R12 K28 ["The string or Luau pattern to search for."]
  SETTABLEKS R12 R11 K25 ["description"]
  NAMECALL R8 R8 K29 ["addArgument"]
  CALL R8 3 1
  MOVE R10 R7
  NAMECALL R8 R8 K30 ["setHandler"]
  CALL R8 2 1
  NAMECALL R8 R8 K31 ["build"]
  CALL R8 1 -1
  RETURN R8 -1
