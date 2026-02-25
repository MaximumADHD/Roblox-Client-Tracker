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
       14 JUMPIFEQKS                       R8 K2 ["system"] ; [+22]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K3 ["readMessage"]
       19 MOVE                             R9 R7
       20 CALL                             R8 1 1
       21 LENGTH                           R9 R8
       22 JUMPIFEQKN                       R9 K4 [0] ; [+14]
       24 DUPTABLE                         R11 K6 [{"messages", "layoutOrder"}]
       25 SETTABLEKS                       R8 R11 K0 ["messages"]
       27 GETTABLEKS                       R12 R7 K7 ["LayoutOrder"]
       29 SETTABLEKS                       R12 R11 K5 ["layoutOrder"]
       31 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       33 MOVE                             R10 R1
       34 GETIMPORT                        R9 K10 [table.insert]
       36 CALL                             R9 2 0
       37 FORGLOOP                         R3 2 ; [-26]
       39 GETIMPORT                        R3 K12 [table.sort]
       41 MOVE                             R4 R1
       42 DUPCLOSURE                       R5 K13 [PROTO_0]
       43 CALL                             R3 2 0
       44 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NEWTABLE                         R2 0 0
        5 LOADN                            R4 1
        6 GETUPVAL                         R5 1
        7 CALL                             R5 0 1
        8 ADD                              R3 R4 R5
        9 LENGTH                           R6 R1
       10 LOADN                            R4 1
       11 LOADN                            R5 255
       12 FORNPREP                         R4
       13 GETTABLE                         R8 R1 R6
       14 GETTABLEKS                       R7 R8 K0 ["messages"]
       16 LENGTH                           R10 R7
       17 LOADN                            R8 1
       18 LOADN                            R9 255
       19 FORNPREP                         R8
       20 GETTABLE                         R13 R7 R10
       21 FASTCALL2                        TABLE_INSERT R2 R13 ; [+4]
       23 MOVE                             R12 R2
       24 GETIMPORT                        R11 K3 [table.insert]
       26 CALL                             R11 2 0
       27 FORNLOOP                         R8
       28 LENGTH                           R10 R1
       29 SUB                              R9 R10 R6
       30 ADDK                             R8 R9 K4 [1]
       31 JUMPIFLE                         R3 R8 ; [+2]
       33 FORNLOOP                         R4
       34 GETUPVAL                         R5 2
       35 GETTABLEKS                       R4 R5 K5 ["reverse"]
       37 MOVE                             R5 R2
       38 CALL                             R4 1 -1
       39 RETURN                           R4 -1

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
       30 GETTABLEKS                       R5 R6 K12 ["FIntConvAIMaxHistoryCount"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_1]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R6 K14 [PROTO_2]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R1
       39 RETURN                           R6 1
