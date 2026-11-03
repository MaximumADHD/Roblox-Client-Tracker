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
       14 JUMPIFEQKS                       R9 K2 ["system"] ; [+31]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K3 ["readMessage"]
       19 MOVE                             R10 R8
       20 MOVE                             R11 R1
       21 CALL                             R9 2 1
       22 LENGTH                           R10 R9
       23 JUMPIFEQKN                       R10 K4 [0] ; [+22]
       25 DUPTABLE                         R12 K7 [{"messages", "layoutOrder", "countsTowardLimit"}]
       26 SETTABLEKS                       R9 R12 K0 ["messages"]
       28 GETTABLEKS                       R13 R8 K8 ["LayoutOrder"]
       30 SETTABLEKS                       R13 R12 K5 ["layoutOrder"]
       32 GETTABLEKS                       R14 R8 K9 ["hidden"]
       34 JUMPIFNOTEQKB                    R14 TRUE ; [+2]
       36 LOADB                            R13 0 +1
       37 LOADB                            R13 1
       38 SETTABLEKS                       R13 R12 K6 ["countsTowardLimit"]
       40 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       42 MOVE                             R11 R2
       43 GETIMPORT                        R10 K12 [table.insert]
       45 CALL                             R10 2 0
       46 FORGLOOP                         R4 2 ; [-35]
       48 GETIMPORT                        R4 K14 [table.sort]
       50 MOVE                             R5 R2
       51 DUPCLOSURE                       R6 K15 [PROTO_0]
       52 CALL                             R4 2 0
       53 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R2
        3 CALL                             R3 2 1
        4 LENGTH                           R4 R3
        5 NEWTABLE                         R5 0 0
        7 ORK                              R6 R1 K0 [0]
        8 ADDK                             R9 R6 K1 [1]
        9 MOVE                             R7 R4
       10 LOADN                            R8 1
       11 FORNPREP                         R7
       12 GETTABLE                         R10 R3 R9
       13 GETTABLEKS                       R10 R10 K2 ["messages"]
       15 MOVE                             R11 R10
       16 LOADNIL                          R12
       17 LOADNIL                          R13
       18 FORGPREP                         R11
       19 FASTCALL2                        TABLE_INSERT R5 R15 ; [+5]
       21 MOVE                             R17 R5
       22 MOVE                             R18 R15
       23 GETIMPORT                        R16 K5 [table.insert]
       25 CALL                             R16 2 0
       26 FORGLOOP                         R11 2 ; [-8]
       28 FORNLOOP                         R7
       29 DUPTABLE                         R7 K7 [{"messages", "uiMessageCount"}]
       30 SETTABLEKS                       R5 R7 K2 ["messages"]
       32 SETTABLEKS                       R4 R7 K6 ["uiMessageCount"]
       34 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Util"]
       16 GETTABLEKS                       R3 R3 K8 ["readMessage"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R2
       21 DUPCLOSURE                       R4 K10 [PROTO_2]
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
