PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["createElement"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["FoundationRemoveCursorProviderTestOutput"]
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADK                            R4 K2 ["Frame"]
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R4 3
       12 DUPTABLE                         R5 K8 [{"BackgroundTransparency", "BorderSizePixel", "Position", "Size", "ref"}]
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K1 ["FoundationRemoveCursorProviderTestOutput"]
       16 JUMPIFNOT                        R7 ; [+2]
       17 LOADN                            R6 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 SETTABLEKS                       R6 R5 K3 ["BackgroundTransparency"]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R7 R8 K1 ["FoundationRemoveCursorProviderTestOutput"]
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADN                            R6 0
       27 JUMP                             ; [+1]
       28 LOADNIL                          R6
       29 SETTABLEKS                       R6 R5 K4 ["BorderSizePixel"]
       31 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       33 GETTABLEKS                       R8 R0 K12 ["offset"]
       35 MINUS                            R7 R8
       36 GETTABLEKS                       R9 R0 K12 ["offset"]
       38 MINUS                            R8 R9
       39 CALL                             R6 2 1
       40 SETTABLEKS                       R6 R5 K5 ["Position"]
       42 GETIMPORT                        R6 K14 [UDim2.new]
       44 LOADN                            R7 1
       45 GETTABLEKS                       R9 R0 K12 ["offset"]
       47 MULK                             R8 R9 K15 [2]
       48 LOADN                            R9 1
       49 GETTABLEKS                       R11 R0 K12 ["offset"]
       51 MULK                             R10 R11 K15 [2]
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R5 K6 ["Size"]
       55 SETTABLEKS                       R1 R5 K7 ["ref"]
       57 DUPTABLE                         R6 K18 [{"UICorner", "UIStroke"}]
       58 GETUPVAL                         R8 1
       59 GETTABLEKS                       R7 R8 K0 ["createElement"]
       61 LOADK                            R8 K16 ["UICorner"]
       62 DUPTABLE                         R9 K20 [{"CornerRadius"}]
       63 GETTABLEKS                       R10 R0 K21 ["cornerRadius"]
       65 SETTABLEKS                       R10 R9 K19 ["CornerRadius"]
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K16 ["UICorner"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R7 R8 K0 ["createElement"]
       73 LOADK                            R8 K17 ["UIStroke"]
       74 DUPTABLE                         R9 K25 [{"Color", "Transparency", "Thickness"}]
       75 GETTABLEKS                       R13 R2 K22 ["Color"]
       77 GETTABLEKS                       R12 R13 K26 ["Selection"]
       79 GETTABLEKS                       R11 R12 K27 ["Start"]
       81 GETTABLEKS                       R10 R11 K28 ["Color3"]
       83 SETTABLEKS                       R10 R9 K22 ["Color"]
       85 GETTABLEKS                       R13 R2 K22 ["Color"]
       87 GETTABLEKS                       R12 R13 K26 ["Selection"]
       89 GETTABLEKS                       R11 R12 K27 ["Start"]
       91 GETTABLEKS                       R10 R11 K23 ["Transparency"]
       93 SETTABLEKS                       R10 R9 K23 ["Transparency"]
       95 GETTABLEKS                       R10 R0 K29 ["borderWidth"]
       97 SETTABLEKS                       R10 R9 K24 ["Thickness"]
       99 NEWTABLE                         R10 0 0
      101 CALL                             R7 3 1
      102 SETTABLEKS                       R7 R6 K17 ["UIStroke"]
      104 CALL                             R3 3 -1
      105 RETURN                           R3 -1

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
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K11 ["Components"]
       27 GETTABLEKS                       R5 R6 K12 ["View"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K13 ["Utility"]
       34 GETTABLEKS                       R6 R7 K14 ["Flags"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R2 K15 ["forwardRef"]
       39 DUPCLOSURE                       R7 K16 [PROTO_0]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R2 K17 ["memo"]
       47 MOVE                             R8 R6
       48 CALL                             R7 1 -1
       49 RETURN                           R7 -1
