PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["SelectedObject"]
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K0 ["props"]
       11 GETTABLEKS                       R2 R1 K1 ["SelectedObject"]
       13 GETTABLEKS                       R2 R2 K2 ["Parent"]
       15 GETUPVAL                         R3 1
       16 MOVE                             R4 R0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 1
       19 MOVE                             R0 R3
       20 GETTABLEKS                       R3 R1 K3 ["AddPointSubMode"]
       22 JUMPIFNOTEQKS                    R3 K4 ["Append"] ; [+15]
       24 GETTABLEKS                       R3 R1 K5 ["dispatchAddControlPoint"]
       26 GETUPVAL                         R4 2
       27 MOVE                             R5 R0
       28 GETTABLEKS                       R6 R1 K6 ["ControlPoints"]
       30 MOVE                             R7 R2
       31 CALL                             R4 3 1
       32 GETTABLEKS                       R7 R1 K6 ["ControlPoints"]
       34 LENGTH                           R6 R7
       35 ADDK                             R5 R6 K7 [1]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R3 R1 K3 ["AddPointSubMode"]
       40 JUMPIFNOTEQKS                    R3 K8 ["Prepend"] ; [+12]
       42 GETTABLEKS                       R3 R1 K5 ["dispatchAddControlPoint"]
       44 GETUPVAL                         R4 2
       45 MOVE                             R5 R0
       46 GETTABLEKS                       R6 R1 K6 ["ControlPoints"]
       48 MOVE                             R7 R2
       49 CALL                             R4 3 1
       50 LOADN                            R5 1
       51 CALL                             R3 2 0
       52 RETURN                           R0 0
       53 GETUPVAL                         R3 3
       54 MOVE                             R4 R0
       55 GETTABLEKS                       R6 R1 K6 ["ControlPoints"]
       57 GETTABLEN                        R5 R6 1
       58 MOVE                             R6 R2
       59 CALL                             R3 3 1
       60 GETUPVAL                         R4 3
       61 MOVE                             R5 R0
       62 GETTABLEKS                       R7 R1 K6 ["ControlPoints"]
       64 GETTABLEKS                       R9 R1 K6 ["ControlPoints"]
       66 LENGTH                           R8 R9
       67 GETTABLE                         R6 R7 R8
       68 MOVE                             R7 R2
       69 CALL                             R4 3 1
       70 JUMPIFNOT                        R3 ; [+5]
       71 GETTABLEKS                       R5 R1 K9 ["dispatchSetAddPointSubMode"]
       73 LOADK                            R6 K8 ["Prepend"]
       74 CALL                             R5 1 0
       75 RETURN                           R0 0
       76 JUMPIFNOT                        R4 ; [+5]
       77 GETTABLEKS                       R5 R1 K9 ["dispatchSetAddPointSubMode"]
       79 LOADK                            R6 K4 ["Append"]
       80 CALL                             R5 1 0
       81 RETURN                           R0 0
       82 GETTABLEKS                       R6 R1 K6 ["ControlPoints"]
       84 LENGTH                           R5 R6
       85 LOADN                            R6 1
       86 JUMPIFNOTLT                      R6 R5 ; [+31]
       88 GETUPVAL                         R5 4
       89 GETTABLEKS                       R6 R1 K1 ["SelectedObject"]
       91 MOVE                             R7 R0
       92 CALL                             R5 2 1
       93 GETTABLEN                        R7 R5 1
       94 ADDK                             R6 R7 K10 [2]
       95 GETTABLEN                        R7 R5 2
       96 GETTABLEN                        R8 R5 3
       97 JUMPIFEQKNIL                     R7 ; [+20]
       99 GETUPVAL                         R9 5
      100 GETTABLEKS                       R9 R9 K11 ["SnapToSegmentEpsilon"]
      102 JUMPIFNOTLT                      R7 R9 ; [+15]
      104 GETTABLEKS                       R9 R1 K5 ["dispatchAddControlPoint"]
      106 GETTABLEKS                       R10 R1 K1 ["SelectedObject"]
      108 MOVE                             R12 R8
      109 NAMECALL                         R10 R10 K12 ["GetPositionOnCurve"]
      111 CALL                             R10 2 1
      112 FASTCALL1                        MATH_FLOOR R6 ; [+3]
      113 MOVE                             R12 R6
      114 GETIMPORT                        R11 K15 [math.floor]
      116 CALL                             R11 1 1
      117 CALL                             R9 2 0
      118 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R1 ; [+7]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["SelectedObject"]
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["props"]
       12 GETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       14 GETTABLEKS                       R3 R3 K2 ["Parent"]
       16 GETUPVAL                         R4 1
       17 MOVE                             R5 R0
       18 MOVE                             R6 R3
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 0
       21 DUPTABLE                         R7 K5 [{"dragLocationAbs", "dragLocationRelative"}]
       22 SETTABLEKS                       R0 R7 K3 ["dragLocationAbs"]
       24 SETTABLEKS                       R4 R7 K4 ["dragLocationRelative"]
       26 NAMECALL                         R5 R5 K6 ["setState"]
       28 CALL                             R5 2 0
       29 GETTABLEKS                       R6 R2 K7 ["ControlPoints"]
       31 LENGTH                           R5 R6
       32 LOADN                            R6 0
       33 JUMPIFNOTLT                      R6 R5 ; [+63]
       35 GETTABLEKS                       R5 R2 K1 ["SelectedObject"]
       37 JUMPIFEQKNIL                     R5 ; [+59]
       39 GETTABLEKS                       R5 R2 K8 ["AddPointSubMode"]
       41 JUMPIFNOTEQKS                    R5 K9 ["Unselected"] ; [+55]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R4
       45 GETTABLEKS                       R8 R2 K7 ["ControlPoints"]
       47 GETTABLEN                        R7 R8 1
       48 MOVE                             R8 R3
       49 CALL                             R5 3 1
       50 JUMPIFNOT                        R5 ; [+10]
       51 GETTABLEKS                       R5 R2 K10 ["dispatchSelectControlPoint"]
       53 LOADN                            R6 1
       54 CALL                             R5 1 0
       55 GETUPVAL                         R5 0
       56 DUPTABLE                         R7 K13 [{["hoveringSelectablePoint"] = True}]
       57 NAMECALL                         R5 R5 K6 ["setState"]
       59 CALL                             R5 2 0
       60 RETURN                           R0 0
       61 GETUPVAL                         R5 2
       62 MOVE                             R6 R4
       63 GETTABLEKS                       R8 R2 K7 ["ControlPoints"]
       65 GETTABLEKS                       R10 R2 K7 ["ControlPoints"]
       67 LENGTH                           R9 R10
       68 GETTABLE                         R7 R8 R9
       69 MOVE                             R8 R3
       70 CALL                             R5 3 1
       71 JUMPIFNOT                        R5 ; [+12]
       72 GETTABLEKS                       R5 R2 K10 ["dispatchSelectControlPoint"]
       74 GETTABLEKS                       R7 R2 K7 ["ControlPoints"]
       76 LENGTH                           R6 R7
       77 CALL                             R5 1 0
       78 GETUPVAL                         R5 0
       79 DUPTABLE                         R7 K13 [{["hoveringSelectablePoint"] = True}]
       80 NAMECALL                         R5 R5 K6 ["setState"]
       82 CALL                             R5 2 0
       83 RETURN                           R0 0
       84 GETTABLEKS                       R5 R2 K14 ["SelectedControlPointIndex"]
       86 JUMPIFEQKN                       R5 K15 [0] ; [+10]
       88 GETTABLEKS                       R5 R2 K10 ["dispatchSelectControlPoint"]
       90 LOADN                            R6 0
       91 CALL                             R5 1 0
       92 GETUPVAL                         R5 0
       93 DUPTABLE                         R7 K17 [{["hoveringSelectablePoint"] = False}]
       94 NAMECALL                         R5 R5 K6 ["setState"]
       96 CALL                             R5 2 0
       97 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["SelectedObject"]
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R5 R2 K2 ["AddPointSubMode"]
       15 JUMPIFNOTEQKS                    R5 K3 ["Append"] ; [+3]
       17 LOADK                            R4 K4 ["Right"]
       18 JUMP                             ; [+1]
       19 LOADK                            R4 K5 ["Left"]
       20 GETTABLEKS                       R6 R2 K6 ["ControlPoints"]
       22 LENGTH                           R5 R6
       23 LOADN                            R6 0
       24 JUMPIFNOTLT                      R6 R5 ; [+20]
       26 JUMPIFEQKNIL                     R3 ; [+18]
       28 GETTABLEKS                       R5 R2 K2 ["AddPointSubMode"]
       30 JUMPIFNOTEQKS                    R5 K7 ["Unselected"] ; [+5]
       32 GETTABLEKS                       R5 R2 K8 ["SelectedControlPointIndex"]
       34 JUMPIFEQKN                       R5 K9 [0] ; [+10]
       36 GETTABLEKS                       R5 R2 K10 ["dispatchSetControlPointTangent"]
       38 GETTABLEKS                       R6 R3 K11 ["SelectedControlPoint"]
       40 MOVE                             R7 R4
       41 MOVE                             R8 R1
       42 LOADB                            R9 0
       43 LOADB                            R10 0
       44 CALL                             R5 5 0
       45 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 SETTABLEKS                       R1 R0 K0 ["onDragAreaClicked"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U2
       13 SETTABLEKS                       R1 R0 K1 ["onDragAreaHoverMoved"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K2 ["onDragAreaDragged"]
       19 DUPTABLE                         R3 K5 [{["hoveringSelectablePoint"] = False}]
       20 NAMECALL                         R1 R0 K6 ["setState"]
       22 CALL                             R1 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["dispatchSetIsDraggingPoint"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dispatchSetIsDraggingPoint"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["SelectedObject"]
        6 JUMPIFNOTEQKNIL                  R3 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETTABLEKS                       R3 R1 K2 ["SelectedObject"]
       12 GETTABLEKS                       R4 R1 K3 ["Path2DToolMode"]
       14 JUMPIFNOTEQKS                    R4 K4 ["AddPoint"] ; [+5]
       16 GETTABLEKS                       R4 R3 K5 ["Parent"]
       18 JUMPIFNOTEQKNIL                  R4 ; [+3]
       20 LOADNIL                          R4
       21 RETURN                           R4 1
       22 GETTABLEKS                       R4 R3 K5 ["Parent"]
       24 GETTABLEKS                       R7 R1 K6 ["ControlPoints"]
       26 LENGTH                           R6 R7
       27 JUMPIFEQKN                       R6 K7 [0] ; [+2]
       29 LOADB                            R5 0 +1
       30 LOADB                            R5 1
       31 GETTABLEKS                       R7 R1 K6 ["ControlPoints"]
       33 LENGTH                           R6 R7
       34 LOADN                            R7 2
       35 JUMPIFNOTLT                      R6 R7 ; [+9]
       37 GETTABLEKS                       R6 R1 K8 ["AddPointSubMode"]
       39 JUMPIFEQKS                       R6 K9 ["Append"] ; [+5]
       41 GETTABLEKS                       R6 R1 K10 ["dispatchSetAddPointSubMode"]
       43 LOADK                            R7 K9 ["Append"]
       44 CALL                             R6 1 0
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 JUMPIF                           R5 ; [+4]
       48 GETTABLEKS                       R8 R1 K8 ["AddPointSubMode"]
       50 JUMPIFNOTEQKS                    R8 K11 ["Unselected"] ; [+6]
       52 GETIMPORT                        R8 K14 [UDim2.new]
       54 CALL                             R8 0 1
       55 MOVE                             R6 R8
       56 JUMP                             ; [+29]
       57 GETTABLEKS                       R8 R1 K8 ["AddPointSubMode"]
       59 JUMPIFNOTEQKS                    R8 K9 ["Append"] ; [+8]
       61 GETTABLEKS                       R8 R1 K6 ["ControlPoints"]
       63 GETTABLEKS                       R10 R1 K6 ["ControlPoints"]
       65 LENGTH                           R9 R10
       66 GETTABLE                         R7 R8 R9
       67 JUMP                             ; [+7]
       68 GETTABLEKS                       R8 R1 K8 ["AddPointSubMode"]
       70 JUMPIFNOTEQKS                    R8 K15 ["Prepend"] ; [+4]
       72 GETTABLEKS                       R8 R1 K6 ["ControlPoints"]
       74 GETTABLEN                        R7 R8 1
       75 JUMPIFEQKNIL                     R7 ; [+10]
       77 GETUPVAL                         R8 0
       78 GETUPVAL                         R9 1
       79 GETTABLEKS                       R10 R7 K16 ["Position"]
       81 MOVE                             R11 R4
       82 CALL                             R9 2 1
       83 MOVE                             R10 R4
       84 CALL                             R8 2 1
       85 MOVE                             R6 R8
       86 GETTABLEKS                       R9 R2 K17 ["dragLocationAbs"]
       88 JUMPIFEQKNIL                     R9 ; [+6]
       90 GETUPVAL                         R8 0
       91 GETTABLEKS                       R9 R2 K17 ["dragLocationAbs"]
       93 CALL                             R8 1 1
       94 JUMP                             ; [+3]
       95 GETIMPORT                        R8 K14 [UDim2.new]
       97 CALL                             R8 0 1
       98 GETTABLEKS                       R10 R1 K18 ["ToolbarHovered"]
      100 NOT                              R9 R10
      101 JUMPIFNOT                        R9 ; [+10]
      102 GETTABLEKS                       R10 R1 K19 ["IsDraggingPoint"]
      104 NOT                              R9 R10
      105 JUMPIFNOT                        R9 ; [+6]
      106 GETTABLEKS                       R10 R2 K17 ["dragLocationAbs"]
      108 JUMPIFNOTEQKNIL                  R10 ; [+2]
      110 LOADB                            R9 0 +1
      111 LOADB                            R9 1
      112 MOVE                             R10 R9
      113 JUMPIFNOT                        R10 ; [+11]
      114 NOT                              R10 R5
      115 JUMPIFNOT                        R10 ; [+9]
      116 LOADB                            R10 0
      117 JUMPIFEQKNIL                     R7 ; [+7]
      119 GETTABLEKS                       R11 R1 K8 ["AddPointSubMode"]
      121 JUMPIFNOTEQKS                    R11 K11 ["Unselected"] ; [+2]
      123 LOADB                            R10 0 +1
      124 LOADB                            R10 1
      125 LOADB                            R11 0
      126 GETTABLEKS                       R12 R1 K8 ["AddPointSubMode"]
      128 JUMPIFEQKS                       R12 K11 ["Unselected"] ; [+18]
      130 JUMPIFNOT                        R9 ; [+16]
      131 GETUPVAL                         R12 0
      132 GETUPVAL                         R13 1
      133 GETUPVAL                         R14 2
      134 GETTABLEKS                       R15 R2 K20 ["dragLocationRelative"]
      136 GETTABLEKS                       R16 R1 K6 ["ControlPoints"]
      138 MOVE                             R17 R4
      139 CALL                             R14 3 1
      140 MOVE                             R15 R4
      141 CALL                             R13 2 1
      142 MOVE                             R14 R4
      143 CALL                             R12 2 1
      144 MOVE                             R8 R12
      145 LOADB                            R11 1
      146 JUMP                             ; [+38]
      147 GETTABLEKS                       R12 R1 K8 ["AddPointSubMode"]
      149 JUMPIFNOTEQKS                    R12 K11 ["Unselected"] ; [+35]
      151 JUMPIFNOT                        R9 ; [+33]
      152 GETTABLEKS                       R13 R1 K6 ["ControlPoints"]
      154 LENGTH                           R12 R13
      155 LOADN                            R13 1
      156 JUMPIFNOTLT                      R13 R12 ; [+28]
      158 GETUPVAL                         R12 3
      159 MOVE                             R13 R3
      160 GETTABLEKS                       R14 R2 K20 ["dragLocationRelative"]
      162 CALL                             R12 2 1
      163 GETTABLEN                        R13 R12 2
      164 GETTABLEN                        R14 R12 3
      165 JUMPIFEQKNIL                     R13 ; [+19]
      167 GETUPVAL                         R15 4
      168 GETTABLEKS                       R15 R15 K21 ["SnapToSegmentEpsilon"]
      170 JUMPIFNOTLT                      R13 R15 ; [+14]
      172 GETUPVAL                         R15 0
      173 GETUPVAL                         R16 1
      174 MOVE                             R19 R14
      175 NAMECALL                         R17 R3 K22 ["GetPositionOnCurve"]
      177 CALL                             R17 2 1
      178 MOVE                             R18 R4
      179 CALL                             R16 2 -1
      180 CALL                             R15 -1 1
      181 MOVE                             R8 R15
      182 GETTABLEKS                       R15 R2 K23 ["hoveringSelectablePoint"]
      184 NOT                              R11 R15
      185 LOADNIL                          R12
      186 JUMPIFNOT                        R10 ; [+26]
      187 JUMPIFEQKNIL                     R7 ; [+25]
      189 JUMPIFEQKNIL                     R3 ; [+23]
      191 GETTABLEKS                       R14 R1 K8 ["AddPointSubMode"]
      193 JUMPIFNOTEQKS                    R14 K9 ["Append"] ; [+4]
      195 GETTABLEKS                       R13 R7 K24 ["RightTangent"]
      197 JUMP                             ; [+2]
      198 GETTABLEKS                       R13 R7 K25 ["LeftTangent"]
      200 NEWTABLE                         R14 0 2
      202 GETUPVAL                         R15 5
      203 MOVE                             R16 R6
      204 MOVE                             R17 R13
      205 MOVE                             R18 R13
      206 CALL                             R15 3 1
      207 GETUPVAL                         R16 5
      208 MOVE                             R17 R8
      209 CALL                             R16 1 -1
      210 SETLIST                          R14 R15 -1 [1]
      212 MOVE                             R12 R14
      213 GETUPVAL                         R13 6
      214 GETTABLEKS                       R13 R13 K26 ["createElement"]
      216 GETUPVAL                         R14 7
      217 DUPTABLE                         R15 K30 [{["DisplayOrder"] = 3, ["ZIndexBehavior"]}]
      218 GETIMPORT                        R16 K33 [Enum.ZIndexBehavior.Sibling]
      220 SETTABLEKS                       R16 R15 K29 ["ZIndexBehavior"]
      222 NEWTABLE                         R16 0 1
      224 GETUPVAL                         R17 6
      225 GETTABLEKS                       R17 R17 K26 ["createElement"]
      227 GETUPVAL                         R18 8
      228 DUPTABLE                         R19 K43 [{["Style"] = "AddPoint", ["Size"], ["FollowCursorOnDrag"] = False, ["OnSelected"], ["OnDragStart"], ["OnDragMoved"], ["OnDragEnd"], ["OnHoverMoved"]}]
      229 GETIMPORT                        R20 K45 [UDim2.fromScale]
      231 LOADN                            R21 1
      232 LOADN                            R22 1
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K35 ["Size"]
      236 GETTABLEKS                       R20 R0 K46 ["onDragAreaClicked"]
      238 SETTABLEKS                       R20 R19 K38 ["OnSelected"]
      240 NEWCLOSURE                       R20 P0
      241 CAPTURE                          VAL R1
      242 SETTABLEKS                       R20 R19 K39 ["OnDragStart"]
      244 GETTABLEKS                       R20 R0 K47 ["onDragAreaDragged"]
      246 SETTABLEKS                       R20 R19 K40 ["OnDragMoved"]
      248 NEWCLOSURE                       R20 P1
      249 CAPTURE                          VAL R1
      250 SETTABLEKS                       R20 R19 K41 ["OnDragEnd"]
      252 GETTABLEKS                       R20 R0 K48 ["onDragAreaHoverMoved"]
      254 SETTABLEKS                       R20 R19 K42 ["OnHoverMoved"]
      256 DUPTABLE                         R20 K51 [{"Line", "ControlPoint"}]
      257 JUMPIFNOT                        R10 ; [+17]
      258 GETUPVAL                         R21 6
      259 GETTABLEKS                       R21 R21 K26 ["createElement"]
      261 GETUPVAL                         R22 9
      262 DUPTABLE                         R23 K55 [{["Color"], ["Style"] = "Tangent", ["Thickness"], ["ControlPoints"]}]
      263 GETTABLEKS                       R24 R3 K56 ["Color3"]
      265 SETTABLEKS                       R24 R23 K52 ["Color"]
      267 GETTABLEKS                       R24 R3 K54 ["Thickness"]
      269 SETTABLEKS                       R24 R23 K54 ["Thickness"]
      271 SETTABLEKS                       R12 R23 K6 ["ControlPoints"]
      273 CALL                             R21 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R21
      276 SETTABLEKS                       R21 R20 K49 ["Line"]
      278 JUMPIFNOT                        R11 ; [+9]
      279 GETUPVAL                         R21 6
      280 GETTABLEKS                       R21 R21 K26 ["createElement"]
      282 GETUPVAL                         R22 10
      283 DUPTABLE                         R23 K59 [{["Style"] = "ControlPoint", ["Position"], ["ZIndex"] = 1}]
      284 SETTABLEKS                       R8 R23 K16 ["Position"]
      286 CALL                             R21 2 1
      287 JUMP                             ; [+1]
      288 LOADNIL                          R21
      289 SETTABLEKS                       R21 R20 K50 ["ControlPoint"]
      291 CALL                             R17 3 -1
      292 SETLIST                          R16 R17 -1 [1]
      294 CALL                             R13 3 -1
      295 RETURN                           R13 -1

PROTO_7:
        0 DUPTABLE                         R2 K11 [{"Refreshed", "SelectedObject", "ParentAbsPos", "ParentAbsSize", "ParentAbsRotation", "Path2DToolMode", "ControlPoints", "ToolbarHovered", "IsDraggingPoint", "AddPointSubMode", "SelectedControlPointIndex"}]
        1 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
        3 GETTABLEKS                       R3 R3 K0 ["Refreshed"]
        5 SETTABLEKS                       R3 R2 K0 ["Refreshed"]
        7 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
        9 GETTABLEKS                       R3 R3 K1 ["SelectedObject"]
       11 SETTABLEKS                       R3 R2 K1 ["SelectedObject"]
       13 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       15 GETTABLEKS                       R3 R3 K2 ["ParentAbsPos"]
       17 SETTABLEKS                       R3 R2 K2 ["ParentAbsPos"]
       19 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       21 GETTABLEKS                       R3 R3 K3 ["ParentAbsSize"]
       23 SETTABLEKS                       R3 R2 K3 ["ParentAbsSize"]
       25 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       27 GETTABLEKS                       R3 R3 K4 ["ParentAbsRotation"]
       29 SETTABLEKS                       R3 R2 K4 ["ParentAbsRotation"]
       31 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       33 GETTABLEKS                       R3 R3 K5 ["Path2DToolMode"]
       35 SETTABLEKS                       R3 R2 K5 ["Path2DToolMode"]
       37 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       39 GETTABLEKS                       R3 R3 K6 ["ControlPoints"]
       41 SETTABLEKS                       R3 R2 K6 ["ControlPoints"]
       43 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       45 GETTABLEKS                       R3 R3 K7 ["ToolbarHovered"]
       47 SETTABLEKS                       R3 R2 K7 ["ToolbarHovered"]
       49 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       51 GETTABLEKS                       R3 R3 K8 ["IsDraggingPoint"]
       53 SETTABLEKS                       R3 R2 K8 ["IsDraggingPoint"]
       55 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       57 GETTABLEKS                       R3 R3 K9 ["AddPointSubMode"]
       59 SETTABLEKS                       R3 R2 K9 ["AddPointSubMode"]
       61 GETTABLEKS                       R3 R0 K12 ["PathReducer"]
       63 GETTABLEKS                       R3 R3 K10 ["SelectedControlPointIndex"]
       65 SETTABLEKS                       R3 R2 K10 ["SelectedControlPointIndex"]
       67 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K5 [{"dispatchAddControlPoint", "dispatchSelectControlPoint", "dispatchSetControlPointTangent", "dispatchSetIsDraggingPoint", "dispatchSetAddPointSubMode"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchAddControlPoint"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchSelectControlPoint"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchSetControlPointTangent"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchSetIsDraggingPoint"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchSetAddPointSubMode"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K5 ["Src"]
       39 GETTABLEKS                       R5 R5 K11 ["Actions"]
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R5 K12 ["SetIsDraggingPoint"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K4 [require]
       48 GETTABLEKS                       R8 R5 K13 ["SetAddPointSubMode"]
       50 CALL                             R7 1 1
       51 GETTABLEKS                       R8 R0 K5 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Thunks"]
       55 GETIMPORT                        R9 K4 [require]
       57 GETTABLEKS                       R10 R8 K15 ["AddControlPoint"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R8 K16 ["SetControlPointTangent"]
       64 CALL                             R10 1 1
       65 GETIMPORT                        R11 K4 [require]
       67 GETTABLEKS                       R12 R8 K17 ["SelectControlPoint"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R0 K5 ["Src"]
       72 GETTABLEKS                       R12 R12 K18 ["Components"]
       74 GETIMPORT                        R13 K4 [require]
       76 GETTABLEKS                       R14 R12 K19 ["DraggablePoint"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K4 [require]
       81 GETTABLEKS                       R15 R12 K20 ["GuiShim"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K4 [require]
       86 GETTABLEKS                       R16 R12 K21 ["Line"]
       88 CALL                             R15 1 1
       89 GETTABLEKS                       R16 R4 K22 ["UI"]
       91 GETTABLEKS                       R17 R16 K23 ["Image"]
       93 GETIMPORT                        R18 K4 [require]
       95 GETTABLEKS                       R19 R0 K5 ["Src"]
       97 GETTABLEKS                       R19 R19 K24 ["Resources"]
       99 GETTABLEKS                       R19 R19 K25 ["Constants"]
      101 CALL                             R18 1 1
      102 GETTABLEKS                       R19 R0 K5 ["Src"]
      104 GETTABLEKS                       R19 R19 K26 ["Util"]
      106 GETIMPORT                        R20 K4 [require]
      108 GETTABLEKS                       R21 R19 K27 ["getClosestControlPointToPosition"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K4 [require]
      113 GETTABLEKS                       R22 R19 K28 ["getPositionMatchesControlPoint"]
      115 CALL                             R21 1 1
      116 GETIMPORT                        R22 K4 [require]
      118 GETTABLEKS                       R23 R19 K29 ["getSnapToControlPoint"]
      120 CALL                             R22 1 1
      121 GETIMPORT                        R23 K4 [require]
      123 GETTABLEKS                       R24 R19 K30 ["getUDim2FromVector2"]
      125 CALL                             R23 1 1
      126 GETIMPORT                        R24 K4 [require]
      128 GETTABLEKS                       R25 R19 K31 ["makeNewPath2DControlPoint"]
      130 CALL                             R24 1 1
      131 GETIMPORT                        R25 K4 [require]
      133 GETTABLEKS                       R26 R19 K32 ["getRelativePosFromAbsPos"]
      135 CALL                             R25 1 1
      136 GETIMPORT                        R26 K4 [require]
      138 GETTABLEKS                       R27 R19 K33 ["getAbsPosFromRelative"]
      140 CALL                             R26 1 1
      141 GETTABLEKS                       R27 R2 K34 ["Component"]
      143 LOADK                            R29 K35 ["AddPointComponent"]
      144 NAMECALL                         R27 R27 K36 ["extend"]
      146 CALL                             R27 2 1
      147 DUPCLOSURE                       R28 K37 [PROTO_3]
      148 CAPTURE                          VAL R25
      149 CAPTURE                          VAL R22
      150 CAPTURE                          VAL R21
      151 CAPTURE                          VAL R20
      152 CAPTURE                          VAL R18
      153 SETTABLEKS                       R28 R27 K38 ["init"]
      155 DUPCLOSURE                       R28 K39 [PROTO_6]
      156 CAPTURE                          VAL R23
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R18
      161 CAPTURE                          VAL R24
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R17
      167 SETTABLEKS                       R28 R27 K40 ["render"]
      169 GETTABLEKS                       R28 R3 K41 ["connect"]
      171 DUPCLOSURE                       R29 K42 [PROTO_7]
      172 DUPCLOSURE                       R30 K43 [PROTO_13]
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R11
      175 CAPTURE                          VAL R10
      176 CAPTURE                          VAL R6
      177 CAPTURE                          VAL R7
      178 CALL                             R28 2 1
      179 MOVE                             R29 R27
      180 CALL                             R28 1 -1
      181 RETURN                           R28 -1
