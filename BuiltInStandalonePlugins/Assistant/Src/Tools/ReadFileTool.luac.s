PROTO_0:
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["findInstance"]
  MOVE R5 R0
  CALL R4 1 1
  JUMPIF R4 [+4]
  LOADK R6 K1 ["Error: Script not found at path: "]
  MOVE R7 R0
  CONCAT R5 R6 R7
  RETURN R5 1
  LOADK R7 K2 ["Script"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+15]
  LOADK R7 K4 ["LocalScript"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+10]
  LOADK R7 K5 ["ModuleScript"]
  NAMECALL R5 R4 K3 ["IsA"]
  CALL R5 2 1
  JUMPIF R5 [+5]
  LOADK R6 K6 ["Error: Object at path is not a script type. Found: "]
  GETTABLEKS R7 R4 K7 ["ClassName"]
  CONCAT R5 R6 R7
  RETURN R5 1
  GETTABLEKS R6 R4 K9 ["Source"]
  ORK R5 R6 K8 [""]
  JUMPIFNOT R3 [+33]
  JUMPIFNOTEQKS R5 K8 [""] [+3]
  LOADK R6 K8 [""]
  RETURN R6 1
  LOADK R8 K10 ["
"]
  NAMECALL R6 R5 K11 ["split"]
  CALL R6 2 1
  NEWTABLE R7 0 0
  MOVE R8 R6
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  MOVE R14 R7
  GETIMPORT R15 K14 [string.format]
  LOADK R16 K15 ["%6d→%s"]
  MOVE R17 R11
  MOVE R18 R12
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K18 [table.insert]
  CALL R13 -1 0
  FORGLOOP R8 2 [-12]
  GETIMPORT R8 K20 [table.concat]
  MOVE R9 R7
  LOADK R10 K10 ["
"]
  CALL R8 2 -1
  RETURN R8 -1
  JUMPIFNOT R1 [+1]
  JUMPIF R2 [+2]
  LOADK R6 K21 ["Error: start_line_one_indexed and end_line_one_indexed_inclusive are required when should_read_entire_file is false"]
  RETURN R6 1
  LOADN R6 1
  JUMPIFNOTLT R1 R6 [+3]
  LOADK R6 K22 ["Error: start_line_one_indexed must be at least 1"]
  RETURN R6 1
  JUMPIFNOTLT R2 R1 [+3]
  LOADK R6 K23 ["Error: end_line_one_indexed_inclusive must be >= start_line_one_indexed"]
  RETURN R6 1
  LOADK R8 K10 ["
"]
  NAMECALL R6 R5 K11 ["split"]
  CALL R6 2 1
  LENGTH R7 R6
  FASTCALL2 MATH_MIN R2 R7 [+5]
  MOVE R9 R2
  MOVE R10 R7
  GETIMPORT R8 K26 [math.min]
  CALL R8 2 1
  JUMPIFNOTLT R7 R1 [+9]
  LOADK R10 K27 ["Error: start_line_one_indexed (%*) exceeds file length (%*)"]
  MOVE R12 R1
  MOVE R13 R7
  NAMECALL R10 R10 K13 ["format"]
  CALL R10 3 1
  MOVE R9 R10
  RETURN R9 1
  NEWTABLE R9 0 0
  MOVE R12 R1
  MOVE R10 R8
  LOADN R11 1
  FORNPREP R10
  MOVE R14 R9
  GETIMPORT R15 K14 [string.format]
  LOADK R16 K15 ["%6d→%s"]
  MOVE R17 R12
  GETTABLE R19 R6 R12
  ORK R18 R19 K8 [""]
  CALL R15 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R13 K18 [table.insert]
  CALL R13 -1 0
  FORNLOOP R10
  JUMPIFNOTLT R7 R2 [+14]
  LOADK R13 K28 ["Note: Requested to read until line %*, but file only has %* lines"]
  MOVE R15 R2
  MOVE R16 R7
  NAMECALL R13 R13 K13 ["format"]
  CALL R13 3 1
  MOVE R12 R13
  FASTCALL2 TABLE_INSERT R9 R12 [+4]
  MOVE R11 R9
  GETIMPORT R10 K18 [table.insert]
  CALL R10 2 0
  GETIMPORT R10 K20 [table.concat]
  MOVE R11 R9
  LOADK R12 K10 ["
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
  GETTABLEKS R6 R1 K14 ["Utils"]
  GETTABLEKS R5 R6 K12 ["Tools"]
  GETTABLEKS R7 R2 K10 ["Util"]
  GETTABLEKS R6 R7 K15 ["ToolBuilder"]
  GETTABLEKS R8 R2 K10 ["Util"]
  GETTABLEKS R7 R8 K16 ["ToolResult"]
  GETTABLEKS R8 R4 K17 ["ToolNames"]
  GETTABLEKS R9 R3 K18 ["get"]
  CALL R9 0 1
  DUPCLOSURE R10 K19 [PROTO_0]
  CAPTURE VAL R5
  LOADK R13 K20 ["ReadFileTool_readFile"]
  DUPCLOSURE R14 K21 [PROTO_1]
  CAPTURE VAL R10
  NAMECALL R11 R9 K22 ["OnHostInvokeAsync"]
  CALL R11 3 1
  DUPCLOSURE R12 K23 [PROTO_2]
  CAPTURE VAL R11
  CAPTURE VAL R7
  GETTABLEKS R13 R6 K24 ["define"]
  CALL R13 0 1
  GETTABLEKS R15 R8 K25 ["ReadFile"]
  NAMECALL R13 R13 K26 ["setName"]
  CALL R13 2 1
  LOADK R15 K27 ["Reads a script from the Roblox workspace. The output will be returned with line numbers in format: LINE_NUMBER→LINE_CONTENT.
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
  NAMECALL R13 R13 K28 ["setDescription"]
  CALL R13 2 1
  LOADK R15 K29 ["target_file"]
  DUPTABLE R16 K32 [{"type", "description"}]
  LOADK R17 K33 ["string"]
  SETTABLEKS R17 R16 K30 ["type"]
  LOADK R17 K34 ["The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"]
  SETTABLEKS R17 R16 K31 ["description"]
  NAMECALL R13 R13 K35 ["addArgument"]
  CALL R13 3 1
  LOADK R15 K36 ["should_read_entire_file"]
  DUPTABLE R16 K32 [{"type", "description"}]
  LOADK R17 K37 ["boolean"]
  SETTABLEKS R17 R16 K30 ["type"]
  LOADK R17 K38 ["Whether to read the entire script. Defaults to false."]
  SETTABLEKS R17 R16 K31 ["description"]
  NAMECALL R13 R13 K35 ["addArgument"]
  CALL R13 3 1
  LOADK R15 K39 ["start_line_one_indexed"]
  DUPTABLE R16 K32 [{"type", "description"}]
  LOADK R17 K40 ["integer"]
  SETTABLEKS R17 R16 K30 ["type"]
  LOADK R17 K41 ["The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R17 R16 K31 ["description"]
  NAMECALL R13 R13 K42 ["addOptionalArgument"]
  CALL R13 3 1
  LOADK R15 K43 ["end_line_one_indexed_inclusive"]
  DUPTABLE R16 K32 [{"type", "description"}]
  LOADK R17 K40 ["integer"]
  SETTABLEKS R17 R16 K30 ["type"]
  LOADK R17 K44 ["The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."]
  SETTABLEKS R17 R16 K31 ["description"]
  NAMECALL R13 R13 K42 ["addOptionalArgument"]
  CALL R13 3 1
  MOVE R15 R12
  NAMECALL R13 R13 K45 ["setHandler"]
  CALL R13 2 1
  NAMECALL R13 R13 K46 ["build"]
  CALL R13 1 1
  DUPTABLE R14 K48 [{"definition"}]
  SETTABLEKS R13 R14 K47 ["definition"]
  RETURN R14 1
