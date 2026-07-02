PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["colorMode"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["createElement"]
        7 LOADK                            R5 K2 ["Frame"]
        8 DUPTABLE                         R6 K10 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["ref"]}]
        9 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       11 GETTABLEKS                       R9 R0 K14 ["offset"]
       13 MINUS                            R8 R9
       14 GETTABLEKS                       R10 R0 K14 ["offset"]
       16 MINUS                            R9 R10
       17 CALL                             R7 2 1
       18 SETTABLEKS                       R7 R6 K7 ["Position"]
       20 GETIMPORT                        R7 K16 [UDim2.new]
       22 LOADN                            R8 1
       23 GETTABLEKS                       R10 R0 K14 ["offset"]
       25 MULK                             R9 R10 K17 [2]
       26 LOADN                            R10 1
       27 GETTABLEKS                       R12 R0 K14 ["offset"]
       29 MULK                             R11 R12 K17 [2]
       30 CALL                             R7 4 1
       31 SETTABLEKS                       R7 R6 K8 ["Size"]
       33 SETTABLEKS                       R1 R6 K9 ["ref"]
       35 DUPTABLE                         R7 K20 [{"UICorner", "UIStroke"}]
       36 GETUPVAL                         R8 1
       37 GETTABLEKS                       R8 R8 K1 ["createElement"]
       39 LOADK                            R9 K18 ["UICorner"]
       40 DUPTABLE                         R10 K22 [{"CornerRadius"}]
       41 GETTABLEKS                       R11 R0 K23 ["cornerRadius"]
       43 SETTABLEKS                       R11 R10 K21 ["CornerRadius"]
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K18 ["UICorner"]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R8 R8 K1 ["createElement"]
       51 LOADK                            R9 K19 ["UIStroke"]
       52 DUPTABLE                         R10 K27 [{"Color", "Transparency", "Thickness"}]
       53 GETTABLE                         R11 R2 R3
       54 GETTABLEKS                       R11 R11 K28 ["Selection"]
       56 GETTABLEKS                       R11 R11 K29 ["Start"]
       58 GETTABLEKS                       R11 R11 K30 ["Color3"]
       60 SETTABLEKS                       R11 R10 K24 ["Color"]
       62 GETTABLE                         R11 R2 R3
       63 GETTABLEKS                       R11 R11 K28 ["Selection"]
       65 GETTABLEKS                       R11 R11 K29 ["Start"]
       67 GETTABLEKS                       R11 R11 K25 ["Transparency"]
       69 SETTABLEKS                       R11 R10 K25 ["Transparency"]
       71 GETTABLEKS                       R11 R0 K31 ["borderWidth"]
       73 SETTABLEKS                       R11 R10 K26 ["Thickness"]
       75 NEWTABLE                         R11 0 0
       77 CALL                             R8 3 1
       78 SETTABLEKS                       R8 R7 K19 ["UIStroke"]
       80 CALL                             R4 3 -1
       81 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Enums"]
       13 GETTABLEKS                       R3 R3 K8 ["ColorMode"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Providers"]
       25 GETTABLEKS                       R5 R5 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["useTokens"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R3 K13 ["forwardRef"]
       32 DUPCLOSURE                       R6 K14 [PROTO_0]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R3
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R3 K15 ["memo"]
       38 MOVE                             R7 R5
       39 CALL                             R6 1 -1
       40 RETURN                           R6 -1
