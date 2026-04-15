PROTO_0:
        0 GETTABLEKS                       R4 R0 K1 ["layoutOrder"]
        2 ORK                              R3 R4 K0 [0]
        3 GETTABLEKS                       R5 R1 K1 ["layoutOrder"]
        5 ORK                              R4 R5 K0 [0]
        6 JUMPIFLT                         R3 R4 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["messages"]
        4 JUMPIF                           R3 ; [+3]
        5 NEWTABLE                         R4 0 0
        7 RETURN                           R4 1
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 GETTABLEKS                       R9 R8 K1 ["role"]
       14 JUMPIFEQKS                       R9 K2 ["system"] ; [+48]
       16 GETUPVAL                         R10 0
       17 GETTABLEKS                       R9 R10 K3 ["readMessage"]
       19 MOVE                             R10 R8
       20 MOVE                             R11 R1
       21 CALL                             R9 2 1
       22 LENGTH                           R10 R9
       23 JUMPIFEQKN                       R10 K4 [0] ; [+39]
       25 GETUPVAL                         R10 1
       26 CALL                             R10 0 1
       27 JUMPIFNOT                        R10 ; [+22]
       28 DUPTABLE                         R12 K7 [{"messages", "layoutOrder", "countsTowardLimit"}]
       29 SETTABLEKS                       R9 R12 K0 ["messages"]
       31 GETTABLEKS                       R13 R8 K8 ["LayoutOrder"]
       33 SETTABLEKS                       R13 R12 K5 ["layoutOrder"]
       35 GETTABLEKS                       R14 R8 K9 ["hidden"]
       37 JUMPIFNOTEQKB                    R14 TRUE ; [+2]
       39 LOADB                            R13 0 +1
       40 LOADB                            R13 1
       41 SETTABLEKS                       R13 R12 K6 ["countsTowardLimit"]
       43 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       45 MOVE                             R11 R2
       46 GETIMPORT                        R10 K12 [table.insert]
       48 CALL                             R10 2 0
       49 JUMP                             ; [+13]
       50 DUPTABLE                         R12 K13 [{"messages", "layoutOrder"}]
       51 SETTABLEKS                       R9 R12 K0 ["messages"]
       53 GETTABLEKS                       R13 R8 K8 ["LayoutOrder"]
       55 SETTABLEKS                       R13 R12 K5 ["layoutOrder"]
       57 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       59 MOVE                             R11 R2
       60 GETIMPORT                        R10 K12 [table.insert]
       62 CALL                             R10 2 0
       63 FORGLOOP                         R4 2 ; [-52]
       65 GETIMPORT                        R4 K15 [table.sort]
       67 MOVE                             R5 R2
       68 DUPCLOSURE                       R6 K16 [PROTO_0]
       69 CALL                             R4 2 0
       70 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 NEWTABLE                         R3 0 0
        6 LOADN                            R5 1
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 ADD                              R4 R5 R6
       10 GETUPVAL                         R5 2
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+28]
       13 LOADN                            R5 0
       14 LENGTH                           R8 R2
       15 LOADN                            R6 1
       16 LOADN                            R7 255
       17 FORNPREP                         R6
       18 GETTABLE                         R9 R2 R8
       19 GETTABLEKS                       R10 R9 K0 ["messages"]
       21 LENGTH                           R13 R10
       22 LOADN                            R11 1
       23 LOADN                            R12 255
       24 FORNPREP                         R11
       25 GETTABLE                         R16 R10 R13
       26 FASTCALL2                        TABLE_INSERT R3 R16 ; [+4]
       28 MOVE                             R15 R3
       29 GETIMPORT                        R14 K3 [table.insert]
       31 CALL                             R14 2 0
       32 FORNLOOP                         R11
       33 GETTABLEKS                       R11 R9 K4 ["countsTowardLimit"]
       35 JUMPIFNOT                        R11 ; [+1]
       36 ADDK                             R5 R5 K5 [1]
       37 JUMPIFLE                         R4 R5 ; [+28]
       39 FORNLOOP                         R6
       40 JUMP                             ; [+25]
       41 LENGTH                           R7 R2
       42 LOADN                            R5 1
       43 LOADN                            R6 255
       44 FORNPREP                         R5
       45 GETTABLE                         R9 R2 R7
       46 GETTABLEKS                       R8 R9 K0 ["messages"]
       48 LENGTH                           R11 R8
       49 LOADN                            R9 1
       50 LOADN                            R10 255
       51 FORNPREP                         R9
       52 GETTABLE                         R14 R8 R11
       53 FASTCALL2                        TABLE_INSERT R3 R14 ; [+4]
       55 MOVE                             R13 R3
       56 GETIMPORT                        R12 K3 [table.insert]
       58 CALL                             R12 2 0
       59 FORNLOOP                         R9
       60 LENGTH                           R11 R2
       61 SUB                              R10 R11 R7
       62 ADDK                             R9 R10 K5 [1]
       63 JUMPIFLE                         R4 R9 ; [+2]
       65 FORNLOOP                         R5
       66 GETUPVAL                         R6 3
       67 GETTABLEKS                       R5 R6 K6 ["reverse"]
       69 MOVE                             R6 R3
       70 CALL                             R5 1 -1
       71 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R5 K10 ["readMessage"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R6 K12 ["FFlagAssistantSystemReminderRefactor"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Flags"]
       37 GETTABLEKS                       R6 R7 K13 ["FIntConvAIMaxHistoryCount"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K14 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R7 K15 [PROTO_2]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 RETURN                           R7 1
