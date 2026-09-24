PROTO_0:
        0 JUMPIFNOTEQKNIL                  R4 ; [+2]
        2 LOADB                            R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["findInstance"]
        6 MOVE                             R6 R1
        7 CALL                             R5 1 1
        8 JUMPIF                           R5 ; [+8]
        9 GETIMPORT                        R6 K2 [error]
       11 LOADK                            R7 K3 ["Script not found at path: %*"]
       12 MOVE                             R9 R1
       13 NAMECALL                         R7 R7 K4 ["format"]
       15 CALL                             R7 2 1
       16 CALL                             R6 1 0
       17 LOADK                            R8 K5 ["Script"]
       18 NAMECALL                         R6 R5 K6 ["IsA"]
       20 CALL                             R6 2 1
       21 JUMPIF                           R6 ; [+19]
       22 LOADK                            R8 K7 ["LocalScript"]
       23 NAMECALL                         R6 R5 K6 ["IsA"]
       25 CALL                             R6 2 1
       26 JUMPIF                           R6 ; [+14]
       27 LOADK                            R8 K8 ["ModuleScript"]
       28 NAMECALL                         R6 R5 K6 ["IsA"]
       30 CALL                             R6 2 1
       31 JUMPIF                           R6 ; [+9]
       32 GETIMPORT                        R6 K2 [error]
       34 LOADK                            R7 K9 ["Object at path is not a script type. Found: %*"]
       35 GETTABLEKS                       R9 R5 K10 ["ClassName"]
       37 NAMECALL                         R7 R7 K4 ["format"]
       39 CALL                             R7 2 1
       40 CALL                             R6 1 0
       41 GETTABLEKS                       R6 R0 K11 ["getScriptSource"]
       43 MOVE                             R7 R5
       44 CALL                             R6 1 1
       45 JUMPIFNOT                        R4 ; [+33]
       46 JUMPIFNOTEQKS                    R6 K12 [""] ; [+3]
       48 LOADK                            R7 K12 [""]
       49 RETURN                           R7 1
       50 LOADK                            R9 K13 ["\n"]
       51 NAMECALL                         R7 R6 K14 ["split"]
       53 CALL                             R7 2 1
       54 NEWTABLE                         R8 0 0
       56 MOVE                             R9 R7
       57 LOADNIL                          R10
       58 LOADNIL                          R11
       59 FORGPREP                         R9
       60 MOVE                             R15 R8
       61 GETIMPORT                        R16 K16 [string.format]
       63 LOADK                            R17 K17 ["%6d→%s"]
       64 MOVE                             R18 R12
       65 MOVE                             R19 R13
       66 CALL                             R16 3 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R14 K20 [table.insert]
       70 CALL                             R14 -1 0
       71 FORGLOOP                         R9 2 ; [-12]
       73 GETIMPORT                        R9 K22 [table.concat]
       75 MOVE                             R10 R8
       76 LOADK                            R11 K13 ["\n"]
       77 CALL                             R9 2 -1
       78 RETURN                           R9 -1
       79 JUMPIFNOT                        R2 ; [+1]
       80 JUMPIF                           R3 ; [+4]
       81 GETIMPORT                        R7 K2 [error]
       83 LOADK                            R8 K23 ["`start_line_one_indexed` and `end_line_one_indexed_inclusive` are required when `should_read_entire_file` is false"]
       84 CALL                             R7 1 0
       85 LOADN                            R7 1
       86 JUMPIFNOTLT                      R2 R7 ; [+5]
       88 GETIMPORT                        R7 K2 [error]
       90 LOADK                            R8 K24 ["`start_line_one_indexed` must be at least 1"]
       91 CALL                             R7 1 0
       92 JUMPIFNOTLT                      R3 R2 ; [+5]
       94 GETIMPORT                        R7 K2 [error]
       96 LOADK                            R8 K25 ["`end_line_one_indexed_inclusive` must be >= `start_line_one_indexed`"]
       97 CALL                             R7 1 0
       98 LOADK                            R9 K13 ["\n"]
       99 NAMECALL                         R7 R6 K14 ["split"]
      101 CALL                             R7 2 1
      102 LENGTH                           R8 R7
      103 FASTCALL2                        MATH_MIN R3 R8 ; [+5]
      105 MOVE                             R10 R3
      106 MOVE                             R11 R8
      107 GETIMPORT                        R9 K28 [math.min]
      109 CALL                             R9 2 1
      110 JUMPIFNOTLT                      R8 R2 ; [+10]
      112 GETIMPORT                        R10 K2 [error]
      114 LOADK                            R12 K29 ["`start_line_one_indexed` ("]
      115 MOVE                             R13 R2
      116 LOADK                            R14 K30 [") exceeds file length ("]
      117 MOVE                             R15 R8
      118 LOADK                            R16 K31 [")"]
      119 CONCAT                           R11 R12 R16
      120 CALL                             R10 1 0
      121 NEWTABLE                         R10 0 0
      123 MOVE                             R13 R2
      124 MOVE                             R11 R9
      125 LOADN                            R12 1
      126 FORNPREP                         R11
      127 MOVE                             R15 R10
      128 GETIMPORT                        R16 K16 [string.format]
      130 LOADK                            R17 K17 ["%6d→%s"]
      131 MOVE                             R18 R13
      132 GETTABLE                         R20 R7 R13
      133 ORK                              R19 R20 K12 [""]
      134 CALL                             R16 3 -1
      135 FASTCALL                         TABLE_INSERT ; [+2]
      136 GETIMPORT                        R14 K20 [table.insert]
      138 CALL                             R14 -1 0
      139 FORNLOOP                         R11
      140 JUMPIFNOTLT                      R8 R3 ; [+13]
      142 LOADK                            R13 K32 ["Note: Requested to read until line %*, but file only has %* lines"]
      143 MOVE                             R15 R3
      144 MOVE                             R16 R8
      145 NAMECALL                         R13 R13 K4 ["format"]
      147 CALL                             R13 3 1
      148 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      150 MOVE                             R12 R10
      151 GETIMPORT                        R11 K20 [table.insert]
      153 CALL                             R11 2 0
      154 GETIMPORT                        R11 K22 [table.concat]
      156 MOVE                             R12 R10
      157 LOADK                            R13 K13 ["\n"]
      158 CALL                             R11 2 -1
      159 RETURN                           R11 -1

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
       29 DUPTABLE                         R8 K14 [{["type"] = "string", ["description"] = "The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"}]
       30 NAMECALL                         R5 R5 K15 ["addArgument"]
       32 CALL                             R5 3 1
       33 LOADK                            R7 K16 ["should_read_entire_file"]
       34 DUPTABLE                         R8 K19 [{["type"] = "boolean", ["description"] = "Whether to read the entire script. Defaults to true."}]
       35 NAMECALL                         R5 R5 K20 ["addOptionalArgument"]
       37 CALL                             R5 3 1
       38 LOADK                            R7 K21 ["start_line_one_indexed"]
       39 DUPTABLE                         R8 K24 [{["type"] = "integer", ["description"] = "The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."}]
       40 NAMECALL                         R5 R5 K20 ["addOptionalArgument"]
       42 CALL                             R5 3 1
       43 LOADK                            R7 K25 ["end_line_one_indexed_inclusive"]
       44 DUPTABLE                         R8 K27 [{["type"] = "integer", ["description"] = "The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."}]
       45 NAMECALL                         R5 R5 K20 ["addOptionalArgument"]
       47 CALL                             R5 3 1
       48 DUPTABLE                         R7 K36 [{["title"] = "Read File", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
       49 NAMECALL                         R5 R5 K37 ["setAnnotations"]
       51 CALL                             R5 2 1
       52 MOVE                             R7 R4
       53 NAMECALL                         R5 R5 K38 ["setHandler"]
       55 CALL                             R5 2 1
       56 NAMECALL                         R5 R5 K39 ["build"]
       58 CALL                             R5 1 1
       59 DUPTABLE                         R6 K41 [{"definition"}]
       60 SETTABLEKS                       R5 R6 K40 ["definition"]
       62 RETURN                           R6 1

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
       23 GETTABLEKS                       R4 R0 K10 ["Tools"]
       25 GETTABLEKS                       R4 R4 K11 ["ToolTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K12 ["Util"]
       32 GETTABLEKS                       R5 R5 K13 ["ToolUtils"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K12 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["ToolBuilder"]
       39 GETTABLEKS                       R6 R2 K12 ["Util"]
       41 GETTABLEKS                       R6 R6 K15 ["ToolResult"]
       43 GETTABLEKS                       R7 R3 K16 ["ToolNames"]
       45 DUPCLOSURE                       R8 K17 [PROTO_0]
       46 CAPTURE                          VAL R4
       47 DUPCLOSURE                       R9 K18 [PROTO_3]
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 RETURN                           R9 1
