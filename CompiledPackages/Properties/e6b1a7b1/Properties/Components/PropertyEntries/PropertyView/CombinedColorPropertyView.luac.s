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
        6 DUPTABLE                         R5 K2 [{"tag", "LayoutOrder"}]
        7 LOADK                            R6 K3 ["size-full-600 row"]
        8 SETTABLEKS                       R6 R5 K0 ["tag"]
       10 GETTABLEKS                       R6 R0 K4 ["layoutOrder"]
       12 SETTABLEKS                       R6 R5 K1 ["LayoutOrder"]
       14 DUPTABLE                         R6 K7 [{"Name", "Value"}]
       15 GETUPVAL                         R7 2
       16 GETUPVAL                         R8 4
       17 DUPTABLE                         R9 K9 [{"tag", "LayoutOrder", "Text"}]
       18 LOADK                            R10 K10 ["size-2000-full text-body-small text-align-x-left text-no-wrap"]
       19 SETTABLEKS                       R10 R9 K0 ["tag"]
       21 MOVE                             R10 R1
       22 CALL                             R10 0 1
       23 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       25 GETTABLEKS                       R10 R0 K11 ["name"]
       27 SETTABLEKS                       R10 R9 K8 ["Text"]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K5 ["Name"]
       32 GETUPVAL                         R7 2
       33 LOADK                            R8 K12 ["TextBox"]
       34 NEWTABLE                         R9 16 0
       36 MOVE                             R10 R1
       37 CALL                             R10 0 1
       38 SETTABLEKS                       R10 R9 K1 ["LayoutOrder"]
       40 GETIMPORT                        R10 K15 [UDim2.new]
       42 LOADN                            R11 1
       43 LOADN                            R12 176
       44 LOADN                            R13 1
       45 LOADN                            R14 0
       46 CALL                             R10 4 1
       47 SETTABLEKS                       R10 R9 K16 ["Size"]
       49 LOADB                            R10 0
       50 SETTABLEKS                       R10 R9 K17 ["ClearTextOnFocus"]
       52 GETTABLEKS                       R10 R0 K18 ["value"]
       54 SETTABLEKS                       R10 R9 K8 ["Text"]
       56 LOADN                            R10 1
       57 SETTABLEKS                       R10 R9 K19 ["BackgroundTransparency"]
       59 GETTABLEKS                       R13 R2 K20 ["Color"]
       61 GETTABLEKS                       R12 R13 K21 ["Content"]
       63 GETTABLEKS                       R11 R12 K22 ["Default"]
       65 GETTABLEKS                       R10 R11 K23 ["Transparency"]
       67 SETTABLEKS                       R10 R9 K24 ["TextTransparency"]
       69 GETTABLEKS                       R12 R2 K25 ["Typography"]
       71 GETTABLEKS                       R11 R12 K26 ["BodySmall"]
       73 GETTABLEKS                       R10 R11 K27 ["Font"]
       75 SETTABLEKS                       R10 R9 K27 ["Font"]
       77 GETTABLEKS                       R12 R2 K25 ["Typography"]
       79 GETTABLEKS                       R11 R12 K26 ["BodySmall"]
       81 GETTABLEKS                       R10 R11 K28 ["LineHeight"]
       83 SETTABLEKS                       R10 R9 K28 ["LineHeight"]
       85 GETTABLEKS                       R12 R2 K25 ["Typography"]
       87 GETTABLEKS                       R11 R12 K26 ["BodySmall"]
       89 GETTABLEKS                       R10 R11 K29 ["FontSize"]
       91 SETTABLEKS                       R10 R9 K30 ["TextSize"]
       93 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
       95 SETTABLEKS                       R10 R9 K32 ["TextXAlignment"]
       97 GETTABLEKS                       R13 R2 K20 ["Color"]
       99 GETTABLEKS                       R12 R13 K21 ["Content"]
      101 GETTABLEKS                       R11 R12 K22 ["Default"]
      103 GETTABLEKS                       R10 R11 K35 ["Color3"]
      105 SETTABLEKS                       R10 R9 K36 ["TextColor3"]
      107 GETUPVAL                         R12 5
      108 GETTABLEKS                       R11 R12 K37 ["Event"]
      110 GETTABLEKS                       R10 R11 K38 ["FocusLost"]
      112 GETTABLEKS                       R11 R0 K39 ["onFocusLost"]
      114 SETTABLE                         R11 R9 R10
      115 CALL                             R7 2 1
      116 SETTABLEKS                       R7 R6 K6 ["Value"]
      118 CALL                             R3 3 -1
      119 RETURN                           R3 -1

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
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K8 ["beginEditingAsync"]
       42 CALL                             R4 0 0
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K9 ["setPart"]
       46 LOADK                            R5 K10 ["color3"]
       47 MOVE                             R6 R3
       48 CALL                             R4 2 0
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K11 ["finishEditing"]
       52 GETIMPORT                        R5 K15 [Enum.FinishRecordingOperation.Commit]
       54 CALL                             R4 1 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["beginEditingAsync"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["setPart"]
        7 LOADK                            R4 K2 ["transparency"]
        8 GETTABLEKS                       R6 R0 K3 ["Text"]
       10 FASTCALL1                        TONUMBER R6 ; [+2]
       11 GETIMPORT                        R5 K5 [tonumber]
       13 CALL                             R5 1 1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K6 ["finishEditing"]
       18 GETIMPORT                        R4 K10 [Enum.FinishRecordingOperation.Commit]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["beginEditingAsync"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K1 ["setPart"]
        7 LOADK                            R4 K2 ["brickColor"]
        8 GETIMPORT                        R5 K5 [BrickColor.new]
       10 GETTABLEKS                       R6 R0 K6 ["Text"]
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K7 ["finishEditing"]
       17 GETIMPORT                        R4 K11 [Enum.FinishRecordingOperation.Commit]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R3 R0 K0 ["info"]
        4 GETTABLEKS                       R2 R3 K1 ["parts"]
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 2
        8 DUPTABLE                         R5 K3 [{"tag"}]
        9 LOADK                            R6 K4 ["size-full-0 auto-y col"]
       10 SETTABLEKS                       R6 R5 K2 ["tag"]
       12 DUPTABLE                         R6 K9 [{"ColorEditor", "Color3Placeholder", "TransparencyPlaceholder", "BrickColorPlaceholder"}]
       13 GETUPVAL                         R7 1
       14 GETUPVAL                         R8 3
       15 DUPTABLE                         R9 K16 [{"layoutOrder", "combinedColorParts", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing"}]
       16 MOVE                             R10 R1
       17 CALL                             R10 0 1
       18 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       20 SETTABLEKS                       R2 R9 K11 ["combinedColorParts"]
       22 GETTABLEKS                       R10 R0 K17 ["labelPressedSignal"]
       24 SETTABLEKS                       R10 R9 K12 ["activateCombinedInputSignal"]
       26 GETTABLEKS                       R10 R0 K13 ["beginEditingAsync"]
       28 SETTABLEKS                       R10 R9 K13 ["beginEditingAsync"]
       30 GETTABLEKS                       R10 R0 K14 ["setPart"]
       32 SETTABLEKS                       R10 R9 K14 ["setPart"]
       34 GETTABLEKS                       R10 R0 K15 ["finishEditing"]
       36 SETTABLEKS                       R10 R9 K15 ["finishEditing"]
       38 CALL                             R7 2 1
       39 SETTABLEKS                       R7 R6 K5 ["ColorEditor"]
       41 GETTABLEKS                       R10 R0 K0 ["info"]
       43 GETTABLEKS                       R9 R10 K1 ["parts"]
       45 GETTABLEKS                       R8 R9 K18 ["color3"]
       47 GETTABLEKS                       R7 R8 K19 ["value"]
       49 JUMPIFNOT                        R7 ; [+40]
       50 GETUPVAL                         R7 1
       51 GETUPVAL                         R8 4
       52 DUPTABLE                         R9 K22 [{"layoutOrder", "name", "value", "onFocusLost"}]
       53 MOVE                             R10 R1
       54 CALL                             R10 0 1
       55 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       57 LOADK                            R10 K23 ["Color3"]
       58 SETTABLEKS                       R10 R9 K20 ["name"]
       60 GETTABLEKS                       R14 R0 K0 ["info"]
       62 GETTABLEKS                       R13 R14 K1 ["parts"]
       64 GETTABLEKS                       R12 R13 K18 ["color3"]
       66 GETTABLEKS                       R11 R12 K24 ["multiple"]
       68 JUMPIFNOT                        R11 ; [+2]
       69 LOADK                            R10 K25 ["MULTIPLE"]
       70 JUMP                             ; [+12]
       71 GETTABLEKS                       R14 R0 K0 ["info"]
       73 GETTABLEKS                       R13 R14 K1 ["parts"]
       75 GETTABLEKS                       R12 R13 K18 ["color3"]
       77 GETTABLEKS                       R11 R12 K19 ["value"]
       79 FASTCALL1                        TOSTRING R11 ; [+2]
       80 GETIMPORT                        R10 K27 [tostring]
       82 CALL                             R10 1 1
       83 SETTABLEKS                       R10 R9 K19 ["value"]
       85 NEWCLOSURE                       R10 P0
       86 CAPTURE                          VAL R0
       87 SETTABLEKS                       R10 R9 K21 ["onFocusLost"]
       89 CALL                             R7 2 1
       90 SETTABLEKS                       R7 R6 K6 ["Color3Placeholder"]
       92 GETTABLEKS                       R10 R0 K0 ["info"]
       94 GETTABLEKS                       R9 R10 K1 ["parts"]
       96 GETTABLEKS                       R8 R9 K28 ["transparency"]
       98 GETTABLEKS                       R7 R8 K19 ["value"]
      100 JUMPIFNOT                        R7 ; [+40]
      101 GETUPVAL                         R7 1
      102 GETUPVAL                         R8 4
      103 DUPTABLE                         R9 K22 [{"layoutOrder", "name", "value", "onFocusLost"}]
      104 MOVE                             R10 R1
      105 CALL                             R10 0 1
      106 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
      108 LOADK                            R10 K29 ["Transparency"]
      109 SETTABLEKS                       R10 R9 K20 ["name"]
      111 GETTABLEKS                       R14 R0 K0 ["info"]
      113 GETTABLEKS                       R13 R14 K1 ["parts"]
      115 GETTABLEKS                       R12 R13 K28 ["transparency"]
      117 GETTABLEKS                       R11 R12 K24 ["multiple"]
      119 JUMPIFNOT                        R11 ; [+2]
      120 LOADK                            R10 K25 ["MULTIPLE"]
      121 JUMP                             ; [+12]
      122 GETTABLEKS                       R14 R0 K0 ["info"]
      124 GETTABLEKS                       R13 R14 K1 ["parts"]
      126 GETTABLEKS                       R12 R13 K28 ["transparency"]
      128 GETTABLEKS                       R11 R12 K19 ["value"]
      130 FASTCALL1                        TOSTRING R11 ; [+2]
      131 GETIMPORT                        R10 K27 [tostring]
      133 CALL                             R10 1 1
      134 SETTABLEKS                       R10 R9 K19 ["value"]
      136 NEWCLOSURE                       R10 P1
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R10 R9 K21 ["onFocusLost"]
      140 CALL                             R7 2 1
      141 SETTABLEKS                       R7 R6 K7 ["TransparencyPlaceholder"]
      143 GETTABLEKS                       R10 R0 K0 ["info"]
      145 GETTABLEKS                       R9 R10 K1 ["parts"]
      147 GETTABLEKS                       R8 R9 K30 ["brickColor"]
      149 GETTABLEKS                       R7 R8 K19 ["value"]
      151 JUMPIFNOT                        R7 ; [+40]
      152 GETUPVAL                         R7 1
      153 GETUPVAL                         R8 4
      154 DUPTABLE                         R9 K22 [{"layoutOrder", "name", "value", "onFocusLost"}]
      155 MOVE                             R10 R1
      156 CALL                             R10 0 1
      157 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
      159 LOADK                            R10 K31 ["BrickColor"]
      160 SETTABLEKS                       R10 R9 K20 ["name"]
      162 GETTABLEKS                       R14 R0 K0 ["info"]
      164 GETTABLEKS                       R13 R14 K1 ["parts"]
      166 GETTABLEKS                       R12 R13 K30 ["brickColor"]
      168 GETTABLEKS                       R11 R12 K24 ["multiple"]
      170 JUMPIFNOT                        R11 ; [+2]
      171 LOADK                            R10 K25 ["MULTIPLE"]
      172 JUMP                             ; [+12]
      173 GETTABLEKS                       R14 R0 K0 ["info"]
      175 GETTABLEKS                       R13 R14 K1 ["parts"]
      177 GETTABLEKS                       R12 R13 K30 ["brickColor"]
      179 GETTABLEKS                       R11 R12 K19 ["value"]
      181 FASTCALL1                        TOSTRING R11 ; [+2]
      182 GETIMPORT                        R10 K27 [tostring]
      184 CALL                             R10 1 1
      185 SETTABLEKS                       R10 R9 K19 ["value"]
      187 NEWCLOSURE                       R10 P2
      188 CAPTURE                          VAL R0
      189 SETTABLEKS                       R10 R9 K21 ["onFocusLost"]
      191 CALL                             R7 2 1
      192 SETTABLEKS                       R7 R6 K8 ["BrickColorPlaceholder"]
      194 CALL                             R3 3 -1
      195 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Components"]
       11 GETTABLEKS                       R4 R5 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Color"]
       15 GETTABLEKS                       R2 R3 K9 ["ColorEditor"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R4 K11 ["Foundation"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["PropertyEditorTypes"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Parent"]
       34 GETTABLEKS                       R5 R6 K13 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K10 ["Parent"]
       41 GETTABLEKS                       R6 R7 K14 ["ReactUtils"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R2 K15 ["Text"]
       46 GETTABLEKS                       R7 R2 K16 ["View"]
       48 GETTABLEKS                       R8 R4 K17 ["createElement"]
       50 GETTABLEKS                       R10 R2 K18 ["Hooks"]
       52 GETTABLEKS                       R9 R10 K19 ["useTokens"]
       54 GETTABLEKS                       R10 R5 K20 ["createNextOrder"]
       56 DUPCLOSURE                       R11 K21 [PROTO_0]
       57 DUPCLOSURE                       R12 K22 [PROTO_1]
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R13 K23 [PROTO_5]
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R12
       70 RETURN                           R13 1
