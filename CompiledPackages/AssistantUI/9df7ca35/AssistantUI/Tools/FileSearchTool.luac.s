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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["FOCUSED"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["InvokeAsync"]
        7 CALL                             R1 3 1
        8 GETUPVAL                         R2 2
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R4 R1 K2 ["text"]
       12 NAMECALL                         R2 R2 K3 ["addText"]
       14 CALL                             R2 2 1
       15 DUPTABLE                         R4 K6 [{"count", "keywords"}]
       16 GETTABLEKS                       R6 R1 K4 ["count"]
       18 ORK                              R5 R6 K7 [0]
       19 SETTABLEKS                       R5 R4 K4 ["count"]
       21 GETTABLEKS                       R5 R0 K5 ["keywords"]
       23 SETTABLEKS                       R5 R4 K5 ["keywords"]
       25 NAMECALL                         R2 R2 K8 ["setStructuredContent"]
       27 CALL                             R2 2 1
       28 NAMECALL                         R2 R2 K9 ["build"]
       30 CALL                             R2 1 -1
       31 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["net"]
        2 GETTABLEKS                       R2 R0 K1 ["destroying"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["invoke"]
        7 MOVE                             R4 R1
        8 LOADK                            R5 K3 ["FileSearchTool.searchScript"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K4 ["new"]
       13 CALL                             R4 0 1
       14 NAMECALL                         R5 R1 K5 ["GetIdentity"]
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R6 R6 K6 ["Identity"]
       20 GETTABLEKS                       R6 R6 K7 ["Standalone"]
       22 JUMPIFEQ                         R5 R6 ; [+9]
       24 DUPCLOSURE                       R9 K8 [PROTO_2]
       25 CAPTURE                          UPVAL U3
       26 NAMECALL                         R7 R3 K9 ["Connect"]
       28 CALL                             R7 2 -1
       29 NAMECALL                         R5 R4 K10 ["Add"]
       31 CALL                             R5 -1 0
       32 NEWCLOSURE                       R7 P1
       33 CAPTURE                          VAL R4
       34 NAMECALL                         R5 R2 K11 ["Once"]
       36 CALL                             R5 2 0
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U4
       41 GETUPVAL                         R6 5
       42 GETTABLEKS                       R6 R6 K12 ["define"]
       44 CALL                             R6 0 1
       45 GETUPVAL                         R8 6
       46 GETTABLEKS                       R8 R8 K13 ["FileSearch"]
       48 NAMECALL                         R6 R6 K14 ["setName"]
       50 CALL                             R6 2 1
       51 LOADK                            R8 K15 ["Fast script search based on fuzzy matching against script names.\nUse if you know part of the script name but don't know where it's located exactly.\nResponse will be capped to 10 results.\nMake your query more specific if need to filter results further.\nNote: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.\n"]
       52 NAMECALL                         R6 R6 K16 ["setDescription"]
       54 CALL                             R6 2 1
       55 LOADK                            R8 K17 ["keywords"]
       56 DUPTABLE                         R9 K22 [{["type"] = "string", ["description"] = "The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."}]
       57 NAMECALL                         R6 R6 K23 ["addArgument"]
       59 CALL                             R6 3 1
       60 MOVE                             R8 R5
       61 NAMECALL                         R6 R6 K24 ["setHandler"]
       63 CALL                             R6 2 1
       64 LOADK                            R8 K25 ["File Search"]
       65 NAMECALL                         R6 R6 K26 ["setTitle"]
       67 CALL                             R6 2 1
       68 DUPTABLE                         R8 K34 [{["title"] = "File Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       69 NAMECALL                         R6 R6 K35 ["setAnnotations"]
       71 CALL                             R6 2 1
       72 NAMECALL                         R6 R6 K36 ["build"]
       74 CALL                             R6 1 1
       75 DUPTABLE                         R7 K38 [{"definition"}]
       76 SETTABLEKS                       R6 R7 K37 ["definition"]
       78 RETURN                           R7 1

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
       26 GETTABLEKS                       R6 R0 K10 ["Tools"]
       28 GETTABLEKS                       R6 R6 K11 ["ToolTypes"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Util"]
       35 GETTABLEKS                       R7 R7 K13 ["ToolUtils"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["Remote"]
       40 GETTABLEKS                       R8 R4 K12 ["Util"]
       42 GETTABLEKS                       R8 R8 K15 ["ToolBuilder"]
       44 GETTABLEKS                       R9 R4 K12 ["Util"]
       46 GETTABLEKS                       R9 R9 K16 ["ToolResult"]
       48 GETTABLEKS                       R10 R5 K17 ["ToolNames"]
       50 LOADK                            R11 K18 ["... Search stopped after reaching the limit of %* matches."]
       51 LOADN                            R13 10
       52 NAMECALL                         R11 R11 K19 ["format"]
       54 CALL                             R11 2 1
       55 DUPCLOSURE                       R12 K20 [PROTO_0]
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R11
       58 DUPCLOSURE                       R13 K21 [PROTO_1]
       59 CAPTURE                          VAL R12
       60 DUPCLOSURE                       R14 K22 [PROTO_5]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R12
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 RETURN                           R14 1
