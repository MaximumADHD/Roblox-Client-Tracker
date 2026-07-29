PROTO_0:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKS                    R3 K0 [""] ; [+2]
        3 LOADB                            R2 0 +1
        4 LOADB                            R2 1
        5 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        7 LOADK                            R3 K1 ["You must be using non-legacy React in order to use ViewTypeButton"]
        8 GETIMPORT                        R1 K3 [assert]
       10 CALL                             R1 2 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Tag"]
       15 GETTABLE                         R3 R0 R4
       16 LOADK                            R4 K5 ["Grid"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+2]
       19 LOADK                            R1 K5 ["Grid"]
       20 JUMP                             ; [+1]
       21 LOADK                            R1 K6 ["List"]
       22 GETUPVAL                         R2 1
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K4 ["Tag"]
       26 GETTABLE                         R3 R0 R4
       27 LOADK                            R4 K7 ["Icon"]
       28 CALL                             R2 2 1
       29 JUMPIFNOT                        R2 ; [+2]
       30 LOADK                            R3 K7 ["Icon"]
       31 JUMP                             ; [+1]
       32 LOADK                            R3 K0 [""]
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K8 ["createElement"]
       36 GETUPVAL                         R5 2
       37 NEWTABLE                         R6 4 0
       39 GETTABLEKS                       R7 R0 K9 ["LayoutOrder"]
       41 SETTABLEKS                       R7 R6 K9 ["LayoutOrder"]
       43 GETTABLEKS                       R7 R0 K10 ["OnClick"]
       45 SETTABLEKS                       R7 R6 K10 ["OnClick"]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K4 ["Tag"]
       50 LOADK                            R8 K11 ["Component-ViewTypeButton X-Column X-Fit Secondary"]
       51 SETTABLE                         R8 R6 R7
       52 DUPTABLE                         R7 K14 [{"ButtonContainer", "SliderContainer"}]
       53 GETUPVAL                         R8 0
       54 GETTABLEKS                       R8 R8 K8 ["createElement"]
       56 GETUPVAL                         R9 2
       57 NEWTABLE                         R10 2 0
       59 LOADN                            R11 1
       60 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K4 ["Tag"]
       65 GETUPVAL                         R12 3
       66 LOADK                            R13 K15 ["ButtonContainer X-RowM"]
       67 MOVE                             R14 R3
       68 CALL                             R12 2 1
       69 SETTABLE                         R12 R10 R11
       70 DUPTABLE                         R11 K18 [{"ImageContainer", "Label"}]
       71 GETUPVAL                         R12 0
       72 GETTABLEKS                       R12 R12 K8 ["createElement"]
       74 GETUPVAL                         R13 2
       75 NEWTABLE                         R14 2 0
       77 LOADN                            R15 1
       78 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
       80 GETUPVAL                         R15 0
       81 GETTABLEKS                       R15 R15 K4 ["Tag"]
       83 LOADK                            R16 K19 ["ImageContainer X-Center X-Middle"]
       84 SETTABLE                         R16 R14 R15
       85 DUPTABLE                         R15 K21 [{"ViewTypeIcon"}]
       86 GETUPVAL                         R16 0
       87 GETTABLEKS                       R16 R16 K8 ["createElement"]
       89 GETUPVAL                         R17 4
       90 NEWTABLE                         R18 1 0
       92 GETUPVAL                         R19 0
       93 GETTABLEKS                       R19 R19 K4 ["Tag"]
       95 LOADK                            R21 K22 ["Icon16 %*"]
       96 MOVE                             R23 R1
       97 NAMECALL                         R21 R21 K23 ["format"]
       99 CALL                             R21 2 1
      100 MOVE                             R20 R21
      101 SETTABLE                         R20 R18 R19
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K20 ["ViewTypeIcon"]
      105 CALL                             R12 3 1
      106 SETTABLEKS                       R12 R11 K16 ["ImageContainer"]
      108 JUMPIF                           R2 ; [+24]
      109 GETUPVAL                         R12 0
      110 GETTABLEKS                       R12 R12 K8 ["createElement"]
      112 GETUPVAL                         R13 5
      113 NEWTABLE                         R14 4 0
      115 LOADN                            R15 2
      116 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      118 GETTABLEKS                       R15 R0 K24 ["Text"]
      120 SETTABLEKS                       R15 R14 K24 ["Text"]
      122 GETIMPORT                        R15 K28 [Enum.TextTruncate.AtEnd]
      124 SETTABLEKS                       R15 R14 K26 ["TextTruncate"]
      126 GETUPVAL                         R15 0
      127 GETTABLEKS                       R15 R15 K4 ["Tag"]
      129 LOADK                            R16 K29 ["X-FitX"]
      130 SETTABLE                         R16 R14 R15
      131 CALL                             R12 2 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R12
      134 SETTABLEKS                       R12 R11 K17 ["Label"]
      136 CALL                             R8 3 1
      137 SETTABLEKS                       R8 R7 K12 ["ButtonContainer"]
      139 GETTABLEKS                       R9 R0 K30 ["HasSlider"]
      141 JUMPIFNOT                        R9 ; [+82]
      142 GETUPVAL                         R8 0
      143 GETTABLEKS                       R8 R8 K8 ["createElement"]
      145 GETUPVAL                         R9 2
      146 NEWTABLE                         R10 2 0
      148 LOADN                            R11 2
      149 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      151 GETUPVAL                         R11 0
      152 GETTABLEKS                       R11 R11 K4 ["Tag"]
      154 LOADK                            R12 K31 ["SliderContainer X-Middle X-Center"]
      155 SETTABLE                         R12 R10 R11
      156 DUPTABLE                         R11 K33 [{"Slider"}]
      157 GETUPVAL                         R12 0
      158 GETTABLEKS                       R12 R12 K8 ["createElement"]
      160 GETUPVAL                         R13 6
      161 DUPTABLE                         R14 K43 [{"Value", "OnValueChanged", "Min", "Max", "SnapIncrement", "VerticalDragTolerance", "AnchorPoint", "Position", "Size"}]
      162 GETTABLEKS                       R15 R0 K44 ["GridTileSize"]
      164 SETTABLEKS                       R15 R14 K34 ["Value"]
      166 GETTABLEKS                       R15 R0 K45 ["OnGridTileSizeChanged"]
      168 SETTABLEKS                       R15 R14 K35 ["OnValueChanged"]
      170 GETTABLEKS                       R15 R0 K46 ["MinGridTileSize"]
      172 JUMPIF                           R15 ; [+5]
      173 GETUPVAL                         R15 7
      174 LOADK                            R17 K47 ["SliderValueMin"]
      175 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      177 CALL                             R15 2 1
      178 SETTABLEKS                       R15 R14 K36 ["Min"]
      180 GETTABLEKS                       R15 R0 K49 ["MaxGridTileSize"]
      182 JUMPIF                           R15 ; [+5]
      183 GETUPVAL                         R15 7
      184 LOADK                            R17 K50 ["SliderValueMax"]
      185 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      187 CALL                             R15 2 1
      188 SETTABLEKS                       R15 R14 K37 ["Max"]
      190 GETUPVAL                         R15 7
      191 LOADK                            R17 K51 ["SliderSnapIncrement"]
      192 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      194 CALL                             R15 2 1
      195 SETTABLEKS                       R15 R14 K38 ["SnapIncrement"]
      197 GETUPVAL                         R15 7
      198 LOADK                            R17 K52 ["SliderVerticalDragTolerance"]
      199 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      201 CALL                             R15 2 1
      202 SETTABLEKS                       R15 R14 K39 ["VerticalDragTolerance"]
      204 GETUPVAL                         R15 8
      205 GETTABLEKS                       R15 R15 K53 ["SliderAnchorPoint"]
      207 SETTABLEKS                       R15 R14 K40 ["AnchorPoint"]
      209 GETUPVAL                         R15 8
      210 GETTABLEKS                       R15 R15 K54 ["SliderPosition"]
      212 SETTABLEKS                       R15 R14 K41 ["Position"]
      214 GETUPVAL                         R15 8
      215 GETTABLEKS                       R15 R15 K55 ["SliderSize"]
      217 SETTABLEKS                       R15 R14 K42 ["Size"]
      219 CALL                             R12 2 1
      220 SETTABLEKS                       R12 R11 K32 ["Slider"]
      222 CALL                             R8 3 1
      223 JUMP                             ; [+1]
      224 LOADNIL                          R8
      225 SETTABLEKS                       R8 R7 K13 ["SliderContainer"]
      227 CALL                             R4 3 -1
      228 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETTABLEKS                       R2 R0 K4 ["Parent"]
       11 LOADK                            R4 K5 ["React"]
       12 NAMECALL                         R2 R2 K6 ["FindFirstChild"]
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+8]
       16 GETIMPORT                        R1 K8 [require]
       18 GETTABLEKS                       R2 R0 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K5 ["React"]
       22 CALL                             R1 1 1
       23 JUMP                             ; [+1]
       24 LOADK                            R1 K9 [""]
       25 GETIMPORT                        R2 K8 [require]
       27 GETTABLEKS                       R3 R0 K10 ["Styling"]
       29 GETTABLEKS                       R3 R3 K11 ["hasTag"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K8 [require]
       34 GETTABLEKS                       R4 R0 K10 ["Styling"]
       36 GETTABLEKS                       R4 R4 K12 ["joinTags"]
       38 CALL                             R3 1 1
       39 GETTABLEKS                       R4 R0 K2 ["UI"]
       41 GETTABLEKS                       R4 R4 K13 ["Components"]
       43 GETIMPORT                        R5 K8 [require]
       45 GETTABLEKS                       R6 R4 K14 ["Pane"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K8 [require]
       50 GETTABLEKS                       R7 R4 K15 ["Slider"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K8 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K16 ["ViewType"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K8 [require]
       62 GETTABLEKS                       R9 R4 K17 ["Image"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K8 [require]
       67 GETTABLEKS                       R10 R4 K18 ["TextLabel"]
       69 CALL                             R9 1 1
       70 GETIMPORT                        R10 K8 [require]
       72 GETIMPORT                        R11 K1 [script]
       74 GETTABLEKS                       R11 R11 K19 ["styles"]
       76 CALL                             R10 1 1
       77 DUPTABLE                         R11 K23 [{"SliderAnchorPoint", "SliderPosition", "SliderSize"}]
       78 GETIMPORT                        R12 K26 [Vector2.new]
       80 LOADK                            R13 K27 [0.5]
       81 LOADK                            R14 K27 [0.5]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K20 ["SliderAnchorPoint"]
       85 GETIMPORT                        R12 K30 [UDim2.fromScale]
       87 LOADK                            R13 K27 [0.5]
       88 LOADK                            R14 K27 [0.5]
       89 CALL                             R12 2 1
       90 SETTABLEKS                       R12 R11 K21 ["SliderPosition"]
       92 GETIMPORT                        R12 K31 [UDim2.new]
       94 LOADN                            R13 1
       95 LOADN                            R14 -10
       96 LOADN                            R15 0
       97 LOADN                            R16 20
       98 CALL                             R12 4 1
       99 SETTABLEKS                       R12 R11 K22 ["SliderSize"]
      101 DUPCLOSURE                       R12 K32 [PROTO_0]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R9
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R11
      111 RETURN                           R12 1
