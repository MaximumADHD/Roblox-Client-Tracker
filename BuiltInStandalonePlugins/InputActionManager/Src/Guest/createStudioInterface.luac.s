PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R1 K0 ["Set"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["uuid"]
        3 NAMECALL                         R2 R2 K1 ["GetInstanceByRfc4122String"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 GETUPVAL                         R3 1
        8 NEWTABLE                         R5 0 1
       10 MOVE                             R6 R2
       11 SETLIST                          R5 R6 1 [1]
       13 NAMECALL                         R3 R3 K2 ["Set"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 LOADK                            R4 K0 ["ResetSelection"]
        1 DUPCLOSURE                       R5 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R0 K2 ["OnHostEvent"]
        5 CALL                             R2 3 2
        6 LOADK                            R6 K3 ["SetSelection"]
        7 DUPCLOSURE                       R7 K4 [PROTO_1]
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R4 R0 K2 ["OnHostEvent"]
       12 CALL                             R4 3 2
       13 DUPTABLE                         R6 K6 [{"destroy", "ResetSelection", "SetSelection"}]
       14 NEWCLOSURE                       R7 P2
       15 CAPTURE                          VAL R3
       16 CAPTURE                          VAL R5
       17 SETTABLEKS                       R7 R6 K5 ["destroy"]
       19 SETTABLEKS                       R2 R6 K0 ["ResetSelection"]
       21 SETTABLEKS                       R4 R6 K3 ["SetSelection"]
       23 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["UniqueIdLookupService"]
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
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R1
       36 RETURN                           R5 1
