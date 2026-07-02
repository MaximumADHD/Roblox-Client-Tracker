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
       94 DUPTABLE                         R18 K21 [{"isChecked", "isDisabled", "justifyContent", "onActivated", "label", "customVariantProps", "size", "Selectable", "NextSelectionUp", "NextSelectionDown", "NextSelectionLeft", "NextSelectionRight", "ref"}]
       95 SETTABLEKS                       R5 R18 K1 ["isChecked"]
       97 GETTABLEKS                       R19 R2 K11 ["isDisabled"]
       99 SETTABLEKS                       R19 R18 K11 ["isDisabled"]
      101 GETUPVAL                         R19 5
      102 GETTABLEKS                       R19 R19 K22 ["FoundationToggleEndPlacementJustifyContent"]
      104 SETTABLEKS                       R19 R18 K12 ["justifyContent"]
      106 SETTABLEKS                       R6 R18 K2 ["onActivated"]
      108 DUPTABLE                         R19 K25 [{"text", "position"}]
      109 GETTABLEKS                       R20 R2 K13 ["label"]
      111 SETTABLEKS                       R20 R19 K23 ["text"]
      113 GETUPVAL                         R21 12
      114 GETTABLEKS                       R21 R21 K26 ["INPUT_PLACEMENT_TO_LABEL_ALIGNMENT"]
      116 GETTABLEKS                       R22 R2 K27 ["placement"]
      118 GETTABLE                         R20 R21 R22
      119 SETTABLEKS                       R20 R19 K24 ["position"]
      121 SETTABLEKS                       R19 R18 K13 ["label"]
      123 GETTABLEKS                       R19 R4 K28 ["input"]
      125 SETTABLEKS                       R19 R18 K14 ["customVariantProps"]
      127 GETTABLEKS                       R19 R2 K0 ["size"]
      129 SETTABLEKS                       R19 R18 K0 ["size"]
      131 GETTABLEKS                       R19 R2 K15 ["Selectable"]
      133 SETTABLEKS                       R19 R18 K15 ["Selectable"]
      135 GETTABLEKS                       R19 R2 K16 ["NextSelectionUp"]
      137 SETTABLEKS                       R19 R18 K16 ["NextSelectionUp"]
      139 GETTABLEKS                       R19 R2 K17 ["NextSelectionDown"]
      141 SETTABLEKS                       R19 R18 K17 ["NextSelectionDown"]
      143 GETTABLEKS                       R19 R2 K18 ["NextSelectionLeft"]
      145 SETTABLEKS                       R19 R18 K18 ["NextSelectionLeft"]
      147 GETTABLEKS                       R19 R2 K19 ["NextSelectionRight"]
      149 SETTABLEKS                       R19 R18 K19 ["NextSelectionRight"]
      151 SETTABLEKS                       R1 R18 K20 ["ref"]
      153 CALL                             R16 2 1
      154 GETUPVAL                         R17 7
      155 GETTABLEKS                       R17 R17 K10 ["createElement"]
      157 GETUPVAL                         R18 13
      158 GETTABLEKS                       R18 R18 K29 ["Provider"]
      160 DUPTABLE                         R19 K31 [{"value"}]
      161 GETUPVAL                         R20 14
      162 SETTABLEKS                       R20 R19 K30 ["value"]
      164 DUPTABLE                         R20 K33 [{"Knob"}]
      165 GETUPVAL                         R22 5
      166 GETTABLEKS                       R22 R22 K3 ["FoundationToggleVisualUpdate"]
      168 JUMPIFNOT                        R22 ; [+49]
      169 GETUPVAL                         R21 7
      170 GETTABLEKS                       R21 R21 K10 ["createElement"]
      172 GETUPVAL                         R22 15
      173 DUPTABLE                         R23 K39 [{"size", "AnchorPoint", "Position", "hasShadow", "icon", "testId"}]
      174 SETTABLEKS                       R7 R23 K0 ["size"]
      176 GETIMPORT                        R24 K42 [Vector2.new]
      178 LOADN                            R25 0
      179 LOADK                            R26 K43 [0.5]
      180 CALL                             R24 2 1
      181 SETTABLEKS                       R24 R23 K34 ["AnchorPoint"]
      183 SETTABLEKS                       R13 R23 K35 ["Position"]
      185 SETTABLEKS                       R8 R23 K36 ["hasShadow"]
      187 JUMPIFNOT                        R5 ; [+16]
      188 DUPTABLE                         R24 K46 [{"name", "variant"}]
      189 GETUPVAL                         R25 16
      190 GETTABLEKS                       R25 R25 K47 ["Icon"]
      192 GETTABLEKS                       R25 R25 K48 ["Check"]
      194 SETTABLEKS                       R25 R24 K44 ["name"]
      196 GETUPVAL                         R25 16
      197 GETTABLEKS                       R25 R25 K49 ["IconVariant"]
      199 GETTABLEKS                       R25 R25 K50 ["Regular"]
      201 SETTABLEKS                       R25 R24 K45 ["variant"]
      203 JUMP                             ; [+1]
      204 LOADNIL                          R24
      205 SETTABLEKS                       R24 R23 K37 ["icon"]
      207 LOADK                            R25 K51 ["%*--knob"]
      208 GETTABLEKS                       R27 R2 K38 ["testId"]
      210 NAMECALL                         R25 R25 K52 ["format"]
      212 CALL                             R25 2 1
      213 MOVE                             R24 R25
      214 SETTABLEKS                       R24 R23 K38 ["testId"]
      216 CALL                             R21 2 1
      217 JUMP                             ; [+26]
      218 GETUPVAL                         R21 7
      219 GETTABLEKS                       R21 R21 K10 ["createElement"]
      221 GETUPVAL                         R22 15
      222 DUPTABLE                         R23 K53 [{"size", "AnchorPoint", "Position", "testId"}]
      223 SETTABLEKS                       R7 R23 K0 ["size"]
      225 GETIMPORT                        R24 K42 [Vector2.new]
      227 LOADN                            R25 0
      228 LOADK                            R26 K43 [0.5]
      229 CALL                             R24 2 1
      230 SETTABLEKS                       R24 R23 K34 ["AnchorPoint"]
      232 SETTABLEKS                       R13 R23 K35 ["Position"]
      234 LOADK                            R25 K51 ["%*--knob"]
      235 GETTABLEKS                       R27 R2 K38 ["testId"]
      237 NAMECALL                         R25 R25 K52 ["format"]
      239 CALL                             R25 2 1
      240 MOVE                             R24 R25
      241 SETTABLEKS                       R24 R23 K38 ["testId"]
      243 CALL                             R21 2 1
      244 SETTABLEKS                       R21 R20 K32 ["Knob"]
      246 CALL                             R17 3 -1
      247 CALL                             R14 -1 -1
      248 RETURN                           R14 -1

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
       33 GETTABLEKS                       R8 R5 K11 ["InternalInput"]
       35 GETTABLEKS                       R8 R8 K12 ["useUncontrolledState"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R5 K13 ["Types"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R10 R5 K14 ["Knob"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K15 ["Providers"]
       52 GETTABLEKS                       R11 R11 K16 ["Style"]
       54 GETTABLEKS                       R11 R11 K17 ["PresentationContext"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K6 [require]
       59 GETTABLEKS                       R12 R0 K15 ["Providers"]
       61 GETTABLEKS                       R12 R12 K16 ["Style"]
       63 GETTABLEKS                       R12 R12 K18 ["useTokens"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K6 [require]
       68 GETTABLEKS                       R13 R0 K19 ["Utility"]
       70 GETTABLEKS                       R13 R13 K20 ["withCommonProps"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K19 ["Utility"]
       77 GETTABLEKS                       R14 R14 K21 ["withDefaults"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K6 [require]
       82 GETTABLEKS                       R15 R0 K19 ["Utility"]
       84 GETTABLEKS                       R15 R15 K22 ["Flags"]
       86 CALL                             R14 1 1
       87 GETIMPORT                        R15 K6 [require]
       89 GETTABLEKS                       R16 R1 K23 ["BuilderIcons"]
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
      142 GETTABLEKS                       R25 R14 K42 ["FoundationToggleDefaultPlacement"]
      144 JUMPIFNOT                        R25 ; [+3]
      145 GETTABLEKS                       R24 R21 K43 ["Start"]
      147 JUMP                             ; [+2]
      148 GETTABLEKS                       R24 R21 K44 ["End"]
      150 SETTABLEKS                       R24 R23 K35 ["placement"]
      152 DUPTABLE                         R24 K46 [{"colorMode"}]
      153 GETTABLEKS                       R25 R16 K47 ["Color"]
      155 SETTABLEKS                       R25 R24 K45 ["colorMode"]
      157 DUPCLOSURE                       R25 K48 [PROTO_5]
      158 CAPTURE                          VAL R13
      159 CAPTURE                          VAL R23
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R18
      162 CAPTURE                          VAL R7
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R22
      168 CAPTURE                          VAL R6
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R10
      172 CAPTURE                          VAL R24
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R15
      175 GETTABLEKS                       R26 R3 K49 ["memo"]
      177 GETTABLEKS                       R27 R3 K50 ["forwardRef"]
      179 MOVE                             R28 R25
      180 CALL                             R27 1 -1
      181 CALL                             R26 -1 -1
      182 RETURN                           R26 -1
