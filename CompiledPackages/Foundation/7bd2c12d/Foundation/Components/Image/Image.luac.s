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
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K0 ["FoundationFixAspectRatioBindingHandling"]
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
       29 GETUPVAL                         R2 3
       30 GETTABLEKS                       R2 R2 K0 ["FoundationFixAspectRatioBindingHandling"]
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
       48 GETUPVAL                         R3 3
       49 GETTABLEKS                       R3 R3 K0 ["FoundationFixAspectRatioBindingHandling"]
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
       70 GETUPVAL                         R1 8
       71 GETTABLEKS                       R1 R1 K8 ["imageRect"]
       73 JUMPIFNOT                        R1 ; [+6]
       74 GETUPVAL                         R1 8
       75 GETTABLEKS                       R1 R1 K8 ["imageRect"]
       77 GETTABLEKS                       R1 R1 K9 ["offset"]
       79 RETURN                           R1 1
       80 GETUPVAL                         R1 5
       81 JUMPIFNOTEQKS                    R1 K10 ["ImageRectSize"] ; [+11]
       83 GETUPVAL                         R1 8
       84 GETTABLEKS                       R1 R1 K8 ["imageRect"]
       86 JUMPIFNOT                        R1 ; [+6]
       87 GETUPVAL                         R1 8
       88 GETTABLEKS                       R1 R1 K8 ["imageRect"]
       90 GETTABLEKS                       R1 R1 K1 ["size"]
       92 RETURN                           R1 1
       93 LOADNIL                          R1
       94 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Image"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Image"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["imageRect"]
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["imageRect"]
       10 GETTABLEKS                       R1 R1 K2 ["offset"]
       12 JUMP                             ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K1 ["imageRect"]
       17 JUMPIFNOT                        R3 ; [+6]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K1 ["imageRect"]
       21 GETTABLEKS                       R2 R2 K3 ["size"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R2
       25 GETUPVAL                         R4 1
       26 GETTABLEKS                       R4 R4 K4 ["FoundationFixAspectRatioBindingHandling"]
       28 JUMPIFNOT                        R4 ; [+2]
       29 GETUPVAL                         R3 2
       30 JUMP                             ; [+3]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K5 ["aspectRatio"]
       34 GETUPVAL                         R4 3
       35 GETTABLEKS                       R4 R4 K6 ["isBinding"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K0 ["Image"]
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
       51 GETUPVAL                         R5 1
       52 GETTABLEKS                       R5 R5 K4 ["FoundationFixAspectRatioBindingHandling"]
       54 JUMPIFNOT                        R5 ; [+18]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["Image"]
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
       73 GETUPVAL                         R5 0
       74 GETTABLEKS                       R5 R5 K0 ["Image"]
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
       91 GETUPVAL                         R5 0
       92 GETTABLEKS                       R5 R5 K0 ["Image"]
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
      109 GETUPVAL                         R5 0
      110 GETTABLEKS                       R5 R5 K0 ["Image"]
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
      128 GETUPVAL                         R5 0
      129 GETTABLEKS                       R5 R5 K0 ["Image"]
      131 FASTCALL1                        TYPEOF R5 ; [+2]
      132 GETIMPORT                        R4 K12 [typeof]
      134 CALL                             R4 1 1
      135 JUMPIFNOTEQKS                    R4 K13 ["string"] ; [+40]
      137 GETUPVAL                         R4 4
      138 GETUPVAL                         R5 0
      139 GETTABLEKS                       R5 R5 K0 ["Image"]
      141 CALL                             R4 1 1
      142 JUMPIFNOT                        R4 ; [+33]
      143 GETUPVAL                         R4 5
      144 GETUPVAL                         R5 0
      145 GETTABLEKS                       R5 R5 K0 ["Image"]
      147 CALL                             R4 1 1
      148 JUMPIFNOT                        R4 ; [+15]
      149 GETUPVAL                         R5 6
      150 GETUPVAL                         R6 0
      151 GETTABLEKS                       R6 R6 K0 ["Image"]
      153 GETTABLE                         R4 R5 R6
      154 GETTABLEKS                       R0 R4 K14 ["assetId"]
      156 GETTABLEKS                       R5 R4 K3 ["size"]
      158 GETTABLEKS                       R6 R5 K15 ["X"]
      160 GETTABLEKS                       R7 R5 K16 ["Y"]
      162 DIV                              R3 R6 R7
      163 JUMP                             ; [+12]
      164 GETUPVAL                         R5 7
      165 GETUPVAL                         R6 0
      166 GETTABLEKS                       R6 R6 K0 ["Image"]
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
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K0 ["slice"]
        8 GETTABLEKS                       R2 R2 K1 ["center"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K0 ["slice"]
       13 GETTABLEKS                       R3 R3 K2 ["scale"]
       15 CALL                             R1 2 -1
       16 RETURN                           R1 -1
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["slice"]
       20 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["center"]
        2 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["scale"]
        2 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FoundationDisableStylingPolyfill"]
        3 JUMPIF                           R3 ; [+8]
        4 GETUPVAL                         R2 1
        5 LOADK                            R3 K1 ["Image"]
        6 GETTABLEKS                       R4 R0 K2 ["tag"]
        8 LOADK                            R5 K3 ["gui-object-defaults"]
        9 GETUPVAL                         R6 2
       10 CALL                             R2 4 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R6 R6 K0 ["FoundationDisableStylingPolyfill"]
       18 JUMPIFNOT                        R6 ; [+2]
       19 GETUPVAL                         R5 2
       20 JUMP                             ; [+1]
       21 MOVE                             R5 R2
       22 CALL                             R3 2 1
       23 LOADB                            R4 1
       24 GETTABLEKS                       R5 R3 K4 ["onStateChanged"]
       26 JUMPIFNOTEQKNIL                  R5 ; [+12]
       28 LOADB                            R4 1
       29 GETTABLEKS                       R5 R3 K5 ["onActivated"]
       31 JUMPIFNOTEQKNIL                  R5 ; [+7]
       33 GETTABLEKS                       R5 R3 K6 ["onSecondaryActivated"]
       35 JUMPIFNOTEQKNIL                  R5 ; [+2]
       37 LOADB                            R4 0 +1
       38 LOADB                            R4 1
       39 GETTABLEKS                       R5 R3 K7 ["aspectRatio"]
       41 GETUPVAL                         R6 4
       42 GETTABLEKS                       R6 R6 K8 ["useMemo"]
       44 NEWCLOSURE                       R7 P0
       45 CAPTURE                          VAL R3
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U7
       51 CAPTURE                          UPVAL U8
       52 CAPTURE                          UPVAL U9
       53 NEWTABLE                         R8 0 4
       55 GETTABLEKS                       R10 R3 K1 ["Image"]
       57 GETTABLEKS                       R11 R3 K9 ["imageRect"]
       59 GETUPVAL                         R13 0
       60 GETTABLEKS                       R13 R13 K10 ["FoundationFixAspectRatioBindingHandling"]
       62 JUMPIFNOT                        R13 ; [+2]
       63 MOVE                             R12 R5
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R12 R3 K7 ["aspectRatio"]
       67 GETUPVAL                         R13 9
       68 SETLIST                          R8 R10 4 [1]
       70 CALL                             R6 2 4
       71 LOADNIL                          R10
       72 LOADNIL                          R11
       73 GETTABLEKS                       R12 R3 K11 ["ScaleType"]
       75 GETTABLEKS                       R13 R3 K12 ["slice"]
       77 JUMPIFNOT                        R13 ; [+65]
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K13 ["isBinding"]
       81 GETTABLEKS                       R14 R3 K1 ["Image"]
       83 CALL                             R13 1 1
       84 JUMPIFNOT                        R13 ; [+20]
       85 GETTABLEKS                       R13 R3 K1 ["Image"]
       87 NEWCLOSURE                       R15 P1
       88 CAPTURE                          UPVAL U6
       89 CAPTURE                          UPVAL U10
       90 CAPTURE                          VAL R3
       91 NAMECALL                         R13 R13 K14 ["map"]
       93 CALL                             R13 2 1
       94 DUPCLOSURE                       R16 K15 [PROTO_5]
       95 NAMECALL                         R14 R13 K14 ["map"]
       97 CALL                             R14 2 1
       98 MOVE                             R10 R14
       99 DUPCLOSURE                       R16 K16 [PROTO_6]
      100 NAMECALL                         R14 R13 K14 ["map"]
      102 CALL                             R14 2 1
      103 MOVE                             R11 R14
      104 JUMP                             ; [+36]
      105 GETTABLEKS                       R14 R3 K1 ["Image"]
      107 FASTCALL1                        TYPEOF R14 ; [+2]
      108 GETIMPORT                        R13 K18 [typeof]
      110 CALL                             R13 1 1
      111 JUMPIFNOTEQKS                    R13 K19 ["string"] ; [+29]
      113 GETUPVAL                         R13 6
      114 GETTABLEKS                       R14 R3 K1 ["Image"]
      116 CALL                             R13 1 1
      117 JUMPIFNOT                        R13 ; [+15]
      118 GETUPVAL                         R13 10
      119 GETTABLEKS                       R14 R3 K12 ["slice"]
      121 GETTABLEKS                       R14 R14 K20 ["center"]
      123 GETTABLEKS                       R15 R3 K12 ["slice"]
      125 GETTABLEKS                       R15 R15 K21 ["scale"]
      127 CALL                             R13 2 1
      128 GETTABLEKS                       R10 R13 K20 ["center"]
      130 GETTABLEKS                       R11 R13 K21 ["scale"]
      132 JUMP                             ; [+8]
      133 GETTABLEKS                       R13 R3 K12 ["slice"]
      135 GETTABLEKS                       R10 R13 K20 ["center"]
      137 GETTABLEKS                       R13 R3 K12 ["slice"]
      139 GETTABLEKS                       R11 R13 K21 ["scale"]
      141 GETIMPORT                        R12 K24 [Enum.ScaleType.Slice]
      143 SETTABLEKS                       R9 R3 K7 ["aspectRatio"]
      145 GETTABLEKS                       R14 R3 K25 ["backgroundStyle"]
      147 JUMPIFEQKNIL                     R14 ; [+3]
      149 LOADK                            R13 K26 ["gui-object-defaults x-default-transparency"]
      150 JUMP                             ; [+1]
      151 LOADK                            R13 K3 ["gui-object-defaults"]
      152 GETUPVAL                         R14 11
      153 GETTABLEKS                       R15 R3 K2 ["tag"]
      155 MOVE                             R16 R13
      156 CALL                             R14 2 1
      157 GETUPVAL                         R15 12
      158 MOVE                             R16 R14
      159 CALL                             R15 1 1
      160 JUMPIFNOT                        R4 ; [+2]
      161 LOADK                            R16 K27 ["ImageButton"]
      162 JUMP                             ; [+1]
      163 LOADK                            R16 K28 ["ImageLabel"]
      164 GETUPVAL                         R17 13
      165 MOVE                             R18 R3
      166 NEWTABLE                         R19 16 0
      168 JUMPIFNOTEQKS                    R16 K27 ["ImageButton"] ; [+4]
      170 GETTABLEKS                       R20 R3 K29 ["AutoButtonColor"]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R20
      174 SETTABLEKS                       R20 R19 K29 ["AutoButtonColor"]
      176 SETTABLEKS                       R6 R19 K1 ["Image"]
      178 GETTABLEKS                       R21 R3 K30 ["imageStyle"]
      180 JUMPIFNOT                        R21 ; [+6]
      181 GETUPVAL                         R20 14
      182 GETTABLEKS                       R21 R3 K30 ["imageStyle"]
      184 LOADK                            R22 K31 ["Color3"]
      185 CALL                             R20 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R20
      188 SETTABLEKS                       R20 R19 K32 ["ImageColor3"]
      190 GETTABLEKS                       R21 R3 K30 ["imageStyle"]
      192 JUMPIFNOT                        R21 ; [+6]
      193 GETUPVAL                         R20 14
      194 GETTABLEKS                       R21 R3 K30 ["imageStyle"]
      196 LOADK                            R22 K33 ["Transparency"]
      197 CALL                             R20 2 1
      198 JUMP                             ; [+1]
      199 LOADNIL                          R20
      200 SETTABLEKS                       R20 R19 K34 ["ImageTransparency"]
      202 SETTABLEKS                       R7 R19 K35 ["ImageRectOffset"]
      204 SETTABLEKS                       R8 R19 K36 ["ImageRectSize"]
      206 GETTABLEKS                       R20 R3 K37 ["ResampleMode"]
      208 SETTABLEKS                       R20 R19 K37 ["ResampleMode"]
      210 SETTABLEKS                       R12 R19 K11 ["ScaleType"]
      212 SETTABLEKS                       R10 R19 K38 ["SliceCenter"]
      214 SETTABLEKS                       R11 R19 K39 ["SliceScale"]
      216 GETTABLEKS                       R20 R3 K40 ["TileSize"]
      218 SETTABLEKS                       R20 R19 K40 ["TileSize"]
      220 SETTABLEKS                       R1 R19 K41 ["ref"]
      222 GETUPVAL                         R20 4
      223 GETTABLEKS                       R20 R20 K42 ["Tag"]
      225 SETTABLE                         R15 R19 R20
      226 CALL                             R17 2 1
      227 JUMPIFNOT                        R4 ; [+2]
      228 GETUPVAL                         R18 15
      229 JUMP                             ; [+1]
      230 MOVE                             R18 R16
      231 DUPTABLE                         R19 K47 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      232 SETTABLEKS                       R16 R19 K43 ["component"]
      234 GETTABLEKS                       R20 R3 K5 ["onActivated"]
      236 SETTABLEKS                       R20 R19 K5 ["onActivated"]
      238 GETTABLEKS                       R20 R3 K6 ["onSecondaryActivated"]
      240 SETTABLEKS                       R20 R19 K6 ["onSecondaryActivated"]
      242 GETTABLEKS                       R20 R3 K4 ["onStateChanged"]
      244 SETTABLEKS                       R20 R19 K4 ["onStateChanged"]
      246 GETTABLEKS                       R20 R3 K44 ["stateLayer"]
      248 SETTABLEKS                       R20 R19 K44 ["stateLayer"]
      250 GETTABLEKS                       R20 R3 K45 ["isDisabled"]
      252 SETTABLEKS                       R20 R19 K45 ["isDisabled"]
      254 GETTABLEKS                       R20 R3 K46 ["cursor"]
      256 SETTABLEKS                       R20 R19 K46 ["cursor"]
      258 JUMPIFNOT                        R4 ; [+7]
      259 GETUPVAL                         R20 16
      260 GETTABLEKS                       R20 R20 K48 ["union"]
      262 MOVE                             R21 R17
      263 MOVE                             R22 R19
      264 CALL                             R20 2 1
      265 JUMP                             ; [+1]
      266 MOVE                             R20 R17
      267 GETUPVAL                         R21 4
      268 GETTABLEKS                       R21 R21 K49 ["createElement"]
      270 MOVE                             R22 R18
      271 MOVE                             R23 R20
      272 GETUPVAL                         R24 17
      273 MOVE                             R25 R3
      274 CALL                             R24 1 -1
      275 CALL                             R21 -1 -1
      276 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Utility"]
       13 GETTABLEKS                       R3 R3 K8 ["Flags"]
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
       45 GETTABLEKS                       R10 R0 K15 ["Components"]
       47 GETTABLEKS                       R10 R10 K16 ["Interactable"]
       49 CALL                             R9 1 1
       50 GETTABLEKS                       R10 R5 K17 ["Images"]
       52 GETIMPORT                        R11 K6 [require]
       54 GETIMPORT                        R12 K1 [script]
       56 GETTABLEKS                       R12 R12 K4 ["Parent"]
       58 GETTABLEKS                       R12 R12 K18 ["ImageSet"]
       60 GETTABLEKS                       R12 R12 K19 ["getScaledSlice"]
       62 CALL                             R11 1 1
       63 GETIMPORT                        R12 K6 [require]
       65 GETIMPORT                        R13 K1 [script]
       67 GETTABLEKS                       R13 R13 K4 ["Parent"]
       69 GETTABLEKS                       R13 R13 K20 ["CloudAsset"]
       71 GETTABLEKS                       R13 R13 K21 ["isCloudAsset"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K6 [require]
       76 GETIMPORT                        R14 K1 [script]
       78 GETTABLEKS                       R14 R14 K4 ["Parent"]
       80 GETTABLEKS                       R14 R14 K18 ["ImageSet"]
       82 GETTABLEKS                       R14 R14 K22 ["isFoundationImage"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K6 [require]
       87 GETTABLEKS                       R15 R0 K7 ["Utility"]
       89 GETTABLEKS                       R15 R15 K23 ["GuiObjectChildren"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K6 [require]
       94 GETTABLEKS                       R16 R0 K15 ["Components"]
       96 GETTABLEKS                       R16 R16 K24 ["Types"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K6 [require]
      101 GETTABLEKS                       R17 R0 K7 ["Utility"]
      103 GETTABLEKS                       R17 R17 K25 ["indexBindable"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K6 [require]
      108 GETTABLEKS                       R18 R0 K7 ["Utility"]
      110 GETTABLEKS                       R18 R18 K26 ["useDefaultTags"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K6 [require]
      115 GETTABLEKS                       R19 R0 K7 ["Utility"]
      117 GETTABLEKS                       R19 R19 K27 ["useStyledDefaults"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K6 [require]
      122 GETTABLEKS                       R20 R0 K7 ["Utility"]
      124 GETTABLEKS                       R20 R20 K28 ["withDefaults"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K6 [require]
      129 GETTABLEKS                       R21 R0 K7 ["Utility"]
      131 GETTABLEKS                       R21 R21 K29 ["withGuiObjectProps"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K6 [require]
      136 GETTABLEKS                       R22 R0 K30 ["Providers"]
      138 GETTABLEKS                       R22 R22 K31 ["Style"]
      140 GETTABLEKS                       R22 R22 K32 ["useStyleTags"]
      142 CALL                             R21 1 1
      143 DUPTABLE                         R22 K39 [{["AutoLocalize"] = False, ["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
      144 DUPCLOSURE                       R23 K40 [PROTO_0]
      145 DUPCLOSURE                       R24 K41 [PROTO_7]
      146 CAPTURE                          VAL R2
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R22
      149 CAPTURE                          VAL R19
      150 CAPTURE                          VAL R6
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R12
      154 CAPTURE                          VAL R8
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R11
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R16
      161 CAPTURE                          VAL R9
      162 CAPTURE                          VAL R3
      163 CAPTURE                          VAL R14
      164 GETTABLEKS                       R25 R6 K42 ["memo"]
      166 GETTABLEKS                       R26 R6 K43 ["forwardRef"]
      168 MOVE                             R27 R24
      169 CALL                             R26 1 -1
      170 CALL                             R25 -1 -1
      171 RETURN                           R25 -1
