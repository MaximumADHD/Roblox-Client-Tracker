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
       15 GETTABLEKS                       R10 R10 K2 ["FIntAssistantDebugToolMaxOutput"]
       17 JUMPIFNOTLT                      R10 R9 ; [+3]
       19 LOADB                            R2 1
       20 JUMP                             ; [+11]
       21 LENGTH                           R9 R1
       22 JUMPIFNOTEQKN                    R9 K3 [0] ; [+3]
       24 MOVE                             R1 R8
       25 JUMP                             ; [+4]
       26 MOVE                             R9 R1
       27 LOADK                            R10 K4 ["\n"]
       28 MOVE                             R11 R8
       29 CONCAT                           R1 R9 R11
       30 FORGLOOP                         R3 2 ; [-25]
       32 JUMPIFNOT                        R2 ; [+4]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K4 ["\n"]
       35 LOADK                            R5 K5 ["[TRUNCATED DUE TO LENGTH LIMIT]"]
       36 CONCAT                           R1 R3 R5
       37 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FIntAssistantDebugToolMaxOutput"]
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R3 0
        6 LOADB                            R4 0
        7 LENGTH                           R7 R0
        8 LOADN                            R5 1
        9 LOADN                            R6 -1
       10 FORNPREP                         R5
       11 GETTABLE                         R8 R0 R7
       12 GETTABLEKS                       R8 R8 K1 ["message"]
       14 LENGTH                           R10 R8
       15 ADD                              R9 R3 R10
       16 JUMPIFNOTLT                      R1 R9 ; [+3]
       18 LOADB                            R4 1
       19 JUMP                             ; [+10]
       20 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       22 MOVE                             R10 R2
       23 MOVE                             R11 R8
       24 GETIMPORT                        R9 K4 [table.insert]
       26 CALL                             R9 2 0
       27 LENGTH                           R9 R8
       28 ADD                              R3 R3 R9
       29 FORNLOOP                         R5
       30 NEWTABLE                         R5 0 0
       32 JUMPIFNOT                        R4 ; [+7]
       33 FASTCALL2K                       TABLE_INSERT R5 K5 ; [+5]
       35 MOVE                             R7 R5
       36 LOADK                            R8 K5 ["[TRUNCATED DUE TO LENGTH LIMIT]"]
       37 GETIMPORT                        R6 K4 [table.insert]
       39 CALL                             R6 2 0
       40 LENGTH                           R8 R2
       41 LOADN                            R6 1
       42 LOADN                            R7 -1
       43 FORNPREP                         R6
       44 GETTABLE                         R11 R2 R8
       45 FASTCALL2                        TABLE_INSERT R5 R11 ; [+4]
       47 MOVE                             R10 R5
       48 GETIMPORT                        R9 K4 [table.insert]
       50 CALL                             R9 2 0
       51 FORNLOOP                         R6
       52 GETIMPORT                        R6 K7 [table.concat]
       54 MOVE                             R7 R5
       55 LOADK                            R8 K8 ["\n"]
       56 CALL                             R6 2 -1
       57 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantConsoleOutputTailFromEnd"]
        3 JUMPIFNOT                        R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 GETTABLEKS                       R1 R1 K1 ["entries"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R1 4
       12 GETTABLEKS                       R1 R1 K2 ["getLogHistory"]
       14 CALL                             R1 0 -1
       15 CALL                             R0 -1 1
       16 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FFlagAssistantConsoleOutputTailFromEnd"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["entries"]
        8 CALL                             R1 1 1
        9 JUMP                             ; [+6]
       10 GETUPVAL                         R1 3
       11 GETUPVAL                         R2 4
       12 GETTABLEKS                       R2 R2 K2 ["getLogHistory"]
       14 CALL                             R2 0 -1
       15 CALL                             R1 -1 1
       16 GETUPVAL                         R2 5
       17 CALL                             R2 0 1
       18 MOVE                             R4 R1
       19 NAMECALL                         R2 R2 K3 ["addText"]
       21 CALL                             R2 2 1
       22 NAMECALL                         R2 R2 K4 ["build"]
       24 CALL                             R2 1 1
       25 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["environment"]
        2 DUPCLOSURE                       R2 K1 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 DUPCLOSURE                       R3 K2 [PROTO_1]
        6 CAPTURE                          UPVAL U1
        7 NEWCLOSURE                       R4 P2
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R3
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R1
       13 NEWCLOSURE                       R5 P3
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R3
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          UPVAL U3
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R6 R6 K3 ["define"]
       23 CALL                             R6 0 1
       24 GETUPVAL                         R8 5
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
       45 DUPTABLE                         R7 K21 [{"definition"}]
       46 SETTABLEKS                       R6 R7 K20 ["definition"]
       48 RETURN                           R7 1

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
       22 GETTABLEKS                       R4 R0 K12 ["Flags"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K9 [require]
       27 GETTABLEKS                       R5 R0 K13 ["Parent"]
       29 GETTABLEKS                       R5 R5 K14 ["ModelContextProtocol"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K9 [require]
       34 GETTABLEKS                       R6 R0 K15 ["Tools"]
       36 GETTABLEKS                       R6 R6 K16 ["ToolTypes"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R4 K10 ["Util"]
       41 GETTABLEKS                       R6 R6 K17 ["ToolBuilder"]
       43 GETTABLEKS                       R7 R4 K10 ["Util"]
       45 GETTABLEKS                       R7 R7 K18 ["ToolResult"]
       47 GETTABLEKS                       R8 R5 K19 ["ToolNames"]
       49 DUPCLOSURE                       R9 K20 [PROTO_4]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R8
       56 RETURN                           R9 1
