PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnExpandToggled"]
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnExpandToggled"]
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K0 ["props"]
       14 GETTABLEKS                       R2 R3 K2 ["Expanded"]
       16 NOT                              R1 R2
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isDoubleClick"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["onExpandToggled"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["props"]
       12 GETTABLEKS                       R0 R1 K3 ["OnTrackSelected"]
       14 JUMPIFNOT                        R0 ; [+6]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K2 ["props"]
       18 GETTABLEKS                       R0 R1 K3 ["OnTrackSelected"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnContextButtonClick"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K1 ["OnContextButtonClick"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onExpandToggled"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R0 K2 ["onTrackSelected"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R0 K3 ["onContextButtonClick"]
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R5 R1 K4 ["Indent"]
        8 ORK                              R4 R5 K3 [0]
        9 GETTABLEKS                       R5 R1 K5 ["Name"]
       11 GETTABLEKS                       R6 R2 K6 ["trackTheme"]
       13 GETTABLEKS                       R7 R6 K7 ["arrow"]
       15 GETTABLEKS                       R9 R1 K9 ["Expanded"]
       17 ORK                              R8 R9 K8 [False]
       18 GETTABLEKS                       R10 R1 K10 ["Selected"]
       20 ORK                              R9 R10 K8 [False]
       21 GETUPVAL                         R11 0
       22 GETTABLEKS                       R10 R11 K11 ["createElement"]
       24 GETUPVAL                         R11 1
       25 DUPTABLE                         R12 K13 [{"Selected", "Height", "Indent", "LayoutOrder"}]
       26 SETTABLEKS                       R9 R12 K10 ["Selected"]
       28 GETUPVAL                         R14 2
       29 GETTABLEKS                       R13 R14 K14 ["TRACK_HEIGHT"]
       31 SETTABLEKS                       R13 R12 K12 ["Height"]
       33 SETTABLEKS                       R4 R12 K4 ["Indent"]
       35 SETTABLEKS                       R3 R12 K2 ["LayoutOrder"]
       37 DUPTABLE                         R13 K18 [{"Arrow", "NameLabel", "ContextButton"}]
       38 GETUPVAL                         R15 0
       39 GETTABLEKS                       R14 R15 K11 ["createElement"]
       41 LOADK                            R15 K19 ["ImageButton"]
       42 NEWTABLE                         R16 8 0
       44 GETIMPORT                        R17 K22 [UDim2.new]
       46 LOADN                            R18 0
       47 GETUPVAL                         R20 2
       48 GETTABLEKS                       R19 R20 K23 ["ARROW_SIZE"]
       50 LOADN                            R20 0
       51 GETUPVAL                         R22 2
       52 GETTABLEKS                       R21 R22 K23 ["ARROW_SIZE"]
       54 CALL                             R17 4 1
       55 SETTABLEKS                       R17 R16 K24 ["Size"]
       57 GETIMPORT                        R17 K26 [Vector2.new]
       59 LOADN                            R18 0
       60 LOADK                            R19 K27 [0.5]
       61 CALL                             R17 2 1
       62 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
       64 GETIMPORT                        R17 K22 [UDim2.new]
       66 LOADN                            R18 0
       67 GETUPVAL                         R21 2
       68 GETTABLEKS                       R20 R21 K23 ["ARROW_SIZE"]
       70 DIVK                             R19 R20 K29 [2]
       71 LOADK                            R20 K27 [0.5]
       72 LOADN                            R21 0
       73 CALL                             R17 4 1
       74 SETTABLEKS                       R17 R16 K30 ["Position"]
       76 LOADN                            R17 1
       77 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
       79 JUMPIFNOT                        R8 ; [+3]
       80 GETTABLEKS                       R17 R7 K32 ["expanded"]
       82 JUMPIF                           R17 ; [+2]
       83 GETTABLEKS                       R17 R7 K33 ["collapsed"]
       85 SETTABLEKS                       R17 R16 K34 ["Image"]
       87 JUMPIFNOT                        R9 ; [+3]
       88 GETTABLEKS                       R17 R6 K35 ["selectedTextColor"]
       90 JUMPIF                           R17 ; [+2]
       91 GETTABLEKS                       R17 R6 K36 ["textColor"]
       93 SETTABLEKS                       R17 R16 K37 ["ImageColor3"]
       95 GETIMPORT                        R17 K41 [Enum.ScaleType.Fit]
       97 SETTABLEKS                       R17 R16 K39 ["ScaleType"]
       99 GETUPVAL                         R19 0
      100 GETTABLEKS                       R18 R19 K42 ["Event"]
      102 GETTABLEKS                       R17 R18 K43 ["Activated"]
      104 GETTABLEKS                       R18 R0 K44 ["onExpandToggled"]
      106 SETTABLE                         R18 R16 R17
      107 CALL                             R14 2 1
      108 SETTABLEKS                       R14 R13 K15 ["Arrow"]
      110 GETUPVAL                         R15 0
      111 GETTABLEKS                       R14 R15 K11 ["createElement"]
      113 LOADK                            R15 K45 ["TextButton"]
      114 NEWTABLE                         R16 16 0
      116 GETIMPORT                        R17 K22 [UDim2.new]
      118 LOADN                            R18 1
      119 GETUPVAL                         R22 2
      120 GETTABLEKS                       R21 R22 K46 ["TRACKLIST_BUTTON_SIZE"]
      122 MINUS                            R20 R21
      123 GETUPVAL                         R23 2
      124 GETTABLEKS                       R22 R23 K23 ["ARROW_SIZE"]
      126 MULK                             R21 R22 K29 [2]
      127 SUB                              R19 R20 R21
      128 LOADN                            R20 1
      129 LOADN                            R21 0
      130 CALL                             R17 4 1
      131 SETTABLEKS                       R17 R16 K24 ["Size"]
      133 GETIMPORT                        R17 K22 [UDim2.new]
      135 LOADN                            R18 0
      136 GETUPVAL                         R21 2
      137 GETTABLEKS                       R20 R21 K23 ["ARROW_SIZE"]
      139 MULK                             R19 R20 K29 [2]
      140 LOADN                            R20 0
      141 LOADN                            R21 0
      142 CALL                             R17 4 1
      143 SETTABLEKS                       R17 R16 K30 ["Position"]
      145 LOADN                            R17 1
      146 SETTABLEKS                       R17 R16 K31 ["BackgroundTransparency"]
      148 LOADB                            R17 0
      149 SETTABLEKS                       R17 R16 K47 ["AutoButtonColor"]
      151 SETTABLEKS                       R5 R16 K48 ["Text"]
      153 GETTABLEKS                       R17 R2 K49 ["font"]
      155 SETTABLEKS                       R17 R16 K50 ["Font"]
      157 GETTABLEKS                       R17 R6 K51 ["textSize"]
      159 SETTABLEKS                       R17 R16 K52 ["TextSize"]
      161 JUMPIFNOT                        R9 ; [+3]
      162 GETTABLEKS                       R17 R6 K35 ["selectedTextColor"]
      164 JUMPIF                           R17 ; [+2]
      165 GETTABLEKS                       R17 R6 K36 ["textColor"]
      167 SETTABLEKS                       R17 R16 K53 ["TextColor3"]
      169 GETIMPORT                        R17 K56 [Enum.TextXAlignment.Left]
      171 SETTABLEKS                       R17 R16 K54 ["TextXAlignment"]
      173 GETUPVAL                         R19 0
      174 GETTABLEKS                       R18 R19 K42 ["Event"]
      176 GETTABLEKS                       R17 R18 K43 ["Activated"]
      178 GETTABLEKS                       R18 R0 K57 ["onTrackSelected"]
      180 SETTABLE                         R18 R16 R17
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K16 ["NameLabel"]
      184 GETUPVAL                         R15 0
      185 GETTABLEKS                       R14 R15 K11 ["createElement"]
      187 GETUPVAL                         R15 3
      188 DUPTABLE                         R16 K60 [{"AnchorPoint", "Position", "TrackSelected", "OnActivated"}]
      189 GETIMPORT                        R17 K26 [Vector2.new]
      191 LOADN                            R18 1
      192 LOADK                            R19 K27 [0.5]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K28 ["AnchorPoint"]
      196 GETIMPORT                        R17 K22 [UDim2.new]
      198 LOADN                            R18 1
      199 GETUPVAL                         R21 2
      200 GETTABLEKS                       R20 R21 K61 ["TRACKLIST_RIGHT_PADDING"]
      202 MINUS                            R19 R20
      203 LOADK                            R20 K27 [0.5]
      204 LOADN                            R21 0
      205 CALL                             R17 4 1
      206 SETTABLEKS                       R17 R16 K30 ["Position"]
      208 SETTABLEKS                       R9 R16 K58 ["TrackSelected"]
      210 GETTABLEKS                       R17 R0 K62 ["onContextButtonClick"]
      212 SETTABLEKS                       R17 R16 K59 ["OnActivated"]
      214 CALL                             R14 2 1
      215 SETTABLEKS                       R14 R13 K17 ["ContextButton"]
      217 CALL                             R10 3 -1
      218 RETURN                           R10 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["DoubleClickDetector"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETIMPORT                        R6 K5 [require]
       36 GETTABLEKS                       R10 R0 K8 ["Src"]
       38 GETTABLEKS                       R9 R10 K14 ["Components"]
       40 GETTABLEKS                       R8 R9 K15 ["TrackList"]
       42 GETTABLEKS                       R7 R8 K16 ["TrackListEntry"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K5 [require]
       47 GETTABLEKS                       R10 R0 K8 ["Src"]
       49 GETTABLEKS                       R9 R10 K14 ["Components"]
       51 GETTABLEKS                       R8 R9 K17 ["ContextButton"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R11 R0 K8 ["Src"]
       58 GETTABLEKS                       R10 R11 K9 ["Util"]
       60 GETTABLEKS                       R9 R10 K18 ["Constants"]
       62 CALL                             R8 1 1
       63 GETTABLEKS                       R9 R1 K19 ["PureComponent"]
       65 LOADK                            R11 K20 ["ExpandableTrack"]
       66 NAMECALL                         R9 R9 K21 ["extend"]
       68 CALL                             R9 2 1
       69 DUPCLOSURE                       R10 K22 [PROTO_3]
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R10 R9 K23 ["init"]
       73 DUPCLOSURE                       R10 K24 [PROTO_4]
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 SETTABLEKS                       R10 R9 K25 ["render"]
       80 MOVE                             R10 R5
       81 DUPTABLE                         R11 K27 [{"Stylizer"}]
       82 GETTABLEKS                       R12 R4 K26 ["Stylizer"]
       84 SETTABLEKS                       R12 R11 K26 ["Stylizer"]
       86 CALL                             R10 1 1
       87 MOVE                             R11 R9
       88 CALL                             R10 1 1
       89 MOVE                             R9 R10
       90 RETURN                           R9 1
