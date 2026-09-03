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
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K9 ["isPathExcluded"]
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
       98 DUPTABLE                         R4 K28 [{["text"] = "No matches found for the given query.", ["count"] = 0, ["noMatch"] = True}]
       99 RETURN                           R4 1
      100 LENGTH                           R4 R2
      101 LENGTH                           R5 R2
      102 LOADN                            R6 50
      103 JUMPIFNOTLE                      R6 R5 ; [+11]
      105 MOVE                             R6 R2
      106 GETIMPORT                        R7 K29 [string.format]
      108 LOADK                            R8 K30 ["... Search stopped after reaching the limit of %d matches."]
      109 LOADN                            R9 50
      110 CALL                             R7 2 -1
      111 FASTCALL                         TABLE_INSERT ; [+2]
      112 GETIMPORT                        R5 K17 [table.insert]
      114 CALL                             R5 -1 0
      115 DUPTABLE                         R5 K32 [{["text"], ["count"], ["noMatch"] = False}]
      116 GETIMPORT                        R6 K34 [table.concat]
      118 MOVE                             R7 R2
      119 LOADK                            R8 K35 ["\n"]
      120 CALL                             R6 2 1
      121 SETTABLEKS                       R6 R5 K23 ["text"]
      123 SETTABLEKS                       R4 R5 K25 ["count"]
      125 RETURN                           R5 1

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
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K4 ["define"]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R7 R7 K5 ["GrepSearch"]
       21 NAMECALL                         R5 R5 K6 ["setName"]
       23 CALL                             R5 2 1
       24 LOADK                            R7 K7 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
       25 NAMECALL                         R5 R5 K8 ["setDescription"]
       27 CALL                             R5 2 1
       28 LOADK                            R7 K9 ["query"]
       29 DUPTABLE                         R8 K14 [{["type"] = "string", ["description"] = "The string or Luau pattern to search for."}]
       30 NAMECALL                         R5 R5 K15 ["addArgument"]
       32 CALL                             R5 3 1
       33 DUPTABLE                         R7 K24 [{["title"] = "Grep Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       34 NAMECALL                         R5 R5 K25 ["setAnnotations"]
       36 CALL                             R5 2 1
       37 MOVE                             R7 R4
       38 NAMECALL                         R5 R5 K26 ["setHandler"]
       40 CALL                             R5 2 1
       41 NAMECALL                         R5 R5 K27 ["build"]
       43 CALL                             R5 1 1
       44 DUPTABLE                         R6 K29 [{"definition"}]
       45 SETTABLEKS                       R5 R6 K28 ["definition"]
       47 RETURN                           R6 1

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
