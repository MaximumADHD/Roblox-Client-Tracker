PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnTrackAdded"]
        5 JUMPIFNOT                        R3 ; [+9]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["props"]
        9 GETTABLEKS                       R3 R3 K1 ["OnTrackAdded"]
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
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K8 ["getTextWidth"]
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
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K8 ["getTextWidth"]
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
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K12 ["createElement"]
       58 GETUPVAL                         R12 4
       59 DUPTABLE                         R13 K18 [{["Height"], ["Indent"] = 1, ["LayoutOrder"], ["Primary"] = True}]
       60 GETUPVAL                         R14 5
       61 GETTABLEKS                       R14 R14 K19 ["SUMMARY_TRACK_HEIGHT"]
       63 SETTABLEKS                       R14 R13 K13 ["Height"]
       65 SETTABLEKS                       R4 R13 K3 ["LayoutOrder"]
       67 DUPTABLE                         R14 K23 [{"NameLabel", "LeftButtonsListContainer", "AddTrackButton"}]
       68 GETUPVAL                         R15 3
       69 GETTABLEKS                       R15 R15 K12 ["createElement"]
       71 LOADK                            R16 K24 ["TextLabel"]
       72 DUPTABLE                         R17 K33 [{["Size"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["Font"], ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
       73 GETIMPORT                        R18 K36 [UDim2.new]
       75 LOADN                            R19 1
       76 LOADN                            R20 0
       77 LOADN                            R21 1
       78 LOADN                            R22 0
       79 CALL                             R18 4 1
       80 SETTABLEKS                       R18 R17 K25 ["Size"]
       82 GETIMPORT                        R18 K36 [UDim2.new]
       84 LOADN                            R19 0
       85 LOADN                            R20 0
       86 LOADN                            R21 0
       87 LOADN                            R22 0
       88 CALL                             R18 4 1
       89 SETTABLEKS                       R18 R17 K26 ["Position"]
       91 GETUPVAL                         R19 1
       92 CALL                             R19 0 1
       93 JUMPIFNOT                        R19 ; [+2]
       94 MOVE                             R18 R8
       95 JUMPIF                           R18 ; [+1]
       96 MOVE                             R18 R3
       97 SETTABLEKS                       R18 R17 K28 ["Text"]
       99 GETTABLEKS                       R18 R2 K10 ["font"]
      101 SETTABLEKS                       R18 R17 K29 ["Font"]
      103 GETTABLEKS                       R18 R7 K9 ["textSize"]
      105 SETTABLEKS                       R18 R17 K30 ["TextSize"]
      107 GETTABLEKS                       R18 R7 K37 ["textColor"]
      109 SETTABLEKS                       R18 R17 K31 ["TextColor3"]
      111 GETIMPORT                        R18 K40 [Enum.TextXAlignment.Left]
      113 SETTABLEKS                       R18 R17 K32 ["TextXAlignment"]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K20 ["NameLabel"]
      118 GETUPVAL                         R15 3
      119 GETTABLEKS                       R15 R15 K12 ["createElement"]
      121 LOADK                            R16 K41 ["Frame"]
      122 DUPTABLE                         R17 K45 [{["AnchorPoint"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 0, ["Position"]}]
      123 GETIMPORT                        R18 K47 [Vector2.new]
      125 LOADN                            R19 0
      126 LOADK                            R20 K48 [0.5]
      127 CALL                             R18 2 1
      128 SETTABLEKS                       R18 R17 K42 ["AnchorPoint"]
      130 GETIMPORT                        R18 K36 [UDim2.new]
      132 LOADN                            R19 0
      133 ADDK                             R20 R9 K49 [12]
      134 LOADK                            R21 K48 [0.5]
      135 LOADN                            R22 0
      136 CALL                             R18 4 1
      137 SETTABLEKS                       R18 R17 K26 ["Position"]
      139 DUPTABLE                         R18 K54 [{"LeftButtonsList", "IKController", "FaceControlsEditorController", "RecordingModeButton"}]
      140 GETUPVAL                         R19 3
      141 GETTABLEKS                       R19 R19 K12 ["createElement"]
      143 LOADK                            R20 K55 ["UIListLayout"]
      144 DUPTABLE                         R21 K60 [{"FillDirection", "VerticalAlignment", "SortOrder", "Padding"}]
      145 GETIMPORT                        R22 K62 [Enum.FillDirection.Horizontal]
      147 SETTABLEKS                       R22 R21 K56 ["FillDirection"]
      149 GETIMPORT                        R22 K64 [Enum.VerticalAlignment.Center]
      151 SETTABLEKS                       R22 R21 K57 ["VerticalAlignment"]
      153 GETIMPORT                        R22 K65 [Enum.SortOrder.LayoutOrder]
      155 SETTABLEKS                       R22 R21 K58 ["SortOrder"]
      157 GETIMPORT                        R22 K67 [UDim.new]
      159 LOADN                            R23 0
      160 LOADN                            R24 12
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K59 ["Padding"]
      164 CALL                             R19 2 1
      165 SETTABLEKS                       R19 R18 K50 ["LeftButtonsList"]
      167 GETUPVAL                         R19 3
      168 GETTABLEKS                       R19 R19 K12 ["createElement"]
      170 GETUPVAL                         R20 6
      171 NEWTABLE                         R21 0 0
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K51 ["IKController"]
      176 GETUPVAL                         R19 3
      177 GETTABLEKS                       R19 R19 K12 ["createElement"]
      179 GETUPVAL                         R20 7
      180 NEWTABLE                         R21 0 0
      182 CALL                             R19 2 1
      183 SETTABLEKS                       R19 R18 K52 ["FaceControlsEditorController"]
      185 GETUPVAL                         R19 1
      186 CALL                             R19 0 1
      187 JUMPIFNOT                        R19 ; [+7]
      188 GETUPVAL                         R19 3
      189 GETTABLEKS                       R19 R19 K12 ["createElement"]
      191 GETUPVAL                         R20 8
      192 NEWTABLE                         R21 0 0
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K53 ["RecordingModeButton"]
      197 CALL                             R15 3 1
      198 SETTABLEKS                       R15 R14 K21 ["LeftButtonsListContainer"]
      200 JUMPIFNOT                        R10 ; [+40]
      201 GETUPVAL                         R15 3
      202 GETTABLEKS                       R15 R15 K12 ["createElement"]
      204 GETUPVAL                         R16 9
      205 DUPTABLE                         R17 K71 [{"Size", "Position", "Tracks", "Facs", "OnTrackSelected"}]
      206 GETIMPORT                        R18 K36 [UDim2.new]
      208 LOADN                            R19 0
      209 GETUPVAL                         R20 5
      210 GETTABLEKS                       R20 R20 K72 ["TRACKLIST_BUTTON_SIZE"]
      212 LOADN                            R21 0
      213 GETUPVAL                         R22 5
      214 GETTABLEKS                       R22 R22 K72 ["TRACKLIST_BUTTON_SIZE"]
      216 CALL                             R18 4 1
      217 SETTABLEKS                       R18 R17 K25 ["Size"]
      219 GETIMPORT                        R18 K36 [UDim2.new]
      221 LOADN                            R19 1
      222 GETUPVAL                         R21 5
      223 GETTABLEKS                       R21 R21 K73 ["TRACKLIST_RIGHT_PADDING"]
      225 MINUS                            R20 R21
      226 LOADK                            R21 K48 [0.5]
      227 LOADN                            R22 0
      228 CALL                             R18 4 1
      229 SETTABLEKS                       R18 R17 K26 ["Position"]
      231 SETTABLEKS                       R5 R17 K68 ["Tracks"]
      233 SETTABLEKS                       R6 R17 K69 ["Facs"]
      235 GETTABLEKS                       R18 R0 K74 ["onTrackAdded"]
      237 SETTABLEKS                       R18 R17 K70 ["OnTrackSelected"]
      239 CALL                             R15 2 1
      240 JUMPIF                           R15 ; [+1]
      241 LOADNIL                          R15
      242 SETTABLEKS                       R15 R14 K22 ["AddTrackButton"]
      244 CALL                             R11 3 -1
      245 RETURN                           R11 -1

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
       29 GETTABLEKS                       R6 R6 K12 ["Components"]
       31 GETTABLEKS                       R6 R6 K13 ["IK"]
       33 GETTABLEKS                       R6 R6 K14 ["IKController"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K5 [require]
       38 GETTABLEKS                       R7 R0 K11 ["Src"]
       40 GETTABLEKS                       R7 R7 K12 ["Components"]
       42 GETTABLEKS                       R7 R7 K15 ["FaceControlsEditor"]
       44 GETTABLEKS                       R7 R7 K16 ["FaceControlsEditorController"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K11 ["Src"]
       51 GETTABLEKS                       R8 R8 K12 ["Components"]
       53 GETTABLEKS                       R8 R8 K17 ["FacialAnimationRecorder"]
       55 GETTABLEKS                       R8 R8 K18 ["RecordingModeButton"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K11 ["Src"]
       62 GETTABLEKS                       R9 R9 K12 ["Components"]
       64 GETTABLEKS                       R9 R9 K19 ["TrackList"]
       66 GETTABLEKS                       R9 R9 K20 ["TrackListEntry"]
       68 CALL                             R8 1 1
       69 GETIMPORT                        R9 K5 [require]
       71 GETTABLEKS                       R10 R0 K11 ["Src"]
       73 GETTABLEKS                       R10 R10 K12 ["Components"]
       75 GETTABLEKS                       R10 R10 K19 ["TrackList"]
       77 GETTABLEKS                       R10 R10 K21 ["AddTrackButton"]
       79 CALL                             R9 1 1
       80 GETIMPORT                        R10 K5 [require]
       82 GETTABLEKS                       R11 R0 K11 ["Src"]
       84 GETTABLEKS                       R11 R11 K22 ["Util"]
       86 GETTABLEKS                       R11 R11 K23 ["Constants"]
       88 CALL                             R10 1 1
       89 GETIMPORT                        R11 K5 [require]
       91 GETTABLEKS                       R12 R0 K11 ["Src"]
       93 GETTABLEKS                       R12 R12 K22 ["Util"]
       95 GETTABLEKS                       R12 R12 K24 ["isEmpty"]
       97 CALL                             R11 1 1
       98 GETIMPORT                        R12 K5 [require]
      100 GETTABLEKS                       R13 R0 K11 ["Src"]
      102 GETTABLEKS                       R13 R13 K22 ["Util"]
      104 GETTABLEKS                       R13 R13 K25 ["StringUtils"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K26 ["LuaFlags"]
      111 GETTABLEKS                       R14 R14 K27 ["GetFFlagFacialAnimationRecordingInStudio"]
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
