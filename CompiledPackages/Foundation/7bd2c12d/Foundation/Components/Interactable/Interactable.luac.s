PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Default"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+53]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K2 ["current"]
       12 JUMPIFEQKNIL                     R1 ; [+48]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K3 ["FoundationDisableStylingPolyfill"]
       17 JUMPIFNOT                        R2 ; [+8]
       18 GETUPVAL                         R1 2
       19 GETTABLEKS                       R1 R1 K2 ["current"]
       21 LOADK                            R3 K4 ["BackgroundColor3"]
       22 NAMECALL                         R1 R1 K5 ["GetStyled"]
       24 CALL                             R1 2 1
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R1 2
       27 GETTABLEKS                       R1 R1 K2 ["current"]
       29 GETTABLEKS                       R1 R1 K4 ["BackgroundColor3"]
       31 GETUPVAL                         R3 3
       32 GETTABLEKS                       R3 R3 K3 ["FoundationDisableStylingPolyfill"]
       34 JUMPIFNOT                        R3 ; [+8]
       35 GETUPVAL                         R2 2
       36 GETTABLEKS                       R2 R2 K2 ["current"]
       38 LOADK                            R4 K6 ["BackgroundTransparency"]
       39 NAMECALL                         R2 R2 K5 ["GetStyled"]
       41 CALL                             R2 2 1
       42 JUMP                             ; [+5]
       43 GETUPVAL                         R2 2
       44 GETTABLEKS                       R2 R2 K2 ["current"]
       46 GETTABLEKS                       R2 R2 K6 ["BackgroundTransparency"]
       48 GETUPVAL                         R3 4
       49 JUMPIFNOTEQ                      R1 R3 ; [+3]
       51 JUMPIFEQKN                       R2 K7 [0] ; [+9]
       53 GETUPVAL                         R3 5
       54 DUPTABLE                         R4 K10 [{"Color3", "Transparency"}]
       55 SETTABLEKS                       R1 R4 K8 ["Color3"]
       57 SETTABLEKS                       R2 R4 K9 ["Transparency"]
       59 SETTABLEKS                       R4 R3 K2 ["current"]
       61 GETUPVAL                         R1 6
       62 MOVE                             R2 R0
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 7
       65 GETTABLEKS                       R1 R1 K11 ["onStateChanged"]
       67 JUMPIFEQKNIL                     R1 ; [+6]
       69 GETUPVAL                         R1 7
       70 GETTABLEKS                       R1 R1 K11 ["onStateChanged"]
       72 MOVE                             R2 R0
       73 CALL                             R1 1 0
       74 RETURN                           R0 0

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
       35 CAPTURE                          UPVAL U7
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R7
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R11 0 1
       41 GETTABLEKS                       R12 R2 K5 ["onStateChanged"]
       43 SETLIST                          R11 R12 1 [1]
       45 CALL                             R9 2 1
       46 GETUPVAL                         R10 2
       47 GETTABLEKS                       R10 R10 K6 ["useMemo"]
       49 NEWCLOSURE                       R11 P1
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R2
       52 NEWTABLE                         R12 0 2
       54 GETTABLEKS                       R13 R2 K7 ["BackgroundColor3"]
       56 GETTABLEKS                       R14 R2 K8 ["BackgroundTransparency"]
       58 SETLIST                          R12 R13 2 [1]
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R11 R11 K4 ["useCallback"]
       64 NEWCLOSURE                       R12 P2
       65 CAPTURE                          UPVAL U5
       66 CAPTURE                          VAL R2
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U11
       72 NEWTABLE                         R13 0 4
       74 MOVE                             R14 R4
       75 GETTABLEKS                       R15 R2 K7 ["BackgroundColor3"]
       77 GETTABLEKS                       R16 R2 K8 ["BackgroundTransparency"]
       79 GETTABLEKS                       R17 R2 K9 ["stateLayer"]
       81 SETLIST                          R13 R14 4 [1]
       83 CALL                             R11 2 1
       84 GETUPVAL                         R12 2
       85 GETTABLEKS                       R12 R12 K6 ["useMemo"]
       87 NEWCLOSURE                       R13 P3
       88 CAPTURE                          UPVAL U12
       89 CAPTURE                          VAL R10
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R11
       93 NEWTABLE                         R14 0 3
       95 MOVE                             R15 R10
       96 MOVE                             R16 R6
       97 MOVE                             R17 R11
       98 SETLIST                          R14 R15 3 [1]
      100 CALL                             R12 2 1
      101 GETUPVAL                         R13 13
      102 MOVE                             R14 R3
      103 MOVE                             R15 R9
      104 CALL                             R13 2 1
      105 GETUPVAL                         R14 2
      106 GETTABLEKS                       R14 R14 K10 ["useImperativeHandle"]
      108 MOVE                             R15 R1
      109 NEWCLOSURE                       R16 P4
      110 CAPTURE                          VAL R3
      111 NEWTABLE                         R17 0 0
      113 CALL                             R14 3 0
      114 NEWTABLE                         R14 8 0
      116 DUPCLOSURE                       R17 K11 [PROTO_7]
      117 NAMECALL                         R15 R12 K12 ["map"]
      119 CALL                             R15 2 1
      120 SETTABLEKS                       R15 R14 K7 ["BackgroundColor3"]
      122 DUPCLOSURE                       R17 K13 [PROTO_8]
      123 NAMECALL                         R15 R12 K12 ["map"]
      125 CALL                             R15 2 1
      126 SETTABLEKS                       R15 R14 K8 ["BackgroundTransparency"]
      128 GETTABLEKS                       R16 R2 K14 ["isDisabled"]
      130 NOT                              R15 R16
      131 SETTABLEKS                       R15 R14 K15 ["Active"]
      133 GETTABLEKS                       R16 R2 K14 ["isDisabled"]
      135 NOT                              R15 R16
      136 SETTABLEKS                       R15 R14 K16 ["Interactable"]
      138 GETUPVAL                         R15 2
      139 GETTABLEKS                       R15 R15 K17 ["Event"]
      141 GETTABLEKS                       R15 R15 K18 ["Activated"]
      143 GETTABLEKS                       R17 R2 K14 ["isDisabled"]
      145 JUMPIF                           R17 ; [+3]
      146 GETTABLEKS                       R16 R2 K19 ["onActivated"]
      148 JUMP                             ; [+1]
      149 LOADNIL                          R16
      150 SETTABLE                         R16 R14 R15
      151 GETUPVAL                         R15 2
      152 GETTABLEKS                       R15 R15 K17 ["Event"]
      154 GETTABLEKS                       R15 R15 K20 ["MouseButton2Click"]
      156 GETTABLEKS                       R17 R2 K14 ["isDisabled"]
      158 JUMPIF                           R17 ; [+3]
      159 GETTABLEKS                       R16 R2 K21 ["onSecondaryActivated"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R16
      163 SETTABLE                         R16 R14 R15
      164 SETTABLEKS                       R13 R14 K22 ["ref"]
      166 GETTABLEKS                       R16 R2 K23 ["SelectionImageObject"]
      168 OR                               R15 R16 R5
      169 SETTABLEKS                       R15 R14 K23 ["SelectionImageObject"]
      171 GETUPVAL                         R15 14
      172 GETTABLEKS                       R15 R15 K24 ["union"]
      174 MOVE                             R16 R2
      175 MOVE                             R17 R14
      176 CALL                             R15 2 1
      177 LOADNIL                          R16
      178 SETTABLEKS                       R16 R15 K25 ["component"]
      180 LOADNIL                          R16
      181 SETTABLEKS                       R16 R15 K14 ["isDisabled"]
      183 LOADNIL                          R16
      184 SETTABLEKS                       R16 R15 K19 ["onActivated"]
      186 LOADNIL                          R16
      187 SETTABLEKS                       R16 R15 K21 ["onSecondaryActivated"]
      189 LOADNIL                          R16
      190 SETTABLEKS                       R16 R15 K5 ["onStateChanged"]
      192 LOADNIL                          R16
      193 SETTABLEKS                       R16 R15 K9 ["stateLayer"]
      195 LOADNIL                          R16
      196 SETTABLEKS                       R16 R15 K1 ["cursor"]
      198 GETUPVAL                         R16 2
      199 GETTABLEKS                       R16 R16 K26 ["createElement"]
      201 GETTABLEKS                       R17 R2 K25 ["component"]
      203 MOVE                             R18 R15
      204 CALL                             R16 2 -1
      205 RETURN                           R16 -1

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
       26 GETTABLEKS                       R6 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R6 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R7 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R8 R0 K10 ["Utility"]
       42 GETTABLEKS                       R8 R8 K14 ["blendColors"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETIMPORT                        R9 K1 [script]
       49 GETTABLEKS                       R9 R9 K4 ["Parent"]
       51 GETTABLEKS                       R9 R9 K15 ["getOriginalBackgroundStyle"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETIMPORT                        R10 K1 [script]
       58 GETTABLEKS                       R10 R10 K4 ["Parent"]
       60 GETTABLEKS                       R10 R10 K16 ["getStateLayerStyle"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K17 ["Providers"]
       67 GETTABLEKS                       R11 R11 K18 ["Cursor"]
       69 GETTABLEKS                       R11 R11 K19 ["useCursor"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K6 [require]
       74 GETTABLEKS                       R12 R0 K10 ["Utility"]
       76 GETTABLEKS                       R12 R12 K20 ["Control"]
       78 GETTABLEKS                       R12 R12 K21 ["useGuiControlState"]
       80 CALL                             R11 1 1
       81 GETIMPORT                        R12 K6 [require]
       83 GETTABLEKS                       R13 R0 K17 ["Providers"]
       85 GETTABLEKS                       R13 R13 K22 ["Style"]
       87 GETTABLEKS                       R13 R13 K23 ["useTokens"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K6 [require]
       92 GETTABLEKS                       R14 R0 K10 ["Utility"]
       94 GETTABLEKS                       R14 R14 K24 ["withDefaults"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K6 [require]
       99 GETTABLEKS                       R15 R0 K25 ["Enums"]
      101 GETTABLEKS                       R15 R15 K26 ["StateLayerAffordance"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K6 [require]
      106 GETTABLEKS                       R16 R0 K25 ["Enums"]
      108 GETTABLEKS                       R16 R16 K27 ["StateLayerMode"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R17 R0 K25 ["Enums"]
      115 GETTABLEKS                       R17 R17 K28 ["ControlState"]
      117 CALL                             R16 1 1
      118 DUPTABLE                         R17 K33 [{["component"] = "ImageButton", ["isDisabled"] = False}]
      119 GETIMPORT                        R18 K36 [Color3.fromRGB]
      121 LOADN                            R19 163
      122 LOADN                            R20 162
      123 LOADN                            R21 165
      124 CALL                             R18 3 1
      125 DUPCLOSURE                       R19 K37 [PROTO_9]
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R17
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R14
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R11
      140 CAPTURE                          VAL R2
      141 GETTABLEKS                       R20 R3 K38 ["memo"]
      143 GETTABLEKS                       R21 R3 K39 ["forwardRef"]
      145 MOVE                             R22 R19
      146 CALL                             R21 1 -1
      147 CALL                             R20 -1 -1
      148 RETURN                           R20 -1
