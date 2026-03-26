PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NAMECALL                         R3 R1 K0 ["lower"]
        4 CALL                             R3 1 1
        5 GETIMPORT                        R4 K2 [game]
        7 NAMECALL                         R4 R4 K3 ["GetDescendants"]
        9 CALL                             R4 1 3
       10 FORGPREP                         R4
       11 LENGTH                           R9 R2
       12 LOADN                            R10 50
       13 JUMPIFLE                         R10 R9 ; [+81]
       15 LOADK                            R11 K4 ["Script"]
       16 NAMECALL                         R9 R8 K5 ["IsA"]
       18 CALL                             R9 2 1
       19 JUMPIF                           R9 ; [+10]
       20 LOADK                            R11 K6 ["LocalScript"]
       21 NAMECALL                         R9 R8 K5 ["IsA"]
       23 CALL                             R9 2 1
       24 JUMPIF                           R9 ; [+5]
       25 LOADK                            R11 K7 ["ModuleScript"]
       26 NAMECALL                         R9 R8 K5 ["IsA"]
       28 CALL                             R9 2 1
       29 JUMPIFNOT                        R9 ; [+63]
       30 NAMECALL                         R9 R8 K8 ["GetFullName"]
       32 CALL                             R9 1 1
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K9 ["isPathExcluded"]
       36 MOVE                             R11 R9
       37 CALL                             R10 1 1
       38 JUMPIF                           R10 ; [+54]
       39 GETTABLEKS                       R10 R0 K10 ["getScriptSource"]
       41 MOVE                             R11 R8
       42 CALL                             R10 1 1
       43 NEWTABLE                         R11 0 0
       45 GETIMPORT                        R12 K13 [string.gmatch]
       47 MOVE                             R13 R10
       48 LOADK                            R14 K14 ["[^\r\n]+"]
       49 CALL                             R12 2 3
       50 FORGPREP                         R12
       51 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       53 MOVE                             R18 R11
       54 MOVE                             R19 R15
       55 GETIMPORT                        R17 K17 [table.insert]
       57 CALL                             R17 2 0
       58 FORGLOOP                         R12 1 ; [-8]
       60 MOVE                             R12 R11
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 FORGPREP                         R12
       64 NAMECALL                         R17 R16 K0 ["lower"]
       66 CALL                             R17 1 1
       67 GETIMPORT                        R18 K19 [string.find]
       69 MOVE                             R19 R17
       70 MOVE                             R20 R3
       71 CALL                             R18 2 1
       72 JUMPIFNOT                        R18 ; [+18]
       73 LOADK                            R21 K20 ["Path: %* | Line: %* | %*"]
       74 MOVE                             R23 R9
       75 MOVE                             R24 R15
       76 MOVE                             R25 R16
       77 NAMECALL                         R21 R21 K21 ["format"]
       79 CALL                             R21 4 1
       80 MOVE                             R20 R21
       81 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
       83 MOVE                             R19 R2
       84 GETIMPORT                        R18 K17 [table.insert]
       86 CALL                             R18 2 0
       87 LENGTH                           R18 R2
       88 LOADN                            R19 50
       89 JUMPIFLE                         R19 R18 ; [+3]
       91 FORGLOOP                         R12 2 ; [-28]
       93 FORGLOOP                         R4 2 ; [-83]
       95 LENGTH                           R4 R2
       96 JUMPIFNOTEQKN                    R4 K22 [0] ; [+20]
       98 GETUPVAL                         R4 1
       99 CALL                             R4 0 1
      100 JUMPIFNOT                        R4 ; [+11]
      101 DUPTABLE                         R4 K26 [{"text", "count", "noMatch"}]
      102 LOADK                            R5 K27 ["No matches found for the given query."]
      103 SETTABLEKS                       R5 R4 K23 ["text"]
      105 LOADN                            R5 0
      106 SETTABLEKS                       R5 R4 K24 ["count"]
      108 LOADB                            R5 1
      109 SETTABLEKS                       R5 R4 K25 ["noMatch"]
      111 RETURN                           R4 1
      112 DUPTABLE                         R4 K28 [{"text"}]
      113 LOADK                            R5 K27 ["No matches found for the given query."]
      114 SETTABLEKS                       R5 R4 K23 ["text"]
      116 RETURN                           R4 1
      117 GETUPVAL                         R5 1
      118 CALL                             R5 0 1
      119 JUMPIFNOT                        R5 ; [+2]
      120 LENGTH                           R4 R2
      121 JUMP                             ; [+1]
      122 LOADNIL                          R4
      123 LENGTH                           R5 R2
      124 LOADN                            R6 50
      125 JUMPIFNOTLE                      R6 R5 ; [+11]
      127 MOVE                             R6 R2
      128 GETIMPORT                        R7 K29 [string.format]
      130 LOADK                            R8 K30 ["... Search stopped after reaching the limit of %d matches."]
      131 LOADN                            R9 50
      132 CALL                             R7 2 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R5 K17 [table.insert]
      136 CALL                             R5 -1 0
      137 GETUPVAL                         R5 1
      138 CALL                             R5 0 1
      139 JUMPIFNOT                        R5 ; [+14]
      140 DUPTABLE                         R5 K26 [{"text", "count", "noMatch"}]
      141 GETIMPORT                        R6 K32 [table.concat]
      143 MOVE                             R7 R2
      144 LOADK                            R8 K33 ["\n"]
      145 CALL                             R6 2 1
      146 SETTABLEKS                       R6 R5 K23 ["text"]
      148 SETTABLEKS                       R4 R5 K24 ["count"]
      150 LOADB                            R6 0
      151 SETTABLEKS                       R6 R5 K25 ["noMatch"]
      153 RETURN                           R5 1
      154 DUPTABLE                         R5 K28 [{"text"}]
      155 GETIMPORT                        R6 K32 [table.concat]
      157 MOVE                             R7 R2
      158 LOADK                            R8 K33 ["\n"]
      159 CALL                             R6 2 1
      160 SETTABLEKS                       R6 R5 K23 ["text"]
      162 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R1 K0 ["query"]
        4 CALL                             R2 2 1
        5 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 MOVE                             R3 R0
        3 CALL                             R1 2 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+27]
        7 GETUPVAL                         R2 2
        8 CALL                             R2 0 1
        9 GETTABLEKS                       R4 R1 K0 ["text"]
       11 NAMECALL                         R2 R2 K1 ["addText"]
       13 CALL                             R2 2 1
       14 DUPTABLE                         R4 K5 [{"count", "noMatch", "query"}]
       15 GETTABLEKS                       R5 R1 K2 ["count"]
       17 SETTABLEKS                       R5 R4 K2 ["count"]
       19 GETTABLEKS                       R5 R1 K3 ["noMatch"]
       21 SETTABLEKS                       R5 R4 K3 ["noMatch"]
       23 GETTABLEKS                       R5 R0 K4 ["query"]
       25 SETTABLEKS                       R5 R4 K4 ["query"]
       27 NAMECALL                         R2 R2 K6 ["setStructuredContent"]
       29 CALL                             R2 2 1
       30 NAMECALL                         R2 R2 K7 ["build"]
       32 CALL                             R2 1 -1
       33 RETURN                           R2 -1
       34 GETUPVAL                         R2 2
       35 CALL                             R2 0 1
       36 GETTABLEKS                       R4 R1 K0 ["text"]
       38 NAMECALL                         R2 R2 K1 ["addText"]
       40 CALL                             R2 2 1
       41 NAMECALL                         R2 R2 K7 ["build"]
       43 CALL                             R2 1 -1
       44 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["GrepSearch"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GrepSearch"]
        2 LOADK                            R4 K1 ["SearchingFor"]
        3 DUPTABLE                         R5 K3 [{"query"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["query"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R3 K2 ["query"]
        4 ORK                              R1 R2 K0 [""]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["noMatch"]
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETUPVAL                         R1 1
        5 LOADK                            R3 K1 ["GrepSearch"]
        6 LOADK                            R4 K2 ["NoneFound"]
        7 NAMECALL                         R1 R1 K3 ["getText"]
        9 CALL                             R1 3 1
       10 SETTABLEKS                       R1 R0 K4 ["summary"]
       12 JUMP                             ; [+15]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K1 ["GrepSearch"]
       15 LOADK                            R4 K5 ["FoundCount"]
       16 DUPTABLE                         R5 K7 [{"count"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K6 ["count"]
       20 ORK                              R6 R7 K8 [0]
       21 SETTABLEKS                       R6 R5 K6 ["count"]
       23 NAMECALL                         R1 R1 K3 ["getText"]
       25 CALL                             R1 4 1
       26 SETTABLEKS                       R1 R0 K4 ["summary"]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R1 R2 K9 ["query"]
       31 JUMPIFNOT                        R1 ; [+19]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K9 ["query"]
       35 JUMPIFEQKS                       R1 K10 [""] ; [+15]
       37 GETUPVAL                         R1 1
       38 LOADK                            R3 K1 ["GrepSearch"]
       39 LOADK                            R4 K11 ["Grepped"]
       40 DUPTABLE                         R5 K12 [{"query"}]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R6 R7 K9 ["query"]
       44 SETTABLEKS                       R6 R5 K9 ["query"]
       46 NAMECALL                         R1 R1 K3 ["getText"]
       48 CALL                             R1 4 1
       49 SETTABLEKS                       R1 R0 K13 ["subtitle"]
       51 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U0
        8 RETURN                           R2 1

PROTO_8:
        0 DUPTABLE                         R0 K3 [{"type", "icon", "summary"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R1 R2 K4 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K5 ["Icons"]
        9 GETTABLEKS                       R1 R2 K6 ["Search"]
       11 SETTABLEKS                       R1 R0 K1 ["icon"]
       13 GETUPVAL                         R1 1
       14 LOADK                            R3 K7 ["GrepSearch"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GrepSearch"]
        2 LOADK                            R4 K1 ["NoneFound"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GrepSearch"]
        2 LOADK                            R4 K1 ["MatchFound"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["content"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R2 R0 K1 ["isError"]
        5 JUMPIF                           R2 ; [+13]
        6 JUMPIFEQKNIL                     R1 ; [+12]
        8 GETTABLEKS                       R2 R1 K2 ["type"]
       10 JUMPIFNOTEQKS                    R2 K3 ["text"] ; [+8]
       12 GETTABLEKS                       R2 R1 K3 ["text"]
       14 JUMPIFNOTEQKS                    R2 K4 ["No matches found for the given query."] ; [+4]
       16 DUPCLOSURE                       R2 K5 [PROTO_9]
       17 CAPTURE                          UPVAL U0
       18 RETURN                           R2 1
       19 DUPCLOSURE                       R2 K6 [PROTO_10]
       20 CAPTURE                          UPVAL U0
       21 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 GETTABLEKS                       R2 R0 K1 ["environment"]
        4 LOADK                            R5 K2 ["GrepSearchTool_GrepSearch"]
        5 NEWCLOSURE                       R6 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R3 R1 K3 ["OnHostInvokeAsync"]
       10 CALL                             R3 3 1
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["define"]
       18 CALL                             R5 0 1
       19 GETUPVAL                         R8 4
       20 GETTABLEKS                       R7 R8 K5 ["GrepSearch"]
       22 NAMECALL                         R5 R5 K6 ["setName"]
       24 CALL                             R5 2 1
       25 LOADK                            R7 K7 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
       26 NAMECALL                         R5 R5 K8 ["setDescription"]
       28 CALL                             R5 2 1
       29 LOADK                            R7 K9 ["query"]
       30 DUPTABLE                         R8 K12 [{"type", "description"}]
       31 LOADK                            R9 K13 ["string"]
       32 SETTABLEKS                       R9 R8 K10 ["type"]
       34 LOADK                            R9 K14 ["The string or Luau pattern to search for."]
       35 SETTABLEKS                       R9 R8 K11 ["description"]
       37 NAMECALL                         R5 R5 K15 ["addArgument"]
       39 CALL                             R5 3 1
       40 MOVE                             R7 R4
       41 NAMECALL                         R5 R5 K16 ["setHandler"]
       43 CALL                             R5 2 1
       44 NAMECALL                         R5 R5 K17 ["build"]
       46 CALL                             R5 1 1
       47 LOADNIL                          R6
       48 GETUPVAL                         R7 1
       49 CALL                             R7 0 1
       50 JUMPIFNOT                        R7 ; [+16]
       51 DUPTABLE                         R7 K21 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       52 DUPCLOSURE                       R8 K22 [PROTO_3]
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U6
       55 SETTABLEKS                       R8 R7 K18 ["transformInitialContent"]
       57 DUPCLOSURE                       R8 K23 [PROTO_5]
       58 CAPTURE                          UPVAL U6
       59 SETTABLEKS                       R8 R7 K19 ["getTransformPreExecuteFn"]
       61 DUPCLOSURE                       R8 K24 [PROTO_7]
       62 CAPTURE                          UPVAL U6
       63 SETTABLEKS                       R8 R7 K20 ["getTransformResultFn"]
       65 MOVE                             R6 R7
       66 JUMP                             ; [+11]
       67 DUPTABLE                         R7 K25 [{"transformInitialContent", "getTransformResultFn"}]
       68 DUPCLOSURE                       R8 K26 [PROTO_8]
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U6
       71 SETTABLEKS                       R8 R7 K18 ["transformInitialContent"]
       73 DUPCLOSURE                       R8 K27 [PROTO_11]
       74 CAPTURE                          UPVAL U6
       75 SETTABLEKS                       R8 R7 K20 ["getTransformResultFn"]
       77 MOVE                             R6 R7
       78 DUPTABLE                         R7 K31 [{"definition", "contentWidgets", "streamTransform"}]
       79 SETTABLEKS                       R5 R7 K28 ["definition"]
       81 NEWTABLE                         R8 0 1
       83 GETUPVAL                         R9 5
       84 SETLIST                          R8 R9 1 [1]
       86 SETTABLEKS                       R8 R7 K29 ["contentWidgets"]
       88 SETTABLEKS                       R6 R7 K30 ["streamTransform"]
       90 RETURN                           R7 1

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
       55 GETTABLEKS                       R8 R0 K20 ["Flags"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R7 K21 ["Shared"]
       60 GETTABLEKS                       R8 R9 K22 ["FFlagEnableSubagents"]
       62 GETTABLEKS                       R10 R2 K15 ["Util"]
       64 GETTABLEKS                       R9 R10 K23 ["ToolBuilder"]
       66 GETTABLEKS                       R11 R2 K15 ["Util"]
       68 GETTABLEKS                       R10 R11 K24 ["ToolResult"]
       70 GETTABLEKS                       R11 R4 K25 ["ToolNames"]
       72 DUPCLOSURE                       R12 K26 [PROTO_0]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R8
       75 DUPCLOSURE                       R13 K27 [PROTO_12]
       76 CAPTURE                          VAL R12
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R6
       83 RETURN                           R13 1
