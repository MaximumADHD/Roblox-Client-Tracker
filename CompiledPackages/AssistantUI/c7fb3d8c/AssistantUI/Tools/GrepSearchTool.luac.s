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
       96 JUMPIFNOTEQKN                    R4 K22 [0] ; [+3]
       98 LOADK                            R4 K23 ["No matches found for the given query."]
       99 RETURN                           R4 1
      100 LENGTH                           R4 R2
      101 LOADN                            R5 50
      102 JUMPIFNOTLE                      R5 R4 ; [+11]
      104 MOVE                             R5 R2
      105 GETIMPORT                        R6 K24 [string.format]
      107 LOADK                            R7 K25 ["... Search stopped after reaching the limit of %d matches."]
      108 LOADN                            R8 50
      109 CALL                             R6 2 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R4 K17 [table.insert]
      113 CALL                             R4 -1 0
      114 GETIMPORT                        R4 K27 [table.concat]
      116 MOVE                             R5 R2
      117 LOADK                            R6 K28 ["\n"]
      118 CALL                             R4 2 -1
      119 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R1 K0 ["query"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

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
       14 LOADK                            R3 K7 ["GrepSearch"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GrepSearch"]
        2 LOADK                            R4 K1 ["NoneFound"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GrepSearch"]
        2 LOADK                            R4 K1 ["MatchFound"]
        3 NAMECALL                         R1 R1 K2 ["getText"]
        5 CALL                             R1 3 1
        6 SETTABLEKS                       R1 R0 K3 ["summary"]
        8 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["content"]
        2 GETTABLEN                        R1 R2 1
        3 GETTABLEKS                       R2 R0 K1 ["isError"]
        5 JUMPIF                           R2 ; [+13]
        6 JUMPIFEQKNIL                     R1 ; [+12]
        8 GETTABLEKS                       R2 R1 K2 ["type"]
       10 JUMPIFNOTEQKS                    R2 K3 ["text"] ; [+8]
       12 GETTABLEKS                       R2 R1 K3 ["text"]
       14 JUMPIFNOTEQKS                    R2 K4 ["No matches found for the given query."] ; [+4]
       16 DUPCLOSURE                       R2 K5 [PROTO_4]
       17 CAPTURE                          UPVAL U0
       18 RETURN                           R2 1
       19 DUPCLOSURE                       R2 K6 [PROTO_5]
       20 CAPTURE                          UPVAL U0
       21 RETURN                           R2 1

PROTO_7:
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
       46 DUPTABLE                         R6 K20 [{"transformInitialContent", "getTransformResultFn"}]
       47 DUPCLOSURE                       R7 K21 [PROTO_3]
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U5
       50 SETTABLEKS                       R7 R6 K18 ["transformInitialContent"]
       52 DUPCLOSURE                       R7 K22 [PROTO_6]
       53 CAPTURE                          UPVAL U5
       54 SETTABLEKS                       R7 R6 K19 ["getTransformResultFn"]
       56 DUPTABLE                         R7 K26 [{"definition", "contentWidgets", "streamTransform"}]
       57 SETTABLEKS                       R5 R7 K23 ["definition"]
       59 GETUPVAL                         R9 6
       60 CALL                             R9 0 1
       61 JUMPIFNOT                        R9 ; [+6]
       62 NEWTABLE                         R8 0 1
       64 GETUPVAL                         R9 4
       65 SETLIST                          R8 R9 1 [1]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R8
       69 SETTABLEKS                       R8 R7 K24 ["contentWidgets"]
       71 SETTABLEKS                       R6 R7 K25 ["streamTransform"]
       73 RETURN                           R7 1

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
       72 DUPCLOSURE                       R12 K26 [PROTO_7]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R7
       80 RETURN                           R12 1
