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
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["readMessage"]
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
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 LENGTH                           R4 R3
        5 NEWTABLE                         R5 0 0
        7 GETUPVAL                         R6 1
        8 CALL                             R6 0 1
        9 JUMPIFNOT                        R6 ; [+28]
       10 ORK                              R6 R1 K0 [0]
       11 ADDK                             R9 R6 K1 [1]
       12 MOVE                             R7 R4
       13 LOADN                            R8 1
       14 FORNPREP                         R7
       15 GETTABLE                         R10 R3 R9
       16 GETTABLEKS                       R10 R10 K2 ["messages"]
       18 MOVE                             R11 R10
       19 LOADNIL                          R12
       20 LOADNIL                          R13
       21 FORGPREP                         R11
       22 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       24 MOVE                             R17 R5
       25 MOVE                             R18 R15
       26 GETIMPORT                        R16 K5 [table.insert]
       28 CALL                             R16 2 0
       29 FORGLOOP                         R11 2 ; [-8]
       31 FORNLOOP                         R7
       32 DUPTABLE                         R7 K7 [{"messages", "uiMessageCount"}]
       33 SETTABLEKS                       R5 R7 K2 ["messages"]
       35 SETTABLEKS                       R4 R7 K6 ["uiMessageCount"]
       37 RETURN                           R7 1
       38 LOADN                            R7 1
       39 GETUPVAL                         R8 2
       40 CALL                             R8 0 1
       41 ADD                              R6 R7 R8
       42 GETUPVAL                         R7 3
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+28]
       45 LOADN                            R7 0
       46 LENGTH                           R10 R3
       47 LOADN                            R8 1
       48 LOADN                            R9 255
       49 FORNPREP                         R8
       50 GETTABLE                         R11 R3 R10
       51 GETTABLEKS                       R12 R11 K2 ["messages"]
       53 LENGTH                           R15 R12
       54 LOADN                            R13 1
       55 LOADN                            R14 255
       56 FORNPREP                         R13
       57 GETTABLE                         R18 R12 R15
       58 FASTCALL2                        TABLE_INSERT R5 R18 ; [+4]
       60 MOVE                             R17 R5
       61 GETIMPORT                        R16 K5 [table.insert]
       63 CALL                             R16 2 0
       64 FORNLOOP                         R13
       65 GETTABLEKS                       R13 R11 K8 ["countsTowardLimit"]
       67 JUMPIFNOT                        R13 ; [+1]
       68 ADDK                             R7 R7 K1 [1]
       69 JUMPIFLE                         R6 R7 ; [+28]
       71 FORNLOOP                         R8
       72 JUMP                             ; [+25]
       73 LENGTH                           R9 R3
       74 LOADN                            R7 1
       75 LOADN                            R8 255
       76 FORNPREP                         R7
       77 GETTABLE                         R10 R3 R9
       78 GETTABLEKS                       R10 R10 K2 ["messages"]
       80 LENGTH                           R13 R10
       81 LOADN                            R11 1
       82 LOADN                            R12 255
       83 FORNPREP                         R11
       84 GETTABLE                         R16 R10 R13
       85 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
       87 MOVE                             R15 R5
       88 GETIMPORT                        R14 K5 [table.insert]
       90 CALL                             R14 2 0
       91 FORNLOOP                         R11
       92 LENGTH                           R13 R3
       93 SUB                              R12 R13 R9
       94 ADDK                             R11 R12 K1 [1]
       95 JUMPIFLE                         R6 R11 ; [+2]
       97 FORNLOOP                         R7
       98 DUPTABLE                         R7 K7 [{"messages", "uiMessageCount"}]
       99 GETUPVAL                         R8 4
      100 GETTABLEKS                       R8 R8 K9 ["reverse"]
      102 MOVE                             R9 R5
      103 CALL                             R8 1 1
      104 SETTABLEKS                       R8 R7 K2 ["messages"]
      106 SETTABLEKS                       R4 R7 K6 ["uiMessageCount"]
      108 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Util"]
       23 GETTABLEKS                       R4 R4 K10 ["readMessage"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Flags"]
       30 GETTABLEKS                       R5 R5 K12 ["FFlagAssistantContextCompaction"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K11 ["Flags"]
       37 GETTABLEKS                       R6 R6 K13 ["FFlagAssistantSystemReminderRefactor"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K11 ["Flags"]
       44 GETTABLEKS                       R7 R7 K14 ["FIntConvAIMaxHistoryCount"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K15 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 DUPCLOSURE                       R8 K16 [PROTO_2]
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R1
       56 RETURN                           R8 1
