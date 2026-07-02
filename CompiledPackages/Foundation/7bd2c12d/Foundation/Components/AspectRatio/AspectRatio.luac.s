PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FoundationFixAspectRatioBindingHandling"]
        3 JUMPIFNOT                        R1 ; [+31]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["isBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+7]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+5]
       17 DUPTABLE                         R1 K9 [{["AspectRatio"], ["AspectType"] = , ["DominantAxis"] = }]
       18 SETTABLEKS                       R0 R1 K5 ["AspectRatio"]
       20 RETURN                           R1 1
       21 DUPTABLE                         R1 K10 [{"AspectRatio", "AspectType", "DominantAxis"}]
       22 GETTABLEKS                       R2 R0 K5 ["AspectRatio"]
       24 SETTABLEKS                       R2 R1 K5 ["AspectRatio"]
       26 GETTABLEKS                       R2 R0 K6 ["AspectType"]
       28 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       30 GETTABLEKS                       R2 R0 K8 ["DominantAxis"]
       32 SETTABLEKS                       R2 R1 K8 ["DominantAxis"]
       34 RETURN                           R1 1
       35 FASTCALL1                        TYPEOF R0 ; [+3]
       36 MOVE                             R2 R0
       37 GETIMPORT                        R1 K3 [typeof]
       39 CALL                             R1 1 1
       40 JUMPIFNOTEQKS                    R1 K11 ["table"] ; [+15]
       42 DUPTABLE                         R1 K10 [{"AspectRatio", "AspectType", "DominantAxis"}]
       43 GETTABLEKS                       R2 R0 K5 ["AspectRatio"]
       45 SETTABLEKS                       R2 R1 K5 ["AspectRatio"]
       47 GETTABLEKS                       R2 R0 K6 ["AspectType"]
       49 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       51 GETTABLEKS                       R2 R0 K8 ["DominantAxis"]
       53 SETTABLEKS                       R2 R1 K8 ["DominantAxis"]
       55 RETURN                           R1 1
       56 DUPTABLE                         R1 K9 [{["AspectRatio"], ["AspectType"] = , ["DominantAxis"] = }]
       57 SETTABLEKS                       R0 R1 K5 ["AspectRatio"]
       59 RETURN                           R1 1

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
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["Flags"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R8 K15 [PROTO_1]
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 GETTABLEKS                       R9 R2 K16 ["memo"]
       49 MOVE                             R10 R8
       50 CALL                             R9 1 -1
       51 RETURN                           R9 -1
