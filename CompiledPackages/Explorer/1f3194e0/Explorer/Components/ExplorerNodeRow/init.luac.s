PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["getExpandState"]
        2 GETTABLEKS                       R4 R1 K1 ["datum"]
        4 GETTABLEKS                       R4 R4 K2 ["id"]
        6 CALL                             R3 1 1
        7 MOVE                             R4 R2
        8 LOADK                            R5 K3 ["expand"]
        9 LOADK                            R7 K4 ["Explorer-%*"]
       10 MOVE                             R9 R3
       11 NAMECALL                         R7 R7 K5 ["format"]
       13 CALL                             R7 2 1
       14 MOVE                             R6 R7
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R2 R1
        1 LOADK                            R3 K0 ["imageColor"]
        2 GETTABLEKS                       R5 R0 K1 ["selectionState"]
        4 JUMPIFEQKNIL                     R5 ; [+9]
        6 GETTABLEKS                       R5 R0 K1 ["selectionState"]
        8 GETTABLEKS                       R5 R5 K2 ["kind"]
       10 JUMPIFNOTEQKS                    R5 K3 ["Selected"] ; [+3]
       12 LOADK                            R4 K4 ["Explorer-Content-Emphasis"]
       13 JUMP                             ; [+1]
       14 LOADK                            R4 K5 ["Explorer-Content-Default"]
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R2 R1
        1 LOADK                            R3 K0 ["imageTransparency"]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 CALL                             R5 1 1
        5 JUMPIFNOT                        R5 ; [+2]
        6 LOADNIL                          R4
        7 JUMP                             ; [+1]
        8 LOADK                            R4 K1 ["Explorer-Content-Disabled"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 LOADK                            R3 K0 ["textColor"]
        2 GETTABLEKS                       R5 R0 K1 ["selectionState"]
        4 JUMPIFEQKNIL                     R5 ; [+9]
        6 GETTABLEKS                       R5 R0 K1 ["selectionState"]
        8 GETTABLEKS                       R5 R5 K2 ["kind"]
       10 JUMPIFNOTEQKS                    R5 K3 ["Selected"] ; [+3]
       12 LOADK                            R4 K4 ["Explorer-Content-Emphasis"]
       13 JUMP                             ; [+7]
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R0
       16 CALL                             R5 1 1
       17 JUMPIF                           R5 ; [+2]
       18 LOADK                            R4 K5 ["Explorer-Content-Disabled"]
       19 JUMP                             ; [+1]
       20 LOADK                            R4 K6 ["Explorer-Content-Default"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFEQ                         R2 R3 ; [+8]
        6 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        8 GETIMPORT                        R3 K5 [Enum.UserInputType.Touch]
       10 JUMPIFEQ                         R2 R3 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K6 ["get"]
       16 CALL                             R2 0 1
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K7 ["session"]
       20 GETTABLEKS                       R3 R3 K8 ["getExpandState"]
       22 GETTABLEKS                       R4 R2 K9 ["datum"]
       24 GETTABLEKS                       R4 R4 K10 ["id"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R6 K13 [Enum.ModifierKey.Shift]
       29 NAMECALL                         R4 R1 K14 ["IsModifierKeyDown"]
       31 CALL                             R4 2 1
       32 JUMPIFNOT                        R4 ; [+34]
       33 JUMPIFNOTEQKS                    R3 K15 ["Collapsed"] ; [+16]
       35 GETUPVAL                         R4 1
       36 GETTABLEKS                       R4 R4 K7 ["session"]
       38 GETTABLEKS                       R4 R4 K16 ["expandAll"]
       40 NEWTABLE                         R5 0 1
       42 GETTABLEKS                       R6 R2 K9 ["datum"]
       44 GETTABLEKS                       R6 R6 K10 ["id"]
       46 SETLIST                          R5 R6 1 [1]
       48 CALL                             R4 1 0
       49 RETURN                           R0 0
       50 JUMPIFNOTEQKS                    R3 K17 ["Expanded"] ; [+48]
       52 GETUPVAL                         R4 1
       53 GETTABLEKS                       R4 R4 K7 ["session"]
       55 GETTABLEKS                       R4 R4 K18 ["collapseAll"]
       57 NEWTABLE                         R5 0 1
       59 GETTABLEKS                       R6 R2 K9 ["datum"]
       61 GETTABLEKS                       R6 R6 K10 ["id"]
       63 SETLIST                          R5 R6 1 [1]
       65 CALL                             R4 1 0
       66 RETURN                           R0 0
       67 JUMPIFNOTEQKS                    R3 K15 ["Collapsed"] ; [+12]
       69 GETUPVAL                         R4 1
       70 GETTABLEKS                       R4 R4 K7 ["session"]
       72 GETTABLEKS                       R4 R4 K19 ["expandAsync"]
       74 GETTABLEKS                       R5 R2 K9 ["datum"]
       76 GETTABLEKS                       R5 R5 K10 ["id"]
       78 CALL                             R4 1 0
       79 JUMP                             ; [+12]
       80 JUMPIFNOTEQKS                    R3 K17 ["Expanded"] ; [+11]
       82 GETUPVAL                         R4 1
       83 GETTABLEKS                       R4 R4 K7 ["session"]
       85 GETTABLEKS                       R4 R4 K20 ["unexpand"]
       87 GETTABLEKS                       R5 R2 K9 ["datum"]
       89 GETTABLEKS                       R5 R5 K10 ["id"]
       91 CALL                             R4 1 0
       92 GETUPVAL                         R4 1
       93 GETTABLEKS                       R4 R4 K21 ["dragToExpand"]
       95 GETTABLEKS                       R4 R4 K22 ["setDragToExpandMode"]
       97 MOVE                             R5 R3
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dragToExpand"]
        3 GETTABLEKS                       R0 R0 K1 ["getDragToExpandMode"]
        5 CALL                             R0 0 1
        6 JUMPIFNOTEQKNIL                  R0 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["get"]
       12 CALL                             R1 0 1
       13 JUMPIFNOTEQKS                    R0 K3 ["Collapsed"] ; [+12]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K4 ["session"]
       18 GETTABLEKS                       R2 R2 K5 ["expandAsync"]
       20 GETTABLEKS                       R3 R1 K6 ["datum"]
       22 GETTABLEKS                       R3 R3 K7 ["id"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0
       26 JUMPIFNOTEQKS                    R0 K8 ["Expanded"] ; [+11]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["session"]
       31 GETTABLEKS                       R2 R2 K9 ["unexpand"]
       33 GETTABLEKS                       R3 R1 K6 ["datum"]
       35 GETTABLEKS                       R3 R3 K7 ["id"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["visibleNodeObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["draggingTargetObservable"]
       11 GETTABLEKS                       R3 R3 K1 ["get"]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 2
       15 CALL                             R1 3 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K3 ["session"]
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R3 R1 K4 ["getExpandState"]
       22 GETTABLEKS                       R4 R0 K5 ["datum"]
       24 GETTABLEKS                       R4 R4 K6 ["id"]
       26 CALL                             R3 1 1
       27 MOVE                             R4 R2
       28 LOADK                            R5 K7 ["expand"]
       29 LOADK                            R7 K8 ["Explorer-%*"]
       30 MOVE                             R9 R3
       31 NAMECALL                         R7 R7 K9 ["format"]
       33 CALL                             R7 2 1
       34 MOVE                             R6 R7
       35 CALL                             R4 2 0
       36 GETUPVAL                         R1 4
       37 MOVE                             R2 R1
       38 LOADK                            R3 K10 ["imageColor"]
       39 GETTABLEKS                       R5 R0 K11 ["selectionState"]
       41 JUMPIFEQKNIL                     R5 ; [+9]
       43 GETTABLEKS                       R5 R0 K11 ["selectionState"]
       45 GETTABLEKS                       R5 R5 K12 ["kind"]
       47 JUMPIFNOTEQKS                    R5 K13 ["Selected"] ; [+3]
       49 LOADK                            R4 K14 ["Explorer-Content-Emphasis"]
       50 JUMP                             ; [+1]
       51 LOADK                            R4 K15 ["Explorer-Content-Default"]
       52 CALL                             R2 2 0
       53 GETUPVAL                         R1 5
       54 MOVE                             R2 R1
       55 LOADK                            R3 K16 ["imageTransparency"]
       56 GETUPVAL                         R5 6
       57 MOVE                             R6 R0
       58 CALL                             R5 1 1
       59 JUMPIFNOT                        R5 ; [+2]
       60 LOADNIL                          R4
       61 JUMP                             ; [+1]
       62 LOADK                            R4 K17 ["Explorer-Content-Disabled"]
       63 CALL                             R2 2 0
       64 GETUPVAL                         R1 7
       65 MOVE                             R2 R1
       66 LOADK                            R3 K18 ["textColor"]
       67 GETTABLEKS                       R5 R0 K11 ["selectionState"]
       69 JUMPIFEQKNIL                     R5 ; [+9]
       71 GETTABLEKS                       R5 R0 K11 ["selectionState"]
       73 GETTABLEKS                       R5 R5 K12 ["kind"]
       75 JUMPIFNOTEQKS                    R5 K13 ["Selected"] ; [+3]
       77 LOADK                            R4 K14 ["Explorer-Content-Emphasis"]
       78 JUMP                             ; [+7]
       79 GETUPVAL                         R5 6
       80 MOVE                             R6 R0
       81 CALL                             R5 1 1
       82 JUMPIF                           R5 ; [+2]
       83 LOADK                            R4 K17 ["Explorer-Content-Disabled"]
       84 JUMP                             ; [+1]
       85 LOADK                            R4 K15 ["Explorer-Content-Default"]
       86 CALL                             R2 2 0
       87 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["nilId"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Image"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["ImageRectOffset"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["ImageRectSize"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["datum"]
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K0 ["datum"]
        9 GETTABLEKS                       R1 R1 K2 ["name"]
       11 RETURN                           R1 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["visibleNodeObservable"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["useCallback"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 NEWTABLE                         R5 0 7
       13 MOVE                             R6 R1
       14 GETTABLEKS                       R7 R0 K2 ["session"]
       16 GETTABLEKS                       R7 R7 K3 ["getExpandState"]
       18 GETTABLEKS                       R8 R0 K2 ["session"]
       20 GETTABLEKS                       R8 R8 K4 ["expandAll"]
       22 GETTABLEKS                       R9 R0 K2 ["session"]
       24 GETTABLEKS                       R9 R9 K5 ["collapseAll"]
       26 GETTABLEKS                       R10 R0 K2 ["session"]
       28 GETTABLEKS                       R10 R10 K6 ["expandAsync"]
       30 GETTABLEKS                       R11 R0 K2 ["session"]
       32 GETTABLEKS                       R11 R11 K7 ["unexpand"]
       34 GETTABLEKS                       R12 R0 K8 ["dragToExpand"]
       36 SETLIST                          R5 R6 7 [1]
       38 CALL                             R3 2 1
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R6 0 4
       47 MOVE                             R7 R1
       48 GETTABLEKS                       R8 R0 K2 ["session"]
       50 GETTABLEKS                       R8 R8 K6 ["expandAsync"]
       52 GETTABLEKS                       R9 R0 K2 ["session"]
       54 GETTABLEKS                       R9 R9 K7 ["unexpand"]
       56 GETTABLEKS                       R10 R0 K8 ["dragToExpand"]
       58 SETLIST                          R6 R7 4 [1]
       60 CALL                             R4 2 1
       61 GETUPVAL                         R5 1
       62 GETTABLEKS                       R5 R5 K9 ["useContext"]
       64 GETUPVAL                         R6 2
       65 GETTABLEKS                       R6 R6 K10 ["Context"]
       67 CALL                             R5 1 1
       68 GETTABLEKS                       R6 R1 K11 ["getBinding"]
       70 CALL                             R6 0 1
       71 NEWCLOSURE                       R8 P2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R5
       74 NAMECALL                         R6 R6 K12 ["map"]
       76 CALL                             R6 2 1
       77 GETUPVAL                         R7 1
       78 GETTABLEKS                       R7 R7 K13 ["useRef"]
       80 LOADNIL                          R8
       81 CALL                             R7 1 1
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R8 R8 K13 ["useRef"]
       85 LOADNIL                          R9
       86 CALL                             R8 1 1
       87 GETUPVAL                         R9 1
       88 GETTABLEKS                       R9 R9 K13 ["useRef"]
       90 LOADNIL                          R10
       91 CALL                             R9 1 1
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R10 R10 K13 ["useRef"]
       95 LOADNIL                          R11
       96 CALL                             R10 1 1
       97 GETUPVAL                         R11 4
       98 MOVE                             R12 R7
       99 CALL                             R11 1 1
      100 GETUPVAL                         R12 4
      101 MOVE                             R13 R8
      102 CALL                             R12 1 1
      103 GETUPVAL                         R13 4
      104 MOVE                             R14 R9
      105 CALL                             R13 1 1
      106 GETUPVAL                         R14 4
      107 MOVE                             R15 R10
      108 CALL                             R14 1 1
      109 GETUPVAL                         R15 4
      110 GETTABLEKS                       R16 R0 K14 ["textLabelRef"]
      112 CALL                             R15 1 1
      113 GETUPVAL                         R16 1
      114 GETTABLEKS                       R16 R16 K1 ["useCallback"]
      116 NEWCLOSURE                       R17 P3
      117 CAPTURE                          VAL R0
      118 CAPTURE                          UPVAL U5
      119 CAPTURE                          VAL R11
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R13
      122 CAPTURE                          VAL R14
      123 CAPTURE                          UPVAL U6
      124 CAPTURE                          VAL R15
      125 NEWTABLE                         R18 0 7
      127 GETTABLEKS                       R19 R0 K0 ["visibleNodeObservable"]
      129 GETTABLEKS                       R20 R0 K15 ["draggingTargetObservable"]
      131 MOVE                             R21 R11
      132 MOVE                             R22 R12
      133 MOVE                             R23 R13
      134 MOVE                             R24 R14
      135 MOVE                             R25 R15
      136 SETLIST                          R18 R19 7 [1]
      138 CALL                             R16 2 1
      139 GETUPVAL                         R17 7
      140 GETTABLEKS                       R17 R17 K16 ["useEffect"]
      142 MOVE                             R18 R1
      143 MOVE                             R19 R16
      144 NEWTABLE                         R20 0 1
      146 MOVE                             R21 R16
      147 SETLIST                          R20 R21 1 [1]
      149 CALL                             R17 3 0
      150 GETUPVAL                         R17 7
      151 GETTABLEKS                       R17 R17 K16 ["useEffect"]
      153 GETTABLEKS                       R18 R0 K15 ["draggingTargetObservable"]
      155 MOVE                             R19 R16
      156 NEWTABLE                         R20 0 1
      158 MOVE                             R21 R16
      159 SETLIST                          R20 R21 1 [1]
      161 CALL                             R17 3 0
      162 GETUPVAL                         R17 8
      163 CALL                             R17 0 1
      164 GETUPVAL                         R18 9
      165 LOADK                            R19 K17 ["Frame"]
      166 NEWTABLE                         R20 4 0
      168 LOADN                            R21 1
      169 SETTABLEKS                       R21 R20 K18 ["BackgroundTransparency"]
      171 GETTABLEKS                       R21 R1 K11 ["getBinding"]
      173 CALL                             R21 0 1
      174 DUPCLOSURE                       R23 K19 [PROTO_8]
      175 CAPTURE                          UPVAL U10
      176 NAMECALL                         R21 R21 K12 ["map"]
      178 CALL                             R21 2 1
      179 SETTABLEKS                       R21 R20 K20 ["Visible"]
      181 SETTABLEKS                       R7 R20 K21 ["ref"]
      183 GETUPVAL                         R21 1
      184 GETTABLEKS                       R21 R21 K22 ["Tag"]
      186 LOADK                            R22 K23 ["Explorer-ExplorerNodeRow X-FitX"]
      187 SETTABLE                         R22 R20 R21
      188 DUPTABLE                         R21 K25 [{"Contents"}]
      189 GETUPVAL                         R22 9
      190 LOADK                            R23 K17 ["Frame"]
      191 NEWTABLE                         R24 4 0
      193 LOADN                            R25 1
      194 SETTABLEKS                       R25 R24 K18 ["BackgroundTransparency"]
      196 MOVE                             R25 R17
      197 CALL                             R25 0 1
      198 SETTABLEKS                       R25 R24 K26 ["ZIndex"]
      200 GETUPVAL                         R25 1
      201 GETTABLEKS                       R25 R25 K22 ["Tag"]
      203 LOADK                            R26 K27 ["X-Row X-FitX"]
      204 SETTABLE                         R26 R24 R25
      205 DUPTABLE                         R25 K30 [{"IndentGuide", "Expand", "Contents"}]
      206 GETUPVAL                         R26 9
      207 GETUPVAL                         R27 11
      208 DUPTABLE                         R28 K32 [{"layoutOrder", "visibleNodeObservable"}]
      209 MOVE                             R29 R17
      210 CALL                             R29 0 1
      211 SETTABLEKS                       R29 R28 K31 ["layoutOrder"]
      213 GETTABLEKS                       R29 R0 K0 ["visibleNodeObservable"]
      215 SETTABLEKS                       R29 R28 K0 ["visibleNodeObservable"]
      217 CALL                             R26 2 1
      218 SETTABLEKS                       R26 R25 K28 ["IndentGuide"]
      220 GETUPVAL                         R26 9
      221 LOADK                            R27 K33 ["TextButton"]
      222 NEWTABLE                         R28 8 0
      224 MOVE                             R29 R17
      225 CALL                             R29 0 1
      226 SETTABLEKS                       R29 R28 K34 ["LayoutOrder"]
      228 GETUPVAL                         R29 1
      229 GETTABLEKS                       R29 R29 K35 ["Event"]
      231 GETTABLEKS                       R29 R29 K36 ["InputBegan"]
      233 SETTABLE                         R3 R28 R29
      234 GETUPVAL                         R29 1
      235 GETTABLEKS                       R29 R29 K35 ["Event"]
      237 GETTABLEKS                       R29 R29 K37 ["MouseEnter"]
      239 SETTABLE                         R4 R28 R29
      240 GETUPVAL                         R29 1
      241 GETTABLEKS                       R29 R29 K22 ["Tag"]
      243 LOADK                            R30 K38 ["X-Fill Explorer-Button Explorer-Square"]
      244 SETTABLE                         R30 R28 R29
      245 SETTABLEKS                       R8 R28 K21 ["ref"]
      247 GETUPVAL                         R29 9
      248 LOADK                            R30 K39 ["ImageLabel"]
      249 NEWTABLE                         R31 8 0
      251 GETIMPORT                        R32 K42 [Vector2.new]
      253 LOADK                            R33 K43 [0.5]
      254 LOADK                            R34 K43 [0.5]
      255 CALL                             R32 2 1
      256 SETTABLEKS                       R32 R31 K44 ["AnchorPoint"]
      258 GETIMPORT                        R32 K46 [UDim2.new]
      260 LOADN                            R33 0
      261 GETUPVAL                         R35 10
      262 GETTABLEKS                       R35 R35 K47 ["indentWidth"]
      264 GETUPVAL                         R37 10
      265 GETTABLEKS                       R37 R37 K49 ["indentLineWidth"]
      267 DIVK                             R36 R37 K48 [2]
      268 SUB                              R34 R35 R36
      269 LOADK                            R35 K43 [0.5]
      270 LOADN                            R36 0
      271 CALL                             R32 4 1
      272 SETTABLEKS                       R32 R31 K50 ["Position"]
      274 GETIMPORT                        R32 K52 [UDim2.fromOffset]
      276 LOADN                            R33 16
      277 LOADN                            R34 16
      278 CALL                             R32 2 1
      279 SETTABLEKS                       R32 R31 K53 ["Size"]
      281 SETTABLEKS                       R9 R31 K21 ["ref"]
      283 GETUPVAL                         R32 1
      284 GETTABLEKS                       R32 R32 K22 ["Tag"]
      286 LOADK                            R33 K54 ["Explorer-View Explorer-ArrowImage"]
      287 SETTABLE                         R33 R31 R32
      288 CALL                             R29 2 -1
      289 CALL                             R26 -1 1
      290 SETTABLEKS                       R26 R25 K29 ["Expand"]
      292 GETUPVAL                         R26 9
      293 LOADK                            R27 K17 ["Frame"]
      294 NEWTABLE                         R28 4 0
      296 LOADN                            R29 1
      297 SETTABLEKS                       R29 R28 K18 ["BackgroundTransparency"]
      299 MOVE                             R29 R17
      300 CALL                             R29 0 1
      301 SETTABLEKS                       R29 R28 K34 ["LayoutOrder"]
      303 GETUPVAL                         R29 1
      304 GETTABLEKS                       R29 R29 K22 ["Tag"]
      306 LOADK                            R30 K55 ["X-FitX Explorer-ShrinkX X-RowS X-Middle"]
      307 SETTABLE                         R30 R28 R29
      308 DUPTABLE                         R29 K58 [{"Icon", "Name"}]
      309 GETUPVAL                         R30 9
      310 LOADK                            R31 K39 ["ImageLabel"]
      311 NEWTABLE                         R32 16 0
      313 LOADN                            R33 1
      314 SETTABLEKS                       R33 R32 K18 ["BackgroundTransparency"]
      316 DUPCLOSURE                       R35 K59 [PROTO_9]
      317 NAMECALL                         R33 R6 K12 ["map"]
      319 CALL                             R33 2 1
      320 SETTABLEKS                       R33 R32 K60 ["Image"]
      322 DUPCLOSURE                       R35 K61 [PROTO_10]
      323 NAMECALL                         R33 R6 K12 ["map"]
      325 CALL                             R33 2 1
      326 SETTABLEKS                       R33 R32 K62 ["ImageRectOffset"]
      328 DUPCLOSURE                       R35 K63 [PROTO_11]
      329 NAMECALL                         R33 R6 K12 ["map"]
      331 CALL                             R33 2 1
      332 SETTABLEKS                       R33 R32 K64 ["ImageRectSize"]
      334 MOVE                             R33 R17
      335 CALL                             R33 0 1
      336 SETTABLEKS                       R33 R32 K34 ["LayoutOrder"]
      338 GETIMPORT                        R33 K68 [Enum.ScaleType.Tile]
      340 SETTABLEKS                       R33 R32 K66 ["ScaleType"]
      342 GETIMPORT                        R33 K52 [UDim2.fromOffset]
      344 GETUPVAL                         R34 10
      345 GETTABLEKS                       R34 R34 K69 ["iconSize"]
      347 GETUPVAL                         R35 10
      348 GETTABLEKS                       R35 R35 K69 ["iconSize"]
      350 CALL                             R33 2 1
      351 SETTABLEKS                       R33 R32 K53 ["Size"]
      353 SETTABLEKS                       R10 R32 K21 ["ref"]
      355 GETUPVAL                         R33 1
      356 GETTABLEKS                       R33 R33 K22 ["Tag"]
      358 LOADK                            R34 K70 ["data-testid=ExplorerNodeRow-Icon"]
      359 SETTABLE                         R34 R32 R33
      360 DUPTABLE                         R33 K72 [{"LoadingSpinner"}]
      361 GETUPVAL                         R34 12
      362 CALL                             R34 0 1
      363 JUMPIFNOT                        R34 ; [+10]
      364 GETUPVAL                         R34 9
      365 GETUPVAL                         R35 13
      366 DUPTABLE                         R36 K74 [{"clockBinding", "visibleNodeObservable"}]
      367 GETTABLEKS                       R37 R0 K73 ["clockBinding"]
      369 SETTABLEKS                       R37 R36 K73 ["clockBinding"]
      371 SETTABLEKS                       R1 R36 K0 ["visibleNodeObservable"]
      373 CALL                             R34 2 1
      374 SETTABLEKS                       R34 R33 K71 ["LoadingSpinner"]
      376 CALL                             R30 3 1
      377 SETTABLEKS                       R30 R29 K56 ["Icon"]
      379 GETUPVAL                         R30 9
      380 LOADK                            R31 K75 ["TextLabel"]
      381 NEWTABLE                         R32 16 0
      383 GETIMPORT                        R33 K78 [Enum.AutomaticSize.X]
      385 SETTABLEKS                       R33 R32 K76 ["AutomaticSize"]
      387 GETIMPORT                        R33 K46 [UDim2.new]
      389 LOADN                            R34 0
      390 GETUPVAL                         R35 10
      391 GETTABLEKS                       R35 R35 K79 ["minNameLabelWidth"]
      393 LOADN                            R36 1
      394 LOADN                            R37 0
      395 CALL                             R33 4 1
      396 SETTABLEKS                       R33 R32 K53 ["Size"]
      398 LOADN                            R33 1
      399 SETTABLEKS                       R33 R32 K18 ["BackgroundTransparency"]
      401 LOADB                            R33 1
      402 SETTABLEKS                       R33 R32 K80 ["ClipsDescendants"]
      404 MOVE                             R33 R17
      405 CALL                             R33 0 1
      406 SETTABLEKS                       R33 R32 K34 ["LayoutOrder"]
      408 GETIMPORT                        R33 K83 [Enum.TextXAlignment.Left]
      410 SETTABLEKS                       R33 R32 K81 ["TextXAlignment"]
      412 GETTABLEKS                       R33 R1 K11 ["getBinding"]
      414 CALL                             R33 0 1
      415 DUPCLOSURE                       R35 K84 [PROTO_12]
      416 CAPTURE                          UPVAL U14
      417 NAMECALL                         R33 R33 K12 ["map"]
      419 CALL                             R33 2 1
      420 SETTABLEKS                       R33 R32 K85 ["Text"]
      422 GETTABLEKS                       R34 R2 K86 ["enabled"]
      424 JUMPIFNOT                        R34 ; [+2]
      425 LOADN                            R33 1
      426 JUMP                             ; [+1]
      427 LOADNIL                          R33
      428 SETTABLEKS                       R33 R32 K87 ["TextTransparency"]
      430 LOADN                            R33 1
      431 SETTABLEKS                       R33 R32 K26 ["ZIndex"]
      433 GETTABLEKS                       R33 R0 K14 ["textLabelRef"]
      435 SETTABLEKS                       R33 R32 K21 ["ref"]
      437 GETUPVAL                         R33 1
      438 GETTABLEKS                       R33 R33 K22 ["Tag"]
      440 GETUPVAL                         R35 15
      441 CALL                             R35 0 1
      442 JUMPIFNOT                        R35 ; [+2]
      443 LOADK                            R34 K88 ["data-testid=ExplorerNodeRow-Name"]
      444 JUMP                             ; [+1]
      445 LOADK                            R34 K89 ["DEPRECATED_Explorer-Text-Size-14 data-testid=ExplorerNodeRow-Name"]
      446 SETTABLE                         R34 R32 R33
      447 CALL                             R30 2 1
      448 SETTABLEKS                       R30 R29 K57 ["Name"]
      450 CALL                             R26 3 1
      451 SETTABLEKS                       R26 R25 K24 ["Contents"]
      453 CALL                             R22 3 1
      454 SETTABLEKS                       R22 R21 K24 ["Contents"]
      456 CALL                             R18 3 -1
      457 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ClassIconContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["IndentGuide"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETIMPORT                        R5 K1 [script]
       34 GETTABLEKS                       R5 R5 K12 ["LoadingSpinner"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Util"]
       41 GETTABLEKS                       R6 R6 K13 ["Observable"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Parent"]
       48 GETTABLEKS                       R7 R7 K15 ["React"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R8 R0 K16 ["RpcTypes"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K9 ["Util"]
       60 GETTABLEKS                       R9 R9 K17 ["createNextOrder"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K5 [require]
       65 GETIMPORT                        R10 K1 [script]
       67 GETTABLEKS                       R10 R10 K18 ["getClassIcon"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K5 [require]
       72 GETTABLEKS                       R11 R0 K19 ["Flags"]
       74 GETTABLEKS                       R11 R11 K20 ["getFFlagDebugExplorerUniqueIdsAsNames"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K5 [require]
       79 GETTABLEKS                       R12 R0 K19 ["Flags"]
       81 GETTABLEKS                       R12 R12 K21 ["getFFlagExplorerStreaming"]
       83 CALL                             R11 1 1
       84 GETIMPORT                        R12 K5 [require]
       86 GETTABLEKS                       R13 R0 K19 ["Flags"]
       88 GETTABLEKS                       R13 R13 K22 ["getFFlagExplorerUseBuilderSans"]
       90 CALL                             R12 1 1
       91 GETIMPORT                        R13 K5 [require]
       93 GETTABLEKS                       R14 R0 K6 ["Components"]
       95 GETTABLEKS                       R14 R14 K23 ["ExplorerNodeRow"]
       97 GETTABLEKS                       R14 R14 K24 ["getIsIconEnabled"]
       99 CALL                             R13 1 1
      100 GETIMPORT                        R14 K5 [require]
      102 GETTABLEKS                       R15 R0 K9 ["Util"]
      104 GETTABLEKS                       R15 R15 K25 ["profile"]
      106 CALL                             R14 1 1
      107 GETIMPORT                        R15 K5 [require]
      109 GETTABLEKS                       R16 R0 K9 ["Util"]
      111 GETTABLEKS                       R16 R16 K26 ["setVisibleExplorerNodeTags"]
      113 CALL                             R15 1 1
      114 GETIMPORT                        R16 K5 [require]
      116 GETTABLEKS                       R17 R0 K27 ["Hooks"]
      118 GETTABLEKS                       R17 R17 K28 ["useDragAndDrop"]
      120 CALL                             R16 1 1
      121 GETIMPORT                        R17 K5 [require]
      123 GETTABLEKS                       R18 R0 K27 ["Hooks"]
      125 GETTABLEKS                       R18 R18 K29 ["useDragToExpand"]
      127 CALL                             R17 1 1
      128 GETIMPORT                        R18 K5 [require]
      130 GETTABLEKS                       R19 R0 K27 ["Hooks"]
      132 GETTABLEKS                       R19 R19 K30 ["useImperativeTagger"]
      134 CALL                             R18 1 1
      135 GETIMPORT                        R19 K5 [require]
      137 GETTABLEKS                       R20 R0 K27 ["Hooks"]
      139 GETTABLEKS                       R20 R20 K31 ["useRenameBoxActivity"]
      141 CALL                             R19 1 1
      142 GETIMPORT                        R20 K5 [require]
      144 GETTABLEKS                       R21 R0 K27 ["Hooks"]
      146 GETTABLEKS                       R21 R21 K32 ["useVisibleExplorerNodeRange"]
      148 CALL                             R20 1 1
      149 GETTABLEKS                       R21 R6 K33 ["createElement"]
      151 MOVE                             R22 R10
      152 CALL                             R22 0 1
      153 DUPCLOSURE                       R23 K34 [PROTO_0]
      154 DUPCLOSURE                       R24 K35 [PROTO_1]
      155 DUPCLOSURE                       R25 K36 [PROTO_2]
      156 CAPTURE                          VAL R13
      157 DUPCLOSURE                       R26 K37 [PROTO_3]
      158 CAPTURE                          VAL R13
      159 DUPCLOSURE                       R27 K38 [PROTO_13]
      160 CAPTURE                          VAL R19
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R1
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R21
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R11
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R12
      176 MOVE                             R28 R14
      177 MOVE                             R29 R27
      178 CALL                             R28 1 1
      179 MOVE                             R27 R28
      180 GETTABLEKS                       R28 R6 K39 ["memo"]
      182 MOVE                             R29 R27
      183 CALL                             R28 1 1
      184 MOVE                             R27 R28
      185 RETURN                           R27 1
