PROTO_0:
        0 JUMPIFNOTEQKNIL                  R4 ; [+2]
        2 LOADB                            R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["findInstance"]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMPIF                           R5 ; [+9]
        9 GETIMPORT                        R6 K2 [error]
       11 LOADK                            R8 K3 ["Script not found at path: %*"]
       12 MOVE                             R10 R1
       13 NAMECALL                         R8 R8 K4 ["format"]
       15 CALL                             R8 2 1
       16 MOVE                             R7 R8
       17 CALL                             R6 1 0
       18 LOADK                            R8 K5 ["Script"]
       19 NAMECALL                         R6 R5 K6 ["IsA"]
       21 CALL                             R6 2 1
       22 JUMPIF                           R6 ; [+20]
       23 LOADK                            R8 K7 ["LocalScript"]
       24 NAMECALL                         R6 R5 K6 ["IsA"]
       26 CALL                             R6 2 1
       27 JUMPIF                           R6 ; [+15]
       28 LOADK                            R8 K8 ["ModuleScript"]
       29 NAMECALL                         R6 R5 K6 ["IsA"]
       31 CALL                             R6 2 1
       32 JUMPIF                           R6 ; [+10]
       33 GETIMPORT                        R6 K2 [error]
       35 LOADK                            R8 K9 ["Object at path is not a script type. Found: %*"]
       36 GETTABLEKS                       R10 R5 K10 ["ClassName"]
       38 NAMECALL                         R8 R8 K4 ["format"]
       40 CALL                             R8 2 1
       41 MOVE                             R7 R8
       42 CALL                             R6 1 0
       43 GETTABLEKS                       R6 R0 K11 ["getScriptSource"]
       45 MOVE                             R7 R5
       46 CALL                             R6 1 1
       47 JUMPIFNOT                        R4 ; [+33]
       48 JUMPIFNOTEQKS                    R6 K12 [""] ; [+3]
       50 LOADK                            R7 K12 [""]
       51 RETURN                           R7 1
       52 LOADK                            R9 K13 ["\n"]
       53 NAMECALL                         R7 R6 K14 ["split"]
       55 CALL                             R7 2 1
       56 NEWTABLE                         R8 0 0
       58 MOVE                             R9 R7
       59 LOADNIL                          R10
       60 LOADNIL                          R11
       61 FORGPREP                         R9
       62 MOVE                             R15 R8
       63 GETIMPORT                        R16 K16 [string.format]
       65 LOADK                            R17 K17 ["%6d→%s"]
       66 MOVE                             R18 R12
       67 MOVE                             R19 R13
       68 CALL                             R16 3 -1
       69 FASTCALL                         TABLE_INSERT ; [+2]
       70 GETIMPORT                        R14 K20 [table.insert]
       72 CALL                             R14 -1 0
       73 FORGLOOP                         R9 2 ; [-12]
       75 GETIMPORT                        R9 K22 [table.concat]
       77 MOVE                             R10 R8
       78 LOADK                            R11 K13 ["\n"]
       79 CALL                             R9 2 -1
       80 RETURN                           R9 -1
       81 JUMPIFNOT                        R2 ; [+1]
       82 JUMPIF                           R3 ; [+4]
       83 GETIMPORT                        R7 K2 [error]
       85 LOADK                            R8 K23 ["`start_line_one_indexed` and `end_line_one_indexed_inclusive` are required when `should_read_entire_file` is false"]
       86 CALL                             R7 1 0
       87 LOADN                            R7 1
       88 JUMPIFNOTLT                      R2 R7 ; [+5]
       90 GETIMPORT                        R7 K2 [error]
       92 LOADK                            R8 K24 ["`start_line_one_indexed` must be at least 1"]
       93 CALL                             R7 1 0
       94 JUMPIFNOTLT                      R3 R2 ; [+5]
       96 GETIMPORT                        R7 K2 [error]
       98 LOADK                            R8 K25 ["`end_line_one_indexed_inclusive` must be >= `start_line_one_indexed`"]
       99 CALL                             R7 1 0
      100 LOADK                            R9 K13 ["\n"]
      101 NAMECALL                         R7 R6 K14 ["split"]
      103 CALL                             R7 2 1
      104 LENGTH                           R8 R7
      105 FASTCALL2                        MATH_MIN R3 R8 ; [+5]
      107 MOVE                             R10 R3
      108 MOVE                             R11 R8
      109 GETIMPORT                        R9 K28 [math.min]
      111 CALL                             R9 2 1
      112 JUMPIFNOTLT                      R8 R2 ; [+10]
      114 GETIMPORT                        R10 K2 [error]
      116 LOADK                            R12 K29 ["`start_line_one_indexed` ("]
      117 MOVE                             R13 R2
      118 LOADK                            R14 K30 [") exceeds file length ("]
      119 MOVE                             R15 R8
      120 LOADK                            R16 K31 [")"]
      121 CONCAT                           R11 R12 R16
      122 CALL                             R10 1 0
      123 NEWTABLE                         R10 0 0
      125 MOVE                             R13 R2
      126 MOVE                             R11 R9
      127 LOADN                            R12 1
      128 FORNPREP                         R11
      129 MOVE                             R15 R10
      130 GETIMPORT                        R16 K16 [string.format]
      132 LOADK                            R17 K17 ["%6d→%s"]
      133 MOVE                             R18 R13
      134 GETTABLE                         R20 R7 R13
      135 ORK                              R19 R20 K12 [""]
      136 CALL                             R16 3 -1
      137 FASTCALL                         TABLE_INSERT ; [+2]
      138 GETIMPORT                        R14 K20 [table.insert]
      140 CALL                             R14 -1 0
      141 FORNLOOP                         R11
      142 JUMPIFNOTLT                      R8 R3 ; [+14]
      144 LOADK                            R14 K32 ["Note: Requested to read until line %*, but file only has %* lines"]
      145 MOVE                             R16 R3
      146 MOVE                             R17 R8
      147 NAMECALL                         R14 R14 K4 ["format"]
      149 CALL                             R14 3 1
      150 MOVE                             R13 R14
      151 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      153 MOVE                             R12 R10
      154 GETIMPORT                        R11 K20 [table.insert]
      156 CALL                             R11 2 0
      157 GETIMPORT                        R11 K22 [table.concat]
      159 MOVE                             R12 R10
      160 LOADK                            R13 K13 ["\n"]
      161 CALL                             R11 2 -1
      162 RETURN                           R11 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R1 K0 ["target_file"]
        4 GETTABLEKS                       R5 R1 K1 ["start_line_one_indexed"]
        6 GETTABLEKS                       R6 R1 K2 ["end_line_one_indexed_inclusive"]
        8 GETTABLEKS                       R7 R1 K3 ["should_read_entire_file"]
       10 CALL                             R2 5 -1
       11 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K0 ["addText"]
        9 CALL                             R2 2 1
       10 NAMECALL                         R2 R2 K1 ["build"]
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findInstance"]
        3 GETTABLEKS                       R3 R1 K1 ["path"]
        5 CALL                             R2 1 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADK                            R5 K2 ["LuaSourceContainer"]
        8 NAMECALL                         R3 R2 K3 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K6 [task.spawn]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K7 ["openScriptAsync"]
       18 MOVE                             R5 R2
       19 GETTABLEKS                       R6 R1 K8 ["startLine"]
       21 GETTABLEKS                       R7 R1 K9 ["endLine"]
       23 CALL                             R3 4 0
       24 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R0 K2 [{"type", "targetFile"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 LOADK                            R1 K4 [""]
        7 SETTABLEKS                       R1 R0 K1 ["targetFile"]
        9 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["targetFile"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["startLine"]
        6 GETUPVAL                         R1 2
        7 SETTABLEKS                       R1 R0 K2 ["endLine"]
        9 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R2 K2 ["target_file"]
        4 ORK                              R1 R2 K0 [""]
        5 GETTABLEKS                       R2 R0 K1 ["input"]
        7 GETTABLEKS                       R2 R2 K3 ["start_line_one_indexed"]
        9 GETTABLEKS                       R3 R0 K1 ["input"]
       11 GETTABLEKS                       R3 R3 K4 ["end_line_one_indexed_inclusive"]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R3
       17 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["ReadFileTool_readFile"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K5 ["ReadFile"]
       21 NAMECALL                         R5 R5 K6 ["setName"]
       23 CALL                             R5 2 1
       24 LOADK                            R7 K7 ["Reads a script from the Roblox workspace. The output will be returned with line numbers in format: LINE_NUMBER→LINE_CONTENT.\nWhen using this tool to gather information, ensure you gather the COMPLETE context to fulfill the user's request.\n\nUsage:\n- This tool reads the entire script by default to provide complete context\n- You can read multiple scripts in parallel for efficiency\n- If you need to find specific symbols across multiple scripts, use the grep search tool\n- Avoid re-reading the same script unless the script may have changed since the last read\n- For very large scripts (thousands of lines), consider using grep_search to locate specific functions or patterns first\n\nPath Format:\n- The path needs to be a full path, with no wildcard matching\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n- Script must already exist (use `file_search` or `grep_search` to find the script path first)\n- Will only read existing scripts, never creates new ones\n"]
       25 NAMECALL                         R5 R5 K8 ["setDescription"]
       27 CALL                             R5 2 1
       28 LOADK                            R7 K9 ["target_file"]
       29 DUPTABLE                         R8 K12 [{"type", "description"}]
       30 LOADK                            R9 K13 ["string"]
       31 SETTABLEKS                       R9 R8 K10 ["type"]
       33 LOADK                            R9 K14 ["The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"]
       34 SETTABLEKS                       R9 R8 K11 ["description"]
       36 NAMECALL                         R5 R5 K15 ["addArgument"]
       38 CALL                             R5 3 1
       39 LOADK                            R7 K16 ["should_read_entire_file"]
       40 DUPTABLE                         R8 K12 [{"type", "description"}]
       41 LOADK                            R9 K17 ["boolean"]
       42 SETTABLEKS                       R9 R8 K10 ["type"]
       44 LOADK                            R9 K18 ["Whether to read the entire script. Defaults to true."]
       45 SETTABLEKS                       R9 R8 K11 ["description"]
       47 NAMECALL                         R5 R5 K19 ["addOptionalArgument"]
       49 CALL                             R5 3 1
       50 LOADK                            R7 K20 ["start_line_one_indexed"]
       51 DUPTABLE                         R8 K12 [{"type", "description"}]
       52 LOADK                            R9 K21 ["integer"]
       53 SETTABLEKS                       R9 R8 K10 ["type"]
       55 LOADK                            R9 K22 ["The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."]
       56 SETTABLEKS                       R9 R8 K11 ["description"]
       58 NAMECALL                         R5 R5 K19 ["addOptionalArgument"]
       60 CALL                             R5 3 1
       61 LOADK                            R7 K23 ["end_line_one_indexed_inclusive"]
       62 DUPTABLE                         R8 K12 [{"type", "description"}]
       63 LOADK                            R9 K21 ["integer"]
       64 SETTABLEKS                       R9 R8 K10 ["type"]
       66 LOADK                            R9 K24 ["The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."]
       67 SETTABLEKS                       R9 R8 K11 ["description"]
       69 NAMECALL                         R5 R5 K19 ["addOptionalArgument"]
       71 CALL                             R5 3 1
       72 DUPTABLE                         R7 K30 [{"title", "readOnlyHint", "destructiveHint", "idempotentHint", "openWorldHint"}]
       73 LOADK                            R8 K31 ["Read File"]
       74 SETTABLEKS                       R8 R7 K25 ["title"]
       76 LOADB                            R8 1
       77 SETTABLEKS                       R8 R7 K26 ["readOnlyHint"]
       79 LOADB                            R8 0
       80 SETTABLEKS                       R8 R7 K27 ["destructiveHint"]
       82 LOADB                            R8 0
       83 SETTABLEKS                       R8 R7 K28 ["idempotentHint"]
       85 LOADB                            R8 0
       86 SETTABLEKS                       R8 R7 K29 ["openWorldHint"]
       88 NAMECALL                         R5 R5 K32 ["setAnnotations"]
       90 CALL                             R5 2 1
       91 MOVE                             R7 R4
       92 NAMECALL                         R5 R5 K33 ["setHandler"]
       94 CALL                             R5 2 1
       95 NAMECALL                         R5 R5 K34 ["build"]
       97 CALL                             R5 1 1
       98 GETUPVAL                         R6 4
       99 CALL                             R6 0 1
      100 JUMPIF                           R6 ; [+7]
      101 LOADK                            R8 K35 ["ReadFileTool_openScript"]
      102 NEWCLOSURE                       R9 P2
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R2
      105 NAMECALL                         R6 R1 K3 ["OnHostInvokeAsync"]
      107 CALL                             R6 3 0
      108 DUPTABLE                         R6 K38 [{"transformInitialContent", "getTransformPreExecuteFn"}]
      109 DUPCLOSURE                       R7 K39 [PROTO_4]
      110 CAPTURE                          UPVAL U6
      111 SETTABLEKS                       R7 R6 K36 ["transformInitialContent"]
      113 DUPCLOSURE                       R7 K40 [PROTO_6]
      114 SETTABLEKS                       R7 R6 K37 ["getTransformPreExecuteFn"]
      116 DUPTABLE                         R7 K44 [{"definition", "contentWidgets", "streamTransform"}]
      117 SETTABLEKS                       R5 R7 K41 ["definition"]
      119 GETUPVAL                         R9 4
      120 CALL                             R9 0 1
      121 JUMPIFNOT                        R9 ; [+2]
      122 LOADNIL                          R8
      123 JUMP                             ; [+5]
      124 NEWTABLE                         R8 0 1
      126 GETUPVAL                         R9 6
      127 SETLIST                          R8 R9 1 [1]
      129 SETTABLEKS                       R8 R7 K42 ["contentWidgets"]
      131 GETUPVAL                         R9 4
      132 CALL                             R9 0 1
      133 JUMPIFNOT                        R9 ; [+2]
      134 LOADNIL                          R8
      135 JUMP                             ; [+1]
      136 MOVE                             R8 R6
      137 SETTABLEKS                       R8 R7 K43 ["streamTransform"]
      139 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R4 K12 ["ReadFileContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Tools"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Util"]
       41 GETTABLEKS                       R6 R6 K16 ["ToolUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K17 ["Flags"]
       48 GETTABLEKS                       R7 R7 K18 ["FFlagAssistantSplitToolsAndWidgets"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K15 ["Util"]
       53 GETTABLEKS                       R7 R7 K19 ["ToolBuilder"]
       55 GETTABLEKS                       R8 R2 K15 ["Util"]
       57 GETTABLEKS                       R8 R8 K20 ["ToolResult"]
       59 GETTABLEKS                       R9 R4 K21 ["ToolNames"]
       61 DUPCLOSURE                       R10 K22 [PROTO_0]
       62 CAPTURE                          VAL R5
       63 DUPCLOSURE                       R11 K23 [PROTO_7]
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R3
       71 RETURN                           R11 1
