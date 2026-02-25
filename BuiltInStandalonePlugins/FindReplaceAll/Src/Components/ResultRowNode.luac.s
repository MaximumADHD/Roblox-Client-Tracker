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
        1 GETTABLEKS                       R2 R3 K0 ["getFFlagShowFullScriptNameTooltip"]
        3 CALL                             R2 0 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 -1 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["visibleNodeObservable"]
       11 GETTABLEKS                       R1 R2 K4 ["get"]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R2 2
       15 JUMPIFNOT                        R2 ; [+56]
       16 GETTABLEKS                       R3 R1 K5 ["datum"]
       18 GETTABLEKS                       R2 R3 K6 ["isFile"]
       20 JUMPIFNOT                        R2 ; [+51]
       21 GETUPVAL                         R3 3
       22 FASTCALL1                        ASSERT R3 ; [+2]
       23 GETIMPORT                        R2 K2 [assert]
       25 CALL                             R2 1 0
       26 GETUPVAL                         R4 3
       27 GETTABLEKS                       R3 R4 K7 ["getMousePosition"]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R2 R3 K8 ["X"]
       32 GETTABLEKS                       R4 R0 K9 ["AbsoluteSize"]
       34 GETTABLEKS                       R3 R4 K10 ["Y"]
       36 GETUPVAL                         R4 2
       37 DUPTABLE                         R5 K13 [{"Text", "AttachmentInfo"}]
       38 GETTABLEKS                       R7 R1 K5 ["datum"]
       40 GETTABLEKS                       R6 R7 K14 ["text"]
       42 SETTABLEKS                       R6 R5 K11 ["Text"]
       44 DUPTABLE                         R6 K18 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
       45 GETIMPORT                        R7 K21 [Vector2.new]
       47 LOADN                            R8 0
       48 LOADN                            R9 0
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K15 ["TargetAnchorPoint"]
       52 GETIMPORT                        R7 K21 [Vector2.new]
       54 LOADN                            R8 0
       55 LOADN                            R9 0
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K16 ["SubjectAnchorPoint"]
       59 GETTABLEKS                       R8 R0 K22 ["AbsolutePosition"]
       61 GETIMPORT                        R9 K21 [Vector2.new]
       63 MOVE                             R10 R2
       64 MOVE                             R11 R3
       65 CALL                             R9 2 1
       66 ADD                              R7 R8 R9
       67 SETTABLEKS                       R7 R6 K17 ["Offset"]
       69 SETTABLEKS                       R6 R5 K12 ["AttachmentInfo"]
       71 CALL                             R4 1 0
       72 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getFFlagShowFullScriptNameTooltip"]
        3 CALL                             R1 0 -1
        4 FASTCALL                         ASSERT ; [+2]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 -1 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

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
        7 GETUPVAL                         R4 3
        8 CALL                             R4 0 1
        9 JUMPIFNOT                        R4 ; [+6]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K0 ["useContext"]
       13 GETUPVAL                         R4 4
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R4 R5 K1 ["useState"]
       20 GETUPVAL                         R6 5
       21 GETTABLEKS                       R5 R6 K2 ["new"]
       23 CALL                             R5 0 -1
       24 CALL                             R4 -1 1
       25 GETTABLEKS                       R5 R0 K3 ["visibleNodeObservable"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K4 ["useRef"]
       30 LOADNIL                          R7
       31 CALL                             R6 1 1
       32 GETUPVAL                         R8 1
       33 GETTABLEKS                       R7 R8 K4 ["useRef"]
       35 LOADNIL                          R8
       36 CALL                             R7 1 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R8 R9 K4 ["useRef"]
       40 LOADNIL                          R9
       41 CALL                             R8 1 1
       42 GETUPVAL                         R9 6
       43 MOVE                             R10 R6
       44 CALL                             R9 1 1
       45 LOADNIL                          R10
       46 LOADNIL                          R11
       47 GETUPVAL                         R12 3
       48 CALL                             R12 0 1
       49 JUMPIFNOT                        R12 ; [+8]
       50 GETUPVAL                         R12 7
       51 DUPTABLE                         R13 K6 [{"Uri"}]
       52 GETUPVAL                         R14 8
       53 SETTABLEKS                       R14 R13 K5 ["Uri"]
       55 CALL                             R12 1 2
       56 MOVE                             R10 R12
       57 MOVE                             R11 R13
       58 GETUPVAL                         R13 1
       59 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       61 NEWCLOSURE                       R13 P0
       62 CAPTURE                          UPVAL U9
       63 CAPTURE                          VAL R0
       64 CAPTURE                          REF R10
       65 CAPTURE                          VAL R3
       66 NEWTABLE                         R14 0 2
       68 MOVE                             R15 R10
       69 GETTABLEKS                       R16 R0 K3 ["visibleNodeObservable"]
       71 SETLIST                          R14 R15 2 [1]
       73 CALL                             R12 2 1
       74 GETUPVAL                         R14 1
       75 GETTABLEKS                       R13 R14 K7 ["useCallback"]
       77 NEWCLOSURE                       R14 P1
       78 CAPTURE                          UPVAL U9
       79 CAPTURE                          REF R11
       80 NEWTABLE                         R15 0 1
       82 MOVE                             R16 R11
       83 SETLIST                          R15 R16 1 [1]
       85 CALL                             R13 2 1
       86 GETUPVAL                         R15 1
       87 GETTABLEKS                       R14 R15 K7 ["useCallback"]
       89 NEWCLOSURE                       R15 P2
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R9
       92 NEWTABLE                         R16 0 2
       94 GETTABLEKS                       R17 R0 K3 ["visibleNodeObservable"]
       96 MOVE                             R18 R9
       97 SETLIST                          R16 R17 2 [1]
       99 CALL                             R14 2 1
      100 GETUPVAL                         R16 10
      101 GETTABLEKS                       R15 R16 K8 ["useEffect"]
      103 MOVE                             R16 R5
      104 MOVE                             R17 R14
      105 NEWTABLE                         R18 0 1
      107 MOVE                             R19 R14
      108 SETLIST                          R18 R19 1 [1]
      110 CALL                             R15 3 0
      111 GETUPVAL                         R16 1
      112 GETTABLEKS                       R15 R16 K7 ["useCallback"]
      114 NEWCLOSURE                       R16 P3
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R0
      117 NEWTABLE                         R17 0 2
      119 MOVE                             R18 R5
      120 GETTABLEKS                       R19 R0 K9 ["resultManager"]
      122 SETLIST                          R17 R18 2 [1]
      124 CALL                             R15 2 1
      125 GETUPVAL                         R17 1
      126 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      128 NEWCLOSURE                       R17 P4
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R4
      131 CAPTURE                          UPVAL U11
      132 NEWTABLE                         R18 0 2
      134 MOVE                             R19 R5
      135 GETTABLEKS                       R20 R0 K9 ["resultManager"]
      137 SETLIST                          R18 R19 2 [1]
      139 CALL                             R16 2 1
      140 GETUPVAL                         R17 12
      141 LOADK                            R18 K10 ["TextButton"]
      142 NEWTABLE                         R19 16 0
      144 GETTABLEKS                       R20 R5 K11 ["getBinding"]
      146 CALL                             R20 0 1
      147 DUPCLOSURE                       R22 K12 [PROTO_6]
      148 CAPTURE                          UPVAL U13
      149 NAMECALL                         R20 R20 K13 ["map"]
      151 CALL                             R20 2 1
      152 SETTABLEKS                       R20 R19 K14 ["Visible"]
      154 SETTABLEKS                       R6 R19 K15 ["ref"]
      156 GETIMPORT                        R20 K18 [UDim2.fromScale]
      158 LOADN                            R21 1
      159 LOADN                            R22 1
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K19 ["Size"]
      163 MOVE                             R20 R1
      164 CALL                             R20 0 1
      165 SETTABLEKS                       R20 R19 K20 ["ZIndex"]
      167 GETUPVAL                         R22 1
      168 GETTABLEKS                       R21 R22 K21 ["Event"]
      170 GETTABLEKS                       R20 R21 K22 ["MouseButton1Click"]
      172 SETTABLE                         R16 R19 R20
      173 GETUPVAL                         R22 1
      174 GETTABLEKS                       R21 R22 K21 ["Event"]
      176 GETTABLEKS                       R20 R21 K23 ["MouseEnter"]
      178 GETUPVAL                         R22 3
      179 CALL                             R22 0 1
      180 JUMPIFNOT                        R22 ; [+2]
      181 MOVE                             R21 R12
      182 JUMP                             ; [+1]
      183 LOADNIL                          R21
      184 SETTABLE                         R21 R19 R20
      185 GETUPVAL                         R22 1
      186 GETTABLEKS                       R21 R22 K21 ["Event"]
      188 GETTABLEKS                       R20 R21 K24 ["MouseLeave"]
      190 GETUPVAL                         R22 3
      191 CALL                             R22 0 1
      192 JUMPIFNOT                        R22 ; [+2]
      193 MOVE                             R21 R13
      194 JUMP                             ; [+1]
      195 LOADNIL                          R21
      196 SETTABLE                         R21 R19 R20
      197 GETUPVAL                         R22 1
      198 GETTABLEKS                       R21 R22 K21 ["Event"]
      200 GETTABLEKS                       R20 R21 K25 ["MouseWheelForward"]
      202 GETUPVAL                         R22 3
      203 CALL                             R22 0 1
      204 JUMPIFNOT                        R22 ; [+2]
      205 MOVE                             R21 R13
      206 JUMP                             ; [+1]
      207 LOADNIL                          R21
      208 SETTABLE                         R21 R19 R20
      209 GETUPVAL                         R22 1
      210 GETTABLEKS                       R21 R22 K21 ["Event"]
      212 GETTABLEKS                       R20 R21 K26 ["MouseWheelBackward"]
      214 GETUPVAL                         R22 3
      215 CALL                             R22 0 1
      216 JUMPIFNOT                        R22 ; [+2]
      217 MOVE                             R21 R13
      218 JUMP                             ; [+1]
      219 LOADNIL                          R21
      220 SETTABLE                         R21 R19 R20
      221 GETUPVAL                         R21 1
      222 GETTABLEKS                       R20 R21 K27 ["Tag"]
      224 LOADK                            R21 K28 ["FindReplaceAll-ResultRowNode X-Row data-testid=ResultRowNode"]
      225 SETTABLE                         R21 R19 R20
      226 DUPTABLE                         R20 K31 [{"Expand", "Contents"}]
      227 GETUPVAL                         R21 12
      228 LOADK                            R22 K10 ["TextButton"]
      229 NEWTABLE                         R23 8 0
      231 MOVE                             R24 R1
      232 CALL                             R24 0 1
      233 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      235 LOADN                            R24 1
      236 SETTABLEKS                       R24 R23 K33 ["BackgroundTransparency"]
      238 GETUPVAL                         R26 1
      239 GETTABLEKS                       R25 R26 K21 ["Event"]
      241 GETTABLEKS                       R24 R25 K22 ["MouseButton1Click"]
      243 SETTABLE                         R15 R23 R24
      244 GETUPVAL                         R25 1
      245 GETTABLEKS                       R24 R25 K27 ["Tag"]
      247 LOADK                            R25 K34 ["X-Fill FindReplaceAll-Button FindReplaceAll-Square data-testid=ResultRowNode-ExpandButton"]
      248 SETTABLE                         R25 R23 R24
      249 SETTABLEKS                       R7 R23 K15 ["ref"]
      251 GETUPVAL                         R24 12
      252 LOADK                            R25 K35 ["ImageLabel"]
      253 NEWTABLE                         R26 8 0
      255 GETUPVAL                         R28 14
      256 GETTABLEKS                       R27 R28 K36 ["arrowImageTransparency"]
      258 SETTABLEKS                       R27 R26 K37 ["ImageTransparency"]
      260 GETTABLEKS                       R27 R5 K11 ["getBinding"]
      262 CALL                             R27 0 1
      263 NEWCLOSURE                       R29 P6
      264 CAPTURE                          UPVAL U15
      265 CAPTURE                          VAL R0
      266 CAPTURE                          VAL R2
      267 NAMECALL                         R27 R27 K13 ["map"]
      269 CALL                             R27 2 1
      270 SETTABLEKS                       R27 R26 K38 ["Image"]
      272 GETIMPORT                        R27 K42 [Enum.ScaleType.Crop]
      274 SETTABLEKS                       R27 R26 K40 ["ScaleType"]
      276 LOADN                            R27 1
      277 SETTABLEKS                       R27 R26 K33 ["BackgroundTransparency"]
      279 GETIMPORT                        R27 K44 [UDim2.fromOffset]
      281 GETUPVAL                         R29 14
      282 GETTABLEKS                       R28 R29 K45 ["iconSizeSmall"]
      284 GETUPVAL                         R30 14
      285 GETTABLEKS                       R29 R30 K46 ["iconSize"]
      287 CALL                             R27 2 1
      288 SETTABLEKS                       R27 R26 K19 ["Size"]
      290 GETUPVAL                         R28 1
      291 GETTABLEKS                       R27 R28 K27 ["Tag"]
      293 LOADK                            R28 K47 ["FindReplaceAll-Content-Surface-Outline-No-Transparency FindReplaceAll-View FindReplaceAll-Content-Muted FindReplaceAll-ArrowImage X-AnchorCenter data-testid=ResultRowNode-ArrowImage"]
      294 SETTABLE                         R28 R26 R27
      295 CALL                             R24 2 -1
      296 CALL                             R21 -1 1
      297 SETTABLEKS                       R21 R20 K29 ["Expand"]
      299 GETUPVAL                         R21 12
      300 LOADK                            R22 K48 ["Frame"]
      301 NEWTABLE                         R23 4 0
      303 LOADN                            R24 1
      304 SETTABLEKS                       R24 R23 K33 ["BackgroundTransparency"]
      306 MOVE                             R24 R1
      307 CALL                             R24 0 1
      308 SETTABLEKS                       R24 R23 K32 ["LayoutOrder"]
      310 GETUPVAL                         R25 1
      311 GETTABLEKS                       R24 R25 K27 ["Tag"]
      313 LOADK                            R25 K49 ["FindReplaceAll-FillX X-Row X-Middle"]
      314 SETTABLE                         R25 R23 R24
      315 DUPTABLE                         R24 K53 [{"ScriptTypeIconOrIndentLine", "ScriptNameOrMatchingLine", "NumOfMatches"}]
      316 GETUPVAL                         R25 12
      317 LOADK                            R26 K35 ["ImageLabel"]
      318 NEWTABLE                         R27 8 0
      320 LOADN                            R28 1
      321 SETTABLEKS                       R28 R27 K33 ["BackgroundTransparency"]
      323 MOVE                             R28 R1
      324 CALL                             R28 0 1
      325 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      327 GETIMPORT                        R28 K55 [Enum.ScaleType.Tile]
      329 SETTABLEKS                       R28 R27 K40 ["ScaleType"]
      331 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      333 CALL                             R28 0 1
      334 NEWCLOSURE                       R30 P7
      335 CAPTURE                          UPVAL U13
      336 CAPTURE                          UPVAL U15
      337 CAPTURE                          VAL R2
      338 NAMECALL                         R28 R28 K13 ["map"]
      340 CALL                             R28 2 1
      341 SETTABLEKS                       R28 R27 K38 ["Image"]
      343 GETIMPORT                        R28 K44 [UDim2.fromOffset]
      345 GETUPVAL                         R30 14
      346 GETTABLEKS                       R29 R30 K46 ["iconSize"]
      348 GETUPVAL                         R31 14
      349 GETTABLEKS                       R30 R31 K46 ["iconSize"]
      351 CALL                             R28 2 1
      352 SETTABLEKS                       R28 R27 K19 ["Size"]
      354 SETTABLEKS                       R8 R27 K15 ["ref"]
      356 GETUPVAL                         R29 1
      357 GETTABLEKS                       R28 R29 K27 ["Tag"]
      359 LOADK                            R29 K56 ["data-testid=ResultRowNode-ScriptTypeIcon"]
      360 SETTABLE                         R29 R27 R28
      361 CALL                             R25 2 1
      362 SETTABLEKS                       R25 R24 K50 ["ScriptTypeIconOrIndentLine"]
      364 GETUPVAL                         R25 12
      365 LOADK                            R26 K57 ["TextLabel"]
      366 NEWTABLE                         R27 16 0
      368 GETIMPORT                        R28 K60 [Enum.AutomaticSize.X]
      370 SETTABLEKS                       R28 R27 K58 ["AutomaticSize"]
      372 GETIMPORT                        R28 K61 [UDim2.new]
      374 LOADN                            R29 0
      375 GETUPVAL                         R31 14
      376 GETTABLEKS                       R30 R31 K62 ["minNameLabelWidth"]
      378 LOADN                            R31 1
      379 LOADN                            R32 0
      380 CALL                             R28 4 1
      381 SETTABLEKS                       R28 R27 K19 ["Size"]
      383 LOADN                            R28 1
      384 SETTABLEKS                       R28 R27 K33 ["BackgroundTransparency"]
      386 LOADB                            R28 1
      387 SETTABLEKS                       R28 R27 K63 ["ClipsDescendants"]
      389 MOVE                             R28 R1
      390 CALL                             R28 0 1
      391 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      393 GETIMPORT                        R28 K66 [Enum.TextTruncate.SplitWord]
      395 SETTABLEKS                       R28 R27 K64 ["TextTruncate"]
      397 GETIMPORT                        R28 K69 [Enum.TextXAlignment.Left]
      399 SETTABLEKS                       R28 R27 K67 ["TextXAlignment"]
      401 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      403 CALL                             R28 0 1
      404 DUPCLOSURE                       R30 K70 [PROTO_9]
      405 NAMECALL                         R28 R28 K13 ["map"]
      407 CALL                             R28 2 1
      408 SETTABLEKS                       R28 R27 K71 ["Text"]
      410 LOADB                            R28 1
      411 SETTABLEKS                       R28 R27 K72 ["RichText"]
      413 LOADN                            R28 1
      414 SETTABLEKS                       R28 R27 K20 ["ZIndex"]
      416 GETTABLEKS                       R28 R0 K73 ["textLabelRef"]
      418 SETTABLEKS                       R28 R27 K15 ["ref"]
      420 GETUPVAL                         R29 1
      421 GETTABLEKS                       R28 R29 K27 ["Tag"]
      423 GETUPVAL                         R30 16
      424 CALL                             R30 0 1
      425 JUMPIFNOT                        R30 ; [+2]
      426 LOADK                            R29 K74 ["FindReplaceAll-PadLeftS FindReplaceAll-FillX FindReplaceAll-PadRight FindReplaceAll-Text-Size-12 FindReplaceAll-Content-Default data-testid=ResultRowNode-ScriptNameOrMatchingLine"]
      427 JUMP                             ; [+1]
      428 LOADK                            R29 K75 ["FindReplaceAll-PadLeftS FindReplaceAll-FillX FindReplaceAll-PadRight FindReplaceAll-Text-Size-14 FindReplaceAll-Content-Default data-testid=ResultRowNode-ScriptNameOrMatchingLine"]
      429 SETTABLE                         R29 R27 R28
      430 CALL                             R25 2 1
      431 SETTABLEKS                       R25 R24 K51 ["ScriptNameOrMatchingLine"]
      433 GETUPVAL                         R25 12
      434 LOADK                            R26 K57 ["TextLabel"]
      435 NEWTABLE                         R27 16 0
      437 GETIMPORT                        R28 K77 [Enum.AutomaticSize.XY]
      439 SETTABLEKS                       R28 R27 K58 ["AutomaticSize"]
      441 GETIMPORT                        R28 K61 [UDim2.new]
      443 LOADN                            R29 0
      444 LOADN                            R30 0
      445 LOADN                            R31 0
      446 GETUPVAL                         R34 14
      447 GETTABLEKS                       R33 R34 K78 ["resultRowHeight"]
      449 GETUPVAL                         R35 14
      450 GETTABLEKS                       R34 R35 K79 ["circleOffset"]
      452 SUB                              R32 R33 R34
      453 CALL                             R28 4 1
      454 SETTABLEKS                       R28 R27 K19 ["Size"]
      456 LOADB                            R28 1
      457 SETTABLEKS                       R28 R27 K63 ["ClipsDescendants"]
      459 MOVE                             R28 R1
      460 CALL                             R28 0 1
      461 SETTABLEKS                       R28 R27 K32 ["LayoutOrder"]
      463 GETIMPORT                        R28 K81 [Enum.TextXAlignment.Center]
      465 SETTABLEKS                       R28 R27 K67 ["TextXAlignment"]
      467 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      469 CALL                             R28 0 1
      470 DUPCLOSURE                       R30 K82 [PROTO_10]
      471 NAMECALL                         R28 R28 K13 ["map"]
      473 CALL                             R28 2 1
      474 SETTABLEKS                       R28 R27 K14 ["Visible"]
      476 GETTABLEKS                       R28 R5 K11 ["getBinding"]
      478 CALL                             R28 0 1
      479 DUPCLOSURE                       R30 K83 [PROTO_11]
      480 NAMECALL                         R28 R28 K13 ["map"]
      482 CALL                             R28 2 1
      483 SETTABLEKS                       R28 R27 K71 ["Text"]
      485 LOADN                            R28 1
      486 SETTABLEKS                       R28 R27 K20 ["ZIndex"]
      488 GETUPVAL                         R29 1
      489 GETTABLEKS                       R28 R29 K27 ["Tag"]
      491 LOADK                            R29 K84 ["FindReplaceAll-ResultRowNode-Pill FindReplaceAll-SidePadM FindReplaceAll-Text-Size-12 data-testid=ResultRowNode-Pill"]
      492 SETTABLE                         R29 R27 R28
      493 CALL                             R25 2 1
      494 SETTABLEKS                       R25 R24 K52 ["NumOfMatches"]
      496 CALL                             R21 3 1
      497 SETTABLEKS                       R21 R20 K30 ["Contents"]
      499 CALL                             R17 3 -1
      500 CLOSEUPVALS                      R10
      501 RETURN                           R17 -1

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
      122 GETIMPORT                        R16 K5 [require]
      124 GETTABLEKS                       R19 R0 K10 ["Src"]
      126 GETTABLEKS                       R18 R19 K13 ["Util"]
      128 GETTABLEKS                       R17 R18 K29 ["defineFlags"]
      130 CALL                             R16 1 1
      131 GETTABLEKS                       R17 R16 K30 ["getFFlagShowFullScriptNameTooltip"]
      133 GETTABLEKS                       R18 R16 K31 ["getFFlagFindReplaceAllUseBuilderFont"]
      135 GETTABLEKS                       R19 R1 K32 ["createElement"]
      137 GETIMPORT                        R20 K5 [require]
      139 GETTABLEKS                       R22 R0 K10 ["Src"]
      141 GETTABLEKS                       R21 R22 K33 ["Types"]
      143 CALL                             R20 1 1
      144 DUPCLOSURE                       R21 K34 [PROTO_0]
      145 DUPCLOSURE                       R22 K35 [PROTO_12]
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R17
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R12
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R4
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R18
      163 RETURN                           R22 1
