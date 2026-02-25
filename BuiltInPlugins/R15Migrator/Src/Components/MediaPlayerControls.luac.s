PROTO_0:
        0 JUMPIF                           R1 ; [+4]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["LOADING_BUTTON"]
        4 RETURN                           R2 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["PAUSE_BUTTON"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["PLAY_BUTTON"]
       13 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R3 K1 ["Stylizer"]
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
       26 GETUPVAL                         R14 0
       27 GETTABLEKS                       R13 R14 K12 ["new"]
       29 CALL                             R13 0 1
       30 GETUPVAL                         R15 1
       31 GETTABLEKS                       R14 R15 K13 ["createElement"]
       33 GETUPVAL                         R15 2
       34 DUPTABLE                         R16 K20 [{"LayoutOrder", "Position", "Size", "HorizontalAlignment", "Layout", "Spacing", "BackgroundColor", "Style", "Padding"}]
       35 SETTABLEKS                       R5 R16 K4 ["LayoutOrder"]
       37 SETTABLEKS                       R3 R16 K2 ["Position"]
       39 SETTABLEKS                       R4 R16 K3 ["Size"]
       41 GETIMPORT                        R17 K23 [Enum.HorizontalAlignment.Left]
       43 SETTABLEKS                       R17 R16 K14 ["HorizontalAlignment"]
       45 GETIMPORT                        R17 K26 [Enum.FillDirection.Horizontal]
       47 SETTABLEKS                       R17 R16 K15 ["Layout"]
       49 GETTABLEKS                       R17 R2 K16 ["Spacing"]
       51 SETTABLEKS                       R17 R16 K16 ["Spacing"]
       53 GETTABLEKS                       R17 R2 K17 ["BackgroundColor"]
       55 SETTABLEKS                       R17 R16 K17 ["BackgroundColor"]
       57 LOADK                            R17 K27 ["RoundBox"]
       58 SETTABLEKS                       R17 R16 K18 ["Style"]
       60 GETTABLEKS                       R17 R2 K19 ["Padding"]
       62 SETTABLEKS                       R17 R16 K19 ["Padding"]
       64 DUPTABLE                         R17 K30 [{"PlayOrPauseButton", "Scrubber"}]
       65 GETUPVAL                         R19 1
       66 GETTABLEKS                       R18 R19 K13 ["createElement"]
       68 GETUPVAL                         R19 3
       69 DUPTABLE                         R20 K33 [{"Size", "LayoutOrder", "OnClick", "Style", "StyleModifier"}]
       70 GETTABLEKS                       R21 R2 K34 ["ButtonSize"]
       72 SETTABLEKS                       R21 R20 K3 ["Size"]
       74 NAMECALL                         R21 R13 K35 ["getNextOrder"]
       76 CALL                             R21 1 1
       77 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
       79 JUMPIFNOT                        R8 ; [+2]
       80 MOVE                             R21 R11
       81 JUMP                             ; [+1]
       82 MOVE                             R21 R10
       83 SETTABLEKS                       R21 R20 K31 ["OnClick"]
       85 LOADK                            R21 K36 ["Round"]
       86 SETTABLEKS                       R21 R20 K18 ["Style"]
       88 JUMPIF                           R9 ; [+4]
       89 GETUPVAL                         R22 4
       90 GETTABLEKS                       R21 R22 K37 ["Disabled"]
       92 JUMP                             ; [+1]
       93 LOADNIL                          R21
       94 SETTABLEKS                       R21 R20 K32 ["StyleModifier"]
       96 DUPTABLE                         R21 K39 [{"Icon"}]
       97 GETUPVAL                         R23 1
       98 GETTABLEKS                       R22 R23 K13 ["createElement"]
      100 GETUPVAL                         R23 5
      101 DUPTABLE                         R24 K42 [{"Image", "ImageColor3"}]
      102 JUMPIF                           R9 ; [+4]
      103 GETUPVAL                         R26 6
      104 GETTABLEKS                       R25 R26 K43 ["LOADING_BUTTON"]
      106 JUMP                             ; [+9]
      107 JUMPIFNOT                        R8 ; [+4]
      108 GETUPVAL                         R26 6
      109 GETTABLEKS                       R25 R26 K44 ["PAUSE_BUTTON"]
      111 JUMP                             ; [+4]
      112 GETUPVAL                         R26 6
      113 GETTABLEKS                       R25 R26 K45 ["PLAY_BUTTON"]
      115 JUMP                             ; [0]
      116 SETTABLEKS                       R25 R24 K40 ["Image"]
      118 GETTABLEKS                       R25 R2 K46 ["ImageColor"]
      120 SETTABLEKS                       R25 R24 K41 ["ImageColor3"]
      122 CALL                             R22 2 1
      123 SETTABLEKS                       R22 R21 K38 ["Icon"]
      125 CALL                             R18 3 1
      126 SETTABLEKS                       R18 R17 K28 ["PlayOrPauseButton"]
      128 GETUPVAL                         R19 1
      129 GETTABLEKS                       R18 R19 K13 ["createElement"]
      131 GETUPVAL                         R19 7
      132 DUPTABLE                         R20 K51 [{"Min", "Max", "Size", "Value", "LayoutOrder", "OnValueChanged", "Disabled"}]
      133 LOADN                            R21 0
      134 SETTABLEKS                       R21 R20 K47 ["Min"]
      136 SETTABLEKS                       R7 R20 K48 ["Max"]
      138 GETTABLEKS                       R21 R2 K52 ["SliderSize"]
      140 SETTABLEKS                       R21 R20 K3 ["Size"]
      142 LOADN                            R23 0
      143 FASTCALL3                        MATH_CLAMP R6 R23 R7
      145 MOVE                             R22 R6
      146 MOVE                             R24 R7
      147 GETIMPORT                        R21 K55 [math.clamp]
      149 CALL                             R21 3 1
      150 SETTABLEKS                       R21 R20 K49 ["Value"]
      152 NAMECALL                         R21 R13 K35 ["getNextOrder"]
      154 CALL                             R21 1 1
      155 SETTABLEKS                       R21 R20 K4 ["LayoutOrder"]
      157 SETTABLEKS                       R12 R20 K50 ["OnValueChanged"]
      159 JUMPIF                           R9 ; [+2]
      160 LOADB                            R21 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R21
      163 SETTABLEKS                       R21 R20 K37 ["Disabled"]
      165 CALL                             R18 2 1
      166 SETTABLEKS                       R18 R17 K29 ["Scrubber"]
      168 CALL                             R14 3 -1
      169 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["ContextServices"]
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Packages"]
       20 GETTABLEKS                       R4 R5 K9 ["Roact"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Button"]
       27 GETTABLEKS                       R6 R4 K12 ["Image"]
       29 GETTABLEKS                       R7 R4 K13 ["Slider"]
       31 GETTABLEKS                       R8 R4 K14 ["Pane"]
       33 GETTABLEKS                       R10 R1 K15 ["Util"]
       35 GETTABLEKS                       R9 R10 K16 ["StyleModifier"]
       37 GETIMPORT                        R10 K5 [require]
       39 GETTABLEKS                       R13 R0 K17 ["Src"]
       41 GETTABLEKS                       R12 R13 K18 ["Resources"]
       43 GETTABLEKS                       R11 R12 K19 ["Images"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R12 R1 K15 ["Util"]
       48 GETTABLEKS                       R11 R12 K20 ["LayoutOrderIterator"]
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
