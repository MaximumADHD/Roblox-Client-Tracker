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
  JUMPIFNOT R10 [+58]
  LENGTH R10 R4
  LOADN R11 10
  JUMPIFNOTLT R10 R11 [+55]
  NAMECALL R10 R9 K16 ["GetFullName"]
  CALL R10 1 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K17 ["isPathExcluded"]
  MOVE R12 R10
  CALL R11 1 1
  JUMPIF R11 [+45]
  GETTABLEKS R11 R9 K18 ["Name"]
  NAMECALL R11 R11 K8 ["lower"]
  CALL R11 1 1
  MOVE R12 R2
  LOADNIL R13
  LOADNIL R14
  FORGPREP R12
  MOVE R19 R16
  LOADN R20 1
  LOADB R21 1
  NAMECALL R17 R11 K19 ["find"]
  CALL R17 4 1
  JUMPIFNOT R17 [+27]
  MOVE R18 R10
  LOADK R19 K20 ["|"]
  GETTABLEKS R20 R9 K15 ["ClassName"]
  CONCAT R17 R18 R20
  GETTABLE R18 R3 R17
  JUMPIF R18 [+22]
  LOADK R19 K21 ["Name: %* | Type: %* | Path: %*"]
  GETTABLEKS R21 R9 K18 ["Name"]
  GETTABLEKS R22 R9 K15 ["ClassName"]
  MOVE R23 R10
  NAMECALL R19 R19 K22 ["format"]
  CALL R19 4 1
  MOVE R18 R19
  FASTCALL2 TABLE_INSERT R4 R18 [+5]
  MOVE R20 R4
  MOVE R21 R18
  GETIMPORT R19 K11 [table.insert]
  CALL R19 2 0
  LOADB R19 1
  SETTABLE R19 R3 R17
  JUMP [+2]
  FORGLOOP R12 2 [-35]
  FORGLOOP R5 2 [-63]
  LENGTH R5 R4
  JUMPIFNOTEQKN R5 K23 [0] [+3]
  LOADK R5 K24 ["No matches found for the given query."]
  RETURN R5 1
  LENGTH R5 R4
  LOADN R6 10
  JUMPIFNOTLE R6 R5 [+8]
  GETUPVAL R7 1
  FASTCALL2 TABLE_INSERT R4 R7 [+4]
  MOVE R6 R4
  GETIMPORT R5 K11 [table.insert]
  CALL R5 2 0
  GETIMPORT R5 K26 [table.concat]
  MOVE R6 R4
  LOADK R7 K27 ["
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

PROTO_3:
  DUPTABLE R0 K3 [{"type", "icon", "summary"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K4 ["Type"]
  SETTABLEKS R1 R0 K0 ["type"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K5 ["Icons"]
  GETTABLEKS R1 R2 K6 ["Search"]
  SETTABLEKS R1 R0 K1 ["icon"]
  GETUPVAL R1 1
  LOADK R3 K7 ["FileSearch"]
  LOADK R4 K8 ["Pending"]
  NAMECALL R1 R1 K9 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["summary"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["FileSearch"]
  LOADK R4 K1 ["Complete"]
  DUPTABLE R5 K3 [{"count"}]
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K2 ["count"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 4 1
  SETTABLEKS R1 R0 K5 ["summary"]
  RETURN R0 0

PROTO_5:
  LOADN R1 0
  GETTABLEKS R3 R0 K0 ["content"]
  GETTABLEN R2 R3 1
  GETTABLEKS R3 R0 K1 ["isError"]
  JUMPIF R3 [+26]
  JUMPIFEQKNIL R2 [+25]
  GETTABLEKS R3 R2 K2 ["type"]
  JUMPIFNOTEQKS R3 K3 ["text"] [+21]
  GETTABLEKS R3 R2 K3 ["text"]
  LOADK R5 K4 ["
"]
  NAMECALL R3 R3 K5 ["split"]
  CALL R3 2 1
  GETTABLEKS R4 R2 K3 ["text"]
  JUMPIFNOTEQKS R4 K6 ["No matches found for the given query."] [+3]
  LOADN R1 0
  JUMP [+8]
  LENGTH R5 R3
  GETTABLE R4 R3 R5
  GETUPVAL R5 0
  JUMPIFNOTEQ R4 R5 [+3]
  LOADN R1 10
  JUMP [+1]
  LENGTH R1 R3
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U1
  CAPTURE REF R1
  CLOSEUPVALS R1
  RETURN R3 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["FileSearchTool_searchScript"]
  DUPCLOSURE R5 K2 [PROTO_1]
  CAPTURE UPVAL U0
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K5 ["FileSearch"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R6 K7 ["Fast script search based on fuzzy matching against script names.
Use if you know part of the script name but don't know where it's located exactly.
Response will be capped to 10 results.
Make your query more specific if need to filter results further.
Note: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.
"]
  NAMECALL R4 R4 K8 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K9 ["keywords"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K14 ["The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K15 ["addArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K16 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K17 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K20 [{"transformInitialContent", "getTransformResultFn"}]
  DUPCLOSURE R6 K21 [PROTO_3]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R6 R5 K18 ["transformInitialContent"]
  DUPCLOSURE R6 K22 [PROTO_5]
  CAPTURE UPVAL U6
  CAPTURE UPVAL U5
  SETTABLEKS R6 R5 K19 ["getTransformResultFn"]
  DUPTABLE R6 K26 [{"definition", "contentWidgets", "streamTransform"}]
  SETTABLEKS R4 R6 K23 ["definition"]
  GETUPVAL R8 7
  CALL R8 0 1
  JUMPIFNOT R8 [+6]
  NEWTABLE R7 0 1
  GETUPVAL R8 4
  SETLIST R7 R8 1 [1]
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K24 ["contentWidgets"]
  SETTABLEKS R5 R6 K25 ["streamTransform"]
  RETURN R6 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["ModelContextProtocol"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["ContentWidgets"]
  GETTABLEKS R3 R4 K10 ["SummarizedContentWidget"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Tools"]
  GETTABLEKS R4 R5 K12 ["ToolTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Util"]
  GETTABLEKS R5 R6 K14 ["ToolUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K15 ["Resources"]
  GETTABLEKS R7 R8 K16 ["Localization"]
  GETTABLEKS R6 R7 K17 ["Translator"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K18 ["Flags"]
  GETTABLEKS R7 R8 K19 ["FFlagAssistantRegisterWidgetsThroughTools"]
  CALL R6 1 1
  GETTABLEKS R8 R1 K13 ["Util"]
  GETTABLEKS R7 R8 K20 ["ToolBuilder"]
  GETTABLEKS R9 R1 K13 ["Util"]
  GETTABLEKS R8 R9 K21 ["ToolResult"]
  GETTABLEKS R9 R3 K22 ["ToolNames"]
  LOADK R11 K23 ["... Search stopped after reaching the limit of %* matches."]
  LOADN R13 10
  NAMECALL R11 R11 K24 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  DUPCLOSURE R11 K25 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R10
  DUPCLOSURE R12 K26 [PROTO_6]
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R6
  RETURN R12 1
