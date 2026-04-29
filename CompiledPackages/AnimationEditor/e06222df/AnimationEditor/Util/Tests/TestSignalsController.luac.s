PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["_listener"]
       10 NAMECALL                         R2 R1 K3 ["connect"]
       12 CALL                             R2 1 0
       13 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_lastValue"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["_listener"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K1 ["_lastValue"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_dispose"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K1 ["createEffect"]
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 CALL                             R1 1 1
       10 SETTABLEKS                       R1 R0 K0 ["_dispose"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_dispose"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETTABLEKS                       R1 R0 K0 ["_dispose"]
        5 CALL                             R1 0 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K0 ["_dispose"]
        9 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 SETTABLEKS                       R2 R2 K8 ["__index"]
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 SETTABLEKS                       R3 R2 K10 ["new"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 SETTABLEKS                       R3 R2 K12 ["getLastValue"]
       25 DUPCLOSURE                       R3 K13 [PROTO_3]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K14 ["connect"]
       29 DUPCLOSURE                       R3 K15 [PROTO_4]
       30 SETTABLEKS                       R3 R2 K16 ["disconnect"]
       32 DUPCLOSURE                       R3 K17 [PROTO_5]
       33 SETTABLEKS                       R3 R2 K18 ["destroy"]
       35 RETURN                           R2 1
