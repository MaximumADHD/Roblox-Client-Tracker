PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ScreenGui"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["AnnotationsEditor"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K6 ["IgnoreGuiInset"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K7 ["ResetOnSpawn"]
       13 GETIMPORT                        R2 K11 [Enum.ZIndexBehavior.Sibling]
       15 SETTABLEKS                       R2 R1 K9 ["ZIndexBehavior"]
       17 GETIMPORT                        R2 K13 [game]
       19 LOADK                            R4 K14 ["CoreGui"]
       20 NAMECALL                         R2 R2 K15 ["GetService"]
       22 CALL                             R2 2 1
       23 SETTABLEKS                       R2 R1 K16 ["Parent"]
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K17 ["createRoot"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 1
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K18 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K20 [{"gui"}]
       35 SETTABLEKS                       R1 R7 K19 ["gui"]
       37 CALL                             R5 2 -1
       38 NAMECALL                         R3 R2 K21 ["render"]
       40 CALL                             R3 -1 0
       41 GETTABLEKS                       R3 R0 K22 ["Unloading"]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R1
       46 NAMECALL                         R3 R3 K23 ["Connect"]
       48 CALL                             R3 2 0
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnnotationsEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["MainPlugin"]
       27 CALL                             R3 1 1
       28 DUPCLOSURE                       R4 K11 [PROTO_1]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
