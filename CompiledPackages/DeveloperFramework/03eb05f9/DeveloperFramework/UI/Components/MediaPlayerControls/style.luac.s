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
       17 GETUPVAL                         R2 1
       18 SETTABLEKS                       R2 R1 K8 ["Background"]
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R2 R2 K9 ["Dictionary"]
       23 GETTABLEKS                       R2 R2 K10 ["join"]
       25 GETUPVAL                         R3 3
       26 DUPTABLE                         R4 K12 [{"Color"}]
       27 GETUPVAL                         R5 4
       28 GETTABLEKS                       R5 R5 K13 ["ImageButtonBackground"]
       30 SETTABLEKS                       R5 R4 K11 ["Color"]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K14 ["BackgroundStyle"]
       35 GETUPVAL                         R2 5
       36 GETTABLEKS                       R2 R2 K15 ["Hover"]
       38 DUPTABLE                         R3 K16 [{"BackgroundStyle"}]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R4 R4 K9 ["Dictionary"]
       42 GETTABLEKS                       R4 R4 K10 ["join"]
       44 GETUPVAL                         R5 3
       45 DUPTABLE                         R6 K19 [{["Transparency"] = 0.5, ["Color"]}]
       46 GETUPVAL                         R7 4
       47 GETTABLEKS                       R7 R7 K20 ["ImageButtonHover"]
       49 SETTABLEKS                       R7 R6 K11 ["Color"]
       51 CALL                             R4 2 1
       52 SETTABLEKS                       R4 R3 K14 ["BackgroundStyle"]
       54 SETTABLE                         R3 R1 R2
       55 GETUPVAL                         R2 5
       56 GETTABLEKS                       R2 R2 K21 ["Disabled"]
       58 DUPTABLE                         R3 K16 [{"BackgroundStyle"}]
       59 GETUPVAL                         R4 2
       60 GETTABLEKS                       R4 R4 K9 ["Dictionary"]
       62 GETTABLEKS                       R4 R4 K10 ["join"]
       64 GETUPVAL                         R5 3
       65 DUPTABLE                         R6 K22 [{["Color"], ["Transparency"] = 0.5}]
       66 GETUPVAL                         R7 4
       67 GETTABLEKS                       R7 R7 K23 ["ButtonDisabled"]
       69 SETTABLEKS                       R7 R6 K11 ["Color"]
       71 CALL                             R4 2 1
       72 SETTABLEKS                       R4 R3 K14 ["BackgroundStyle"]
       74 SETTABLE                         R3 R1 R2
       75 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["Components"]
       15 GETTABLEKS                       R2 R2 K8 ["RoundBox"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K6 [require]
       20 GETTABLEKS                       R3 R0 K2 ["UI"]
       22 GETTABLEKS                       R3 R3 K7 ["Components"]
       24 GETTABLEKS                       R3 R3 K9 ["Image"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K6 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Util"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K11 ["Cryo"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K6 [require]
       41 GETTABLEKS                       R6 R0 K10 ["Util"]
       43 GETTABLEKS                       R6 R6 K12 ["StyleModifier"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R3 K13 ["deepCopy"]
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R0 K14 ["Style"]
       52 GETTABLEKS                       R8 R8 K15 ["StyleKey"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETTABLEKS                       R9 R0 K2 ["UI"]
       59 GETTABLEKS                       R9 R9 K7 ["Components"]
       61 GETTABLEKS                       R9 R9 K16 ["UIFolderData"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K6 [require]
       66 GETTABLEKS                       R10 R8 K8 ["RoundBox"]
       68 GETTABLEKS                       R10 R10 K17 ["style"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R11 R8 K18 ["Slider"]
       75 GETTABLEKS                       R11 R11 K17 ["style"]
       77 CALL                             R10 1 1
       78 MOVE                             R11 R6
       79 MOVE                             R12 R9
       80 CALL                             R11 1 1
       81 MOVE                             R12 R6
       82 MOVE                             R13 R10
       83 CALL                             R12 1 1
       84 DUPCLOSURE                       R13 K19 [PROTO_0]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R5
       91 DUPTABLE                         R14 K22 [{"Scrubber", "Controls"}]
       92 GETTABLEKS                       R15 R4 K23 ["Dictionary"]
       94 GETTABLEKS                       R15 R15 K24 ["join"]
       96 MOVE                             R16 R12
       97 DUPTABLE                         R17 K29 [{["UpperKnobBackground"] = , ["UpperKnobBackgroundStyle"], ["Size"]}]
       98 NEWTABLE                         R18 0 0
      100 SETTABLEKS                       R18 R17 K27 ["UpperKnobBackgroundStyle"]
      102 GETIMPORT                        R18 K32 [UDim2.new]
      104 LOADN                            R19 1
      105 GETTABLEKS                       R20 R12 K33 ["KnobSize"]
      107 GETTABLEKS                       R20 R20 K34 ["X"]
      109 LOADN                            R21 0
      110 LOADN                            R22 15
      111 CALL                             R18 4 1
      112 SETTABLEKS                       R18 R17 K28 ["Size"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K20 ["Scrubber"]
      117 DUPTABLE                         R15 K38 [{"Size", "Padding", "PauseButton", "PlayButton"}]
      118 GETIMPORT                        R16 K32 [UDim2.new]
      120 LOADN                            R17 1
      121 LOADN                            R18 0
      122 LOADN                            R19 0
      123 LOADN                            R20 46
      124 CALL                             R16 4 1
      125 SETTABLEKS                       R16 R15 K28 ["Size"]
      127 DUPTABLE                         R16 K45 [{["Top"] = 5, ["Left"] = 11, ["Bottom"] = 11, ["Right"] = 11}]
      128 SETTABLEKS                       R16 R15 K35 ["Padding"]
      130 MOVE                             R16 R13
      131 LOADK                            R17 K46 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/pause_button.png"]
      132 CALL                             R16 1 1
      133 SETTABLEKS                       R16 R15 K36 ["PauseButton"]
      135 MOVE                             R16 R13
      136 LOADK                            R17 K47 ["rbxasset://textures/DeveloperFramework/MediaPlayerControls/play_button.png"]
      137 CALL                             R16 1 1
      138 SETTABLEKS                       R16 R15 K37 ["PlayButton"]
      140 SETTABLEKS                       R15 R14 K21 ["Controls"]
      142 RETURN                           R14 1
