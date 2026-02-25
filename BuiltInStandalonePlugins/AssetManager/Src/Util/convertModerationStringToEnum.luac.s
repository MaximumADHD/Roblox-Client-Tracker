PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["Approved"] ; [+7]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["ModerationStatus"]
        5 GETTABLEKS                       R1 R2 K0 ["Approved"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K2 ["Pending"] ; [+7]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K1 ["ModerationStatus"]
       13 GETTABLEKS                       R1 R2 K2 ["Pending"]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKS                    R0 K3 ["Rejected"] ; [+7]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R2 R3 K1 ["ModerationStatus"]
       21 GETTABLEKS                       R1 R2 K3 ["Rejected"]
       23 RETURN                           R1 1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K1 ["ModerationStatus"]
       27 GETTABLEKS                       R1 R2 K4 ["Placeholder"]
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
