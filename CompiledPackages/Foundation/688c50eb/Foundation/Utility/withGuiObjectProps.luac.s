PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+157]
        7 GETTABLEKS                       R2 R0 K3 ["AutoLocalize"]
        9 SETTABLEKS                       R2 R1 K3 ["AutoLocalize"]
       11 GETTABLEKS                       R2 R0 K4 ["AutomaticSize"]
       13 SETTABLEKS                       R2 R1 K4 ["AutomaticSize"]
       15 GETTABLEKS                       R3 R0 K5 ["backgroundStyle"]
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R3 R0 K5 ["backgroundStyle"]
       21 LOADK                            R4 K6 ["Color3"]
       22 CALL                             R2 2 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 SETTABLEKS                       R2 R1 K7 ["BackgroundColor3"]
       27 GETTABLEKS                       R3 R0 K5 ["backgroundStyle"]
       29 JUMPIFNOT                        R3 ; [+6]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R3 R0 K5 ["backgroundStyle"]
       33 LOADK                            R4 K8 ["Transparency"]
       34 CALL                             R2 2 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R2
       37 SETTABLEKS                       R2 R1 K9 ["BackgroundTransparency"]
       39 GETTABLEKS                       R2 R0 K10 ["BorderSizePixel"]
       41 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
       43 GETTABLEKS                       R2 R0 K11 ["BorderColor3"]
       45 SETTABLEKS                       R2 R1 K11 ["BorderColor3"]
       47 GETTABLEKS                       R2 R0 K12 ["BorderMode"]
       49 SETTABLEKS                       R2 R1 K12 ["BorderMode"]
       51 GETTABLEKS                       R2 R0 K13 ["ClipsDescendants"]
       53 SETTABLEKS                       R2 R1 K13 ["ClipsDescendants"]
       55 GETUPVAL                         R2 1
       56 JUMPIFNOT                        R2 ; [+4]
       57 GETTABLEKS                       R2 R0 K14 ["InputSink"]
       59 SETTABLEKS                       R2 R1 K14 ["InputSink"]
       61 GETTABLEKS                       R2 R0 K15 ["Rotation"]
       63 SETTABLEKS                       R2 R1 K15 ["Rotation"]
       65 GETTABLEKS                       R2 R0 K16 ["SizeConstraint"]
       67 SETTABLEKS                       R2 R1 K16 ["SizeConstraint"]
       69 GETTABLEKS                       R2 R0 K17 ["selection"]
       71 JUMPIFNOT                        R2 ; [+42]
       72 GETTABLEKS                       R2 R0 K17 ["selection"]
       74 GETTABLEKS                       R2 R2 K18 ["Selectable"]
       76 SETTABLEKS                       R2 R1 K18 ["Selectable"]
       78 GETTABLEKS                       R2 R0 K17 ["selection"]
       80 GETTABLEKS                       R2 R2 K19 ["SelectionImageObject"]
       82 SETTABLEKS                       R2 R1 K19 ["SelectionImageObject"]
       84 GETTABLEKS                       R2 R0 K17 ["selection"]
       86 GETTABLEKS                       R2 R2 K20 ["SelectionOrder"]
       88 SETTABLEKS                       R2 R1 K20 ["SelectionOrder"]
       90 GETTABLEKS                       R2 R0 K17 ["selection"]
       92 GETTABLEKS                       R2 R2 K21 ["NextSelectionDown"]
       94 SETTABLEKS                       R2 R1 K21 ["NextSelectionDown"]
       96 GETTABLEKS                       R2 R0 K17 ["selection"]
       98 GETTABLEKS                       R2 R2 K22 ["NextSelectionLeft"]
      100 SETTABLEKS                       R2 R1 K22 ["NextSelectionLeft"]
      102 GETTABLEKS                       R2 R0 K17 ["selection"]
      104 GETTABLEKS                       R2 R2 K23 ["NextSelectionRight"]
      106 SETTABLEKS                       R2 R1 K23 ["NextSelectionRight"]
      108 GETTABLEKS                       R2 R0 K17 ["selection"]
      110 GETTABLEKS                       R2 R2 K24 ["NextSelectionUp"]
      112 SETTABLEKS                       R2 R1 K24 ["NextSelectionUp"]
      114 GETTABLEKS                       R2 R0 K25 ["selectionGroup"]
      116 JUMPIFEQKNIL                     R2 ; [+42]
      118 GETTABLEKS                       R3 R0 K25 ["selectionGroup"]
      120 FASTCALL1                        TYPE R3 ; [+2]
      121 GETIMPORT                        R2 K1 [type]
      123 CALL                             R2 1 1
      124 JUMPIFEQKS                       R2 K26 ["boolean"] ; [+8]
      126 GETUPVAL                         R2 2
      127 GETTABLEKS                       R2 R2 K27 ["isBinding"]
      129 GETTABLEKS                       R3 R0 K25 ["selectionGroup"]
      131 CALL                             R2 1 1
      132 JUMPIFNOT                        R2 ; [+5]
      133 GETTABLEKS                       R2 R0 K25 ["selectionGroup"]
      135 SETTABLEKS                       R2 R1 K28 ["SelectionGroup"]
      137 JUMP                             ; [+21]
      138 GETTABLEKS                       R2 R0 K25 ["selectionGroup"]
      140 LOADB                            R3 1
      141 SETTABLEKS                       R3 R1 K28 ["SelectionGroup"]
      143 GETTABLEKS                       R3 R2 K29 ["SelectionBehaviorUp"]
      145 SETTABLEKS                       R3 R1 K29 ["SelectionBehaviorUp"]
      147 GETTABLEKS                       R3 R2 K30 ["SelectionBehaviorDown"]
      149 SETTABLEKS                       R3 R1 K30 ["SelectionBehaviorDown"]
      151 GETTABLEKS                       R3 R2 K31 ["SelectionBehaviorLeft"]
      153 SETTABLEKS                       R3 R1 K31 ["SelectionBehaviorLeft"]
      155 GETTABLEKS                       R3 R2 K32 ["SelectionBehaviorRight"]
      157 SETTABLEKS                       R3 R1 K32 ["SelectionBehaviorRight"]
      159 GETTABLEKS                       R2 R0 K33 ["Size"]
      161 SETTABLEKS                       R2 R1 K33 ["Size"]
      163 GETUPVAL                         R2 3
      164 MOVE                             R3 R0
      165 MOVE                             R4 R1
      166 CALL                             R2 2 1
      167 GETUPVAL                         R3 4
      168 GETTABLEKS                       R3 R3 K34 ["Change"]
      170 GETTABLEKS                       R3 R3 K35 ["AbsoluteSize"]
      172 GETTABLEKS                       R4 R0 K36 ["onAbsoluteSizeChanged"]
      174 SETTABLE                         R4 R2 R3
      175 LOADNIL                          R3
      176 SETTABLEKS                       R3 R2 K36 ["onAbsoluteSizeChanged"]
      178 GETUPVAL                         R3 4
      179 GETTABLEKS                       R3 R3 K34 ["Change"]
      181 GETTABLEKS                       R3 R3 K37 ["AbsolutePosition"]
      183 GETTABLEKS                       R4 R0 K38 ["onAbsolutePositionChanged"]
      185 SETTABLE                         R4 R2 R3
      186 LOADNIL                          R3
      187 SETTABLEKS                       R3 R2 K38 ["onAbsolutePositionChanged"]
      189 GETUPVAL                         R3 5
      190 GETTABLEKS                       R4 R2 K39 ["testId"]
      192 CALL                             R3 1 1
      193 GETUPVAL                         R5 4
      194 GETTABLEKS                       R5 R5 K40 ["Tag"]
      196 GETTABLE                         R4 R2 R5
      197 JUMPIFNOT                        R4 ; [+10]
      198 JUMPIFNOT                        R3 ; [+9]
      199 GETUPVAL                         R4 4
      200 GETTABLEKS                       R4 R4 K40 ["Tag"]
      202 GETTABLE                         R6 R2 R4
      203 LOADK                            R7 K41 [" "]
      204 MOVE                             R8 R3
      205 CONCAT                           R5 R6 R8
      206 SETTABLE                         R5 R2 R4
      207 JUMP                             ; [+9]
      208 GETUPVAL                         R4 4
      209 GETTABLEKS                       R4 R4 K40 ["Tag"]
      211 GETUPVAL                         R7 4
      212 GETTABLEKS                       R7 R7 K40 ["Tag"]
      214 GETTABLE                         R6 R2 R7
      215 OR                               R5 R6 R3
      216 SETTABLE                         R5 R2 R4
      217 LOADNIL                          R4
      218 SETTABLEKS                       R4 R2 K39 ["testId"]
      220 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactIs"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R6 K12 ["Flags"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K11 ["Utility"]
       37 GETTABLEKS                       R7 R7 K13 ["getTestIdTag"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K11 ["Utility"]
       44 GETTABLEKS                       R8 R8 K14 ["indexBindable"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K11 ["Utility"]
       51 GETTABLEKS                       R9 R9 K15 ["withCommonProps"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R5 K16 ["FoundationGuiObjectInputSinkProperty"]
       56 JUMPIFNOT                        R9 ; [+10]
       57 GETIMPORT                        R9 K18 [pcall]
       59 GETIMPORT                        R10 K20 [game]
       61 GETTABLEKS                       R10 R10 K21 ["GetEngineFeature"]
       63 GETIMPORT                        R11 K20 [game]
       65 LOADK                            R12 K22 ["GuiObjectInputSink"]
       66 CALL                             R9 3 1
       67 DUPCLOSURE                       R10 K23 [PROTO_0]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R2
       73 CAPTURE                          VAL R6
       74 RETURN                           R10 1
