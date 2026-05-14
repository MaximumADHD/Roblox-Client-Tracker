PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["GetClassIcon"]
        4 CALL                             R2 2 -1
        5 RETURN                           R2 -1

PROTO_1:
        0 LOADK                            R3 K0 ["GetStudioIcon"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["OnHostInvokeAsync"]
        5 CALL                             R1 3 2
        6 DUPTABLE                         R3 K5 [{"destroy", "getIconAsync"}]
        7 SETTABLEKS                       R2 R3 K3 ["destroy"]
        9 SETTABLEKS                       R1 R3 K4 ["getIconAsync"]
       11 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
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
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K14 [PROTO_1]
       28 CAPTURE                          VAL R0
       29 RETURN                           R4 1
