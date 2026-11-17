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
       15 DUPTABLE                         R4 K7 [{"count", "noMatch", "query"}]
       16 GETTABLEKS                       R5 R1 K4 ["count"]
       18 SETTABLEKS                       R5 R4 K4 ["count"]
       20 GETTABLEKS                       R5 R1 K5 ["noMatch"]
       22 SETTABLEKS                       R5 R4 K5 ["noMatch"]
       24 GETTABLEKS                       R5 R0 K6 ["query"]
       26 SETTABLEKS                       R5 R4 K6 ["query"]
       28 NAMECALL                         R2 R2 K8 ["setStructuredContent"]
       30 CALL                             R2 2 1
       31 NAMECALL                         R2 R2 K9 ["build"]
       33 CALL                             R2 1 -1
       34 RETURN                           R2 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 GETTABLEKS                       R2 R0 K1 ["net"]
        4 GETTABLEKS                       R3 R0 K2 ["destroying"]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R1
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["invoke"]
       12 MOVE                             R6 R2
       13 LOADK                            R7 K4 ["GrepSearchTool.GrepSearch"]
       14 CALL                             R5 2 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K5 ["new"]
       18 CALL                             R6 0 1
       19 NAMECALL                         R7 R2 K6 ["GetIdentity"]
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R8 R8 K7 ["Identity"]
       25 GETTABLEKS                       R8 R8 K8 ["Standalone"]
       27 JUMPIFEQ                         R7 R8 ; [+10]
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R9 R5 K9 ["Connect"]
       34 CALL                             R9 2 -1
       35 NAMECALL                         R7 R6 K10 ["Add"]
       37 CALL                             R7 -1 0
       38 NEWCLOSURE                       R9 P2
       39 CAPTURE                          VAL R6
       40 NAMECALL                         R7 R3 K11 ["Once"]
       42 CALL                             R7 2 0
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          VAL R5
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 GETUPVAL                         R8 5
       48 GETTABLEKS                       R8 R8 K12 ["define"]
       50 CALL                             R8 0 1
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R10 R10 K13 ["GrepSearch"]
       54 NAMECALL                         R8 R8 K14 ["setName"]
       56 CALL                             R8 2 1
       57 LOADK                            R10 K15 ["Runs a search for a string pattern over all script contents in the game. To avoid overwhelming output, the results are capped at 50 matches."]
       58 NAMECALL                         R8 R8 K16 ["setDescription"]
       60 CALL                             R8 2 1
       61 LOADK                            R10 K17 ["query"]
       62 DUPTABLE                         R11 K22 [{["type"] = "string", ["description"] = "The string or Luau pattern to search for."}]
       63 NAMECALL                         R8 R8 K23 ["addArgument"]
       65 CALL                             R8 3 1
       66 LOADK                            R10 K24 ["Grep Search"]
       67 NAMECALL                         R8 R8 K25 ["setTitle"]
       69 CALL                             R8 2 1
       70 DUPTABLE                         R10 K33 [{["title"] = "Grep Search", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       71 NAMECALL                         R8 R8 K34 ["setAnnotations"]
       73 CALL                             R8 2 1
       74 MOVE                             R10 R7
       75 NAMECALL                         R8 R8 K35 ["setHandler"]
       77 CALL                             R8 2 1
       78 NAMECALL                         R8 R8 K36 ["build"]
       80 CALL                             R8 1 1
       81 DUPTABLE                         R9 K38 [{"definition"}]
       82 SETTABLEKS                       R8 R9 K37 ["definition"]
       84 RETURN                           R9 1

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
       65 DUPCLOSURE                       R14 K22 [PROTO_5]
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R12
       73 RETURN                           R14 1
