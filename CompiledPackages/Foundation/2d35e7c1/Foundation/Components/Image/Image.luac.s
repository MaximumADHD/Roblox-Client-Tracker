PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 DIV                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+59]
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+37]
        9 GETUPVAL                         R2 2
       10 GETTABLE                         R1 R2 R0
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R2 R3 K0 ["FoundationFixAspectRatioBindingHandling"]
       14 JUMPIF                           R2 ; [+8]
       15 GETTABLEKS                       R3 R1 K1 ["size"]
       17 GETTABLEKS                       R4 R3 K2 ["X"]
       19 GETTABLEKS                       R5 R3 K3 ["Y"]
       21 DIV                              R2 R4 R5
       22 SETUPVAL                         R2 4
       23 GETUPVAL                         R2 5
       24 JUMPIFNOTEQKS                    R2 K4 ["Image"] ; [+4]
       26 GETTABLEKS                       R2 R1 K5 ["assetId"]
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 3
       30 GETTABLEKS                       R2 R3 K0 ["FoundationFixAspectRatioBindingHandling"]
       32 JUMPIFNOT                        R2 ; [+11]
       33 GETUPVAL                         R2 5
       34 JUMPIFNOTEQKS                    R2 K6 ["AspectRatio"] ; [+9]
       36 GETTABLEKS                       R3 R1 K1 ["size"]
       38 GETTABLEKS                       R4 R3 K2 ["X"]
       40 GETTABLEKS                       R5 R3 K3 ["Y"]
       42 DIV                              R2 R4 R5
       43 RETURN                           R2 1
       44 LOADNIL                          R2
       45 RETURN                           R2 1
       46 GETUPVAL                         R2 6
       47 GETTABLE                         R1 R2 R0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R3 R4 K0 ["FoundationFixAspectRatioBindingHandling"]
       51 JUMPIFNOT                        R3 ; [+5]
       52 GETUPVAL                         R3 5
       53 JUMPIFNOTEQKS                    R3 K6 ["AspectRatio"] ; [+3]
       55 GETUPVAL                         R2 7
       56 RETURN                           R2 1
       57 JUMPIFNOT                        R1 ; [+3]
       58 GETUPVAL                         R3 5
       59 GETTABLE                         R2 R1 R3
       60 RETURN                           R2 1
       61 LOADNIL                          R2
       62 RETURN                           R2 1
       63 GETUPVAL                         R1 5
       64 JUMPIFNOTEQKS                    R1 K4 ["Image"] ; [+2]
       66 RETURN                           R0 1
       67 GETUPVAL                         R1 5
       68 JUMPIFNOTEQKS                    R1 K7 ["ImageRectOffset"] ; [+11]
       70 GETUPVAL                         R2 8
       71 GETTABLEKS                       R1 R2 K8 ["imageRect"]
       73 JUMPIFNOT                        R1 ; [+6]
       74 GETUPVAL                         R3 8
       75 GETTABLEKS                       R2 R3 K8 ["imageRect"]
       77 GETTABLEKS                       R1 R2 K9 ["offset"]
       79 RETURN                           R1 1
       80 GETUPVAL                         R1 5
       81 JUMPIFNOTEQKS                    R1 K10 ["ImageRectSize"] ; [+11]
       83 GETUPVAL                         R2 8
       84 GETTABLEKS                       R1 R2 K8 ["imageRect"]
       86 JUMPIFNOT                        R1 ; [+6]
       87 GETUPVAL                         R3 8
       88 GETTABLEKS                       R2 R3 K8 ["imageRect"]
       90 GETTABLEKS                       R1 R2 K1 ["size"]
       92 RETURN                           R1 1
       93 LOADNIL                          R1
       94 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Image"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U0
       13 NAMECALL                         R1 R1 K1 ["map"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Image"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["imageRect"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["imageRect"]
       10 GETTABLEKS                       R1 R2 K2 ["offset"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K1 ["imageRect"]
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K1 ["imageRect"]
       21 GETTABLEKS                       R2 R3 K3 ["size"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K4 ["FoundationFixAspectRatioBindingHandling"]
       28 JUMPIFNOT                        R4 ; [+2]
       29 GETUPVAL                         R3 2
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K5 ["aspectRatio"]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R4 R5 K6 ["isBinding"]
       37 GETUPVAL                         R6 0
       38 GETTABLEKS                       R5 R6 K0 ["Image"]
       40 CALL                             R4 1 1
       41 JUMPIFNOT                        R4 ; [+86]
       42 NEWCLOSURE                       R4 P0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          UPVAL U4
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U1
       48 CAPTURE                          REF R3
       49 CAPTURE                          UPVAL U7
       50 CAPTURE                          UPVAL U2
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K4 ["FoundationFixAspectRatioBindingHandling"]
       54 JUMPIFNOT                        R5 ; [+18]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R5 R6 K0 ["Image"]
       58 LOADK                            R8 K7 ["AspectRatio"]
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U6
       63 CAPTURE                          UPVAL U1
       64 CAPTURE                          REF R3
       65 CAPTURE                          VAL R8
       66 CAPTURE                          UPVAL U7
       67 CAPTURE                          UPVAL U2
       68 CAPTURE                          UPVAL U0
       69 NAMECALL                         R5 R5 K8 ["map"]
       71 CALL                             R5 2 1
       72 MOVE                             R3 R5
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R5 R6 K0 ["Image"]
       76 LOADK                            R8 K0 ["Image"]
       77 NEWCLOSURE                       R7 P1
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          UPVAL U6
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          REF R3
       83 CAPTURE                          VAL R8
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R5 R5 K8 ["map"]
       89 CALL                             R5 2 1
       90 MOVE                             R0 R5
       91 GETUPVAL                         R6 0
       92 GETTABLEKS                       R5 R6 K0 ["Image"]
       94 LOADK                            R8 K9 ["ImageRectOffset"]
       95 NEWCLOSURE                       R7 P1
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          UPVAL U5
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          REF R3
      101 CAPTURE                          VAL R8
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          UPVAL U2
      104 CAPTURE                          UPVAL U0
      105 NAMECALL                         R5 R5 K8 ["map"]
      107 CALL                             R5 2 1
      108 MOVE                             R1 R5
      109 GETUPVAL                         R6 0
      110 GETTABLEKS                       R5 R6 K0 ["Image"]
      112 LOADK                            R8 K10 ["ImageRectSize"]
      113 NEWCLOSURE                       R7 P1
      114 CAPTURE                          UPVAL U4
      115 CAPTURE                          UPVAL U5
      116 CAPTURE                          UPVAL U6
      117 CAPTURE                          UPVAL U1
      118 CAPTURE                          REF R3
      119 CAPTURE                          VAL R8
      120 CAPTURE                          UPVAL U7
      121 CAPTURE                          UPVAL U2
      122 CAPTURE                          UPVAL U0
      123 NAMECALL                         R5 R5 K8 ["map"]
      125 CALL                             R5 2 1
      126 MOVE                             R2 R5
      127 JUMP                             ; [+48]
      128 GETUPVAL                         R6 0
      129 GETTABLEKS                       R5 R6 K0 ["Image"]
      131 FASTCALL1                        TYPEOF R5 ; [+2]
      132 GETIMPORT                        R4 K12 [typeof]
      134 CALL                             R4 1 1
      135 JUMPIFNOTEQKS                    R4 K13 ["string"] ; [+40]
      137 GETUPVAL                         R4 4
      138 GETUPVAL                         R6 0
      139 GETTABLEKS                       R5 R6 K0 ["Image"]
      141 CALL                             R4 1 1
      142 JUMPIFNOT                        R4 ; [+33]
      143 GETUPVAL                         R4 5
      144 GETUPVAL                         R6 0
      145 GETTABLEKS                       R5 R6 K0 ["Image"]
      147 CALL                             R4 1 1
      148 JUMPIFNOT                        R4 ; [+15]
      149 GETUPVAL                         R5 6
      150 GETUPVAL                         R7 0
      151 GETTABLEKS                       R6 R7 K0 ["Image"]
      153 GETTABLE                         R4 R5 R6
      154 GETTABLEKS                       R0 R4 K14 ["assetId"]
      156 GETTABLEKS                       R5 R4 K3 ["size"]
      158 GETTABLEKS                       R6 R5 K15 ["X"]
      160 GETTABLEKS                       R7 R5 K16 ["Y"]
      162 DIV                              R3 R6 R7
      163 JUMP                             ; [+12]
      164 GETUPVAL                         R5 7
      165 GETUPVAL                         R7 0
      166 GETTABLEKS                       R6 R7 K0 ["Image"]
      168 GETTABLE                         R4 R5 R6
      169 JUMPIFNOT                        R4 ; [+6]
      170 GETTABLEKS                       R0 R4 K0 ["Image"]
      172 GETTABLEKS                       R1 R4 K9 ["ImageRectOffset"]
      174 GETTABLEKS                       R2 R4 K10 ["ImageRectSize"]
      176 CLOSEUPVALS                      R3
      177 RETURN                           R0 4

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+13]
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K0 ["slice"]
        8 GETTABLEKS                       R2 R3 K1 ["center"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K0 ["slice"]
       13 GETTABLEKS                       R3 R4 K2 ["scale"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R1 R2 K0 ["slice"]
       20 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["center"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["scale"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 LOADB                            R3 1
        5 GETTABLEKS                       R4 R2 K0 ["onStateChanged"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+12]
        9 LOADB                            R3 1
       10 GETTABLEKS                       R4 R2 K1 ["onActivated"]
       12 JUMPIFNOTEQKNIL                  R4 ; [+7]
       14 GETTABLEKS                       R4 R2 K2 ["onSecondaryActivated"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETTABLEKS                       R4 R2 K3 ["aspectRatio"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K4 ["useMemo"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          VAL R4
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 NEWTABLE                         R7 0 4
       36 GETTABLEKS                       R9 R2 K5 ["Image"]
       38 GETTABLEKS                       R10 R2 K6 ["imageRect"]
       40 GETUPVAL                         R13 3
       41 GETTABLEKS                       R12 R13 K7 ["FoundationFixAspectRatioBindingHandling"]
       43 JUMPIFNOT                        R12 ; [+2]
       44 MOVE                             R11 R4
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R11 R2 K3 ["aspectRatio"]
       48 GETUPVAL                         R12 8
       49 SETLIST                          R7 R9 4 [1]
       51 CALL                             R5 2 4
       52 LOADNIL                          R9
       53 LOADNIL                          R10
       54 GETTABLEKS                       R11 R2 K8 ["ScaleType"]
       56 GETTABLEKS                       R12 R2 K9 ["slice"]
       58 JUMPIFNOT                        R12 ; [+65]
       59 GETUPVAL                         R13 4
       60 GETTABLEKS                       R12 R13 K10 ["isBinding"]
       62 GETTABLEKS                       R13 R2 K5 ["Image"]
       64 CALL                             R12 1 1
       65 JUMPIFNOT                        R12 ; [+20]
       66 GETTABLEKS                       R12 R2 K5 ["Image"]
       68 NEWCLOSURE                       R14 P1
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U9
       71 CAPTURE                          VAL R2
       72 NAMECALL                         R12 R12 K11 ["map"]
       74 CALL                             R12 2 1
       75 DUPCLOSURE                       R15 K12 [PROTO_5]
       76 NAMECALL                         R13 R12 K11 ["map"]
       78 CALL                             R13 2 1
       79 MOVE                             R9 R13
       80 DUPCLOSURE                       R15 K13 [PROTO_6]
       81 NAMECALL                         R13 R12 K11 ["map"]
       83 CALL                             R13 2 1
       84 MOVE                             R10 R13
       85 JUMP                             ; [+36]
       86 GETTABLEKS                       R13 R2 K5 ["Image"]
       88 FASTCALL1                        TYPEOF R13 ; [+2]
       89 GETIMPORT                        R12 K15 [typeof]
       91 CALL                             R12 1 1
       92 JUMPIFNOTEQKS                    R12 K16 ["string"] ; [+29]
       94 GETUPVAL                         R12 5
       95 GETTABLEKS                       R13 R2 K5 ["Image"]
       97 CALL                             R12 1 1
       98 JUMPIFNOT                        R12 ; [+15]
       99 GETUPVAL                         R12 9
      100 GETTABLEKS                       R14 R2 K9 ["slice"]
      102 GETTABLEKS                       R13 R14 K17 ["center"]
      104 GETTABLEKS                       R15 R2 K9 ["slice"]
      106 GETTABLEKS                       R14 R15 K18 ["scale"]
      108 CALL                             R12 2 1
      109 GETTABLEKS                       R9 R12 K17 ["center"]
      111 GETTABLEKS                       R10 R12 K18 ["scale"]
      113 JUMP                             ; [+8]
      114 GETTABLEKS                       R12 R2 K9 ["slice"]
      116 GETTABLEKS                       R9 R12 K17 ["center"]
      118 GETTABLEKS                       R12 R2 K9 ["slice"]
      120 GETTABLEKS                       R10 R12 K18 ["scale"]
      122 GETIMPORT                        R11 K21 [Enum.ScaleType.Slice]
      124 SETTABLEKS                       R8 R2 K3 ["aspectRatio"]
      126 GETTABLEKS                       R13 R2 K22 ["backgroundStyle"]
      128 JUMPIFEQKNIL                     R13 ; [+3]
      130 LOADK                            R12 K23 ["gui-object-defaults x-default-transparency"]
      131 JUMP                             ; [+1]
      132 LOADK                            R12 K24 ["gui-object-defaults"]
      133 GETUPVAL                         R13 10
      134 GETTABLEKS                       R14 R2 K25 ["tag"]
      136 MOVE                             R15 R12
      137 CALL                             R13 2 1
      138 GETUPVAL                         R14 11
      139 MOVE                             R15 R13
      140 CALL                             R14 1 1
      141 JUMPIFNOT                        R3 ; [+2]
      142 LOADK                            R15 K26 ["ImageButton"]
      143 JUMP                             ; [+1]
      144 LOADK                            R15 K27 ["ImageLabel"]
      145 GETUPVAL                         R16 12
      146 MOVE                             R17 R2
      147 NEWTABLE                         R18 16 0
      149 JUMPIFNOTEQKS                    R15 K26 ["ImageButton"] ; [+4]
      151 GETTABLEKS                       R19 R2 K28 ["AutoButtonColor"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R19
      155 SETTABLEKS                       R19 R18 K28 ["AutoButtonColor"]
      157 SETTABLEKS                       R5 R18 K5 ["Image"]
      159 GETTABLEKS                       R20 R2 K29 ["imageStyle"]
      161 JUMPIFNOT                        R20 ; [+6]
      162 GETUPVAL                         R19 13
      163 GETTABLEKS                       R20 R2 K29 ["imageStyle"]
      165 LOADK                            R21 K30 ["Color3"]
      166 CALL                             R19 2 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R19
      169 SETTABLEKS                       R19 R18 K31 ["ImageColor3"]
      171 GETTABLEKS                       R20 R2 K29 ["imageStyle"]
      173 JUMPIFNOT                        R20 ; [+6]
      174 GETUPVAL                         R19 13
      175 GETTABLEKS                       R20 R2 K29 ["imageStyle"]
      177 LOADK                            R21 K32 ["Transparency"]
      178 CALL                             R19 2 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R19
      181 SETTABLEKS                       R19 R18 K33 ["ImageTransparency"]
      183 SETTABLEKS                       R6 R18 K34 ["ImageRectOffset"]
      185 SETTABLEKS                       R7 R18 K35 ["ImageRectSize"]
      187 GETTABLEKS                       R19 R2 K36 ["ResampleMode"]
      189 SETTABLEKS                       R19 R18 K36 ["ResampleMode"]
      191 SETTABLEKS                       R11 R18 K8 ["ScaleType"]
      193 SETTABLEKS                       R9 R18 K37 ["SliceCenter"]
      195 SETTABLEKS                       R10 R18 K38 ["SliceScale"]
      197 GETTABLEKS                       R19 R2 K39 ["TileSize"]
      199 SETTABLEKS                       R19 R18 K39 ["TileSize"]
      201 SETTABLEKS                       R1 R18 K40 ["ref"]
      203 GETUPVAL                         R20 2
      204 GETTABLEKS                       R19 R20 K41 ["Tag"]
      206 SETTABLE                         R14 R18 R19
      207 CALL                             R16 2 1
      208 GETUPVAL                         R18 3
      209 GETTABLEKS                       R17 R18 K42 ["FoundationBuildingBlocksRemoveDashUnion"]
      211 JUMPIFNOT                        R17 ; [+39]
      212 MOVE                             R17 R15
      213 JUMPIFNOT                        R3 ; [+27]
      214 GETUPVAL                         R17 14
      215 SETTABLEKS                       R15 R16 K43 ["component"]
      217 GETTABLEKS                       R18 R2 K1 ["onActivated"]
      219 SETTABLEKS                       R18 R16 K1 ["onActivated"]
      221 GETTABLEKS                       R18 R2 K2 ["onSecondaryActivated"]
      223 SETTABLEKS                       R18 R16 K2 ["onSecondaryActivated"]
      225 GETTABLEKS                       R18 R2 K0 ["onStateChanged"]
      227 SETTABLEKS                       R18 R16 K0 ["onStateChanged"]
      229 GETTABLEKS                       R18 R2 K44 ["stateLayer"]
      231 SETTABLEKS                       R18 R16 K44 ["stateLayer"]
      233 GETTABLEKS                       R18 R2 K45 ["isDisabled"]
      235 SETTABLEKS                       R18 R16 K45 ["isDisabled"]
      237 GETTABLEKS                       R18 R2 K46 ["cursor"]
      239 SETTABLEKS                       R18 R16 K46 ["cursor"]
      241 GETUPVAL                         R19 2
      242 GETTABLEKS                       R18 R19 K47 ["createElement"]
      244 MOVE                             R19 R17
      245 MOVE                             R20 R16
      246 GETUPVAL                         R21 15
      247 MOVE                             R22 R2
      248 CALL                             R21 1 -1
      249 CALL                             R18 -1 -1
      250 RETURN                           R18 -1
      251 JUMPIFNOT                        R3 ; [+2]
      252 GETUPVAL                         R17 14
      253 JUMP                             ; [+1]
      254 MOVE                             R17 R15
      255 DUPTABLE                         R18 K48 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      256 SETTABLEKS                       R15 R18 K43 ["component"]
      258 GETTABLEKS                       R19 R2 K1 ["onActivated"]
      260 SETTABLEKS                       R19 R18 K1 ["onActivated"]
      262 GETTABLEKS                       R19 R2 K2 ["onSecondaryActivated"]
      264 SETTABLEKS                       R19 R18 K2 ["onSecondaryActivated"]
      266 GETTABLEKS                       R19 R2 K0 ["onStateChanged"]
      268 SETTABLEKS                       R19 R18 K0 ["onStateChanged"]
      270 GETTABLEKS                       R19 R2 K44 ["stateLayer"]
      272 SETTABLEKS                       R19 R18 K44 ["stateLayer"]
      274 GETTABLEKS                       R19 R2 K45 ["isDisabled"]
      276 SETTABLEKS                       R19 R18 K45 ["isDisabled"]
      278 GETTABLEKS                       R19 R2 K46 ["cursor"]
      280 SETTABLEKS                       R19 R18 K46 ["cursor"]
      282 JUMPIFNOT                        R3 ; [+7]
      283 GETUPVAL                         R20 16
      284 GETTABLEKS                       R19 R20 K49 ["union"]
      286 MOVE                             R20 R16
      287 MOVE                             R21 R18
      288 CALL                             R19 2 1
      289 JUMP                             ; [+1]
      290 MOVE                             R19 R16
      291 GETUPVAL                         R21 2
      292 GETTABLEKS                       R20 R21 K47 ["createElement"]
      294 MOVE                             R21 R17
      295 MOVE                             R22 R19
      296 GETUPVAL                         R23 15
      297 MOVE                             R24 R2
      298 CALL                             R23 1 -1
      299 CALL                             R20 -1 -1
      300 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R4 K8 ["Flags"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Dash"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["FoundationCloudAssets"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["FoundationImages"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["React"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R1 K13 ["ReactIs"]
       40 CALL                             R7 1 1
       41 GETTABLEKS                       R8 R4 K14 ["Assets"]
       43 GETIMPORT                        R9 K6 [require]
       45 GETTABLEKS                       R11 R0 K15 ["Components"]
       47 GETTABLEKS                       R10 R11 K16 ["Interactable"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R5 K17 ["Images"]
       52 GETIMPORT                        R11 K6 [require]
       54 GETIMPORT                        R15 K1 [script]
       56 GETTABLEKS                       R14 R15 K4 ["Parent"]
       58 GETTABLEKS                       R13 R14 K18 ["ImageSet"]
       60 GETTABLEKS                       R12 R13 K19 ["getScaledSlice"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K6 [require]
       65 GETIMPORT                        R16 K1 [script]
       67 GETTABLEKS                       R15 R16 K4 ["Parent"]
       69 GETTABLEKS                       R14 R15 K20 ["CloudAsset"]
       71 GETTABLEKS                       R13 R14 K21 ["isCloudAsset"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETIMPORT                        R17 K1 [script]
       78 GETTABLEKS                       R16 R17 K4 ["Parent"]
       80 GETTABLEKS                       R15 R16 K18 ["ImageSet"]
       82 GETTABLEKS                       R14 R15 K22 ["isFoundationImage"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K6 [require]
       87 GETTABLEKS                       R16 R0 K7 ["Utility"]
       89 GETTABLEKS                       R15 R16 K23 ["GuiObjectChildren"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R17 R0 K15 ["Components"]
       96 GETTABLEKS                       R16 R17 K24 ["Types"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R18 R0 K7 ["Utility"]
      103 GETTABLEKS                       R17 R18 K25 ["indexBindable"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R19 R0 K7 ["Utility"]
      110 GETTABLEKS                       R18 R19 K26 ["useDefaultTags"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R20 R0 K7 ["Utility"]
      117 GETTABLEKS                       R19 R20 K27 ["withDefaults"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K6 [require]
      122 GETTABLEKS                       R21 R0 K7 ["Utility"]
      124 GETTABLEKS                       R20 R21 K28 ["withGuiObjectProps"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K6 [require]
      129 GETTABLEKS                       R23 R0 K29 ["Providers"]
      131 GETTABLEKS                       R22 R23 K30 ["Style"]
      133 GETTABLEKS                       R21 R22 K31 ["useStyleTags"]
      135 CALL                             R20 1 1
      136 DUPTABLE                         R21 K36 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
      137 LOADB                            R22 0
      138 SETTABLEKS                       R22 R21 K32 ["AutoLocalize"]
      140 LOADB                            R22 0
      141 SETTABLEKS                       R22 R21 K33 ["AutoButtonColor"]
      143 LOADN                            R22 0
      144 SETTABLEKS                       R22 R21 K34 ["BorderSizePixel"]
      146 LOADB                            R22 0
      147 SETTABLEKS                       R22 R21 K35 ["isDisabled"]
      149 DUPCLOSURE                       R22 K37 [PROTO_0]
      150 DUPCLOSURE                       R23 K38 [PROTO_7]
      151 CAPTURE                          VAL R18
      152 CAPTURE                          VAL R21
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R7
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R8
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R17
      162 CAPTURE                          VAL R20
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R9
      166 CAPTURE                          VAL R14
      167 CAPTURE                          VAL R3
      168 GETTABLEKS                       R24 R6 K39 ["memo"]
      170 GETTABLEKS                       R25 R6 K40 ["forwardRef"]
      172 MOVE                             R26 R23
      173 CALL                             R25 1 -1
      174 CALL                             R24 -1 -1
      175 RETURN                           R24 -1
