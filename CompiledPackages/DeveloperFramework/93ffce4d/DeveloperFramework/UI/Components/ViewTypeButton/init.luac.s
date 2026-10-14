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
       95 LOADK                            R20 K22 ["Icon16 %*"]
       96 MOVE                             R22 R1
       97 NAMECALL                         R20 R20 K23 ["format"]
       99 CALL                             R20 2 1
      100 SETTABLE                         R20 R18 R19
      101 CALL                             R16 2 1
      102 SETTABLEKS                       R16 R15 K20 ["ViewTypeIcon"]
      104 CALL                             R12 3 1
      105 SETTABLEKS                       R12 R11 K16 ["ImageContainer"]
      107 JUMPIF                           R2 ; [+24]
      108 GETUPVAL                         R12 0
      109 GETTABLEKS                       R12 R12 K8 ["createElement"]
      111 GETUPVAL                         R13 5
      112 NEWTABLE                         R14 4 0
      114 LOADN                            R15 2
      115 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      117 GETTABLEKS                       R15 R0 K24 ["Text"]
      119 SETTABLEKS                       R15 R14 K24 ["Text"]
      121 GETIMPORT                        R15 K28 [Enum.TextTruncate.AtEnd]
      123 SETTABLEKS                       R15 R14 K26 ["TextTruncate"]
      125 GETUPVAL                         R15 0
      126 GETTABLEKS                       R15 R15 K4 ["Tag"]
      128 LOADK                            R16 K29 ["X-FitX"]
      129 SETTABLE                         R16 R14 R15
      130 CALL                             R12 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R12
      133 SETTABLEKS                       R12 R11 K17 ["Label"]
      135 CALL                             R8 3 1
      136 SETTABLEKS                       R8 R7 K12 ["ButtonContainer"]
      138 GETTABLEKS                       R9 R0 K30 ["HasSlider"]
      140 JUMPIFNOT                        R9 ; [+82]
      141 GETUPVAL                         R8 0
      142 GETTABLEKS                       R8 R8 K8 ["createElement"]
      144 GETUPVAL                         R9 2
      145 NEWTABLE                         R10 2 0
      147 LOADN                            R11 2
      148 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R11 R11 K4 ["Tag"]
      153 LOADK                            R12 K31 ["SliderContainer X-Middle X-Center"]
      154 SETTABLE                         R12 R10 R11
      155 DUPTABLE                         R11 K33 [{"Slider"}]
      156 GETUPVAL                         R12 0
      157 GETTABLEKS                       R12 R12 K8 ["createElement"]
      159 GETUPVAL                         R13 6
      160 DUPTABLE                         R14 K43 [{"Value", "OnValueChanged", "Min", "Max", "SnapIncrement", "VerticalDragTolerance", "AnchorPoint", "Position", "Size"}]
      161 GETTABLEKS                       R15 R0 K44 ["GridTileSize"]
      163 SETTABLEKS                       R15 R14 K34 ["Value"]
      165 GETTABLEKS                       R15 R0 K45 ["OnGridTileSizeChanged"]
      167 SETTABLEKS                       R15 R14 K35 ["OnValueChanged"]
      169 GETTABLEKS                       R15 R0 K46 ["MinGridTileSize"]
      171 JUMPIF                           R15 ; [+5]
      172 GETUPVAL                         R15 7
      173 LOADK                            R17 K47 ["SliderValueMin"]
      174 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K36 ["Min"]
      179 GETTABLEKS                       R15 R0 K49 ["MaxGridTileSize"]
      181 JUMPIF                           R15 ; [+5]
      182 GETUPVAL                         R15 7
      183 LOADK                            R17 K50 ["SliderValueMax"]
      184 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      186 CALL                             R15 2 1
      187 SETTABLEKS                       R15 R14 K37 ["Max"]
      189 GETUPVAL                         R15 7
      190 LOADK                            R17 K51 ["SliderSnapIncrement"]
      191 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K38 ["SnapIncrement"]
      196 GETUPVAL                         R15 7
      197 LOADK                            R17 K52 ["SliderVerticalDragTolerance"]
      198 NAMECALL                         R15 R15 K48 ["GetAttribute"]
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K39 ["VerticalDragTolerance"]
      203 GETUPVAL                         R15 8
      204 GETTABLEKS                       R15 R15 K53 ["SliderAnchorPoint"]
      206 SETTABLEKS                       R15 R14 K40 ["AnchorPoint"]
      208 GETUPVAL                         R15 8
      209 GETTABLEKS                       R15 R15 K54 ["SliderPosition"]
      211 SETTABLEKS                       R15 R14 K41 ["Position"]
      213 GETUPVAL                         R15 8
      214 GETTABLEKS                       R15 R15 K55 ["SliderSize"]
      216 SETTABLEKS                       R15 R14 K42 ["Size"]
      218 CALL                             R12 2 1
      219 SETTABLEKS                       R12 R11 K32 ["Slider"]
      221 CALL                             R8 3 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R8
      224 SETTABLEKS                       R8 R7 K13 ["SliderContainer"]
      226 CALL                             R4 3 -1
      227 RETURN                           R4 -1

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
