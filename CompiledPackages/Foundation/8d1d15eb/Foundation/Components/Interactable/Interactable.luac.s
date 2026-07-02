PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Default"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+33]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["current"]
       12 JUMPIFEQKNIL                     R1 ; [+28]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K2 ["current"]
       17 LOADK                            R3 K3 ["BackgroundColor3"]
       18 NAMECALL                         R1 R1 K4 ["GetStyled"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K2 ["current"]
       24 LOADK                            R4 K5 ["BackgroundTransparency"]
       25 NAMECALL                         R2 R2 K4 ["GetStyled"]
       27 CALL                             R2 2 1
       28 GETUPVAL                         R3 3
       29 JUMPIFNOTEQ                      R1 R3 ; [+3]
       31 JUMPIFEQKN                       R2 K6 [0] ; [+9]
       33 GETUPVAL                         R3 4
       34 DUPTABLE                         R4 K9 [{"Color3", "Transparency"}]
       35 SETTABLEKS                       R1 R4 K7 ["Color3"]
       37 SETTABLEKS                       R2 R4 K8 ["Transparency"]
       39 SETTABLEKS                       R4 R3 K2 ["current"]
       41 GETUPVAL                         R1 5
       42 MOVE                             R2 R0
       43 CALL                             R1 1 0
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K10 ["onStateChanged"]
       47 JUMPIFEQKNIL                     R1 ; [+6]
       49 GETUPVAL                         R1 6
       50 GETTABLEKS                       R1 R1 K10 ["onStateChanged"]
       52 MOVE                             R2 R0
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["BackgroundColor3"]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["BackgroundTransparency"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Initialize"]
        3 JUMPIFEQ                         R0 R2 ; [+25]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["Default"]
        8 JUMPIFEQ                         R0 R2 ; [+20]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["Disabled"]
       13 JUMPIFEQ                         R0 R2 ; [+15]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K3 ["stateLayer"]
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K3 ["stateLayer"]
       22 GETTABLEKS                       R2 R2 K4 ["affordance"]
       24 GETUPVAL                         R3 2
       25 GETTABLEKS                       R3 R3 K5 ["None"]
       27 JUMPIFNOTEQ                      R2 R3 ; [+2]
       29 RETURN                           R1 1
       30 DUPTABLE                         R2 K8 [{"Color3", "Transparency"}]
       31 GETTABLEKS                       R3 R1 K6 ["Color3"]
       33 SETTABLEKS                       R3 R2 K6 ["Color3"]
       35 GETTABLEKS                       R3 R1 K7 ["Transparency"]
       37 SETTABLEKS                       R3 R2 K7 ["Transparency"]
       39 GETTABLEKS                       R3 R1 K6 ["Color3"]
       41 JUMPIFNOTEQKNIL                  R3 ; [+14]
       43 GETUPVAL                         R4 3
       44 GETTABLEKS                       R4 R4 K9 ["current"]
       46 JUMPIFNOT                        R4 ; [+6]
       47 GETUPVAL                         R3 3
       48 GETTABLEKS                       R3 R3 K9 ["current"]
       50 GETTABLEKS                       R3 R3 K6 ["Color3"]
       52 JUMP                             ; [+1]
       53 LOADNIL                          R3
       54 SETTABLEKS                       R3 R2 K6 ["Color3"]
       56 GETTABLEKS                       R3 R1 K7 ["Transparency"]
       58 JUMPIFNOTEQKNIL                  R3 ; [+14]
       60 GETUPVAL                         R4 3
       61 GETTABLEKS                       R4 R4 K9 ["current"]
       63 JUMPIFNOT                        R4 ; [+6]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K9 ["current"]
       67 GETTABLEKS                       R3 R3 K7 ["Transparency"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R3
       71 SETTABLEKS                       R3 R2 K7 ["Transparency"]
       73 GETUPVAL                         R3 4
       74 GETUPVAL                         R4 5
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K3 ["stateLayer"]
       78 MOVE                             R6 R0
       79 CALL                             R3 3 1
       80 GETUPVAL                         R4 6
       81 MOVE                             R5 R2
       82 MOVE                             R6 R3
       83 CALL                             R4 2 -1
       84 RETURN                           R4 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controlState"]
        3 GETTABLEKS                       R3 R0 K1 ["backgroundStyle"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isBinding"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 JUMPIFNOT                        R0 ; [+17]
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["joinBindings"]
        9 DUPTABLE                         R1 K4 [{"controlState", "backgroundStyle"}]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K2 ["controlState"]
       13 GETUPVAL                         R2 1
       14 SETTABLEKS                       R2 R1 K3 ["backgroundStyle"]
       16 CALL                             R0 1 1
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R0 R0 K5 ["map"]
       21 CALL                             R0 2 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 3
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          UPVAL U4
       26 CAPTURE                          UPVAL U1
       27 NAMECALL                         R0 R0 K5 ["map"]
       29 CALL                             R0 2 -1
       30 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Transparency"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R6 R2 K1 ["cursor"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R6 R6 K2 ["useBinding"]
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R7 R7 K3 ["Initialize"]
       21 CALL                             R6 1 2
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K0 ["useRef"]
       25 LOADNIL                          R9
       26 CALL                             R8 1 1
       27 GETUPVAL                         R9 2
       28 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       30 NEWCLOSURE                       R10 P0
       31 CAPTURE                          VAL R6
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U6
       35 CAPTURE                          VAL R8
       36 CAPTURE                          VAL R7
       37 CAPTURE                          VAL R2
       38 NEWTABLE                         R11 0 1
       40 GETTABLEKS                       R12 R2 K5 ["onStateChanged"]
       42 SETLIST                          R11 R12 1 [1]
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R12 0 2
       53 GETTABLEKS                       R13 R2 K7 ["BackgroundColor3"]
       55 GETTABLEKS                       R14 R2 K8 ["BackgroundTransparency"]
       57 SETLIST                          R12 R13 2 [1]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       63 NEWCLOSURE                       R12 P2
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U8
       67 CAPTURE                          VAL R8
       68 CAPTURE                          UPVAL U9
       69 CAPTURE                          VAL R4
       70 CAPTURE                          UPVAL U10
       71 NEWTABLE                         R13 0 4
       73 MOVE                             R14 R4
       74 GETTABLEKS                       R15 R2 K7 ["BackgroundColor3"]
       76 GETTABLEKS                       R16 R2 K8 ["BackgroundTransparency"]
       78 GETTABLEKS                       R17 R2 K9 ["stateLayer"]
       80 SETLIST                          R13 R14 4 [1]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 2
       84 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       86 NEWCLOSURE                       R13 P3
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          VAL R10
       89 CAPTURE                          UPVAL U2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R11
       92 NEWTABLE                         R14 0 3
       94 MOVE                             R15 R10
       95 MOVE                             R16 R6
       96 MOVE                             R17 R11
       97 SETLIST                          R14 R15 3 [1]
       99 CALL                             R12 2 1
      100 GETUPVAL                         R13 12
      101 MOVE                             R14 R3
      102 MOVE                             R15 R9
      103 CALL                             R13 2 1
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R14 R14 K10 ["useImperativeHandle"]
      107 MOVE                             R15 R1
      108 NEWCLOSURE                       R16 P4
      109 CAPTURE                          VAL R3
      110 NEWTABLE                         R17 0 0
      112 CALL                             R14 3 0
      113 NEWTABLE                         R14 8 0
      115 DUPCLOSURE                       R17 K11 [PROTO_7]
      116 NAMECALL                         R15 R12 K12 ["map"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K7 ["BackgroundColor3"]
      121 DUPCLOSURE                       R17 K13 [PROTO_8]
      122 NAMECALL                         R15 R12 K12 ["map"]
      124 CALL                             R15 2 1
      125 SETTABLEKS                       R15 R14 K8 ["BackgroundTransparency"]
      127 GETTABLEKS                       R16 R2 K14 ["isDisabled"]
      129 NOT                              R15 R16
      130 SETTABLEKS                       R15 R14 K15 ["Active"]
      132 GETTABLEKS                       R16 R2 K14 ["isDisabled"]
      134 NOT                              R15 R16
      135 SETTABLEKS                       R15 R14 K16 ["Interactable"]
      137 GETUPVAL                         R15 2
      138 GETTABLEKS                       R15 R15 K17 ["Event"]
      140 GETTABLEKS                       R15 R15 K18 ["Activated"]
      142 GETTABLEKS                       R17 R2 K14 ["isDisabled"]
      144 JUMPIF                           R17 ; [+3]
      145 GETTABLEKS                       R16 R2 K19 ["onActivated"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R16
      149 SETTABLE                         R16 R14 R15
      150 GETUPVAL                         R15 2
      151 GETTABLEKS                       R15 R15 K17 ["Event"]
      153 GETTABLEKS                       R15 R15 K20 ["MouseButton2Click"]
      155 GETTABLEKS                       R17 R2 K14 ["isDisabled"]
      157 JUMPIF                           R17 ; [+3]
      158 GETTABLEKS                       R16 R2 K21 ["onSecondaryActivated"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R16
      162 SETTABLE                         R16 R14 R15
      163 SETTABLEKS                       R13 R14 K22 ["ref"]
      165 GETTABLEKS                       R16 R2 K23 ["SelectionImageObject"]
      167 OR                               R15 R16 R5
      168 SETTABLEKS                       R15 R14 K23 ["SelectionImageObject"]
      170 GETUPVAL                         R15 13
      171 GETTABLEKS                       R15 R15 K24 ["union"]
      173 MOVE                             R16 R2
      174 MOVE                             R17 R14
      175 CALL                             R15 2 1
      176 LOADNIL                          R16
      177 SETTABLEKS                       R16 R15 K25 ["component"]
      179 LOADNIL                          R16
      180 SETTABLEKS                       R16 R15 K14 ["isDisabled"]
      182 LOADNIL                          R16
      183 SETTABLEKS                       R16 R15 K19 ["onActivated"]
      185 LOADNIL                          R16
      186 SETTABLEKS                       R16 R15 K21 ["onSecondaryActivated"]
      188 LOADNIL                          R16
      189 SETTABLEKS                       R16 R15 K5 ["onStateChanged"]
      191 LOADNIL                          R16
      192 SETTABLEKS                       R16 R15 K9 ["stateLayer"]
      194 LOADNIL                          R16
      195 SETTABLEKS                       R16 R15 K1 ["cursor"]
      197 GETUPVAL                         R16 2
      198 GETTABLEKS                       R16 R16 K26 ["createElement"]
      200 GETTABLEKS                       R17 R2 K25 ["component"]
      202 MOVE                             R18 R15
      203 CALL                             R16 2 -1
      204 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactIs"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R6 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Utility"]
       35 GETTABLEKS                       R7 R7 K13 ["blendColors"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R8 R8 K4 ["Parent"]
       44 GETTABLEKS                       R8 R8 K14 ["getOriginalBackgroundStyle"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETIMPORT                        R9 K1 [script]
       51 GETTABLEKS                       R9 R9 K4 ["Parent"]
       53 GETTABLEKS                       R9 R9 K15 ["getStateLayerStyle"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K6 [require]
       58 GETTABLEKS                       R10 R0 K16 ["Providers"]
       60 GETTABLEKS                       R10 R10 K17 ["Cursor"]
       62 GETTABLEKS                       R10 R10 K18 ["useCursor"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R11 R0 K12 ["Utility"]
       69 GETTABLEKS                       R11 R11 K19 ["Control"]
       71 GETTABLEKS                       R11 R11 K20 ["useGuiControlState"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K16 ["Providers"]
       78 GETTABLEKS                       R12 R12 K21 ["Style"]
       80 GETTABLEKS                       R12 R12 K22 ["useTokens"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R13 R0 K12 ["Utility"]
       87 GETTABLEKS                       R13 R13 K23 ["withDefaults"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K24 ["Enums"]
       94 GETTABLEKS                       R14 R14 K25 ["StateLayerAffordance"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K24 ["Enums"]
      101 GETTABLEKS                       R15 R15 K26 ["StateLayerMode"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K6 [require]
      106 GETTABLEKS                       R16 R0 K24 ["Enums"]
      108 GETTABLEKS                       R16 R16 K27 ["ControlState"]
      110 CALL                             R15 1 1
      111 DUPTABLE                         R16 K32 [{["component"] = "ImageButton", ["isDisabled"] = False}]
      112 GETIMPORT                        R17 K35 [Color3.fromRGB]
      114 LOADN                            R18 163
      115 LOADN                            R19 162
      116 LOADN                            R20 165
      117 CALL                             R17 3 1
      118 DUPCLOSURE                       R18 K36 [PROTO_9]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R3
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R2
      133 GETTABLEKS                       R19 R3 K37 ["memo"]
      135 GETTABLEKS                       R20 R3 K38 ["forwardRef"]
      137 MOVE                             R21 R18
      138 CALL                             R20 1 -1
      139 CALL                             R19 -1 -1
      140 RETURN                           R19 -1
