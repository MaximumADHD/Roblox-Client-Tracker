PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["createElement"]
        5 LOADK                            R4 K1 ["Frame"]
        6 DUPTABLE                         R5 K9 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["ref"]}]
        7 GETIMPORT                        R6 K12 [UDim2.fromOffset]
        9 GETTABLEKS                       R8 R0 K13 ["offset"]
       11 MINUS                            R7 R8
       12 GETTABLEKS                       R9 R0 K13 ["offset"]
       14 MINUS                            R8 R9
       15 CALL                             R6 2 1
       16 SETTABLEKS                       R6 R5 K6 ["Position"]
       18 GETIMPORT                        R6 K15 [UDim2.new]
       20 LOADN                            R7 1
       21 GETTABLEKS                       R9 R0 K13 ["offset"]
       23 MULK                             R8 R9 K16 [2]
       24 LOADN                            R9 1
       25 GETTABLEKS                       R11 R0 K13 ["offset"]
       27 MULK                             R10 R11 K16 [2]
       28 CALL                             R6 4 1
       29 SETTABLEKS                       R6 R5 K7 ["Size"]
       31 SETTABLEKS                       R1 R5 K8 ["ref"]
       33 DUPTABLE                         R6 K19 [{"UICorner", "UIStroke"}]
       34 GETUPVAL                         R7 1
       35 GETTABLEKS                       R7 R7 K0 ["createElement"]
       37 LOADK                            R8 K17 ["UICorner"]
       38 DUPTABLE                         R9 K21 [{"CornerRadius"}]
       39 GETTABLEKS                       R10 R0 K22 ["cornerRadius"]
       41 SETTABLEKS                       R10 R9 K20 ["CornerRadius"]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K17 ["UICorner"]
       46 GETUPVAL                         R7 1
       47 GETTABLEKS                       R7 R7 K0 ["createElement"]
       49 LOADK                            R8 K18 ["UIStroke"]
       50 DUPTABLE                         R9 K26 [{"Color", "Transparency", "Thickness"}]
       51 GETTABLEKS                       R10 R2 K23 ["Color"]
       53 GETTABLEKS                       R10 R10 K27 ["Selection"]
       55 GETTABLEKS                       R10 R10 K28 ["Start"]
       57 GETTABLEKS                       R10 R10 K29 ["Color3"]
       59 SETTABLEKS                       R10 R9 K23 ["Color"]
       61 GETTABLEKS                       R10 R2 K23 ["Color"]
       63 GETTABLEKS                       R10 R10 K27 ["Selection"]
       65 GETTABLEKS                       R10 R10 K28 ["Start"]
       67 GETTABLEKS                       R10 R10 K24 ["Transparency"]
       69 SETTABLEKS                       R10 R9 K24 ["Transparency"]
       71 GETTABLEKS                       R10 R0 K30 ["borderWidth"]
       73 SETTABLEKS                       R10 R9 K25 ["Thickness"]
       75 NEWTABLE                         R10 0 0
       77 CALL                             R7 3 1
       78 SETTABLEKS                       R7 R6 K18 ["UIStroke"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R4 K9 ["Style"]
       20 GETTABLEKS                       R4 R4 K10 ["useTokens"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R2 K11 ["forwardRef"]
       25 DUPCLOSURE                       R5 K12 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R2
       28 CALL                             R4 1 1
       29 GETTABLEKS                       R5 R2 K13 ["memo"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 -1
       33 RETURN                           R5 -1
