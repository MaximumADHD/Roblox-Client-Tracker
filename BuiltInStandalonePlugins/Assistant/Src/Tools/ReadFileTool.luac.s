PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["findInstance"]
  MOVE R5 R0
  CALL R4 1 1
  JUMPIF R4 [+9]
  GETIMPORT R5 K2 [error]
  LOADK R7 K3 ["Script not found at path: %*"]
  MOVE R9 R0
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R5 1 0
  LOADK R7 K5 ["Script"]
  NAMECALL R5 R4 K6 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+20]
  LOADK R7 K7 ["LocalScript"]
  NAMECALL R5 R4 K6 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+15]
  LOADK R7 K8 ["ModuleScript"]
  NAMECALL R5 R4 K6 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  GETIMPORT R5 K2 [error]
  LOADK R7 K9 ["Object at path is not a script type. Found: %*"]
  GETTABLEKS R9 R4 K10 ["ClassName"]
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  CALL R5 1 0
  LOADNIL R5
  GETUPVAL R6 1
  CALL R6 0 1
  JUMPIFNOT R6 [+10]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K11 ["get"]
  CALL R7 0 1
  GETTABLEKS R6 R7 K12 ["getScriptSource"]
  MOVE R7 R4
  CALL R6 1 1
  MOVE R5 R6
  JUMP [+2]
  GETTABLEKS R5 R4 K13 ["Source"]
  JUMPIFNOT R3 [+33]
  JUMPIFNOTEQKS R5 K14 [""] [+3]
  LOADK R6 K14 [""]
  RETURN R6 1
  LOADK R8 K15 ["
"]
  NAMECALL R6 R5 K16 ["split"]
  CALL R6 2 1
  NEWTABLE R7 0 0
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  MOVE R14 R7
  GETIMPORT R15 K18 [string.format]
  LOADK R16 K19 ["%6d→%s"]
  MOVE R17 R11
  MOVE R18 R12
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K22 [table.insert]
  CALL R13 -1 0
  FORGLOOP R8 2 [-12]
  GETIMPORT R8 K24 [table.concat]
  MOVE R9 R7
  LOADK R10 K15 ["
"]
  CALL R8 2 -1
  RETURN R8 -1
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+4]
  GETIMPORT R6 K2 [error]
  LOADK R7 K25 ["`start_line_one_indexed` and `end_line_one_indexed_inclusive` are required when `should_read_entire_file` is false"]
  CALL R6 1 0
  LOADN R6 1
  JUMPIFNOTLT R1 R6 [+5]
  GETIMPORT R6 K2 [error]
  LOADK R7 K26 ["`start_line_one_indexed` must be at least 1"]
  CALL R6 1 0
  JUMPIFNOTLT R2 R1 [+5]
  GETIMPORT R6 K2 [error]
  LOADK R7 K27 ["`end_line_one_indexed_inclusive` must be >= `start_line_one_indexed`"]
  CALL R6 1 0
  LOADK R8 K15 ["
"]
  NAMECALL R6 R5 K16 ["split"]
  CALL R6 2 1
  LENGTH R7 R6
  FASTCALL2 MATH_MIN R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K30 [math.min]
  CALL R8 2 1
  JUMPIFNOTLT R7 R1 [+10]
  GETIMPORT R9 K2 [error]
  LOADK R11 K31 ["`start_line_one_indexed` ("]
  MOVE R12 R1
  LOADK R13 K32 [") exceeds file length ("]
  MOVE R14 R7
  LOADK R15 K33 [")"]
  CONCAT R10 R11 R15
  CALL R9 1 0
  NEWTABLE R9 0 0
  MOVE R12 R1
  MOVE R10 R8
  LOADN R11 1
  FORNPREP R10
  MOVE R14 R9
  GETIMPORT R15 K18 [string.format]
  LOADK R16 K19 ["%6d→%s"]
  MOVE R17 R12
  GETTABLE R19 R6 R12
  ORK R18 R19 K14 [""]
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K22 [table.insert]
  CALL R13 -1 0
  FORNLOOP R10
  JUMPIFNOTLT R7 R2 [+14]
  LOADK R13 K34 ["Note: Requested to read until line %*, but file only has %* lines"]
  MOVE R15 R2
  MOVE R16 R7
  NAMECALL R13 R13 K4 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K22 [table.insert]
  CALL R10 2 0
  GETIMPORT R10 K24 [table.concat]
  MOVE R11 R9
  LOADK R12 K15 ["
"]
  CALL R10 2 -1
  RETURN R10 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K0 ["target_file"]
  GETTABLEKS R4 R1 K1 ["start_line_one_indexed"]
  GETTABLEKS R5 R1 K2 ["end_line_one_indexed_inclusive"]
  GETTABLEKS R6 R1 K3 ["should_read_entire_file"]
  CALL R2 4 -1
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
  LOADK R3 K7 ["ReadFile"]
  LOADK R4 K8 ["Pending"]
  NAMECALL R1 R1 K9 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K2 ["summary"]
  RETURN R0 1

PROTO_4:
  GETUPVAL R1 0
  LOADK R3 K0 ["ReadFile"]
  LOADK R4 K1 ["Complete"]
  NAMECALL R1 R1 K2 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K3 ["summary"]
  RETURN R0 0

PROTO_5:
  DUPCLOSURE R0 K0 [PROTO_4]
  CAPTURE UPVAL U0
  RETURN R0 1

PROTO_6:
  GETTABLEKS R1 R0 K0 ["networking"]
  LOADK R4 K1 ["ReadFileTool_readFile"]
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
  GETTABLEKS R6 R7 K5 ["ReadFile"]
  NAMECALL R4 R4 K6 ["setName"]
  CALL R4 2 1
  LOADK R6 K7 ["Reads a script from the Roblox workspace. The output will be returned with line numbers in format: LINE_NUMBER→LINE_CONTENT.
When using this tool to gather information, ensure you gather the COMPLETE context to fulfill the user's request.

Usage:
- You can read multiple scripts in parallel for efficiency
- If you need more information, read additional lines or use the grep search tool to find specific symbols in this script.
- When in doubt, call this tool again to gather more information. Remember that partial script views may miss critical dependencies, imports, or functionality.
- In some cases, if reading a range of lines is not enough, you may choose to read the entire script. Note that reading entire scripts can result in worse performance by filling up the context window more quickly, especially for large scripts above a few hundred lines, so use this option sparingly.
- Avoid re-reading the same range of a script unless the script may have changed since the last read. Avoid setting should_read_entire_file to true if you've already read at least one part of the script.
- Provide both start_line_one_indexed and end_line_one_indexed_inclusive when should_read_entire_file is false
- This tool can read at most 100 lines at a time. Generally it is best to read at least 50 lines at a time to gather enough surrounding context.

Path Format:
- The path needs to be a full path, with no wildcard matching
- Use dot notation like \"game.ServerScriptService.MyScript\"
- Script must already exist (use `file_search` or `grep_search` to find the script path first)
- Will only read existing scripts, never creates new ones
"]
  NAMECALL R4 R4 K8 ["setDescription"]
  CALL R4 2 1
  LOADK R6 K9 ["target_file"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K13 ["string"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K14 ["The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K15 ["addArgument"]
  CALL R4 3 1
  LOADK R6 K16 ["should_read_entire_file"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K17 ["boolean"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K18 ["Whether to read the entire script. Defaults to false."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K15 ["addArgument"]
  CALL R4 3 1
  LOADK R6 K19 ["start_line_one_indexed"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K20 ["integer"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K21 ["The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K22 ["addOptionalArgument"]
  CALL R4 3 1
  LOADK R6 K23 ["end_line_one_indexed_inclusive"]
  DUPTABLE R7 K12 [{"type", "description"}]
  LOADK R8 K20 ["integer"]
  SETTABLEKS R8 R7 K10 ["type"]
  LOADK R8 K24 ["The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R8 R7 K11 ["description"]
  NAMECALL R4 R4 K22 ["addOptionalArgument"]
  CALL R4 3 1
  MOVE R6 R3
  NAMECALL R4 R4 K25 ["setHandler"]
  CALL R4 2 1
  NAMECALL R4 R4 K26 ["build"]
  CALL R4 1 1
  NEWTABLE R5 2 0
  DUPCLOSURE R6 K27 [PROTO_3]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R6 R5 K28 ["transformInitialContent"]
  DUPCLOSURE R6 K29 [PROTO_5]
  CAPTURE UPVAL U5
  SETTABLEKS R6 R5 K30 ["getTransformResultFn"]
  DUPTABLE R6 K33 [{"definition", "streamTransform"}]
  SETTABLEKS R4 R6 K31 ["definition"]
  SETTABLEKS R5 R6 K32 ["streamTransform"]
  RETURN R6 1

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
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["FFlagAssistantUseGetEditorSource"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K11 ["ModelContextProtocol"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K8 ["Src"]
  GETTABLEKS R6 R7 K12 ["Tools"]
  GETTABLEKS R5 R6 K13 ["ToolTypes"]
  CALL R4 1 1
  GETTABLEKS R6 R1 K14 ["Guest"]
  GETTABLEKS R5 R6 K15 ["Environment"]
  GETTABLEKS R8 R1 K16 ["Components"]
  GETTABLEKS R7 R8 K17 ["BuiltinContentWidgets"]
  GETTABLEKS R6 R7 K18 ["SummarizedContentWidget"]
  GETTABLEKS R9 R1 K19 ["Resources"]
  GETTABLEKS R8 R9 K20 ["Localization"]
  GETTABLEKS R7 R8 K21 ["Translator"]
  GETTABLEKS R9 R1 K22 ["Utils"]
  GETTABLEKS R8 R9 K12 ["Tools"]
  GETTABLEKS R10 R3 K23 ["Util"]
  GETTABLEKS R9 R10 K24 ["ToolBuilder"]
  GETTABLEKS R11 R3 K23 ["Util"]
  GETTABLEKS R10 R11 K25 ["ToolResult"]
  GETTABLEKS R11 R4 K26 ["ToolNames"]
  GETTABLEKS R12 R2 K27 ["Get"]
  DUPCLOSURE R13 K28 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R5
  DUPCLOSURE R14 K29 [PROTO_6]
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R7
  RETURN R14 1
