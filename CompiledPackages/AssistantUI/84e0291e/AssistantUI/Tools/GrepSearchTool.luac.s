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
       13 JUMPIFLE                         R10 R9 ; [+103]
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
       29 JUMPIFNOT                        R9 ; [+85]
       30 NAMECALL                         R9 R8 K8 ["GetFullName"]
       32 CALL                             R9 1 1
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K9 ["isPathExcluded"]
       36 MOVE                             R11 R9
       37 CALL                             R10 1 1
       38 JUMPIF                           R10 ; [+76]
       39 GETTABLEKS                       R10 R0 K10 ["getScriptSource"]
       41 MOVE                             R11 R8
       42 CALL                             R10 1 1
       43 NEWTABLE                         R11 0 0
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R12 R12 K11 ["FFlagAssistantGrepSearchKeepEmptyLines"]
       48 JUMPIFNOT                        R12 ; [+19]
       49 LOADK                            R14 K12 ["\n"]
       50 NAMECALL                         R12 R10 K13 ["split"]
       52 CALL                             R12 2 3
       53 FORGPREP                         R12
       54 LOADK                            R21 K14 ["\r$"]
       55 LOADK                            R22 K15 [""]
       56 NAMECALL                         R19 R16 K16 ["gsub"]
       58 CALL                             R19 3 1
       59 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       61 MOVE                             R18 R11
       62 GETIMPORT                        R17 K19 [table.insert]
       64 CALL                             R17 2 0
       65 FORGLOOP                         R12 2 ; [-12]
       67 JUMP                             ; [+15]
       68 GETIMPORT                        R12 K22 [string.gmatch]
       70 MOVE                             R13 R10
       71 LOADK                            R14 K23 ["[^\r\n]+"]
       72 CALL                             R12 2 3
       73 FORGPREP                         R12
       74 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       76 MOVE                             R18 R11
       77 MOVE                             R19 R15
       78 GETIMPORT                        R17 K19 [table.insert]
       80 CALL                             R17 2 0
       81 FORGLOOP                         R12 1 ; [-8]
       83 MOVE                             R12 R11
       84 LOADNIL                          R13
       85 LOADNIL                          R14
       86 FORGPREP                         R12
       87 NAMECALL                         R17 R16 K0 ["lower"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K25 [string.find]
       92 MOVE                             R19 R17
       93 MOVE                             R20 R3
       94 CALL                             R18 2 1
       95 JUMPIFNOT                        R18 ; [+17]
       96 LOADK                            R20 K26 ["Path: %* | Line: %* | %*"]
       97 MOVE                             R22 R9
       98 MOVE                             R23 R15
       99 MOVE                             R24 R16
      100 NAMECALL                         R20 R20 K27 ["format"]
      102 CALL                             R20 4 1
      103 FASTCALL2                        TABLE_INSERT R2 R20 ; [+4]
      105 MOVE                             R19 R2
      106 GETIMPORT                        R18 K19 [table.insert]
      108 CALL                             R18 2 0
      109 LENGTH                           R18 R2
      110 LOADN                            R19 50
      111 JUMPIFLE                         R19 R18 ; [+3]
      113 FORGLOOP                         R12 2 ; [-27]
      115 FORGLOOP                         R4 2 ; [-105]
      117 LENGTH                           R4 R2
      118 JUMPIFNOTEQKN                    R4 K28 [0] ; [+3]
      120 DUPTABLE                         R4 K34 [{["text"] = "No matches found for the given query.", ["count"] = 0, ["noMatch"] = True}]
      121 RETURN                           R4 1
      122 LENGTH                           R4 R2
      123 LENGTH                           R5 R2
      124 LOADN                            R6 50
      125 JUMPIFNOTLE                      R6 R5 ; [+11]
      127 MOVE                             R6 R2
      128 GETIMPORT                        R7 K35 [string.format]
      130 LOADK                            R8 K36 ["... Search stopped after reaching the limit of %d matches."]
      131 LOADN                            R9 50
      132 CALL                             R7 2 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R5 K19 [table.insert]
      136 CALL                             R5 -1 0
      137 DUPTABLE                         R5 K38 [{["text"], ["count"], ["noMatch"] = False}]
      138 GETIMPORT                        R6 K40 [table.concat]
      140 MOVE                             R7 R2
      141 LOADK                            R8 K12 ["\n"]
      142 CALL                             R6 2 1
      143 SETTABLEKS                       R6 R5 K29 ["text"]
      145 SETTABLEKS                       R4 R5 K31 ["count"]
      147 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["query"]
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R1 K0 ["query"]
        4 CALL                             R2 2 1
        5 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R4 R1 K0 ["query"]
        4 CALL                             R2 2 1
        5 RETURN                           R2 1

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
       27 DUPTABLE                         R4 K8 [{"count", "noMatch", "query"}]
       28 GETTABLEKS                       R5 R1 K5 ["count"]
       30 SETTABLEKS                       R5 R4 K5 ["count"]
       32 GETTABLEKS                       R5 R1 K6 ["noMatch"]
       34 SETTABLEKS                       R5 R4 K6 ["noMatch"]
       36 GETTABLEKS                       R5 R0 K7 ["query"]
       38 SETTABLEKS                       R5 R4 K7 ["query"]
       40 NAMECALL                         R2 R2 K9 ["setStructuredContent"]
       42 CALL                             R2 2 1
       43 NAMECALL                         R2 R2 K10 ["build"]
       45 CALL                             R2 1 -1
       46 RETURN                           R2 -1

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
       14 JUMPIFNOT                        R7 ; [+36]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K4 ["invoke"]
       18 MOVE                             R8 R2
       19 LOADK                            R9 K5 ["GrepSearchTool.GrepSearch"]
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
       34 JUMPIFEQ                         R8 R9 ; [+10]
       36 NEWCLOSURE                       R12 P1
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R10 R6 K10 ["Connect"]
       41 CALL                             R10 2 -1
       42 NAMECALL                         R8 R7 K11 ["Add"]
       44 CALL                             R8 -1 0
       45 NEWCLOSURE                       R10 P2
       46 CAPTURE                          VAL R7
       47 NAMECALL                         R8 R3 K12 ["Once"]
       49 CALL                             R8 2 0
       50 JUMP                             ; [+10]
       51 GETTABLEKS                       R7 R0 K13 ["networkingOLD"]
       53 LOADK                            R10 K14 ["GrepSearchTool_GrepSearch"]
       54 NEWCLOSURE                       R11 P3
       55 CAPTURE                          UPVAL U0
       56 CAPTURE                          VAL R1
       57 NAMECALL                         R8 R7 K15 ["OnHostInvokeAsync"]
       59 CALL                             R8 3 1
       60 MOVE                             R5 R8
       61 NEWCLOSURE                       R7 P4
       62 CAPTURE                          UPVAL U1
       63 CAPTURE                          REF R6
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          REF R5
       66 CAPTURE                          UPVAL U5
       67 GETUPVAL                         R8 6
       68 GETTABLEKS                       R8 R8 K16 ["define"]
       70 CALL                             R8 0 1
       71 GETUPVAL                         R10 7
       72 GETTABLEKS                       R10 R10 K17 ["GrepSearch"]
       74 NAMECALL                         R8 R8 K18 ["setName"]
       76 CALL                             R8 2 1
       77 LOADK                            R10 K19 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
       78 NAMECALL                         R8 R8 K20 ["setDescription"]
       80 CALL                             R8 2 1
       81 LOADK                            R10 K21 ["query"]
       82 DUPTABLE                         R11 K26 [{["type"] = "string", ["description"] = "The string or Luau pattern to search for."}]
       83 NAMECALL                         R8 R8 K27 ["addArgument"]
       85 CALL                             R8 3 1
       86 LOADK                            R10 K28 ["Grep Search"]
       87 NAMECALL                         R8 R8 K29 ["setTitle"]
       89 CALL                             R8 2 1
       90 DUPTABLE                         R10 K37 [{["title"] = "Grep Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       91 NAMECALL                         R8 R8 K38 ["setAnnotations"]
       93 CALL                             R8 2 1
       94 MOVE                             R10 R7
       95 NAMECALL                         R8 R8 K39 ["setHandler"]
       97 CALL                             R8 2 1
       98 NAMECALL                         R8 R8 K40 ["build"]
      100 CALL                             R8 1 1
      101 DUPTABLE                         R9 K42 [{"definition"}]
      102 SETTABLEKS                       R8 R9 K41 ["definition"]
      104 CLOSEUPVALS                      R5
      105 RETURN                           R9 1

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
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R6
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
