PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K5 [{"Priority"}]
       13 LOADN                            R7 100
       14 SETTABLEKS                       R7 R6 K4 ["Priority"]
       16 DUPTABLE                         R7 K7 [{"Text"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K3 ["createElement"]
       20 LOADK                            R9 K8 ["TextButton"]
       21 DUPTABLE                         R10 K16 [{"Size", "BackgroundColor3", "BackgroundTransparency", "AutoButtonColor", "Font", "TextSize", "TextColor3", "Text"}]
       22 GETIMPORT                        R11 K19 [UDim2.new]
       24 LOADN                            R12 1
       25 LOADN                            R13 0
       26 LOADN                            R14 1
       27 LOADN                            R15 0
       28 CALL                             R11 4 1
       29 SETTABLEKS                       R11 R10 K9 ["Size"]
       31 GETIMPORT                        R11 K21 [Color3.new]
       33 CALL                             R11 0 1
       34 SETTABLEKS                       R11 R10 K10 ["BackgroundColor3"]
       36 LOADK                            R11 K22 [0.35]
       37 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       39 LOADB                            R11 0
       40 SETTABLEKS                       R11 R10 K12 ["AutoButtonColor"]
       42 GETTABLEKS                       R11 R2 K23 ["font"]
       44 SETTABLEKS                       R11 R10 K13 ["Font"]
       46 GETTABLEKS                       R11 R2 K24 ["startScreenTheme"]
       48 GETTABLEKS                       R11 R11 K25 ["textSize"]
       50 SETTABLEKS                       R11 R10 K14 ["TextSize"]
       52 GETTABLEKS                       R11 R2 K24 ["startScreenTheme"]
       54 GETTABLEKS                       R11 R11 K26 ["darkTextColor"]
       56 SETTABLEKS                       R11 R10 K15 ["TextColor3"]
       58 LOADK                            R13 K27 ["FaceCapture"]
       59 LOADK                            R14 K28 ["IsRecordingCoverText"]
       60 NAMECALL                         R11 R3 K29 ["getText"]
       62 CALL                             R11 3 1
       63 SETTABLEKS                       R11 R10 K6 ["Text"]
       65 CALL                             R8 2 1
       66 SETTABLEKS                       R8 R7 K6 ["Text"]
       68 CALL                             R4 3 -1
       69 RETURN                           R4 -1

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
       31 LOADK                            R8 K14 ["RecordingModeCover"]
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
