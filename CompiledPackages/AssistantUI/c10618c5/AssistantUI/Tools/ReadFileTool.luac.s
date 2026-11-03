PROTO_0:
        0 JUMPIFNOTEQKNIL                  R4 ; [+2]
        2 LOADB                            R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
        6 JUMPIFNOT                        R5 ; [+9]
        7 JUMPIFNOT                        R4 ; [+8]
        8 JUMPIFNOTEQKNIL                  R2 ; [+3]
       10 JUMPIFEQKNIL                     R3 ; [+5]
       12 GETIMPORT                        R5 K2 [error]
       14 LOADK                            R6 K3 ["`start_line_one_indexed`/`end_line_one_indexed_inclusive` cannot be used when `should_read_entire_file` is true (it defaults to true when omitted), because the line range would be ignored. To read only that range, call again with `should_read_entire_file` set to false. To read the entire script, omit the line range."]
       15 CALL                             R5 1 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K4 ["findInstance"]
       19 MOVE                             R6 R1
       20 CALL                             R5 1 1
       21 JUMPIF                           R5 ; [+8]
       22 GETIMPORT                        R6 K2 [error]
       24 LOADK                            R7 K5 ["Script not found at path: %*"]
       25 MOVE                             R9 R1
       26 NAMECALL                         R7 R7 K6 ["format"]
       28 CALL                             R7 2 1
       29 CALL                             R6 1 0
       30 LOADK                            R8 K7 ["Script"]
       31 NAMECALL                         R6 R5 K8 ["IsA"]
       33 CALL                             R6 2 1
       34 JUMPIF                           R6 ; [+19]
       35 LOADK                            R8 K9 ["LocalScript"]
       36 NAMECALL                         R6 R5 K8 ["IsA"]
       38 CALL                             R6 2 1
       39 JUMPIF                           R6 ; [+14]
       40 LOADK                            R8 K10 ["ModuleScript"]
       41 NAMECALL                         R6 R5 K8 ["IsA"]
       43 CALL                             R6 2 1
       44 JUMPIF                           R6 ; [+9]
       45 GETIMPORT                        R6 K2 [error]
       47 LOADK                            R7 K11 ["Object at path is not a script type. Found: %*"]
       48 GETTABLEKS                       R9 R5 K12 ["ClassName"]
       50 NAMECALL                         R7 R7 K6 ["format"]
       52 CALL                             R7 2 1
       53 CALL                             R6 1 0
       54 GETTABLEKS                       R6 R0 K13 ["getScriptSource"]
       56 MOVE                             R7 R5
       57 CALL                             R6 1 1
       58 JUMPIFNOT                        R4 ; [+33]
       59 JUMPIFNOTEQKS                    R6 K14 [""] ; [+3]
       61 LOADK                            R7 K14 [""]
       62 RETURN                           R7 1
       63 LOADK                            R9 K15 ["\n"]
       64 NAMECALL                         R7 R6 K16 ["split"]
       66 CALL                             R7 2 1
       67 NEWTABLE                         R8 0 0
       69 MOVE                             R9 R7
       70 LOADNIL                          R10
       71 LOADNIL                          R11
       72 FORGPREP                         R9
       73 MOVE                             R15 R8
       74 GETIMPORT                        R16 K18 [string.format]
       76 LOADK                            R17 K19 ["%6d→%s"]
       77 MOVE                             R18 R12
       78 MOVE                             R19 R13
       79 CALL                             R16 3 -1
       80 FASTCALL                         TABLE_INSERT ; [+2]
       81 GETIMPORT                        R14 K22 [table.insert]
       83 CALL                             R14 -1 0
       84 FORGLOOP                         R9 2 ; [-12]
       86 GETIMPORT                        R9 K24 [table.concat]
       88 MOVE                             R10 R8
       89 LOADK                            R11 K15 ["\n"]
       90 CALL                             R9 2 -1
       91 RETURN                           R9 -1
       92 JUMPIFNOT                        R2 ; [+1]
       93 JUMPIF                           R3 ; [+4]
       94 GETIMPORT                        R7 K2 [error]
       96 LOADK                            R8 K25 ["`start_line_one_indexed` and `end_line_one_indexed_inclusive` are required when `should_read_entire_file` is false"]
       97 CALL                             R7 1 0
       98 LOADN                            R7 1
       99 JUMPIFNOTLT                      R2 R7 ; [+5]
      101 GETIMPORT                        R7 K2 [error]
      103 LOADK                            R8 K26 ["`start_line_one_indexed` must be at least 1"]
      104 CALL                             R7 1 0
      105 JUMPIFNOTLT                      R3 R2 ; [+5]
      107 GETIMPORT                        R7 K2 [error]
      109 LOADK                            R8 K27 ["`end_line_one_indexed_inclusive` must be >= `start_line_one_indexed`"]
      110 CALL                             R7 1 0
      111 LOADK                            R9 K15 ["\n"]
      112 NAMECALL                         R7 R6 K16 ["split"]
      114 CALL                             R7 2 1
      115 LENGTH                           R8 R7
      116 FASTCALL2                        MATH_MIN R3 R8 ; [+5]
      118 MOVE                             R10 R3
      119 MOVE                             R11 R8
      120 GETIMPORT                        R9 K30 [math.min]
      122 CALL                             R9 2 1
      123 JUMPIFNOTLT                      R8 R2 ; [+10]
      125 GETIMPORT                        R10 K2 [error]
      127 LOADK                            R12 K31 ["`start_line_one_indexed` ("]
      128 MOVE                             R13 R2
      129 LOADK                            R14 K32 [") exceeds file length ("]
      130 MOVE                             R15 R8
      131 LOADK                            R16 K33 [")"]
      132 CONCAT                           R11 R12 R16
      133 CALL                             R10 1 0
      134 NEWTABLE                         R10 0 0
      136 MOVE                             R13 R2
      137 MOVE                             R11 R9
      138 LOADN                            R12 1
      139 FORNPREP                         R11
      140 MOVE                             R15 R10
      141 GETIMPORT                        R16 K18 [string.format]
      143 LOADK                            R17 K19 ["%6d→%s"]
      144 MOVE                             R18 R13
      145 GETTABLE                         R20 R7 R13
      146 ORK                              R19 R20 K14 [""]
      147 CALL                             R16 3 -1
      148 FASTCALL                         TABLE_INSERT ; [+2]
      149 GETIMPORT                        R14 K22 [table.insert]
      151 CALL                             R14 -1 0
      152 FORNLOOP                         R11
      153 JUMPIFNOTLT                      R8 R3 ; [+13]
      155 LOADK                            R13 K34 ["Note: Requested to read until line %*, but file only has %* lines"]
      156 MOVE                             R15 R3
      157 MOVE                             R16 R8
      158 NAMECALL                         R13 R13 K6 ["format"]
      160 CALL                             R13 3 1
      161 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      163 MOVE                             R12 R10
      164 GETIMPORT                        R11 K22 [table.insert]
      166 CALL                             R11 2 0
      167 GETIMPORT                        R11 K24 [table.concat]
      169 MOVE                             R12 R10
      170 LOADK                            R13 K15 ["\n"]
      171 CALL                             R11 2 -1
      172 RETURN                           R11 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["target_file"]
        4 GETTABLEKS                       R4 R0 K1 ["start_line_one_indexed"]
        6 GETTABLEKS                       R5 R0 K2 ["end_line_one_indexed_inclusive"]
        8 GETTABLEKS                       R6 R0 K3 ["should_read_entire_file"]
       10 CALL                             R1 5 -1
       11 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_5:
        0 LOADNIL                          R1
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantUseNewDMNetworking"]
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETUPVAL                         R2 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K1 ["FOCUSED"]
        9 MOVE                             R5 R0
       10 NAMECALL                         R2 R2 K2 ["InvokeAsync"]
       12 CALL                             R2 3 1
       13 MOVE                             R1 R2
       14 JUMP                             ; [+5]
       15 GETUPVAL                         R2 3
       16 LOADNIL                          R3
       17 MOVE                             R4 R0
       18 CALL                             R2 2 1
       19 MOVE                             R1 R2
       20 GETUPVAL                         R2 4
       21 CALL                             R2 0 1
       22 MOVE                             R4 R1
       23 NAMECALL                         R2 R2 K3 ["addText"]
       25 CALL                             R2 2 1
       26 NAMECALL                         R2 R2 K4 ["build"]
       28 CALL                             R2 1 -1
       29 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K3 ["FFlagAssistantUseNewDMNetworking"]
       14 JUMPIFNOT                        R7 ; [+35]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K4 ["invoke"]
       18 MOVE                             R8 R2
       19 LOADK                            R9 K5 ["ReadFileTool.readFile"]
       20 CALL                             R7 2 1
       21 MOVE                             R6 R7
       22 GETUPVAL                         R7 3
       23 GETTABLEKS                       R7 R7 K6 ["new"]
       25 CALL                             R7 0 1
       26 NAMECALL                         R8 R2 K7 ["GetIdentity"]
       28 CALL                             R8 1 1
       29 GETUPVAL                         R9 4
       30 GETTABLEKS                       R9 R9 K8 ["Identity"]
       32 GETTABLEKS                       R9 R9 K9 ["Standalone"]
       34 JUMPIFEQ                         R8 R9 ; [+9]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          VAL R4
       38 NAMECALL                         R10 R6 K10 ["Connect"]
       40 CALL                             R10 2 -1
       41 NAMECALL                         R8 R7 K11 ["Add"]
       43 CALL                             R8 -1 0
       44 NEWCLOSURE                       R10 P2
       45 CAPTURE                          VAL R7
       46 NAMECALL                         R8 R3 K12 ["Once"]
       48 CALL                             R8 2 0
       49 JUMP                             ; [+9]
       50 GETTABLEKS                       R7 R0 K13 ["networkingOLD"]
       52 LOADK                            R10 K14 ["ReadFileTool_readFile"]
       53 NEWCLOSURE                       R11 P3
       54 CAPTURE                          VAL R4
       55 NAMECALL                         R8 R7 K15 ["OnHostInvokeAsync"]
       57 CALL                             R8 3 1
       58 MOVE                             R5 R8
       59 NEWCLOSURE                       R7 P4
       60 CAPTURE                          UPVAL U1
       61 CAPTURE                          REF R6
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          REF R5
       64 CAPTURE                          UPVAL U5
       65 GETUPVAL                         R8 6
       66 GETTABLEKS                       R8 R8 K16 ["define"]
       68 CALL                             R8 0 1
       69 GETUPVAL                         R10 7
       70 GETTABLEKS                       R10 R10 K17 ["ReadFile"]
       72 NAMECALL                         R8 R8 K18 ["setName"]
       74 CALL                             R8 2 1
       75 LOADK                            R10 K19 ["Reads a script from the Roblox workspace. The output will be returned with line numbers in format: LINE_NUMBER→LINE_CONTENT.\nWhen using this tool to gather information, ensure you gather the COMPLETE context to fulfill the user's request.\n\nUsage:\n- This tool reads the entire script by default to provide complete context\n- You can read multiple scripts in parallel for efficiency\n- If you need to find specific symbols across multiple scripts, use the grep search tool\n- Avoid re-reading the same script unless the script may have changed since the last read\n- For very large scripts (thousands of lines), consider using grep_search to locate specific functions or patterns first\n\nPath Format:\n- The path needs to be a full path, with no wildcard matching\n- Use dot notation like \"game.ServerScriptService.MyScript\"\n- Script must already exist (use `file_search` or `grep_search` to find the script path first)\n- Will only read existing scripts, never creates new ones\n"]
       76 NAMECALL                         R8 R8 K20 ["setDescription"]
       78 CALL                             R8 2 1
       79 LOADK                            R10 K21 ["target_file"]
       80 DUPTABLE                         R11 K26 [{["type"] = "string", ["description"] = "The dot-notation path of the script to read (e.g., 'game.ServerScriptService.MyScript')"}]
       81 NAMECALL                         R8 R8 K27 ["addArgument"]
       83 CALL                             R8 3 1
       84 LOADK                            R10 K28 ["should_read_entire_file"]
       85 DUPTABLE                         R11 K30 [{["type"] = "boolean", ["description"]}]
       86 GETUPVAL                         R13 1
       87 GETTABLEKS                       R13 R13 K31 ["FFlagAssistantReadFileRejectRangeWithEntireFile"]
       89 JUMPIFNOT                        R13 ; [+2]
       90 LOADK                            R12 K32 ["Whether to read the entire script. Defaults to true. Must be set to false when providing a line range."]
       91 JUMP                             ; [+1]
       92 LOADK                            R12 K33 ["Whether to read the entire script. Defaults to true."]
       93 SETTABLEKS                       R12 R11 K24 ["description"]
       95 NAMECALL                         R8 R8 K34 ["addOptionalArgument"]
       97 CALL                             R8 3 1
       98 LOADK                            R10 K35 ["start_line_one_indexed"]
       99 DUPTABLE                         R11 K38 [{["type"] = "integer", ["description"] = "The one-indexed line number to start reading from (inclusive). Required if should_read_entire_file is false."}]
      100 NAMECALL                         R8 R8 K34 ["addOptionalArgument"]
      102 CALL                             R8 3 1
      103 LOADK                            R10 K39 ["end_line_one_indexed_inclusive"]
      104 DUPTABLE                         R11 K41 [{["type"] = "integer", ["description"] = "The one-indexed line number to end reading at (inclusive). Required if should_read_entire_file is false."}]
      105 NAMECALL                         R8 R8 K34 ["addOptionalArgument"]
      107 CALL                             R8 3 1
      108 LOADK                            R10 K42 ["Read File"]
      109 NAMECALL                         R8 R8 K43 ["setTitle"]
      111 CALL                             R8 2 1
      112 DUPTABLE                         R10 K51 [{["title"] = "Read File", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = False, ["openWorldHint"] = False}]
      113 NAMECALL                         R8 R8 K52 ["setAnnotations"]
      115 CALL                             R8 2 1
      116 MOVE                             R10 R7
      117 NAMECALL                         R8 R8 K53 ["setHandler"]
      119 CALL                             R8 2 1
      120 NAMECALL                         R8 R8 K54 ["build"]
      122 CALL                             R8 1 1
      123 DUPTABLE                         R9 K56 [{"definition"}]
      124 SETTABLEKS                       R8 R9 K55 ["definition"]
      126 CLOSEUPVALS                      R5
      127 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ModelContextProtocol"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Guest"]
       28 GETTABLEKS                       R6 R6 K11 ["Environment"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Flags"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Tools"]
       40 GETTABLEKS                       R8 R8 K14 ["ToolTypes"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K6 [require]
       45 GETTABLEKS                       R9 R0 K15 ["Util"]
       47 GETTABLEKS                       R9 R9 K16 ["ToolUtils"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R3 K17 ["Remote"]
       52 GETTABLEKS                       R10 R4 K15 ["Util"]
       54 GETTABLEKS                       R10 R10 K18 ["ToolBuilder"]
       56 GETTABLEKS                       R11 R4 K15 ["Util"]
       58 GETTABLEKS                       R11 R11 K19 ["ToolResult"]
       60 GETTABLEKS                       R12 R7 K20 ["ToolNames"]
       62 DUPCLOSURE                       R13 K21 [PROTO_0]
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R14 K22 [PROTO_6]
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R12
       74 RETURN                           R14 1
