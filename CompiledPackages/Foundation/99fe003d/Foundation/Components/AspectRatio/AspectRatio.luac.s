PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+7]
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K2 [typeof]
       10 CALL                             R1 1 1
       11 JUMPIFNOTEQKS                    R1 K3 ["number"] ; [+5]
       13 DUPTABLE                         R1 K8 [{["AspectRatio"], ["AspectType"] = , ["DominantAxis"] = }]
       14 SETTABLEKS                       R0 R1 K4 ["AspectRatio"]
       16 RETURN                           R1 1
       17 DUPTABLE                         R1 K9 [{"AspectRatio", "AspectType", "DominantAxis"}]
       18 GETTABLEKS                       R2 R0 K4 ["AspectRatio"]
       20 SETTABLEKS                       R2 R1 K4 ["AspectRatio"]
       22 GETTABLEKS                       R2 R0 K5 ["AspectType"]
       24 SETTABLEKS                       R2 R1 K5 ["AspectType"]
       26 GETTABLEKS                       R2 R0 K7 ["DominantAxis"]
       28 SETTABLEKS                       R2 R1 K7 ["DominantAxis"]
       30 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 LOADK                            R3 K2 ["UIAspectRatioConstraint"]
        8 NEWTABLE                         R4 4 0
       10 GETTABLEKS                       R5 R1 K3 ["AspectRatio"]
       12 SETTABLEKS                       R5 R4 K3 ["AspectRatio"]
       14 GETTABLEKS                       R5 R1 K4 ["AspectType"]
       16 SETTABLEKS                       R5 R4 K4 ["AspectType"]
       18 GETTABLEKS                       R5 R1 K5 ["DominantAxis"]
       20 SETTABLEKS                       R5 R4 K5 ["DominantAxis"]
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R5 R5 K6 ["Tag"]
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R7 R0 K7 ["testId"]
       28 CALL                             R6 1 1
       29 SETTABLE                         R6 R4 R5
       30 CALL                             R2 2 -1
       31 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R5 K10 ["getTestIdTag"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R6 K12 ["Types"]
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K13 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 DUPCLOSURE                       R7 K14 [PROTO_1]
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 GETTABLEKS                       R8 R2 K15 ["memo"]
       41 MOVE                             R9 R7
       42 CALL                             R8 1 -1
       43 RETURN                           R8 -1
