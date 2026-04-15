PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K1 ["onEditStart"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 2
       10 LOADNIL                          R1
       11 CALL                             R0 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K0 ["current"]
       15 GETTABLEKS                       R0 R1 K2 ["setSelectionStart"]
       17 LOADN                            R1 0
       18 CALL                             R0 1 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R1 R2 K0 ["current"]
       22 GETTABLEKS                       R0 R1 K3 ["setCursorPosition"]
       24 GETUPVAL                         R4 3
       25 FASTCALL1                        TOSTRING R4 ; [+2]
       26 GETIMPORT                        R3 K6 [tostring]
       28 CALL                             R3 1 1
       29 LENGTH                           R2 R3
       30 ADDK                             R1 R2 K4 [1]
       31 CALL                             R0 1 0
       32 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["onChange"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 LOADNIL                          R1
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K1 ["onEditFinish"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["propertyPart"]
        3 GETTABLEKS                       R1 R2 K1 ["multiple"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADK                            R1 K2 ["-"]
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 1
        9 MOVE                             R2 R0
       10 CALL                             R1 1 -1
       11 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 MOVE                             R4 R1
       11 JUMPIF                           R4 ; [+4]
       12 GETTABLEKS                       R5 R0 K2 ["propertyPart"]
       14 GETTABLEKS                       R4 R5 K3 ["value"]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R7 0 0
       23 CALL                             R5 2 1
       24 GETUPVAL                         R7 0
       25 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       27 NEWCLOSURE                       R7 P1
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R4
       32 NEWTABLE                         R8 0 2
       34 GETTABLEKS                       R9 R0 K5 ["onEditStart"]
       36 MOVE                             R10 R4
       37 SETLIST                          R8 R9 2 [1]
       39 CALL                             R6 2 1
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R7 R8 K4 ["useCallback"]
       43 NEWCLOSURE                       R8 P2
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R9 0 3
       49 MOVE                             R10 R1
       50 GETTABLEKS                       R11 R0 K6 ["onEditFinish"]
       52 GETTABLEKS                       R12 R0 K6 ["onEditFinish"]
       54 SETLIST                          R9 R10 3 [1]
       56 CALL                             R7 2 1
       57 GETUPVAL                         R9 0
       58 GETTABLEKS                       R8 R9 K4 ["useCallback"]
       60 NEWCLOSURE                       R9 P3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U1
       63 NEWTABLE                         R10 0 1
       65 GETTABLEKS                       R12 R0 K2 ["propertyPart"]
       67 GETTABLEKS                       R11 R12 K7 ["multiple"]
       69 SETLIST                          R10 R11 1 [1]
       71 CALL                             R8 2 1
       72 GETTABLEKS                       R10 R0 K2 ["propertyPart"]
       74 GETTABLEKS                       R9 R10 K7 ["multiple"]
       76 GETTABLEKS                       R10 R0 K8 ["slider"]
       78 JUMPIFNOT                        R10 ; [+4]
       79 GETTABLEKS                       R11 R0 K8 ["slider"]
       81 GETTABLEKS                       R10 R11 K9 ["step"]
       83 ORK                              R11 R10 K10 [1]
       84 GETTABLEKS                       R12 R0 K8 ["slider"]
       86 JUMPIFNOT                        R12 ; [+4]
       87 GETTABLEKS                       R13 R0 K8 ["slider"]
       89 GETTABLEKS                       R12 R13 K11 ["bounds"]
       91 GETTABLEKS                       R14 R0 K12 ["Visible"]
       93 JUMPIFEQKNIL                     R14 ; [+4]
       95 GETTABLEKS                       R13 R0 K12 ["Visible"]
       97 JUMP                             ; [+1]
       98 LOADB                            R13 1
       99 GETUPVAL                         R14 2
      100 GETUPVAL                         R15 3
      101 DUPTABLE                         R16 K16 [{"tag", "Size", "LayoutOrder", "Visible"}]
      102 LOADK                            R17 K17 ["auto-y"]
      103 SETTABLEKS                       R17 R16 K13 ["tag"]
      105 GETIMPORT                        R17 K20 [UDim2.fromScale]
      107 LOADN                            R18 1
      108 LOADN                            R19 0
      109 CALL                             R17 2 1
      110 SETTABLEKS                       R17 R16 K14 ["Size"]
      112 GETTABLEKS                       R17 R0 K15 ["LayoutOrder"]
      114 SETTABLEKS                       R17 R16 K15 ["LayoutOrder"]
      116 SETTABLEKS                       R13 R16 K12 ["Visible"]
      118 DUPTABLE                         R17 K23 [{"Input", "Chip"}]
      119 GETUPVAL                         R18 2
      120 GETUPVAL                         R19 4
      121 DUPTABLE                         R20 K38 [{"value", "precision", "formatAsString", "isScrubbable", "isDisabled", "onChanged", "onFocusGained", "onFocusLost", "step", "maximum", "minimum", "textBoxRef", "controlsVariant", "size", "width", "label"}]
      122 JUMPIFNOT                        R9 ; [+2]
      123 LOADN                            R21 0
      124 JUMP                             ; [+1]
      125 MOVE                             R21 R4
      126 SETTABLEKS                       R21 R20 K3 ["value"]
      128 LOADN                            R21 3
      129 SETTABLEKS                       R21 R20 K24 ["precision"]
      131 SETTABLEKS                       R8 R20 K25 ["formatAsString"]
      133 LOADB                            R21 0
      134 SETTABLEKS                       R21 R20 K26 ["isScrubbable"]
      136 GETTABLEKS                       R21 R0 K39 ["readonly"]
      138 SETTABLEKS                       R21 R20 K27 ["isDisabled"]
      140 SETTABLEKS                       R5 R20 K28 ["onChanged"]
      142 SETTABLEKS                       R6 R20 K29 ["onFocusGained"]
      144 SETTABLEKS                       R7 R20 K30 ["onFocusLost"]
      146 SETTABLEKS                       R11 R20 K9 ["step"]
      148 MOVE                             R21 R12
      149 JUMPIFNOT                        R21 ; [+2]
      150 GETTABLEKS                       R21 R12 K40 ["max"]
      152 SETTABLEKS                       R21 R20 K31 ["maximum"]
      154 MOVE                             R21 R12
      155 JUMPIFNOT                        R21 ; [+2]
      156 GETTABLEKS                       R21 R12 K41 ["min"]
      158 SETTABLEKS                       R21 R20 K32 ["minimum"]
      160 SETTABLEKS                       R3 R20 K33 ["textBoxRef"]
      162 GETUPVAL                         R22 5
      163 GETTABLEKS                       R21 R22 K42 ["None"]
      165 SETTABLEKS                       R21 R20 K34 ["controlsVariant"]
      167 GETUPVAL                         R22 6
      168 GETTABLEKS                       R21 R22 K43 ["XSmall"]
      170 SETTABLEKS                       R21 R20 K35 ["size"]
      172 GETIMPORT                        R21 K46 [UDim.new]
      174 LOADN                            R22 1
      175 LOADN                            R23 0
      176 CALL                             R21 2 1
      177 SETTABLEKS                       R21 R20 K36 ["width"]
      179 LOADK                            R21 K47 [""]
      180 SETTABLEKS                       R21 R20 K37 ["label"]
      182 CALL                             R18 2 1
      183 SETTABLEKS                       R18 R17 K21 ["Input"]
      185 GETTABLEKS                       R18 R0 K48 ["chip"]
      187 JUMPIFNOT                        R18 ; [+36]
      188 GETUPVAL                         R18 2
      189 LOADK                            R19 K49 ["Frame"]
      190 DUPTABLE                         R20 K54 [{"BackgroundColor3", "Size", "Position", "AnchorPoint", "ZIndex"}]
      191 GETTABLEKS                       R22 R0 K48 ["chip"]
      193 GETTABLEKS                       R21 R22 K55 ["color"]
      195 SETTABLEKS                       R21 R20 K50 ["BackgroundColor3"]
      197 GETIMPORT                        R21 K56 [UDim2.new]
      199 LOADN                            R22 0
      200 LOADN                            R23 1
      201 LOADK                            R24 K57 [0.5]
      202 LOADN                            R25 0
      203 CALL                             R21 4 1
      204 SETTABLEKS                       R21 R20 K14 ["Size"]
      206 GETIMPORT                        R21 K20 [UDim2.fromScale]
      208 LOADN                            R22 0
      209 LOADK                            R23 K57 [0.5]
      210 CALL                             R21 2 1
      211 SETTABLEKS                       R21 R20 K51 ["Position"]
      213 GETIMPORT                        R21 K59 [Vector2.new]
      215 LOADN                            R22 0
      216 LOADK                            R23 K57 [0.5]
      217 CALL                             R21 2 1
      218 SETTABLEKS                       R21 R20 K52 ["AnchorPoint"]
      220 LOADN                            R21 2
      221 SETTABLEKS                       R21 R20 K53 ["ZIndex"]
      223 CALL                             R18 2 1
      224 SETTABLEKS                       R18 R17 K22 ["Chip"]
      226 CALL                             R14 3 -1
      227 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["PropertyTypes"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R5 R0 K6 ["Parent"]
       23 GETTABLEKS                       R4 R5 K9 ["React"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R8 R0 K10 ["Util"]
       30 GETTABLEKS                       R7 R8 K11 ["NumberDisplay"]
       32 GETTABLEKS                       R6 R7 K12 ["Formatting"]
       34 GETTABLEKS                       R5 R6 K13 ["formatForSingleInput"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R3 K14 ["createElement"]
       39 GETTABLEKS                       R6 R1 K15 ["NumberInput"]
       41 GETTABLEKS                       R7 R1 K16 ["View"]
       43 GETTABLEKS                       R9 R1 K17 ["Enums"]
       45 GETTABLEKS                       R8 R9 K18 ["NumberInputControlsVariant"]
       47 GETTABLEKS                       R10 R1 K17 ["Enums"]
       49 GETTABLEKS                       R9 R10 K19 ["InputSize"]
       51 DUPCLOSURE                       R10 K20 [PROTO_4]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R5
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 RETURN                           R10 1
