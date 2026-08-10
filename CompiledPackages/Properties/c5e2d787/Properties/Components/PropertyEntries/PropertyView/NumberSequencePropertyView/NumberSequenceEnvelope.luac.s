PROTO_0:
        0 DUPTABLE                         R1 K2 [{"Point", "Envelope"}]
        1 DUPTABLE                         R2 K4 [{"Position"}]
        2 GETIMPORT                        R3 K7 [Vector2.new]
        4 GETTABLEKS                       R4 R0 K8 ["Time"]
        6 GETTABLEKS                       R6 R0 K9 ["Value"]
        8 GETTABLEKS                       R7 R0 K1 ["Envelope"]
       10 ADD                              R5 R6 R7
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R2 K3 ["Position"]
       14 SETTABLEKS                       R2 R1 K0 ["Point"]
       16 GETTABLEKS                       R2 R0 K1 ["Envelope"]
       18 SETTABLEKS                       R2 R1 K1 ["Envelope"]
       20 DUPTABLE                         R2 K2 [{"Point", "Envelope"}]
       21 DUPTABLE                         R3 K4 [{"Position"}]
       22 GETIMPORT                        R4 K7 [Vector2.new]
       24 GETTABLEKS                       R5 R0 K8 ["Time"]
       26 GETTABLEKS                       R7 R0 K9 ["Value"]
       28 GETTABLEKS                       R8 R0 K1 ["Envelope"]
       30 SUB                              R6 R7 R8
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R3 K3 ["Position"]
       34 SETTABLEKS                       R3 R2 K0 ["Point"]
       36 GETTABLEKS                       R3 R0 K1 ["Envelope"]
       38 SETTABLEKS                       R3 R2 K1 ["Envelope"]
       40 RETURN                           R1 2

PROTO_1:
        0 NEWTABLE                         R5 0 0
        2 NEWTABLE                         R6 0 0
        4 MOVE                             R9 R0
        5 MOVE                             R7 R1
        6 LOADN                            R8 1
        7 FORNPREP                         R7
        8 GETTABLE                         R12 R2 R9
        9 GETTABLEKS                       R12 R12 K0 ["Point"]
       11 FASTCALL2                        TABLE_INSERT R5 R12 ; [+4]
       13 MOVE                             R11 R5
       14 GETIMPORT                        R10 K3 [table.insert]
       16 CALL                             R10 2 0
       17 GETTABLE                         R12 R3 R9
       18 GETTABLEKS                       R12 R12 K0 ["Point"]
       20 FASTCALL2                        TABLE_INSERT R6 R12 ; [+4]
       22 MOVE                             R11 R6
       23 GETIMPORT                        R10 K3 [table.insert]
       25 CALL                             R10 2 0
       26 FORNLOOP                         R7
       27 GETUPVAL                         R7 0
       28 GETUPVAL                         R8 1
       29 DUPTABLE                         R9 K7 [{"Points", "Color3", "Thickness"}]
       30 SETTABLEKS                       R5 R9 K4 ["Points"]
       32 GETTABLEKS                       R10 R4 K5 ["Color3"]
       34 SETTABLEKS                       R10 R9 K5 ["Color3"]
       36 GETTABLEKS                       R10 R4 K8 ["OutlineThickness"]
       38 SETTABLEKS                       R10 R9 K6 ["Thickness"]
       40 CALL                             R7 2 1
       41 GETUPVAL                         R8 0
       42 GETUPVAL                         R9 1
       43 DUPTABLE                         R10 K7 [{"Points", "Color3", "Thickness"}]
       44 SETTABLEKS                       R6 R10 K4 ["Points"]
       46 GETTABLEKS                       R11 R4 K5 ["Color3"]
       48 SETTABLEKS                       R11 R10 K5 ["Color3"]
       50 GETTABLEKS                       R11 R4 K8 ["OutlineThickness"]
       52 SETTABLEKS                       R11 R10 K6 ["Thickness"]
       54 CALL                             R8 2 -1
       55 RETURN                           R7 -1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+233]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["ScanLines"]
        8 ORK                              R1 R2 K0 [200]
        9 NEWTABLE                         R2 0 0
       11 NEWTABLE                         R3 0 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K2 ["Keypoints"]
       16 LOADN                            R5 1
       17 LOADN                            R6 1
       18 LOADN                            R9 1
       19 LENGTH                           R7 R4
       20 LOADN                            R8 1
       21 FORNPREP                         R7
       22 GETTABLE                         R10 R4 R9
       23 GETUPVAL                         R11 2
       24 MOVE                             R12 R10
       25 CALL                             R11 1 2
       26 SETTABLE                         R11 R2 R9
       27 SETTABLE                         R12 R3 R9
       28 JUMPIFEQKN                       R9 K3 [1] ; [+44]
       30 SUBK                             R14 R9 K3 [1]
       31 GETTABLE                         R13 R4 R14
       32 GETTABLEKS                       R14 R10 K4 ["Envelope"]
       34 JUMPIFNOTEQKN                    R14 K5 [0] ; [+37]
       36 GETTABLEKS                       R14 R13 K4 ["Envelope"]
       38 JUMPIFNOTEQKN                    R14 K5 [0] ; [+33]
       40 SUB                              R14 R6 R5
       41 LOADN                            R15 0
       42 JUMPIFNOTLT                      R15 R14 ; [+26]
       44 GETUPVAL                         R14 3
       45 MOVE                             R15 R5
       46 MOVE                             R16 R6
       47 MOVE                             R17 R2
       48 MOVE                             R18 R3
       49 DUPTABLE                         R19 K8 [{"Color3", "OutlineThickness"}]
       50 GETUPVAL                         R20 1
       51 GETTABLEKS                       R20 R20 K6 ["Color3"]
       53 SETTABLEKS                       R20 R19 K6 ["Color3"]
       55 GETUPVAL                         R20 1
       56 GETTABLEKS                       R20 R20 K7 ["OutlineThickness"]
       58 SETTABLEKS                       R20 R19 K7 ["OutlineThickness"]
       60 CALL                             R14 5 2
       61 LOADK                            R17 K9 ["OutlineTop"]
       62 MOVE                             R18 R9
       63 CONCAT                           R16 R17 R18
       64 SETTABLE                         R14 R0 R16
       65 LOADK                            R17 K10 ["OutlineBottom"]
       66 MOVE                             R18 R9
       67 CONCAT                           R16 R17 R18
       68 SETTABLE                         R15 R0 R16
       69 MOVE                             R5 R9
       70 MOVE                             R6 R9
       71 JUMP                             ; [+1]
       72 MOVE                             R6 R9
       73 FORNLOOP                         R7
       74 SUB                              R7 R6 R5
       75 LOADN                            R8 0
       76 JUMPIFNOTLT                      R8 R7 ; [+22]
       78 GETUPVAL                         R7 3
       79 MOVE                             R8 R5
       80 MOVE                             R9 R6
       81 MOVE                             R10 R2
       82 MOVE                             R11 R3
       83 DUPTABLE                         R12 K8 [{"Color3", "OutlineThickness"}]
       84 GETUPVAL                         R13 1
       85 GETTABLEKS                       R13 R13 K6 ["Color3"]
       87 SETTABLEKS                       R13 R12 K6 ["Color3"]
       89 GETUPVAL                         R13 1
       90 GETTABLEKS                       R13 R13 K7 ["OutlineThickness"]
       92 SETTABLEKS                       R13 R12 K7 ["OutlineThickness"]
       94 CALL                             R7 5 2
       95 SETTABLEKS                       R7 R0 K11 ["OutlineTopEnd"]
       97 SETTABLEKS                       R8 R0 K12 ["OutlineBottomEnd"]
       99 DIVRK                            R7 K3 [1] R1
      100 LOADN                            R8 1
      101 LOADN                            R9 0
      102 JUMPIFNOTLE                      R9 R1 ; [+183]
      104 DIV                              R10 R9 R1
      105 LENGTH                           R12 R2
      106 SUBK                             R11 R12 K3 [1]
      107 JUMPIFNOTLT                      R8 R11 ; [+13]
      109 ADDK                             R12 R8 K3 [1]
      110 GETTABLE                         R11 R2 R12
      111 GETTABLEKS                       R11 R11 K13 ["Point"]
      113 GETTABLEKS                       R11 R11 K14 ["Position"]
      115 GETTABLEKS                       R11 R11 K15 ["X"]
      117 JUMPIFNOTLT                      R11 R10 ; [+3]
      119 ADDK                             R8 R8 K3 [1]
      120 JUMPBACK                         ; [-16]
      121 GETTABLE                         R11 R2 R8
      122 ADDK                             R13 R8 K3 [1]
      123 GETTABLE                         R12 R2 R13
      124 GETTABLE                         R13 R3 R8
      125 ADDK                             R15 R8 K3 [1]
      126 GETTABLE                         R14 R3 R15
      127 GETTABLEKS                       R15 R11 K4 ["Envelope"]
      129 JUMPIFNOTEQKN                    R15 K5 [0] ; [+20]
      131 GETTABLEKS                       R15 R12 K4 ["Envelope"]
      133 JUMPIFNOTEQKN                    R15 K5 [0] ; [+16]
      135 GETTABLEKS                       R15 R12 K13 ["Point"]
      137 GETTABLEKS                       R15 R15 K14 ["Position"]
      139 GETTABLEKS                       R15 R15 K15 ["X"]
      141 SUB                              R16 R15 R10
      142 MUL                              R19 R16 R1
      143 FASTCALL1                        MATH_FLOOR R19 ; [+2]
      144 GETIMPORT                        R18 K18 [math.floor]
      146 CALL                             R18 1 1
      147 ADDK                             R17 R18 K3 [1]
      148 ADD                              R9 R9 R17
      149 JUMP                             ; [+86]
      150 GETTABLEKS                       R15 R11 K13 ["Point"]
      152 GETTABLEKS                       R15 R15 K14 ["Position"]
      154 GETTABLEKS                       R15 R15 K15 ["X"]
      156 GETTABLEKS                       R16 R12 K13 ["Point"]
      158 GETTABLEKS                       R16 R16 K14 ["Position"]
      160 GETTABLEKS                       R16 R16 K15 ["X"]
      162 JUMPIFNOTEQ                      R15 R16 ; [+3]
      164 ADDK                             R9 R9 K3 [1]
      165 JUMP                             ; [+70]
      166 GETUPVAL                         R15 4
      167 GETTABLEKS                       R15 R15 K19 ["calculatePointOnLine"]
      169 GETTABLEKS                       R16 R11 K13 ["Point"]
      171 GETTABLEKS                       R16 R16 K14 ["Position"]
      173 GETTABLEKS                       R17 R12 K13 ["Point"]
      175 GETTABLEKS                       R17 R17 K14 ["Position"]
      177 MOVE                             R18 R10
      178 CALL                             R15 3 1
      179 GETUPVAL                         R16 4
      180 GETTABLEKS                       R16 R16 K19 ["calculatePointOnLine"]
      182 GETTABLEKS                       R17 R13 K13 ["Point"]
      184 GETTABLEKS                       R17 R17 K14 ["Position"]
      186 GETTABLEKS                       R18 R14 K13 ["Point"]
      188 GETTABLEKS                       R18 R18 K14 ["Position"]
      190 MOVE                             R19 R10
      191 CALL                             R16 3 1
      192 GETIMPORT                        R17 K22 [Vector2.new]
      194 GETTABLEKS                       R18 R15 K15 ["X"]
      196 GETTABLEKS                       R19 R15 K23 ["Y"]
      198 CALL                             R17 2 1
      199 MOVE                             R15 R17
      200 GETIMPORT                        R17 K22 [Vector2.new]
      202 GETTABLEKS                       R18 R16 K15 ["X"]
      204 GETTABLEKS                       R19 R16 K23 ["Y"]
      206 CALL                             R17 2 1
      207 MOVE                             R16 R17
      208 MOVE                             R17 R16
      209 GETIMPORT                        R19 K22 [Vector2.new]
      211 MOVE                             R20 R7
      212 LOADN                            R21 0
      213 CALL                             R19 2 1
      214 ADD                              R18 R15 R19
      215 LOADK                            R20 K24 ["ScanLine "]
      216 MOVE                             R21 R9
      217 CONCAT                           R19 R20 R21
      218 GETUPVAL                         R20 5
      219 GETUPVAL                         R21 6
      220 DUPTABLE                         R22 K28 [{["Rect"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"]}]
      221 GETIMPORT                        R23 K29 [Rect.new]
      223 MOVE                             R24 R17
      224 MOVE                             R25 R18
      225 CALL                             R23 2 1
      226 SETTABLEKS                       R23 R22 K25 ["Rect"]
      228 GETUPVAL                         R23 1
      229 GETTABLEKS                       R23 R23 K6 ["Color3"]
      231 SETTABLEKS                       R23 R22 K27 ["BackgroundColor3"]
      233 CALL                             R20 2 1
      234 SETTABLE                         R20 R0 R19
      235 ADDK                             R9 R9 K3 [1]
      236 JUMPBACK                         ; [-135]
      237 RETURN                           R0 1
      238 NEWTABLE                         R1 0 0
      240 NEWTABLE                         R2 0 0
      242 GETUPVAL                         R3 1
      243 GETTABLEKS                       R3 R3 K2 ["Keypoints"]
      245 LOADN                            R6 1
      246 LENGTH                           R4 R3
      247 LOADN                            R5 1
      248 FORNPREP                         R4
      249 GETTABLE                         R7 R3 R6
      250 GETUPVAL                         R8 2
      251 MOVE                             R9 R7
      252 CALL                             R8 1 2
      253 GETTABLEKS                       R10 R8 K13 ["Point"]
      255 SETTABLE                         R10 R1 R6
      256 GETTABLEKS                       R10 R9 K13 ["Point"]
      258 SETTABLE                         R10 R2 R6
      259 FORNLOOP                         R4
      260 GETUPVAL                         R4 5
      261 GETUPVAL                         R5 7
      262 DUPTABLE                         R6 K32 [{["Points"], ["Color3"], ["Thickness"] = 1}]
      263 SETTABLEKS                       R1 R6 K30 ["Points"]
      265 GETUPVAL                         R7 1
      266 GETTABLEKS                       R7 R7 K6 ["Color3"]
      268 SETTABLEKS                       R7 R6 K6 ["Color3"]
      270 CALL                             R4 2 1
      271 SETTABLEKS                       R4 R0 K33 ["OutlineTopCurve"]
      273 GETUPVAL                         R4 5
      274 GETUPVAL                         R5 7
      275 DUPTABLE                         R6 K32 [{["Points"], ["Color3"], ["Thickness"] = 1}]
      276 SETTABLEKS                       R2 R6 K30 ["Points"]
      278 GETUPVAL                         R7 1
      279 GETTABLEKS                       R7 R7 K6 ["Color3"]
      281 SETTABLEKS                       R7 R6 K6 ["Color3"]
      283 CALL                             R4 2 1
      284 SETTABLEKS                       R4 R0 K34 ["OutlineBottomCurve"]
      286 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NEWTABLE                         R3 0 4
       14 GETTABLEKS                       R4 R0 K1 ["Keypoints"]
       16 GETTABLEKS                       R5 R0 K2 ["Color3"]
       18 GETTABLEKS                       R6 R0 K3 ["OutlineThickness"]
       20 GETTABLEKS                       R7 R0 K4 ["ScanLines"]
       22 SETLIST                          R3 R4 4 [1]
       24 CALL                             R1 2 1
       25 GETUPVAL                         R2 5
       26 GETUPVAL                         R3 8
       27 DUPTABLE                         R4 K8 [{["tag"] = "size-full", ["ZIndex"]}]
       28 GETTABLEKS                       R5 R0 K7 ["ZIndex"]
       30 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       32 MOVE                             R5 R1
       33 CALL                             R2 3 -1
       34 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Graphing"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["PropertyEntries"]
       25 GETTABLEKS                       R5 R5 K11 ["PropertyView"]
       27 GETTABLEKS                       R5 R5 K12 ["NumberSequencePropertyView"]
       29 GETTABLEKS                       R5 R5 K13 ["NumberSequenceUtil"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K14 ["React"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K15 ["Flags"]
       41 GETTABLEKS                       R7 R7 K16 ["getFFlagPropertiesNumberSequenceEnvelopeScanLines"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R3 K17 ["Curve"]
       46 GETTABLEKS                       R8 R3 K18 ["Panel"]
       48 GETTABLEKS                       R9 R2 K19 ["View"]
       50 GETTABLEKS                       R10 R5 K20 ["createElement"]
       52 DUPCLOSURE                       R11 K21 [PROTO_0]
       53 DUPCLOSURE                       R12 K22 [PROTO_1]
       54 CAPTURE                          VAL R10
       55 CAPTURE                          VAL R7
       56 DUPCLOSURE                       R13 K23 [PROTO_3]
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R12
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R9
       66 RETURN                           R13 1
