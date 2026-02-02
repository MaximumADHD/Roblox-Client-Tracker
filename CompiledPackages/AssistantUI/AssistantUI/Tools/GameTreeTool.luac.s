PROTO_0:
  GETTABLEKS R2 R1 K0 ["instance_type"]
  JUMPIFNOT R2 [+12]
  GETTABLEKS R2 R1 K0 ["instance_type"]
  JUMPIFEQKS R2 K1 [""] [+9]
  GETTABLEKS R4 R1 K0 ["instance_type"]
  NAMECALL R2 R0 K2 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+2]
  LOADB R2 0
  RETURN R2 1
  GETTABLEKS R2 R1 K3 ["keywords"]
  JUMPIFNOT R2 [+4]
  GETTABLEKS R2 R1 K3 ["keywords"]
  JUMPIFNOTEQKS R2 K1 [""] [+3]
  LOADB R2 1
  RETURN R2 1
  GETTABLEKS R2 R0 K4 ["Name"]
  NAMECALL R2 R2 K5 ["lower"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K3 ["keywords"]
  LOADK R5 K6 ["[^,%s]+"]
  NAMECALL R3 R3 K7 ["gmatch"]
  CALL R3 2 3
  FORGPREP R3
  NAMECALL R10 R6 K5 ["lower"]
  CALL R10 1 1
  LOADN R11 1
  LOADB R12 1
  NAMECALL R8 R2 K8 ["find"]
  CALL R8 4 1
  JUMPIFNOT R8 [+2]
  LOADB R8 1
  RETURN R8 1
  FORGLOOP R3 1 [-12]
  LOADB R3 0
  RETURN R3 1

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["isPathExcluded"]
  MOVE R3 R0
  CALL R2 1 1
  NOT R1 R2
  RETURN R1 1

PROTO_2:
  LOADN R2 0
  NAMECALL R3 R0 K0 ["GetChildren"]
  CALL R3 1 3
  FORGPREP R3
  GETUPVAL R8 0
  MOVE R9 R7
  MOVE R10 R1
  CALL R8 2 1
  JUMPIFNOT R8 [+1]
  ADDK R2 R2 K1 [1]
  FORGLOOP R3 2 [-7]
  RETURN R2 1

PROTO_3:
  NAMECALL R1 R0 K0 ["GetChildren"]
  CALL R1 1 1
  LENGTH R2 R1
  JUMPIFNOTEQKN R2 K1 [0] [+3]
  LOADK R2 K2 [""]
  RETURN R2 1
  NEWTABLE R2 0 0
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R8 R7 K3 ["ClassName"]
  GETTABLEKS R12 R7 K3 ["ClassName"]
  GETTABLE R11 R2 R12
  ORK R10 R11 K1 [0]
  ADDK R9 R10 K4 [1]
  SETTABLE R9 R2 R8
  FORGLOOP R3 2 [-9]
  NEWTABLE R3 0 0
  GETIMPORT R4 K6 [pairs]
  MOVE R5 R2
  CALL R4 1 3
  FORGPREP_NEXT R4
  LOADK R12 K7 ["%* %*"]
  MOVE R14 R8
  MOVE R15 R7
  NAMECALL R12 R12 K8 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K11 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-14]
  GETIMPORT R4 K13 [table.sort]
  MOVE R5 R3
  CALL R4 1 0
  LOADK R5 K14 ["%* children (%*)"]
  LENGTH R7 R1
  GETIMPORT R8 K16 [table.concat]
  MOVE R9 R3
  LOADK R10 K17 [", "]
  CALL R8 2 1
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  RETURN R4 1

PROTO_4:
  NEWTABLE R3 0 0
  LOADN R4 0
  GETTABLEKS R5 R1 K0 ["head_limit"]
  JUMPIF R5 [+1]
  GETUPVAL R5 0
  NEWTABLE R6 0 1
  DUPTABLE R7 K3 [{"instance", "depth"}]
  SETTABLEKS R0 R7 K1 ["instance"]
  LOADN R8 0
  SETTABLEKS R8 R7 K2 ["depth"]
  SETLIST R6 R7 1 [1]
  LENGTH R7 R6
  LOADN R8 0
  JUMPIFNOTLT R8 R7 [+130]
  JUMPIFNOTLT R4 R5 [+128]
  GETIMPORT R7 K6 [table.remove]
  MOVE R8 R6
  LOADN R9 1
  CALL R7 2 1
  GETTABLEKS R8 R7 K1 ["instance"]
  GETTABLEKS R9 R7 K2 ["depth"]
  NAMECALL R10 R8 K7 ["GetFullName"]
  CALL R10 1 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K8 ["isPathExcluded"]
  MOVE R13 R10
  CALL R12 1 1
  NOT R11 R12
  JUMPIFNOT R11 [+107]
  NAMECALL R11 R8 K9 ["GetChildren"]
  CALL R11 1 1
  GETUPVAL R12 2
  MOVE R13 R8
  MOVE R14 R1
  CALL R12 2 1
  JUMPIFNOT R12 [+69]
  NEWTABLE R13 0 0
  MOVE R14 R11
  LOADNIL R15
  LOADNIL R16
  FORGPREP R14
  GETTABLEKS R21 R18 K10 ["Name"]
  FASTCALL2 TABLE_INSERT R13 R21 [+4]
  MOVE R20 R13
  GETIMPORT R19 K12 [table.insert]
  CALL R19 2 0
  FORGLOOP R14 2 [-9]
  DUPTABLE R14 K18 [{"name", "className", "fullPath", "parentName", "childrenNames"}]
  GETTABLEKS R15 R8 K10 ["Name"]
  SETTABLEKS R15 R14 K13 ["name"]
  GETTABLEKS R15 R8 K19 ["ClassName"]
  SETTABLEKS R15 R14 K14 ["className"]
  SETTABLEKS R10 R14 K15 ["fullPath"]
  GETTABLEKS R15 R8 K20 ["Parent"]
  JUMPIFNOT R15 [+4]
  GETTABLEKS R16 R8 K20 ["Parent"]
  GETTABLEKS R15 R16 K10 ["Name"]
  SETTABLEKS R15 R14 K16 ["parentName"]
  LENGTH R16 R13
  LOADN R17 0
  JUMPIFNOTLT R17 R16 [+3]
  MOVE R15 R13
  JUMP [+1]
  LOADNIL R15
  SETTABLEKS R15 R14 K17 ["childrenNames"]
  JUMPIFNOTLE R2 R9 [+15]
  GETUPVAL R15 3
  MOVE R16 R8
  MOVE R17 R1
  CALL R15 2 1
  LOADN R16 0
  JUMPIFNOTLT R16 R15 [+8]
  SETTABLEKS R15 R14 K21 ["unexploredChildCount"]
  GETUPVAL R16 4
  MOVE R17 R8
  CALL R16 1 1
  SETTABLEKS R16 R14 K22 ["childSummary"]
  FASTCALL2 TABLE_INSERT R3 R14 [+5]
  MOVE R16 R3
  MOVE R17 R14
  GETIMPORT R15 K12 [table.insert]
  CALL R15 2 0
  ADDK R4 R4 K23 [1]
  JUMPIFNOTLT R9 R2 [+29]
  MOVE R13 R11
  LOADNIL R14
  LOADNIL R15
  FORGPREP R13
  NAMECALL R18 R17 K7 ["GetFullName"]
  CALL R18 1 1
  GETUPVAL R21 1
  GETTABLEKS R20 R21 K8 ["isPathExcluded"]
  MOVE R21 R18
  CALL R20 1 1
  NOT R19 R20
  JUMPIFNOT R19 [+12]
  DUPTABLE R21 K3 [{"instance", "depth"}]
  SETTABLEKS R17 R21 K1 ["instance"]
  ADDK R22 R9 K23 [1]
  SETTABLEKS R22 R21 K2 ["depth"]
  FASTCALL2 TABLE_INSERT R6 R21 [+4]
  MOVE R20 R6
  GETIMPORT R19 K12 [table.insert]
  CALL R19 2 0
  FORGLOOP R13 2 [-23]
  JUMPBACK [-133]
  RETURN R3 2

PROTO_5:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["keywords"]
  JUMPIFNOT R2 [+13]
  LOADK R5 K1 ["keywords '%*'"]
  GETTABLEKS R7 R0 K0 ["keywords"]
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K6 ["instance_type"]
  JUMPIFNOT R2 [+13]
  LOADK R5 K7 ["type '%*'"]
  GETTABLEKS R7 R0 K6 ["instance_type"]
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  GETTABLEKS R2 R0 K8 ["path"]
  JUMPIFNOT R2 [+17]
  GETTABLEKS R2 R0 K8 ["path"]
  JUMPIFEQKS R2 K9 [""] [+14]
  LOADK R5 K10 ["path '%*'"]
  GETTABLEKS R7 R0 K8 ["path"]
  NAMECALL R5 R5 K2 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  FASTCALL2 TABLE_INSERT R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K5 [table.insert]
  CALL R2 2 0
  LENGTH R3 R1
  LOADN R4 0
  JUMPIFNOTLT R4 R3 [+7]
  GETIMPORT R2 K12 [table.concat]
  MOVE R3 R1
  LOADK R4 K13 [", "]
  CALL R2 2 1
  JUMPIF R2 [+1]
  LOADK R2 K14 ["the specified filters"]
  RETURN R2 1

PROTO_6:
  JUMPIFNOT R0 [+2]
  JUMPIFNOTEQKS R0 K0 [""] [+5]
  GETIMPORT R1 K2 [game]
  LOADNIL R2
  RETURN R1 2
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["findInstance"]
  MOVE R2 R0
  CALL R1 1 1
  JUMPIFNOT R1 [+3]
  MOVE R2 R1
  LOADNIL R3
  RETURN R2 2
  LOADNIL R2
  LOADK R4 K4 ["Could not find instance at path '%*'"]
  MOVE R6 R0
  NAMECALL R4 R4 K5 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  RETURN R2 2

PROTO_7:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["JSONEncode"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_8:
  GETTABLEKS R1 R0 K0 ["max_depth"]
  JUMPIF R1 [+1]
  GETUPVAL R1 0
  GETUPVAL R4 1
  FASTCALL2 MATH_MIN R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K3 [math.min]
  CALL R2 2 1
  GETUPVAL R4 1
  JUMPIFLT R4 R1 [+2]
  LOADB R3 0 +1
  LOADB R3 1
  GETTABLEKS R6 R0 K4 ["path"]
  JUMPIFNOT R6 [+2]
  JUMPIFNOTEQKS R6 K5 [""] [+5]
  GETIMPORT R4 K7 [game]
  LOADNIL R5
  JUMP [+16]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K8 ["findInstance"]
  MOVE R8 R6
  CALL R7 1 1
  JUMPIFNOT R7 [+3]
  MOVE R4 R7
  LOADNIL R5
  JUMP [+7]
  LOADNIL R4
  LOADK R8 K9 ["Could not find instance at path '%*'"]
  MOVE R10 R6
  NAMECALL R8 R8 K10 ["format"]
  CALL R8 2 1
  MOVE R5 R8
  JUMPIFNOT R5 [+7]
  LOADK R7 K11 ["Error: %*"]
  MOVE R9 R5
  NAMECALL R7 R7 K10 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  RETURN R6 1
  FASTCALL2K ASSERT R4 K12 [+5]
  MOVE R7 R4
  LOADK R8 K12 ["startInstance should not be nil if err is nil"]
  GETIMPORT R6 K14 [assert]
  CALL R6 2 0
  GETUPVAL R6 3
  MOVE R7 R4
  MOVE R8 R0
  MOVE R9 R2
  CALL R6 3 2
  LENGTH R8 R6
  JUMPIFNOTEQKN R8 K15 [0] [+11]
  GETUPVAL R8 4
  MOVE R9 R0
  CALL R8 1 1
  LOADK R10 K16 ["No instances found matching %*"]
  MOVE R12 R8
  NAMECALL R10 R10 K10 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  RETURN R9 1
  GETIMPORT R8 K18 [pcall]
  NEWCLOSURE R9 P0
  CAPTURE UPVAL U5
  CAPTURE VAL R6
  CALL R8 1 2
  JUMPIF R8 [+11]
  LOADK R11 K19 ["Error encoding JSON: %*"]
  FASTCALL1 TOSTRING R9 [+3]
  MOVE R14 R9
  GETIMPORT R13 K21 [tostring]
  CALL R13 1 1
  NAMECALL R11 R11 K10 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  RETURN R10 1
  GETTABLEKS R10 R0 K22 ["head_limit"]
  JUMPIF R10 [+1]
  GETUPVAL R10 6
  JUMPIFNOTLT R7 R10 [+3]
  JUMPIF R3 [+1]
  RETURN R9 1
  NEWTABLE R11 0 0
  JUMPIFNOTLE R10 R7 [+13]
  LOADK R15 K23 ["Note: Output limited to %* nodes (results truncated)"]
  MOVE R17 R10
  NAMECALL R15 R15 K10 ["format"]
  CALL R15 2 1
  MOVE R14 R15
  FASTCALL2 TABLE_INSERT R11 R14 [+4]
  MOVE R13 R11
  GETIMPORT R12 K26 [table.insert]
  CALL R12 2 0
  JUMPIFNOT R3 [+13]
  LOADK R15 K27 ["Note: Max depth capped at %* (requested %*)"]
  GETUPVAL R17 1
  MOVE R18 R1
  NAMECALL R15 R15 K10 ["format"]
  CALL R15 3 1
  MOVE R14 R15
  FASTCALL2 TABLE_INSERT R11 R14 [+4]
  MOVE R13 R11
  GETIMPORT R12 K26 [table.insert]
  CALL R12 2 0
  GETIMPORT R16 K29 [table.concat]
  MOVE R17 R11
  LOADK R18 K30 ["
"]
  CALL R16 2 1
  MOVE R13 R16
  LOADK R14 K31 ["

"]
  MOVE R15 R9
  CONCAT R12 R13 R15
  RETURN R12 1

PROTO_9:
  GETUPVAL R2 0
  MOVE R3 R1
  CALL R2 1 1
  RETURN R2 1

PROTO_10:
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

PROTO_11:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["GameTreeTool_explore"]
  DUPCLOSURE R5 K2 [PROTO_9]
  CAPTURE UPVAL U0
  NAMECALL R2 R1 K3 ["OnHostInvokeAsync"]
  CALL R2 3 1
  NEWCLOSURE R3 P1
  CAPTURE VAL R2
  CAPTURE UPVAL U1
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["define"]
  CALL R4 0 1
  LOADK R6 K5 ["game_tree"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R7 K7 ["Explore the Roblox game hierarchy tree with flat JSON output.
Returns an array of JSON objects representing instances in the Data Model, showing names, paths, and relationships.
Use optional filters to narrow down results by path, instance type, or keywords.
For detailed inspection of a specific instance's properties and attributes, use the Inspect Instance tool.

OUTPUT FORMAT:
Array of objects with:
{
  \"name\": \"InstanceName\",
  \"className\": \"Part\", 
  \"fullPath\": \"Workspace.Folder.InstanceName\",
  \"parentName\": \"Folder\",
  \"childrenNames\": [\"Child1\", \"Child2\"],  // Present if instance has children
  \"childSummary\": \"5 children (3 Part, 2 Script)\",  // Present if depth limit reached
  \"unexploredChildCount\": 5  // Present if depth limit reached with matching children
}

DEPTH LIMITING:
- Default max_depth: "]
  GETUPVAL R8 3
  LOADK R9 K8 [" levels from start point (absolute traversal depth)
- Absolute max: "]
  GETUPVAL R10 4
  LOADK R11 K9 [" levels
- max_depth limits how deep into the hierarchy we traverse, regardless of filters
- Beyond max_depth, children are summarized with counts by class type
- Nodes at depth limit show: \"unexploredChildCount\" and \"childSummary\"

EXAMPLES:
- Full tree ("]
  GETUPVAL R12 3
  LOADK R13 K10 [" levels): GameTree()
- Workspace only: GameTree(path: \"Workspace\")
- ServerScriptService: GameTree(path: \"ServerScriptService\")
- All base scripts: GameTree(instance_type: \"BaseScript\")
- All parts: GameTree(instance_type: \"Part\")
- By keywords: GameTree(keywords: \"player, character\")
- Deep exploration: GameTree(max_depth: 6)
- Specific path: GameTree(path: \"Workspace.Models\")
- Combined filters: GameTree(path: \"Workspace\", instance_type: \"Part\", keywords: \"red\")
- Increase output: GameTree(head_limit: 1000, max_depth: 5)
"]
  CONCAT R6 R7 R13
  NAMECALL R4 R4 K11 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K12 ["path"]
  DUPTABLE R7 K15 [{"type", "description"}]
  LOADK R8 K16 ["string"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R8 K17 ["Start exploration from this path. Examples: 'Workspace', 'ServerScriptService', 'Workspace.Models'. Path is case-sensitive."]
  SETTABLEKS R8 R7 K14 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K19 ["instance_type"]
  DUPTABLE R7 K15 [{"type", "description"}]
  LOADK R8 K16 ["string"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R8 K20 ["Filter by ClassName using IsA() check. Examples: 'BasePart', 'BaseScript', 'GuiObject', 'Model', 'Folder'. Case sensitive."]
  SETTABLEKS R8 R7 K14 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K21 ["keywords"]
  DUPTABLE R7 K15 [{"type", "description"}]
  LOADK R8 K16 ["string"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R8 K22 ["Filter by instance name keywords (case-insensitive). Separate multiple keywords with commas or spaces. Instance name must contain at least one keyword. Examples: 'player', 'red, blue', 'button door'"]
  SETTABLEKS R8 R7 K14 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K23 ["max_depth"]
  DUPTABLE R7 K15 [{"type", "description"}]
  LOADK R8 K24 ["number"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R9 K25 ["Maximum absolute depth to traverse from start point. Default: %*, Absolute max: %*. Limits how deep we explore in the hierarchy regardless of filters. Beyond this depth, children are summarized instead of expanded."]
  GETUPVAL R11 3
  GETUPVAL R12 4
  NAMECALL R9 R9 K26 ["format"]
  CALL R9 3 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K14 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K27 ["head_limit"]
  DUPTABLE R7 K15 [{"type", "description"}]
  LOADK R8 K24 ["number"]
  SETTABLEKS R8 R7 K13 ["type"]
  LOADK R9 K28 ["Maximum number of results to return. Default: %*. Prevents overwhelming output for large trees."]
  GETUPVAL R11 5
  NAMECALL R9 R9 K26 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K14 ["description"]
  NAMECALL R4 R4 K18 ["addOptionalArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K29 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K30 ["build"]
  CALL R4 1 1
  DUPTABLE R5 K32 [{"definition"}]
  SETTABLEKS R4 R5 K31 ["definition"]
  RETURN R5 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["HttpService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Parent"]
  GETTABLEKS R3 R4 K11 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K12 ["Tools"]
  GETTABLEKS R4 R5 K13 ["ToolTypes"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R6 R0 K14 ["Util"]
  GETTABLEKS R5 R6 K15 ["ToolUtils"]
  CALL R4 1 1
  GETTABLEKS R6 R2 K14 ["Util"]
  GETTABLEKS R5 R6 K16 ["ToolBuilder"]
  GETTABLEKS R7 R2 K14 ["Util"]
  GETTABLEKS R6 R7 K17 ["ToolResult"]
  GETIMPORT R7 K9 [require]
  GETTABLEKS R9 R0 K18 ["Flags"]
  GETTABLEKS R8 R9 K19 ["FIntGameTreeDefaultHeadLimit"]
  CALL R7 1 1
  CALL R7 0 1
  GETIMPORT R8 K9 [require]
  GETTABLEKS R10 R0 K18 ["Flags"]
  GETTABLEKS R9 R10 K20 ["FIntGameTreeDefaultMaxDepth"]
  CALL R8 1 1
  CALL R8 0 1
  GETIMPORT R9 K9 [require]
  GETTABLEKS R11 R0 K18 ["Flags"]
  GETTABLEKS R10 R11 K21 ["FIntGameTreeMaxAbsoluteDepth"]
  CALL R9 1 1
  CALL R9 0 1
  DUPCLOSURE R10 K22 [PROTO_0]
  DUPCLOSURE R11 K23 [PROTO_1]
  CAPTURE VAL R4
  DUPCLOSURE R12 K24 [PROTO_2]
  CAPTURE VAL R10
  DUPCLOSURE R13 K25 [PROTO_3]
  DUPCLOSURE R14 K26 [PROTO_4]
  CAPTURE VAL R7
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R12
  CAPTURE VAL R13
  DUPCLOSURE R15 K27 [PROTO_5]
  DUPCLOSURE R16 K28 [PROTO_6]
  CAPTURE VAL R4
  DUPCLOSURE R17 K29 [PROTO_8]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R1
  CAPTURE VAL R7
  DUPCLOSURE R18 K30 [PROTO_11]
  CAPTURE VAL R17
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R7
  RETURN R18 1
