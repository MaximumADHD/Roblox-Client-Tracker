PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 LOADB                            R2 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 MOVE                             R10 R7
        8 NAMECALL                         R8 R8 K1 ["JSONEncode"]
       10 CALL                             R8 2 1
       11 LENGTH                           R10 R1
       12 LENGTH                           R11 R8
       13 ADD                              R9 R10 R11
       14 GETUPVAL                         R10 1
       15 CALL                             R10 0 1
       16 JUMPIFNOTLT                      R10 R9 ; [+3]
       18 LOADB                            R2 1
       19 JUMP                             ; [+11]
       20 LENGTH                           R9 R1
       21 JUMPIFNOTEQKN                    R9 K2 [0] ; [+3]
       23 MOVE                             R1 R8
       24 JUMP                             ; [+4]
       25 MOVE                             R9 R1
       26 LOADK                            R10 K3 ["\n"]
       27 MOVE                             R11 R8
       28 CONCAT                           R1 R9 R11
       29 FORGLOOP                         R3 2 ; [-24]
       31 JUMPIFNOT                        R2 ; [+4]
       32 MOVE                             R3 R1
       33 LOADK                            R4 K3 ["\n"]
       34 LOADK                            R5 K4 ["[TRUNCATED DUE TO LENGTH LIMIT]"]
       35 CONCAT                           R1 R3 R5
       36 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R3 0
        5 LOADB                            R4 0
        6 LENGTH                           R7 R0
        7 LOADN                            R5 1
        8 LOADN                            R6 -1
        9 FORNPREP                         R5
       10 GETTABLE                         R8 R0 R7
       11 GETTABLEKS                       R8 R8 K0 ["message"]
       13 LENGTH                           R10 R8
       14 ADD                              R9 R3 R10
       15 JUMPIFNOTLT                      R1 R9 ; [+3]
       17 LOADB                            R4 1
       18 JUMP                             ; [+10]
       19 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       21 MOVE                             R10 R2
       22 MOVE                             R11 R8
       23 GETIMPORT                        R9 K3 [table.insert]
       25 CALL                             R9 2 0
       26 LENGTH                           R9 R8
       27 ADD                              R3 R3 R9
       28 FORNLOOP                         R5
       29 NEWTABLE                         R5 0 0
       31 JUMPIFNOT                        R4 ; [+7]
       32 FASTCALL2K                       TABLE_INSERT R5 K4 ; [+5]
       34 MOVE                             R7 R5
       35 LOADK                            R8 K4 ["[TRUNCATED DUE TO LENGTH LIMIT]"]
       36 GETIMPORT                        R6 K3 [table.insert]
       38 CALL                             R6 2 0
       39 LENGTH                           R8 R2
       40 LOADN                            R6 1
       41 LOADN                            R7 -1
       42 FORNPREP                         R6
       43 GETTABLE                         R11 R2 R8
       44 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       46 MOVE                             R10 R5
       47 GETIMPORT                        R9 K3 [table.insert]
       49 CALL                             R9 2 0
       50 FORNLOOP                         R6
       51 GETIMPORT                        R6 K6 [table.concat]
       53 MOVE                             R7 R5
       54 LOADK                            R8 K7 ["\n"]
       55 CALL                             R6 2 -1
       56 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETUPVAL                         R1 2
        5 GETTABLEKS                       R1 R1 K0 ["entries"]
        7 CALL                             R0 1 -1
        8 RETURN                           R0 -1
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 4
       11 GETTABLEKS                       R1 R1 K1 ["getLogHistory"]
       13 CALL                             R1 0 -1
       14 CALL                             R0 -1 1
       15 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K0 ["entries"]
        7 CALL                             R1 1 1
        8 JUMP                             ; [+6]
        9 GETUPVAL                         R1 3
       10 GETUPVAL                         R2 4
       11 GETTABLEKS                       R2 R2 K1 ["getLogHistory"]
       13 CALL                             R2 0 -1
       14 CALL                             R1 -1 1
       15 GETUPVAL                         R2 5
       16 CALL                             R2 0 1
       17 MOVE                             R4 R1
       18 NAMECALL                         R2 R2 K2 ["addText"]
       20 CALL                             R2 2 1
       21 NAMECALL                         R2 R2 K3 ["build"]
       23 CALL                             R2 1 1
       24 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Tools"]
        2 LOADK                            R3 K1 ["GetConsoleOutput"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 DUPCLOSURE                       R2 K1 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R3 K2 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U4
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R6 R6 K3 ["define"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R8 6
       25 GETTABLEKS                       R8 R8 K4 ["GetConsoleOutput"]
       27 NAMECALL                         R6 R6 K5 ["setName"]
       29 CALL                             R6 2 1
       30 LOADK                            R8 K6 ["Get the console output from the Studio output log."]
       31 NAMECALL                         R6 R6 K7 ["setDescription"]
       33 CALL                             R6 2 1
       34 DUPTABLE                         R8 K16 [{["title"] = "Get Console Output", ["readOnlyHint"] = True, ["destructiveHint"] = False, ["idempotentHint"] = True, ["openWorldHint"] = False}]
       35 NAMECALL                         R6 R6 K17 ["setAnnotations"]
       37 CALL                             R6 2 1
       38 MOVE                             R8 R5
       39 NAMECALL                         R6 R6 K18 ["setHandler"]
       41 CALL                             R6 2 1
       42 NAMECALL                         R6 R6 K19 ["build"]
       44 CALL                             R6 1 1
       45 DUPTABLE                         R7 K22 [{"definition", "displayNameFunction"}]
       46 SETTABLEKS                       R6 R7 K20 ["definition"]
       48 GETUPVAL                         R9 7
       49 CALL                             R9 0 1
       50 JUMPIFNOT                        R9 ; [+2]
       51 LOADNIL                          R8
       52 JUMP                             ; [+2]
       53 DUPCLOSURE                       R8 K23 [PROTO_4]
       54 CAPTURE                          UPVAL U8
       55 SETTABLEKS                       R8 R7 K21 ["displayNameFunction"]
       57 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HttpService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["ConsoleOutput"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R0 K12 ["Parent"]
       24 GETTABLEKS                       R4 R4 K13 ["ModelContextProtocol"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R0 K14 ["Tools"]
       31 GETTABLEKS                       R5 R5 K15 ["ToolTypes"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R0 K16 ["Resources"]
       38 GETTABLEKS                       R6 R6 K17 ["Localization"]
       40 GETTABLEKS                       R6 R6 K18 ["Translator"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R3 K10 ["Util"]
       45 GETTABLEKS                       R6 R6 K19 ["ToolBuilder"]
       47 GETTABLEKS                       R7 R3 K10 ["Util"]
       49 GETTABLEKS                       R7 R7 K20 ["ToolResult"]
       51 GETIMPORT                        R8 K9 [require]
       53 GETTABLEKS                       R9 R0 K21 ["Flags"]
       55 GETTABLEKS                       R9 R9 K22 ["FFlagAssistantConsoleOutputTailFromEnd"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K9 [require]
       60 GETTABLEKS                       R10 R0 K21 ["Flags"]
       62 GETTABLEKS                       R10 R10 K23 ["FFlagAssistantSplitToolsAndWidgets"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K9 [require]
       67 GETTABLEKS                       R11 R0 K21 ["Flags"]
       69 GETTABLEKS                       R11 R11 K24 ["FIntAssistantDebugToolMaxOutput"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R4 K25 ["ToolNames"]
       74 DUPCLOSURE                       R12 K26 [PROTO_5]
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R10
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R5
       84 RETURN                           R12 1
