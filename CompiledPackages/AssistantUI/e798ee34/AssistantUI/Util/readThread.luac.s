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
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["messages"]
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETTABLEKS                       R8 R7 K1 ["role"]
       14 JUMPIFEQKS                       R8 K2 ["system"] ; [+47]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K3 ["readMessage"]
       19 MOVE                             R9 R7
       20 CALL                             R8 1 1
       21 LENGTH                           R9 R8
       22 JUMPIFEQKN                       R9 K4 [0] ; [+39]
       24 GETUPVAL                         R9 1
       25 CALL                             R9 0 1
       26 JUMPIFNOT                        R9 ; [+22]
       27 DUPTABLE                         R11 K7 [{"messages", "layoutOrder", "countsTowardLimit"}]
       28 SETTABLEKS                       R8 R11 K0 ["messages"]
       30 GETTABLEKS                       R12 R7 K8 ["LayoutOrder"]
       32 SETTABLEKS                       R12 R11 K5 ["layoutOrder"]
       34 GETTABLEKS                       R13 R7 K9 ["hidden"]
       36 JUMPIFNOTEQKB                    R13 TRUE ; [+2]
       38 LOADB                            R12 0 +1
       39 LOADB                            R12 1
       40 SETTABLEKS                       R12 R11 K6 ["countsTowardLimit"]
       42 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       44 MOVE                             R10 R1
       45 GETIMPORT                        R9 K12 [table.insert]
       47 CALL                             R9 2 0
       48 JUMP                             ; [+13]
       49 DUPTABLE                         R11 K13 [{"messages", "layoutOrder"}]
       50 SETTABLEKS                       R8 R11 K0 ["messages"]
       52 GETTABLEKS                       R12 R7 K8 ["LayoutOrder"]
       54 SETTABLEKS                       R12 R11 K5 ["layoutOrder"]
       56 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       58 MOVE                             R10 R1
       59 GETIMPORT                        R9 K12 [table.insert]
       61 CALL                             R9 2 0
       62 FORGLOOP                         R3 2 ; [-51]
       64 GETIMPORT                        R3 K15 [table.sort]
       66 MOVE                             R4 R1
       67 DUPCLOSURE                       R5 K16 [PROTO_0]
       68 CALL                             R3 2 0
       69 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R4 1
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 ADD                              R3 R4 R5
        9 GETUPVAL                         R4 2
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+28]
       12 LOADN                            R4 0
       13 LENGTH                           R7 R1
       14 LOADN                            R5 1
       15 LOADN                            R6 255
       16 FORNPREP                         R5
       17 GETTABLE                         R8 R1 R7
       18 GETTABLEKS                       R9 R8 K0 ["messages"]
       20 LENGTH                           R12 R9
       21 LOADN                            R10 1
       22 LOADN                            R11 255
       23 FORNPREP                         R10
       24 GETTABLE                         R15 R9 R12
       25 FASTCALL2                        TABLE_INSERT R2 R15 ; [+4]
       27 MOVE                             R14 R2
       28 GETIMPORT                        R13 K3 [table.insert]
       30 CALL                             R13 2 0
       31 FORNLOOP                         R10
       32 GETTABLEKS                       R10 R8 K4 ["countsTowardLimit"]
       34 JUMPIFNOT                        R10 ; [+1]
       35 ADDK                             R4 R4 K5 [1]
       36 JUMPIFLE                         R3 R4 ; [+28]
       38 FORNLOOP                         R5
       39 JUMP                             ; [+25]
       40 LENGTH                           R6 R1
       41 LOADN                            R4 1
       42 LOADN                            R5 255
       43 FORNPREP                         R4
       44 GETTABLE                         R8 R1 R6
       45 GETTABLEKS                       R7 R8 K0 ["messages"]
       47 LENGTH                           R10 R7
       48 LOADN                            R8 1
       49 LOADN                            R9 255
       50 FORNPREP                         R8
       51 GETTABLE                         R13 R7 R10
       52 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       54 MOVE                             R12 R2
       55 GETIMPORT                        R11 K3 [table.insert]
       57 CALL                             R11 2 0
       58 FORNLOOP                         R8
       59 LENGTH                           R10 R1
       60 SUB                              R9 R10 R6
       61 ADDK                             R8 R9 K5 [1]
       62 JUMPIFLE                         R3 R8 ; [+2]
       64 FORNLOOP                         R4
       65 GETUPVAL                         R5 3
       66 GETTABLEKS                       R4 R5 K6 ["reverse"]
       68 MOVE                             R5 R2
       69 CALL                             R4 1 -1
       70 RETURN                           R4 -1

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
