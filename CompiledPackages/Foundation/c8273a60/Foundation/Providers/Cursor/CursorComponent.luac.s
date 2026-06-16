PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R0 K0 ["colorMode"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["createElement"]
        7 LOADK                            R5 K2 ["Frame"]
        8 DUPTABLE                         R6 K8 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ref"}]
        9 LOADN                            R7 1
       10 SETTABLEKS                       R7 R6 K3 ["BackgroundTransparency"]
       12 LOADN                            R7 0
       13 SETTABLEKS                       R7 R6 K4 ["BorderSizePixel"]
       15 GETIMPORT                        R7 K11 [UDim2.fromOffset]
       17 GETTABLEKS                       R9 R0 K12 ["offset"]
       19 MINUS                            R8 R9
       20 GETTABLEKS                       R10 R0 K12 ["offset"]
       22 MINUS                            R9 R10
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K5 ["Position"]
       26 GETIMPORT                        R7 K14 [UDim2.new]
       28 LOADN                            R8 1
       29 GETTABLEKS                       R10 R0 K12 ["offset"]
       31 MULK                             R9 R10 K15 [2]
       32 LOADN                            R10 1
       33 GETTABLEKS                       R12 R0 K12 ["offset"]
       35 MULK                             R11 R12 K15 [2]
       36 CALL                             R7 4 1
       37 SETTABLEKS                       R7 R6 K6 ["Size"]
       39 SETTABLEKS                       R1 R6 K7 ["ref"]
       41 DUPTABLE                         R7 K18 [{"UICorner", "UIStroke"}]
       42 GETUPVAL                         R8 1
       43 GETTABLEKS                       R8 R8 K1 ["createElement"]
       45 LOADK                            R9 K16 ["UICorner"]
       46 DUPTABLE                         R10 K20 [{"CornerRadius"}]
       47 GETTABLEKS                       R11 R0 K21 ["cornerRadius"]
       49 SETTABLEKS                       R11 R10 K19 ["CornerRadius"]
       51 CALL                             R8 2 1
       52 SETTABLEKS                       R8 R7 K16 ["UICorner"]
       54 GETUPVAL                         R8 1
       55 GETTABLEKS                       R8 R8 K1 ["createElement"]
       57 LOADK                            R9 K17 ["UIStroke"]
       58 DUPTABLE                         R10 K25 [{"Color", "Transparency", "Thickness"}]
       59 GETTABLE                         R11 R2 R3
       60 GETTABLEKS                       R11 R11 K26 ["Selection"]
       62 GETTABLEKS                       R11 R11 K27 ["Start"]
       64 GETTABLEKS                       R11 R11 K28 ["Color3"]
       66 SETTABLEKS                       R11 R10 K22 ["Color"]
       68 GETTABLE                         R11 R2 R3
       69 GETTABLEKS                       R11 R11 K26 ["Selection"]
       71 GETTABLEKS                       R11 R11 K27 ["Start"]
       73 GETTABLEKS                       R11 R11 K23 ["Transparency"]
       75 SETTABLEKS                       R11 R10 K23 ["Transparency"]
       77 GETTABLEKS                       R11 R0 K29 ["borderWidth"]
       79 SETTABLEKS                       R11 R10 K24 ["Thickness"]
       81 NEWTABLE                         R11 0 0
       83 CALL                             R8 3 1
       84 SETTABLEKS                       R8 R7 K17 ["UIStroke"]
       86 CALL                             R4 3 -1
       87 RETURN                           R4 -1

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
