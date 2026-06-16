PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetClassIcon"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R1 K0 ["Set"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R3 K0 ["GetStudioIcon"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R1 3 2
        6 LOADK                            R5 K3 ["ResetSelection"]
        7 DUPCLOSURE                       R6 K4 [PROTO_1]
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R3 R0 K5 ["OnHostEvent"]
       11 CALL                             R3 3 2
       12 DUPTABLE                         R5 K8 [{"destroy", "getIconAsync", "ResetSelection"}]
       13 NEWCLOSURE                       R6 P2
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R4
       16 SETTABLEKS                       R6 R5 K6 ["destroy"]
       18 SETTABLEKS                       R1 R5 K7 ["getIconAsync"]
       20 SETTABLEKS                       R3 R5 K3 ["ResetSelection"]
       22 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["StudioService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R4 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R5 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R5 K14 ["Types"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K15 [PROTO_3]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R0
       36 RETURN                           R5 1
