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
       32 JUMPIFNOT                        R10 ; [+58]
       33 LENGTH                           R10 R4
       34 LOADN                            R11 10
       35 JUMPIFNOTLT                      R10 R11 ; [+55]
       37 NAMECALL                         R10 R9 K17 ["GetFullName"]
       39 CALL                             R10 1 1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K18 ["isPathExcluded"]
       43 MOVE                             R12 R10
       44 CALL                             R11 1 1
       45 JUMPIF                           R11 ; [+45]
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
       61 JUMPIFNOT                        R17 ; [+27]
       62 MOVE                             R18 R10
       63 LOADK                            R19 K21 ["|"]
       64 GETTABLEKS                       R20 R9 K16 ["ClassName"]
       66 CONCAT                           R17 R18 R20
       67 GETTABLE                         R18 R3 R17
       68 JUMPIF                           R18 ; [+22]
       69 LOADK                            R19 K22 ["Name: %* | Type: %* | Path: %*"]
       70 GETTABLEKS                       R21 R9 K19 ["Name"]
       72 GETTABLEKS                       R22 R9 K16 ["ClassName"]
       74 MOVE                             R23 R10
       75 NAMECALL                         R19 R19 K23 ["format"]
       77 CALL                             R19 4 1
       78 MOVE                             R18 R19
       79 FASTCALL2                        TABLE_INSERT R4 R18 ; [+5]
       81 MOVE                             R20 R4
       82 MOVE                             R21 R18
       83 GETIMPORT                        R19 K12 [table.insert]
       85 CALL                             R19 2 0
       86 LOADB                            R19 1
       87 SETTABLE                         R19 R3 R17
       88 JUMP                             ; [+2]
       89 FORGLOOP                         R12 2 ; [-35]
       91 FORGLOOP                         R5 2 ; [-63]
       93 LENGTH                           R5 R4
       94 JUMPIFNOTEQKN                    R5 K24 [0] ; [+3]
       96 DUPTABLE                         R5 K27 [{["text"] = "No matches found for the given query."}]
       97 RETURN                           R5 1
       98 LENGTH                           R5 R4
       99 LENGTH                           R6 R4
      100 LOADN                            R7 10
      101 JUMPIFNOTLE                      R7 R6 ; [+8]
      103 GETUPVAL                         R8 1
      104 FASTCALL2                        TABLE_INSERT R4 R8 ; [+4]
      106 MOVE                             R7 R4
      107 GETIMPORT                        R6 K12 [table.insert]
      109 CALL                             R6 2 0
      110 DUPTABLE                         R6 K29 [{"text", "count"}]
      111 GETIMPORT                        R7 K31 [table.concat]
      113 MOVE                             R8 R4
      114 LOADK                            R9 K32 ["\n"]
      115 CALL                             R7 2 1
      116 SETTABLEKS                       R7 R6 K25 ["text"]
      118 SETTABLEKS                       R5 R6 K28 ["count"]
      120 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["keywords"]
        3 CALL                             R2 1 1
        4 RETURN                           R2 1

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
       11 DUPTABLE                         R4 K4 [{"count", "keywords"}]
       12 GETTABLEKS                       R6 R1 K2 ["count"]
       14 ORK                              R5 R6 K5 [0]
       15 SETTABLEKS                       R5 R4 K2 ["count"]
       17 GETTABLEKS                       R5 R0 K3 ["keywords"]
       19 SETTABLEKS                       R5 R4 K3 ["keywords"]
       21 NAMECALL                         R2 R2 K6 ["setStructuredContent"]
       23 CALL                             R2 2 1
       24 NAMECALL                         R2 R2 K7 ["build"]
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_3:
        0 DUPTABLE                         R0 K2 [{"type", "summary"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K3 ["Type"]
        4 SETTABLEKS                       R1 R0 K0 ["type"]
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K4 ["FileSearch"]
        8 LOADK                            R4 K5 ["Pending"]
        9 NAMECALL                         R1 R1 K6 ["getText"]
       11 CALL                             R1 3 1
       12 SETTABLEKS                       R1 R0 K1 ["summary"]
       14 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FileSearch"]
        2 LOADK                            R4 K1 ["SearchingFor"]
        3 DUPTABLE                         R5 K3 [{"keywords"}]
        4 GETUPVAL                         R6 1
        5 SETTABLEKS                       R6 R5 K2 ["keywords"]
        7 NAMECALL                         R1 R1 K4 ["getText"]
        9 CALL                             R1 4 1
       10 SETTABLEKS                       R1 R0 K5 ["summary"]
       12 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K1 ["input"]
        2 GETTABLEKS                       R2 R2 K2 ["keywords"]
        4 ORK                              R1 R2 K0 [""]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["GameTree"]
        2 LOADK                            R4 K1 ["Found"]
        3 DUPTABLE                         R5 K3 [{"count"}]
        4 GETUPVAL                         R7 1
        5 GETTABLEKS                       R7 R7 K2 ["count"]
        7 ORK                              R6 R7 K4 [0]
        8 SETTABLEKS                       R6 R5 K2 ["count"]
       10 NAMECALL                         R1 R1 K5 ["getText"]
       12 CALL                             R1 4 1
       13 SETTABLEKS                       R1 R0 K6 ["summary"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["keywords"]
       18 JUMPIFNOT                        R1 ; [+19]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R1 R1 K7 ["keywords"]
       22 JUMPIFEQKS                       R1 K8 [""] ; [+15]
       24 GETUPVAL                         R1 0
       25 LOADK                            R3 K9 ["FileSearch"]
       26 LOADK                            R4 K10 ["Searched"]
       27 DUPTABLE                         R5 K11 [{"keywords"}]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K7 ["keywords"]
       31 SETTABLEKS                       R6 R5 K7 ["keywords"]
       33 NAMECALL                         R1 R1 K5 ["getText"]
       35 CALL                             R1 4 1
       36 SETTABLEKS                       R1 R0 K12 ["subtitle"]
       38 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["structuredContent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          VAL R1
        8 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["networking"]
        2 LOADK                            R4 K1 ["FileSearchTool_searchScript"]
        3 DUPCLOSURE                       R5 K2 [PROTO_1]
        4 CAPTURE                          UPVAL U0
        5 NAMECALL                         R2 R1 K3 ["OnHostInvokeAsync"]
        7 CALL                             R2 3 1
        8 NEWCLOSURE                       R3 P1
        9 CAPTURE                          VAL R2
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K4 ["define"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R6 R6 K5 ["FileSearch"]
       18 NAMECALL                         R4 R4 K6 ["setName"]
       20 CALL                             R4 2 1
       21 LOADK                            R6 K7 ["Fast script search based on fuzzy matching against script names.\nUse if you know part of the script name but don't know where it's located exactly.\nResponse will be capped to 10 results.\nMake your query more specific if need to filter results further.\nNote: Pattern matching is not supported such as asterisk (*) or question mark (?) wildcards.\n"]
       22 NAMECALL                         R4 R4 K8 ["setDescription"]
       24 CALL                             R4 2 1
       25 LOADK                            R6 K9 ["keywords"]
       26 DUPTABLE                         R7 K14 [{["type"] = "string", ["description"] = "The comma-separated keywords string to search for in the game's scripts. Each keyword is case-insensitive."}]
       27 NAMECALL                         R4 R4 K15 ["addArgument"]
       29 CALL                             R4 3 1
       30 MOVE                             R6 R3
       31 NAMECALL                         R4 R4 K16 ["setHandler"]
       33 CALL                             R4 2 1
       34 DUPTABLE                         R6 K25 [{["title"] = "File Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       35 NAMECALL                         R4 R4 K26 ["setAnnotations"]
       37 CALL                             R4 2 1
       38 NAMECALL                         R4 R4 K27 ["build"]
       40 CALL                             R4 1 1
       41 DUPTABLE                         R5 K31 [{"transformInitialContent", "getTransformPreExecuteFn", "getTransformResultFn"}]
       42 DUPCLOSURE                       R6 K32 [PROTO_3]
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 SETTABLEKS                       R6 R5 K28 ["transformInitialContent"]
       47 DUPCLOSURE                       R6 K33 [PROTO_5]
       48 CAPTURE                          UPVAL U5
       49 SETTABLEKS                       R6 R5 K29 ["getTransformPreExecuteFn"]
       51 DUPCLOSURE                       R6 K34 [PROTO_7]
       52 CAPTURE                          UPVAL U5
       53 SETTABLEKS                       R6 R5 K30 ["getTransformResultFn"]
       55 DUPTABLE                         R6 K38 [{"definition", "contentWidgets", "streamTransform"}]
       56 SETTABLEKS                       R4 R6 K35 ["definition"]
       58 GETUPVAL                         R8 6
       59 CALL                             R8 0 1
       60 JUMPIFNOT                        R8 ; [+2]
       61 LOADNIL                          R7
       62 JUMP                             ; [+5]
       63 NEWTABLE                         R7 0 1
       65 GETUPVAL                         R8 4
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K36 ["contentWidgets"]
       70 GETUPVAL                         R8 6
       71 CALL                             R8 0 1
       72 JUMPIFNOT                        R8 ; [+2]
       73 LOADNIL                          R7
       74 JUMP                             ; [+1]
       75 MOVE                             R7 R5
       76 SETTABLEKS                       R7 R6 K37 ["streamTransform"]
       78 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["ModelContextProtocol"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Components"]
       18 GETTABLEKS                       R3 R3 K9 ["ContentWidgets"]
       20 GETTABLEKS                       R3 R3 K10 ["SummarizedContentWidget"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K11 ["Tools"]
       27 GETTABLEKS                       R4 R4 K12 ["ToolTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K13 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["ToolUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K15 ["Resources"]
       41 GETTABLEKS                       R6 R6 K16 ["Localization"]
       43 GETTABLEKS                       R6 R6 K17 ["Translator"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K18 ["Flags"]
       50 GETTABLEKS                       R7 R7 K19 ["FFlagAssistantSplitToolsAndWidgets"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K13 ["Util"]
       55 GETTABLEKS                       R7 R7 K20 ["ToolBuilder"]
       57 GETTABLEKS                       R8 R1 K13 ["Util"]
       59 GETTABLEKS                       R8 R8 K21 ["ToolResult"]
       61 GETTABLEKS                       R9 R3 K22 ["ToolNames"]
       63 LOADK                            R11 K23 ["... Search stopped after reaching the limit of %* matches."]
       64 LOADN                            R13 10
       65 NAMECALL                         R11 R11 K24 ["format"]
       67 CALL                             R11 2 1
       68 MOVE                             R10 R11
       69 DUPCLOSURE                       R11 K25 [PROTO_0]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R12 K26 [PROTO_8]
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 RETURN                           R12 1
