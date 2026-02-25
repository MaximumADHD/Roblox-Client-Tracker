PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["OnFocused"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["Stylizer"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Localization"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K4 ["createElement"]
       15 GETUPVAL                         R5 1
       16 DUPTABLE                         R6 K6 [{"Priority"}]
       17 LOADN                            R7 100
       18 SETTABLEKS                       R7 R6 K5 ["Priority"]
       20 DUPTABLE                         R7 K8 [{"Text"}]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R8 R9 K4 ["createElement"]
       24 LOADK                            R9 K9 ["TextButton"]
       25 NEWTABLE                         R10 16 0
       27 GETIMPORT                        R11 K12 [UDim2.new]
       29 LOADN                            R12 1
       30 LOADN                            R13 0
       31 LOADN                            R14 1
       32 LOADN                            R15 0
       33 CALL                             R11 4 1
       34 SETTABLEKS                       R11 R10 K13 ["Size"]
       36 GETIMPORT                        R11 K15 [Color3.new]
       38 CALL                             R11 0 1
       39 SETTABLEKS                       R11 R10 K16 ["BackgroundColor3"]
       41 LOADK                            R11 K17 [0.35]
       42 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
       44 LOADB                            R11 0
       45 SETTABLEKS                       R11 R10 K19 ["AutoButtonColor"]
       47 GETTABLEKS                       R11 R2 K20 ["font"]
       49 SETTABLEKS                       R11 R10 K21 ["Font"]
       51 GETTABLEKS                       R12 R2 K22 ["startScreenTheme"]
       53 GETTABLEKS                       R11 R12 K23 ["textSize"]
       55 SETTABLEKS                       R11 R10 K24 ["TextSize"]
       57 GETTABLEKS                       R12 R2 K22 ["startScreenTheme"]
       59 GETTABLEKS                       R11 R12 K25 ["darkTextColor"]
       61 SETTABLEKS                       R11 R10 K26 ["TextColor3"]
       63 LOADK                            R13 K27 ["Title"]
       64 LOADK                            R14 K28 ["ClickToContinue"]
       65 NAMECALL                         R11 R3 K29 ["getText"]
       67 CALL                             R11 3 1
       68 SETTABLEKS                       R11 R10 K7 ["Text"]
       70 GETUPVAL                         R13 0
       71 GETTABLEKS                       R12 R13 K30 ["Event"]
       73 GETTABLEKS                       R11 R12 K31 ["Activated"]
       75 SETTABLE                         R1 R10 R11
       76 CALL                             R8 2 1
       77 SETTABLEKS                       R8 R7 K7 ["Text"]
       79 CALL                             R4 3 -1
       80 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R6 R2 K11 ["UI"]
       27 GETTABLEKS                       R5 R6 K12 ["CaptureFocus"]
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
