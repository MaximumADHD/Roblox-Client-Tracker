PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FoundationFixAspectRatioBindingHandling"]
        3 JUMPIFNOT                        R1 ; [+37]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["isBinding"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+7]
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K3 [typeof]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K4 ["number"] ; [+11]
       17 DUPTABLE                         R1 K8 [{"AspectRatio", "AspectType", "DominantAxis"}]
       18 SETTABLEKS                       R0 R1 K5 ["AspectRatio"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       23 LOADNIL                          R2
       24 SETTABLEKS                       R2 R1 K7 ["DominantAxis"]
       26 RETURN                           R1 1
       27 DUPTABLE                         R1 K8 [{"AspectRatio", "AspectType", "DominantAxis"}]
       28 GETTABLEKS                       R2 R0 K5 ["AspectRatio"]
       30 SETTABLEKS                       R2 R1 K5 ["AspectRatio"]
       32 GETTABLEKS                       R2 R0 K6 ["AspectType"]
       34 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       36 GETTABLEKS                       R2 R0 K7 ["DominantAxis"]
       38 SETTABLEKS                       R2 R1 K7 ["DominantAxis"]
       40 RETURN                           R1 1
       41 FASTCALL1                        TYPEOF R0 ; [+3]
       42 MOVE                             R2 R0
       43 GETIMPORT                        R1 K3 [typeof]
       45 CALL                             R1 1 1
       46 JUMPIFNOTEQKS                    R1 K9 ["table"] ; [+15]
       48 DUPTABLE                         R1 K8 [{"AspectRatio", "AspectType", "DominantAxis"}]
       49 GETTABLEKS                       R2 R0 K5 ["AspectRatio"]
       51 SETTABLEKS                       R2 R1 K5 ["AspectRatio"]
       53 GETTABLEKS                       R2 R0 K6 ["AspectType"]
       55 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       57 GETTABLEKS                       R2 R0 K7 ["DominantAxis"]
       59 SETTABLEKS                       R2 R1 K7 ["DominantAxis"]
       61 RETURN                           R1 1
       62 DUPTABLE                         R1 K8 [{"AspectRatio", "AspectType", "DominantAxis"}]
       63 SETTABLEKS                       R0 R1 K5 ["AspectRatio"]
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K6 ["AspectType"]
       68 LOADNIL                          R2
       69 SETTABLEKS                       R2 R1 K7 ["DominantAxis"]
       71 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["value"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["createElement"]
        7 LOADK                            R3 K2 ["UIAspectRatioConstraint"]
        8 NEWTABLE                         R4 4 0
       10 GETTABLEKS                       R5 R1 K3 ["AspectRatio"]
       12 SETTABLEKS                       R5 R4 K3 ["AspectRatio"]
       14 GETTABLEKS                       R5 R1 K4 ["AspectType"]
       16 SETTABLEKS                       R5 R4 K4 ["AspectType"]
       18 GETTABLEKS                       R5 R1 K5 ["DominantAxis"]
       20 SETTABLEKS                       R5 R4 K5 ["DominantAxis"]
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K6 ["Tag"]
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
       21 GETTABLEKS                       R6 R0 K9 ["Utility"]
       23 GETTABLEKS                       R5 R6 K10 ["getTestIdTag"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["Flags"]
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
