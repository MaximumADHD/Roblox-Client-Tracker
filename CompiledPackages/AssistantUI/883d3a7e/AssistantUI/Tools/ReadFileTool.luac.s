PROTO_0:
        0 JUMPIFNOTEQKNIL                  R4 ; [+2]
        2 LOADB                            R4 1
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K0 ["findInstance"]
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
        0 DUPTABLE                         R0 K3 [{"type", "icon", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K5 ["Icons"]
        9 GETTABLEKS                       R1 R2 K6 ["Search"]
       11 SETTABLEKS                       R1 R0 K1 ["icon"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["ReadFile"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ReadFile"]
        2 LOADK                            R4 K1 ["Complete"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_5:
        0 DUPCLOSURE                       R0 K0 [PROTO_4]
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_6:
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
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K5 ["ReadFile"]
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
       72 MOVE                             R7 R4
       73 NAMECALL                         R5 R5 K25 ["setHandler"]
       75 CALL                             R5 2 1
       76 NAMECALL                         R5 R5 K26 ["build"]
       78 CALL                             R5 1 1
       79 DUPTABLE                         R6 K29 [{"transformInitialContent", "getTransformResultFn"}]
       80 DUPCLOSURE                       R7 K30 [PROTO_3]
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          UPVAL U5
       83 SETTABLEKS                       R7 R6 K27 ["transformInitialContent"]
       85 DUPCLOSURE                       R7 K31 [PROTO_5]
       86 CAPTURE                          UPVAL U5
       87 SETTABLEKS                       R7 R6 K28 ["getTransformResultFn"]
       89 DUPTABLE                         R7 K35 [{"definition", "contentWidgets", "streamTransform"}]
       90 SETTABLEKS                       R5 R7 K32 ["definition"]
       92 GETUPVAL                         R9 6
       93 CALL                             R9 0 1
       94 JUMPIFNOT                        R9 ; [+6]
       95 NEWTABLE                         R8 0 1
       97 GETUPVAL                         R9 4
       98 SETLIST                          R8 R9 1 [1]
      100 JUMP                             ; [+1]
      101 LOADNIL                          R8
      102 SETTABLEKS                       R8 R7 K33 ["contentWidgets"]
      104 SETTABLEKS                       R6 R7 K34 ["streamTransform"]
      106 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R3 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["ModelContextProtocol"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["ContentWidgets"]
       27 GETTABLEKS                       R4 R5 K12 ["SummarizedContentWidget"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Tools"]
       34 GETTABLEKS                       R5 R6 K14 ["ToolTypes"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Util"]
       41 GETTABLEKS                       R6 R7 K16 ["ToolUtils"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K17 ["Resources"]
       48 GETTABLEKS                       R8 R9 K18 ["Localization"]
       50 GETTABLEKS                       R7 R8 K19 ["Translator"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R9 R0 K20 ["Flags"]
       57 GETTABLEKS                       R8 R9 K21 ["FFlagAssistantRegisterWidgetsThroughTools"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R9 R2 K15 ["Util"]
       62 GETTABLEKS                       R8 R9 K22 ["ToolBuilder"]
       64 GETTABLEKS                       R10 R2 K15 ["Util"]
       66 GETTABLEKS                       R9 R10 K23 ["ToolResult"]
       68 GETTABLEKS                       R10 R4 K24 ["ToolNames"]
       70 DUPCLOSURE                       R11 K25 [PROTO_0]
       71 CAPTURE                          VAL R5
       72 DUPCLOSURE                       R12 K26 [PROTO_6]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 RETURN                           R12 1
