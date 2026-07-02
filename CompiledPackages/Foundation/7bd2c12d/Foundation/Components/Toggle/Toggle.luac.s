PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["knob"]
        3 GETTABLEKS                       R1 R1 K1 ["offPosition"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["knob"]
        8 GETTABLEKS                       R3 R3 K2 ["onPosition"]
       10 MOVE                             R4 R0
       11 NAMECALL                         R1 R1 K3 ["Lerp"]
       13 CALL                             R1 3 -1
       14 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSingleMotor"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R1 2
        6 SETTABLEKS                       R0 R1 K1 ["current"]
        8 NAMECALL                         R1 R0 K2 ["start"]
       10 CALL                             R1 1 0
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R1 R0 K3 ["onStep"]
       15 CALL                             R1 2 0
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADN                            R0 1
        3 JUMP                             ; [+1]
        4 LOADN                            R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K0 ["current"]
       12 GETUPVAL                         R3 2
       13 GETTABLEKS                       R3 R3 K1 ["spring"]
       15 MOVE                             R4 R0
       16 GETUPVAL                         R5 3
       17 CALL                             R3 2 -1
       18 NAMECALL                         R1 R1 K2 ["setGoal"]
       20 CALL                             R1 -1 0
       21 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 MOVE                             R5 R3
        8 GETTABLEKS                       R6 R2 K0 ["size"]
       10 CALL                             R4 2 1
       11 GETUPVAL                         R5 4
       12 GETTABLEKS                       R6 R2 K1 ["isChecked"]
       14 GETTABLEKS                       R7 R2 K2 ["onActivated"]
       16 CALL                             R5 2 2
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R8 R8 K3 ["FoundationToggleVisualUpdate"]
       20 JUMPIFNOT                        R8 ; [+14]
       21 GETTABLEKS                       R8 R0 K0 ["size"]
       23 GETUPVAL                         R9 6
       24 GETTABLEKS                       R9 R9 K4 ["Large"]
       26 JUMPIFNOTEQ                      R8 R9 ; [+5]
       28 GETUPVAL                         R7 6
       29 GETTABLEKS                       R7 R7 K5 ["Medium"]
       31 JUMP                             ; [+5]
       32 GETTABLEKS                       R7 R2 K0 ["size"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R7 R2 K0 ["size"]
       37 GETUPVAL                         R9 5
       38 GETTABLEKS                       R9 R9 K3 ["FoundationToggleVisualUpdate"]
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADB                            R8 0
       42 JUMP                             ; [+1]
       43 LOADB                            R8 1
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADN                            R9 1
       46 JUMP                             ; [+1]
       47 LOADN                            R9 0
       48 GETUPVAL                         R10 7
       49 GETTABLEKS                       R10 R10 K6 ["useBinding"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 2
       53 GETUPVAL                         R12 7
       54 GETTABLEKS                       R12 R12 K7 ["useRef"]
       56 LOADNIL                          R13
       57 CALL                             R12 1 1
       58 NEWCLOSURE                       R15 P0
       59 CAPTURE                          VAL R4
       60 NAMECALL                         R13 R10 K8 ["map"]
       62 CALL                             R13 2 1
       63 GETUPVAL                         R14 7
       64 GETTABLEKS                       R14 R14 K9 ["useEffect"]
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 NEWTABLE                         R16 0 0
       73 CALL                             R14 2 0
       74 GETUPVAL                         R14 7
       75 GETTABLEKS                       R14 R14 K9 ["useEffect"]
       77 NEWCLOSURE                       R15 P2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R12
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          UPVAL U9
       82 NEWTABLE                         R16 0 1
       84 MOVE                             R17 R5
       85 SETLIST                          R16 R17 1 [1]
       87 CALL                             R14 2 0
       88 GETUPVAL                         R14 7
       89 GETTABLEKS                       R14 R14 K10 ["createElement"]
       91 GETUPVAL                         R15 10
       92 GETUPVAL                         R16 11
       93 MOVE                             R17 R2
       94 DUPTABLE                         R18 K20 [{"isChecked", "isDisabled", "onActivated", "label", "customVariantProps", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "ref"}]
       95 SETTABLEKS                       R5 R18 K1 ["isChecked"]
       97 GETTABLEKS                       R19 R2 K11 ["isDisabled"]
       99 SETTABLEKS                       R19 R18 K11 ["isDisabled"]
      101 SETTABLEKS                       R6 R18 K2 ["onActivated"]
      103 DUPTABLE                         R19 K23 [{"text", "position"}]
      104 GETTABLEKS                       R20 R2 K12 ["label"]
      106 SETTABLEKS                       R20 R19 K21 ["text"]
      108 GETUPVAL                         R21 12
      109 GETTABLEKS                       R21 R21 K24 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
      111 GETTABLEKS                       R22 R2 K25 ["placement"]
      113 GETTABLE                         R20 R21 R22
      114 SETTABLEKS                       R20 R19 K22 ["position"]
      116 SETTABLEKS                       R19 R18 K12 ["label"]
      118 GETTABLEKS                       R19 R4 K26 ["input"]
      120 SETTABLEKS                       R19 R18 K13 ["customVariantProps"]
      122 GETTABLEKS                       R19 R2 K0 ["size"]
      124 SETTABLEKS                       R19 R18 K0 ["size"]
      126 GETTABLEKS                       R19 R2 K14 ["Selectable"]
      128 SETTABLEKS                       R19 R18 K14 ["Selectable"]
      130 GETTABLEKS                       R19 R2 K15 ["NextSelectionUp"]
      132 SETTABLEKS                       R19 R18 K15 ["NextSelectionUp"]
      134 GETTABLEKS                       R19 R2 K16 ["NextSelectionDown"]
      136 SETTABLEKS                       R19 R18 K16 ["NextSelectionDown"]
      138 GETTABLEKS                       R19 R2 K17 ["NextSelectionLeft"]
      140 SETTABLEKS                       R19 R18 K17 ["NextSelectionLeft"]
      142 GETTABLEKS                       R19 R2 K18 ["NextSelectionRight"]
      144 SETTABLEKS                       R19 R18 K18 ["NextSelectionRight"]
      146 SETTABLEKS                       R1 R18 K19 ["ref"]
      148 CALL                             R16 2 1
      149 GETUPVAL                         R17 7
      150 GETTABLEKS                       R17 R17 K10 ["createElement"]
      152 GETUPVAL                         R18 13
      153 GETTABLEKS                       R18 R18 K27 ["Provider"]
      155 DUPTABLE                         R19 K29 [{"value"}]
      156 GETUPVAL                         R20 14
      157 SETTABLEKS                       R20 R19 K28 ["value"]
      159 DUPTABLE                         R20 K31 [{"Knob"}]
      160 GETUPVAL                         R22 5
      161 GETTABLEKS                       R22 R22 K3 ["FoundationToggleVisualUpdate"]
      163 JUMPIFNOT                        R22 ; [+49]
      164 GETUPVAL                         R21 7
      165 GETTABLEKS                       R21 R21 K10 ["createElement"]
      167 GETUPVAL                         R22 15
      168 DUPTABLE                         R23 K37 [{"size", "AnchorPoint", "Position", "hasShadow", "icon", "testId"}]
      169 SETTABLEKS                       R7 R23 K0 ["size"]
      171 GETIMPORT                        R24 K40 [Vector2.new]
      173 LOADN                            R25 0
      174 LOADK                            R26 K41 [0.5]
      175 CALL                             R24 2 1
      176 SETTABLEKS                       R24 R23 K32 ["AnchorPoint"]
      178 SETTABLEKS                       R13 R23 K33 ["Position"]
      180 SETTABLEKS                       R8 R23 K34 ["hasShadow"]
      182 JUMPIFNOT                        R5 ; [+16]
      183 DUPTABLE                         R24 K44 [{"name", "variant"}]
      184 GETUPVAL                         R25 16
      185 GETTABLEKS                       R25 R25 K45 ["Icon"]
      187 GETTABLEKS                       R25 R25 K46 ["Check"]
      189 SETTABLEKS                       R25 R24 K42 ["name"]
      191 GETUPVAL                         R25 16
      192 GETTABLEKS                       R25 R25 K47 ["IconVariant"]
      194 GETTABLEKS                       R25 R25 K48 ["Regular"]
      196 SETTABLEKS                       R25 R24 K43 ["variant"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R24
      200 SETTABLEKS                       R24 R23 K35 ["icon"]
      202 LOADK                            R25 K49 ["%*--knob"]
      203 GETTABLEKS                       R27 R2 K36 ["testId"]
      205 NAMECALL                         R25 R25 K50 ["format"]
      207 CALL                             R25 2 1
      208 MOVE                             R24 R25
      209 SETTABLEKS                       R24 R23 K36 ["testId"]
      211 CALL                             R21 2 1
      212 JUMP                             ; [+26]
      213 GETUPVAL                         R21 7
      214 GETTABLEKS                       R21 R21 K10 ["createElement"]
      216 GETUPVAL                         R22 15
      217 DUPTABLE                         R23 K51 [{"size", "AnchorPoint", "Position", "testId"}]
      218 SETTABLEKS                       R7 R23 K0 ["size"]
      220 GETIMPORT                        R24 K40 [Vector2.new]
      222 LOADN                            R25 0
      223 LOADK                            R26 K41 [0.5]
      224 CALL                             R24 2 1
      225 SETTABLEKS                       R24 R23 K32 ["AnchorPoint"]
      227 SETTABLEKS                       R13 R23 K33 ["Position"]
      229 LOADK                            R25 K49 ["%*--knob"]
      230 GETTABLEKS                       R27 R2 K36 ["testId"]
      232 NAMECALL                         R25 R25 K50 ["format"]
      234 CALL                             R25 2 1
      235 MOVE                             R24 R25
      236 SETTABLEKS                       R24 R23 K36 ["testId"]
      238 CALL                             R21 2 1
      239 SETTABLEKS                       R21 R20 K30 ["Knob"]
      241 CALL                             R17 3 -1
      242 CALL                             R14 -1 -1
      243 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Otter"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Constants"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R0 K10 ["Components"]
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R7 R5 K11 ["InternalInput"]
       30 CALL                             R6 1 1
       31 GETIMPORT                        R7 K6 [require]
       33 GETTABLEKS                       R8 R5 K12 ["Knob"]
       35 CALL                             R7 1 1
       36 GETIMPORT                        R8 K6 [require]
       38 GETTABLEKS                       R9 R0 K13 ["Providers"]
       40 GETTABLEKS                       R9 R9 K14 ["Style"]
       42 GETTABLEKS                       R9 R9 K15 ["PresentationContext"]
       44 CALL                             R8 1 1
       45 GETIMPORT                        R9 K6 [require]
       47 GETTABLEKS                       R10 R5 K16 ["Types"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R11 R5 K11 ["InternalInput"]
       54 GETTABLEKS                       R11 R11 K17 ["useUncontrolledState"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R1 K18 ["BuilderIcons"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K6 [require]
       64 GETTABLEKS                       R13 R0 K19 ["Utility"]
       66 GETTABLEKS                       R13 R13 K20 ["Flags"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K6 [require]
       71 GETTABLEKS                       R14 R0 K13 ["Providers"]
       73 GETTABLEKS                       R14 R14 K14 ["Style"]
       75 GETTABLEKS                       R14 R14 K21 ["useTokens"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K6 [require]
       80 GETTABLEKS                       R15 R0 K19 ["Utility"]
       82 GETTABLEKS                       R15 R15 K22 ["withCommonProps"]
       84 CALL                             R14 1 1
       85 GETIMPORT                        R15 K6 [require]
       87 GETTABLEKS                       R16 R0 K19 ["Utility"]
       89 GETTABLEKS                       R16 R16 K23 ["withDefaults"]
       91 CALL                             R15 1 1
       92 GETIMPORT                        R16 K6 [require]
       94 GETTABLEKS                       R17 R0 K24 ["Enums"]
       96 GETTABLEKS                       R17 R17 K25 ["ColorMode"]
       98 CALL                             R16 1 1
       99 GETIMPORT                        R17 K6 [require]
      101 GETTABLEKS                       R18 R0 K24 ["Enums"]
      103 GETTABLEKS                       R18 R18 K26 ["ControlState"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K6 [require]
      108 GETIMPORT                        R19 K1 [script]
      110 GETTABLEKS                       R19 R19 K4 ["Parent"]
      112 GETTABLEKS                       R19 R19 K27 ["useToggleVariants"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K6 [require]
      117 GETTABLEKS                       R20 R0 K24 ["Enums"]
      119 GETTABLEKS                       R20 R20 K28 ["InputSize"]
      121 CALL                             R19 1 1
      122 GETIMPORT                        R20 K6 [require]
      124 GETTABLEKS                       R21 R0 K24 ["Enums"]
      126 GETTABLEKS                       R21 R21 K29 ["InputLabelSize"]
      128 CALL                             R20 1 1
      129 GETIMPORT                        R21 K6 [require]
      131 GETTABLEKS                       R22 R0 K24 ["Enums"]
      133 GETTABLEKS                       R22 R22 K30 ["InputPlacement"]
      135 CALL                             R21 1 1
      136 DUPTABLE                         R22 K33 [{["frequency"] = 4}]
      137 DUPTABLE                         R23 K40 [{["size"], ["placement"], ["Selectable"] = True, ["testId"] = "--foundation-toggle"}]
      138 GETTABLEKS                       R24 R19 K41 ["Medium"]
      140 SETTABLEKS                       R24 R23 K34 ["size"]
      142 GETTABLEKS                       R24 R21 K42 ["Start"]
      144 SETTABLEKS                       R24 R23 K35 ["placement"]
      146 DUPTABLE                         R24 K44 [{"colorMode"}]
      147 GETTABLEKS                       R25 R16 K45 ["Color"]
      149 SETTABLEKS                       R25 R24 K43 ["colorMode"]
      151 DUPCLOSURE                       R25 K46 [PROTO_5]
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R3
      160 CAPTURE                          VAL R2
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R8
      166 CAPTURE                          VAL R24
      167 CAPTURE                          VAL R7
      168 CAPTURE                          VAL R11
      169 GETTABLEKS                       R26 R3 K47 ["memo"]
      171 GETTABLEKS                       R27 R3 K48 ["forwardRef"]
      173 MOVE                             R28 R25
      174 CALL                             R27 1 -1
      175 CALL                             R26 -1 -1
      176 RETURN                           R26 -1
