PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["OnFocused"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Stylizer"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Localization"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["createElement"]
       15 GETUPVAL                         R5 1
       16 DUPTABLE                         R6 K7 [{["Priority"] = 100}]
       17 DUPTABLE                         R7 K9 [{"Text"}]
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K4 ["createElement"]
       21 LOADK                            R9 K10 ["TextButton"]
       22 NEWTABLE                         R10 16 0
       24 GETIMPORT                        R11 K13 [UDim2.new]
       26 LOADN                            R12 1
       27 LOADN                            R13 0
       28 LOADN                            R14 1
       29 LOADN                            R15 0
       30 CALL                             R11 4 1
       31 SETTABLEKS                       R11 R10 K14 ["Size"]
       33 GETIMPORT                        R11 K16 [Color3.new]
       35 CALL                             R11 0 1
       36 SETTABLEKS                       R11 R10 K17 ["BackgroundColor3"]
       38 LOADK                            R11 K18 [0.35]
       39 SETTABLEKS                       R11 R10 K19 ["BackgroundTransparency"]
       41 LOADB                            R11 0
       42 SETTABLEKS                       R11 R10 K20 ["AutoButtonColor"]
       44 GETTABLEKS                       R11 R2 K21 ["font"]
       46 SETTABLEKS                       R11 R10 K22 ["Font"]
       48 GETTABLEKS                       R11 R2 K23 ["startScreenTheme"]
       50 GETTABLEKS                       R11 R11 K24 ["textSize"]
       52 SETTABLEKS                       R11 R10 K25 ["TextSize"]
       54 GETTABLEKS                       R11 R2 K23 ["startScreenTheme"]
       56 GETTABLEKS                       R11 R11 K26 ["darkTextColor"]
       58 SETTABLEKS                       R11 R10 K27 ["TextColor3"]
       60 LOADK                            R13 K28 ["Title"]
       61 LOADK                            R14 K29 ["ClickToContinue"]
       62 NAMECALL                         R11 R3 K30 ["getText"]
       64 CALL                             R11 3 1
       65 SETTABLEKS                       R11 R10 K8 ["Text"]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R11 R11 K31 ["Event"]
       70 GETTABLEKS                       R11 R11 K32 ["Activated"]
       72 SETTABLE                         R1 R10 R11
       73 CALL                             R8 2 1
       74 SETTABLEKS                       R8 R7 K8 ["Text"]
       76 CALL                             R4 3 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R5 K12 ["CaptureFocus"]
       29 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       31 LOADK                            R8 K14 ["InactiveCover"]
       32 NAMECALL                         R6 R6 K15 ["extend"]
       34 CALL                             R6 2 1
       35 DUPCLOSURE                       R7 K16 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 SETTABLEKS                       R7 R6 K17 ["render"]
       40 MOVE                             R7 R4
       41 DUPTABLE                         R8 K20 [{"Stylizer", "Localization"}]
       42 GETTABLEKS                       R9 R3 K18 ["Stylizer"]
       44 SETTABLEKS                       R9 R8 K18 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K19 ["Localization"]
       48 SETTABLEKS                       R9 R8 K19 ["Localization"]
       50 CALL                             R7 1 1
       51 MOVE                             R8 R6
       52 CALL                             R7 1 1
       53 MOVE                             R6 R7
       54 RETURN                           R6 1
