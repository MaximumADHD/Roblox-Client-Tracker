PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["Default"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+33]
        9 GETUPVAL                         R2 2
       10 GETTABLEKS                       R1 R2 K2 ["current"]
       12 JUMPIFEQKNIL                     R1 ; [+28]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R1 R2 K2 ["current"]
       17 LOADK                            R3 K3 ["BackgroundColor3"]
       18 NAMECALL                         R1 R1 K4 ["GetStyled"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R2 R3 K2 ["current"]
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
       44 GETUPVAL                         R2 6
       45 GETTABLEKS                       R1 R2 K10 ["onStateChanged"]
       47 JUMPIFEQKNIL                     R1 ; [+6]
       49 GETUPVAL                         R2 6
       50 GETTABLEKS                       R1 R2 K10 ["onStateChanged"]
       52 MOVE                             R2 R0
       53 CALL                             R1 1 0
       54 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["BackgroundColor3"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["BackgroundTransparency"]
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["Initialize"]
        3 JUMPIFEQ                         R0 R4 ; [+16]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["Default"]
        8 JUMPIFEQ                         R0 R4 ; [+11]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Disabled"]
       13 JUMPIFEQ                         R0 R4 ; [+6]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K3 ["None"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 RETURN                           R1 1
       21 DUPTABLE                         R4 K6 [{"Color3", "Transparency"}]
       22 GETTABLEKS                       R5 R1 K4 ["Color3"]
       24 SETTABLEKS                       R5 R4 K4 ["Color3"]
       26 GETTABLEKS                       R5 R1 K5 ["Transparency"]
       28 SETTABLEKS                       R5 R4 K5 ["Transparency"]
       30 GETTABLEKS                       R5 R1 K4 ["Color3"]
       32 JUMPIFNOTEQKNIL                  R5 ; [+14]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R6 R7 K7 ["current"]
       37 JUMPIFNOT                        R6 ; [+6]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K7 ["current"]
       41 GETTABLEKS                       R5 R6 K4 ["Color3"]
       43 JUMP                             ; [+1]
       44 LOADNIL                          R5
       45 SETTABLEKS                       R5 R4 K4 ["Color3"]
       47 GETTABLEKS                       R5 R1 K5 ["Transparency"]
       49 JUMPIFNOTEQKNIL                  R5 ; [+14]
       51 GETUPVAL                         R7 2
       52 GETTABLEKS                       R6 R7 K7 ["current"]
       54 JUMPIFNOT                        R6 ; [+6]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R6 R7 K7 ["current"]
       58 GETTABLEKS                       R5 R6 K5 ["Transparency"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R5
       62 SETTABLEKS                       R5 R4 K5 ["Transparency"]
       64 GETUPVAL                         R5 3
       65 GETUPVAL                         R6 4
       66 MOVE                             R7 R2
       67 MOVE                             R8 R0
       68 CALL                             R5 3 1
       69 GETUPVAL                         R6 5
       70 MOVE                             R7 R4
       71 MOVE                             R8 R5
       72 CALL                             R6 2 -1
       73 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controlState"]
        3 GETTABLEKS                       R3 R0 K1 ["backgroundStyle"]
        5 GETTABLEKS                       R4 R0 K2 ["mode"]
        7 GETTABLEKS                       R5 R0 K3 ["affordance"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"controlState", "backgroundStyle", "mode", "affordance"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["controlState"]
        5 GETUPVAL                         R2 2
        6 SETTABLEKS                       R2 R1 K1 ["backgroundStyle"]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K5 ["stateLayer"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R3 R4 K5 ["stateLayer"]
       15 GETTABLEKS                       R2 R3 K2 ["mode"]
       17 JUMP                             ; [+1]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K2 ["mode"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["stateLayer"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K5 ["stateLayer"]
       28 GETTABLEKS                       R2 R3 K3 ["affordance"]
       30 JUMP                             ; [+1]
       31 LOADNIL                          R2
       32 SETTABLEKS                       R2 R1 K3 ["affordance"]
       34 NEWCLOSURE                       R2 P0
       35 CAPTURE                          UPVAL U4
       36 CALL                             R0 2 -1
       37 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["Transparency"]
        2 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useRef"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 1
        9 GETUPVAL                         R4 3
       10 CALL                             R4 0 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R6 R2 K1 ["cursor"]
       14 CALL                             R5 1 1
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R6 R7 K2 ["useBinding"]
       18 GETUPVAL                         R8 5
       19 GETTABLEKS                       R7 R8 K3 ["Initialize"]
       21 CALL                             R6 1 2
       22 GETUPVAL                         R9 2
       23 GETTABLEKS                       R8 R9 K0 ["useRef"]
       25 LOADNIL                          R9
       26 CALL                             R8 1 1
       27 GETUPVAL                         R10 2
       28 GETTABLEKS                       R9 R10 K4 ["useCallback"]
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
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       48 NEWCLOSURE                       R11 P1
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          VAL R2
       51 NEWTABLE                         R12 0 2
       53 GETTABLEKS                       R13 R2 K7 ["BackgroundColor3"]
       55 GETTABLEKS                       R14 R2 K8 ["BackgroundTransparency"]
       57 SETLIST                          R12 R13 2 [1]
       59 CALL                             R10 2 1
       60 GETUPVAL                         R12 2
       61 GETTABLEKS                       R11 R12 K4 ["useCallback"]
       63 NEWCLOSURE                       R12 P2
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          UPVAL U8
       66 CAPTURE                          VAL R8
       67 CAPTURE                          UPVAL U9
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U10
       70 NEWTABLE                         R13 0 3
       72 MOVE                             R14 R4
       73 GETTABLEKS                       R15 R2 K7 ["BackgroundColor3"]
       75 GETTABLEKS                       R16 R2 K8 ["BackgroundTransparency"]
       77 SETLIST                          R13 R14 3 [1]
       79 CALL                             R11 2 1
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       83 NEWCLOSURE                       R13 P3
       84 CAPTURE                          UPVAL U11
       85 CAPTURE                          VAL R6
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R11
       89 NEWTABLE                         R14 0 5
       91 MOVE                             R15 R10
       92 MOVE                             R16 R6
       93 MOVE                             R17 R11
       94 GETTABLEKS                       R19 R2 K9 ["stateLayer"]
       96 JUMPIFNOT                        R19 ; [+5]
       97 GETTABLEKS                       R19 R2 K9 ["stateLayer"]
       99 GETTABLEKS                       R18 R19 K10 ["mode"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R18
      103 GETTABLEKS                       R20 R2 K9 ["stateLayer"]
      105 JUMPIFNOT                        R20 ; [+5]
      106 GETTABLEKS                       R20 R2 K9 ["stateLayer"]
      108 GETTABLEKS                       R19 R20 K11 ["affordance"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R19
      112 SETLIST                          R14 R15 5 [1]
      114 CALL                             R12 2 1
      115 GETUPVAL                         R13 12
      116 MOVE                             R14 R3
      117 MOVE                             R15 R9
      118 CALL                             R13 2 1
      119 GETUPVAL                         R15 2
      120 GETTABLEKS                       R14 R15 K12 ["useImperativeHandle"]
      122 MOVE                             R15 R1
      123 NEWCLOSURE                       R16 P4
      124 CAPTURE                          VAL R3
      125 NEWTABLE                         R17 0 0
      127 CALL                             R14 3 0
      128 NEWTABLE                         R14 8 0
      130 GETUPVAL                         R15 13
      131 MOVE                             R16 R12
      132 DUPCLOSURE                       R17 K13 [PROTO_6]
      133 CALL                             R15 2 1
      134 SETTABLEKS                       R15 R14 K7 ["BackgroundColor3"]
      136 GETUPVAL                         R15 13
      137 MOVE                             R16 R12
      138 DUPCLOSURE                       R17 K14 [PROTO_7]
      139 CALL                             R15 2 1
      140 SETTABLEKS                       R15 R14 K8 ["BackgroundTransparency"]
      142 GETTABLEKS                       R16 R2 K15 ["isDisabled"]
      144 NOT                              R15 R16
      145 SETTABLEKS                       R15 R14 K16 ["Active"]
      147 GETTABLEKS                       R16 R2 K15 ["isDisabled"]
      149 NOT                              R15 R16
      150 SETTABLEKS                       R15 R14 K17 ["Interactable"]
      152 GETUPVAL                         R17 2
      153 GETTABLEKS                       R16 R17 K18 ["Event"]
      155 GETTABLEKS                       R15 R16 K19 ["Activated"]
      157 GETTABLEKS                       R17 R2 K15 ["isDisabled"]
      159 JUMPIF                           R17 ; [+3]
      160 GETTABLEKS                       R16 R2 K20 ["onActivated"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R16
      164 SETTABLE                         R16 R14 R15
      165 GETUPVAL                         R17 2
      166 GETTABLEKS                       R16 R17 K18 ["Event"]
      168 GETTABLEKS                       R15 R16 K21 ["MouseButton2Click"]
      170 GETTABLEKS                       R17 R2 K15 ["isDisabled"]
      172 JUMPIF                           R17 ; [+3]
      173 GETTABLEKS                       R16 R2 K22 ["onSecondaryActivated"]
      175 JUMP                             ; [+1]
      176 LOADNIL                          R16
      177 SETTABLE                         R16 R14 R15
      178 SETTABLEKS                       R13 R14 K23 ["ref"]
      180 GETTABLEKS                       R16 R2 K24 ["SelectionImageObject"]
      182 OR                               R15 R16 R5
      183 SETTABLEKS                       R15 R14 K24 ["SelectionImageObject"]
      185 GETUPVAL                         R16 14
      186 GETTABLEKS                       R15 R16 K25 ["union"]
      188 MOVE                             R16 R2
      189 MOVE                             R17 R14
      190 CALL                             R15 2 1
      191 LOADNIL                          R16
      192 SETTABLEKS                       R16 R15 K26 ["component"]
      194 LOADNIL                          R16
      195 SETTABLEKS                       R16 R15 K15 ["isDisabled"]
      197 LOADNIL                          R16
      198 SETTABLEKS                       R16 R15 K20 ["onActivated"]
      200 LOADNIL                          R16
      201 SETTABLEKS                       R16 R15 K22 ["onSecondaryActivated"]
      203 LOADNIL                          R16
      204 SETTABLEKS                       R16 R15 K5 ["onStateChanged"]
      206 LOADNIL                          R16
      207 SETTABLEKS                       R16 R15 K9 ["stateLayer"]
      209 LOADNIL                          R16
      210 SETTABLEKS                       R16 R15 K1 ["cursor"]
      212 GETUPVAL                         R17 2
      213 GETTABLEKS                       R16 R17 K27 ["createElement"]
      215 GETTABLEKS                       R17 R2 K26 ["component"]
      217 MOVE                             R18 R15
      218 CALL                             R16 2 -1
      219 RETURN                           R16 -1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R7 K12 ["blendColors"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETIMPORT                        R9 K1 [script]
       37 GETTABLEKS                       R8 R9 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K13 ["getOriginalBackgroundStyle"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R9 R10 K4 ["Parent"]
       48 GETTABLEKS                       R8 R9 K14 ["getStateLayerStyle"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Utility"]
       55 GETTABLEKS                       R9 R10 K15 ["joinBindables"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K11 ["Utility"]
       62 GETTABLEKS                       R10 R11 K16 ["mapBindable"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K6 [require]
       67 GETTABLEKS                       R13 R0 K17 ["Providers"]
       69 GETTABLEKS                       R12 R13 K18 ["Cursor"]
       71 GETTABLEKS                       R11 R12 K19 ["useCursor"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R14 R0 K11 ["Utility"]
       78 GETTABLEKS                       R13 R14 K20 ["Control"]
       80 GETTABLEKS                       R12 R13 K21 ["useGuiControlState"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETTABLEKS                       R15 R0 K17 ["Providers"]
       87 GETTABLEKS                       R14 R15 K22 ["Style"]
       89 GETTABLEKS                       R13 R14 K23 ["useTokens"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETTABLEKS                       R15 R0 K11 ["Utility"]
       96 GETTABLEKS                       R14 R15 K24 ["withDefaults"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K6 [require]
      101 GETTABLEKS                       R16 R0 K25 ["Enums"]
      103 GETTABLEKS                       R15 R16 K26 ["StateLayerAffordance"]
      105 CALL                             R14 1 1
      106 GETIMPORT                        R15 K6 [require]
      108 GETTABLEKS                       R17 R0 K25 ["Enums"]
      110 GETTABLEKS                       R16 R17 K27 ["StateLayerMode"]
      112 CALL                             R15 1 1
      113 GETIMPORT                        R16 K6 [require]
      115 GETTABLEKS                       R18 R0 K25 ["Enums"]
      117 GETTABLEKS                       R17 R18 K28 ["ControlState"]
      119 CALL                             R16 1 1
      120 DUPTABLE                         R17 K31 [{"component", "isDisabled"}]
      121 LOADK                            R18 K32 ["ImageButton"]
      122 SETTABLEKS                       R18 R17 K29 ["component"]
      124 LOADB                            R18 0
      125 SETTABLEKS                       R18 R17 K30 ["isDisabled"]
      127 GETIMPORT                        R18 K35 [Color3.fromRGB]
      129 LOADN                            R19 163
      130 LOADN                            R20 162
      131 LOADN                            R21 165
      132 CALL                             R18 3 1
      133 DUPCLOSURE                       R19 K36 [PROTO_8]
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R18
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R2
      149 GETTABLEKS                       R20 R3 K37 ["memo"]
      151 GETTABLEKS                       R21 R3 K38 ["forwardRef"]
      153 MOVE                             R22 R19
      154 CALL                             R21 1 -1
      155 CALL                             R20 -1 -1
      156 RETURN                           R20 -1
