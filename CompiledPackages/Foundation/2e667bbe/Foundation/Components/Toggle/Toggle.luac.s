PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["knob"]
        3 GETTABLEKS                       R1 R2 K1 ["offPosition"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["knob"]
        8 GETTABLEKS                       R3 R4 K2 ["onPosition"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createSingleMotor"]
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
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 JUMPIFNOT                        R1 ; [+12]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K0 ["current"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K1 ["spring"]
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
       17 GETUPVAL                         R9 5
       18 GETTABLEKS                       R8 R9 K3 ["FoundationUpdateKnobComponent"]
       20 JUMPIFNOT                        R8 ; [+14]
       21 GETTABLEKS                       R8 R0 K0 ["size"]
       23 GETUPVAL                         R10 6
       24 GETTABLEKS                       R9 R10 K4 ["Large"]
       26 JUMPIFNOTEQ                      R8 R9 ; [+5]
       28 GETUPVAL                         R8 6
       29 GETTABLEKS                       R7 R8 K5 ["Medium"]
       31 JUMP                             ; [+5]
       32 GETTABLEKS                       R7 R2 K0 ["size"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R7 R2 K0 ["size"]
       37 GETUPVAL                         R10 5
       38 GETTABLEKS                       R9 R10 K3 ["FoundationUpdateKnobComponent"]
       40 JUMPIFNOT                        R9 ; [+2]
       41 LOADB                            R8 0
       42 JUMP                             ; [+1]
       43 LOADB                            R8 1
       44 JUMPIFNOT                        R5 ; [+2]
       45 LOADN                            R9 1
       46 JUMP                             ; [+1]
       47 LOADN                            R9 0
       48 GETUPVAL                         R11 7
       49 GETTABLEKS                       R10 R11 K6 ["useBinding"]
       51 MOVE                             R11 R9
       52 CALL                             R10 1 2
       53 GETUPVAL                         R13 7
       54 GETTABLEKS                       R12 R13 K7 ["useRef"]
       56 LOADNIL                          R13
       57 CALL                             R12 1 1
       58 NEWCLOSURE                       R15 P0
       59 CAPTURE                          VAL R4
       60 NAMECALL                         R13 R10 K8 ["map"]
       62 CALL                             R13 2 1
       63 GETUPVAL                         R15 7
       64 GETTABLEKS                       R14 R15 K9 ["useEffect"]
       66 NEWCLOSURE                       R15 P1
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R9
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 NEWTABLE                         R16 0 0
       73 CALL                             R14 2 0
       74 GETUPVAL                         R15 7
       75 GETTABLEKS                       R14 R15 K9 ["useEffect"]
       77 NEWCLOSURE                       R15 P2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R12
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          UPVAL U9
       82 NEWTABLE                         R16 0 1
       84 MOVE                             R17 R5
       85 SETLIST                          R16 R17 1 [1]
       87 CALL                             R14 2 0
       88 GETUPVAL                         R15 7
       89 GETTABLEKS                       R14 R15 K10 ["createElement"]
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
      108 GETIMPORT                        R20 K27 [Enum.HorizontalAlignment.Left]
      110 SETTABLEKS                       R20 R19 K22 ["position"]
      112 SETTABLEKS                       R19 R18 K12 ["label"]
      114 GETTABLEKS                       R19 R4 K28 ["input"]
      116 SETTABLEKS                       R19 R18 K13 ["customVariantProps"]
      118 GETTABLEKS                       R19 R2 K0 ["size"]
      120 SETTABLEKS                       R19 R18 K0 ["size"]
      122 GETTABLEKS                       R19 R2 K14 ["Selectable"]
      124 SETTABLEKS                       R19 R18 K14 ["Selectable"]
      126 GETTABLEKS                       R19 R2 K15 ["NextSelectionUp"]
      128 SETTABLEKS                       R19 R18 K15 ["NextSelectionUp"]
      130 GETTABLEKS                       R19 R2 K16 ["NextSelectionDown"]
      132 SETTABLEKS                       R19 R18 K16 ["NextSelectionDown"]
      134 GETTABLEKS                       R19 R2 K17 ["NextSelectionLeft"]
      136 SETTABLEKS                       R19 R18 K17 ["NextSelectionLeft"]
      138 GETTABLEKS                       R19 R2 K18 ["NextSelectionRight"]
      140 SETTABLEKS                       R19 R18 K18 ["NextSelectionRight"]
      142 SETTABLEKS                       R1 R18 K19 ["ref"]
      144 CALL                             R16 2 1
      145 GETUPVAL                         R18 7
      146 GETTABLEKS                       R17 R18 K10 ["createElement"]
      148 GETUPVAL                         R19 12
      149 GETTABLEKS                       R18 R19 K29 ["Provider"]
      151 DUPTABLE                         R19 K31 [{"value"}]
      152 GETUPVAL                         R20 13
      153 SETTABLEKS                       R20 R19 K30 ["value"]
      155 DUPTABLE                         R20 K33 [{"Knob"}]
      156 GETUPVAL                         R22 7
      157 GETTABLEKS                       R21 R22 K10 ["createElement"]
      159 GETUPVAL                         R22 14
      160 DUPTABLE                         R23 K37 [{"size", "hasShadow", "AnchorPoint", "Position"}]
      161 SETTABLEKS                       R7 R23 K0 ["size"]
      163 SETTABLEKS                       R8 R23 K34 ["hasShadow"]
      165 GETIMPORT                        R24 K40 [Vector2.new]
      167 LOADN                            R25 0
      168 LOADK                            R26 K41 [0.5]
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K35 ["AnchorPoint"]
      172 SETTABLEKS                       R13 R23 K36 ["Position"]
      174 CALL                             R21 2 1
      175 SETTABLEKS                       R21 R20 K32 ["Knob"]
      177 CALL                             R17 3 -1
      178 CALL                             R14 -1 -1
      179 RETURN                           R14 -1

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
       19 GETTABLEKS                       R4 R0 K9 ["Components"]
       21 GETIMPORT                        R5 K6 [require]
       23 GETTABLEKS                       R6 R4 K10 ["InternalInput"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K6 [require]
       28 GETTABLEKS                       R8 R4 K10 ["InternalInput"]
       30 GETTABLEKS                       R7 R8 K11 ["useUncontrolledState"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K6 [require]
       35 GETTABLEKS                       R8 R4 K12 ["Types"]
       37 CALL                             R7 1 1
       38 GETIMPORT                        R8 K6 [require]
       40 GETTABLEKS                       R9 R4 K13 ["Knob"]
       42 CALL                             R8 1 1
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R12 R0 K14 ["Providers"]
       47 GETTABLEKS                       R11 R12 K15 ["Style"]
       49 GETTABLEKS                       R10 R11 K16 ["PresentationContext"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K6 [require]
       54 GETTABLEKS                       R13 R0 K14 ["Providers"]
       56 GETTABLEKS                       R12 R13 K15 ["Style"]
       58 GETTABLEKS                       R11 R12 K17 ["useTokens"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K6 [require]
       63 GETTABLEKS                       R13 R0 K18 ["Utility"]
       65 GETTABLEKS                       R12 R13 K19 ["withCommonProps"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R14 R0 K18 ["Utility"]
       72 GETTABLEKS                       R13 R14 K20 ["withDefaults"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R15 R0 K18 ["Utility"]
       79 GETTABLEKS                       R14 R15 K21 ["Flags"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R16 R0 K22 ["Enums"]
       86 GETTABLEKS                       R15 R16 K23 ["ControlState"]
       88 CALL                             R14 1 1
       89 GETIMPORT                        R15 K6 [require]
       91 GETIMPORT                        R18 K1 [script]
       93 GETTABLEKS                       R17 R18 K4 ["Parent"]
       95 GETTABLEKS                       R16 R17 K24 ["useToggleVariants"]
       97 CALL                             R15 1 1
       98 GETIMPORT                        R16 K6 [require]
      100 GETTABLEKS                       R18 R0 K22 ["Enums"]
      102 GETTABLEKS                       R17 R18 K25 ["InputSize"]
      104 CALL                             R16 1 1
      105 GETIMPORT                        R17 K6 [require]
      107 GETTABLEKS                       R19 R0 K22 ["Enums"]
      109 GETTABLEKS                       R18 R19 K26 ["InputLabelSize"]
      111 CALL                             R17 1 1
      112 DUPTABLE                         R18 K28 [{"frequency"}]
      113 LOADN                            R19 4
      114 SETTABLEKS                       R19 R18 K27 ["frequency"]
      116 DUPTABLE                         R19 K32 [{"size", "Selectable", "testId"}]
      117 GETTABLEKS                       R20 R16 K33 ["Medium"]
      119 SETTABLEKS                       R20 R19 K29 ["size"]
      121 LOADB                            R20 1
      122 SETTABLEKS                       R20 R19 K30 ["Selectable"]
      124 LOADK                            R20 K34 ["--foundation-toggle"]
      125 SETTABLEKS                       R20 R19 K31 ["testId"]
      127 DUPTABLE                         R20 K36 [{"isInverse"}]
      128 LOADB                            R21 0
      129 SETTABLEKS                       R21 R20 K35 ["isInverse"]
      131 DUPCLOSURE                       R21 K37 [PROTO_5]
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R10
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R3
      140 CAPTURE                          VAL R2
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R9
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R8
      147 GETTABLEKS                       R22 R3 K38 ["memo"]
      149 GETTABLEKS                       R23 R3 K39 ["forwardRef"]
      151 MOVE                             R24 R21
      152 CALL                             R23 1 -1
      153 CALL                             R22 -1 -1
      154 RETURN                           R22 -1
