PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["createElement"]
        5 LOADK                            R4 K1 ["Frame"]
        6 DUPTABLE                         R5 K7 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ref"}]
        7 LOADN                            R6 1
        8 SETTABLEKS                       R6 R5 K2 ["BackgroundTransparency"]
       10 LOADN                            R6 0
       11 SETTABLEKS                       R6 R5 K3 ["BorderSizePixel"]
       13 GETIMPORT                        R6 K10 [UDim2.fromOffset]
       15 GETTABLEKS                       R8 R0 K11 ["offset"]
       17 MINUS                            R7 R8
       18 GETTABLEKS                       R9 R0 K11 ["offset"]
       20 MINUS                            R8 R9
       21 CALL                             R6 2 1
       22 SETTABLEKS                       R6 R5 K4 ["Position"]
       24 GETIMPORT                        R6 K13 [UDim2.new]
       26 LOADN                            R7 1
       27 GETTABLEKS                       R9 R0 K11 ["offset"]
       29 MULK                             R8 R9 K14 [2]
       30 LOADN                            R9 1
       31 GETTABLEKS                       R11 R0 K11 ["offset"]
       33 MULK                             R10 R11 K14 [2]
       34 CALL                             R6 4 1
       35 SETTABLEKS                       R6 R5 K5 ["Size"]
       37 SETTABLEKS                       R1 R5 K6 ["ref"]
       39 DUPTABLE                         R6 K17 [{"UICorner", "UIStroke"}]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R7 R8 K0 ["createElement"]
       43 LOADK                            R8 K15 ["UICorner"]
       44 DUPTABLE                         R9 K19 [{"CornerRadius"}]
       45 GETTABLEKS                       R10 R0 K20 ["cornerRadius"]
       47 SETTABLEKS                       R10 R9 K18 ["CornerRadius"]
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K15 ["UICorner"]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K0 ["createElement"]
       55 LOADK                            R8 K16 ["UIStroke"]
       56 DUPTABLE                         R9 K24 [{"Color", "Transparency", "Thickness"}]
       57 GETTABLEKS                       R13 R2 K21 ["Color"]
       59 GETTABLEKS                       R12 R13 K25 ["Selection"]
       61 GETTABLEKS                       R11 R12 K26 ["Start"]
       63 GETTABLEKS                       R10 R11 K27 ["Color3"]
       65 SETTABLEKS                       R10 R9 K21 ["Color"]
       67 GETTABLEKS                       R13 R2 K21 ["Color"]
       69 GETTABLEKS                       R12 R13 K25 ["Selection"]
       71 GETTABLEKS                       R11 R12 K26 ["Start"]
       73 GETTABLEKS                       R10 R11 K22 ["Transparency"]
       75 SETTABLEKS                       R10 R9 K22 ["Transparency"]
       77 GETTABLEKS                       R10 R0 K28 ["borderWidth"]
       79 SETTABLEKS                       R10 R9 K23 ["Thickness"]
       81 NEWTABLE                         R10 0 0
       83 CALL                             R7 3 1
       84 SETTABLEKS                       R7 R6 K16 ["UIStroke"]
       86 CALL                             R3 3 -1
       87 RETURN                           R3 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Providers"]
       18 GETTABLEKS                       R5 R6 K9 ["Style"]
       20 GETTABLEKS                       R4 R5 K10 ["useTokens"]
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
