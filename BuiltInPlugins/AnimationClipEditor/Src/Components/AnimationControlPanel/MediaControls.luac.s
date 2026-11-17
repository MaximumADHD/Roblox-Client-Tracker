PROTO_0:
        0 GETTABLEKS                       R5 R0 K0 ["props"]
        2 GETTABLEKS                       R5 R5 K1 ["Stylizer"]
        4 GETTABLEKS                       R5 R5 K2 ["button"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K3 ["createElement"]
        9 LOADK                            R7 K4 ["Frame"]
       10 DUPTABLE                         R8 K9 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       11 GETTABLEKS                       R9 R0 K10 ["layoutOrderIterator"]
       13 NAMECALL                         R9 R9 K11 ["getNextOrder"]
       15 CALL                             R9 1 1
       16 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       18 GETIMPORT                        R9 K14 [UDim2.new]
       20 LOADN                            R10 0
       21 GETUPVAL                         R11 1
       22 GETTABLEKS                       R11 R11 K15 ["TIMELINE_HEIGHT"]
       24 LOADN                            R12 0
       25 GETUPVAL                         R13 1
       26 GETTABLEKS                       R13 R13 K15 ["TIMELINE_HEIGHT"]
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K6 ["Size"]
       31 DUPTABLE                         R9 K17 [{"Button"}]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K3 ["createElement"]
       35 GETUPVAL                         R11 2
       36 DUPTABLE                         R12 K21 [{["ZIndex"] = 1, ["Size"], ["OnClick"], ["Style"]}]
       37 GETIMPORT                        R13 K14 [UDim2.new]
       39 LOADN                            R14 1
       40 LOADN                            R15 0
       41 LOADN                            R16 1
       42 LOADN                            R17 0
       43 CALL                             R13 4 1
       44 SETTABLEKS                       R13 R12 K6 ["Size"]
       46 SETTABLEKS                       R2 R12 K19 ["OnClick"]
       48 GETTABLEKS                       R13 R5 K22 ["MediaControl"]
       50 SETTABLEKS                       R13 R12 K20 ["Style"]
       52 DUPTABLE                         R13 K25 [{"Image", "Tooltip"}]
       53 GETUPVAL                         R14 0
       54 GETTABLEKS                       R14 R14 K3 ["createElement"]
       56 LOADK                            R15 K26 ["ImageLabel"]
       57 DUPTABLE                         R16 K28 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ImageColor3"]}]
       58 GETIMPORT                        R17 K14 [UDim2.new]
       60 LOADN                            R18 1
       61 LOADN                            R19 0
       62 LOADN                            R20 1
       63 LOADN                            R21 0
       64 CALL                             R17 4 1
       65 SETTABLEKS                       R17 R16 K6 ["Size"]
       67 SETTABLEKS                       R1 R16 K23 ["Image"]
       69 GETTABLEKS                       R17 R3 K29 ["iconColor"]
       71 SETTABLEKS                       R17 R16 K27 ["ImageColor3"]
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K23 ["Image"]
       76 MOVE                             R14 R4
       77 JUMPIFNOT                        R14 ; [+8]
       78 GETUPVAL                         R14 0
       79 GETTABLEKS                       R14 R14 K3 ["createElement"]
       81 GETUPVAL                         R15 3
       82 DUPTABLE                         R16 K31 [{"TextKey"}]
       83 SETTABLEKS                       R4 R16 K30 ["TextKey"]
       85 CALL                             R14 2 1
       86 SETTABLEKS                       R14 R13 K24 ["Tooltip"]
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K16 ["Button"]
       91 CALL                             R6 3 -1
       92 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R7 R0 K0 ["props"]
        2 GETTABLEKS                       R7 R7 K1 ["Stylizer"]
        4 GETTABLEKS                       R7 R7 K2 ["button"]
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K3 ["createElement"]
        9 LOADK                            R9 K4 ["Frame"]
       10 DUPTABLE                         R10 K9 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       11 GETTABLEKS                       R11 R0 K10 ["layoutOrderIterator"]
       13 NAMECALL                         R11 R11 K11 ["getNextOrder"]
       15 CALL                             R11 1 1
       16 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       18 GETIMPORT                        R11 K14 [UDim2.new]
       20 LOADN                            R12 0
       21 GETUPVAL                         R13 1
       22 GETTABLEKS                       R13 R13 K15 ["TIMELINE_HEIGHT"]
       24 LOADN                            R14 0
       25 GETUPVAL                         R15 1
       26 GETTABLEKS                       R15 R15 K15 ["TIMELINE_HEIGHT"]
       28 CALL                             R11 4 1
       29 SETTABLEKS                       R11 R10 K6 ["Size"]
       31 DUPTABLE                         R11 K17 [{"Button"}]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K3 ["createElement"]
       35 GETUPVAL                         R13 2
       36 DUPTABLE                         R14 K21 [{["ZIndex"] = 1, ["Size"], ["Style"], ["OnClick"]}]
       37 GETIMPORT                        R15 K14 [UDim2.new]
       39 LOADN                            R16 1
       40 LOADN                            R17 0
       41 LOADN                            R18 1
       42 LOADN                            R19 0
       43 CALL                             R15 4 1
       44 SETTABLEKS                       R15 R14 K6 ["Size"]
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R15 R7 K22 ["ActiveControl"]
       49 JUMPIF                           R15 ; [+2]
       50 GETTABLEKS                       R15 R7 K23 ["MediaControl"]
       52 SETTABLEKS                       R15 R14 K19 ["Style"]
       54 SETTABLEKS                       R4 R14 K20 ["OnClick"]
       56 DUPTABLE                         R15 K26 [{"Image", "Tooltip"}]
       57 GETUPVAL                         R16 0
       58 GETTABLEKS                       R16 R16 K3 ["createElement"]
       60 LOADK                            R17 K27 ["ImageLabel"]
       61 DUPTABLE                         R18 K29 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ImageColor3"]}]
       62 GETIMPORT                        R19 K14 [UDim2.new]
       64 LOADN                            R20 1
       65 LOADN                            R21 0
       66 LOADN                            R22 1
       67 LOADN                            R23 0
       68 CALL                             R19 4 1
       69 SETTABLEKS                       R19 R18 K6 ["Size"]
       71 JUMPIFNOT                        R1 ; [+2]
       72 MOVE                             R19 R2
       73 JUMPIF                           R19 ; [+1]
       74 MOVE                             R19 R3
       75 SETTABLEKS                       R19 R18 K24 ["Image"]
       77 JUMPIFNOT                        R1 ; [+3]
       78 GETTABLEKS                       R19 R5 K30 ["iconHighlightColor"]
       80 JUMPIF                           R19 ; [+2]
       81 GETTABLEKS                       R19 R5 K31 ["iconColor"]
       83 SETTABLEKS                       R19 R18 K28 ["ImageColor3"]
       85 CALL                             R16 2 1
       86 SETTABLEKS                       R16 R15 K24 ["Image"]
       88 MOVE                             R16 R6
       89 JUMPIFNOT                        R16 ; [+8]
       90 GETUPVAL                         R16 0
       91 GETTABLEKS                       R16 R16 K3 ["createElement"]
       93 GETUPVAL                         R17 3
       94 DUPTABLE                         R18 K33 [{"TextKey"}]
       95 SETTABLEKS                       R6 R18 K32 ["TextKey"]
       97 CALL                             R16 2 1
       98 SETTABLEKS                       R16 R15 K25 ["Tooltip"]
      100 CALL                             R12 3 1
      101 SETTABLEKS                       R12 R11 K16 ["Button"]
      103 CALL                             R8 3 -1
      104 RETURN                           R8 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K1 ["SetPlayState"]
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R1 R1 K2 ["PLAY_STATE"]
       16 GETTABLEKS                       R1 R1 K3 ["Pause"]
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R1 3
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R8 R0 K0 ["props"]
        2 GETTABLEKS                       R8 R8 K1 ["Stylizer"]
        4 GETTABLEKS                       R8 R8 K2 ["button"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K3 ["createElement"]
        9 LOADK                            R10 K4 ["Frame"]
       10 DUPTABLE                         R11 K9 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
       11 GETTABLEKS                       R12 R0 K10 ["layoutOrderIterator"]
       13 NAMECALL                         R12 R12 K11 ["getNextOrder"]
       15 CALL                             R12 1 1
       16 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       18 GETIMPORT                        R12 K14 [UDim2.new]
       20 LOADN                            R13 0
       21 GETUPVAL                         R14 1
       22 GETTABLEKS                       R14 R14 K15 ["TIMELINE_HEIGHT"]
       24 LOADN                            R15 0
       25 GETUPVAL                         R16 1
       26 GETTABLEKS                       R16 R16 K15 ["TIMELINE_HEIGHT"]
       28 CALL                             R12 4 1
       29 SETTABLEKS                       R12 R11 K6 ["Size"]
       31 DUPTABLE                         R12 K17 [{"Button"}]
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R13 R13 K3 ["createElement"]
       35 GETUPVAL                         R14 2
       36 DUPTABLE                         R15 K21 [{["ZIndex"] = 1, ["Size"], ["Style"], ["OnClick"]}]
       37 GETIMPORT                        R16 K14 [UDim2.new]
       39 LOADN                            R17 1
       40 LOADN                            R18 0
       41 LOADN                            R19 1
       42 LOADN                            R20 0
       43 CALL                             R16 4 1
       44 SETTABLEKS                       R16 R15 K6 ["Size"]
       46 JUMPIFNOT                        R1 ; [+3]
       47 GETTABLEKS                       R16 R8 K22 ["ActiveControl"]
       49 JUMPIF                           R16 ; [+2]
       50 GETTABLEKS                       R16 R8 K23 ["MediaControl"]
       52 SETTABLEKS                       R16 R15 K19 ["Style"]
       54 NEWCLOSURE                       R16 P0
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R1
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R16 R15 K20 ["OnClick"]
       61 DUPTABLE                         R16 K26 [{"Image", "Tooltip"}]
       62 GETUPVAL                         R17 0
       63 GETTABLEKS                       R17 R17 K3 ["createElement"]
       65 LOADK                            R18 K27 ["ImageLabel"]
       66 DUPTABLE                         R19 K29 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ImageColor3"]}]
       67 GETIMPORT                        R20 K14 [UDim2.new]
       69 LOADN                            R21 1
       70 LOADN                            R22 0
       71 LOADN                            R23 1
       72 LOADN                            R24 0
       73 CALL                             R20 4 1
       74 SETTABLEKS                       R20 R19 K6 ["Size"]
       76 JUMPIFNOT                        R1 ; [+2]
       77 MOVE                             R20 R2
       78 JUMP                             ; [+1]
       79 MOVE                             R20 R3
       80 SETTABLEKS                       R20 R19 K24 ["Image"]
       82 JUMPIFNOT                        R1 ; [+3]
       83 GETTABLEKS                       R20 R5 K30 ["iconHighlightColor"]
       85 JUMPIF                           R20 ; [+2]
       86 GETTABLEKS                       R20 R5 K31 ["iconColor"]
       88 SETTABLEKS                       R20 R19 K28 ["ImageColor3"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K24 ["Image"]
       93 GETUPVAL                         R17 0
       94 GETTABLEKS                       R17 R17 K3 ["createElement"]
       96 GETUPVAL                         R18 3
       97 DUPTABLE                         R19 K33 [{"TextKey"}]
       98 JUMPIFNOT                        R1 ; [+2]
       99 MOVE                             R20 R6
      100 JUMP                             ; [+1]
      101 MOVE                             R20 R7
      102 SETTABLEKS                       R20 R19 K32 ["TextKey"]
      104 CALL                             R17 2 1
      105 SETTABLEKS                       R17 R16 K25 ["Tooltip"]
      107 CALL                             R13 3 1
      108 SETTABLEKS                       R13 R12 K16 ["Button"]
      110 CALL                             R9 3 -1
      111 RETURN                           R9 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["IsLooping"]
        6 GETTABLEKS                       R5 R1 K3 ["PlayState"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K4 ["PLAY_STATE"]
       11 GETTABLEKS                       R6 R6 K5 ["Reverse"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETTABLEKS                       R6 R1 K3 ["PlayState"]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R7 R7 K4 ["PLAY_STATE"]
       22 GETTABLEKS                       R7 R7 K6 ["Play"]
       24 JUMPIFEQ                         R6 R7 ; [+2]
       26 LOADB                            R5 0 +1
       27 LOADB                            R5 1
       28 GETTABLEKS                       R6 R1 K7 ["LayoutOrder"]
       30 GETTABLEKS                       R7 R1 K8 ["SkipBackward"]
       32 GETTABLEKS                       R8 R1 K9 ["SkipForward"]
       34 GETTABLEKS                       R9 R1 K10 ["ToggleLooping"]
       36 GETTABLEKS                       R10 R1 K11 ["GoToFirstFrame"]
       38 GETTABLEKS                       R11 R1 K12 ["GoToLastFrame"]
       40 GETTABLEKS                       R12 R2 K13 ["playbackTheme"]
       42 GETUPVAL                         R13 1
       43 GETTABLEKS                       R13 R13 K14 ["new"]
       45 CALL                             R13 0 1
       46 SETTABLEKS                       R13 R0 K15 ["layoutOrderIterator"]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R13 R13 K16 ["createElement"]
       51 LOADK                            R14 K17 ["Frame"]
       52 DUPTABLE                         R15 K21 [{["BackgroundTransparency"] = 1, ["LayoutOrder"], ["Size"]}]
       53 SETTABLEKS                       R6 R15 K7 ["LayoutOrder"]
       55 GETIMPORT                        R16 K23 [UDim2.new]
       57 LOADN                            R17 0
       58 GETUPVAL                         R18 0
       59 GETTABLEKS                       R18 R18 K24 ["CONTROLS_WIDTH"]
       61 LOADN                            R19 0
       62 GETUPVAL                         R20 0
       63 GETTABLEKS                       R20 R20 K25 ["TIMELINE_HEIGHT"]
       65 CALL                             R16 4 1
       66 SETTABLEKS                       R16 R15 K20 ["Size"]
       68 DUPTABLE                         R16 K28 [{"Layout", "GoToFirstFrame", "SkipBackward", "Reverse", "Play", "SkipForward", "GoToLastFrame", "Loop"}]
       69 GETUPVAL                         R17 2
       70 GETTABLEKS                       R17 R17 K16 ["createElement"]
       72 LOADK                            R18 K29 ["UIListLayout"]
       73 DUPTABLE                         R19 K34 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       74 GETIMPORT                        R20 K37 [Enum.FillDirection.Horizontal]
       76 SETTABLEKS                       R20 R19 K30 ["FillDirection"]
       78 GETIMPORT                        R20 K39 [Enum.HorizontalAlignment.Left]
       80 SETTABLEKS                       R20 R19 K31 ["HorizontalAlignment"]
       82 GETIMPORT                        R20 K40 [Enum.SortOrder.LayoutOrder]
       84 SETTABLEKS                       R20 R19 K32 ["SortOrder"]
       86 GETIMPORT                        R20 K42 [Enum.VerticalAlignment.Center]
       88 SETTABLEKS                       R20 R19 K33 ["VerticalAlignment"]
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K26 ["Layout"]
       93 GETTABLEKS                       R19 R12 K43 ["goToFirstFrame"]
       95 MOVE                             R20 R10
       96 MOVE                             R21 R12
       97 LOADK                            R22 K11 ["GoToFirstFrame"]
       98 NAMECALL                         R17 R0 K44 ["makeButton"]
      100 CALL                             R17 5 1
      101 SETTABLEKS                       R17 R16 K11 ["GoToFirstFrame"]
      103 GETTABLEKS                       R19 R12 K45 ["skipBackward"]
      105 MOVE                             R20 R7
      106 MOVE                             R21 R12
      107 LOADK                            R22 K8 ["SkipBackward"]
      108 NAMECALL                         R17 R0 K44 ["makeButton"]
      110 CALL                             R17 5 1
      111 SETTABLEKS                       R17 R16 K8 ["SkipBackward"]
      113 MOVE                             R19 R4
      114 GETTABLEKS                       R20 R12 K46 ["pause"]
      116 GETTABLEKS                       R21 R12 K47 ["reverse"]
      118 GETUPVAL                         R22 0
      119 GETTABLEKS                       R22 R22 K4 ["PLAY_STATE"]
      121 GETTABLEKS                       R22 R22 K5 ["Reverse"]
      123 MOVE                             R23 R12
      124 LOADK                            R24 K48 ["Pause"]
      125 LOADK                            R25 K5 ["Reverse"]
      126 NAMECALL                         R17 R0 K49 ["makePlayToggle"]
      128 CALL                             R17 8 1
      129 SETTABLEKS                       R17 R16 K5 ["Reverse"]
      131 MOVE                             R19 R5
      132 GETTABLEKS                       R20 R12 K46 ["pause"]
      134 GETTABLEKS                       R21 R12 K50 ["play"]
      136 GETUPVAL                         R22 0
      137 GETTABLEKS                       R22 R22 K4 ["PLAY_STATE"]
      139 GETTABLEKS                       R22 R22 K6 ["Play"]
      141 MOVE                             R23 R12
      142 LOADK                            R24 K48 ["Pause"]
      143 LOADK                            R25 K6 ["Play"]
      144 NAMECALL                         R17 R0 K49 ["makePlayToggle"]
      146 CALL                             R17 8 1
      147 SETTABLEKS                       R17 R16 K6 ["Play"]
      149 GETTABLEKS                       R19 R12 K51 ["skipForward"]
      151 MOVE                             R20 R8
      152 MOVE                             R21 R12
      153 LOADK                            R22 K9 ["SkipForward"]
      154 NAMECALL                         R17 R0 K44 ["makeButton"]
      156 CALL                             R17 5 1
      157 SETTABLEKS                       R17 R16 K9 ["SkipForward"]
      159 GETTABLEKS                       R19 R12 K52 ["goToLastFrame"]
      161 MOVE                             R20 R11
      162 MOVE                             R21 R12
      163 LOADK                            R22 K12 ["GoToLastFrame"]
      164 NAMECALL                         R17 R0 K44 ["makeButton"]
      166 CALL                             R17 5 1
      167 SETTABLEKS                       R17 R16 K12 ["GoToLastFrame"]
      169 MOVE                             R19 R3
      170 GETTABLEKS                       R20 R12 K53 ["loop"]
      172 GETTABLEKS                       R21 R12 K53 ["loop"]
      174 MOVE                             R22 R9
      175 MOVE                             R23 R12
      176 LOADK                            R24 K10 ["ToggleLooping"]
      177 NAMECALL                         R17 R0 K54 ["makeToggle"]
      179 CALL                             R17 7 1
      180 SETTABLEKS                       R17 R16 K27 ["Loop"]
      182 CALL                             R13 3 -1
      183 RETURN                           R13 -1

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
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R6 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R6 K12 ["Util"]
       31 GETTABLEKS                       R6 R6 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R7 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R7 K12 ["Util"]
       40 GETTABLEKS                       R7 R7 K14 ["LayoutOrderIterator"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R2 K15 ["UI"]
       45 GETTABLEKS                       R7 R7 K16 ["Button"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Src"]
       51 GETTABLEKS                       R9 R9 K17 ["Components"]
       53 GETTABLEKS                       R9 R9 K18 ["Tooltip"]
       55 CALL                             R8 1 1
       56 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       58 LOADK                            R11 K20 ["MediaControls"]
       59 NAMECALL                         R9 R9 K21 ["extend"]
       61 CALL                             R9 2 1
       62 DUPCLOSURE                       R10 K22 [PROTO_0]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R8
       67 SETTABLEKS                       R10 R9 K23 ["makeButton"]
       69 DUPCLOSURE                       R10 K24 [PROTO_1]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R8
       74 SETTABLEKS                       R10 R9 K25 ["makeToggle"]
       76 DUPCLOSURE                       R10 K26 [PROTO_3]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R8
       81 SETTABLEKS                       R10 R9 K27 ["makePlayToggle"]
       83 DUPCLOSURE                       R10 K28 [PROTO_4]
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R1
       87 SETTABLEKS                       R10 R9 K29 ["render"]
       89 MOVE                             R10 R4
       90 DUPTABLE                         R11 K31 [{"Stylizer"}]
       91 GETTABLEKS                       R12 R3 K30 ["Stylizer"]
       93 SETTABLEKS                       R12 R11 K30 ["Stylizer"]
       95 CALL                             R10 1 1
       96 MOVE                             R11 R9
       97 CALL                             R10 1 1
       98 MOVE                             R9 R10
       99 RETURN                           R9 1
