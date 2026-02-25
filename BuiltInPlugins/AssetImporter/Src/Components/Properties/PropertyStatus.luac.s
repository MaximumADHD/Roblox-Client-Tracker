PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["StatusLevel"]
        8 GETTABLEKS                       R5 R1 K4 ["StatusMessage"]
       10 GETTABLEKS                       R6 R1 K5 ["StatusContext"]
       12 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       14 GETTABLEKS                       R9 R3 K7 ["PropertyView"]
       16 GETTABLEKS                       R8 R9 K8 ["IconSize"]
       18 LOADB                            R9 1
       19 JUMPIFEQKS                       R4 K9 ["Error"] ; [+8]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K9 ["Error"]
       24 JUMPIFEQ                         R4 R10 ; [+2]
       26 LOADB                            R9 0 +1
       27 LOADB                            R9 1
       28 JUMPIFNOT                        R9 ; [+3]
       29 GETTABLEKS                       R10 R3 K10 ["ErrorIcon"]
       31 JUMPIF                           R10 ; [+2]
       32 GETTABLEKS                       R10 R3 K11 ["WarningIcon"]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R11 R12 K12 ["createElement"]
       37 GETUPVAL                         R12 2
       38 DUPTABLE                         R13 K15 [{"Size", "Style", "LayoutOrder"}]
       39 GETIMPORT                        R14 K18 [UDim2.fromOffset]
       41 MOVE                             R15 R8
       42 MOVE                             R16 R8
       43 CALL                             R14 2 1
       44 SETTABLEKS                       R14 R13 K13 ["Size"]
       46 SETTABLEKS                       R10 R13 K14 ["Style"]
       48 SETTABLEKS                       R7 R13 K6 ["LayoutOrder"]
       50 DUPTABLE                         R14 K20 [{"Tooltip"}]
       51 GETUPVAL                         R16 1
       52 GETTABLEKS                       R15 R16 K12 ["createElement"]
       54 GETUPVAL                         R16 3
       55 DUPTABLE                         R17 K22 [{"Text"}]
       56 LOADK                            R20 K23 ["Statuses"]
       57 MOVE                             R21 R5
       58 MOVE                             R22 R6
       59 NAMECALL                         R18 R2 K24 ["getText"]
       61 CALL                             R18 4 1
       62 SETTABLEKS                       R18 R17 K21 ["Text"]
       64 CALL                             R15 2 1
       65 SETTABLEKS                       R15 R14 K19 ["Tooltip"]
       67 CALL                             R11 3 -1
       68 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R3 K11 ["Localization"]
       27 GETTABLEKS                       R6 R3 K12 ["Stylizer"]
       29 GETTABLEKS                       R7 R2 K13 ["UI"]
       31 GETTABLEKS                       R8 R7 K14 ["Tooltip"]
       33 GETTABLEKS                       R9 R7 K15 ["Image"]
       35 GETIMPORT                        R10 K5 [require]
       37 GETTABLEKS                       R13 R0 K16 ["Src"]
       39 GETTABLEKS                       R12 R13 K17 ["Resources"]
       41 GETTABLEKS                       R11 R12 K18 ["StatusLevel"]
       43 CALL                             R10 1 1
       44 GETTABLEKS                       R11 R1 K19 ["PureComponent"]
       46 LOADK                            R13 K20 ["PropertyStatus"]
       47 NAMECALL                         R11 R11 K21 ["extend"]
       49 CALL                             R11 2 1
       50 DUPCLOSURE                       R12 K22 [PROTO_0]
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 SETTABLEKS                       R12 R11 K23 ["render"]
       57 MOVE                             R12 R4
       58 DUPTABLE                         R13 K24 [{"Localization", "Stylizer"}]
       59 SETTABLEKS                       R5 R13 K11 ["Localization"]
       61 SETTABLEKS                       R6 R13 K12 ["Stylizer"]
       63 CALL                             R12 1 1
       64 MOVE                             R13 R11
       65 CALL                             R12 1 1
       66 MOVE                             R11 R12
       67 RETURN                           R11 1
