PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["X"]
        2 GETTABLEKS                       R3 R0 K1 ["Y"]
        4 DIV                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+31]
        4 LOADNIL                          R1
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+18]
        9 GETUPVAL                         R2 2
       10 GETTABLE                         R1 R2 R0
       11 GETTABLEKS                       R3 R1 K0 ["size"]
       13 GETTABLEKS                       R4 R3 K1 ["X"]
       15 GETTABLEKS                       R5 R3 K2 ["Y"]
       17 DIV                              R2 R4 R5
       18 SETUPVAL                         R2 3
       19 GETUPVAL                         R2 4
       20 JUMPIFNOTEQKS                    R2 K3 ["Image"] ; [+4]
       22 GETTABLEKS                       R2 R1 K4 ["assetId"]
       24 RETURN                           R2 1
       25 LOADNIL                          R2
       26 RETURN                           R2 1
       27 GETUPVAL                         R2 5
       28 GETTABLE                         R1 R2 R0
       29 JUMPIFNOT                        R1 ; [+3]
       30 GETUPVAL                         R3 4
       31 GETTABLE                         R2 R1 R3
       32 RETURN                           R2 1
       33 LOADNIL                          R2
       34 RETURN                           R2 1
       35 GETUPVAL                         R1 4
       36 JUMPIFNOTEQKS                    R1 K3 ["Image"] ; [+2]
       38 RETURN                           R0 1
       39 GETUPVAL                         R1 4
       40 JUMPIFNOTEQKS                    R1 K5 ["ImageRectOffset"] ; [+11]
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R1 R1 K6 ["imageRect"]
       45 JUMPIFNOT                        R1 ; [+6]
       46 GETUPVAL                         R1 6
       47 GETTABLEKS                       R1 R1 K6 ["imageRect"]
       49 GETTABLEKS                       R1 R1 K7 ["offset"]
       51 RETURN                           R1 1
       52 GETUPVAL                         R1 4
       53 JUMPIFNOTEQKS                    R1 K8 ["ImageRectSize"] ; [+11]
       55 GETUPVAL                         R1 6
       56 GETTABLEKS                       R1 R1 K6 ["imageRect"]
       58 JUMPIFNOT                        R1 ; [+6]
       59 GETUPVAL                         R1 6
       60 GETTABLEKS                       R1 R1 K6 ["imageRect"]
       62 GETTABLEKS                       R1 R1 K0 ["size"]
       64 RETURN                           R1 1
       65 LOADNIL                          R1
       66 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Image"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U0
       11 NAMECALL                         R1 R1 K1 ["map"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

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
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K4 ["aspectRatio"]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R4 K5 ["isBinding"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["Image"]
       34 CALL                             R4 1 1
       35 JUMPIFNOT                        R4 ; [+56]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          REF R3
       42 CAPTURE                          UPVAL U5
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R5 R5 K0 ["Image"]
       46 LOADK                            R8 K0 ["Image"]
       47 NEWCLOSURE                       R7 P1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          REF R3
       52 CAPTURE                          VAL R8
       53 CAPTURE                          UPVAL U5
       54 CAPTURE                          UPVAL U0
       55 NAMECALL                         R5 R5 K6 ["map"]
       57 CALL                             R5 2 1
       58 MOVE                             R0 R5
       59 GETUPVAL                         R5 0
       60 GETTABLEKS                       R5 R5 K0 ["Image"]
       62 LOADK                            R8 K7 ["ImageRectOffset"]
       63 NEWCLOSURE                       R7 P1
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          UPVAL U3
       66 CAPTURE                          UPVAL U4
       67 CAPTURE                          REF R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          UPVAL U5
       70 CAPTURE                          UPVAL U0
       71 NAMECALL                         R5 R5 K6 ["map"]
       73 CALL                             R5 2 1
       74 MOVE                             R1 R5
       75 GETUPVAL                         R5 0
       76 GETTABLEKS                       R5 R5 K0 ["Image"]
       78 LOADK                            R8 K8 ["ImageRectSize"]
       79 NEWCLOSURE                       R7 P1
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U4
       83 CAPTURE                          REF R3
       84 CAPTURE                          VAL R8
       85 CAPTURE                          UPVAL U5
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R5 R5 K6 ["map"]
       89 CALL                             R5 2 1
       90 MOVE                             R2 R5
       91 JUMP                             ; [+48]
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K0 ["Image"]
       95 FASTCALL1                        TYPEOF R5 ; [+2]
       96 GETIMPORT                        R4 K10 [typeof]
       98 CALL                             R4 1 1
       99 JUMPIFNOTEQKS                    R4 K11 ["string"] ; [+40]
      101 GETUPVAL                         R4 2
      102 GETUPVAL                         R5 0
      103 GETTABLEKS                       R5 R5 K0 ["Image"]
      105 CALL                             R4 1 1
      106 JUMPIFNOT                        R4 ; [+33]
      107 GETUPVAL                         R4 3
      108 GETUPVAL                         R5 0
      109 GETTABLEKS                       R5 R5 K0 ["Image"]
      111 CALL                             R4 1 1
      112 JUMPIFNOT                        R4 ; [+15]
      113 GETUPVAL                         R5 4
      114 GETUPVAL                         R6 0
      115 GETTABLEKS                       R6 R6 K0 ["Image"]
      117 GETTABLE                         R4 R5 R6
      118 GETTABLEKS                       R0 R4 K12 ["assetId"]
      120 GETTABLEKS                       R5 R4 K3 ["size"]
      122 GETTABLEKS                       R6 R5 K13 ["X"]
      124 GETTABLEKS                       R7 R5 K14 ["Y"]
      126 DIV                              R3 R6 R7
      127 JUMP                             ; [+12]
      128 GETUPVAL                         R5 5
      129 GETUPVAL                         R6 0
      130 GETTABLEKS                       R6 R6 K0 ["Image"]
      132 GETTABLE                         R4 R5 R6
      133 JUMPIFNOT                        R4 ; [+6]
      134 GETTABLEKS                       R0 R4 K0 ["Image"]
      136 GETTABLEKS                       R1 R4 K7 ["ImageRectOffset"]
      138 GETTABLEKS                       R2 R4 K8 ["ImageRectSize"]
      140 CLOSEUPVALS                      R3
      141 RETURN                           R0 4

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
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R5 R5 K7 ["useMemo"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 NEWTABLE                         R7 0 3
       51 GETTABLEKS                       R9 R3 K1 ["Image"]
       53 GETTABLEKS                       R10 R3 K8 ["imageRect"]
       55 GETUPVAL                         R11 9
       56 SETLIST                          R7 R9 3 [1]
       58 CALL                             R5 2 4
       59 LOADNIL                          R9
       60 LOADNIL                          R10
       61 GETTABLEKS                       R11 R3 K9 ["ScaleType"]
       63 GETTABLEKS                       R12 R3 K10 ["slice"]
       65 JUMPIFNOT                        R12 ; [+65]
       66 GETUPVAL                         R12 5
       67 GETTABLEKS                       R12 R12 K11 ["isBinding"]
       69 GETTABLEKS                       R13 R3 K1 ["Image"]
       71 CALL                             R12 1 1
       72 JUMPIFNOT                        R12 ; [+20]
       73 GETTABLEKS                       R12 R3 K1 ["Image"]
       75 NEWCLOSURE                       R14 P1
       76 CAPTURE                          UPVAL U6
       77 CAPTURE                          UPVAL U10
       78 CAPTURE                          VAL R3
       79 NAMECALL                         R12 R12 K12 ["map"]
       81 CALL                             R12 2 1
       82 DUPCLOSURE                       R15 K13 [PROTO_5]
       83 NAMECALL                         R13 R12 K12 ["map"]
       85 CALL                             R13 2 1
       86 MOVE                             R9 R13
       87 DUPCLOSURE                       R15 K14 [PROTO_6]
       88 NAMECALL                         R13 R12 K12 ["map"]
       90 CALL                             R13 2 1
       91 MOVE                             R10 R13
       92 JUMP                             ; [+36]
       93 GETTABLEKS                       R13 R3 K1 ["Image"]
       95 FASTCALL1                        TYPEOF R13 ; [+2]
       96 GETIMPORT                        R12 K16 [typeof]
       98 CALL                             R12 1 1
       99 JUMPIFNOTEQKS                    R12 K17 ["string"] ; [+29]
      101 GETUPVAL                         R12 6
      102 GETTABLEKS                       R13 R3 K1 ["Image"]
      104 CALL                             R12 1 1
      105 JUMPIFNOT                        R12 ; [+15]
      106 GETUPVAL                         R12 10
      107 GETTABLEKS                       R13 R3 K10 ["slice"]
      109 GETTABLEKS                       R13 R13 K18 ["center"]
      111 GETTABLEKS                       R14 R3 K10 ["slice"]
      113 GETTABLEKS                       R14 R14 K19 ["scale"]
      115 CALL                             R12 2 1
      116 GETTABLEKS                       R9 R12 K18 ["center"]
      118 GETTABLEKS                       R10 R12 K19 ["scale"]
      120 JUMP                             ; [+8]
      121 GETTABLEKS                       R12 R3 K10 ["slice"]
      123 GETTABLEKS                       R9 R12 K18 ["center"]
      125 GETTABLEKS                       R12 R3 K10 ["slice"]
      127 GETTABLEKS                       R10 R12 K19 ["scale"]
      129 GETIMPORT                        R11 K22 [Enum.ScaleType.Slice]
      131 SETTABLEKS                       R8 R3 K23 ["aspectRatio"]
      133 GETTABLEKS                       R13 R3 K24 ["backgroundStyle"]
      135 JUMPIFEQKNIL                     R13 ; [+3]
      137 LOADK                            R12 K25 ["gui-object-defaults x-default-transparency"]
      138 JUMP                             ; [+1]
      139 LOADK                            R12 K3 ["gui-object-defaults"]
      140 GETUPVAL                         R13 11
      141 GETTABLEKS                       R14 R3 K2 ["tag"]
      143 MOVE                             R15 R12
      144 CALL                             R13 2 1
      145 GETUPVAL                         R14 12
      146 MOVE                             R15 R13
      147 CALL                             R14 1 1
      148 JUMPIFNOT                        R4 ; [+2]
      149 LOADK                            R15 K26 ["ImageButton"]
      150 JUMP                             ; [+1]
      151 LOADK                            R15 K27 ["ImageLabel"]
      152 GETUPVAL                         R16 13
      153 MOVE                             R17 R3
      154 NEWTABLE                         R18 16 0
      156 JUMPIFNOTEQKS                    R15 K26 ["ImageButton"] ; [+4]
      158 GETTABLEKS                       R19 R3 K28 ["AutoButtonColor"]
      160 JUMP                             ; [+1]
      161 LOADNIL                          R19
      162 SETTABLEKS                       R19 R18 K28 ["AutoButtonColor"]
      164 SETTABLEKS                       R5 R18 K1 ["Image"]
      166 GETTABLEKS                       R20 R3 K29 ["imageStyle"]
      168 JUMPIFNOT                        R20 ; [+6]
      169 GETUPVAL                         R19 14
      170 GETTABLEKS                       R20 R3 K29 ["imageStyle"]
      172 LOADK                            R21 K30 ["Color3"]
      173 CALL                             R19 2 1
      174 JUMP                             ; [+1]
      175 LOADNIL                          R19
      176 SETTABLEKS                       R19 R18 K31 ["ImageColor3"]
      178 GETTABLEKS                       R20 R3 K29 ["imageStyle"]
      180 JUMPIFNOT                        R20 ; [+6]
      181 GETUPVAL                         R19 14
      182 GETTABLEKS                       R20 R3 K29 ["imageStyle"]
      184 LOADK                            R21 K32 ["Transparency"]
      185 CALL                             R19 2 1
      186 JUMP                             ; [+1]
      187 LOADNIL                          R19
      188 SETTABLEKS                       R19 R18 K33 ["ImageTransparency"]
      190 SETTABLEKS                       R6 R18 K34 ["ImageRectOffset"]
      192 SETTABLEKS                       R7 R18 K35 ["ImageRectSize"]
      194 GETTABLEKS                       R19 R3 K36 ["ResampleMode"]
      196 SETTABLEKS                       R19 R18 K36 ["ResampleMode"]
      198 SETTABLEKS                       R11 R18 K9 ["ScaleType"]
      200 SETTABLEKS                       R9 R18 K37 ["SliceCenter"]
      202 SETTABLEKS                       R10 R18 K38 ["SliceScale"]
      204 GETTABLEKS                       R19 R3 K39 ["TileSize"]
      206 SETTABLEKS                       R19 R18 K39 ["TileSize"]
      208 SETTABLEKS                       R1 R18 K40 ["ref"]
      210 GETUPVAL                         R19 4
      211 GETTABLEKS                       R19 R19 K41 ["Tag"]
      213 SETTABLE                         R14 R18 R19
      214 CALL                             R16 2 1
      215 JUMPIFNOT                        R4 ; [+2]
      216 GETUPVAL                         R17 15
      217 JUMP                             ; [+1]
      218 MOVE                             R17 R15
      219 DUPTABLE                         R18 K46 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      220 SETTABLEKS                       R15 R18 K42 ["component"]
      222 GETTABLEKS                       R19 R3 K5 ["onActivated"]
      224 SETTABLEKS                       R19 R18 K5 ["onActivated"]
      226 GETTABLEKS                       R19 R3 K6 ["onSecondaryActivated"]
      228 SETTABLEKS                       R19 R18 K6 ["onSecondaryActivated"]
      230 GETTABLEKS                       R19 R3 K4 ["onStateChanged"]
      232 SETTABLEKS                       R19 R18 K4 ["onStateChanged"]
      234 GETTABLEKS                       R19 R3 K43 ["stateLayer"]
      236 SETTABLEKS                       R19 R18 K43 ["stateLayer"]
      238 GETTABLEKS                       R19 R3 K44 ["isDisabled"]
      240 SETTABLEKS                       R19 R18 K44 ["isDisabled"]
      242 GETTABLEKS                       R19 R3 K45 ["cursor"]
      244 SETTABLEKS                       R19 R18 K45 ["cursor"]
      246 JUMPIFNOT                        R4 ; [+20]
      247 GETUPVAL                         R20 0
      248 GETTABLEKS                       R20 R20 K47 ["FoundationMigrateCryoToDash"]
      250 JUMPIFNOT                        R20 ; [+7]
      251 GETUPVAL                         R19 16
      252 GETTABLEKS                       R19 R19 K48 ["union"]
      254 MOVE                             R20 R16
      255 MOVE                             R21 R18
      256 CALL                             R19 2 1
      257 JUMP                             ; [+10]
      258 GETUPVAL                         R19 17
      259 GETTABLEKS                       R19 R19 K49 ["Dictionary"]
      261 GETTABLEKS                       R19 R19 K48 ["union"]
      263 MOVE                             R20 R16
      264 MOVE                             R21 R18
      265 CALL                             R19 2 1
      266 JUMP                             ; [+1]
      267 MOVE                             R19 R16
      268 GETUPVAL                         R20 4
      269 GETTABLEKS                       R20 R20 K50 ["createElement"]
      271 MOVE                             R21 R17
      272 MOVE                             R22 R19
      273 GETUPVAL                         R23 18
      274 MOVE                             R24 R3
      275 CALL                             R23 1 -1
      276 CALL                             R20 -1 -1
      277 RETURN                           R20 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["React"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R1 K10 ["Cryo"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R1 K11 ["Dash"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R7 R1 K12 ["ReactIs"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R1 K13 ["FoundationImages"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R1 K14 ["FoundationCloudAssets"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R8 K15 ["Assets"]
       48 GETIMPORT                        R10 K6 [require]
       50 GETTABLEKS                       R11 R0 K16 ["Components"]
       52 GETTABLEKS                       R11 R11 K17 ["Interactable"]
       54 CALL                             R10 1 1
       55 GETTABLEKS                       R11 R7 K18 ["Images"]
       57 GETIMPORT                        R12 K6 [require]
       59 GETIMPORT                        R13 K1 [script]
       61 GETTABLEKS                       R13 R13 K4 ["Parent"]
       63 GETTABLEKS                       R13 R13 K19 ["ImageSet"]
       65 GETTABLEKS                       R13 R13 K20 ["getScaledSlice"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K6 [require]
       70 GETIMPORT                        R14 K1 [script]
       72 GETTABLEKS                       R14 R14 K4 ["Parent"]
       74 GETTABLEKS                       R14 R14 K19 ["ImageSet"]
       76 GETTABLEKS                       R14 R14 K21 ["isFoundationImage"]
       78 CALL                             R13 1 1
       79 GETIMPORT                        R14 K6 [require]
       81 GETIMPORT                        R15 K1 [script]
       83 GETTABLEKS                       R15 R15 K4 ["Parent"]
       85 GETTABLEKS                       R15 R15 K22 ["CloudAsset"]
       87 GETTABLEKS                       R15 R15 K23 ["isCloudAsset"]
       89 CALL                             R14 1 1
       90 GETIMPORT                        R15 K6 [require]
       92 GETTABLEKS                       R16 R0 K16 ["Components"]
       94 GETTABLEKS                       R16 R16 K24 ["Types"]
       96 CALL                             R15 1 1
       97 GETIMPORT                        R16 K6 [require]
       99 GETTABLEKS                       R17 R0 K7 ["Utility"]
      101 GETTABLEKS                       R17 R17 K25 ["withDefaults"]
      103 CALL                             R16 1 1
      104 GETIMPORT                        R17 K6 [require]
      106 GETTABLEKS                       R18 R0 K7 ["Utility"]
      108 GETTABLEKS                       R18 R18 K26 ["useDefaultTags"]
      110 CALL                             R17 1 1
      111 GETIMPORT                        R18 K6 [require]
      113 GETTABLEKS                       R19 R0 K7 ["Utility"]
      115 GETTABLEKS                       R19 R19 K27 ["withGuiObjectProps"]
      117 CALL                             R18 1 1
      118 GETIMPORT                        R19 K6 [require]
      120 GETTABLEKS                       R20 R0 K7 ["Utility"]
      122 GETTABLEKS                       R20 R20 K28 ["useStyledDefaults"]
      124 CALL                             R19 1 1
      125 GETIMPORT                        R20 K6 [require]
      127 GETTABLEKS                       R21 R0 K7 ["Utility"]
      129 GETTABLEKS                       R21 R21 K29 ["indexBindable"]
      131 CALL                             R20 1 1
      132 GETIMPORT                        R21 K6 [require]
      134 GETTABLEKS                       R22 R0 K7 ["Utility"]
      136 GETTABLEKS                       R22 R22 K30 ["GuiObjectChildren"]
      138 CALL                             R21 1 1
      139 GETIMPORT                        R22 K6 [require]
      141 GETTABLEKS                       R23 R0 K31 ["Providers"]
      143 GETTABLEKS                       R23 R23 K32 ["Style"]
      145 GETTABLEKS                       R23 R23 K33 ["useStyleTags"]
      147 CALL                             R22 1 1
      148 DUPTABLE                         R23 K40 [{["AutoLocalize"] = False, ["AutoButtonColor"] = False, ["BorderSizePixel"] = 0, ["isDisabled"] = False}]
      149 DUPCLOSURE                       R24 K41 [PROTO_0]
      150 DUPCLOSURE                       R25 K42 [PROTO_7]
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R19
      153 CAPTURE                          VAL R23
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R3
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R13
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R11
      161 CAPTURE                          VAL R12
      162 CAPTURE                          VAL R17
      163 CAPTURE                          VAL R22
      164 CAPTURE                          VAL R18
      165 CAPTURE                          VAL R20
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R5
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R21
      170 GETTABLEKS                       R26 R3 K43 ["memo"]
      172 GETTABLEKS                       R27 R3 K44 ["forwardRef"]
      174 MOVE                             R28 R25
      175 CALL                             R27 1 -1
      176 CALL                             R26 -1 -1
      177 RETURN                           R26 -1
