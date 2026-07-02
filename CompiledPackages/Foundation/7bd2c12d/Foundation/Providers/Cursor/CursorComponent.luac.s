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
       16 DUPTABLE                         R6 K12 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"], ["ref"]}]
       17 GETIMPORT                        R7 K15 [UDim2.fromOffset]
       19 GETTABLEKS                       R9 R0 K16 ["offset"]
       21 MINUS                            R8 R9
       22 GETTABLEKS                       R10 R0 K16 ["offset"]
       24 MINUS                            R9 R10
       25 CALL                             R7 2 1
       26 SETTABLEKS                       R7 R6 K9 ["Position"]
       28 GETIMPORT                        R7 K18 [UDim2.new]
       30 LOADN                            R8 1
       31 GETTABLEKS                       R10 R0 K16 ["offset"]
       33 MULK                             R9 R10 K19 [2]
       34 LOADN                            R10 1
       35 GETTABLEKS                       R12 R0 K16 ["offset"]
       37 MULK                             R11 R12 K19 [2]
       38 CALL                             R7 4 1
       39 SETTABLEKS                       R7 R6 K10 ["Size"]
       41 SETTABLEKS                       R1 R6 K11 ["ref"]
       43 DUPTABLE                         R7 K22 [{"UICorner", "UIStroke"}]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K3 ["createElement"]
       47 LOADK                            R9 K20 ["UICorner"]
       48 DUPTABLE                         R10 K24 [{"CornerRadius"}]
       49 GETTABLEKS                       R11 R0 K25 ["cornerRadius"]
       51 SETTABLEKS                       R11 R10 K23 ["CornerRadius"]
       53 CALL                             R8 2 1
       54 SETTABLEKS                       R8 R7 K20 ["UICorner"]
       56 GETUPVAL                         R8 3
       57 GETTABLEKS                       R8 R8 K3 ["createElement"]
       59 LOADK                            R9 K21 ["UIStroke"]
       60 DUPTABLE                         R10 K28 [{"Color", "Transparency", "Thickness"}]
       61 GETTABLE                         R11 R2 R3
       62 GETTABLEKS                       R11 R11 K29 ["Selection"]
       64 GETTABLEKS                       R11 R11 K30 ["Start"]
       66 GETTABLEKS                       R11 R11 K31 ["Color3"]
       68 SETTABLEKS                       R11 R10 K2 ["Color"]
       70 GETTABLE                         R11 R2 R3
       71 GETTABLEKS                       R11 R11 K29 ["Selection"]
       73 GETTABLEKS                       R11 R11 K30 ["Start"]
       75 GETTABLEKS                       R11 R11 K26 ["Transparency"]
       77 SETTABLEKS                       R11 R10 K26 ["Transparency"]
       79 GETTABLEKS                       R11 R0 K32 ["borderWidth"]
       81 SETTABLEKS                       R11 R10 K27 ["Thickness"]
       83 NEWTABLE                         R11 0 0
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K21 ["UIStroke"]
       88 CALL                             R4 3 -1
       89 RETURN                           R4 -1

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
