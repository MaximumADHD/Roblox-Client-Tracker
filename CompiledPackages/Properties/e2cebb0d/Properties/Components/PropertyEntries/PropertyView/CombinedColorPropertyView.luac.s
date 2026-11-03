PROTO_0:
        0 LOADK                            R3 K0 ["([^,]+),([^,]+),([^,]+)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 3
        4 JUMPIFNOT                        R1 ; [+27]
        5 JUMPIFNOT                        R2 ; [+26]
        6 JUMPIFNOT                        R3 ; [+25]
        7 FASTCALL1                        TONUMBER R1 ; [+3]
        8 MOVE                             R5 R1
        9 GETIMPORT                        R4 K3 [tonumber]
       11 CALL                             R4 1 1
       12 FASTCALL1                        TONUMBER R2 ; [+3]
       13 MOVE                             R6 R2
       14 GETIMPORT                        R5 K3 [tonumber]
       16 CALL                             R5 1 1
       17 FASTCALL1                        TONUMBER R3 ; [+3]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R6 K3 [tonumber]
       21 CALL                             R6 1 1
       22 JUMPIFNOT                        R4 ; [+9]
       23 JUMPIFNOT                        R5 ; [+8]
       24 JUMPIFNOT                        R6 ; [+7]
       25 GETIMPORT                        R7 K6 [Color3.new]
       27 MOVE                             R8 R4
       28 MOVE                             R9 R5
       29 MOVE                             R10 R6
       30 CALL                             R7 3 -1
       31 RETURN                           R7 -1
       32 LOADNIL                          R4
       33 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 DUPTABLE                         R5 K3 [{[1] = "row size-full-600", ["LayoutOrder"]}]
        7 GETTABLEKS                       R6 R0 K4 ["layoutOrder"]
        9 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       11 DUPTABLE                         R6 K7 [{"Name", "Value"}]
       12 GETUPVAL                         R7 2
       13 GETUPVAL                         R8 4
       14 DUPTABLE                         R9 K10 [{[1] = "size-2000-full text-body-small text-no-wrap text-align-x-left", ["LayoutOrder"], ["Text"]}]
       15 MOVE                             R10 R1
       16 CALL                             R10 0 1
       17 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       19 GETTABLEKS                       R10 R0 K11 ["name"]
       21 SETTABLEKS                       R10 R9 K9 ["Text"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K5 ["Name"]
       26 GETUPVAL                         R7 2
       27 LOADK                            R8 K12 ["TextBox"]
       28 NEWTABLE                         R9 16 0
       30 MOVE                             R10 R1
       31 CALL                             R10 0 1
       32 SETTABLEKS                       R10 R9 K2 ["LayoutOrder"]
       34 GETIMPORT                        R10 K15 [UDim2.new]
       36 LOADN                            R11 1
       37 LOADN                            R12 -80
       38 LOADN                            R13 1
       39 LOADN                            R14 0
       40 CALL                             R10 4 1
       41 SETTABLEKS                       R10 R9 K16 ["Size"]
       43 LOADB                            R10 0
       44 SETTABLEKS                       R10 R9 K17 ["ClearTextOnFocus"]
       46 GETTABLEKS                       R10 R0 K18 ["value"]
       48 SETTABLEKS                       R10 R9 K9 ["Text"]
       50 LOADN                            R10 1
       51 SETTABLEKS                       R10 R9 K19 ["BackgroundTransparency"]
       53 GETTABLEKS                       R10 R2 K20 ["Color"]
       55 GETTABLEKS                       R10 R10 K21 ["Content"]
       57 GETTABLEKS                       R10 R10 K22 ["Default"]
       59 GETTABLEKS                       R10 R10 K23 ["Transparency"]
       61 SETTABLEKS                       R10 R9 K24 ["TextTransparency"]
       63 GETUPVAL                         R11 5
       64 JUMPIFNOT                        R11 ; [+2]
       65 LOADNIL                          R10
       66 JUMP                             ; [+6]
       67 GETTABLEKS                       R10 R2 K25 ["Typography"]
       69 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
       71 GETTABLEKS                       R10 R10 K27 ["Font"]
       73 SETTABLEKS                       R10 R9 K27 ["Font"]
       75 GETUPVAL                         R11 5
       76 JUMPIFNOT                        R11 ; [+9]
       77 GETUPVAL                         R10 6
       78 GETTABLEKS                       R11 R2 K25 ["Typography"]
       80 GETTABLEKS                       R11 R11 K26 ["BodySmall"]
       82 GETTABLEKS                       R11 R11 K27 ["Font"]
       84 CALL                             R10 1 1
       85 JUMP                             ; [+1]
       86 LOADNIL                          R10
       87 SETTABLEKS                       R10 R9 K28 ["FontFace"]
       89 GETTABLEKS                       R10 R2 K25 ["Typography"]
       91 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
       93 GETTABLEKS                       R10 R10 K29 ["LineHeight"]
       95 SETTABLEKS                       R10 R9 K29 ["LineHeight"]
       97 GETTABLEKS                       R10 R2 K25 ["Typography"]
       99 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
      101 GETTABLEKS                       R10 R10 K30 ["FontSize"]
      103 SETTABLEKS                       R10 R9 K31 ["TextSize"]
      105 GETIMPORT                        R10 K35 [Enum.TextXAlignment.Left]
      107 SETTABLEKS                       R10 R9 K33 ["TextXAlignment"]
      109 GETTABLEKS                       R10 R2 K20 ["Color"]
      111 GETTABLEKS                       R10 R10 K21 ["Content"]
      113 GETTABLEKS                       R10 R10 K22 ["Default"]
      115 GETTABLEKS                       R10 R10 K36 ["Color3"]
      117 SETTABLEKS                       R10 R9 K37 ["TextColor3"]
      119 GETUPVAL                         R10 7
      120 GETTABLEKS                       R10 R10 K38 ["Event"]
      122 GETTABLEKS                       R10 R10 K39 ["FocusLost"]
      124 GETTABLEKS                       R11 R0 K40 ["onFocusLost"]
      126 SETTABLE                         R11 R9 R10
      127 CALL                             R7 2 1
      128 SETTABLEKS                       R7 R6 K6 ["Value"]
      130 CALL                             R3 3 -1
      131 RETURN                           R3 -1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K0 ["Text"]
        2 LOADK                            R7 K1 ["([^,]+),([^,]+),([^,]+)"]
        3 NAMECALL                         R5 R4 K2 ["match"]
        5 CALL                             R5 2 3
        6 JUMPIFNOT                        R5 ; [+28]
        7 JUMPIFNOT                        R6 ; [+27]
        8 JUMPIFNOT                        R7 ; [+26]
        9 FASTCALL1                        TONUMBER R5 ; [+3]
       10 MOVE                             R9 R5
       11 GETIMPORT                        R8 K4 [tonumber]
       13 CALL                             R8 1 1
       14 FASTCALL1                        TONUMBER R6 ; [+3]
       15 MOVE                             R10 R6
       16 GETIMPORT                        R9 K4 [tonumber]
       18 CALL                             R9 1 1
       19 FASTCALL1                        TONUMBER R7 ; [+3]
       20 MOVE                             R11 R7
       21 GETIMPORT                        R10 K4 [tonumber]
       23 CALL                             R10 1 1
       24 JUMPIFNOT                        R8 ; [+10]
       25 JUMPIFNOT                        R9 ; [+9]
       26 JUMPIFNOT                        R10 ; [+8]
       27 GETIMPORT                        R11 K7 [Color3.new]
       29 MOVE                             R12 R8
       30 MOVE                             R13 R9
       31 MOVE                             R14 R10
       32 CALL                             R11 3 1
       33 MOVE                             R3 R11
       34 JUMP                             ; [+1]
       35 LOADNIL                          R3
       36 JUMPIFNOTEQKNIL                  R3 ; [+2]
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 0
       40 DUPTABLE                         R5 K11 [{["type"] = "Edit", ["value"]}]
       41 SETTABLEKS                       R3 R5 K10 ["value"]
       43 CALL                             R4 1 0
       44 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{[1] = "Edit", ["value"]}]
        2 GETTABLEKS                       R6 R0 K4 ["Text"]
        4 FASTCALL1                        TONUMBER R6 ; [+2]
        5 GETIMPORT                        R5 K6 [tonumber]
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K2 ["value"]
       10 CALL                             R3 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 DUPTABLE                         R4 K3 [{[1] = "Edit", ["value"]}]
        2 GETIMPORT                        R5 K6 [BrickColor.new]
        4 GETTABLEKS                       R6 R0 K7 ["Text"]
        6 CALL                             R5 1 1
        7 SETTABLEKS                       R5 R4 K2 ["value"]
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R0 K2 ["editProperty"]
       11 LOADK                            R5 K3 ["color3"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R5 R0 K2 ["editProperty"]
       16 LOADK                            R6 K4 ["transparency"]
       17 CALL                             R4 2 1
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R6 R0 K2 ["editProperty"]
       21 LOADK                            R7 K5 ["brickColor"]
       22 CALL                             R5 2 1
       23 GETUPVAL                         R6 3
       24 GETUPVAL                         R7 4
       25 DUPTABLE                         R8 K8 [{["tag"] = "col size-full-0 auto-y"}]
       26 DUPTABLE                         R9 K13 [{"ColorEditor", "Color3Placeholder", "TransparencyPlaceholder", "BrickColorPlaceholder"}]
       27 GETUPVAL                         R10 3
       28 GETUPVAL                         R11 5
       29 DUPTABLE                         R12 K17 [{"layoutOrder", "combinedColorPropertyInfo", "activateCombinedInputSignal", "editProperty"}]
       30 MOVE                             R13 R2
       31 CALL                             R13 0 1
       32 SETTABLEKS                       R13 R12 K14 ["layoutOrder"]
       34 SETTABLEKS                       R1 R12 K15 ["combinedColorPropertyInfo"]
       36 GETTABLEKS                       R13 R0 K18 ["labelPressedSignal"]
       38 SETTABLEKS                       R13 R12 K16 ["activateCombinedInputSignal"]
       40 GETTABLEKS                       R13 R0 K2 ["editProperty"]
       42 SETTABLEKS                       R13 R12 K2 ["editProperty"]
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K9 ["ColorEditor"]
       47 GETTABLEKS                       R10 R1 K19 ["parts"]
       49 GETTABLEKS                       R10 R10 K3 ["color3"]
       51 GETTABLEKS                       R10 R10 K20 ["value"]
       53 JUMPIFNOT                        R10 ; [+33]
       54 GETUPVAL                         R10 3
       55 GETUPVAL                         R11 6
       56 DUPTABLE                         R12 K24 [{["layoutOrder"], ["name"] = "Color3", ["value"], ["onFocusLost"]}]
       57 MOVE                             R13 R2
       58 CALL                             R13 0 1
       59 SETTABLEKS                       R13 R12 K14 ["layoutOrder"]
       61 GETTABLEKS                       R14 R1 K19 ["parts"]
       63 GETTABLEKS                       R14 R14 K3 ["color3"]
       65 GETTABLEKS                       R14 R14 K25 ["multiple"]
       67 JUMPIFNOT                        R14 ; [+2]
       68 LOADK                            R13 K26 ["MULTIPLE"]
       69 JUMP                             ; [+10]
       70 GETTABLEKS                       R14 R1 K19 ["parts"]
       72 GETTABLEKS                       R14 R14 K3 ["color3"]
       74 GETTABLEKS                       R14 R14 K20 ["value"]
       76 FASTCALL1                        TOSTRING R14 ; [+2]
       77 GETIMPORT                        R13 K28 [tostring]
       79 CALL                             R13 1 1
       80 SETTABLEKS                       R13 R12 K20 ["value"]
       82 NEWCLOSURE                       R13 P0
       83 CAPTURE                          VAL R3
       84 SETTABLEKS                       R13 R12 K23 ["onFocusLost"]
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K10 ["Color3Placeholder"]
       89 GETTABLEKS                       R10 R1 K19 ["parts"]
       91 GETTABLEKS                       R10 R10 K4 ["transparency"]
       93 GETTABLEKS                       R10 R10 K20 ["value"]
       95 JUMPIFNOT                        R10 ; [+33]
       96 GETUPVAL                         R10 3
       97 GETUPVAL                         R11 6
       98 DUPTABLE                         R12 K30 [{["layoutOrder"], ["name"] = "Transparency", ["value"], ["onFocusLost"]}]
       99 MOVE                             R13 R2
      100 CALL                             R13 0 1
      101 SETTABLEKS                       R13 R12 K14 ["layoutOrder"]
      103 GETTABLEKS                       R14 R1 K19 ["parts"]
      105 GETTABLEKS                       R14 R14 K4 ["transparency"]
      107 GETTABLEKS                       R14 R14 K25 ["multiple"]
      109 JUMPIFNOT                        R14 ; [+2]
      110 LOADK                            R13 K26 ["MULTIPLE"]
      111 JUMP                             ; [+10]
      112 GETTABLEKS                       R14 R1 K19 ["parts"]
      114 GETTABLEKS                       R14 R14 K4 ["transparency"]
      116 GETTABLEKS                       R14 R14 K20 ["value"]
      118 FASTCALL1                        TOSTRING R14 ; [+2]
      119 GETIMPORT                        R13 K28 [tostring]
      121 CALL                             R13 1 1
      122 SETTABLEKS                       R13 R12 K20 ["value"]
      124 NEWCLOSURE                       R13 P1
      125 CAPTURE                          VAL R4
      126 SETTABLEKS                       R13 R12 K23 ["onFocusLost"]
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K11 ["TransparencyPlaceholder"]
      131 GETTABLEKS                       R10 R1 K19 ["parts"]
      133 GETTABLEKS                       R10 R10 K5 ["brickColor"]
      135 GETTABLEKS                       R10 R10 K20 ["value"]
      137 JUMPIFNOT                        R10 ; [+33]
      138 GETUPVAL                         R10 3
      139 GETUPVAL                         R11 6
      140 DUPTABLE                         R12 K32 [{["layoutOrder"], ["name"] = "BrickColor", ["value"], ["onFocusLost"]}]
      141 MOVE                             R13 R2
      142 CALL                             R13 0 1
      143 SETTABLEKS                       R13 R12 K14 ["layoutOrder"]
      145 GETTABLEKS                       R14 R1 K19 ["parts"]
      147 GETTABLEKS                       R14 R14 K5 ["brickColor"]
      149 GETTABLEKS                       R14 R14 K25 ["multiple"]
      151 JUMPIFNOT                        R14 ; [+2]
      152 LOADK                            R13 K26 ["MULTIPLE"]
      153 JUMP                             ; [+10]
      154 GETTABLEKS                       R14 R1 K19 ["parts"]
      156 GETTABLEKS                       R14 R14 K5 ["brickColor"]
      158 GETTABLEKS                       R14 R14 K20 ["value"]
      160 FASTCALL1                        TOSTRING R14 ; [+2]
      161 GETIMPORT                        R13 K28 [tostring]
      163 CALL                             R13 1 1
      164 SETTABLEKS                       R13 R12 K20 ["value"]
      166 NEWCLOSURE                       R13 P2
      167 CAPTURE                          VAL R5
      168 SETTABLEKS                       R13 R12 K23 ["onFocusLost"]
      170 CALL                             R10 2 1
      171 SETTABLEKS                       R10 R9 K12 ["BrickColorPlaceholder"]
      173 CALL                             R6 3 -1
      174 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["Color"]
       17 GETTABLEKS                       R3 R3 K10 ["ColorEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["PropertyEditorTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K13 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K14 ["ReactUtils"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K15 ["SignalsReact"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K16 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K17 ["useEditValue"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R3 K18 ["Text"]
       54 GETTABLEKS                       R10 R3 K19 ["View"]
       56 GETTABLEKS                       R11 R5 K20 ["createElement"]
       58 GETTABLEKS                       R12 R3 K16 ["Hooks"]
       60 GETTABLEKS                       R12 R12 K21 ["useTokens"]
       62 GETTABLEKS                       R13 R3 K22 ["Utility"]
       64 GETTABLEKS                       R13 R13 K23 ["Flags"]
       66 GETTABLEKS                       R13 R13 K24 ["FoundationStudioFontFaceMigration"]
       68 GETTABLEKS                       R14 R3 K22 ["Utility"]
       70 GETTABLEKS                       R14 R14 K25 ["normalizeFontFace"]
       72 GETTABLEKS                       R15 R6 K26 ["createNextOrder"]
       74 DUPCLOSURE                       R16 K27 [PROTO_0]
       75 DUPCLOSURE                       R17 K28 [PROTO_1]
       76 CAPTURE                          VAL R15
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R14
       83 CAPTURE                          VAL R5
       84 DUPCLOSURE                       R18 K29 [PROTO_5]
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R11
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R17
       92 RETURN                           R18 1
