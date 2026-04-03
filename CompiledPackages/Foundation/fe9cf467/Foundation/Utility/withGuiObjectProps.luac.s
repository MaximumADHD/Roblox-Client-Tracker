PROTO_0:
        0 FASTCALL1                        TYPE R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+151]
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
       55 GETTABLEKS                       R2 R0 K14 ["Rotation"]
       57 SETTABLEKS                       R2 R1 K14 ["Rotation"]
       59 GETTABLEKS                       R2 R0 K15 ["SizeConstraint"]
       61 SETTABLEKS                       R2 R1 K15 ["SizeConstraint"]
       63 GETTABLEKS                       R2 R0 K16 ["selection"]
       65 JUMPIFNOT                        R2 ; [+42]
       66 GETTABLEKS                       R3 R0 K16 ["selection"]
       68 GETTABLEKS                       R2 R3 K17 ["Selectable"]
       70 SETTABLEKS                       R2 R1 K17 ["Selectable"]
       72 GETTABLEKS                       R3 R0 K16 ["selection"]
       74 GETTABLEKS                       R2 R3 K18 ["SelectionImageObject"]
       76 SETTABLEKS                       R2 R1 K18 ["SelectionImageObject"]
       78 GETTABLEKS                       R3 R0 K16 ["selection"]
       80 GETTABLEKS                       R2 R3 K19 ["SelectionOrder"]
       82 SETTABLEKS                       R2 R1 K19 ["SelectionOrder"]
       84 GETTABLEKS                       R3 R0 K16 ["selection"]
       86 GETTABLEKS                       R2 R3 K20 ["NextSelectionDown"]
       88 SETTABLEKS                       R2 R1 K20 ["NextSelectionDown"]
       90 GETTABLEKS                       R3 R0 K16 ["selection"]
       92 GETTABLEKS                       R2 R3 K21 ["NextSelectionLeft"]
       94 SETTABLEKS                       R2 R1 K21 ["NextSelectionLeft"]
       96 GETTABLEKS                       R3 R0 K16 ["selection"]
       98 GETTABLEKS                       R2 R3 K22 ["NextSelectionRight"]
      100 SETTABLEKS                       R2 R1 K22 ["NextSelectionRight"]
      102 GETTABLEKS                       R3 R0 K16 ["selection"]
      104 GETTABLEKS                       R2 R3 K23 ["NextSelectionUp"]
      106 SETTABLEKS                       R2 R1 K23 ["NextSelectionUp"]
      108 GETTABLEKS                       R2 R0 K24 ["selectionGroup"]
      110 JUMPIFEQKNIL                     R2 ; [+42]
      112 GETTABLEKS                       R3 R0 K24 ["selectionGroup"]
      114 FASTCALL1                        TYPE R3 ; [+2]
      115 GETIMPORT                        R2 K1 [type]
      117 CALL                             R2 1 1
      118 JUMPIFEQKS                       R2 K25 ["boolean"] ; [+8]
      120 GETUPVAL                         R3 1
      121 GETTABLEKS                       R2 R3 K26 ["isBinding"]
      123 GETTABLEKS                       R3 R0 K24 ["selectionGroup"]
      125 CALL                             R2 1 1
      126 JUMPIFNOT                        R2 ; [+5]
      127 GETTABLEKS                       R2 R0 K24 ["selectionGroup"]
      129 SETTABLEKS                       R2 R1 K27 ["SelectionGroup"]
      131 JUMP                             ; [+21]
      132 GETTABLEKS                       R2 R0 K24 ["selectionGroup"]
      134 LOADB                            R3 1
      135 SETTABLEKS                       R3 R1 K27 ["SelectionGroup"]
      137 GETTABLEKS                       R3 R2 K28 ["SelectionBehaviorUp"]
      139 SETTABLEKS                       R3 R1 K28 ["SelectionBehaviorUp"]
      141 GETTABLEKS                       R3 R2 K29 ["SelectionBehaviorDown"]
      143 SETTABLEKS                       R3 R1 K29 ["SelectionBehaviorDown"]
      145 GETTABLEKS                       R3 R2 K30 ["SelectionBehaviorLeft"]
      147 SETTABLEKS                       R3 R1 K30 ["SelectionBehaviorLeft"]
      149 GETTABLEKS                       R3 R2 K31 ["SelectionBehaviorRight"]
      151 SETTABLEKS                       R3 R1 K31 ["SelectionBehaviorRight"]
      153 GETTABLEKS                       R2 R0 K32 ["Size"]
      155 SETTABLEKS                       R2 R1 K32 ["Size"]
      157 GETUPVAL                         R2 2
      158 MOVE                             R3 R0
      159 MOVE                             R4 R1
      160 CALL                             R2 2 1
      161 GETUPVAL                         R5 3
      162 GETTABLEKS                       R4 R5 K33 ["Change"]
      164 GETTABLEKS                       R3 R4 K34 ["AbsoluteSize"]
      166 GETTABLEKS                       R4 R0 K35 ["onAbsoluteSizeChanged"]
      168 SETTABLE                         R4 R2 R3
      169 LOADNIL                          R3
      170 SETTABLEKS                       R3 R2 K35 ["onAbsoluteSizeChanged"]
      172 GETUPVAL                         R5 3
      173 GETTABLEKS                       R4 R5 K33 ["Change"]
      175 GETTABLEKS                       R3 R4 K36 ["AbsolutePosition"]
      177 GETTABLEKS                       R4 R0 K37 ["onAbsolutePositionChanged"]
      179 SETTABLE                         R4 R2 R3
      180 LOADNIL                          R3
      181 SETTABLEKS                       R3 R2 K37 ["onAbsolutePositionChanged"]
      183 GETTABLEKS                       R4 R2 K38 ["testId"]
      185 JUMPIFNOT                        R4 ; [+5]
      186 LOADK                            R4 K39 ["data-testid="]
      187 GETTABLEKS                       R5 R2 K38 ["testId"]
      189 CONCAT                           R3 R4 R5
      190 JUMP                             ; [+1]
      191 LOADNIL                          R3
      192 GETUPVAL                         R6 3
      193 GETTABLEKS                       R5 R6 K40 ["Tag"]
      195 GETTABLE                         R4 R2 R5
      196 JUMPIFNOT                        R4 ; [+10]
      197 JUMPIFNOT                        R3 ; [+9]
      198 GETUPVAL                         R5 3
      199 GETTABLEKS                       R4 R5 K40 ["Tag"]
      201 GETTABLE                         R6 R2 R4
      202 LOADK                            R7 K41 [" "]
      203 MOVE                             R8 R3
      204 CONCAT                           R5 R6 R8
      205 SETTABLE                         R5 R2 R4
      206 JUMP                             ; [+9]
      207 GETUPVAL                         R5 3
      208 GETTABLEKS                       R4 R5 K40 ["Tag"]
      210 GETUPVAL                         R8 3
      211 GETTABLEKS                       R7 R8 K40 ["Tag"]
      213 GETTABLE                         R6 R2 R7
      214 OR                               R5 R6 R3
      215 SETTABLE                         R5 R2 R4
      216 LOADNIL                          R4
      217 SETTABLEKS                       R4 R2 K38 ["testId"]
      219 RETURN                           R2 1

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
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Types"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Utility"]
       30 GETTABLEKS                       R6 R7 K12 ["indexBindable"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Utility"]
       37 GETTABLEKS                       R7 R8 K13 ["withCommonProps"]
       39 CALL                             R6 1 1
       40 DUPCLOSURE                       R7 K14 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R2
       45 RETURN                           R7 1
