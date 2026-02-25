PROTO_0:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["OnTrackAdded"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["props"]
        9 GETTABLEKS                       R3 R4 K1 ["OnTrackAdded"]
       11 MOVE                             R4 R0
       12 MOVE                             R5 R1
       13 MOVE                             R6 R2
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onTrackAdded"]
        4 RETURN                           R0 0

PROTO_2:
        0 LENGTH                           R3 R0
        1 JUMPIFNOTLT                      R1 R3 ; [+34]
        3 ORK                              R2 R2 K0 ["..."]
        4 LENGTH                           R3 R2
        5 SUB                              R4 R1 R3
        6 DIVK                             R6 R4 K1 [2]
        7 FASTCALL1                        MATH_CEIL R6 ; [+2]
        8 GETIMPORT                        R5 K4 [math.ceil]
       10 CALL                             R5 1 1
       11 DIVK                             R7 R4 K1 [2]
       12 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       13 GETIMPORT                        R6 K6 [math.floor]
       15 CALL                             R6 1 1
       16 LOADN                            R13 0
       17 FASTCALL3                        STRING_SUB R0 R13 R5
       19 MOVE                             R12 R0
       20 MOVE                             R14 R5
       21 GETIMPORT                        R11 K9 [string.sub]
       23 CALL                             R11 3 1
       24 MOVE                             R8 R11
       25 MOVE                             R9 R2
       26 LENGTH                           R13 R0
       27 SUB                              R12 R13 R6
       28 FASTCALL2                        STRING_SUB R0 R12 ; [+4]
       30 MOVE                             R11 R0
       31 GETIMPORT                        R10 K9 [string.sub]
       33 CALL                             R10 2 1
       34 CONCAT                           R7 R8 R10
       35 RETURN                           R7 1
       36 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Name"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R5 R1 K4 ["UnusedTracks"]
       10 GETTABLEKS                       R6 R1 K5 ["UnusedFacs"]
       12 GETTABLEKS                       R7 R2 K6 ["trackTheme"]
       14 LOADK                            R8 K7 [""]
       15 GETUPVAL                         R10 0
       16 GETTABLEKS                       R9 R10 K8 ["getTextWidth"]
       18 MOVE                             R10 R3
       19 GETTABLEKS                       R11 R7 K9 ["textSize"]
       21 GETTABLEKS                       R12 R2 K10 ["font"]
       23 CALL                             R9 3 1
       24 GETUPVAL                         R10 1
       25 CALL                             R10 0 1
       26 JUMPIFNOT                        R10 ; [+16]
       27 GETGLOBAL                        R10 K11 ["truncateAtMiddle"]
       29 MOVE                             R11 R3
       30 LOADN                            R12 16
       31 CALL                             R10 2 1
       32 MOVE                             R8 R10
       33 GETUPVAL                         R11 0
       34 GETTABLEKS                       R10 R11 K8 ["getTextWidth"]
       36 MOVE                             R11 R8
       37 GETTABLEKS                       R12 R7 K9 ["textSize"]
       39 GETTABLEKS                       R13 R2 K10 ["font"]
       41 CALL                             R10 3 1
       42 MOVE                             R9 R10
       43 JUMPIFNOT                        R5 ; [+5]
       44 GETUPVAL                         R11 2
       45 MOVE                             R12 R5
       46 CALL                             R11 1 1
       47 NOT                              R10 R11
       48 JUMPIF                           R10 ; [+6]
       49 MOVE                             R10 R6
       50 JUMPIFNOT                        R10 ; [+4]
       51 GETUPVAL                         R11 2
       52 MOVE                             R12 R6
       53 CALL                             R11 1 1
       54 NOT                              R10 R11
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R11 R12 K12 ["createElement"]
       58 GETUPVAL                         R12 4
       59 DUPTABLE                         R13 K16 [{"Height", "Indent", "LayoutOrder", "Primary"}]
       60 GETUPVAL                         R15 5
       61 GETTABLEKS                       R14 R15 K17 ["SUMMARY_TRACK_HEIGHT"]
       63 SETTABLEKS                       R14 R13 K13 ["Height"]
       65 LOADN                            R14 1
       66 SETTABLEKS                       R14 R13 K14 ["Indent"]
       68 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
       70 LOADB                            R14 1
       71 SETTABLEKS                       R14 R13 K15 ["Primary"]
       73 DUPTABLE                         R14 K21 [{"NameLabel", "LeftButtonsListContainer", "AddTrackButton"}]
       74 GETUPVAL                         R16 3
       75 GETTABLEKS                       R15 R16 K12 ["createElement"]
       77 LOADK                            R16 K22 ["TextLabel"]
       78 DUPTABLE                         R17 K31 [{"Size", "Position", "BackgroundTransparency", "Text", "Font", "TextSize", "TextColor3", "TextXAlignment"}]
       79 GETIMPORT                        R18 K34 [UDim2.new]
       81 LOADN                            R19 1
       82 LOADN                            R20 0
       83 LOADN                            R21 1
       84 LOADN                            R22 0
       85 CALL                             R18 4 1
       86 SETTABLEKS                       R18 R17 K23 ["Size"]
       88 GETIMPORT                        R18 K34 [UDim2.new]
       90 LOADN                            R19 0
       91 LOADN                            R20 0
       92 LOADN                            R21 0
       93 LOADN                            R22 0
       94 CALL                             R18 4 1
       95 SETTABLEKS                       R18 R17 K24 ["Position"]
       97 LOADN                            R18 1
       98 SETTABLEKS                       R18 R17 K25 ["BackgroundTransparency"]
      100 GETUPVAL                         R19 1
      101 CALL                             R19 0 1
      102 JUMPIFNOT                        R19 ; [+2]
      103 MOVE                             R18 R8
      104 JUMPIF                           R18 ; [+1]
      105 MOVE                             R18 R3
      106 SETTABLEKS                       R18 R17 K26 ["Text"]
      108 GETTABLEKS                       R18 R2 K10 ["font"]
      110 SETTABLEKS                       R18 R17 K27 ["Font"]
      112 GETTABLEKS                       R18 R7 K9 ["textSize"]
      114 SETTABLEKS                       R18 R17 K28 ["TextSize"]
      116 GETTABLEKS                       R18 R7 K35 ["textColor"]
      118 SETTABLEKS                       R18 R17 K29 ["TextColor3"]
      120 GETIMPORT                        R18 K38 [Enum.TextXAlignment.Left]
      122 SETTABLEKS                       R18 R17 K30 ["TextXAlignment"]
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K18 ["NameLabel"]
      127 GETUPVAL                         R16 3
      128 GETTABLEKS                       R15 R16 K12 ["createElement"]
      130 LOADK                            R16 K39 ["Frame"]
      131 DUPTABLE                         R17 K42 [{"AnchorPoint", "BorderSizePixel", "BackgroundTransparency", "Position"}]
      132 GETIMPORT                        R18 K44 [Vector2.new]
      134 LOADN                            R19 0
      135 LOADK                            R20 K45 [0.5]
      136 CALL                             R18 2 1
      137 SETTABLEKS                       R18 R17 K40 ["AnchorPoint"]
      139 LOADN                            R18 0
      140 SETTABLEKS                       R18 R17 K41 ["BorderSizePixel"]
      142 LOADN                            R18 0
      143 SETTABLEKS                       R18 R17 K25 ["BackgroundTransparency"]
      145 GETIMPORT                        R18 K34 [UDim2.new]
      147 LOADN                            R19 0
      148 ADDK                             R20 R9 K46 [12]
      149 LOADK                            R21 K45 [0.5]
      150 LOADN                            R22 0
      151 CALL                             R18 4 1
      152 SETTABLEKS                       R18 R17 K24 ["Position"]
      154 DUPTABLE                         R18 K51 [{"LeftButtonsList", "IKController", "FaceControlsEditorController", "RecordingModeButton"}]
      155 GETUPVAL                         R20 3
      156 GETTABLEKS                       R19 R20 K12 ["createElement"]
      158 LOADK                            R20 K52 ["UIListLayout"]
      159 DUPTABLE                         R21 K57 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      160 GETIMPORT                        R22 K59 [Enum.FillDirection.Horizontal]
      162 SETTABLEKS                       R22 R21 K53 ["FillDirection"]
      164 GETIMPORT                        R22 K61 [Enum.VerticalAlignment.Center]
      166 SETTABLEKS                       R22 R21 K54 ["VerticalAlignment"]
      168 GETIMPORT                        R22 K62 [Enum.SortOrder.LayoutOrder]
      170 SETTABLEKS                       R22 R21 K55 ["SortOrder"]
      172 GETIMPORT                        R22 K64 [UDim.new]
      174 LOADN                            R23 0
      175 LOADN                            R24 12
      176 CALL                             R22 2 1
      177 SETTABLEKS                       R22 R21 K56 ["Padding"]
      179 CALL                             R19 2 1
      180 SETTABLEKS                       R19 R18 K47 ["LeftButtonsList"]
      182 GETUPVAL                         R20 3
      183 GETTABLEKS                       R19 R20 K12 ["createElement"]
      185 GETUPVAL                         R20 6
      186 NEWTABLE                         R21 0 0
      188 CALL                             R19 2 1
      189 SETTABLEKS                       R19 R18 K48 ["IKController"]
      191 GETUPVAL                         R20 3
      192 GETTABLEKS                       R19 R20 K12 ["createElement"]
      194 GETUPVAL                         R20 7
      195 NEWTABLE                         R21 0 0
      197 CALL                             R19 2 1
      198 SETTABLEKS                       R19 R18 K49 ["FaceControlsEditorController"]
      200 GETUPVAL                         R19 1
      201 CALL                             R19 0 1
      202 JUMPIFNOT                        R19 ; [+7]
      203 GETUPVAL                         R20 3
      204 GETTABLEKS                       R19 R20 K12 ["createElement"]
      206 GETUPVAL                         R20 8
      207 NEWTABLE                         R21 0 0
      209 CALL                             R19 2 1
      210 SETTABLEKS                       R19 R18 K50 ["RecordingModeButton"]
      212 CALL                             R15 3 1
      213 SETTABLEKS                       R15 R14 K19 ["LeftButtonsListContainer"]
      215 JUMPIFNOT                        R10 ; [+40]
      216 GETUPVAL                         R16 3
      217 GETTABLEKS                       R15 R16 K12 ["createElement"]
      219 GETUPVAL                         R16 9
      220 DUPTABLE                         R17 K68 [{"Size", "Position", "Tracks", "Facs", "OnTrackSelected"}]
      221 GETIMPORT                        R18 K34 [UDim2.new]
      223 LOADN                            R19 0
      224 GETUPVAL                         R21 5
      225 GETTABLEKS                       R20 R21 K69 ["TRACKLIST_BUTTON_SIZE"]
      227 LOADN                            R21 0
      228 GETUPVAL                         R23 5
      229 GETTABLEKS                       R22 R23 K69 ["TRACKLIST_BUTTON_SIZE"]
      231 CALL                             R18 4 1
      232 SETTABLEKS                       R18 R17 K23 ["Size"]
      234 GETIMPORT                        R18 K34 [UDim2.new]
      236 LOADN                            R19 1
      237 GETUPVAL                         R22 5
      238 GETTABLEKS                       R21 R22 K70 ["TRACKLIST_RIGHT_PADDING"]
      240 MINUS                            R20 R21
      241 LOADK                            R21 K45 [0.5]
      242 LOADN                            R22 0
      243 CALL                             R18 4 1
      244 SETTABLEKS                       R18 R17 K24 ["Position"]
      246 SETTABLEKS                       R5 R17 K65 ["Tracks"]
      248 SETTABLEKS                       R6 R17 K66 ["Facs"]
      250 GETTABLEKS                       R18 R0 K71 ["onTrackAdded"]
      252 SETTABLEKS                       R18 R17 K67 ["OnTrackSelected"]
      254 CALL                             R15 2 1
      255 JUMPIF                           R15 ; [+1]
      256 LOADNIL                          R15
      257 SETTABLEKS                       R15 R14 K20 ["AddTrackButton"]
      259 CALL                             R11 3 -1
      260 RETURN                           R11 -1

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
       27 GETTABLEKS                       R9 R0 K11 ["Src"]
       29 GETTABLEKS                       R8 R9 K12 ["Components"]
       31 GETTABLEKS                       R7 R8 K13 ["IK"]
       33 GETTABLEKS                       R6 R7 K14 ["IKController"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R10 R0 K11 ["Src"]
       40 GETTABLEKS                       R9 R10 K12 ["Components"]
       42 GETTABLEKS                       R8 R9 K15 ["FaceControlsEditor"]
       44 GETTABLEKS                       R7 R8 K16 ["FaceControlsEditorController"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R11 R0 K11 ["Src"]
       51 GETTABLEKS                       R10 R11 K12 ["Components"]
       53 GETTABLEKS                       R9 R10 K17 ["FacialAnimationRecorder"]
       55 GETTABLEKS                       R8 R9 K18 ["RecordingModeButton"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R12 R0 K11 ["Src"]
       62 GETTABLEKS                       R11 R12 K12 ["Components"]
       64 GETTABLEKS                       R10 R11 K19 ["TrackList"]
       66 GETTABLEKS                       R9 R10 K20 ["TrackListEntry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R13 R0 K11 ["Src"]
       73 GETTABLEKS                       R12 R13 K12 ["Components"]
       75 GETTABLEKS                       R11 R12 K19 ["TrackList"]
       77 GETTABLEKS                       R10 R11 K21 ["AddTrackButton"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R13 R0 K11 ["Src"]
       84 GETTABLEKS                       R12 R13 K22 ["Util"]
       86 GETTABLEKS                       R11 R12 K23 ["Constants"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R14 R0 K11 ["Src"]
       93 GETTABLEKS                       R13 R14 K22 ["Util"]
       95 GETTABLEKS                       R12 R13 K24 ["isEmpty"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R15 R0 K11 ["Src"]
      102 GETTABLEKS                       R14 R15 K22 ["Util"]
      104 GETTABLEKS                       R13 R14 K25 ["StringUtils"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R15 R0 K26 ["LuaFlags"]
      111 GETTABLEKS                       R14 R15 K27 ["GetFFlagFacialAnimationRecordingInStudio"]
      113 CALL                             R13 1 1
      114 GETTABLEKS                       R14 R1 K28 ["PureComponent"]
      116 LOADK                            R16 K29 ["SummaryTrack"]
      117 NAMECALL                         R14 R14 K30 ["extend"]
      119 CALL                             R14 2 1
      120 DUPCLOSURE                       R15 K31 [PROTO_1]
      121 SETTABLEKS                       R15 R14 K32 ["init"]
      123 DUPCLOSURE                       R15 K33 [PROTO_2]
      124 SETGLOBAL                        R15 K34 ["truncateAtMiddle"]
      126 DUPCLOSURE                       R15 K35 [PROTO_3]
      127 CAPTURE                          VAL R12
      128 CAPTURE                          VAL R13
      129 CAPTURE                          VAL R11
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R9
      137 SETTABLEKS                       R15 R14 K36 ["render"]
      139 MOVE                             R15 R4
      140 DUPTABLE                         R16 K38 [{"Stylizer"}]
      141 GETTABLEKS                       R17 R3 K37 ["Stylizer"]
      143 SETTABLEKS                       R17 R16 K37 ["Stylizer"]
      145 CALL                             R15 1 1
      146 MOVE                             R16 R14
      147 CALL                             R15 1 1
      148 MOVE                             R14 R15
      149 RETURN                           R14 1
