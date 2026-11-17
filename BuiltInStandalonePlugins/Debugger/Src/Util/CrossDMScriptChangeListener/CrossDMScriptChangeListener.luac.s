PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["store"]
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 MOVE                             R6 R1
        6 CALL                             R4 2 -1
        7 NAMECALL                         R2 R2 K1 ["dispatch"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["store"]
        3 GETUPVAL                         R5 1
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 CALL                             R5 3 -1
        8 NAMECALL                         R3 R3 K1 ["dispatch"]
       10 CALL                             R3 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+6]
        2 GETIMPORT                        R2 K1 [game]
        4 LOADK                            R4 K2 ["CrossDMScriptChangeListener"]
        5 NAMECALL                         R2 R2 K3 ["GetService"]
        7 CALL                             R2 2 1
        8 GETTABLEKS                       R3 R2 K4 ["GuidNameChanged"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R3 R3 K5 ["Connect"]
       15 CALL                             R3 2 1
       16 SETTABLEKS                       R3 R0 K6 ["_guidNameChangedConnection"]
       18 GETTABLEKS                       R3 R2 K7 ["GuidLineContentsChanged"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R3 R3 K5 ["Connect"]
       25 CALL                             R3 2 1
       26 SETTABLEKS                       R3 R0 K8 ["_guidLineChangedConnection"]
       28 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_guidNameChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_guidNameChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_guidNameChangedConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["_guidLineChangedConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_guidLineChangedConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_guidLineChangedConnection"]
       22 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"store"}]
        1 SETTABLEKS                       R0 R2 K0 ["store"]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R2
        5 MOVE                             R5 R1
        6 CALL                             R3 2 0
        7 GETUPVAL                         R5 1
        8 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       10 MOVE                             R4 R2
       11 GETIMPORT                        R3 K3 [setmetatable]
       13 CALL                             R3 2 0
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Actions"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Common"]
       15 GETTABLEKS                       R3 R3 K7 ["SetFilenameForGuid"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Common"]
       22 GETTABLEKS                       R4 R4 K8 ["SetScriptSourceLine"]
       24 CALL                             R3 1 1
       25 NEWTABLE                         R4 4 0
       27 SETTABLEKS                       R4 R4 K9 ["__index"]
       29 DUPCLOSURE                       R5 K10 [PROTO_2]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 DUPCLOSURE                       R6 K11 [PROTO_3]
       33 SETTABLEKS                       R6 R4 K12 ["destroy"]
       35 DUPCLOSURE                       R6 K13 [PROTO_4]
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R4
       38 SETTABLEKS                       R6 R4 K14 ["new"]
       40 RETURN                           R4 1
