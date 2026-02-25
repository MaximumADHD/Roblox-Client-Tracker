PROTO_0:
        0 DUPTABLE                         R1 K3 [{"Script", "LocalScript", "ModuleScript"}]
        1 LOADB                            R2 1
        2 SETTABLEKS                       R2 R1 K0 ["Script"]
        4 LOADB                            R2 1
        5 SETTABLEKS                       R2 R1 K1 ["LocalScript"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K2 ["ModuleScript"]
       10 NEWTABLE                         R2 0 0
       12 GETIMPORT                        R3 K6 [string.gmatch]
       14 MOVE                             R4 R0
       15 LOADK                            R5 K7 ["[^%s,]+"]
       16 CALL                             R3 2 3
       17 FORGPREP                         R3
       18 MOVE                             R9 R2
       19 NAMECALL                         R10 R6 K8 ["lower"]
       21 CALL                             R10 1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R8 K11 [table.insert]
       25 CALL                             R8 -1 0
       26 FORGLOOP                         R3 1 ; [-9]
       28 NEWTABLE                         R3 0 0
       30 NEWTABLE                         R4 0 0
       32 GETIMPORT                        R5 K13 [game]
       34 NAMECALL                         R5 R5 K14 ["GetDescendants"]
       36 CALL                             R5 1 3
       37 FORGPREP                         R5
       38 GETTABLEKS                       R11 R9 K15 ["ClassName"]
       40 GETTABLE                         R10 R1 R11
       41 JUMPIFNOT                        R10 ; [+58]
       42 LENGTH                           R10 R4
       43 LOADN                            R11 10
       44 JUMPIFNOTLT                      R10 R11 ; [+55]
       46 NAMECALL                         R10 R9 K16 ["GetFullName"]
       48 CALL                             R10 1 1
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K17 ["isPathExcluded"]
       52 MOVE                             R12 R10
       53 CALL                             R11 1 1
       54 JUMPIF                           R11 ; [+45]
       55 GETTABLEKS                       R11 R9 K18 ["Name"]
       57 NAMECALL                         R11 R11 K8 ["lower"]
       59 CALL                             R11 1 1
       60 MOVE                             R12 R2
       61 LOADNIL                          R13
       62 LOADNIL                          R14
       63 FORGPREP                         R12
       64 MOVE                             R19 R16
       65 LOADN                            R20 1
       66 LOADB                            R21 1
       67 NAMECALL                         R17 R11 K19 ["find"]
       69 CALL                             R17 4 1
       70 JUMPIFNOT                        R17 ; [+27]
       71 MOVE                             R18 R10
       72 LOADK                            R19 K20 ["|"]
       73 GETTABLEKS                       R20 R9 K15 ["ClassName"]
       75 CONCAT                           R17 R18 R20
       76 GETTABLE                         R18 R3 R17
       77 JUMPIF                           R18 ; [+22]
       78 LOADK                            R19 K21 ["Name: %* | Type: %* | Path: %*"]
       79 GETTABLEKS                       R21 R9 K18 ["Name"]
       81 GETTABLEKS                       R22 R9 K15 ["ClassName"]
       83 MOVE                             R23 R10
       84 NAMECALL                         R19 R19 K22 ["format"]
       86 CALL                             R19 4 1
       87 MOVE                             R18 R19
       88 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       90 MOVE                             R20 R4
       91 MOVE                             R21 R18
       92 GETIMPORT                        R19 K11 [table.insert]
       94 CALL                             R19 2 0
       95 LOADB                            R19 1
       96 SETTABLE                         R19 R3 R17
       97 JUMP                             ; [+2]
       98 FORGLOOP                         R12 2 ; [-35]
      100 FORGLOOP                         R5 2 ; [-63]
      102 LENGTH                           R5 R4
      103 JUMPIFNOTEQKN                    R5 K23 [0] ; [+3]
      105 LOADK                            R5 K24 ["No matches found for the given query."]
      106 RETURN                           R5 1
      107 LENGTH                           R5 R4
      108 LOADN                            R6 10
      109 JUMPIFNOTLE                      R6 R5 ; [+8]
      111 GETUPVAL                         R7 1
      112 FASTCALL2                        TABLE_INSERT R4 R7 ; [+4]
      114 MOVE                             R6 R4
      115 GETIMPORT                        R5 K11 [table.insert]
      117 CALL                             R5 2 0
      118 GETIMPORT                        R5 K26 [table.concat]
      120 MOVE                             R6 R4
      121 LOADK                            R7 K27 ["\n"]
      122 CALL                             R5 2 -1
      123 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["keywords"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

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
       14 LOADK                            R3 K7 ["FileSearch"]
       15 LOADK                            R4 K8 ["Pending"]
       16 NAMECALL                         R1 R1 K9 ["getText"]
       18 CALL                             R1 3 1
       19 SETTABLEKS                       R1 R0 K2 ["summary"]
       21 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FileSearch"]
        2 LOADK                            R4 K1 ["Complete"]
        3 DUPTABLE                         R5 K3 [{"count"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["count"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R1 0
        1 GETTABLEKS                       R3 R0 K0 ["content"]
        3 GETTABLEN                        R2 R3 1
        4 GETTABLEKS                       R3 R0 K1 ["isError"]
        6 JUMPIF                           R3 ; [+26]
        7 JUMPIFEQKNIL                     R2 ; [+25]
        9 GETTABLEKS                       R3 R2 K2 ["type"]
       11 JUMPIFNOTEQKS                    R3 K3 ["text"] ; [+21]
       13 GETTABLEKS                       R3 R2 K3 ["text"]
       15 LOADK                            R5 K4 ["\n"]
       16 NAMECALL                         R3 R3 K5 ["split"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R2 K3 ["text"]
       21 JUMPIFNOTEQKS                    R4 K6 ["No matches found for the given query."] ; [+3]
       23 LOADN                            R1 0
       24 JUMP                             ; [+8]
       25 LENGTH                           R5 R3
       26 GETTABLE                         R4 R3 R5
       27 GETUPVAL                         R5 0
       28 JUMPIFNOTEQ                      R4 R5 ; [+3]
       30 LOADN                            R1 10
       31 JUMP                             ; [+1]
       32 LENGTH                           R1 R3
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          REF R1
       36 CLOSEUPVALS                      R1
       37 RETURN                           R3 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["FileSearchTool_searchScript"]
        3 DUPCLOSURE                       R5 K2 [PROTO_1]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R4 R5 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R7 3
       16 GETTABLEKS                       R6 R7 K5 ["FileSearch"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R6 K7 ["Fast script search based on fuzzy matching against script names.\nUse if you know part of the script name but don't know where it's located exactly.\nResponse will be capped to 10 results.\nMake your query more specific if need to filter results further.\nNote: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.\n"]
       22 NAMECALL                         R4 R4 K8 ["setDescription"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["keywords"]
       26 DUPTABLE                         R7 K12 [{"type", "description"}]
       27 LOADK                            R8 K13 ["string"]
       28 SETTABLEKS                       R8 R7 K10 ["type"]
       30 LOADK                            R8 K14 ["The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."]
       31 SETTABLEKS                       R8 R7 K11 ["description"]
       33 NAMECALL                         R4 R4 K15 ["addArgument"]
       35 CALL                             R4 3 1
       36 MOVE                             R6 R3
       37 NAMECALL                         R4 R4 K16 ["setHandler"]
       39 CALL                             R4 2 1
       40 NAMECALL                         R4 R4 K17 ["build"]
       42 CALL                             R4 1 1
       43 DUPTABLE                         R5 K20 [{"transformInitialContent", "getTransformResultFn"}]
       44 DUPCLOSURE                       R6 K21 [PROTO_3]
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R6 R5 K18 ["transformInitialContent"]
       49 DUPCLOSURE                       R6 K22 [PROTO_5]
       50 CAPTURE                          UPVAL U6
       51 CAPTURE                          UPVAL U5
       52 SETTABLEKS                       R6 R5 K19 ["getTransformResultFn"]
       54 DUPTABLE                         R6 K26 [{"definition", "contentWidgets", "streamTransform"}]
       55 SETTABLEKS                       R4 R6 K23 ["definition"]
       57 GETUPVAL                         R8 7
       58 CALL                             R8 0 1
       59 JUMPIFNOT                        R8 ; [+6]
       60 NEWTABLE                         R7 0 1
       62 GETUPVAL                         R8 4
       63 SETLIST                          R7 R8 1 [1]
       65 JUMP                             ; [+1]
       66 LOADNIL                          R7
       67 SETTABLEKS                       R7 R6 K24 ["contentWidgets"]
       69 SETTABLEKS                       R5 R6 K25 ["streamTransform"]
       71 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R4 K10 ["SummarizedContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R5 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R6 K14 ["ToolUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K15 ["Resources"]
       41 GETTABLEKS                       R7 R8 K16 ["Localization"]
       43 GETTABLEKS                       R6 R7 K17 ["Translator"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R8 R0 K18 ["Flags"]
       50 GETTABLEKS                       R7 R8 K19 ["FFlagAssistantRegisterWidgetsThroughTools"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R8 R1 K13 ["Util"]
       55 GETTABLEKS                       R7 R8 K20 ["ToolBuilder"]
       57 GETTABLEKS                       R9 R1 K13 ["Util"]
       59 GETTABLEKS                       R8 R9 K21 ["ToolResult"]
       61 GETTABLEKS                       R9 R3 K22 ["ToolNames"]
       63 LOADK                            R11 K23 ["... Search stopped after reaching the limit of %* matches."]
       64 LOADN                            R13 10
       65 NAMECALL                         R11 R11 K24 ["format"]
       67 CALL                             R11 2 1
       68 MOVE                             R10 R11
       69 DUPCLOSURE                       R11 K25 [PROTO_0]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R12 K26 [PROTO_6]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R6
       81 RETURN                           R12 1
