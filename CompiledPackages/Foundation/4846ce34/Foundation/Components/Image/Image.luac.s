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
       42 GETUPVAL                         R2 6
       43 GETTABLEKS                       R1 R2 K6 ["imageRect"]
       45 JUMPIFNOT                        R1 ; [+6]
       46 GETUPVAL                         R3 6
       47 GETTABLEKS                       R2 R3 K6 ["imageRect"]
       49 GETTABLEKS                       R1 R2 K7 ["offset"]
       51 RETURN                           R1 1
       52 GETUPVAL                         R1 4
       53 JUMPIFNOTEQKS                    R1 K8 ["ImageRectSize"] ; [+11]
       55 GETUPVAL                         R2 6
       56 GETTABLEKS                       R1 R2 K6 ["imageRect"]
       58 JUMPIFNOT                        R1 ; [+6]
       59 GETUPVAL                         R3 6
       60 GETTABLEKS                       R2 R3 K6 ["imageRect"]
       62 GETTABLEKS                       R1 R2 K0 ["size"]
       64 RETURN                           R1 1
       65 LOADNIL                          R1
       66 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Image"]
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
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K4 ["aspectRatio"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R4 R5 K5 ["isBinding"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R5 R6 K0 ["Image"]
       34 CALL                             R4 1 1
       35 JUMPIFNOT                        R4 ; [+56]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          UPVAL U0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          REF R3
       42 CAPTURE                          UPVAL U5
       43 GETUPVAL                         R6 0
       44 GETTABLEKS                       R5 R6 K0 ["Image"]
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
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R5 R6 K0 ["Image"]
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
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R5 R6 K0 ["Image"]
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
       92 GETUPVAL                         R6 0
       93 GETTABLEKS                       R5 R6 K0 ["Image"]
       95 FASTCALL1                        TYPEOF R5 ; [+2]
       96 GETIMPORT                        R4 K10 [typeof]
       98 CALL                             R4 1 1
       99 JUMPIFNOTEQKS                    R4 K11 ["string"] ; [+40]
      101 GETUPVAL                         R4 2
      102 GETUPVAL                         R6 0
      103 GETTABLEKS                       R5 R6 K0 ["Image"]
      105 CALL                             R4 1 1
      106 JUMPIFNOT                        R4 ; [+33]
      107 GETUPVAL                         R4 3
      108 GETUPVAL                         R6 0
      109 GETTABLEKS                       R5 R6 K0 ["Image"]
      111 CALL                             R4 1 1
      112 JUMPIFNOT                        R4 ; [+15]
      113 GETUPVAL                         R5 4
      114 GETUPVAL                         R7 0
      115 GETTABLEKS                       R6 R7 K0 ["Image"]
      117 GETTABLE                         R4 R5 R6
      118 GETTABLEKS                       R0 R4 K12 ["assetId"]
      120 GETTABLEKS                       R5 R4 K3 ["size"]
      122 GETTABLEKS                       R6 R5 K13 ["X"]
      124 GETTABLEKS                       R7 R5 K14 ["Y"]
      126 DIV                              R3 R6 R7
      127 JUMP                             ; [+12]
      128 GETUPVAL                         R5 5
      129 GETUPVAL                         R7 0
      130 GETTABLEKS                       R6 R7 K0 ["Image"]
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
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FoundationDisableStylingPolyfill"]
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
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K0 ["FoundationDisableStylingPolyfill"]
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
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R5 R6 K7 ["useMemo"]
       42 NEWCLOSURE                       R6 P0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          UPVAL U9
       49 NEWTABLE                         R7 0 4
       51 GETTABLEKS                       R9 R3 K1 ["Image"]
       53 GETTABLEKS                       R10 R3 K8 ["imageRect"]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R12 R13 K9 ["FoundationImageFixAspectRatioMemo"]
       58 JUMPIFNOT                        R12 ; [+3]
       59 GETTABLEKS                       R11 R3 K10 ["aspectRatio"]
       61 JUMP                             ; [+1]
       62 LOADNIL                          R11
       63 GETUPVAL                         R12 9
       64 SETLIST                          R7 R9 4 [1]
       66 CALL                             R5 2 4
       67 LOADNIL                          R9
       68 LOADNIL                          R10
       69 GETTABLEKS                       R11 R3 K11 ["ScaleType"]
       71 GETTABLEKS                       R12 R3 K12 ["slice"]
       73 JUMPIFNOT                        R12 ; [+65]
       74 GETUPVAL                         R13 5
       75 GETTABLEKS                       R12 R13 K13 ["isBinding"]
       77 GETTABLEKS                       R13 R3 K1 ["Image"]
       79 CALL                             R12 1 1
       80 JUMPIFNOT                        R12 ; [+20]
       81 GETTABLEKS                       R12 R3 K1 ["Image"]
       83 NEWCLOSURE                       R14 P1
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U10
       86 CAPTURE                          VAL R3
       87 NAMECALL                         R12 R12 K14 ["map"]
       89 CALL                             R12 2 1
       90 DUPCLOSURE                       R15 K15 [PROTO_5]
       91 NAMECALL                         R13 R12 K14 ["map"]
       93 CALL                             R13 2 1
       94 MOVE                             R9 R13
       95 DUPCLOSURE                       R15 K16 [PROTO_6]
       96 NAMECALL                         R13 R12 K14 ["map"]
       98 CALL                             R13 2 1
       99 MOVE                             R10 R13
      100 JUMP                             ; [+36]
      101 GETTABLEKS                       R13 R3 K1 ["Image"]
      103 FASTCALL1                        TYPEOF R13 ; [+2]
      104 GETIMPORT                        R12 K18 [typeof]
      106 CALL                             R12 1 1
      107 JUMPIFNOTEQKS                    R12 K19 ["string"] ; [+29]
      109 GETUPVAL                         R12 6
      110 GETTABLEKS                       R13 R3 K1 ["Image"]
      112 CALL                             R12 1 1
      113 JUMPIFNOT                        R12 ; [+15]
      114 GETUPVAL                         R12 10
      115 GETTABLEKS                       R14 R3 K12 ["slice"]
      117 GETTABLEKS                       R13 R14 K20 ["center"]
      119 GETTABLEKS                       R15 R3 K12 ["slice"]
      121 GETTABLEKS                       R14 R15 K21 ["scale"]
      123 CALL                             R12 2 1
      124 GETTABLEKS                       R9 R12 K20 ["center"]
      126 GETTABLEKS                       R10 R12 K21 ["scale"]
      128 JUMP                             ; [+8]
      129 GETTABLEKS                       R12 R3 K12 ["slice"]
      131 GETTABLEKS                       R9 R12 K20 ["center"]
      133 GETTABLEKS                       R12 R3 K12 ["slice"]
      135 GETTABLEKS                       R10 R12 K21 ["scale"]
      137 GETIMPORT                        R11 K24 [Enum.ScaleType.Slice]
      139 SETTABLEKS                       R8 R3 K10 ["aspectRatio"]
      141 GETTABLEKS                       R13 R3 K25 ["backgroundStyle"]
      143 JUMPIFEQKNIL                     R13 ; [+3]
      145 LOADK                            R12 K26 ["gui-object-defaults x-default-transparency"]
      146 JUMP                             ; [+1]
      147 LOADK                            R12 K3 ["gui-object-defaults"]
      148 GETUPVAL                         R13 11
      149 GETTABLEKS                       R14 R3 K2 ["tag"]
      151 MOVE                             R15 R12
      152 CALL                             R13 2 1
      153 GETUPVAL                         R14 12
      154 MOVE                             R15 R13
      155 CALL                             R14 1 1
      156 JUMPIFNOT                        R4 ; [+2]
      157 LOADK                            R15 K27 ["ImageButton"]
      158 JUMP                             ; [+1]
      159 LOADK                            R15 K28 ["ImageLabel"]
      160 GETUPVAL                         R16 13
      161 MOVE                             R17 R3
      162 NEWTABLE                         R18 16 0
      164 JUMPIFNOTEQKS                    R15 K27 ["ImageButton"] ; [+4]
      166 GETTABLEKS                       R19 R3 K29 ["AutoButtonColor"]
      168 JUMP                             ; [+1]
      169 LOADNIL                          R19
      170 SETTABLEKS                       R19 R18 K29 ["AutoButtonColor"]
      172 SETTABLEKS                       R5 R18 K1 ["Image"]
      174 GETTABLEKS                       R20 R3 K30 ["imageStyle"]
      176 JUMPIFNOT                        R20 ; [+6]
      177 GETUPVAL                         R19 14
      178 GETTABLEKS                       R20 R3 K30 ["imageStyle"]
      180 LOADK                            R21 K31 ["Color3"]
      181 CALL                             R19 2 1
      182 JUMP                             ; [+1]
      183 LOADNIL                          R19
      184 SETTABLEKS                       R19 R18 K32 ["ImageColor3"]
      186 GETTABLEKS                       R20 R3 K30 ["imageStyle"]
      188 JUMPIFNOT                        R20 ; [+6]
      189 GETUPVAL                         R19 14
      190 GETTABLEKS                       R20 R3 K30 ["imageStyle"]
      192 LOADK                            R21 K33 ["Transparency"]
      193 CALL                             R19 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R19
      196 SETTABLEKS                       R19 R18 K34 ["ImageTransparency"]
      198 SETTABLEKS                       R6 R18 K35 ["ImageRectOffset"]
      200 SETTABLEKS                       R7 R18 K36 ["ImageRectSize"]
      202 GETTABLEKS                       R19 R3 K37 ["ResampleMode"]
      204 SETTABLEKS                       R19 R18 K37 ["ResampleMode"]
      206 SETTABLEKS                       R11 R18 K11 ["ScaleType"]
      208 SETTABLEKS                       R9 R18 K38 ["SliceCenter"]
      210 SETTABLEKS                       R10 R18 K39 ["SliceScale"]
      212 GETTABLEKS                       R19 R3 K40 ["TileSize"]
      214 SETTABLEKS                       R19 R18 K40 ["TileSize"]
      216 SETTABLEKS                       R1 R18 K41 ["ref"]
      218 GETUPVAL                         R20 4
      219 GETTABLEKS                       R19 R20 K42 ["Tag"]
      221 SETTABLE                         R14 R18 R19
      222 CALL                             R16 2 1
      223 JUMPIFNOT                        R4 ; [+2]
      224 GETUPVAL                         R17 15
      225 JUMP                             ; [+1]
      226 MOVE                             R17 R15
      227 DUPTABLE                         R18 K47 [{"component", "onActivated", "onSecondaryActivated", "onStateChanged", "stateLayer", "isDisabled", "cursor"}]
      228 SETTABLEKS                       R15 R18 K43 ["component"]
      230 GETTABLEKS                       R19 R3 K5 ["onActivated"]
      232 SETTABLEKS                       R19 R18 K5 ["onActivated"]
      234 GETTABLEKS                       R19 R3 K6 ["onSecondaryActivated"]
      236 SETTABLEKS                       R19 R18 K6 ["onSecondaryActivated"]
      238 GETTABLEKS                       R19 R3 K4 ["onStateChanged"]
      240 SETTABLEKS                       R19 R18 K4 ["onStateChanged"]
      242 GETTABLEKS                       R19 R3 K44 ["stateLayer"]
      244 SETTABLEKS                       R19 R18 K44 ["stateLayer"]
      246 GETTABLEKS                       R19 R3 K45 ["isDisabled"]
      248 SETTABLEKS                       R19 R18 K45 ["isDisabled"]
      250 GETTABLEKS                       R19 R3 K46 ["cursor"]
      252 SETTABLEKS                       R19 R18 K46 ["cursor"]
      254 JUMPIFNOT                        R4 ; [+7]
      255 GETUPVAL                         R20 16
      256 GETTABLEKS                       R19 R20 K48 ["union"]
      258 MOVE                             R20 R16
      259 MOVE                             R21 R18
      260 CALL                             R19 2 1
      261 JUMP                             ; [+1]
      262 MOVE                             R19 R16
      263 GETUPVAL                         R21 4
      264 GETTABLEKS                       R20 R21 K49 ["createElement"]
      266 MOVE                             R21 R17
      267 MOVE                             R22 R19
      268 GETUPVAL                         R23 17
      269 MOVE                             R24 R3
      270 CALL                             R23 1 -1
      271 CALL                             R20 -1 -1
      272 RETURN                           R20 -1

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
      117 GETTABLEKS                       R19 R20 K27 ["useStyledDefaults"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K6 [require]
      122 GETTABLEKS                       R21 R0 K7 ["Utility"]
      124 GETTABLEKS                       R20 R21 K28 ["withDefaults"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K6 [require]
      129 GETTABLEKS                       R22 R0 K7 ["Utility"]
      131 GETTABLEKS                       R21 R22 K29 ["withGuiObjectProps"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K6 [require]
      136 GETTABLEKS                       R24 R0 K30 ["Providers"]
      138 GETTABLEKS                       R23 R24 K31 ["Style"]
      140 GETTABLEKS                       R22 R23 K32 ["useStyleTags"]
      142 CALL                             R21 1 1
      143 DUPTABLE                         R22 K37 [{"AutoLocalize", "AutoButtonColor", "BorderSizePixel", "isDisabled"}]
      144 LOADB                            R23 0
      145 SETTABLEKS                       R23 R22 K33 ["AutoLocalize"]
      147 LOADB                            R23 0
      148 SETTABLEKS                       R23 R22 K34 ["AutoButtonColor"]
      150 LOADN                            R23 0
      151 SETTABLEKS                       R23 R22 K35 ["BorderSizePixel"]
      153 LOADB                            R23 0
      154 SETTABLEKS                       R23 R22 K36 ["isDisabled"]
      156 DUPCLOSURE                       R23 K38 [PROTO_0]
      157 DUPCLOSURE                       R24 K39 [PROTO_7]
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R22
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R7
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R12
      166 CAPTURE                          VAL R8
      167 CAPTURE                          VAL R10
      168 CAPTURE                          VAL R11
      169 CAPTURE                          VAL R17
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R20
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R9
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R14
      176 GETTABLEKS                       R25 R6 K40 ["memo"]
      178 GETTABLEKS                       R26 R6 K41 ["forwardRef"]
      180 MOVE                             R27 R24
      181 CALL                             R26 1 -1
      182 CALL                             R25 -1 -1
      183 RETURN                           R25 -1
