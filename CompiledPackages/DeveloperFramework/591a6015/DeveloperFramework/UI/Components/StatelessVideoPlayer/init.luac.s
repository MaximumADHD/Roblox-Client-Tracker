PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["videoRef"]
        3 NAMECALL                         R2 R2 K1 ["getValue"]
        5 CALL                             R2 1 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["unmounting"]
        9 JUMPIFNOT                        R2 ; [+1]
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 0
       12 MOVE                             R4 R2
       13 JUMPIFNOT                        R4 ; [+2]
       14 GETTABLEKS                       R4 R2 K3 ["IsLoaded"]
       16 JUMPIFNOTEQKS                    R1 K4 ["Video"] ; [+7]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K5 ["props"]
       21 GETTABLEKS                       R5 R6 K6 ["OnEnd"]
       23 CALL                             R5 0 0
       24 JUMPIFNOTEQKS                    R1 K7 ["TimeLength"] ; [+17]
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R6 R7 K5 ["props"]
       29 GETTABLEKS                       R5 R6 K8 ["SetTimeLength"]
       31 GETTABLEKS                       R6 R2 K7 ["TimeLength"]
       33 CALL                             R5 1 0
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K5 ["props"]
       37 GETTABLEKS                       R5 R6 K9 ["SetIsLoaded"]
       39 MOVE                             R6 R4
       40 CALL                             R5 1 0
       41 RETURN                           R0 0
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K5 ["props"]
       45 GETTABLEKS                       R5 R6 K3 ["IsLoaded"]
       47 JUMPIFEQ                         R4 R5 ; [+9]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K5 ["props"]
       52 GETTABLEKS                       R5 R6 K9 ["SetIsLoaded"]
       54 MOVE                             R6 R4
       55 CALL                             R5 1 0
       56 RETURN                           R0 0
       57 JUMPIFNOTEQKS                    R1 K10 ["Resolution"] ; [+5]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K11 ["onResize"]
       62 CALL                             R5 0 0
       63 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["videoRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["unmounting"]
        9 JUMPIFNOT                        R1 ; [+1]
       10 JUMPIFNOT                        R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["PLAY"]
       15 JUMPIFNOTEQ                      R0 R3 ; [+5]
       17 NAMECALL                         R3 R1 K4 ["Play"]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R4 1
       22 GETTABLEKS                       R3 R4 K5 ["PAUSE"]
       24 JUMPIFNOTEQ                      R0 R3 ; [+5]
       26 NAMECALL                         R3 R1 K6 ["Pause"]
       28 CALL                             R3 1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 1
       31 GETTABLEKS                       R3 R4 K7 ["SET_TIME"]
       33 JUMPIFNOTEQ                      R0 R3 ; [+8]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R4 R5 K8 ["props"]
       38 GETTABLEKS                       R3 R4 K9 ["CurrentTime"]
       40 SETTABLEKS                       R3 R1 K10 ["TimePosition"]
       42 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["IsPlaying"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["props"]
        9 GETTABLEKS                       R0 R1 K2 ["OnPause"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K0 ["props"]
       16 GETTABLEKS                       R0 R1 K3 ["OnPlay"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["layoutRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K2 ["videoRef"]
        9 NAMECALL                         R1 R1 K1 ["getValue"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K3 ["videoContainerRef"]
       15 NAMECALL                         R2 R2 K1 ["getValue"]
       17 CALL                             R2 1 1
       18 JUMPIFNOT                        R1 ; [+2]
       19 JUMPIFNOT                        R0 ; [+1]
       20 JUMPIF                           R2 ; [+1]
       21 RETURN                           R0 0
       22 GETTABLEKS                       R3 R1 K4 ["Resolution"]
       24 GETTABLEKS                       R5 R3 K5 ["X"]
       26 GETTABLEKS                       R6 R3 K6 ["Y"]
       28 DIV                              R4 R5 R6
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R5 R6 K7 ["isNaN"]
       32 MOVE                             R6 R4
       33 CALL                             R5 1 1
       34 JUMPIFNOT                        R5 ; [+1]
       35 RETURN                           R0 0
       36 GETTABLEKS                       R6 R2 K8 ["AbsoluteSize"]
       38 GETTABLEKS                       R5 R6 K6 ["Y"]
       40 MUL                              R6 R5 R4
       41 GETTABLEKS                       R8 R0 K9 ["AbsoluteContentSize"]
       43 GETTABLEKS                       R7 R8 K5 ["X"]
       45 JUMPIFNOTLT                      R7 R6 ; [+7]
       47 GETTABLEKS                       R7 R0 K9 ["AbsoluteContentSize"]
       49 GETTABLEKS                       R6 R7 K5 ["X"]
       51 DIVRK                            R7 R10 K4 ["Resolution"]
       52 MUL                              R5 R6 R7
       53 GETIMPORT                        R7 K13 [UDim2.new]
       55 GETIMPORT                        R8 K15 [UDim.new]
       57 LOADN                            R9 0
       58 MOVE                             R10 R6
       59 CALL                             R8 2 1
       60 GETIMPORT                        R9 K15 [UDim.new]
       62 LOADN                            R10 0
       63 MOVE                             R11 R5
       64 CALL                             R9 2 -1
       65 CALL                             R7 -1 1
       66 SETTABLEKS                       R7 R1 K16 ["Size"]
       68 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+10]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["props"]
        7 GETTABLEKS                       R3 R4 K1 ["IsLoaded"]
        9 JUMPIFNOT                        R3 ; [+4]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["togglePlay"]
       13 CALL                             R3 0 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["layoutRef"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K0 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K2 ["videoRef"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K3 ["videoContainerRef"]
       18 NEWCLOSURE                       R1 P0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K4 ["onVideoChange"]
       22 NEWCLOSURE                       R1 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U1
       25 SETTABLEKS                       R1 R0 K5 ["handleMediaPlayerSignal"]
       27 NEWCLOSURE                       R1 P2
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K6 ["togglePlay"]
       31 NEWCLOSURE                       R1 P3
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U2
       34 SETTABLEKS                       R1 R0 K7 ["onResize"]
       36 NEWCLOSURE                       R1 P4
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K8 ["onInputBegan"]
       41 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["onResize"]
        2 CALL                             R1 0 0
        3 GETUPVAL                         R1 0
        4 CALL                             R1 0 1
        5 JUMPIFNOT                        R1 ; [+16]
        6 GETTABLEKS                       R1 R0 K1 ["videoRef"]
        8 NAMECALL                         R1 R1 K2 ["getValue"]
       10 CALL                             R1 1 1
       11 JUMPIFNOT                        R1 ; [+10]
       12 LOADB                            R4 1
       13 NAMECALL                         R2 R1 K3 ["SetStudioPreview"]
       15 CALL                             R2 2 0
       16 GETTABLEKS                       R3 R0 K4 ["props"]
       18 GETTABLEKS                       R2 R3 K5 ["VideoId"]
       20 SETTABLEKS                       R2 R1 K6 ["Video"]
       22 GETTABLEKS                       R2 R0 K4 ["props"]
       24 GETTABLEKS                       R1 R2 K7 ["MediaPlayerSignal"]
       26 GETTABLEKS                       R3 R0 K8 ["handleMediaPlayerSignal"]
       28 NAMECALL                         R1 R1 K9 ["Connect"]
       30 CALL                             R1 2 1
       31 SETTABLEKS                       R1 R0 K10 ["mediaPlayerSignalConnection"]
       33 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+21]
        3 GETTABLEKS                       R2 R1 K0 ["VideoId"]
        5 GETTABLEKS                       R4 R0 K1 ["props"]
        7 GETTABLEKS                       R3 R4 K0 ["VideoId"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R2 R0 K2 ["videoRef"]
       14 NAMECALL                         R2 R2 K3 ["getValue"]
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+6]
       18 GETTABLEKS                       R4 R0 K1 ["props"]
       20 GETTABLEKS                       R3 R4 K0 ["VideoId"]
       22 SETTABLEKS                       R3 R2 K4 ["Video"]
       24 RETURN                           R0 0

PROTO_8:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["unmounting"]
        3 GETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
        8 NAMECALL                         R1 R1 K2 ["Disconnect"]
       10 CALL                             R1 1 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K1 ["mediaPlayerSignalConnection"]
       14 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["IsLoaded"]
        4 GETTABLEKS                       R3 R1 K2 ["IsPlaying"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["Size"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["calculateSize"]
       17 GETTABLEKS                       R9 R4 K8 ["MediaPlayerControls"]
       19 CALL                             R8 1 1
       20 GETIMPORT                        R9 K11 [UDim.new]
       22 LOADN                            R10 0
       23 LOADN                            R11 10
       24 CALL                             R9 2 1
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K12 ["createElement"]
       28 GETUPVAL                         R11 2
       29 DUPTABLE                         R12 K13 [{"LayoutOrder", "Position", "Size"}]
       30 SETTABLEKS                       R5 R12 K4 ["LayoutOrder"]
       32 SETTABLEKS                       R6 R12 K5 ["Position"]
       34 SETTABLEKS                       R7 R12 K6 ["Size"]
       36 DUPTABLE                         R13 K16 [{"UIListLayout", "VideoContainer", "MediaPlayerControls"}]
       37 GETUPVAL                         R15 1
       38 GETTABLEKS                       R14 R15 K12 ["createElement"]
       40 LOADK                            R15 K14 ["UIListLayout"]
       41 NEWTABLE                         R16 8 0
       43 GETIMPORT                        R17 K20 [Enum.FillDirection.Vertical]
       45 SETTABLEKS                       R17 R16 K18 ["FillDirection"]
       47 GETIMPORT                        R17 K23 [Enum.HorizontalAlignment.Left]
       49 SETTABLEKS                       R17 R16 K21 ["HorizontalAlignment"]
       51 GETIMPORT                        R17 K26 [Enum.VerticalAlignment.Center]
       53 SETTABLEKS                       R17 R16 K24 ["VerticalAlignment"]
       55 GETIMPORT                        R17 K28 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R17 R16 K27 ["SortOrder"]
       59 SETTABLEKS                       R9 R16 K29 ["Padding"]
       61 GETUPVAL                         R19 1
       62 GETTABLEKS                       R18 R19 K30 ["Change"]
       64 GETTABLEKS                       R17 R18 K31 ["AbsoluteContentSize"]
       66 GETTABLEKS                       R18 R0 K32 ["onResize"]
       68 SETTABLE                         R18 R16 R17
       69 GETUPVAL                         R18 1
       70 GETTABLEKS                       R17 R18 K33 ["Ref"]
       72 GETTABLEKS                       R18 R0 K34 ["layoutRef"]
       74 SETTABLE                         R18 R16 R17
       75 CALL                             R14 2 1
       76 SETTABLEKS                       R14 R13 K14 ["UIListLayout"]
       78 GETUPVAL                         R15 1
       79 GETTABLEKS                       R14 R15 K12 ["createElement"]
       81 GETUPVAL                         R15 2
       82 NEWTABLE                         R16 4 0
       84 LOADN                            R17 1
       85 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
       87 GETIMPORT                        R17 K36 [UDim2.new]
       89 GETIMPORT                        R18 K11 [UDim.new]
       91 LOADN                            R19 1
       92 LOADN                            R20 0
       93 CALL                             R18 2 1
       94 GETIMPORT                        R21 K11 [UDim.new]
       96 LOADN                            R22 1
       97 LOADN                            R23 0
       98 CALL                             R21 2 1
       99 GETTABLEKS                       R22 R8 K37 ["Y"]
      101 SUB                              R20 R21 R22
      102 SUB                              R19 R20 R9
      103 CALL                             R17 2 1
      104 SETTABLEKS                       R17 R16 K6 ["Size"]
      106 GETUPVAL                         R18 1
      107 GETTABLEKS                       R17 R18 K33 ["Ref"]
      109 GETTABLEKS                       R18 R0 K38 ["videoContainerRef"]
      111 SETTABLE                         R18 R16 R17
      112 DUPTABLE                         R17 K41 [{"HoverArea", "VideoFrame"}]
      113 GETUPVAL                         R19 1
      114 GETTABLEKS                       R18 R19 K12 ["createElement"]
      116 GETUPVAL                         R19 3
      117 DUPTABLE                         R20 K43 [{"Cursor"}]
      118 LOADK                            R21 K44 ["PointingHand"]
      119 SETTABLEKS                       R21 R20 K42 ["Cursor"]
      121 CALL                             R18 2 1
      122 SETTABLEKS                       R18 R17 K39 ["HoverArea"]
      124 GETUPVAL                         R19 1
      125 GETTABLEKS                       R18 R19 K12 ["createElement"]
      127 LOADK                            R19 K40 ["VideoFrame"]
      128 NEWTABLE                         R20 16 0
      130 GETIMPORT                        R21 K46 [Vector2.new]
      132 LOADK                            R22 K47 [0.5]
      133 LOADN                            R23 0
      134 CALL                             R21 2 1
      135 SETTABLEKS                       R21 R20 K48 ["AnchorPoint"]
      137 LOADN                            R21 1
      138 SETTABLEKS                       R21 R20 K49 ["BackgroundTransparency"]
      140 GETIMPORT                        R21 K36 [UDim2.new]
      142 LOADK                            R22 K47 [0.5]
      143 LOADN                            R23 0
      144 LOADN                            R24 0
      145 LOADN                            R25 0
      146 CALL                             R21 4 1
      147 SETTABLEKS                       R21 R20 K5 ["Position"]
      149 GETIMPORT                        R21 K36 [UDim2.new]
      151 LOADN                            R22 1
      152 LOADN                            R23 0
      153 LOADN                            R24 1
      154 LOADN                            R25 0
      155 CALL                             R21 4 1
      156 SETTABLEKS                       R21 R20 K6 ["Size"]
      158 LOADB                            R21 0
      159 SETTABLEKS                       R21 R20 K50 ["Looped"]
      161 GETUPVAL                         R22 4
      162 CALL                             R22 0 1
      163 JUMPIFNOT                        R22 ; [+2]
      164 LOADNIL                          R21
      165 JUMP                             ; [+2]
      166 GETTABLEKS                       R21 R1 K51 ["VideoId"]
      168 SETTABLEKS                       R21 R20 K52 ["Video"]
      170 GETUPVAL                         R22 1
      171 GETTABLEKS                       R21 R22 K33 ["Ref"]
      173 GETTABLEKS                       R22 R0 K53 ["videoRef"]
      175 SETTABLE                         R22 R20 R21
      176 GETUPVAL                         R23 1
      177 GETTABLEKS                       R22 R23 K54 ["Event"]
      179 GETTABLEKS                       R21 R22 K55 ["Changed"]
      181 GETTABLEKS                       R22 R0 K56 ["onVideoChange"]
      183 SETTABLE                         R22 R20 R21
      184 GETUPVAL                         R23 1
      185 GETTABLEKS                       R22 R23 K54 ["Event"]
      187 GETTABLEKS                       R21 R22 K57 ["Ended"]
      189 GETTABLEKS                       R22 R1 K58 ["OnEnd"]
      191 SETTABLE                         R22 R20 R21
      192 GETUPVAL                         R23 1
      193 GETTABLEKS                       R22 R23 K54 ["Event"]
      195 GETTABLEKS                       R21 R22 K59 ["InputBegan"]
      197 GETTABLEKS                       R22 R0 K60 ["onInputBegan"]
      199 SETTABLE                         R22 R20 R21
      200 DUPTABLE                         R21 K62 [{"PausedOverlay"}]
      201 NOT                              R22 R3
      202 JUMPIFNOT                        R22 ; [+36]
      203 GETUPVAL                         R23 1
      204 GETTABLEKS                       R22 R23 K12 ["createElement"]
      206 GETUPVAL                         R23 2
      207 GETUPVAL                         R25 5
      208 GETTABLEKS                       R24 R25 K63 ["JoinDictionaries"]
      210 DUPTABLE                         R25 K64 [{"Size"}]
      211 GETIMPORT                        R26 K36 [UDim2.new]
      213 LOADN                            R27 1
      214 LOADN                            R28 0
      215 LOADN                            R29 1
      216 LOADN                            R30 0
      217 CALL                             R26 4 1
      218 SETTABLEKS                       R26 R25 K6 ["Size"]
      220 GETTABLEKS                       R26 R4 K61 ["PausedOverlay"]
      222 CALL                             R24 2 1
      223 DUPTABLE                         R25 K66 [{"PlayVideoIcon"}]
      224 MOVE                             R26 R2
      225 JUMPIFNOT                        R26 ; [+10]
      226 GETUPVAL                         R27 1
      227 GETTABLEKS                       R26 R27 K12 ["createElement"]
      229 GETUPVAL                         R27 6
      230 DUPTABLE                         R28 K68 [{"Style"}]
      231 GETTABLEKS                       R29 R4 K65 ["PlayVideoIcon"]
      233 SETTABLEKS                       R29 R28 K67 ["Style"]
      235 CALL                             R26 2 1
      236 SETTABLEKS                       R26 R25 K65 ["PlayVideoIcon"]
      238 CALL                             R22 3 1
      239 SETTABLEKS                       R22 R21 K61 ["PausedOverlay"]
      241 CALL                             R18 3 1
      242 SETTABLEKS                       R18 R17 K40 ["VideoFrame"]
      244 CALL                             R14 3 1
      245 SETTABLEKS                       R14 R13 K15 ["VideoContainer"]
      247 GETUPVAL                         R15 1
      248 GETTABLEKS                       R14 R15 K12 ["createElement"]
      250 GETUPVAL                         R15 0
      251 DUPTABLE                         R16 K74 [{"Style", "LayoutOrder", "IsPlaying", "IsLoaded", "OnPause", "OnPlay", "TimeLength", "CurrentTime", "OnScrub"}]
      252 GETTABLEKS                       R17 R4 K8 ["MediaPlayerControls"]
      254 SETTABLEKS                       R17 R16 K67 ["Style"]
      256 LOADN                            R17 2
      257 SETTABLEKS                       R17 R16 K4 ["LayoutOrder"]
      259 GETTABLEKS                       R17 R1 K2 ["IsPlaying"]
      261 SETTABLEKS                       R17 R16 K2 ["IsPlaying"]
      263 GETTABLEKS                       R17 R1 K1 ["IsLoaded"]
      265 SETTABLEKS                       R17 R16 K1 ["IsLoaded"]
      267 GETTABLEKS                       R17 R1 K69 ["OnPause"]
      269 SETTABLEKS                       R17 R16 K69 ["OnPause"]
      271 GETTABLEKS                       R17 R1 K70 ["OnPlay"]
      273 SETTABLEKS                       R17 R16 K70 ["OnPlay"]
      275 GETTABLEKS                       R17 R1 K71 ["TimeLength"]
      277 SETTABLEKS                       R17 R16 K71 ["TimeLength"]
      279 GETTABLEKS                       R17 R1 K72 ["CurrentTime"]
      281 SETTABLEKS                       R17 R16 K72 ["CurrentTime"]
      283 GETTABLEKS                       R17 R1 K75 ["SetCurrentTime"]
      285 SETTABLEKS                       R17 R16 K73 ["OnScrub"]
      287 CALL                             R14 2 1
      288 SETTABLEKS                       R14 R13 K8 ["MediaPlayerControls"]
      290 CALL                             R10 3 -1
      291 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["Typecheck"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R7 R0 K10 ["Util"]
       36 GETTABLEKS                       R6 R7 K12 ["Immutable"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R8 R0 K10 ["Util"]
       43 GETTABLEKS                       R7 R8 K13 ["Math"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Util"]
       50 GETTABLEKS                       R8 R9 K14 ["isInputMainPress"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R11 R0 K2 ["UI"]
       57 GETTABLEKS                       R10 R11 K15 ["Components"]
       59 GETTABLEKS                       R9 R10 K16 ["Container"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K6 [require]
       64 GETTABLEKS                       R12 R0 K2 ["UI"]
       66 GETTABLEKS                       R11 R12 K15 ["Components"]
       68 GETTABLEKS                       R10 R11 K17 ["Image"]
       70 CALL                             R9 1 1
       71 GETIMPORT                        R10 K6 [require]
       73 GETTABLEKS                       R13 R0 K2 ["UI"]
       75 GETTABLEKS                       R12 R13 K15 ["Components"]
       77 GETTABLEKS                       R11 R12 K18 ["HoverArea"]
       79 CALL                             R10 1 1
       80 GETIMPORT                        R11 K6 [require]
       82 GETTABLEKS                       R14 R0 K2 ["UI"]
       84 GETTABLEKS                       R13 R14 K15 ["Components"]
       86 GETTABLEKS                       R12 R13 K19 ["MediaPlayerControls"]
       88 CALL                             R11 1 1
       89 GETIMPORT                        R12 K6 [require]
       91 GETTABLEKS                       R16 R0 K2 ["UI"]
       93 GETTABLEKS                       R15 R16 K15 ["Components"]
       95 GETTABLEKS                       R14 R15 K20 ["MediaPlayerWrapper"]
       97 GETTABLEKS                       R13 R14 K21 ["MediaPlayerSignal"]
       99 CALL                             R12 1 1
      100 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
      102 LOADK                            R15 K23 ["StatelessVideoPlayer"]
      103 NAMECALL                         R13 R13 K24 ["extend"]
      105 CALL                             R13 2 1
      106 GETTABLEKS                       R14 R4 K25 ["wrap"]
      108 MOVE                             R15 R13
      109 GETIMPORT                        R16 K1 [script]
      111 CALL                             R14 2 0
      112 GETIMPORT                        R14 K6 [require]
      114 GETTABLEKS                       R16 R0 K26 ["SharedFlags"]
      116 GETTABLEKS                       R15 R16 K27 ["getFFlagDFVideoStudioPreviewPermissionFix"]
      118 CALL                             R14 1 1
      119 DUPCLOSURE                       R15 K28 [PROTO_5]
      120 CAPTURE                          VAL R1
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R7
      124 SETTABLEKS                       R15 R13 K29 ["init"]
      126 DUPCLOSURE                       R15 K30 [PROTO_6]
      127 CAPTURE                          VAL R14
      128 SETTABLEKS                       R15 R13 K31 ["didMount"]
      130 DUPCLOSURE                       R15 K32 [PROTO_7]
      131 CAPTURE                          VAL R14
      132 SETTABLEKS                       R15 R13 K33 ["didUpdate"]
      134 DUPCLOSURE                       R15 K34 [PROTO_8]
      135 SETTABLEKS                       R15 R13 K35 ["willUnmount"]
      137 DUPCLOSURE                       R15 K36 [PROTO_9]
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R5
      144 CAPTURE                          VAL R9
      145 SETTABLEKS                       R15 R13 K37 ["render"]
      147 MOVE                             R15 R3
      148 DUPTABLE                         R16 K39 [{"Stylizer"}]
      149 GETTABLEKS                       R17 R2 K38 ["Stylizer"]
      151 SETTABLEKS                       R17 R16 K38 ["Stylizer"]
      153 CALL                             R15 1 1
      154 MOVE                             R16 R13
      155 CALL                             R15 1 1
      156 MOVE                             R13 R15
      157 RETURN                           R13 1
