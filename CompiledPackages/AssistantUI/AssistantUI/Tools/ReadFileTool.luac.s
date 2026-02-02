PROTO_0:
  JUMPIFNOTEQKNIL R4 [+2]
  LOADB R4 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["findInstance"]
  MOVE R6 R1
  CALL R5 1 1
  JUMPIF R5 [+9]
  GETIMPORT R6 K2 [error]
  LOADK R8 K3 ["Script not found at path: %*"]
  MOVE R10 R1
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  LOADK R8 K5 ["Script"]
  NAMECALL R6 R5 K6 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+20]
  LOADK R8 K7 ["LocalScript"]
  NAMECALL R6 R5 K6 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+15]
  LOADK R8 K8 ["ModuleScript"]
  NAMECALL R6 R5 K6 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+10]
  GETIMPORT R6 K2 [error]
  LOADK R8 K9 ["Object at path is not a script type. Found: %*"]
  GETTABLEKS R10 R5 K10 ["ClassName"]
  NAMECALL R8 R8 K4 ["format"]
  CALL R8 2 1
  MOVE R7 R8
  CALL R6 1 0
  GETTABLEKS R6 R0 K11 ["getScriptSource"]
  MOVE R7 R5
  CALL R6 1 1
  JUMPIFNOT R4 [+33]
  JUMPIFNOTEQKS R6 K12 [""] [+3]
  LOADK R7 K12 [""]
  RETURN R7 1
  LOADK R9 K13 ["
"]
  NAMECALL R7 R6 K14 ["split"]
  CALL R7 2 1
  NEWTABLE R8 0 0
  MOVE R9 R7
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  MOVE R15 R8
  GETIMPORT R16 K16 [string.format]
  LOADK R17 K17 ["%6d→%s"]
  MOVE R18 R12
  MOVE R19 R13
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K20 [table.insert]
  CALL R14 -1 0
  FORGLOOP R9 2 [-12]
  GETIMPORT R9 K22 [table.concat]
  MOVE R10 R8
  LOADK R11 K13 ["
"]
  CALL R9 2 -1
  RETURN R9 -1
  JUMPIFNOT R2 [+1]
  JUMPIF R3 [+4]
  GETIMPORT R7 K2 [error]
  LOADK R8 K23 ["`start_line_one_indexed` and `end_line_one_indexed_inclusive` are required when `should_read_entire_file` is false"]
  CALL R7 1 0
  LOADN R7 1
  JUMPIFNOTLT R2 R7 [+5]
  GETIMPORT R7 K2 [error]
  LOADK R8 K24 ["`start_line_one_indexed` must be at least 1"]
  CALL R7 1 0
  JUMPIFNOTLT R3 R2 [+5]
  GETIMPORT R7 K2 [error]
  LOADK R8 K25 ["`end_line_one_indexed_inclusive` must be >= `start_line_one_indexed`"]
  CALL R7 1 0
  LOADK R9 K13 ["
"]
  NAMECALL R7 R6 K14 ["split"]
  CALL R7 2 1
  LENGTH R8 R7
  FASTCALL2 MATH_MIN R3 R8 [+5]
  MOVE R10 R3
  MOVE R11 R8
  GETIMPORT R9 K28 [math.min]
  CALL R9 2 1
  JUMPIFNOTLT R8 R2 [+10]
  GETIMPORT R10 K2 [error]
  LOADK R12 K29 ["`start_line_one_indexed` ("]
  MOVE R13 R2
  LOADK R14 K30 [") exceeds file length ("]
  MOVE R15 R8
  LOADK R16 K31 [")"]
  CONCAT R11 R12 R16
  CALL R10 1 0
  NEWTABLE R10 0 0
  MOVE R13 R2
  MOVE R11 R9
  LOADN R12 1
  FORNPREP R11
  MOVE R15 R10
  GETIMPORT R16 K16 [string.format]
  LOADK R17 K17 ["%6d→%s"]
  MOVE R18 R13
  GETTABLE R20 R7 R13
  ORK R19 R20 K12 [""]
  CALL R16 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R14 K20 [table.insert]
  CALL R14 -1 0
  FORNLOOP R11
  JUMPIFNOTLT R8 R3 [+14]
  LOADK R14 K32 ["Note: Requested to read until line %*, but file only has %* lines"]
  MOVE R16 R3
  MOVE R17 R8
  NAMECALL R14 R14 K4 ["format"]
  CALL R14 3 1
  MOVE R13 R14
  FASTCALL2 TABLE_INSERT R10 R13 [+4]
  MOVE R12 R10
  GETIMPORT R11 K20 [table.insert]
  CALL R11 2 0
  GETIMPORT R11 K22 [table.concat]
  MOVE R12 R10
  LOADK R13 K13 ["
"]
  CALL R11 2 -1
  RETURN R11 -1

PROTO_1:
  GETUPVAL R2 0
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K0 ["target_file"]
  GETTABLEKS R5 R1 K1 ["start_line_one_indexed"]
  GETTABLEKS R6 R1 K2 ["end_line_one_indexed_inclusive"]
  GETTABLEKS R7 R1 K3 ["should_read_entire_file"]
  CALL R2 5 -1
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
  GETTABLEKS R2 R0 K1 ["environment"]
  LOADK R5 K2 ["ReadFileTool_readFile"]
  NEWCLOSURE R6 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R2
  NAMECALL R3 R1 K3 ["OnHostInvokeAsync"]
  CALL R3 3 1
  NEWCLOSURE R4 P1
  CAPTURE VAL R3
  CAPTURE UPVAL U1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["define"]
  CALL R5 0 1
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K5 ["ReadFile"]
  NAMECALL R5 R5 K6 ["setName"]
  CALL R5 2 1
  LOADK R7 K7 ["Reads a script from the Roblox workspace. The output will be returned with line numbers in format: LINE_NUMBER→LINE_CONTENT.
When using this tool to gather information, ensure you gather the COMPLETE context to fulfill the user's request.

Usage:
- This tool reads the entire script by default to provide complete context
- You can read multiple scripts in parallel for efficiency
- If you need to find specific symbols across multiple scripts, use the grep search tool
- Avoid re-reading the same script unless the script may have changed since the last read
- For very large scripts (thousands of lines), consider using grep_search to locate specific functions or patterns first

Path Format:
- The path needs to be a full path, with no wildcard matching
- Use dot notation like \"game.ServerScriptService.MyScript\"
- Script must already exist (use `file_search` or `grep_search` to find the script path first)
- Will only read existing scripts, never creates new ones
"]
  NAMECALL R5 R5 K8 ["setDescription"]
  CALL R5 2 1
  LOADK R7 K9 ["target_file"]
  DUPTABLE R8 K12 [{"type", "description"}]
  LOADK R9 K13 ["string"]
  SETTABLEKS R9 R8 K10 ["type"]
  LOADK R9 K14 ["The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"]
  SETTABLEKS R9 R8 K11 ["description"]
  NAMECALL R5 R5 K15 ["addArgument"]
  CALL R5 3 1
  LOADK R7 K16 ["should_read_entire_file"]
  DUPTABLE R8 K12 [{"type", "description"}]
  LOADK R9 K17 ["boolean"]
  SETTABLEKS R9 R8 K10 ["type"]
  LOADK R9 K18 ["Whether to read the entire script. Defaults to true."]
  SETTABLEKS R9 R8 K11 ["description"]
  NAMECALL R5 R5 K19 ["addOptionalArgument"]
  CALL R5 3 1
  LOADK R7 K20 ["start_line_one_indexed"]
  DUPTABLE R8 K12 [{"type", "description"}]
  LOADK R9 K21 ["integer"]
  SETTABLEKS R9 R8 K10 ["type"]
  LOADK R9 K22 ["The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R9 R8 K11 ["description"]
  NAMECALL R5 R5 K19 ["addOptionalArgument"]
  CALL R5 3 1
  LOADK R7 K23 ["end_line_one_indexed_inclusive"]
  DUPTABLE R8 K12 [{"type", "description"}]
  LOADK R9 K21 ["integer"]
  SETTABLEKS R9 R8 K10 ["type"]
  LOADK R9 K24 ["The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R9 R8 K11 ["description"]
  NAMECALL R5 R5 K19 ["addOptionalArgument"]
  CALL R5 3 1
  MOVE R7 R4
  NAMECALL R5 R5 K25 ["setHandler"]
  CALL R5 2 1
  NAMECALL R5 R5 K26 ["build"]
  CALL R5 1 1
  DUPTABLE R6 K29 [{"transformInitialContent", "getTransformResultFn"}]
  DUPCLOSURE R7 K30 [PROTO_3]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K27 ["transformInitialContent"]
  DUPCLOSURE R7 K31 [PROTO_5]
  CAPTURE UPVAL U5
  SETTABLEKS R7 R6 K28 ["getTransformResultFn"]
  DUPTABLE R7 K34 [{"definition", "streamTransform"}]
  SETTABLEKS R5 R7 K32 ["definition"]
  SETTABLEKS R6 R7 K33 ["streamTransform"]
  RETURN R7 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Guest"]
  GETTABLEKS R2 R3 K7 ["Environment"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["ModelContextProtocol"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["ContentWidgets"]
  GETTABLEKS R4 R5 K12 ["SummarizedContentWidget"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Tools"]
  GETTABLEKS R5 R6 K14 ["ToolTypes"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K15 ["Util"]
  GETTABLEKS R6 R7 K16 ["ToolUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K17 ["Resources"]
  GETTABLEKS R8 R9 K18 ["Localization"]
  GETTABLEKS R7 R8 K19 ["Translator"]
  CALL R6 1 1
  GETTABLEKS R8 R2 K15 ["Util"]
  GETTABLEKS R7 R8 K20 ["ToolBuilder"]
  GETTABLEKS R9 R2 K15 ["Util"]
  GETTABLEKS R8 R9 K21 ["ToolResult"]
  GETTABLEKS R9 R4 K22 ["ToolNames"]
  DUPCLOSURE R10 K23 [PROTO_0]
  CAPTURE VAL R5
  DUPCLOSURE R11 K24 [PROTO_6]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R6
  RETURN R11 1
