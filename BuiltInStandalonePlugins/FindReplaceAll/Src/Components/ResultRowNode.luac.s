PROTO_0:
        0 MOVE                             R4 R3
        1 LOADK                            R5 K0 ["selected"]
        2 JUMPIFNOT                        R2 ; [+2]
        3 LOADK                            R6 K1 ["FindReplaceAll-Selected"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R6
        6 CALL                             R4 2 0
        7 MOVE                             R4 R3
        8 LOADK                            R5 K2 ["hovered"]
        9 JUMPIFNOT                        R1 ; [+3]
       10 JUMPIF                           R2 ; [+2]
       11 LOADK                            R6 K3 ["FindReplaceAll-Hovered"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R6
       14 CALL                             R4 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["visibleNodeObservable"]
        3 GETTABLEKS                       R1 R2 K1 ["get"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+56]
        8 GETTABLEKS                       R3 R1 K2 ["datum"]
       10 GETTABLEKS                       R2 R3 K3 ["isFile"]
       12 JUMPIFNOT                        R2 ; [+51]
       13 GETUPVAL                         R3 2
       14 FASTCALL1                        ASSERT R3 ; [+2]
       15 GETIMPORT                        R2 K5 [assert]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R3 R4 K6 ["getMousePosition"]
       21 CALL                             R3 0 1
       22 GETTABLEKS                       R2 R3 K7 ["X"]
       24 GETTABLEKS                       R4 R0 K8 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R4 K9 ["Y"]
       28 GETUPVAL                         R4 1
       29 DUPTABLE                         R5 K12 [{"Text", "AttachmentInfo"}]
       30 GETTABLEKS                       R7 R1 K2 ["datum"]
       32 GETTABLEKS                       R6 R7 K13 ["text"]
       34 SETTABLEKS                       R6 R5 K10 ["Text"]
       36 DUPTABLE                         R6 K17 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       37 GETIMPORT                        R7 K20 [Vector2.new]
       39 LOADN                            R8 0
       40 LOADN                            R9 0
       41 CALL                             R7 2 1
       42 SETTABLEKS                       R7 R6 K14 ["TargetAnchorPoint"]
       44 GETIMPORT                        R7 K20 [Vector2.new]
       46 LOADN                            R8 0
       47 LOADN                            R9 0
       48 CALL                             R7 2 1
       49 SETTABLEKS                       R7 R6 K15 ["SubjectAnchorPoint"]
       51 GETTABLEKS                       R8 R0 K21 ["AbsolutePosition"]
       53 GETIMPORT                        R9 K20 [Vector2.new]
       55 MOVE                             R10 R2
       56 MOVE                             R11 R3
       57 CALL                             R9 2 1
       58 ADD                              R7 R8 R9
       59 SETTABLEKS                       R7 R6 K16 ["Offset"]
       61 SETTABLEKS                       R6 R5 K11 ["AttachmentInfo"]
       63 CALL                             R4 1 0
       64 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["visibleNodeObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["hoveredObservable"]
        9 GETTABLEKS                       R2 R3 K1 ["get"]
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R4 R0 K3 ["datum"]
       14 GETTABLEKS                       R3 R4 K4 ["id"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K5 ["resultManager"]
       23 GETTABLEKS                       R3 R4 K6 ["selectedObservable"]
       25 GETTABLEKS                       R2 R3 K1 ["get"]
       27 CALL                             R2 0 1
       28 JUMPIFNOT                        R2 ; [+20]
       29 LOADB                            R3 0
       30 GETTABLEKS                       R4 R2 K7 ["Guid"]
       32 GETTABLEKS                       R6 R0 K3 ["datum"]
       34 GETTABLEKS                       R5 R6 K8 ["guid"]
       36 JUMPIFNOTEQ                      R4 R5 ; [+13]
       38 GETTABLEKS                       R4 R2 K9 ["Index"]
       40 GETTABLEKS                       R6 R0 K3 ["datum"]
       42 GETTABLEKS                       R5 R6 K10 ["matchIndex"]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 JUMP                             ; [+1]
       49 LOADB                            R3 0
       50 GETUPVAL                         R4 1
       51 MOVE                             R5 R4
       52 LOADK                            R6 K11 ["selected"]
       53 JUMPIFNOT                        R3 ; [+2]
       54 LOADK                            R7 K12 ["FindReplaceAll-Selected"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R7
       57 CALL                             R5 2 0
       58 MOVE                             R5 R4
       59 LOADK                            R6 K13 ["hovered"]
       60 JUMPIFNOT                        R1 ; [+3]
       61 JUMPIF                           R3 ; [+2]
       62 LOADK                            R7 K14 ["FindReplaceAll-Hovered"]
       63 JUMP                             ; [+1]
       64 LOADNIL                          R7
       65 CALL                             R5 2 0
       66 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R2 R0 K1 ["datum"]
        6 GETTABLEKS                       R1 R2 K2 ["isFile"]
        8 JUMPIFNOT                        R1 ; [+34]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K3 ["resultManager"]
       12 GETTABLEKS                       R1 R2 K4 ["isCollapsed"]
       14 GETTABLEKS                       R3 R0 K1 ["datum"]
       16 GETTABLEKS                       R2 R3 K5 ["guid"]
       18 CALL                             R1 1 1
       19 JUMPIFNOT                        R1 ; [+11]
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K3 ["resultManager"]
       23 GETTABLEKS                       R2 R3 K6 ["expandFile"]
       25 GETTABLEKS                       R4 R0 K1 ["datum"]
       27 GETTABLEKS                       R3 R4 K5 ["guid"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K3 ["resultManager"]
       34 GETTABLEKS                       R2 R3 K7 ["collapseFile"]
       36 GETTABLEKS                       R4 R0 K1 ["datum"]
       38 GETTABLEKS                       R3 R4 K5 ["guid"]
       40 GETTABLEKS                       R4 R0 K1 ["datum"]
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R2 R0 K1 ["datum"]
        6 GETTABLEKS                       R1 R2 K2 ["isFile"]
        8 JUMPIF                           R1 ; [+37]
        9 GETUPVAL                         R1 1
       10 NAMECALL                         R1 R1 K3 ["isDoubleClick"]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R2 R3 K4 ["openScriptToMatch"]
       16 GETTABLEKS                       R4 R0 K1 ["datum"]
       18 GETTABLEKS                       R3 R4 K5 ["guid"]
       20 GETTABLEKS                       R5 R0 K1 ["datum"]
       22 GETTABLEKS                       R4 R5 K6 ["matchIndex"]
       24 GETTABLEKS                       R6 R0 K1 ["datum"]
       26 GETTABLEKS                       R5 R6 K7 ["scriptVersion"]
       28 NOT                              R6 R1
       29 CALL                             R2 4 0
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K8 ["setSelection"]
       33 GETTABLEKS                       R4 R0 K1 ["datum"]
       35 GETTABLEKS                       R3 R4 K5 ["guid"]
       37 GETTABLEKS                       R5 R0 K1 ["datum"]
       39 GETTABLEKS                       R4 R5 K6 ["matchIndex"]
       41 GETTABLEKS                       R6 R0 K1 ["datum"]
       43 GETTABLEKS                       R5 R6 K7 ["scriptVersion"]
       45 CALL                             R2 3 0
       46 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R3 K1 ["id"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["nilId"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R3 K1 ["isFile"]
        4 JUMPIFNOT                        R2 ; [+22]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["collapseExpandArrowIcon"]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["resultManager"]
       11 GETTABLEKS                       R3 R4 K4 ["isCollapsed"]
       13 GETTABLEKS                       R5 R0 K0 ["datum"]
       15 GETTABLEKS                       R4 R5 K5 ["guid"]
       17 CALL                             R3 1 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 LOADK                            R2 K6 ["Collapsed"]
       20 JUMP                             ; [+1]
       21 LOADK                            R2 K7 ["Expanded"]
       22 GETUPVAL                         R4 2
       23 GETTABLEKS                       R3 R4 K8 ["theme"]
       25 CALL                             R1 2 1
       26 JUMPIF                           R1 ; [+1]
       27 LOADK                            R1 K9 [""]
       28 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R2 K1 ["scriptType"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADK                            R2 K2 [""]
        6 RETURN                           R2 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["ScriptIcon"]
       10 ADDK                             R4 R1 K4 [1]
       11 GETTABLE                         R2 R3 R4
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K5 ["scriptTypeIcons"]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R6 2
       17 GETTABLEKS                       R5 R6 K6 ["theme"]
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R2 K1 ["text"]
        4 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R2 K1 ["isFile"]
        4 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R1 R2 K1 ["numMatches"]
        4 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["useContext"]
       10 GETUPVAL                         R4 3
       11 CALL                             R3 1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K1 ["useState"]
       15 GETUPVAL                         R6 4
       16 GETTABLEKS                       R5 R6 K2 ["new"]
       18 CALL                             R5 0 -1
       19 CALL                             R4 -1 1
       20 GETTABLEKS                       R5 R0 K3 ["visibleNodeObservable"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K4 ["useRef"]
       25 LOADNIL                          R7
       26 CALL                             R6 1 1
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K4 ["useRef"]
       30 LOADNIL                          R8
       31 CALL                             R7 1 1
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R8 R9 K4 ["useRef"]
       35 LOADNIL                          R9
       36 CALL                             R8 1 1
       37 GETUPVAL                         R9 5
       38 MOVE                             R10 R6
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 6
       41 DUPTABLE                         R11 K6 [{"Uri"}]
       42 GETUPVAL                         R12 7
       43 SETTABLEKS                       R12 R11 K5 ["Uri"]
       45 CALL                             R10 1 2
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       49 NEWCLOSURE                       R13 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R10
       52 CAPTURE                          VAL R3
       53 NEWTABLE                         R14 0 2
       55 MOVE                             R15 R10
       56 GETTABLEKS                       R16 R0 K3 ["visibleNodeObservable"]
       58 SETLIST                          R14 R15 2 [1]
       60 CALL                             R12 2 1
       61 GETUPVAL                         R14 1
       62 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          VAL R11
       66 NEWTABLE                         R15 0 1
       68 MOVE                             R16 R11
       69 SETLIST                          R15 R16 1 [1]
       71 CALL                             R13 2 1
       72 GETUPVAL                         R15 1
       73 GETTABLEKS                       R14 R15 K7 ["useCallback"]
       75 NEWCLOSURE                       R15 P2
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R9
       78 NEWTABLE                         R16 0 2
       80 GETTABLEKS                       R17 R0 K3 ["visibleNodeObservable"]
       82 MOVE                             R18 R9
       83 SETLIST                          R16 R17 2 [1]
       85 CALL                             R14 2 1
       86 GETUPVAL                         R16 8
       87 GETTABLEKS                       R15 R16 K8 ["useEffect"]
       89 MOVE                             R16 R5
       90 MOVE                             R17 R14
       91 NEWTABLE                         R18 0 1
       93 MOVE                             R19 R14
       94 SETLIST                          R18 R19 1 [1]
       96 CALL                             R15 3 0
       97 GETUPVAL                         R16 1
       98 GETTABLEKS                       R15 R16 K7 ["useCallback"]
      100 NEWCLOSURE                       R16 P3
      101 CAPTURE                          VAL R5
      102 CAPTURE                          VAL R0
      103 NEWTABLE                         R17 0 2
      105 MOVE                             R18 R5
      106 GETTABLEKS                       R19 R0 K9 ["resultManager"]
      108 SETLIST                          R17 R18 2 [1]
      110 CALL                             R15 2 1
      111 GETUPVAL                         R17 1
      112 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      114 NEWCLOSURE                       R17 P4
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          UPVAL U9
      118 NEWTABLE                         R18 0 2
      120 MOVE                             R19 R5
      121 GETTABLEKS                       R20 R0 K9 ["resultManager"]
      123 SETLIST                          R18 R19 2 [1]
      125 CALL                             R16 2 1
      126 GETUPVAL                         R17 10
      127 LOADK                            R18 K10 ["TextButton"]
      128 NEWTABLE                         R19 16 0
      130 GETTABLEKS                       R20 R5 K11 ["getBinding"]
      132 CALL                             R20 0 1
      133 DUPCLOSURE                       R22 K12 [PROTO_6]
      134 CAPTURE                          UPVAL U11
      135 NAMECALL                         R20 R20 K13 ["map"]
      137 CALL                             R20 2 1
      138 SETTABLEKS                       R20 R19 K14 ["Visible"]
      140 SETTABLEKS                       R6 R19 K15 ["ref"]
      142 GETIMPORT                        R20 K18 [UDim2.fromScale]
      144 LOADN                            R21 1
      145 LOADN                            R22 1
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K19 ["Size"]
      149 MOVE                             R20 R1
      150 CALL                             R20 0 1
      151 SETTABLEKS                       R20 R19 K20 ["ZIndex"]
      153 GETUPVAL                         R22 1
      154 GETTABLEKS                       R21 R22 K21 ["Event"]
      156 GETTABLEKS                       R20 R21 K22 ["MouseButton1Click"]
      158 SETTABLE                         R16 R19 R20
      159 GETUPVAL                         R22 1
      160 GETTABLEKS                       R21 R22 K21 ["Event"]
      162 GETTABLEKS                       R20 R21 K23 ["MouseEnter"]
      164 SETTABLE                         R12 R19 R20
      165 GETUPVAL                         R22 1
      166 GETTABLEKS                       R21 R22 K21 ["Event"]
      168 GETTABLEKS                       R20 R21 K24 ["MouseLeave"]
      170 SETTABLE                         R13 R19 R20
      171 GETUPVAL                         R22 1
      172 GETTABLEKS                       R21 R22 K21 ["Event"]
      174 GETTABLEKS                       R20 R21 K25 ["MouseWheelForward"]
      176 SETTABLE                         R13 R19 R20
      177 GETUPVAL                         R22 1
      178 GETTABLEKS                       R21 R22 K21 ["Event"]
      180 GETTABLEKS                       R20 R21 K26 ["MouseWheelBackward"]
      182 SETTABLE                         R13 R19 R20
      183 GETUPVAL                         R21 1
      184 GETTABLEKS                       R20 R21 K27 ["Tag"]
      186 LOADK                            R21 K28 ["FindReplaceAll-ResultRowNode X-Row data-testid=ResultRowNode"]
      187 SETTABLE                         R21 R19 R20
      188 DUPTABLE                         R20 K31 [{"Expand", "Contents"}]
      189 GETUPVAL                         R21 10
      190 LOADK                            R22 K10 ["TextButton"]
      191 NEWTABLE                         R23 8 0
      193 MOVE                             R24 R1
      194 CALL                             R24 0 1
      195 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      197 LOADN                            R24 1
      198 SETTABLEKS                       R24 R23 K33 ["BackgroundTransparency"]
      200 GETUPVAL                         R26 1
      201 GETTABLEKS                       R25 R26 K21 ["Event"]
      203 GETTABLEKS                       R24 R25 K22 ["MouseButton1Click"]
      205 SETTABLE                         R15 R23 R24
      206 GETUPVAL                         R25 1
      207 GETTABLEKS                       R24 R25 K27 ["Tag"]
      209 LOADK                            R25 K34 ["X-Fill FindReplaceAll-Button FindReplaceAll-Square data-testid=ResultRowNode-ExpandButton"]
      210 SETTABLE                         R25 R23 R24
      211 SETTABLEKS                       R7 R23 K15 ["ref"]
      213 GETUPVAL                         R24 10
      214 LOADK                            R25 K35 ["ImageLabel"]
      215 NEWTABLE                         R26 8 0
      217 GETUPVAL                         R28 12
      218 GETTABLEKS                       R27 R28 K36 ["arrowImageTransparency"]
      220 SETTABLEKS                       R27 R26 K37 ["ImageTransparency"]
      222 GETTABLEKS                       R27 R5 K11 ["getBinding"]
      224 CALL                             R27 0 1
      225 NEWCLOSURE                       R29 P6
      226 CAPTURE                          UPVAL U13
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R2
      229 NAMECALL                         R27 R27 K13 ["map"]
      231 CALL                             R27 2 1
      232 SETTABLEKS                       R27 R26 K38 ["Image"]
      234 GETIMPORT                        R27 K42 [Enum.ScaleType.Crop]
      236 SETTABLEKS                       R27 R26 K40 ["ScaleType"]
      238 LOADN                            R27 1
      239 SETTABLEKS                       R27 R26 K33 ["BackgroundTransparency"]
      241 GETIMPORT                        R27 K44 [UDim2.fromOffset]
      243 GETUPVAL                         R29 12
      244 GETTABLEKS                       R28 R29 K45 ["iconSizeSmall"]
      246 GETUPVAL                         R30 12
      247 GETTABLEKS                       R29 R30 K46 ["iconSize"]
      249 CALL                             R27 2 1
      250 SETTABLEKS                       R27 R26 K19 ["Size"]
      252 GETUPVAL                         R28 1
      253 GETTABLEKS                       R27 R28 K27 ["Tag"]
      255 LOADK                            R28 K47 ["FindReplaceAll-Content-Surface-Outline-No-Transparency FindReplaceAll-View FindReplaceAll-Content-Muted FindReplaceAll-ArrowImage X-AnchorCenter data-testid=ResultRowNode-ArrowImage"]
      256 SETTABLE                         R28 R26 R27
      257 CALL                             R24 2 -1
      258 CALL                             R21 -1 1
      259 SETTABLEKS                       R21 R20 K29 ["Expand"]
      261 GETUPVAL                         R21 10
      262 LOADK                            R22 K48 ["Frame"]
      263 NEWTABLE                         R23 4 0
      265 LOADN                            R24 1
      266 SETTABLEKS                       R24 R23 K33 ["BackgroundTransparency"]
      268 MOVE                             R24 R1
      269 CALL                             R24 0 1
      270 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      272 GETUPVAL                         R25 1
      273 GETTABLEKS                       R24 R25 K27 ["Tag"]
      275 LOADK                            R25 K49 ["FindReplaceAll-FillX X-Row X-Middle"]
      276 SETTABLE                         R25 R23 R24
      277 DUPTABLE                         R24 K53 [{"ScriptTypeIconOrIndentLine", "ScriptNameOrMatchingLine", "NumOfMatches"}]
      278 GETUPVAL                         R25 10
      279 LOADK                            R26 K35 ["ImageLabel"]
      280 NEWTABLE                         R27 8 0
      282 LOADN                            R28 1
      283 SETTABLEKS                       R28 R27 K33 ["BackgroundTransparency"]
      285 MOVE                             R28 R1
      286 CALL                             R28 0 1
      287 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      289 GETIMPORT                        R28 K55 [Enum.ScaleType.Tile]
      291 SETTABLEKS                       R28 R27 K40 ["ScaleType"]
      293 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      295 CALL                             R28 0 1
      296 NEWCLOSURE                       R30 P7
      297 CAPTURE                          UPVAL U11
      298 CAPTURE                          UPVAL U13
      299 CAPTURE                          VAL R2
      300 NAMECALL                         R28 R28 K13 ["map"]
      302 CALL                             R28 2 1
      303 SETTABLEKS                       R28 R27 K38 ["Image"]
      305 GETIMPORT                        R28 K44 [UDim2.fromOffset]
      307 GETUPVAL                         R30 12
      308 GETTABLEKS                       R29 R30 K46 ["iconSize"]
      310 GETUPVAL                         R31 12
      311 GETTABLEKS                       R30 R31 K46 ["iconSize"]
      313 CALL                             R28 2 1
      314 SETTABLEKS                       R28 R27 K19 ["Size"]
      316 SETTABLEKS                       R8 R27 K15 ["ref"]
      318 GETUPVAL                         R29 1
      319 GETTABLEKS                       R28 R29 K27 ["Tag"]
      321 LOADK                            R29 K56 ["data-testid=ResultRowNode-ScriptTypeIcon"]
      322 SETTABLE                         R29 R27 R28
      323 CALL                             R25 2 1
      324 SETTABLEKS                       R25 R24 K50 ["ScriptTypeIconOrIndentLine"]
      326 GETUPVAL                         R25 10
      327 LOADK                            R26 K57 ["TextLabel"]
      328 NEWTABLE                         R27 16 0
      330 GETIMPORT                        R28 K60 [Enum.AutomaticSize.X]
      332 SETTABLEKS                       R28 R27 K58 ["AutomaticSize"]
      334 GETIMPORT                        R28 K61 [UDim2.new]
      336 LOADN                            R29 0
      337 GETUPVAL                         R31 12
      338 GETTABLEKS                       R30 R31 K62 ["minNameLabelWidth"]
      340 LOADN                            R31 1
      341 LOADN                            R32 0
      342 CALL                             R28 4 1
      343 SETTABLEKS                       R28 R27 K19 ["Size"]
      345 LOADN                            R28 1
      346 SETTABLEKS                       R28 R27 K33 ["BackgroundTransparency"]
      348 LOADB                            R28 1
      349 SETTABLEKS                       R28 R27 K63 ["ClipsDescendants"]
      351 MOVE                             R28 R1
      352 CALL                             R28 0 1
      353 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      355 GETIMPORT                        R28 K66 [Enum.TextTruncate.SplitWord]
      357 SETTABLEKS                       R28 R27 K64 ["TextTruncate"]
      359 GETIMPORT                        R28 K69 [Enum.TextXAlignment.Left]
      361 SETTABLEKS                       R28 R27 K67 ["TextXAlignment"]
      363 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      365 CALL                             R28 0 1
      366 DUPCLOSURE                       R30 K70 [PROTO_9]
      367 NAMECALL                         R28 R28 K13 ["map"]
      369 CALL                             R28 2 1
      370 SETTABLEKS                       R28 R27 K71 ["Text"]
      372 LOADB                            R28 1
      373 SETTABLEKS                       R28 R27 K72 ["RichText"]
      375 LOADN                            R28 1
      376 SETTABLEKS                       R28 R27 K20 ["ZIndex"]
      378 GETTABLEKS                       R28 R0 K73 ["textLabelRef"]
      380 SETTABLEKS                       R28 R27 K15 ["ref"]
      382 GETUPVAL                         R29 1
      383 GETTABLEKS                       R28 R29 K27 ["Tag"]
      385 LOADK                            R29 K74 ["FindReplaceAll-PadLeftS FindReplaceAll-FillX FindReplaceAll-PadRight FindReplaceAll-Text-Size-12 FindReplaceAll-Content-Default data-testid=ResultRowNode-ScriptNameOrMatchingLine"]
      386 SETTABLE                         R29 R27 R28
      387 CALL                             R25 2 1
      388 SETTABLEKS                       R25 R24 K51 ["ScriptNameOrMatchingLine"]
      390 GETUPVAL                         R25 10
      391 LOADK                            R26 K57 ["TextLabel"]
      392 NEWTABLE                         R27 16 0
      394 GETIMPORT                        R28 K76 [Enum.AutomaticSize.XY]
      396 SETTABLEKS                       R28 R27 K58 ["AutomaticSize"]
      398 GETIMPORT                        R28 K61 [UDim2.new]
      400 LOADN                            R29 0
      401 LOADN                            R30 0
      402 LOADN                            R31 0
      403 GETUPVAL                         R34 12
      404 GETTABLEKS                       R33 R34 K77 ["resultRowHeight"]
      406 GETUPVAL                         R35 12
      407 GETTABLEKS                       R34 R35 K78 ["circleOffset"]
      409 SUB                              R32 R33 R34
      410 CALL                             R28 4 1
      411 SETTABLEKS                       R28 R27 K19 ["Size"]
      413 LOADB                            R28 1
      414 SETTABLEKS                       R28 R27 K63 ["ClipsDescendants"]
      416 MOVE                             R28 R1
      417 CALL                             R28 0 1
      418 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      420 GETIMPORT                        R28 K80 [Enum.TextXAlignment.Center]
      422 SETTABLEKS                       R28 R27 K67 ["TextXAlignment"]
      424 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      426 CALL                             R28 0 1
      427 DUPCLOSURE                       R30 K81 [PROTO_10]
      428 NAMECALL                         R28 R28 K13 ["map"]
      430 CALL                             R28 2 1
      431 SETTABLEKS                       R28 R27 K14 ["Visible"]
      433 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      435 CALL                             R28 0 1
      436 DUPCLOSURE                       R30 K82 [PROTO_11]
      437 NAMECALL                         R28 R28 K13 ["map"]
      439 CALL                             R28 2 1
      440 SETTABLEKS                       R28 R27 K71 ["Text"]
      442 LOADN                            R28 1
      443 SETTABLEKS                       R28 R27 K20 ["ZIndex"]
      445 GETUPVAL                         R29 1
      446 GETTABLEKS                       R28 R29 K27 ["Tag"]
      448 LOADK                            R29 K83 ["FindReplaceAll-ResultRowNode-Pill FindReplaceAll-SidePadM FindReplaceAll-Text-Size-12 data-testid=ResultRowNode-Pill"]
      449 SETTABLE                         R29 R27 R28
      450 CALL                             R25 2 1
      451 SETTABLEKS                       R25 R24 K52 ["NumOfMatches"]
      453 CALL                             R21 3 1
      454 SETTABLEKS                       R21 R20 K30 ["Contents"]
      456 CALL                             R17 3 -1
      457 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["createNextOrder"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R7 R0 K10 ["Src"]
       27 GETTABLEKS                       R6 R7 K11 ["Commands"]
       29 GETTABLEKS                       R5 R6 K12 ["FindReplace"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K10 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Util"]
       38 GETTABLEKS                       R6 R7 K14 ["Constants"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Src"]
       45 GETTABLEKS                       R8 R9 K15 ["Resources"]
       47 GETTABLEKS                       R7 R8 K16 ["StyleConstants"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K5 [require]
       52 GETTABLEKS                       R10 R0 K10 ["Src"]
       54 GETTABLEKS                       R9 R10 K13 ["Util"]
       56 GETTABLEKS                       R8 R9 K17 ["Observable"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R11 R0 K10 ["Src"]
       63 GETTABLEKS                       R10 R11 K18 ["Hooks"]
       65 GETTABLEKS                       R9 R10 K19 ["useImperativeTagger"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R12 R0 K10 ["Src"]
       72 GETTABLEKS                       R11 R12 K20 ["Contexts"]
       74 GETTABLEKS                       R10 R11 K21 ["MouseContext"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K5 [require]
       79 GETTABLEKS                       R13 R0 K10 ["Src"]
       81 GETTABLEKS                       R12 R13 K20 ["Contexts"]
       83 GETTABLEKS                       R11 R12 K22 ["ThemeContext"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K5 [require]
       88 GETTABLEKS                       R14 R0 K10 ["Src"]
       90 GETTABLEKS                       R13 R14 K13 ["Util"]
       92 GETTABLEKS                       R12 R13 K23 ["ImageUrl"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R15 R0 K10 ["Src"]
       99 GETTABLEKS                       R14 R15 K13 ["Util"]
      101 GETTABLEKS                       R13 R14 K24 ["DoubleClickDetector"]
      103 CALL                             R12 1 1
      104 GETIMPORT                        R13 K1 [script]
      106 LOADK                            R15 K25 ["Plugin"]
      107 NAMECALL                         R13 R13 K26 ["FindFirstAncestorWhichIsA"]
      109 CALL                             R13 2 1
      110 NAMECALL                         R14 R13 K27 ["GetUri"]
      112 CALL                             R14 1 1
      113 GETIMPORT                        R15 K5 [require]
      115 GETTABLEKS                       R18 R0 K10 ["Src"]
      117 GETTABLEKS                       R17 R18 K18 ["Hooks"]
      119 GETTABLEKS                       R16 R17 K28 ["useTooltip"]
      121 CALL                             R15 1 1
      122 GETTABLEKS                       R16 R1 K29 ["createElement"]
      124 GETIMPORT                        R17 K5 [require]
      126 GETTABLEKS                       R19 R0 K10 ["Src"]
      128 GETTABLEKS                       R18 R19 K30 ["Types"]
      130 CALL                             R17 1 1
      131 DUPCLOSURE                       R18 K31 [PROTO_0]
      132 DUPCLOSURE                       R19 K32 [PROTO_12]
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R1
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R8
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R16
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R6
      146 CAPTURE                          VAL R11
      147 RETURN                           R19 1
