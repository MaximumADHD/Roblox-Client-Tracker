PROTO_0:
        0 NEWTABLE                         R1 8 0
        2 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        4 LOADN                            R3 28
        5 LOADN                            R4 28
        6 CALL                             R2 2 1
        7 SETTABLEKS                       R2 R1 K3 ["Size"]
        9 GETUPVAL                         R2 0
       10 SETTABLEKS                       R2 R1 K4 ["Foreground"]
       12 DUPTABLE                         R2 K6 [{"Image"}]
       13 SETTABLEKS                       R0 R2 K5 ["Image"]
       15 SETTABLEKS                       R2 R1 K7 ["ForegroundStyle"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K8 ["RoundBox"]
       20 SETTABLEKS                       R2 R1 K9 ["Background"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K10 ["Dictionary"]
       25 GETTABLEKS                       R2 R3 K11 ["join"]
       27 GETUPVAL                         R3 3
       28 DUPTABLE                         R4 K13 [{"Color"}]
       29 GETUPVAL                         R6 4
       30 GETTABLEKS                       R5 R6 K14 ["ImageButtonBackground"]
       32 SETTABLEKS                       R5 R4 K12 ["Color"]
       34 CALL                             R2 2 1
       35 SETTABLEKS                       R2 R1 K15 ["BackgroundStyle"]
       37 GETUPVAL                         R3 5
       38 GETTABLEKS                       R2 R3 K16 ["Hover"]
       40 DUPTABLE                         R3 K17 [{"BackgroundStyle"}]
       41 GETUPVAL                         R6 2
       42 GETTABLEKS                       R5 R6 K10 ["Dictionary"]
       44 GETTABLEKS                       R4 R5 K11 ["join"]
       46 GETUPVAL                         R5 3
       47 DUPTABLE                         R6 K19 [{"Transparency", "Color"}]
       48 LOADK                            R7 K20 [0.5]
       49 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       51 GETUPVAL                         R8 4
       52 GETTABLEKS                       R7 R8 K21 ["ImageButtonHover"]
       54 SETTABLEKS                       R7 R6 K12 ["Color"]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K15 ["BackgroundStyle"]
       59 SETTABLE                         R3 R1 R2
       60 GETUPVAL                         R3 5
       61 GETTABLEKS                       R2 R3 K22 ["Disabled"]
       63 DUPTABLE                         R3 K17 [{"BackgroundStyle"}]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R5 R6 K10 ["Dictionary"]
       67 GETTABLEKS                       R4 R5 K11 ["join"]
       69 GETUPVAL                         R5 3
       70 DUPTABLE                         R6 K23 [{"Color", "Transparency"}]
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R7 R8 K24 ["ButtonDisabled"]
       74 SETTABLEKS                       R7 R6 K12 ["Color"]
       76 LOADK                            R7 K20 [0.5]
       77 SETTABLEKS                       R7 R6 K18 ["Transparency"]
       79 CALL                             R4 2 1
       80 SETTABLEKS                       R4 R3 K15 ["BackgroundStyle"]
       82 SETTABLE                         R3 R1 R2
       83 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R4 R2 K10 ["Util"]
       25 GETTABLEKS                       R5 R4 K11 ["StyleModifier"]
       27 GETTABLEKS                       R6 R4 K12 ["deepCopy"]
       29 GETTABLEKS                       R7 R3 K13 ["Image"]
       31 GETTABLEKS                       R9 R2 K14 ["Style"]
       33 GETTABLEKS                       R8 R9 K15 ["StyleKey"]
       35 GETTABLEKS                       R9 R3 K16 ["UIFolderData"]
       37 GETTABLEKS                       R11 R9 K17 ["RoundBox"]
       39 GETTABLEKS                       R10 R11 K18 ["style"]
       41 MOVE                             R11 R6
       42 MOVE                             R12 R10
       43 CALL                             R11 1 1
       44 DUPCLOSURE                       R12 K19 [PROTO_0]
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R11
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R13 K21 [{"Controls"}]
       52 DUPTABLE                         R14 K26 [{"Size", "Padding", "PauseButton", "PlayButton"}]
       53 GETIMPORT                        R15 K29 [UDim2.new]
       55 LOADN                            R16 1
       56 LOADN                            R17 0
       57 LOADN                            R18 0
       58 LOADN                            R19 46
       59 CALL                             R15 4 1
       60 SETTABLEKS                       R15 R14 K22 ["Size"]
       62 DUPTABLE                         R15 K34 [{"Top", "Left", "Bottom", "Right"}]
       63 LOADN                            R16 5
       64 SETTABLEKS                       R16 R15 K30 ["Top"]
       66 LOADN                            R16 11
       67 SETTABLEKS                       R16 R15 K31 ["Left"]
       69 LOADN                            R16 11
       70 SETTABLEKS                       R16 R15 K32 ["Bottom"]
       72 LOADN                            R16 11
       73 SETTABLEKS                       R16 R15 K33 ["Right"]
       75 SETTABLEKS                       R15 R14 K23 ["Padding"]
       77 MOVE                             R15 R12
       78 LOADK                            R16 K35 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png"]
       79 CALL                             R15 1 1
       80 SETTABLEKS                       R15 R14 K24 ["PauseButton"]
       82 MOVE                             R15 R12
       83 LOADK                            R16 K36 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png"]
       84 CALL                             R15 1 1
       85 SETTABLEKS                       R15 R14 K25 ["PlayButton"]
       87 SETTABLEKS                       R14 R13 K20 ["Controls"]
       89 RETURN                           R13 1
