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
       63 GETTABLEKS                       R10 R2 K25 ["Typography"]
       65 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
       67 GETTABLEKS                       R10 R10 K27 ["Font"]
       69 SETTABLEKS                       R10 R9 K27 ["Font"]
       71 GETTABLEKS                       R10 R2 K25 ["Typography"]
       73 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
       75 GETTABLEKS                       R10 R10 K28 ["LineHeight"]
       77 SETTABLEKS                       R10 R9 K28 ["LineHeight"]
       79 GETTABLEKS                       R10 R2 K25 ["Typography"]
       81 GETTABLEKS                       R10 R10 K26 ["BodySmall"]
       83 GETTABLEKS                       R10 R10 K29 ["FontSize"]
       85 SETTABLEKS                       R10 R9 K30 ["TextSize"]
       87 GETIMPORT                        R10 K34 [Enum.TextXAlignment.Left]
       89 SETTABLEKS                       R10 R9 K32 ["TextXAlignment"]
       91 GETTABLEKS                       R10 R2 K20 ["Color"]
       93 GETTABLEKS                       R10 R10 K21 ["Content"]
       95 GETTABLEKS                       R10 R10 K22 ["Default"]
       97 GETTABLEKS                       R10 R10 K35 ["Color3"]
       99 SETTABLEKS                       R10 R9 K36 ["TextColor3"]
      101 GETUPVAL                         R10 5
      102 GETTABLEKS                       R10 R10 K37 ["Event"]
      104 GETTABLEKS                       R10 R10 K38 ["FocusLost"]
      106 GETTABLEKS                       R11 R0 K39 ["onFocusLost"]
      108 SETTABLE                         R11 R9 R10
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K6 ["Value"]
      112 CALL                             R3 3 -1
      113 RETURN                           R3 -1

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
       40 GETTABLEKS                       R4 R4 K8 ["beginEditingAsync"]
       42 CALL                             R4 0 0
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K9 ["setPart"]
       46 LOADK                            R5 K10 ["color3"]
       47 MOVE                             R6 R3
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K11 ["finishEditing"]
       52 GETIMPORT                        R5 K15 [Enum.FinishRecordingOperation.Commit]
       54 CALL                             R4 1 0
       55 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["beginEditingAsync"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["setPart"]
        7 LOADK                            R4 K2 ["transparency"]
        8 GETTABLEKS                       R6 R0 K3 ["Text"]
       10 FASTCALL1                        TONUMBER R6 ; [+2]
       11 GETIMPORT                        R5 K5 [tonumber]
       13 CALL                             R5 1 1
       14 CALL                             R3 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K6 ["finishEditing"]
       18 GETIMPORT                        R4 K10 [Enum.FinishRecordingOperation.Commit]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["beginEditingAsync"]
        3 CALL                             R3 0 0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["setPart"]
        7 LOADK                            R4 K2 ["brickColor"]
        8 GETIMPORT                        R5 K5 [BrickColor.new]
       10 GETTABLEKS                       R6 R0 K6 ["Text"]
       12 CALL                             R5 1 -1
       13 CALL                             R3 -1 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K7 ["finishEditing"]
       17 GETIMPORT                        R4 K11 [Enum.FinishRecordingOperation.Commit]
       19 CALL                             R3 1 0
       20 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getInfo"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 DUPTABLE                         R5 K4 [{["tag"] = "col size-full-0 auto-y"}]
       11 DUPTABLE                         R6 K9 [{"ColorEditor", "Color3Placeholder", "TransparencyPlaceholder", "BrickColorPlaceholder"}]
       12 GETUPVAL                         R7 2
       13 GETUPVAL                         R8 4
       14 DUPTABLE                         R9 K16 [{"layoutOrder", "combinedColorPropertyInfo", "activateCombinedInputSignal", "beginEditingAsync", "setPart", "finishEditing"}]
       15 MOVE                             R10 R2
       16 CALL                             R10 0 1
       17 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       19 SETTABLEKS                       R1 R9 K11 ["combinedColorPropertyInfo"]
       21 GETTABLEKS                       R10 R0 K17 ["labelPressedSignal"]
       23 SETTABLEKS                       R10 R9 K12 ["activateCombinedInputSignal"]
       25 GETTABLEKS                       R10 R0 K13 ["beginEditingAsync"]
       27 SETTABLEKS                       R10 R9 K13 ["beginEditingAsync"]
       29 GETTABLEKS                       R10 R0 K14 ["setPart"]
       31 SETTABLEKS                       R10 R9 K14 ["setPart"]
       33 GETTABLEKS                       R10 R0 K15 ["finishEditing"]
       35 SETTABLEKS                       R10 R9 K15 ["finishEditing"]
       37 CALL                             R7 2 1
       38 SETTABLEKS                       R7 R6 K5 ["ColorEditor"]
       40 GETTABLEKS                       R7 R1 K18 ["parts"]
       42 GETTABLEKS                       R7 R7 K19 ["color3"]
       44 GETTABLEKS                       R7 R7 K20 ["value"]
       46 JUMPIFNOT                        R7 ; [+33]
       47 GETUPVAL                         R7 2
       48 GETUPVAL                         R8 5
       49 DUPTABLE                         R9 K24 [{["layoutOrder"], ["name"] = "Color3", ["value"], ["onFocusLost"]}]
       50 MOVE                             R10 R2
       51 CALL                             R10 0 1
       52 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       54 GETTABLEKS                       R11 R1 K18 ["parts"]
       56 GETTABLEKS                       R11 R11 K19 ["color3"]
       58 GETTABLEKS                       R11 R11 K25 ["multiple"]
       60 JUMPIFNOT                        R11 ; [+2]
       61 LOADK                            R10 K26 ["MULTIPLE"]
       62 JUMP                             ; [+10]
       63 GETTABLEKS                       R11 R1 K18 ["parts"]
       65 GETTABLEKS                       R11 R11 K19 ["color3"]
       67 GETTABLEKS                       R11 R11 K20 ["value"]
       69 FASTCALL1                        TOSTRING R11 ; [+2]
       70 GETIMPORT                        R10 K28 [tostring]
       72 CALL                             R10 1 1
       73 SETTABLEKS                       R10 R9 K20 ["value"]
       75 NEWCLOSURE                       R10 P0
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R10 R9 K23 ["onFocusLost"]
       79 CALL                             R7 2 1
       80 SETTABLEKS                       R7 R6 K6 ["Color3Placeholder"]
       82 GETTABLEKS                       R7 R1 K18 ["parts"]
       84 GETTABLEKS                       R7 R7 K29 ["transparency"]
       86 GETTABLEKS                       R7 R7 K20 ["value"]
       88 JUMPIFNOT                        R7 ; [+33]
       89 GETUPVAL                         R7 2
       90 GETUPVAL                         R8 5
       91 DUPTABLE                         R9 K31 [{["layoutOrder"], ["name"] = "Transparency", ["value"], ["onFocusLost"]}]
       92 MOVE                             R10 R2
       93 CALL                             R10 0 1
       94 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
       96 GETTABLEKS                       R11 R1 K18 ["parts"]
       98 GETTABLEKS                       R11 R11 K29 ["transparency"]
      100 GETTABLEKS                       R11 R11 K25 ["multiple"]
      102 JUMPIFNOT                        R11 ; [+2]
      103 LOADK                            R10 K26 ["MULTIPLE"]
      104 JUMP                             ; [+10]
      105 GETTABLEKS                       R11 R1 K18 ["parts"]
      107 GETTABLEKS                       R11 R11 K29 ["transparency"]
      109 GETTABLEKS                       R11 R11 K20 ["value"]
      111 FASTCALL1                        TOSTRING R11 ; [+2]
      112 GETIMPORT                        R10 K28 [tostring]
      114 CALL                             R10 1 1
      115 SETTABLEKS                       R10 R9 K20 ["value"]
      117 NEWCLOSURE                       R10 P1
      118 CAPTURE                          VAL R0
      119 SETTABLEKS                       R10 R9 K23 ["onFocusLost"]
      121 CALL                             R7 2 1
      122 SETTABLEKS                       R7 R6 K7 ["TransparencyPlaceholder"]
      124 GETTABLEKS                       R7 R1 K18 ["parts"]
      126 GETTABLEKS                       R7 R7 K32 ["brickColor"]
      128 GETTABLEKS                       R7 R7 K20 ["value"]
      130 JUMPIFNOT                        R7 ; [+33]
      131 GETUPVAL                         R7 2
      132 GETUPVAL                         R8 5
      133 DUPTABLE                         R9 K34 [{["layoutOrder"], ["name"] = "BrickColor", ["value"], ["onFocusLost"]}]
      134 MOVE                             R10 R2
      135 CALL                             R10 0 1
      136 SETTABLEKS                       R10 R9 K10 ["layoutOrder"]
      138 GETTABLEKS                       R11 R1 K18 ["parts"]
      140 GETTABLEKS                       R11 R11 K32 ["brickColor"]
      142 GETTABLEKS                       R11 R11 K25 ["multiple"]
      144 JUMPIFNOT                        R11 ; [+2]
      145 LOADK                            R10 K26 ["MULTIPLE"]
      146 JUMP                             ; [+10]
      147 GETTABLEKS                       R11 R1 K18 ["parts"]
      149 GETTABLEKS                       R11 R11 K32 ["brickColor"]
      151 GETTABLEKS                       R11 R11 K20 ["value"]
      153 FASTCALL1                        TOSTRING R11 ; [+2]
      154 GETIMPORT                        R10 K28 [tostring]
      156 CALL                             R10 1 1
      157 SETTABLEKS                       R10 R9 K20 ["value"]
      159 NEWCLOSURE                       R10 P2
      160 CAPTURE                          VAL R0
      161 SETTABLEKS                       R10 R9 K23 ["onFocusLost"]
      163 CALL                             R7 2 1
      164 SETTABLEKS                       R7 R6 K8 ["BrickColorPlaceholder"]
      166 CALL                             R3 3 -1
      167 RETURN                           R3 -1

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
       45 GETTABLEKS                       R8 R3 K16 ["Text"]
       47 GETTABLEKS                       R9 R3 K17 ["View"]
       49 GETTABLEKS                       R10 R5 K18 ["createElement"]
       51 GETTABLEKS                       R11 R3 K19 ["Hooks"]
       53 GETTABLEKS                       R11 R11 K20 ["useTokens"]
       55 GETTABLEKS                       R12 R6 K21 ["createNextOrder"]
       57 DUPCLOSURE                       R13 K22 [PROTO_0]
       58 DUPCLOSURE                       R14 K23 [PROTO_1]
       59 CAPTURE                          VAL R12
       60 CAPTURE                          VAL R11
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R15 K24 [PROTO_5]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R14
       72 RETURN                           R15 1
