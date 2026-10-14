PROTO_0:
        0 DUPTABLE                         R1 K4 [{[1] = True, ["LocalScript"] = True, ["ModuleScript"] = True}]
        1 NEWTABLE                         R2 0 0
        3 GETIMPORT                        R3 K7 [string.gmatch]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K8 ["[^%s,]+"]
        7 CALL                             R3 2 3
        8 FORGPREP                         R3
        9 MOVE                             R9 R2
       10 NAMECALL                         R10 R6 K9 ["lower"]
       12 CALL                             R10 1 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R8 K12 [table.insert]
       16 CALL                             R8 -1 0
       17 FORGLOOP                         R3 1 ; [-9]
       19 NEWTABLE                         R3 0 0
       21 NEWTABLE                         R4 0 0
       23 GETIMPORT                        R5 K14 [game]
       25 NAMECALL                         R5 R5 K15 ["GetDescendants"]
       27 CALL                             R5 1 3
       28 FORGPREP                         R5
       29 GETTABLEKS                       R11 R9 K16 ["ClassName"]
       31 GETTABLE                         R10 R1 R11
       32 JUMPIFNOT                        R10 ; [+57]
       33 LENGTH                           R10 R4
       34 LOADN                            R11 10
       35 JUMPIFNOTLT                      R10 R11 ; [+54]
       37 NAMECALL                         R10 R9 K17 ["GetFullName"]
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K18 ["isPathExcluded"]
       43 MOVE                             R12 R10
       44 CALL                             R11 1 1
       45 JUMPIF                           R11 ; [+44]
       46 GETTABLEKS                       R11 R9 K19 ["Name"]
       48 NAMECALL                         R11 R11 K9 ["lower"]
       50 CALL                             R11 1 1
       51 MOVE                             R12 R2
       52 LOADNIL                          R13
       53 LOADNIL                          R14
       54 FORGPREP                         R12
       55 MOVE                             R19 R16
       56 LOADN                            R20 1
       57 LOADB                            R21 1
       58 NAMECALL                         R17 R11 K20 ["find"]
       60 CALL                             R17 4 1
       61 JUMPIFNOT                        R17 ; [+26]
       62 MOVE                             R18 R10
       63 LOADK                            R19 K21 ["|"]
       64 GETTABLEKS                       R20 R9 K16 ["ClassName"]
       66 CONCAT                           R17 R18 R20
       67 GETTABLE                         R18 R3 R17
       68 JUMPIF                           R18 ; [+21]
       69 LOADK                            R18 K22 ["Name: %* | Type: %* | Path: %*"]
       70 GETTABLEKS                       R20 R9 K19 ["Name"]
       72 GETTABLEKS                       R21 R9 K16 ["ClassName"]
       74 MOVE                             R22 R10
       75 NAMECALL                         R18 R18 K23 ["format"]
       77 CALL                             R18 4 1
       78 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       80 MOVE                             R20 R4
       81 MOVE                             R21 R18
       82 GETIMPORT                        R19 K12 [table.insert]
       84 CALL                             R19 2 0
       85 LOADB                            R19 1
       86 SETTABLE                         R19 R3 R17
       87 JUMP                             ; [+2]
       88 FORGLOOP                         R12 2 ; [-34]
       90 FORGLOOP                         R5 2 ; [-62]
       92 LENGTH                           R5 R4
       93 JUMPIFNOTEQKN                    R5 K24 [0] ; [+3]
       95 DUPTABLE                         R5 K27 [{["text"] = "No matches found for the given query."}]
       96 RETURN                           R5 1
       97 LENGTH                           R5 R4
       98 LENGTH                           R6 R4
       99 LOADN                            R7 10
      100 JUMPIFNOTLE                      R7 R6 ; [+8]
      102 GETUPVAL                         R8 1
      103 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      105 MOVE                             R7 R4
      106 GETIMPORT                        R6 K12 [table.insert]
      108 CALL                             R6 2 0
      109 DUPTABLE                         R6 K29 [{"text", "count"}]
      110 GETIMPORT                        R7 K31 [table.concat]
      112 MOVE                             R8 R4
      113 LOADK                            R9 K32 ["\n"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K25 ["text"]
      117 SETTABLEKS                       R5 R6 K28 ["count"]
      119 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["keywords"]
        3 CALL                             R1 1 1
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["keywords"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["keywords"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

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
       22 GETTABLEKS                       R4 R1 K3 ["text"]
       24 NAMECALL                         R2 R2 K4 ["addText"]
       26 CALL                             R2 2 1
       27 DUPTABLE                         R4 K7 [{"count", "keywords"}]
       28 GETTABLEKS                       R6 R1 K5 ["count"]
       30 ORK                              R5 R6 K8 [0]
       31 SETTABLEKS                       R5 R4 K5 ["count"]
       33 GETTABLEKS                       R5 R0 K6 ["keywords"]
       35 SETTABLEKS                       R5 R4 K6 ["keywords"]
       37 NAMECALL                         R2 R2 K9 ["setStructuredContent"]
       39 CALL                             R2 2 1
       40 NAMECALL                         R2 R2 K10 ["build"]
       42 CALL                             R2 1 -1
       43 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["FFlagAssistantUseNewDMNetworking"]
        9 JUMPIFNOT                        R5 ; [+35]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["invoke"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["FileSearchTool.searchScript"]
       15 CALL                             R5 2 1
       16 MOVE                             R4 R5
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K5 ["new"]
       20 CALL                             R5 0 1
       21 NAMECALL                         R6 R1 K6 ["GetIdentity"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 3
       25 GETTABLEKS                       R7 R7 K7 ["Identity"]
       27 GETTABLEKS                       R7 R7 K8 ["Standalone"]
       29 JUMPIFEQ                         R6 R7 ; [+9]
       31 DUPCLOSURE                       R10 K9 [PROTO_2]
       32 CAPTURE                          UPVAL U4
       33 NAMECALL                         R8 R4 K10 ["Connect"]
       35 CALL                             R8 2 -1
       36 NAMECALL                         R6 R5 K11 ["Add"]
       38 CALL                             R6 -1 0
       39 NEWCLOSURE                       R8 P1
       40 CAPTURE                          VAL R5
       41 NAMECALL                         R6 R2 K12 ["Once"]
       43 CALL                             R6 2 0
       44 JUMP                             ; [+9]
       45 GETTABLEKS                       R5 R0 K13 ["networkingOLD"]
       47 LOADK                            R8 K14 ["FileSearchTool_searchScript"]
       48 DUPCLOSURE                       R9 K15 [PROTO_4]
       49 CAPTURE                          UPVAL U4
       50 NAMECALL                         R6 R5 K16 ["OnHostInvokeAsync"]
       52 CALL                             R6 3 1
       53 MOVE                             R3 R6
       54 NEWCLOSURE                       R5 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          REF R4
       57 CAPTURE                          UPVAL U3
       58 CAPTURE                          REF R3
       59 CAPTURE                          UPVAL U5
       60 GETUPVAL                         R6 6
       61 GETTABLEKS                       R6 R6 K17 ["define"]
       63 CALL                             R6 0 1
       64 GETUPVAL                         R8 7
       65 GETTABLEKS                       R8 R8 K18 ["FileSearch"]
       67 NAMECALL                         R6 R6 K19 ["setName"]
       69 CALL                             R6 2 1
       70 LOADK                            R8 K20 ["Fast script search based on fuzzy matching against script names.\nUse if you know part of the script name but don't know where it's located exactly.\nResponse will be capped to 10 results.\nMake your query more specific if need to filter results further.\nNote: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.\n"]
       71 NAMECALL                         R6 R6 K21 ["setDescription"]
       73 CALL                             R6 2 1
       74 LOADK                            R8 K22 ["keywords"]
       75 DUPTABLE                         R9 K27 [{["type"] = "string", ["description"] = "The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."}]
       76 NAMECALL                         R6 R6 K28 ["addArgument"]
       78 CALL                             R6 3 1
       79 MOVE                             R8 R5
       80 NAMECALL                         R6 R6 K29 ["setHandler"]
       82 CALL                             R6 2 1
       83 DUPTABLE                         R8 K38 [{["title"] = "File Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       84 NAMECALL                         R6 R6 K39 ["setAnnotations"]
       86 CALL                             R6 2 1
       87 NAMECALL                         R6 R6 K40 ["build"]
       89 CALL                             R6 1 1
       90 DUPTABLE                         R7 K42 [{"definition"}]
       91 SETTABLEKS                       R6 R7 K41 ["definition"]
       93 CLOSEUPVALS                      R3
       94 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Bin"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["DMNetworking"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["ModelContextProtocol"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K12 ["Tools"]
       37 GETTABLEKS                       R6 R6 K13 ["ToolTypes"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K6 ["Util"]
       44 GETTABLEKS                       R7 R7 K14 ["ToolUtils"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R2 K15 ["Remote"]
       49 GETTABLEKS                       R8 R4 K6 ["Util"]
       51 GETTABLEKS                       R8 R8 K16 ["ToolBuilder"]
       53 GETTABLEKS                       R9 R4 K6 ["Util"]
       55 GETTABLEKS                       R9 R9 K17 ["ToolResult"]
       57 GETTABLEKS                       R10 R5 K18 ["ToolNames"]
       59 LOADK                            R11 K19 ["... Search stopped after reaching the limit of %* matches."]
       60 LOADN                            R13 10
       61 NAMECALL                         R11 R11 K20 ["format"]
       63 CALL                             R11 2 1
       64 DUPCLOSURE                       R12 K21 [PROTO_0]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R11
       67 DUPCLOSURE                       R13 K22 [PROTO_1]
       68 CAPTURE                          VAL R12
       69 DUPCLOSURE                       R14 K23 [PROTO_6]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R10
       78 RETURN                           R14 1
