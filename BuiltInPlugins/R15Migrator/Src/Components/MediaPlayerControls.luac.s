PROTO_0:
        0 JUMPIF                           R1 ; [+4]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["LOADING_BUTTON"]
        4 RETURN                           R2 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["PAUSE_BUTTON"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["PLAY_BUTTON"]
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R3 R1 K2 ["Position"]
        8 GETTABLEKS                       R4 R1 K3 ["Size"]
       10 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       12 GETTABLEKS                       R6 R1 K5 ["CurrentTime"]
       14 GETTABLEKS                       R7 R1 K6 ["TimeLength"]
       16 GETTABLEKS                       R8 R1 K7 ["IsPlaying"]
       18 GETTABLEKS                       R9 R1 K8 ["IsLoaded"]
       20 GETTABLEKS                       R10 R1 K9 ["OnPlay"]
       22 GETTABLEKS                       R11 R1 K10 ["OnPause"]
       24 GETTABLEKS                       R12 R1 K11 ["OnScrub"]
       26 GETUPVAL                         R13 0
       27 GETTABLEKS                       R13 R13 K12 ["new"]
       29 CALL                             R13 0 1
       30 GETUPVAL                         R14 1
       31 GETTABLEKS                       R14 R14 K13 ["createElement"]
       33 GETUPVAL                         R15 2
       34 DUPTABLE                         R16 K21 [{["LayoutOrder"], ["Position"], ["Size"], ["HorizontalAlignment"], ["Layout"], ["Spacing"], ["BackgroundColor"], ["Style"] = "RoundBox", ["Padding"]}]
       35 SETTABLEKS                       R5 R16 K4 ["LayoutOrder"]
       37 SETTABLEKS                       R3 R16 K2 ["Position"]
       39 SETTABLEKS                       R4 R16 K3 ["Size"]
       41 GETIMPORT                        R17 K24 [Enum.HorizontalAlignment.Left]
       43 SETTABLEKS                       R17 R16 K14 ["HorizontalAlignment"]
       45 GETIMPORT                        R17 K27 [Enum.FillDirection.Horizontal]
       47 SETTABLEKS                       R17 R16 K15 ["Layout"]
       49 GETTABLEKS                       R17 R2 K16 ["Spacing"]
       51 SETTABLEKS                       R17 R16 K16 ["Spacing"]
       53 GETTABLEKS                       R17 R2 K17 ["BackgroundColor"]
       55 SETTABLEKS                       R17 R16 K17 ["BackgroundColor"]
       57 GETTABLEKS                       R17 R2 K20 ["Padding"]
       59 SETTABLEKS                       R17 R16 K20 ["Padding"]
       61 DUPTABLE                         R17 K30 [{"PlayOrPauseButton", "Scrubber"}]
       62 GETUPVAL                         R18 1
       63 GETTABLEKS                       R18 R18 K13 ["createElement"]
       65 GETUPVAL                         R19 3
       66 DUPTABLE                         R20 K34 [{["Size"], ["LayoutOrder"], ["OnClick"], ["Style"] = "Round", ["StyleModifier"]}]
       67 GETTABLEKS                       R21 R2 K35 ["ButtonSize"]
       69 SETTABLEKS                       R21 R20 K3 ["Size"]
       71 NAMECALL                         R21 R13 K36 ["getNextOrder"]
       73 CALL                             R21 1 1
       74 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
       76 JUMPIFNOT                        R8 ; [+2]
       77 MOVE                             R21 R11
       78 JUMP                             ; [+1]
       79 MOVE                             R21 R10
       80 SETTABLEKS                       R21 R20 K31 ["OnClick"]
       82 JUMPIF                           R9 ; [+4]
       83 GETUPVAL                         R21 4
       84 GETTABLEKS                       R21 R21 K37 ["Disabled"]
       86 JUMP                             ; [+1]
       87 LOADNIL                          R21
       88 SETTABLEKS                       R21 R20 K33 ["StyleModifier"]
       90 DUPTABLE                         R21 K39 [{"Icon"}]
       91 GETUPVAL                         R22 1
       92 GETTABLEKS                       R22 R22 K13 ["createElement"]
       94 GETUPVAL                         R23 5
       95 DUPTABLE                         R24 K42 [{"Image", "ImageColor3"}]
       96 JUMPIF                           R9 ; [+4]
       97 GETUPVAL                         R25 6
       98 GETTABLEKS                       R25 R25 K43 ["LOADING_BUTTON"]
      100 JUMP                             ; [+8]
      101 JUMPIFNOT                        R8 ; [+4]
      102 GETUPVAL                         R25 6
      103 GETTABLEKS                       R25 R25 K44 ["PAUSE_BUTTON"]
      105 JUMP                             ; [+3]
      106 GETUPVAL                         R25 6
      107 GETTABLEKS                       R25 R25 K45 ["PLAY_BUTTON"]
      109 SETTABLEKS                       R25 R24 K40 ["Image"]
      111 GETTABLEKS                       R25 R2 K46 ["ImageColor"]
      113 SETTABLEKS                       R25 R24 K41 ["ImageColor3"]
      115 CALL                             R22 2 1
      116 SETTABLEKS                       R22 R21 K38 ["Icon"]
      118 CALL                             R18 3 1
      119 SETTABLEKS                       R18 R17 K28 ["PlayOrPauseButton"]
      121 GETUPVAL                         R18 1
      122 GETTABLEKS                       R18 R18 K13 ["createElement"]
      124 GETUPVAL                         R19 7
      125 DUPTABLE                         R20 K52 [{["Min"] = 0, ["Max"], ["Size"], ["Value"], ["LayoutOrder"], ["OnValueChanged"], ["Disabled"]}]
      126 SETTABLEKS                       R7 R20 K49 ["Max"]
      128 GETTABLEKS                       R21 R2 K53 ["SliderSize"]
      130 SETTABLEKS                       R21 R20 K3 ["Size"]
      132 LOADN                            R23 0
      133 FASTCALL3                        MATH_CLAMP R6 R23 R7
      135 MOVE                             R22 R6
      136 MOVE                             R24 R7
      137 GETIMPORT                        R21 K56 [math.clamp]
      139 CALL                             R21 3 1
      140 SETTABLEKS                       R21 R20 K50 ["Value"]
      142 NAMECALL                         R21 R13 K36 ["getNextOrder"]
      144 CALL                             R21 1 1
      145 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      147 SETTABLEKS                       R12 R20 K51 ["OnValueChanged"]
      149 JUMPIF                           R9 ; [+2]
      150 LOADB                            R21 1
      151 JUMP                             ; [+1]
      152 LOADNIL                          R21
      153 SETTABLEKS                       R21 R20 K37 ["Disabled"]
      155 CALL                             R18 2 1
      156 SETTABLEKS                       R18 R17 K29 ["Scrubber"]
      158 CALL                             R14 3 -1
      159 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Button"]
       27 GETTABLEKS                       R6 R4 K12 ["Image"]
       29 GETTABLEKS                       R7 R4 K13 ["Slider"]
       31 GETTABLEKS                       R8 R4 K14 ["Pane"]
       33 GETTABLEKS                       R9 R1 K15 ["Util"]
       35 GETTABLEKS                       R9 R9 K16 ["StyleModifier"]
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R11 R0 K17 ["Src"]
       41 GETTABLEKS                       R11 R11 K18 ["Resources"]
       43 GETTABLEKS                       R11 R11 K19 ["Images"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R11 R1 K15 ["Util"]
       48 GETTABLEKS                       R11 R11 K20 ["LayoutOrderIterator"]
       50 GETTABLEKS                       R12 R3 K21 ["PureComponent"]
       52 LOADK                            R14 K22 ["MediaPlayerControls"]
       53 NAMECALL                         R12 R12 K23 ["extend"]
       55 CALL                             R12 2 1
       56 DUPCLOSURE                       R13 K24 [PROTO_0]
       57 CAPTURE                          VAL R10
       58 DUPCLOSURE                       R14 K25 [PROTO_1]
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R7
       67 SETTABLEKS                       R14 R12 K26 ["render"]
       69 GETTABLEKS                       R14 R2 K27 ["withContext"]
       71 DUPTABLE                         R15 K29 [{"Stylizer"}]
       72 GETTABLEKS                       R16 R2 K28 ["Stylizer"]
       74 SETTABLEKS                       R16 R15 K28 ["Stylizer"]
       76 CALL                             R14 1 1
       77 MOVE                             R15 R12
       78 CALL                             R14 1 1
       79 MOVE                             R12 R14
       80 RETURN                           R12 1
