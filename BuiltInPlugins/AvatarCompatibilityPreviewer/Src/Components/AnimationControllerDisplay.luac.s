PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SetForcedPositionAlpha"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["Length"]
        6 DIV                              R2 R0 R3
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetForcedPositionAlpha"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["ForcedPositionAlpha"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+5]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["AnimationPositionAlpha"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R1
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["AnimationControllerDisplay"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K7 [{"AnchorPoint", "Position", "Padding", "Size"}]
       10 GETIMPORT                        R5 K10 [Vector2.new]
       12 LOADN                            R6 0
       13 LOADN                            R7 1
       14 CALL                             R5 2 1
       15 SETTABLEKS                       R5 R4 K3 ["AnchorPoint"]
       17 GETTABLEKS                       R5 R1 K4 ["Position"]
       19 SETTABLEKS                       R5 R4 K4 ["Position"]
       21 GETTABLEKS                       R5 R1 K5 ["Padding"]
       23 SETTABLEKS                       R5 R4 K5 ["Padding"]
       25 GETTABLEKS                       R5 R1 K6 ["Size"]
       27 SETTABLEKS                       R5 R4 K6 ["Size"]
       29 DUPTABLE                         R5 K12 [{"Slider"}]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K2 ["createElement"]
       33 GETUPVAL                         R7 3
       34 DUPTABLE                         R8 K20 [{["Size"], ["IsPlaying"], ["Playhead"], ["OnSliderPlayheadChanged"], ["OnPlayPauseClicked"], ["ShowTime"] = False, ["TrackLength"]}]
       35 GETIMPORT                        R9 K23 [UDim2.fromScale]
       37 LOADN                            R10 1
       38 LOADN                            R11 1
       39 CALL                             R9 2 1
       40 SETTABLEKS                       R9 R8 K6 ["Size"]
       42 GETTABLEKS                       R10 R0 K24 ["ForcedPositionAlpha"]
       44 JUMPIFEQKNIL                     R10 ; [+2]
       46 LOADB                            R9 0 +1
       47 LOADB                            R9 1
       48 SETTABLEKS                       R9 R8 K13 ["IsPlaying"]
       50 GETTABLEKS                       R10 R0 K24 ["ForcedPositionAlpha"]
       52 JUMPIF                           R10 ; [+2]
       53 GETTABLEKS                       R10 R0 K25 ["AnimationPositionAlpha"]
       55 GETTABLEKS                       R11 R0 K26 ["Length"]
       57 MUL                              R9 R10 R11
       58 SETTABLEKS                       R9 R8 K14 ["Playhead"]
       60 NEWCLOSURE                       R9 P0
       61 CAPTURE                          VAL R0
       62 SETTABLEKS                       R9 R8 K15 ["OnSliderPlayheadChanged"]
       64 NEWCLOSURE                       R9 P1
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R9 R8 K16 ["OnPlayPauseClicked"]
       68 GETTABLEKS                       R9 R0 K26 ["Length"]
       70 SETTABLEKS                       R9 R8 K19 ["TrackLength"]
       72 CALL                             R6 2 1
       73 SETTABLEKS                       R6 R5 K11 ["Slider"]
       75 CALL                             R2 3 -1
       76 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AvatarToolsShared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["UI"]
       39 GETTABLEKS                       R6 R5 K14 ["Pane"]
       41 GETTABLEKS                       R7 R2 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R7 K16 ["Stylizer"]
       45 GETTABLEKS                       R8 R1 K17 ["Components"]
       47 GETTABLEKS                       R8 R8 K18 ["AnimationPlaybackSlider"]
       49 DUPCLOSURE                       R9 K19 [PROTO_2]
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R8
       54 RETURN                           R9 1
