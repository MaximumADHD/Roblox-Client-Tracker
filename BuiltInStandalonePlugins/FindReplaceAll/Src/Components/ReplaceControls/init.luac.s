PROTO_0:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["disabled"]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R5 K1 ["Disabled"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R5
        6 CALL                             R3 2 0
        7 MOVE                             R3 R2
        8 LOADK                            R4 K2 ["hovered"]
        9 JUMPIF                           R0 ; [+3]
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADK                            R5 K3 ["Hover"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R5
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R2
        1 LOADK                            R4 K0 ["disabled"]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R5 K1 ["Disabled"]
        4 JUMP                             ; [+1]
        5 LOADNIL                          R5
        6 CALL                             R3 2 0
        7 MOVE                             R3 R2
        8 LOADK                            R4 K2 ["hovered"]
        9 JUMPIF                           R0 ; [+3]
       10 JUMPIFNOT                        R1 ; [+2]
       11 LOADK                            R5 K3 ["Hover"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R5
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["numAllResults"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 LOADN                            R2 0
        7 JUMPIFLE                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R2 R3 K2 ["enabled"]
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R3
       16 LOADK                            R5 K3 ["disabled"]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R6 K4 ["Disabled"]
       19 JUMP                             ; [+1]
       20 LOADNIL                          R6
       21 CALL                             R4 2 0
       22 MOVE                             R4 R3
       23 LOADK                            R5 K5 ["hovered"]
       24 JUMPIF                           R1 ; [+3]
       25 JUMPIFNOT                        R2 ; [+2]
       26 LOADK                            R6 K6 ["Hover"]
       27 JUMP                             ; [+1]
       28 LOADNIL                          R6
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selection"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 JUMPIFEQKNIL                     R0 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K2 ["enabled"]
       13 GETUPVAL                         R3 2
       14 MOVE                             R4 R3
       15 LOADK                            R5 K3 ["disabled"]
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADK                            R6 K4 ["Disabled"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R6
       20 CALL                             R4 2 0
       21 MOVE                             R4 R3
       22 LOADK                            R5 K5 ["hovered"]
       23 JUMPIF                           R1 ; [+3]
       24 JUMPIFNOT                        R2 ; [+2]
       25 LOADK                            R6 K6 ["Hover"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 CALL                             R4 2 0
       29 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["numAllResults"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["enable"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["numAllResults"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+5]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["disable"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["numAllResults"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 LOADN                            R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R0 R1 K2 ["onReplaceAllButtonClicked"]
       12 CALL                             R0 0 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R3 R4 K1 ["useRef"]
        9 LOADNIL                          R4
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R3
       13 CALL                             R4 1 1
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K1 ["useRef"]
       17 LOADNIL                          R6
       18 CALL                             R5 1 1
       19 GETUPVAL                         R6 3
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 GETUPVAL                         R8 4
       23 GETTABLEKS                       R7 R8 K2 ["useToggleState"]
       25 LOADB                            R8 0
       26 CALL                             R7 1 1
       27 GETUPVAL                         R9 4
       28 GETTABLEKS                       R8 R9 K2 ["useToggleState"]
       30 LOADB                            R9 0
       31 CALL                             R8 1 1
       32 GETUPVAL                         R10 2
       33 GETTABLEKS                       R9 R10 K3 ["useCallback"]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R4
       39 NEWTABLE                         R11 0 3
       41 GETTABLEKS                       R12 R0 K4 ["numAllResults"]
       43 MOVE                             R13 R7
       44 MOVE                             R14 R4
       45 SETLIST                          R11 R12 3 [1]
       47 CALL                             R9 2 1
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K3 ["useCallback"]
       51 NEWCLOSURE                       R11 P1
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R8
       54 CAPTURE                          VAL R6
       55 NEWTABLE                         R12 0 3
       57 GETTABLEKS                       R13 R0 K5 ["selection"]
       59 MOVE                             R14 R8
       60 MOVE                             R15 R6
       61 SETLIST                          R12 R13 3 [1]
       63 CALL                             R10 2 1
       64 GETUPVAL                         R12 5
       65 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       67 GETTABLEKS                       R12 R0 K4 ["numAllResults"]
       69 MOVE                             R13 R9
       70 NEWTABLE                         R14 0 1
       72 MOVE                             R15 R9
       73 SETLIST                          R14 R15 1 [1]
       75 CALL                             R11 3 0
       76 GETUPVAL                         R12 5
       77 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       79 GETTABLEKS                       R12 R0 K5 ["selection"]
       81 MOVE                             R13 R10
       82 NEWTABLE                         R14 0 1
       84 MOVE                             R15 R10
       85 SETLIST                          R14 R15 1 [1]
       87 CALL                             R11 3 0
       88 GETUPVAL                         R11 6
       89 LOADK                            R12 K7 ["Frame"]
       90 NEWTABLE                         R13 4 0
       92 GETTABLEKS                       R14 R0 K8 ["ZIndex"]
       94 SETTABLEKS                       R14 R13 K8 ["ZIndex"]
       96 GETIMPORT                        R14 K11 [UDim2.new]
       98 LOADN                            R15 1
       99 LOADN                            R16 0
      100 LOADN                            R17 0
      101 GETUPVAL                         R19 7
      102 GETTABLEKS                       R18 R19 K12 ["searchBarHeight"]
      104 CALL                             R14 4 1
      105 SETTABLEKS                       R14 R13 K13 ["Size"]
      107 GETUPVAL                         R15 2
      108 GETTABLEKS                       R14 R15 K14 ["Tag"]
      110 LOADK                            R15 K15 ["X-FitX X-Row X-Middle X-Right FindReplaceAll-ReplaceControls data-testid=ReplaceControlsFrame"]
      111 SETTABLE                         R15 R13 R14
      112 GETTABLEKS                       R14 R0 K16 ["Visible"]
      114 SETTABLEKS                       R14 R13 K16 ["Visible"]
      116 DUPTABLE                         R14 K20 [{"UISizeConstraint", "ReplaceButton", "ReplaceAllButton"}]
      117 GETUPVAL                         R16 2
      118 GETTABLEKS                       R15 R16 K21 ["createElement"]
      120 LOADK                            R16 K17 ["UISizeConstraint"]
      121 DUPTABLE                         R17 K23 [{"MinSize"}]
      122 GETIMPORT                        R18 K25 [Vector2.new]
      124 GETTABLEKS                       R21 R0 K26 ["xOffset"]
      126 GETUPVAL                         R23 7
      127 GETTABLEKS                       R22 R23 K27 ["minReplaceButtonWidth"]
      129 ADD                              R20 R21 R22
      130 GETUPVAL                         R22 7
      131 GETTABLEKS                       R21 R22 K28 ["minReplaceAllButtonWidth"]
      133 ADD                              R19 R20 R21
      134 GETUPVAL                         R21 7
      135 GETTABLEKS                       R20 R21 K12 ["searchBarHeight"]
      137 CALL                             R18 2 1
      138 SETTABLEKS                       R18 R17 K22 ["MinSize"]
      140 CALL                             R15 2 1
      141 SETTABLEKS                       R15 R14 K17 ["UISizeConstraint"]
      143 GETUPVAL                         R15 6
      144 LOADK                            R16 K29 ["TextButton"]
      145 NEWTABLE                         R17 8 0
      147 MOVE                             R18 R2
      148 CALL                             R18 0 1
      149 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      151 LOADK                            R20 K31 ["WidgetHeader"]
      152 LOADK                            R21 K32 ["Replace"]
      153 NAMECALL                         R18 R1 K33 ["getText"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K34 ["Text"]
      158 GETTABLEKS                       R20 R0 K5 ["selection"]
      160 GETTABLEKS                       R19 R20 K35 ["get"]
      162 CALL                             R19 0 1
      163 JUMPIFNOTEQKNIL                  R19 ; [+2]
      165 LOADB                            R18 0 +1
      166 LOADB                            R18 1
      167 SETTABLEKS                       R18 R17 K36 ["Active"]
      169 SETTABLEKS                       R5 R17 K37 ["ref"]
      171 GETUPVAL                         R20 2
      172 GETTABLEKS                       R19 R20 K38 ["Event"]
      174 GETTABLEKS                       R18 R19 K39 ["MouseEnter"]
      176 GETTABLEKS                       R19 R8 K40 ["enable"]
      178 SETTABLE                         R19 R17 R18
      179 GETUPVAL                         R20 2
      180 GETTABLEKS                       R19 R20 K38 ["Event"]
      182 GETTABLEKS                       R18 R19 K41 ["MouseLeave"]
      184 GETTABLEKS                       R19 R8 K42 ["disable"]
      186 SETTABLE                         R19 R17 R18
      187 GETUPVAL                         R20 2
      188 GETTABLEKS                       R19 R20 K38 ["Event"]
      190 GETTABLEKS                       R18 R19 K43 ["MouseButton1Down"]
      192 GETTABLEKS                       R19 R0 K44 ["onReplaceButtonClicked"]
      194 SETTABLE                         R19 R17 R18
      195 GETUPVAL                         R19 2
      196 GETTABLEKS                       R18 R19 K14 ["Tag"]
      198 LOADK                            R19 K45 ["X-FitX data-testid=ReplaceButton"]
      199 SETTABLE                         R19 R17 R18
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K18 ["ReplaceButton"]
      203 GETUPVAL                         R15 6
      204 LOADK                            R16 K29 ["TextButton"]
      205 NEWTABLE                         R17 8 0
      207 MOVE                             R18 R2
      208 CALL                             R18 0 1
      209 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      211 LOADK                            R20 K31 ["WidgetHeader"]
      212 LOADK                            R21 K46 ["ReplaceAll"]
      213 NAMECALL                         R18 R1 K33 ["getText"]
      215 CALL                             R18 3 1
      216 SETTABLEKS                       R18 R17 K34 ["Text"]
      218 SETTABLEKS                       R3 R17 K37 ["ref"]
      220 GETUPVAL                         R20 2
      221 GETTABLEKS                       R19 R20 K38 ["Event"]
      223 GETTABLEKS                       R18 R19 K39 ["MouseEnter"]
      225 NEWCLOSURE                       R19 P2
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R7
      228 SETTABLE                         R19 R17 R18
      229 GETUPVAL                         R20 2
      230 GETTABLEKS                       R19 R20 K38 ["Event"]
      232 GETTABLEKS                       R18 R19 K41 ["MouseLeave"]
      234 NEWCLOSURE                       R19 P3
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R7
      237 SETTABLE                         R19 R17 R18
      238 GETUPVAL                         R20 2
      239 GETTABLEKS                       R19 R20 K38 ["Event"]
      241 GETTABLEKS                       R18 R19 K47 ["MouseButton1Click"]
      243 NEWCLOSURE                       R19 P4
      244 CAPTURE                          VAL R0
      245 SETTABLE                         R19 R17 R18
      246 GETUPVAL                         R19 2
      247 GETTABLEKS                       R18 R19 K14 ["Tag"]
      249 LOADK                            R19 K48 ["X-FitX data-testid=ReplaceAllButton"]
      250 SETTABLE                         R19 R17 R18
      251 CALL                             R15 2 1
      252 SETTABLEKS                       R15 R14 K19 ["ReplaceAllButton"]
      254 CALL                             R11 3 -1
      255 RETURN                           R11 -1

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
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R9 R0 K12 ["Src"]
       36 GETTABLEKS                       R8 R9 K13 ["Util"]
       38 GETTABLEKS                       R7 R8 K14 ["Observable"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Resources"]
       47 GETTABLEKS                       R8 R9 K16 ["StyleConstants"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R11 R0 K6 ["Packages"]
       54 GETTABLEKS                       R10 R11 K8 ["ReactUtils"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R8 R9 K17 ["createNextOrder"]
       59 GETIMPORT                        R9 K5 [require]
       61 GETTABLEKS                       R12 R0 K12 ["Src"]
       63 GETTABLEKS                       R11 R12 K18 ["Hooks"]
       65 GETTABLEKS                       R10 R11 K19 ["useImperativeTagger"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R12 R0 K12 ["Src"]
       72 GETTABLEKS                       R11 R12 K20 ["Types"]
       74 CALL                             R10 1 1
       75 GETTABLEKS                       R11 R1 K21 ["createElement"]
       77 DUPCLOSURE                       R12 K22 [PROTO_0]
       78 DUPCLOSURE                       R13 K23 [PROTO_1]
       79 DUPCLOSURE                       R14 K24 [PROTO_7]
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R7
       88 RETURN                           R14 1
