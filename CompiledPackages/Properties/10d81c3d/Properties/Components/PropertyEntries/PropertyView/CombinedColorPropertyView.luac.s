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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETTABLEKS                       R3 R1 K2 ["parts"]
       10 GETUPVAL                         R4 2
       11 GETUPVAL                         R5 3
       12 DUPTABLE                         R6 K4 [{"tag"}]
       13 LOADK                            R7 K5 ["size-full-0 auto-y col"]
       14 SETTABLEKS                       R7 R6 K3 ["tag"]
       16 DUPTABLE                         R7 K10 [{"ColorEditor", "Color3Placeholder", "TransparencyPlaceholder", "BrickColorPlaceholder"}]
       17 GETUPVAL                         R8 2
       18 GETUPVAL                         R9 4
       19 DUPTABLE                         R10 K17 [{"layoutOrder", "combinedColorParts", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing"}]
       20 MOVE                             R11 R2
       21 CALL                             R11 0 1
       22 SETTABLEKS                       R11 R10 K11 ["layoutOrder"]
       24 SETTABLEKS                       R3 R10 K12 ["combinedColorParts"]
       26 GETTABLEKS                       R11 R0 K18 ["labelPressedSignal"]
       28 SETTABLEKS                       R11 R10 K13 ["activateCombinedInputSignal"]
       30 GETTABLEKS                       R11 R0 K14 ["beginEditingAsync"]
       32 SETTABLEKS                       R11 R10 K14 ["beginEditingAsync"]
       34 GETTABLEKS                       R11 R0 K15 ["setPart"]
       36 SETTABLEKS                       R11 R10 K15 ["setPart"]
       38 GETTABLEKS                       R11 R0 K16 ["finishEditing"]
       40 SETTABLEKS                       R11 R10 K16 ["finishEditing"]
       42 CALL                             R8 2 1
       43 SETTABLEKS                       R8 R7 K6 ["ColorEditor"]
       45 GETTABLEKS                       R10 R1 K2 ["parts"]
       47 GETTABLEKS                       R9 R10 K19 ["color3"]
       49 GETTABLEKS                       R8 R9 K20 ["value"]
       51 JUMPIFNOT                        R8 ; [+36]
       52 GETUPVAL                         R8 2
       53 GETUPVAL                         R9 5
       54 DUPTABLE                         R10 K23 [{"layoutOrder", "name", "value", "onFocusLost"}]
       55 MOVE                             R11 R2
       56 CALL                             R11 0 1
       57 SETTABLEKS                       R11 R10 K11 ["layoutOrder"]
       59 LOADK                            R11 K24 ["Color3"]
       60 SETTABLEKS                       R11 R10 K21 ["name"]
       62 GETTABLEKS                       R14 R1 K2 ["parts"]
       64 GETTABLEKS                       R13 R14 K19 ["color3"]
       66 GETTABLEKS                       R12 R13 K25 ["multiple"]
       68 JUMPIFNOT                        R12 ; [+2]
       69 LOADK                            R11 K26 ["MULTIPLE"]
       70 JUMP                             ; [+10]
       71 GETTABLEKS                       R14 R1 K2 ["parts"]
       73 GETTABLEKS                       R13 R14 K19 ["color3"]
       75 GETTABLEKS                       R12 R13 K20 ["value"]
       77 FASTCALL1                        TOSTRING R12 ; [+2]
       78 GETIMPORT                        R11 K28 [tostring]
       80 CALL                             R11 1 1
       81 SETTABLEKS                       R11 R10 K20 ["value"]
       83 NEWCLOSURE                       R11 P0
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R11 R10 K22 ["onFocusLost"]
       87 CALL                             R8 2 1
       88 SETTABLEKS                       R8 R7 K7 ["Color3Placeholder"]
       90 GETTABLEKS                       R10 R1 K2 ["parts"]
       92 GETTABLEKS                       R9 R10 K29 ["transparency"]
       94 GETTABLEKS                       R8 R9 K20 ["value"]
       96 JUMPIFNOT                        R8 ; [+36]
       97 GETUPVAL                         R8 2
       98 GETUPVAL                         R9 5
       99 DUPTABLE                         R10 K23 [{"layoutOrder", "name", "value", "onFocusLost"}]
      100 MOVE                             R11 R2
      101 CALL                             R11 0 1
      102 SETTABLEKS                       R11 R10 K11 ["layoutOrder"]
      104 LOADK                            R11 K30 ["Transparency"]
      105 SETTABLEKS                       R11 R10 K21 ["name"]
      107 GETTABLEKS                       R14 R1 K2 ["parts"]
      109 GETTABLEKS                       R13 R14 K29 ["transparency"]
      111 GETTABLEKS                       R12 R13 K25 ["multiple"]
      113 JUMPIFNOT                        R12 ; [+2]
      114 LOADK                            R11 K26 ["MULTIPLE"]
      115 JUMP                             ; [+10]
      116 GETTABLEKS                       R14 R1 K2 ["parts"]
      118 GETTABLEKS                       R13 R14 K29 ["transparency"]
      120 GETTABLEKS                       R12 R13 K20 ["value"]
      122 FASTCALL1                        TOSTRING R12 ; [+2]
      123 GETIMPORT                        R11 K28 [tostring]
      125 CALL                             R11 1 1
      126 SETTABLEKS                       R11 R10 K20 ["value"]
      128 NEWCLOSURE                       R11 P1
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R11 R10 K22 ["onFocusLost"]
      132 CALL                             R8 2 1
      133 SETTABLEKS                       R8 R7 K8 ["TransparencyPlaceholder"]
      135 GETTABLEKS                       R10 R1 K2 ["parts"]
      137 GETTABLEKS                       R9 R10 K31 ["brickColor"]
      139 GETTABLEKS                       R8 R9 K20 ["value"]
      141 JUMPIFNOT                        R8 ; [+36]
      142 GETUPVAL                         R8 2
      143 GETUPVAL                         R9 5
      144 DUPTABLE                         R10 K23 [{"layoutOrder", "name", "value", "onFocusLost"}]
      145 MOVE                             R11 R2
      146 CALL                             R11 0 1
      147 SETTABLEKS                       R11 R10 K11 ["layoutOrder"]
      149 LOADK                            R11 K32 ["BrickColor"]
      150 SETTABLEKS                       R11 R10 K21 ["name"]
      152 GETTABLEKS                       R14 R1 K2 ["parts"]
      154 GETTABLEKS                       R13 R14 K31 ["brickColor"]
      156 GETTABLEKS                       R12 R13 K25 ["multiple"]
      158 JUMPIFNOT                        R12 ; [+2]
      159 LOADK                            R11 K26 ["MULTIPLE"]
      160 JUMP                             ; [+10]
      161 GETTABLEKS                       R14 R1 K2 ["parts"]
      163 GETTABLEKS                       R13 R14 K31 ["brickColor"]
      165 GETTABLEKS                       R12 R13 K20 ["value"]
      167 FASTCALL1                        TOSTRING R12 ; [+2]
      168 GETIMPORT                        R11 K28 [tostring]
      170 CALL                             R11 1 1
      171 SETTABLEKS                       R11 R10 K20 ["value"]
      173 NEWCLOSURE                       R11 P2
      174 CAPTURE                          VAL R0
      175 SETTABLEKS                       R11 R10 K22 ["onFocusLost"]
      177 CALL                             R8 2 1
      178 SETTABLEKS                       R8 R7 K9 ["BrickColorPlaceholder"]
      180 CALL                             R4 3 -1
      181 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R6 R0 K7 ["Components"]
       13 GETTABLEKS                       R5 R6 K8 ["Util"]
       15 GETTABLEKS                       R4 R5 K9 ["Color"]
       17 GETTABLEKS                       R3 R4 K10 ["ColorEditor"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K11 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K12 ["PropertyEditorTypes"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETIMPORT                        R8 K1 [script]
       34 GETTABLEKS                       R7 R8 K4 ["Parent"]
       36 GETTABLEKS                       R6 R7 K13 ["PropertyViewTypes"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K14 ["React"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R1 K16 ["SignalsReact"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R3 K17 ["Text"]
       56 GETTABLEKS                       R10 R3 K18 ["View"]
       58 GETTABLEKS                       R11 R6 K19 ["createElement"]
       60 GETTABLEKS                       R13 R3 K20 ["Hooks"]
       62 GETTABLEKS                       R12 R13 K21 ["useTokens"]
       64 GETTABLEKS                       R13 R7 K22 ["createNextOrder"]
       66 DUPCLOSURE                       R14 K23 [PROTO_0]
       67 DUPCLOSURE                       R15 K24 [PROTO_1]
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R12
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R6
       74 DUPCLOSURE                       R16 K25 [PROTO_5]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R11
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R15
       81 RETURN                           R16 1
