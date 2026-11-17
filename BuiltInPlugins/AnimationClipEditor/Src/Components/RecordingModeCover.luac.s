PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["createElement"]
       11 GETUPVAL                         R5 1
       12 DUPTABLE                         R6 K6 [{["Priority"] = 100}]
       13 DUPTABLE                         R7 K8 [{"Text"}]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K3 ["createElement"]
       17 LOADK                            R9 K9 ["TextButton"]
       18 DUPTABLE                         R10 K19 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0.35, ["AutoButtonColor"] = False, ["Font"], ["TextSize"], ["TextColor3"], ["Text"]}]
       19 GETIMPORT                        R11 K22 [UDim2.new]
       21 LOADN                            R12 1
       22 LOADN                            R13 0
       23 LOADN                            R14 1
       24 LOADN                            R15 0
       25 CALL                             R11 4 1
       26 SETTABLEKS                       R11 R10 K10 ["Size"]
       28 GETIMPORT                        R11 K24 [Color3.new]
       30 CALL                             R11 0 1
       31 SETTABLEKS                       R11 R10 K11 ["BackgroundColor3"]
       33 GETTABLEKS                       R11 R2 K25 ["font"]
       35 SETTABLEKS                       R11 R10 K16 ["Font"]
       37 GETTABLEKS                       R11 R2 K26 ["startScreenTheme"]
       39 GETTABLEKS                       R11 R11 K27 ["textSize"]
       41 SETTABLEKS                       R11 R10 K17 ["TextSize"]
       43 GETTABLEKS                       R11 R2 K26 ["startScreenTheme"]
       45 GETTABLEKS                       R11 R11 K28 ["darkTextColor"]
       47 SETTABLEKS                       R11 R10 K18 ["TextColor3"]
       49 LOADK                            R13 K29 ["FaceCapture"]
       50 LOADK                            R14 K30 ["IsRecordingCoverText"]
       51 NAMECALL                         R11 R3 K31 ["getText"]
       53 CALL                             R11 3 1
       54 SETTABLEKS                       R11 R10 K7 ["Text"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K7 ["Text"]
       59 CALL                             R4 3 -1
       60 RETURN                           R4 -1

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
