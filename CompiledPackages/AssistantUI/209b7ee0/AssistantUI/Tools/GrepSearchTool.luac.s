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
       96 JUMPIFNOTEQKN                    R4 K22 [0] ; [+12]
       98 DUPTABLE                         R4 K26 [{"text", "count", "noMatch"}]
       99 LOADK                            R5 K27 ["No matches found for the given query."]
      100 SETTABLEKS                       R5 R4 K23 ["text"]
      102 LOADN                            R5 0
      103 SETTABLEKS                       R5 R4 K24 ["count"]
      105 LOADB                            R5 1
      106 SETTABLEKS                       R5 R4 K25 ["noMatch"]
      108 RETURN                           R4 1
      109 LENGTH                           R4 R2
      110 LENGTH                           R5 R2
      111 LOADN                            R6 50
      112 JUMPIFNOTLE                      R6 R5 ; [+11]
      114 MOVE                             R6 R2
      115 GETIMPORT                        R7 K28 [string.format]
      117 LOADK                            R8 K29 ["... Search stopped after reaching the limit of %d matches."]
      118 LOADN                            R9 50
      119 CALL                             R7 2 -1
      120 FASTCALL                         TABLE_INSERT ; [+2]
      121 GETIMPORT                        R5 K17 [table.insert]
      123 CALL                             R5 -1 0
      124 DUPTABLE                         R5 K26 [{"text", "count", "noMatch"}]
      125 GETIMPORT                        R6 K31 [table.concat]
      127 MOVE                             R7 R2
      128 LOADK                            R8 K32 ["\n"]
      129 CALL                             R6 2 1
      130 SETTABLEKS                       R6 R5 K23 ["text"]
      132 SETTABLEKS                       R4 R5 K24 ["count"]
      134 LOADB                            R6 0
      135 SETTABLEKS                       R6 R5 K25 ["noMatch"]
      137 RETURN                           R5 1

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
        6 GETTABLEKS                       R4 R1 K0 ["text"]
        8 NAMECALL                         R2 R2 K1 ["addText"]
       10 CALL                             R2 2 1
       11 DUPTABLE                         R4 K5 [{"count", "noMatch", "query"}]
       12 GETTABLEKS                       R5 R1 K2 ["count"]
       14 SETTABLEKS                       R5 R4 K2 ["count"]
       16 GETTABLEKS                       R5 R1 K3 ["noMatch"]
       18 SETTABLEKS                       R5 R4 K3 ["noMatch"]
       20 GETTABLEKS                       R5 R0 K4 ["query"]
       22 SETTABLEKS                       R5 R4 K4 ["query"]
       24 NAMECALL                         R2 R2 K6 ["setStructuredContent"]
       26 CALL                             R2 2 1
       27 NAMECALL                         R2 R2 K7 ["build"]
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1

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
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R8 3
       19 GETTABLEKS                       R7 R8 K5 ["GrepSearch"]
       21 NAMECALL                         R5 R5 K6 ["setName"]
       23 CALL                             R5 2 1
       24 LOADK                            R7 K7 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
       25 NAMECALL                         R5 R5 K8 ["setDescription"]
       27 CALL                             R5 2 1
       28 LOADK                            R7 K9 ["query"]
       29 DUPTABLE                         R8 K12 [{"type", "description"}]
       30 LOADK                            R9 K13 ["string"]
       31 SETTABLEKS                       R9 R8 K10 ["type"]
       33 LOADK                            R9 K14 ["The string or Luau pattern to search for."]
       34 SETTABLEKS                       R9 R8 K11 ["description"]
       36 NAMECALL                         R5 R5 K15 ["addArgument"]
       38 CALL                             R5 3 1
       39 MOVE                             R7 R4
       40 NAMECALL                         R5 R5 K16 ["setHandler"]
       42 CALL                             R5 2 1
       43 NAMECALL                         R5 R5 K17 ["build"]
       45 CALL                             R5 1 1
       46 DUPTABLE                         R6 K21 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       47 DUPCLOSURE                       R7 K22 [PROTO_3]
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 SETTABLEKS                       R7 R6 K18 ["transformInitialContent"]
       52 DUPCLOSURE                       R7 K23 [PROTO_5]
       53 CAPTURE                          UPVAL U5
       54 SETTABLEKS                       R7 R6 K19 ["getTransformPreExecuteFn"]
       56 DUPCLOSURE                       R7 K24 [PROTO_7]
       57 CAPTURE                          UPVAL U5
       58 SETTABLEKS                       R7 R6 K20 ["getTransformResultFn"]
       60 DUPTABLE                         R7 K28 [{"definition", "contentWidgets", "streamTransform"}]
       61 SETTABLEKS                       R5 R7 K25 ["definition"]
       63 NEWTABLE                         R8 0 1
       65 GETUPVAL                         R9 4
       66 SETLIST                          R8 R9 1 [1]
       68 SETTABLEKS                       R8 R7 K26 ["contentWidgets"]
       70 SETTABLEKS                       R6 R7 K27 ["streamTransform"]
       72 RETURN                           R7 1

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
       53 GETTABLEKS                       R8 R2 K15 ["Util"]
       55 GETTABLEKS                       R7 R8 K20 ["ToolBuilder"]
       57 GETTABLEKS                       R9 R2 K15 ["Util"]
       59 GETTABLEKS                       R8 R9 K21 ["ToolResult"]
       61 GETTABLEKS                       R9 R4 K22 ["ToolNames"]
       63 DUPCLOSURE                       R10 K23 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R11 K24 [PROTO_8]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 RETURN                           R11 1
