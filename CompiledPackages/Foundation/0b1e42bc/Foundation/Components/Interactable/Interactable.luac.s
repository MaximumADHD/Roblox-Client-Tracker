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
        3 JUMPIFEQ                         R0 R4 ; [+40]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K1 ["Default"]
        8 JUMPIFEQ                         R0 R4 ; [+35]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["Disabled"]
       13 JUMPIFEQ                         R0 R4 ; [+30]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K3 ["FoundationBindableStateLayer"]
       18 JUMPIFNOT                        R5 ; [+8]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K4 ["None"]
       22 JUMPIFEQ                         R3 R5 ; [+2]
       24 LOADB                            R4 0 +1
       25 LOADB                            R4 1
       26 JUMP                             ; [+16]
       27 GETUPVAL                         R5 3
       28 GETTABLEKS                       R4 R5 K5 ["stateLayer"]
       30 JUMPIFNOT                        R4 ; [+12]
       31 GETUPVAL                         R7 3
       32 GETTABLEKS                       R6 R7 K5 ["stateLayer"]
       34 GETTABLEKS                       R5 R6 K6 ["affordance"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R6 R7 K4 ["None"]
       39 JUMPIFEQ                         R5 R6 ; [+2]
       41 LOADB                            R4 0 +1
       42 LOADB                            R4 1
       43 JUMPIFNOT                        R4 ; [+1]
       44 RETURN                           R1 1
       45 DUPTABLE                         R4 K9 [{"Color3", "Transparency"}]
       46 GETTABLEKS                       R5 R1 K7 ["Color3"]
       48 SETTABLEKS                       R5 R4 K7 ["Color3"]
       50 GETTABLEKS                       R5 R1 K8 ["Transparency"]
       52 SETTABLEKS                       R5 R4 K8 ["Transparency"]
       54 GETTABLEKS                       R5 R1 K7 ["Color3"]
       56 JUMPIFNOTEQKNIL                  R5 ; [+14]
       58 GETUPVAL                         R7 4
       59 GETTABLEKS                       R6 R7 K10 ["current"]
       61 JUMPIFNOT                        R6 ; [+6]
       62 GETUPVAL                         R7 4
       63 GETTABLEKS                       R6 R7 K10 ["current"]
       65 GETTABLEKS                       R5 R6 K7 ["Color3"]
       67 JUMP                             ; [+1]
       68 LOADNIL                          R5
       69 SETTABLEKS                       R5 R4 K7 ["Color3"]
       71 GETTABLEKS                       R5 R1 K8 ["Transparency"]
       73 JUMPIFNOTEQKNIL                  R5 ; [+14]
       75 GETUPVAL                         R7 4
       76 GETTABLEKS                       R6 R7 K10 ["current"]
       78 JUMPIFNOT                        R6 ; [+6]
       79 GETUPVAL                         R7 4
       80 GETTABLEKS                       R6 R7 K10 ["current"]
       82 GETTABLEKS                       R5 R6 K8 ["Transparency"]
       84 JUMP                             ; [+1]
       85 LOADNIL                          R5
       86 SETTABLEKS                       R5 R4 K8 ["Transparency"]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R6 R7 K3 ["FoundationBindableStateLayer"]
       91 JUMPIFNOT                        R6 ; [+6]
       92 GETUPVAL                         R5 5
       93 GETUPVAL                         R6 6
       94 MOVE                             R7 R2
       95 MOVE                             R8 R0
       96 CALL                             R5 3 1
       97 JUMP                             ; [+7]
       98 GETUPVAL                         R5 5
       99 GETUPVAL                         R6 6
      100 GETUPVAL                         R8 3
      101 GETTABLEKS                       R7 R8 K5 ["stateLayer"]
      103 MOVE                             R8 R0
      104 CALL                             R5 3 1
      105 GETUPVAL                         R6 7
      106 MOVE                             R7 R4
      107 MOVE                             R8 R5
      108 CALL                             R6 2 -1
      109 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controlState"]
        3 GETTABLEKS                       R3 R0 K1 ["backgroundStyle"]
        5 GETTABLEKS                       R4 R0 K2 ["mode"]
        7 GETTABLEKS                       R5 R0 K3 ["affordance"]
        9 CALL                             R1 4 -1
       10 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["controlState"]
        3 GETTABLEKS                       R3 R0 K1 ["backgroundStyle"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FoundationBindableStateLayer"]
        3 JUMPIFNOT                        R0 ; [+38]
        4 GETUPVAL                         R0 1
        5 DUPTABLE                         R1 K5 [{"controlState", "backgroundStyle", "mode", "affordance"}]
        6 GETUPVAL                         R2 2
        7 SETTABLEKS                       R2 R1 K1 ["controlState"]
        9 GETUPVAL                         R2 3
       10 SETTABLEKS                       R2 R1 K2 ["backgroundStyle"]
       12 GETUPVAL                         R4 4
       13 GETTABLEKS                       R3 R4 K6 ["stateLayer"]
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R3 R4 K6 ["stateLayer"]
       19 GETTABLEKS                       R2 R3 K3 ["mode"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K3 ["mode"]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R3 R4 K6 ["stateLayer"]
       28 JUMPIFNOT                        R3 ; [+6]
       29 GETUPVAL                         R4 4
       30 GETTABLEKS                       R3 R4 K6 ["stateLayer"]
       32 GETTABLEKS                       R2 R3 K4 ["affordance"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K4 ["affordance"]
       38 NEWCLOSURE                       R2 P0
       39 CAPTURE                          UPVAL U5
       40 CALL                             R0 2 -1
       41 RETURN                           R0 -1
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R0 R1 K7 ["isBinding"]
       45 GETUPVAL                         R1 3
       46 CALL                             R0 1 1
       47 JUMPIFNOT                        R0 ; [+17]
       48 GETUPVAL                         R1 7
       49 GETTABLEKS                       R0 R1 K8 ["joinBindings"]
       51 DUPTABLE                         R1 K9 [{"controlState", "backgroundStyle"}]
       52 GETUPVAL                         R2 2
       53 SETTABLEKS                       R2 R1 K1 ["controlState"]
       55 GETUPVAL                         R2 3
       56 SETTABLEKS                       R2 R1 K2 ["backgroundStyle"]
       58 CALL                             R0 1 1
       59 NEWCLOSURE                       R2 P1
       60 CAPTURE                          UPVAL U5
       61 NAMECALL                         R0 R0 K10 ["map"]
       63 CALL                             R0 2 -1
       64 RETURN                           R0 -1
       65 GETUPVAL                         R0 2
       66 NEWCLOSURE                       R2 P2
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          UPVAL U3
       69 NAMECALL                         R0 R0 K10 ["map"]
       71 CALL                             R0 2 -1
       72 RETURN                           R0 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["Color3"]
        2 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["Transparency"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Transparency"]
        2 RETURN                           R1 1

PROTO_12:
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
       66 CAPTURE                          UPVAL U9
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U10
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U11
       72 NEWTABLE                         R13 0 4
       74 MOVE                             R14 R4
       75 GETTABLEKS                       R15 R2 K7 ["BackgroundColor3"]
       77 GETTABLEKS                       R16 R2 K8 ["BackgroundTransparency"]
       79 GETUPVAL                         R19 8
       80 GETTABLEKS                       R18 R19 K9 ["FoundationBindableStateLayer"]
       82 JUMPIFNOT                        R18 ; [+2]
       83 LOADNIL                          R17
       84 JUMP                             ; [+2]
       85 GETTABLEKS                       R17 R2 K10 ["stateLayer"]
       87 SETLIST                          R13 R14 4 [1]
       89 CALL                             R11 2 1
       90 GETUPVAL                         R13 2
       91 GETTABLEKS                       R12 R13 K6 ["useMemo"]
       93 NEWCLOSURE                       R13 P3
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U12
       96 CAPTURE                          VAL R6
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R2
       99 CAPTURE                          VAL R11
      100 CAPTURE                          UPVAL U13
      101 CAPTURE                          UPVAL U2
      102 NEWTABLE                         R14 0 5
      104 MOVE                             R15 R10
      105 MOVE                             R16 R6
      106 MOVE                             R17 R11
      107 GETUPVAL                         R20 8
      108 GETTABLEKS                       R19 R20 K9 ["FoundationBindableStateLayer"]
      110 JUMPIFNOT                        R19 ; [+8]
      111 GETTABLEKS                       R19 R2 K10 ["stateLayer"]
      113 JUMPIFNOT                        R19 ; [+5]
      114 GETTABLEKS                       R19 R2 K10 ["stateLayer"]
      116 GETTABLEKS                       R18 R19 K11 ["mode"]
      118 JUMP                             ; [+1]
      119 LOADNIL                          R18
      120 GETUPVAL                         R21 8
      121 GETTABLEKS                       R20 R21 K9 ["FoundationBindableStateLayer"]
      123 JUMPIFNOT                        R20 ; [+8]
      124 GETTABLEKS                       R20 R2 K10 ["stateLayer"]
      126 JUMPIFNOT                        R20 ; [+5]
      127 GETTABLEKS                       R20 R2 K10 ["stateLayer"]
      129 GETTABLEKS                       R19 R20 K12 ["affordance"]
      131 JUMP                             ; [+1]
      132 LOADNIL                          R19
      133 SETLIST                          R14 R15 5 [1]
      135 CALL                             R12 2 1
      136 GETUPVAL                         R13 14
      137 MOVE                             R14 R3
      138 MOVE                             R15 R9
      139 CALL                             R13 2 1
      140 GETUPVAL                         R15 2
      141 GETTABLEKS                       R14 R15 K13 ["useImperativeHandle"]
      143 MOVE                             R15 R1
      144 NEWCLOSURE                       R16 P4
      145 CAPTURE                          VAL R3
      146 NEWTABLE                         R17 0 0
      148 CALL                             R14 3 0
      149 NEWTABLE                         R14 8 0
      151 GETUPVAL                         R17 8
      152 GETTABLEKS                       R16 R17 K9 ["FoundationBindableStateLayer"]
      154 JUMPIFNOT                        R16 ; [+5]
      155 GETUPVAL                         R15 15
      156 MOVE                             R16 R12
      157 DUPCLOSURE                       R17 K14 [PROTO_8]
      158 CALL                             R15 2 1
      159 JUMP                             ; [+4]
      160 DUPCLOSURE                       R17 K15 [PROTO_9]
      161 NAMECALL                         R15 R12 K16 ["map"]
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K7 ["BackgroundColor3"]
      166 GETUPVAL                         R17 8
      167 GETTABLEKS                       R16 R17 K9 ["FoundationBindableStateLayer"]
      169 JUMPIFNOT                        R16 ; [+5]
      170 GETUPVAL                         R15 15
      171 MOVE                             R16 R12
      172 DUPCLOSURE                       R17 K17 [PROTO_10]
      173 CALL                             R15 2 1
      174 JUMP                             ; [+4]
      175 DUPCLOSURE                       R17 K18 [PROTO_11]
      176 NAMECALL                         R15 R12 K16 ["map"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K8 ["BackgroundTransparency"]
      181 GETTABLEKS                       R16 R2 K19 ["isDisabled"]
      183 NOT                              R15 R16
      184 SETTABLEKS                       R15 R14 K20 ["Active"]
      186 GETTABLEKS                       R16 R2 K19 ["isDisabled"]
      188 NOT                              R15 R16
      189 SETTABLEKS                       R15 R14 K21 ["Interactable"]
      191 GETUPVAL                         R17 2
      192 GETTABLEKS                       R16 R17 K22 ["Event"]
      194 GETTABLEKS                       R15 R16 K23 ["Activated"]
      196 GETTABLEKS                       R17 R2 K19 ["isDisabled"]
      198 JUMPIF                           R17 ; [+3]
      199 GETTABLEKS                       R16 R2 K24 ["onActivated"]
      201 JUMP                             ; [+1]
      202 LOADNIL                          R16
      203 SETTABLE                         R16 R14 R15
      204 GETUPVAL                         R17 2
      205 GETTABLEKS                       R16 R17 K22 ["Event"]
      207 GETTABLEKS                       R15 R16 K25 ["MouseButton2Click"]
      209 GETTABLEKS                       R17 R2 K19 ["isDisabled"]
      211 JUMPIF                           R17 ; [+3]
      212 GETTABLEKS                       R16 R2 K26 ["onSecondaryActivated"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R16
      216 SETTABLE                         R16 R14 R15
      217 SETTABLEKS                       R13 R14 K27 ["ref"]
      219 GETTABLEKS                       R16 R2 K28 ["SelectionImageObject"]
      221 OR                               R15 R16 R5
      222 SETTABLEKS                       R15 R14 K28 ["SelectionImageObject"]
      224 GETUPVAL                         R16 16
      225 GETTABLEKS                       R15 R16 K29 ["union"]
      227 MOVE                             R16 R2
      228 MOVE                             R17 R14
      229 CALL                             R15 2 1
      230 LOADNIL                          R16
      231 SETTABLEKS                       R16 R15 K30 ["component"]
      233 LOADNIL                          R16
      234 SETTABLEKS                       R16 R15 K19 ["isDisabled"]
      236 LOADNIL                          R16
      237 SETTABLEKS                       R16 R15 K24 ["onActivated"]
      239 LOADNIL                          R16
      240 SETTABLEKS                       R16 R15 K26 ["onSecondaryActivated"]
      242 LOADNIL                          R16
      243 SETTABLEKS                       R16 R15 K5 ["onStateChanged"]
      245 LOADNIL                          R16
      246 SETTABLEKS                       R16 R15 K10 ["stateLayer"]
      248 LOADNIL                          R16
      249 SETTABLEKS                       R16 R15 K1 ["cursor"]
      251 GETUPVAL                         R17 2
      252 GETTABLEKS                       R16 R17 K31 ["createElement"]
      254 GETTABLEKS                       R17 R2 K30 ["component"]
      256 MOVE                             R18 R15
      257 CALL                             R16 2 -1
      258 RETURN                           R16 -1

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
       26 GETTABLEKS                       R7 R0 K10 ["Utility"]
       28 GETTABLEKS                       R6 R7 K11 ["Flags"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Components"]
       35 GETTABLEKS                       R7 R8 K13 ["Types"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K6 [require]
       40 GETTABLEKS                       R9 R0 K10 ["Utility"]
       42 GETTABLEKS                       R8 R9 K14 ["blendColors"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETIMPORT                        R11 K1 [script]
       49 GETTABLEKS                       R10 R11 K4 ["Parent"]
       51 GETTABLEKS                       R9 R10 K15 ["getOriginalBackgroundStyle"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETIMPORT                        R12 K1 [script]
       58 GETTABLEKS                       R11 R12 K4 ["Parent"]
       60 GETTABLEKS                       R10 R11 K16 ["getStateLayerStyle"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R12 R0 K10 ["Utility"]
       67 GETTABLEKS                       R11 R12 K17 ["joinBindables"]
       69 CALL                             R10 1 1
       70 GETIMPORT                        R11 K6 [require]
       72 GETTABLEKS                       R13 R0 K10 ["Utility"]
       74 GETTABLEKS                       R12 R13 K18 ["mapBindable"]
       76 CALL                             R11 1 1
       77 GETIMPORT                        R12 K6 [require]
       79 GETTABLEKS                       R15 R0 K19 ["Providers"]
       81 GETTABLEKS                       R14 R15 K20 ["Cursor"]
       83 GETTABLEKS                       R13 R14 K21 ["useCursor"]
       85 CALL                             R12 1 1
       86 GETIMPORT                        R13 K6 [require]
       88 GETTABLEKS                       R16 R0 K10 ["Utility"]
       90 GETTABLEKS                       R15 R16 K22 ["Control"]
       92 GETTABLEKS                       R14 R15 K23 ["useGuiControlState"]
       94 CALL                             R13 1 1
       95 GETIMPORT                        R14 K6 [require]
       97 GETTABLEKS                       R17 R0 K19 ["Providers"]
       99 GETTABLEKS                       R16 R17 K24 ["Style"]
      101 GETTABLEKS                       R15 R16 K25 ["useTokens"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K6 [require]
      106 GETTABLEKS                       R17 R0 K10 ["Utility"]
      108 GETTABLEKS                       R16 R17 K26 ["withDefaults"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K6 [require]
      113 GETTABLEKS                       R18 R0 K27 ["Enums"]
      115 GETTABLEKS                       R17 R18 K28 ["StateLayerAffordance"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K6 [require]
      120 GETTABLEKS                       R19 R0 K27 ["Enums"]
      122 GETTABLEKS                       R18 R19 K29 ["StateLayerMode"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K6 [require]
      127 GETTABLEKS                       R20 R0 K27 ["Enums"]
      129 GETTABLEKS                       R19 R20 K30 ["ControlState"]
      131 CALL                             R18 1 1
      132 DUPTABLE                         R19 K33 [{"component", "isDisabled"}]
      133 LOADK                            R20 K34 ["ImageButton"]
      134 SETTABLEKS                       R20 R19 K31 ["component"]
      136 LOADB                            R20 0
      137 SETTABLEKS                       R20 R19 K32 ["isDisabled"]
      139 GETIMPORT                        R20 K37 [Color3.fromRGB]
      141 LOADN                            R21 163
      142 LOADN                            R22 162
      143 LOADN                            R23 165
      144 CALL                             R20 3 1
      145 DUPCLOSURE                       R21 K38 [PROTO_12]
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R3
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R12
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R20
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R10
      159 CAPTURE                          VAL R4
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R11
      162 CAPTURE                          VAL R2
      163 GETTABLEKS                       R22 R3 K39 ["memo"]
      165 GETTABLEKS                       R23 R3 K40 ["forwardRef"]
      167 MOVE                             R24 R21
      168 CALL                             R23 1 -1
      169 CALL                             R22 -1 -1
      170 RETURN                           R22 -1
