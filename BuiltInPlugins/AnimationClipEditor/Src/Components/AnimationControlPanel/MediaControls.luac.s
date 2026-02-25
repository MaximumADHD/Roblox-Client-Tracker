PROTO_0:
        0 GETTABLEKS                       R7 R0 K0 ["props"]
        2 GETTABLEKS                       R6 R7 K1 ["Stylizer"]
        4 GETTABLEKS                       R5 R6 K2 ["button"]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K3 ["createElement"]
        9 LOADK                            R7 K4 ["Frame"]
       10 DUPTABLE                         R8 K8 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
       11 GETTABLEKS                       R9 R0 K9 ["layoutOrderIterator"]
       13 NAMECALL                         R9 R9 K10 ["getNextOrder"]
       15 CALL                             R9 1 1
       16 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       18 GETIMPORT                        R9 K13 [UDim2.new]
       20 LOADN                            R10 0
       21 GETUPVAL                         R12 1
       22 GETTABLEKS                       R11 R12 K14 ["TIMELINE_HEIGHT"]
       24 LOADN                            R12 0
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R13 R14 K14 ["TIMELINE_HEIGHT"]
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K6 ["Size"]
       31 LOADN                            R9 1
       32 SETTABLEKS                       R9 R8 K7 ["BackgroundTransparency"]
       34 DUPTABLE                         R9 K16 [{"Button"}]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R10 R11 K3 ["createElement"]
       38 GETUPVAL                         R11 2
       39 DUPTABLE                         R12 K20 [{"ZIndex", "Size", "OnClick", "Style"}]
       40 LOADN                            R13 1
       41 SETTABLEKS                       R13 R12 K17 ["ZIndex"]
       43 GETIMPORT                        R13 K13 [UDim2.new]
       45 LOADN                            R14 1
       46 LOADN                            R15 0
       47 LOADN                            R16 1
       48 LOADN                            R17 0
       49 CALL                             R13 4 1
       50 SETTABLEKS                       R13 R12 K6 ["Size"]
       52 SETTABLEKS                       R2 R12 K18 ["OnClick"]
       54 GETTABLEKS                       R13 R5 K21 ["MediaControl"]
       56 SETTABLEKS                       R13 R12 K19 ["Style"]
       58 DUPTABLE                         R13 K24 [{"Image", "Tooltip"}]
       59 GETUPVAL                         R15 0
       60 GETTABLEKS                       R14 R15 K3 ["createElement"]
       62 LOADK                            R15 K25 ["ImageLabel"]
       63 DUPTABLE                         R16 K27 [{"BackgroundTransparency", "Size", "Image", "ImageColor3"}]
       64 LOADN                            R17 1
       65 SETTABLEKS                       R17 R16 K7 ["BackgroundTransparency"]
       67 GETIMPORT                        R17 K13 [UDim2.new]
       69 LOADN                            R18 1
       70 LOADN                            R19 0
       71 LOADN                            R20 1
       72 LOADN                            R21 0
       73 CALL                             R17 4 1
       74 SETTABLEKS                       R17 R16 K6 ["Size"]
       76 SETTABLEKS                       R1 R16 K22 ["Image"]
       78 GETTABLEKS                       R17 R3 K28 ["iconColor"]
       80 SETTABLEKS                       R17 R16 K26 ["ImageColor3"]
       82 CALL                             R14 2 1
       83 SETTABLEKS                       R14 R13 K22 ["Image"]
       85 MOVE                             R14 R4
       86 JUMPIFNOT                        R14 ; [+8]
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R14 R15 K3 ["createElement"]
       90 GETUPVAL                         R15 3
       91 DUPTABLE                         R16 K30 [{"TextKey"}]
       92 SETTABLEKS                       R4 R16 K29 ["TextKey"]
       94 CALL                             R14 2 1
       95 SETTABLEKS                       R14 R13 K23 ["Tooltip"]
       97 CALL                             R10 3 1
       98 SETTABLEKS                       R10 R9 K15 ["Button"]
      100 CALL                             R6 3 -1
      101 RETURN                           R6 -1

PROTO_1:
        0 GETTABLEKS                       R9 R0 K0 ["props"]
        2 GETTABLEKS                       R8 R9 K1 ["Stylizer"]
        4 GETTABLEKS                       R7 R8 K2 ["button"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K3 ["createElement"]
        9 LOADK                            R9 K4 ["Frame"]
       10 DUPTABLE                         R10 K8 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
       11 GETTABLEKS                       R11 R0 K9 ["layoutOrderIterator"]
       13 NAMECALL                         R11 R11 K10 ["getNextOrder"]
       15 CALL                             R11 1 1
       16 SETTABLEKS                       R11 R10 K5 ["LayoutOrder"]
       18 GETIMPORT                        R11 K13 [UDim2.new]
       20 LOADN                            R12 0
       21 GETUPVAL                         R14 1
       22 GETTABLEKS                       R13 R14 K14 ["TIMELINE_HEIGHT"]
       24 LOADN                            R14 0
       25 GETUPVAL                         R16 1
       26 GETTABLEKS                       R15 R16 K14 ["TIMELINE_HEIGHT"]
       28 CALL                             R11 4 1
       29 SETTABLEKS                       R11 R10 K6 ["Size"]
       31 LOADN                            R11 1
       32 SETTABLEKS                       R11 R10 K7 ["BackgroundTransparency"]
       34 DUPTABLE                         R11 K16 [{"Button"}]
       35 GETUPVAL                         R13 0
       36 GETTABLEKS                       R12 R13 K3 ["createElement"]
       38 GETUPVAL                         R13 2
       39 DUPTABLE                         R14 K20 [{"ZIndex", "Size", "Style", "OnClick"}]
       40 LOADN                            R15 1
       41 SETTABLEKS                       R15 R14 K17 ["ZIndex"]
       43 GETIMPORT                        R15 K13 [UDim2.new]
       45 LOADN                            R16 1
       46 LOADN                            R17 0
       47 LOADN                            R18 1
       48 LOADN                            R19 0
       49 CALL                             R15 4 1
       50 SETTABLEKS                       R15 R14 K6 ["Size"]
       52 JUMPIFNOT                        R1 ; [+3]
       53 GETTABLEKS                       R15 R7 K21 ["ActiveControl"]
       55 JUMPIF                           R15 ; [+2]
       56 GETTABLEKS                       R15 R7 K22 ["MediaControl"]
       58 SETTABLEKS                       R15 R14 K18 ["Style"]
       60 SETTABLEKS                       R4 R14 K19 ["OnClick"]
       62 DUPTABLE                         R15 K25 [{"Image", "Tooltip"}]
       63 GETUPVAL                         R17 0
       64 GETTABLEKS                       R16 R17 K3 ["createElement"]
       66 LOADK                            R17 K26 ["ImageLabel"]
       67 DUPTABLE                         R18 K28 [{"BackgroundTransparency", "Size", "Image", "ImageColor3"}]
       68 LOADN                            R19 1
       69 SETTABLEKS                       R19 R18 K7 ["BackgroundTransparency"]
       71 GETIMPORT                        R19 K13 [UDim2.new]
       73 LOADN                            R20 1
       74 LOADN                            R21 0
       75 LOADN                            R22 1
       76 LOADN                            R23 0
       77 CALL                             R19 4 1
       78 SETTABLEKS                       R19 R18 K6 ["Size"]
       80 JUMPIFNOT                        R1 ; [+2]
       81 MOVE                             R19 R2
       82 JUMPIF                           R19 ; [+1]
       83 MOVE                             R19 R3
       84 SETTABLEKS                       R19 R18 K23 ["Image"]
       86 JUMPIFNOT                        R1 ; [+3]
       87 GETTABLEKS                       R19 R5 K29 ["iconHighlightColor"]
       89 JUMPIF                           R19 ; [+2]
       90 GETTABLEKS                       R19 R5 K30 ["iconColor"]
       92 SETTABLEKS                       R19 R18 K27 ["ImageColor3"]
       94 CALL                             R16 2 1
       95 SETTABLEKS                       R16 R15 K23 ["Image"]
       97 MOVE                             R16 R6
       98 JUMPIFNOT                        R16 ; [+8]
       99 GETUPVAL                         R17 0
      100 GETTABLEKS                       R16 R17 K3 ["createElement"]
      102 GETUPVAL                         R17 3
      103 DUPTABLE                         R18 K32 [{"TextKey"}]
      104 SETTABLEKS                       R6 R18 K31 ["TextKey"]
      106 CALL                             R16 2 1
      107 SETTABLEKS                       R16 R15 K24 ["Tooltip"]
      109 CALL                             R12 3 1
      110 SETTABLEKS                       R12 R11 K15 ["Button"]
      112 CALL                             R8 3 -1
      113 RETURN                           R8 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["SetPlayState"]
        5 JUMPIFNOT                        R0 ; [+15]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["SetPlayState"]
       11 GETUPVAL                         R2 1
       12 JUMPIFNOT                        R2 ; [+6]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K2 ["PLAY_STATE"]
       16 GETTABLEKS                       R1 R2 K3 ["Pause"]
       18 JUMP                             ; [+1]
       19 GETUPVAL                         R1 3
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R10 R0 K0 ["props"]
        2 GETTABLEKS                       R9 R10 K1 ["Stylizer"]
        4 GETTABLEKS                       R8 R9 K2 ["button"]
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K3 ["createElement"]
        9 LOADK                            R10 K4 ["Frame"]
       10 DUPTABLE                         R11 K8 [{"LayoutOrder", "Size", "BackgroundTransparency"}]
       11 GETTABLEKS                       R12 R0 K9 ["layoutOrderIterator"]
       13 NAMECALL                         R12 R12 K10 ["getNextOrder"]
       15 CALL                             R12 1 1
       16 SETTABLEKS                       R12 R11 K5 ["LayoutOrder"]
       18 GETIMPORT                        R12 K13 [UDim2.new]
       20 LOADN                            R13 0
       21 GETUPVAL                         R15 1
       22 GETTABLEKS                       R14 R15 K14 ["TIMELINE_HEIGHT"]
       24 LOADN                            R15 0
       25 GETUPVAL                         R17 1
       26 GETTABLEKS                       R16 R17 K14 ["TIMELINE_HEIGHT"]
       28 CALL                             R12 4 1
       29 SETTABLEKS                       R12 R11 K6 ["Size"]
       31 LOADN                            R12 1
       32 SETTABLEKS                       R12 R11 K7 ["BackgroundTransparency"]
       34 DUPTABLE                         R12 K16 [{"Button"}]
       35 GETUPVAL                         R14 0
       36 GETTABLEKS                       R13 R14 K3 ["createElement"]
       38 GETUPVAL                         R14 2
       39 DUPTABLE                         R15 K20 [{"ZIndex", "Size", "Style", "OnClick"}]
       40 LOADN                            R16 1
       41 SETTABLEKS                       R16 R15 K17 ["ZIndex"]
       43 GETIMPORT                        R16 K13 [UDim2.new]
       45 LOADN                            R17 1
       46 LOADN                            R18 0
       47 LOADN                            R19 1
       48 LOADN                            R20 0
       49 CALL                             R16 4 1
       50 SETTABLEKS                       R16 R15 K6 ["Size"]
       52 JUMPIFNOT                        R1 ; [+3]
       53 GETTABLEKS                       R16 R8 K21 ["ActiveControl"]
       55 JUMPIF                           R16 ; [+2]
       56 GETTABLEKS                       R16 R8 K22 ["MediaControl"]
       58 SETTABLEKS                       R16 R15 K18 ["Style"]
       60 NEWCLOSURE                       R16 P0
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R16 R15 K19 ["OnClick"]
       67 DUPTABLE                         R16 K25 [{"Image", "Tooltip"}]
       68 GETUPVAL                         R18 0
       69 GETTABLEKS                       R17 R18 K3 ["createElement"]
       71 LOADK                            R18 K26 ["ImageLabel"]
       72 DUPTABLE                         R19 K28 [{"BackgroundTransparency", "Size", "Image", "ImageColor3"}]
       73 LOADN                            R20 1
       74 SETTABLEKS                       R20 R19 K7 ["BackgroundTransparency"]
       76 GETIMPORT                        R20 K13 [UDim2.new]
       78 LOADN                            R21 1
       79 LOADN                            R22 0
       80 LOADN                            R23 1
       81 LOADN                            R24 0
       82 CALL                             R20 4 1
       83 SETTABLEKS                       R20 R19 K6 ["Size"]
       85 JUMPIFNOT                        R1 ; [+2]
       86 MOVE                             R20 R2
       87 JUMP                             ; [+1]
       88 MOVE                             R20 R3
       89 SETTABLEKS                       R20 R19 K23 ["Image"]
       91 JUMPIFNOT                        R1 ; [+3]
       92 GETTABLEKS                       R20 R5 K29 ["iconHighlightColor"]
       94 JUMPIF                           R20 ; [+2]
       95 GETTABLEKS                       R20 R5 K30 ["iconColor"]
       97 SETTABLEKS                       R20 R19 K27 ["ImageColor3"]
       99 CALL                             R17 2 1
      100 SETTABLEKS                       R17 R16 K23 ["Image"]
      102 GETUPVAL                         R18 0
      103 GETTABLEKS                       R17 R18 K3 ["createElement"]
      105 GETUPVAL                         R18 3
      106 DUPTABLE                         R19 K32 [{"TextKey"}]
      107 JUMPIFNOT                        R1 ; [+2]
      108 MOVE                             R20 R6
      109 JUMP                             ; [+1]
      110 MOVE                             R20 R7
      111 SETTABLEKS                       R20 R19 K31 ["TextKey"]
      113 CALL                             R17 2 1
      114 SETTABLEKS                       R17 R16 K24 ["Tooltip"]
      116 CALL                             R13 3 1
      117 SETTABLEKS                       R13 R12 K15 ["Button"]
      119 CALL                             R9 3 -1
      120 RETURN                           R9 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["IsLooping"]
        6 GETTABLEKS                       R5 R1 K3 ["PlayState"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K4 ["PLAY_STATE"]
       11 GETTABLEKS                       R6 R7 K5 ["Reverse"]
       13 JUMPIFEQ                         R5 R6 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETTABLEKS                       R6 R1 K3 ["PlayState"]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K4 ["PLAY_STATE"]
       22 GETTABLEKS                       R7 R8 K6 ["Play"]
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
       42 GETUPVAL                         R14 1
       43 GETTABLEKS                       R13 R14 K14 ["new"]
       45 CALL                             R13 0 1
       46 SETTABLEKS                       R13 R0 K15 ["layoutOrderIterator"]
       48 GETUPVAL                         R14 2
       49 GETTABLEKS                       R13 R14 K16 ["createElement"]
       51 LOADK                            R14 K17 ["Frame"]
       52 DUPTABLE                         R15 K20 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       53 LOADN                            R16 1
       54 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
       56 SETTABLEKS                       R6 R15 K7 ["LayoutOrder"]
       58 GETIMPORT                        R16 K22 [UDim2.new]
       60 LOADN                            R17 0
       61 GETUPVAL                         R19 0
       62 GETTABLEKS                       R18 R19 K23 ["CONTROLS_WIDTH"]
       64 LOADN                            R19 0
       65 GETUPVAL                         R21 0
       66 GETTABLEKS                       R20 R21 K24 ["TIMELINE_HEIGHT"]
       68 CALL                             R16 4 1
       69 SETTABLEKS                       R16 R15 K19 ["Size"]
       71 DUPTABLE                         R16 K27 [{"Layout", "GoToFirstFrame", "SkipBackward", "Reverse", "Play", "SkipForward", "GoToLastFrame", "Loop"}]
       72 GETUPVAL                         R18 2
       73 GETTABLEKS                       R17 R18 K16 ["createElement"]
       75 LOADK                            R18 K28 ["UIListLayout"]
       76 DUPTABLE                         R19 K33 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       77 GETIMPORT                        R20 K36 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R20 R19 K29 ["FillDirection"]
       81 GETIMPORT                        R20 K38 [Enum.HorizontalAlignment.Left]
       83 SETTABLEKS                       R20 R19 K30 ["HorizontalAlignment"]
       85 GETIMPORT                        R20 K39 [Enum.SortOrder.LayoutOrder]
       87 SETTABLEKS                       R20 R19 K31 ["SortOrder"]
       89 GETIMPORT                        R20 K41 [Enum.VerticalAlignment.Center]
       91 SETTABLEKS                       R20 R19 K32 ["VerticalAlignment"]
       93 CALL                             R17 2 1
       94 SETTABLEKS                       R17 R16 K25 ["Layout"]
       96 GETTABLEKS                       R19 R12 K42 ["goToFirstFrame"]
       98 MOVE                             R20 R10
       99 MOVE                             R21 R12
      100 LOADK                            R22 K11 ["GoToFirstFrame"]
      101 NAMECALL                         R17 R0 K43 ["makeButton"]
      103 CALL                             R17 5 1
      104 SETTABLEKS                       R17 R16 K11 ["GoToFirstFrame"]
      106 GETTABLEKS                       R19 R12 K44 ["skipBackward"]
      108 MOVE                             R20 R7
      109 MOVE                             R21 R12
      110 LOADK                            R22 K8 ["SkipBackward"]
      111 NAMECALL                         R17 R0 K43 ["makeButton"]
      113 CALL                             R17 5 1
      114 SETTABLEKS                       R17 R16 K8 ["SkipBackward"]
      116 MOVE                             R19 R4
      117 GETTABLEKS                       R20 R12 K45 ["pause"]
      119 GETTABLEKS                       R21 R12 K46 ["reverse"]
      121 GETUPVAL                         R24 0
      122 GETTABLEKS                       R23 R24 K4 ["PLAY_STATE"]
      124 GETTABLEKS                       R22 R23 K5 ["Reverse"]
      126 MOVE                             R23 R12
      127 LOADK                            R24 K47 ["Pause"]
      128 LOADK                            R25 K5 ["Reverse"]
      129 NAMECALL                         R17 R0 K48 ["makePlayToggle"]
      131 CALL                             R17 8 1
      132 SETTABLEKS                       R17 R16 K5 ["Reverse"]
      134 MOVE                             R19 R5
      135 GETTABLEKS                       R20 R12 K45 ["pause"]
      137 GETTABLEKS                       R21 R12 K49 ["play"]
      139 GETUPVAL                         R24 0
      140 GETTABLEKS                       R23 R24 K4 ["PLAY_STATE"]
      142 GETTABLEKS                       R22 R23 K6 ["Play"]
      144 MOVE                             R23 R12
      145 LOADK                            R24 K47 ["Pause"]
      146 LOADK                            R25 K6 ["Play"]
      147 NAMECALL                         R17 R0 K48 ["makePlayToggle"]
      149 CALL                             R17 8 1
      150 SETTABLEKS                       R17 R16 K6 ["Play"]
      152 GETTABLEKS                       R19 R12 K50 ["skipForward"]
      154 MOVE                             R20 R8
      155 MOVE                             R21 R12
      156 LOADK                            R22 K9 ["SkipForward"]
      157 NAMECALL                         R17 R0 K43 ["makeButton"]
      159 CALL                             R17 5 1
      160 SETTABLEKS                       R17 R16 K9 ["SkipForward"]
      162 GETTABLEKS                       R19 R12 K51 ["goToLastFrame"]
      164 MOVE                             R20 R11
      165 MOVE                             R21 R12
      166 LOADK                            R22 K12 ["GoToLastFrame"]
      167 NAMECALL                         R17 R0 K43 ["makeButton"]
      169 CALL                             R17 5 1
      170 SETTABLEKS                       R17 R16 K12 ["GoToLastFrame"]
      172 MOVE                             R19 R3
      173 GETTABLEKS                       R20 R12 K52 ["loop"]
      175 GETTABLEKS                       R21 R12 K52 ["loop"]
      177 MOVE                             R22 R9
      178 MOVE                             R23 R12
      179 LOADK                            R24 K10 ["ToggleLooping"]
      180 NAMECALL                         R17 R0 K53 ["makeToggle"]
      182 CALL                             R17 7 1
      183 SETTABLEKS                       R17 R16 K26 ["Loop"]
      185 CALL                             R13 3 -1
      186 RETURN                           R13 -1

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
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K11 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["Constants"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R9 R0 K11 ["Src"]
       38 GETTABLEKS                       R8 R9 K12 ["Util"]
       40 GETTABLEKS                       R7 R8 K14 ["LayoutOrderIterator"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R8 R2 K15 ["UI"]
       45 GETTABLEKS                       R7 R8 K16 ["Button"]
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R11 R0 K11 ["Src"]
       51 GETTABLEKS                       R10 R11 K17 ["Components"]
       53 GETTABLEKS                       R9 R10 K18 ["Tooltip"]
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
