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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getClassIconTint"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["theme"]
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["datum"]
        2 GETTABLEKS                       R2 R2 K1 ["id"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["nilId"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Image"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["ImageRectOffset"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["ImageRectSize"]
        2 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+5]
        2 GETTABLEKS                       R1 R0 K0 ["datum"]
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 RETURN                           R1 1
        7 GETTABLEKS                       R1 R0 K0 ["datum"]
        9 GETTABLEKS                       R1 R1 K2 ["name"]
       11 RETURN                           R1 1

PROTO_14:
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
       77 GETUPVAL                         R8 4
       78 JUMPIFNOT                        R8 ; [+8]
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R7 R7 K9 ["useContext"]
       82 GETUPVAL                         R8 5
       83 GETTABLEKS                       R8 R8 K10 ["Context"]
       85 CALL                             R7 1 1
       86 JUMP                             ; [+1]
       87 LOADNIL                          R7
       88 GETUPVAL                         R9 4
       89 JUMPIFNOT                        R9 ; [+10]
       90 GETTABLEKS                       R8 R1 K11 ["getBinding"]
       92 CALL                             R8 0 1
       93 NEWCLOSURE                       R10 P3
       94 CAPTURE                          UPVAL U6
       95 CAPTURE                          VAL R7
       96 NAMECALL                         R8 R8 K12 ["map"]
       98 CALL                             R8 2 1
       99 JUMP                             ; [+1]
      100 LOADNIL                          R8
      101 GETUPVAL                         R9 1
      102 GETTABLEKS                       R9 R9 K13 ["useRef"]
      104 LOADNIL                          R10
      105 CALL                             R9 1 1
      106 GETUPVAL                         R10 1
      107 GETTABLEKS                       R10 R10 K13 ["useRef"]
      109 LOADNIL                          R11
      110 CALL                             R10 1 1
      111 GETUPVAL                         R11 1
      112 GETTABLEKS                       R11 R11 K13 ["useRef"]
      114 LOADNIL                          R12
      115 CALL                             R11 1 1
      116 GETUPVAL                         R12 1
      117 GETTABLEKS                       R12 R12 K13 ["useRef"]
      119 LOADNIL                          R13
      120 CALL                             R12 1 1
      121 GETUPVAL                         R13 7
      122 MOVE                             R14 R9
      123 CALL                             R13 1 1
      124 GETUPVAL                         R14 7
      125 MOVE                             R15 R10
      126 CALL                             R14 1 1
      127 GETUPVAL                         R15 7
      128 MOVE                             R16 R11
      129 CALL                             R15 1 1
      130 GETUPVAL                         R16 7
      131 MOVE                             R17 R12
      132 CALL                             R16 1 1
      133 GETUPVAL                         R17 7
      134 GETTABLEKS                       R18 R0 K14 ["textLabelRef"]
      136 CALL                             R17 1 1
      137 GETUPVAL                         R18 1
      138 GETTABLEKS                       R18 R18 K1 ["useCallback"]
      140 NEWCLOSURE                       R19 P4
      141 CAPTURE                          VAL R0
      142 CAPTURE                          UPVAL U8
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R16
      147 CAPTURE                          UPVAL U9
      148 CAPTURE                          VAL R17
      149 NEWTABLE                         R20 0 7
      151 GETTABLEKS                       R21 R0 K0 ["visibleNodeObservable"]
      153 GETTABLEKS                       R22 R0 K15 ["draggingTargetObservable"]
      155 MOVE                             R23 R13
      156 MOVE                             R24 R14
      157 MOVE                             R25 R15
      158 MOVE                             R26 R16
      159 MOVE                             R27 R17
      160 SETLIST                          R20 R21 7 [1]
      162 CALL                             R18 2 1
      163 GETUPVAL                         R19 10
      164 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      166 MOVE                             R20 R1
      167 MOVE                             R21 R18
      168 NEWTABLE                         R22 0 1
      170 MOVE                             R23 R18
      171 SETLIST                          R22 R23 1 [1]
      173 CALL                             R19 3 0
      174 GETUPVAL                         R19 10
      175 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      177 GETTABLEKS                       R20 R0 K15 ["draggingTargetObservable"]
      179 MOVE                             R21 R18
      180 NEWTABLE                         R22 0 1
      182 MOVE                             R23 R18
      183 SETLIST                          R22 R23 1 [1]
      185 CALL                             R19 3 0
      186 GETUPVAL                         R19 11
      187 CALL                             R19 0 1
      188 GETUPVAL                         R20 12
      189 LOADK                            R21 K17 ["Frame"]
      190 NEWTABLE                         R22 4 0
      192 LOADN                            R23 1
      193 SETTABLEKS                       R23 R22 K18 ["BackgroundTransparency"]
      195 GETTABLEKS                       R23 R1 K11 ["getBinding"]
      197 CALL                             R23 0 1
      198 DUPCLOSURE                       R25 K19 [PROTO_9]
      199 CAPTURE                          UPVAL U13
      200 NAMECALL                         R23 R23 K12 ["map"]
      202 CALL                             R23 2 1
      203 SETTABLEKS                       R23 R22 K20 ["Visible"]
      205 SETTABLEKS                       R9 R22 K21 ["ref"]
      207 GETUPVAL                         R23 1
      208 GETTABLEKS                       R23 R23 K22 ["Tag"]
      210 LOADK                            R24 K23 ["Explorer-ExplorerNodeRow X-FitX"]
      211 SETTABLE                         R24 R22 R23
      212 DUPTABLE                         R23 K25 [{"Contents"}]
      213 GETUPVAL                         R24 12
      214 LOADK                            R25 K17 ["Frame"]
      215 NEWTABLE                         R26 4 0
      217 LOADN                            R27 1
      218 SETTABLEKS                       R27 R26 K18 ["BackgroundTransparency"]
      220 MOVE                             R27 R19
      221 CALL                             R27 0 1
      222 SETTABLEKS                       R27 R26 K26 ["ZIndex"]
      224 GETUPVAL                         R27 1
      225 GETTABLEKS                       R27 R27 K22 ["Tag"]
      227 LOADK                            R28 K27 ["X-Row X-FitX"]
      228 SETTABLE                         R28 R26 R27
      229 DUPTABLE                         R27 K30 [{"IndentGuide", "Expand", "Contents"}]
      230 GETUPVAL                         R28 12
      231 GETUPVAL                         R29 14
      232 DUPTABLE                         R30 K32 [{"layoutOrder", "visibleNodeObservable"}]
      233 MOVE                             R31 R19
      234 CALL                             R31 0 1
      235 SETTABLEKS                       R31 R30 K31 ["layoutOrder"]
      237 GETTABLEKS                       R31 R0 K0 ["visibleNodeObservable"]
      239 SETTABLEKS                       R31 R30 K0 ["visibleNodeObservable"]
      241 CALL                             R28 2 1
      242 SETTABLEKS                       R28 R27 K28 ["IndentGuide"]
      244 GETUPVAL                         R28 12
      245 LOADK                            R29 K33 ["TextButton"]
      246 NEWTABLE                         R30 8 0
      248 MOVE                             R31 R19
      249 CALL                             R31 0 1
      250 SETTABLEKS                       R31 R30 K34 ["LayoutOrder"]
      252 GETUPVAL                         R31 1
      253 GETTABLEKS                       R31 R31 K35 ["Event"]
      255 GETTABLEKS                       R31 R31 K36 ["InputBegan"]
      257 SETTABLE                         R3 R30 R31
      258 GETUPVAL                         R31 1
      259 GETTABLEKS                       R31 R31 K35 ["Event"]
      261 GETTABLEKS                       R31 R31 K37 ["MouseEnter"]
      263 SETTABLE                         R4 R30 R31
      264 GETUPVAL                         R31 1
      265 GETTABLEKS                       R31 R31 K22 ["Tag"]
      267 LOADK                            R32 K38 ["X-Fill Explorer-Button Explorer-Square"]
      268 SETTABLE                         R32 R30 R31
      269 SETTABLEKS                       R10 R30 K21 ["ref"]
      271 GETUPVAL                         R31 12
      272 LOADK                            R32 K39 ["ImageLabel"]
      273 NEWTABLE                         R33 8 0
      275 GETIMPORT                        R34 K42 [Vector2.new]
      277 LOADK                            R35 K43 [0.5]
      278 LOADK                            R36 K43 [0.5]
      279 CALL                             R34 2 1
      280 SETTABLEKS                       R34 R33 K44 ["AnchorPoint"]
      282 GETIMPORT                        R34 K46 [UDim2.new]
      284 LOADN                            R35 0
      285 GETUPVAL                         R37 13
      286 GETTABLEKS                       R37 R37 K47 ["indentWidth"]
      288 GETUPVAL                         R39 13
      289 GETTABLEKS                       R39 R39 K49 ["indentLineWidth"]
      291 DIVK                             R38 R39 K48 [2]
      292 SUB                              R36 R37 R38
      293 LOADK                            R37 K43 [0.5]
      294 LOADN                            R38 0
      295 CALL                             R34 4 1
      296 SETTABLEKS                       R34 R33 K50 ["Position"]
      298 GETIMPORT                        R34 K52 [UDim2.fromOffset]
      300 LOADN                            R35 16
      301 LOADN                            R36 16
      302 CALL                             R34 2 1
      303 SETTABLEKS                       R34 R33 K53 ["Size"]
      305 SETTABLEKS                       R11 R33 K21 ["ref"]
      307 GETUPVAL                         R34 1
      308 GETTABLEKS                       R34 R34 K22 ["Tag"]
      310 LOADK                            R35 K54 ["Explorer-View Explorer-ArrowImage"]
      311 SETTABLE                         R35 R33 R34
      312 CALL                             R31 2 -1
      313 CALL                             R28 -1 1
      314 SETTABLEKS                       R28 R27 K29 ["Expand"]
      316 GETUPVAL                         R28 12
      317 LOADK                            R29 K17 ["Frame"]
      318 NEWTABLE                         R30 4 0
      320 LOADN                            R31 1
      321 SETTABLEKS                       R31 R30 K18 ["BackgroundTransparency"]
      323 MOVE                             R31 R19
      324 CALL                             R31 0 1
      325 SETTABLEKS                       R31 R30 K34 ["LayoutOrder"]
      327 GETUPVAL                         R31 1
      328 GETTABLEKS                       R31 R31 K22 ["Tag"]
      330 LOADK                            R32 K55 ["X-FitX Explorer-ShrinkX X-RowS X-Middle"]
      331 SETTABLE                         R32 R30 R31
      332 DUPTABLE                         R31 K58 [{"Icon", "Name"}]
      333 GETUPVAL                         R32 12
      334 LOADK                            R33 K39 ["ImageLabel"]
      335 NEWTABLE                         R34 16 0
      337 LOADN                            R35 1
      338 SETTABLEKS                       R35 R34 K18 ["BackgroundTransparency"]
      340 DUPCLOSURE                       R37 K59 [PROTO_10]
      341 NAMECALL                         R35 R6 K12 ["map"]
      343 CALL                             R35 2 1
      344 SETTABLEKS                       R35 R34 K60 ["Image"]
      346 DUPCLOSURE                       R37 K61 [PROTO_11]
      347 NAMECALL                         R35 R6 K12 ["map"]
      349 CALL                             R35 2 1
      350 SETTABLEKS                       R35 R34 K62 ["ImageRectOffset"]
      352 DUPCLOSURE                       R37 K63 [PROTO_12]
      353 NAMECALL                         R35 R6 K12 ["map"]
      355 CALL                             R35 2 1
      356 SETTABLEKS                       R35 R34 K64 ["ImageRectSize"]
      358 SETTABLEKS                       R8 R34 K65 ["ImageColor3"]
      360 MOVE                             R35 R19
      361 CALL                             R35 0 1
      362 SETTABLEKS                       R35 R34 K34 ["LayoutOrder"]
      364 GETIMPORT                        R35 K69 [Enum.ScaleType.Tile]
      366 SETTABLEKS                       R35 R34 K67 ["ScaleType"]
      368 GETIMPORT                        R35 K52 [UDim2.fromOffset]
      370 GETUPVAL                         R36 13
      371 GETTABLEKS                       R36 R36 K70 ["iconSize"]
      373 GETUPVAL                         R37 13
      374 GETTABLEKS                       R37 R37 K70 ["iconSize"]
      376 CALL                             R35 2 1
      377 SETTABLEKS                       R35 R34 K53 ["Size"]
      379 SETTABLEKS                       R12 R34 K21 ["ref"]
      381 GETUPVAL                         R35 1
      382 GETTABLEKS                       R35 R35 K22 ["Tag"]
      384 LOADK                            R36 K71 ["data-testid=ExplorerNodeRow-Icon"]
      385 SETTABLE                         R36 R34 R35
      386 DUPTABLE                         R35 K73 [{"LoadingSpinner"}]
      387 GETUPVAL                         R36 15
      388 CALL                             R36 0 1
      389 JUMPIFNOT                        R36 ; [+10]
      390 GETUPVAL                         R36 12
      391 GETUPVAL                         R37 16
      392 DUPTABLE                         R38 K75 [{"clockBinding", "visibleNodeObservable"}]
      393 GETTABLEKS                       R39 R0 K74 ["clockBinding"]
      395 SETTABLEKS                       R39 R38 K74 ["clockBinding"]
      397 SETTABLEKS                       R1 R38 K0 ["visibleNodeObservable"]
      399 CALL                             R36 2 1
      400 SETTABLEKS                       R36 R35 K72 ["LoadingSpinner"]
      402 CALL                             R32 3 1
      403 SETTABLEKS                       R32 R31 K56 ["Icon"]
      405 GETUPVAL                         R32 12
      406 LOADK                            R33 K76 ["TextLabel"]
      407 NEWTABLE                         R34 16 0
      409 GETIMPORT                        R35 K79 [Enum.AutomaticSize.X]
      411 SETTABLEKS                       R35 R34 K77 ["AutomaticSize"]
      413 GETIMPORT                        R35 K46 [UDim2.new]
      415 LOADN                            R36 0
      416 GETUPVAL                         R37 13
      417 GETTABLEKS                       R37 R37 K80 ["minNameLabelWidth"]
      419 LOADN                            R38 1
      420 LOADN                            R39 0
      421 CALL                             R35 4 1
      422 SETTABLEKS                       R35 R34 K53 ["Size"]
      424 LOADN                            R35 1
      425 SETTABLEKS                       R35 R34 K18 ["BackgroundTransparency"]
      427 LOADB                            R35 1
      428 SETTABLEKS                       R35 R34 K81 ["ClipsDescendants"]
      430 MOVE                             R35 R19
      431 CALL                             R35 0 1
      432 SETTABLEKS                       R35 R34 K34 ["LayoutOrder"]
      434 GETIMPORT                        R35 K84 [Enum.TextXAlignment.Left]
      436 SETTABLEKS                       R35 R34 K82 ["TextXAlignment"]
      438 GETTABLEKS                       R35 R1 K11 ["getBinding"]
      440 CALL                             R35 0 1
      441 DUPCLOSURE                       R37 K85 [PROTO_13]
      442 CAPTURE                          UPVAL U17
      443 NAMECALL                         R35 R35 K12 ["map"]
      445 CALL                             R35 2 1
      446 SETTABLEKS                       R35 R34 K86 ["Text"]
      448 GETTABLEKS                       R36 R2 K87 ["enabled"]
      450 JUMPIFNOT                        R36 ; [+2]
      451 LOADN                            R35 1
      452 JUMP                             ; [+1]
      453 LOADNIL                          R35
      454 SETTABLEKS                       R35 R34 K88 ["TextTransparency"]
      456 LOADN                            R35 1
      457 SETTABLEKS                       R35 R34 K26 ["ZIndex"]
      459 GETTABLEKS                       R35 R0 K14 ["textLabelRef"]
      461 SETTABLEKS                       R35 R34 K21 ["ref"]
      463 GETUPVAL                         R35 1
      464 GETTABLEKS                       R35 R35 K22 ["Tag"]
      466 GETUPVAL                         R37 18
      467 CALL                             R37 0 1
      468 JUMPIFNOT                        R37 ; [+2]
      469 LOADK                            R36 K89 ["data-testid=ExplorerNodeRow-Name"]
      470 JUMP                             ; [+1]
      471 LOADK                            R36 K90 ["DEPRECATED_Explorer-Text-Size-14 data-testid=ExplorerNodeRow-Name"]
      472 SETTABLE                         R36 R34 R35
      473 CALL                             R32 2 1
      474 SETTABLEKS                       R32 R31 K57 ["Name"]
      476 CALL                             R28 3 1
      477 SETTABLEKS                       R28 R27 K24 ["Contents"]
      479 CALL                             R24 3 1
      480 SETTABLEKS                       R24 R23 K24 ["Contents"]
      482 CALL                             R20 3 -1
      483 RETURN                           R20 -1

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
       18 GETTABLEKS                       R3 R0 K6 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["ExplorerNodeRow"]
       22 GETTABLEKS                       R3 R3 K10 ["ClassIconTint"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K13 ["IndentGuide"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETIMPORT                        R6 K1 [script]
       43 GETTABLEKS                       R6 R6 K14 ["LoadingSpinner"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K15 ["Observable"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K16 ["Parent"]
       57 GETTABLEKS                       R8 R8 K17 ["React"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K5 [require]
       62 GETTABLEKS                       R9 R0 K18 ["RpcTypes"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R0 K6 ["Components"]
       69 GETTABLEKS                       R10 R10 K7 ["Contexts"]
       71 GETTABLEKS                       R10 R10 K19 ["ThemeContext"]
       73 CALL                             R9 1 1
       74 GETIMPORT                        R10 K5 [require]
       76 GETTABLEKS                       R11 R0 K11 ["Util"]
       78 GETTABLEKS                       R11 R11 K20 ["createNextOrder"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K5 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K21 ["getClassIcon"]
       87 CALL                             R11 1 1
       88 GETIMPORT                        R12 K5 [require]
       90 GETTABLEKS                       R13 R0 K22 ["Flags"]
       92 GETTABLEKS                       R13 R13 K23 ["getEngineFeatureFolderIconTint"]
       94 CALL                             R12 1 1
       95 GETIMPORT                        R13 K5 [require]
       97 GETTABLEKS                       R14 R0 K22 ["Flags"]
       99 GETTABLEKS                       R14 R14 K24 ["getFFlagDebugExplorerUniqueIdsAsNames"]
      101 CALL                             R13 1 1
      102 GETIMPORT                        R14 K5 [require]
      104 GETTABLEKS                       R15 R0 K22 ["Flags"]
      106 GETTABLEKS                       R15 R15 K25 ["getFFlagExplorerStreaming"]
      108 CALL                             R14 1 1
      109 GETIMPORT                        R15 K5 [require]
      111 GETTABLEKS                       R16 R0 K22 ["Flags"]
      113 GETTABLEKS                       R16 R16 K26 ["getFFlagExplorerUseBuilderSans"]
      115 CALL                             R15 1 1
      116 GETIMPORT                        R16 K5 [require]
      118 GETTABLEKS                       R17 R0 K6 ["Components"]
      120 GETTABLEKS                       R17 R17 K9 ["ExplorerNodeRow"]
      122 GETTABLEKS                       R17 R17 K27 ["getIsIconEnabled"]
      124 CALL                             R16 1 1
      125 GETIMPORT                        R17 K5 [require]
      127 GETTABLEKS                       R18 R0 K11 ["Util"]
      129 GETTABLEKS                       R18 R18 K28 ["profile"]
      131 CALL                             R17 1 1
      132 GETIMPORT                        R18 K5 [require]
      134 GETTABLEKS                       R19 R0 K11 ["Util"]
      136 GETTABLEKS                       R19 R19 K29 ["setVisibleExplorerNodeTags"]
      138 CALL                             R18 1 1
      139 GETIMPORT                        R19 K5 [require]
      141 GETTABLEKS                       R20 R0 K30 ["Hooks"]
      143 GETTABLEKS                       R20 R20 K31 ["useDragAndDrop"]
      145 CALL                             R19 1 1
      146 GETIMPORT                        R20 K5 [require]
      148 GETTABLEKS                       R21 R0 K30 ["Hooks"]
      150 GETTABLEKS                       R21 R21 K32 ["useDragToExpand"]
      152 CALL                             R20 1 1
      153 GETIMPORT                        R21 K5 [require]
      155 GETTABLEKS                       R22 R0 K30 ["Hooks"]
      157 GETTABLEKS                       R22 R22 K33 ["useImperativeTagger"]
      159 CALL                             R21 1 1
      160 GETIMPORT                        R22 K5 [require]
      162 GETTABLEKS                       R23 R0 K30 ["Hooks"]
      164 GETTABLEKS                       R23 R23 K34 ["useRenameBoxActivity"]
      166 CALL                             R22 1 1
      167 GETIMPORT                        R23 K5 [require]
      169 GETTABLEKS                       R24 R0 K30 ["Hooks"]
      171 GETTABLEKS                       R24 R24 K35 ["useVisibleExplorerNodeRange"]
      173 CALL                             R23 1 1
      174 GETTABLEKS                       R24 R7 K36 ["createElement"]
      176 MOVE                             R25 R13
      177 CALL                             R25 0 1
      178 MOVE                             R26 R12
      179 CALL                             R26 0 1
      180 DUPCLOSURE                       R27 K37 [PROTO_0]
      181 DUPCLOSURE                       R28 K38 [PROTO_1]
      182 DUPCLOSURE                       R29 K39 [PROTO_2]
      183 CAPTURE                          VAL R16
      184 DUPCLOSURE                       R30 K40 [PROTO_3]
      185 CAPTURE                          VAL R16
      186 DUPCLOSURE                       R31 K41 [PROTO_14]
      187 CAPTURE                          VAL R22
      188 CAPTURE                          VAL R7
      189 CAPTURE                          VAL R1
      190 CAPTURE                          VAL R11
      191 CAPTURE                          VAL R26
      192 CAPTURE                          VAL R9
      193 CAPTURE                          VAL R2
      194 CAPTURE                          VAL R21
      195 CAPTURE                          VAL R18
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R6
      198 CAPTURE                          VAL R10
      199 CAPTURE                          VAL R24
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R4
      202 CAPTURE                          VAL R14
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R25
      205 CAPTURE                          VAL R15
      206 MOVE                             R32 R17
      207 MOVE                             R33 R31
      208 CALL                             R32 1 1
      209 MOVE                             R31 R32
      210 GETTABLEKS                       R32 R7 K42 ["memo"]
      212 MOVE                             R33 R31
      213 CALL                             R32 1 1
      214 MOVE                             R31 R32
      215 RETURN                           R31 1
