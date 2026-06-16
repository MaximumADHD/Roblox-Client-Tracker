PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["FoundationSupportPresentationContextInSelectionCursor"]
        5 JUMPIFNOT                        R4 ; [+3]
        6 GETTABLEKS                       R3 R0 K1 ["colorMode"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["Color"]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K3 ["createElement"]
       15 LOADK                            R5 K4 ["Frame"]
       16 DUPTABLE                         R6 K10 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ref"}]
       17 LOADN                            R7 1
       18 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       20 LOADN                            R7 0
       21 SETTABLEKS                       R7 R6 K6 ["BorderSizePixel"]
       23 GETIMPORT                        R7 K13 [UDim2.fromOffset]
       25 GETTABLEKS                       R9 R0 K14 ["offset"]
       27 MINUS                            R8 R9
       28 GETTABLEKS                       R10 R0 K14 ["offset"]
       30 MINUS                            R9 R10
       31 CALL                             R7 2 1
       32 SETTABLEKS                       R7 R6 K7 ["Position"]
       34 GETIMPORT                        R7 K16 [UDim2.new]
       36 LOADN                            R8 1
       37 GETTABLEKS                       R10 R0 K14 ["offset"]
       39 MULK                             R9 R10 K17 [2]
       40 LOADN                            R10 1
       41 GETTABLEKS                       R12 R0 K14 ["offset"]
       43 MULK                             R11 R12 K17 [2]
       44 CALL                             R7 4 1
       45 SETTABLEKS                       R7 R6 K8 ["Size"]
       47 SETTABLEKS                       R1 R6 K9 ["ref"]
       49 DUPTABLE                         R7 K20 [{"UICorner", "UIStroke"}]
       50 GETUPVAL                         R8 3
       51 GETTABLEKS                       R8 R8 K3 ["createElement"]
       53 LOADK                            R9 K18 ["UICorner"]
       54 DUPTABLE                         R10 K22 [{"CornerRadius"}]
       55 GETTABLEKS                       R11 R0 K23 ["cornerRadius"]
       57 SETTABLEKS                       R11 R10 K21 ["CornerRadius"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K18 ["UICorner"]
       62 GETUPVAL                         R8 3
       63 GETTABLEKS                       R8 R8 K3 ["createElement"]
       65 LOADK                            R9 K19 ["UIStroke"]
       66 DUPTABLE                         R10 K26 [{"Color", "Transparency", "Thickness"}]
       67 GETTABLE                         R11 R2 R3
       68 GETTABLEKS                       R11 R11 K27 ["Selection"]
       70 GETTABLEKS                       R11 R11 K28 ["Start"]
       72 GETTABLEKS                       R11 R11 K29 ["Color3"]
       74 SETTABLEKS                       R11 R10 K2 ["Color"]
       76 GETTABLE                         R11 R2 R3
       77 GETTABLEKS                       R11 R11 K27 ["Selection"]
       79 GETTABLEKS                       R11 R11 K28 ["Start"]
       81 GETTABLEKS                       R11 R11 K24 ["Transparency"]
       83 SETTABLEKS                       R11 R10 K24 ["Transparency"]
       85 GETTABLEKS                       R11 R0 K30 ["borderWidth"]
       87 SETTABLEKS                       R11 R10 K25 ["Thickness"]
       89 NEWTABLE                         R11 0 0
       91 CALL                             R8 3 1
       92 SETTABLEKS                       R8 R7 K19 ["UIStroke"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R0 K9 ["Utility"]
       20 GETTABLEKS                       R4 R4 K10 ["Flags"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["React"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K12 ["Providers"]
       32 GETTABLEKS                       R6 R6 K13 ["Style"]
       34 GETTABLEKS                       R6 R6 K14 ["useTokens"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K15 ["forwardRef"]
       39 DUPCLOSURE                       R7 K16 [PROTO_0]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R4 K17 ["memo"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 -1
       49 RETURN                           R7 -1
