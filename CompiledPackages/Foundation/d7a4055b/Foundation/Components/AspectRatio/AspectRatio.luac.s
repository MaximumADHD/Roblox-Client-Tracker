PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+15]
        7 DUPTABLE                         R1 K6 [{"AspectRatio", "AspectType", "DominantAxis"}]
        8 GETTABLEKS                       R2 R0 K3 ["AspectRatio"]
       10 SETTABLEKS                       R2 R1 K3 ["AspectRatio"]
       12 GETTABLEKS                       R2 R0 K4 ["AspectType"]
       14 SETTABLEKS                       R2 R1 K4 ["AspectType"]
       16 GETTABLEKS                       R2 R0 K5 ["DominantAxis"]
       18 SETTABLEKS                       R2 R1 K5 ["DominantAxis"]
       20 RETURN                           R1 1
       21 DUPTABLE                         R1 K8 [{["AspectRatio"], ["AspectType"] = , ["DominantAxis"] = }]
       22 SETTABLEKS                       R0 R1 K3 ["AspectRatio"]
       24 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["UIAspectRatioConstraint"]
        8 MOVE                             R4 R1
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 DUPCLOSURE                       R4 K10 [PROTO_0]
       22 DUPCLOSURE                       R5 K11 [PROTO_1]
       23 CAPTURE                          VAL R4
       24 CAPTURE                          VAL R2
       25 GETTABLEKS                       R6 R2 K12 ["memo"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 -1
       29 RETURN                           R6 -1
