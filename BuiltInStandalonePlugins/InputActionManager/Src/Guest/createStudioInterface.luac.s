PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 0 0
        3 NAMECALL                         R1 R1 K0 ["Set"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R4 K0 ["ResetSelection"]
        1 DUPCLOSURE                       R5 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R2 R0 K2 ["OnHostEvent"]
        5 CALL                             R2 3 2
        6 DUPTABLE                         R4 K4 [{"destroy", "ResetSelection"}]
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R3
        9 SETTABLEKS                       R5 R4 K3 ["destroy"]
       11 SETTABLEKS                       R2 R4 K0 ["ResetSelection"]
       13 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Selection"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["InputActionManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["DMNetworking"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K12 [PROTO_2]
       21 CAPTURE                          VAL R0
       22 RETURN                           R3 1
