PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["component"]
        4 GETTABLEKS                       R3 R1 K2 ["visible"]
        6 GETTABLEKS                       R4 R1 K3 ["DisplayOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["OnTopOfCoreBlur"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["Dictionary"]
       13 GETTABLEKS                       R6 R6 K6 ["join"]
       15 MOVE                             R7 R1
       16 DUPTABLE                         R8 K7 [{"component", "DisplayOrder", "OnTopOfCoreBlur"}]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K8 ["None"]
       20 SETTABLEKS                       R9 R8 K1 ["component"]
       22 GETUPVAL                         R9 0
       23 GETTABLEKS                       R9 R9 K8 ["None"]
       25 SETTABLEKS                       R9 R8 K3 ["DisplayOrder"]
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R9 R9 K8 ["None"]
       30 SETTABLEKS                       R9 R8 K4 ["OnTopOfCoreBlur"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K9 ["createElement"]
       36 LOADK                            R8 K10 ["ScreenGui"]
       37 DUPTABLE                         R9 K13 [{"Enabled", "ZIndexBehavior", "DisplayOrder", "OnTopOfCoreBlur"}]
       38 SETTABLEKS                       R3 R9 K11 ["Enabled"]
       40 GETIMPORT                        R10 K16 [Enum.ZIndexBehavior.Sibling]
       42 SETTABLEKS                       R10 R9 K12 ["ZIndexBehavior"]
       44 SETTABLEKS                       R4 R9 K3 ["DisplayOrder"]
       46 SETTABLEKS                       R5 R9 K4 ["OnTopOfCoreBlur"]
       48 DUPTABLE                         R10 K18 [{"InnerComponent"}]
       49 GETUPVAL                         R11 1
       50 GETTABLEKS                       R11 R11 K9 ["createElement"]
       52 MOVE                             R12 R2
       53 MOVE                             R13 R6
       54 CALL                             R11 2 1
       55 SETTABLEKS                       R11 R10 K17 ["InnerComponent"]
       57 CALL                             R7 3 -1
       58 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K4 ["Parent"]
       22 GETTABLEKS                       R2 R2 K4 ["Parent"]
       24 GETTABLEKS                       R2 R2 K6 ["Roact"]
       26 CALL                             R1 1 1
       27 GETTABLEKS                       R2 R1 K7 ["PureComponent"]
       29 LOADK                            R4 K8 ["ScreenGuiWrapper"]
       30 NAMECALL                         R2 R2 K9 ["extend"]
       32 CALL                             R2 2 1
       33 DUPTABLE                         R3 K13 [{"DisplayOrder", "OnTopOfCoreBlur", "visible"}]
       34 LOADN                            R4 0
       35 SETTABLEKS                       R4 R3 K10 ["DisplayOrder"]
       37 LOADB                            R4 0
       38 SETTABLEKS                       R4 R3 K11 ["OnTopOfCoreBlur"]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K12 ["visible"]
       43 SETTABLEKS                       R3 R2 K14 ["defaultProps"]
       45 DUPCLOSURE                       R3 K15 [PROTO_0]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R1
       48 SETTABLEKS                       R3 R2 K16 ["render"]
       50 RETURN                           R2 1
