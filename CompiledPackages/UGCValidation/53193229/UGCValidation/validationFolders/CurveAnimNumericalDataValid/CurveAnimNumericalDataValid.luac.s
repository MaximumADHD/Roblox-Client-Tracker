PROTO_0:
        0 JUMPIFNOTEQ                      R0 R0 ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 1
        1 JUMPIFEQKN                       R0 K0 [∞] ; [+5]
        3 JUMPIFEQKN                       R0 K1 [-∞] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_2:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 NEWTABLE                         R2 0 0
        5 GETVARARGS                       R5 -1
        6 SETLIST                          R2 R5 -1 [1]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 JUMPIFNOTEQ                      R6 R6 ; [+2]
       13 LOADB                            R7 0 +1
       14 LOADB                            R7 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 LOADB                            R7 0
       17 RETURN                           R7 1
       18 LOADB                            R7 1
       19 JUMPIFEQKN                       R6 K2 [∞] ; [+5]
       21 JUMPIFEQKN                       R6 K3 [-∞] ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 JUMPIFNOT                        R7 ; [+2]
       26 LOADB                            R7 0
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 2 ; [-18]
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 DIVRK                            R2 R0 K3 ["ceil"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["asNumber"]
        6 CALL                             R4 0 1
        7 MUL                              R3 R2 R4
        8 DIVRK                            R4 R0 K3 ["ceil"]
        9 GETUPVAL                         R7 2
       10 GETTABLEKS                       R7 R7 K1 ["asNumber"]
       12 CALL                             R7 0 1
       13 MUL                              R6 R4 R7
       14 FASTCALL1                        MATH_CEIL R6 ; [+2]
       15 GETIMPORT                        R5 K4 [math.ceil]
       17 CALL                             R5 1 1
       18 GETTABLEKS                       R6 R1 K5 ["curveAnimations"]
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 NAMECALL                         R11 R10 K6 ["GetDescendants"]
       25 CALL                             R11 1 3
       26 FORGPREP                         R11
       27 LOADK                            R18 K7 ["MarkerCurve"]
       28 NAMECALL                         R16 R15 K8 ["IsA"]
       30 CALL                             R16 2 1
       31 JUMPIFNOT                        R16 ; [+103]
       32 NAMECALL                         R16 R15 K9 ["GetMarkers"]
       34 CALL                             R16 1 1
       35 GETUPVAL                         R17 3
       36 CALL                             R17 0 1
       37 JUMPIFNOT                        R17 ; [+36]
       38 GETUPVAL                         R18 4
       39 CALL                             R18 0 1
       40 FASTCALL2                        MATH_MIN R18 R5 ; [+4]
       42 MOVE                             R19 R5
       43 GETIMPORT                        R17 K11 [math.min]
       45 CALL                             R17 2 1
       46 LENGTH                           R18 R16
       47 JUMPIFNOTLT                      R17 R18 ; [+53]
       49 GETUPVAL                         R20 5
       50 GETTABLEKS                       R20 R20 K12 ["Keys"]
       52 GETTABLEKS                       R20 R20 K13 ["CurveAnim_TooManyMarkers"]
       54 DUPTABLE                         R21 K16 [{"count", "maxAllowed"}]
       55 LENGTH                           R23 R16
       56 FASTCALL1                        TOSTRING R23 ; [+2]
       57 GETIMPORT                        R22 K18 [tostring]
       59 CALL                             R22 1 1
       60 SETTABLEKS                       R22 R21 K14 ["count"]
       62 FASTCALL1                        TOSTRING R17 ; [+3]
       63 MOVE                             R23 R17
       64 GETIMPORT                        R22 K18 [tostring]
       66 CALL                             R22 1 1
       67 SETTABLEKS                       R22 R21 K15 ["maxAllowed"]
       69 NAMECALL                         R18 R0 K19 ["fail"]
       71 CALL                             R18 3 0
       72 RETURN                           R0 0
       73 JUMP                             ; [+27]
       74 LENGTH                           R17 R16
       75 JUMPIFNOTLT                      R5 R17 ; [+25]
       77 GETUPVAL                         R19 5
       78 GETTABLEKS                       R19 R19 K12 ["Keys"]
       80 GETTABLEKS                       R19 R19 K13 ["CurveAnim_TooManyMarkers"]
       82 DUPTABLE                         R20 K16 [{"count", "maxAllowed"}]
       83 LENGTH                           R22 R16
       84 FASTCALL1                        TOSTRING R22 ; [+2]
       85 GETIMPORT                        R21 K18 [tostring]
       87 CALL                             R21 1 1
       88 SETTABLEKS                       R21 R20 K14 ["count"]
       90 FASTCALL1                        TOSTRING R5 ; [+3]
       91 MOVE                             R22 R5
       92 GETIMPORT                        R21 K18 [tostring]
       94 CALL                             R21 1 1
       95 SETTABLEKS                       R21 R20 K15 ["maxAllowed"]
       97 NAMECALL                         R17 R0 K19 ["fail"]
       99 CALL                             R17 3 0
      100 RETURN                           R0 0
      101 MOVE                             R17 R16
      102 LOADNIL                          R18
      103 LOADNIL                          R19
      104 FORGPREP                         R17
      105 GETTABLEKS                       R22 R21 K20 ["Time"]
      107 JUMPIFNOT                        R22 ; [+15]
      108 GETUPVAL                         R22 6
      109 GETTABLEKS                       R23 R21 K20 ["Time"]
      111 CALL                             R22 1 1
      112 JUMPIFNOT                        R22 ; [+10]
      113 GETTABLEKS                       R22 R21 K21 ["Value"]
      115 JUMPIFNOT                        R22 ; [+7]
      116 GETTABLEKS                       R23 R21 K21 ["Value"]
      118 LENGTH                           R22 R23
      119 GETUPVAL                         R23 7
      120 CALL                             R23 0 1
      121 JUMPIFNOTLT                      R23 R22 ; [+10]
      123 GETUPVAL                         R24 5
      124 GETTABLEKS                       R24 R24 K12 ["Keys"]
      126 GETTABLEKS                       R24 R24 K22 ["CurveAnim_InvalidMarkerData"]
      128 NAMECALL                         R22 R0 K19 ["fail"]
      130 CALL                             R22 2 0
      131 RETURN                           R0 0
      132 FORGLOOP                         R17 2 ; [-28]
      134 JUMP                             ; [+156]
      135 LOADK                            R18 K23 ["FloatCurve"]
      136 NAMECALL                         R16 R15 K8 ["IsA"]
      138 CALL                             R16 2 1
      139 JUMPIFNOT                        R16 ; [+151]
      140 NAMECALL                         R16 R15 K24 ["GetKeys"]
      142 CALL                             R16 1 1
      143 LENGTH                           R17 R16
      144 JUMPIFNOTLT                      R5 R17 ; [+18]
      146 GETUPVAL                         R19 5
      147 GETTABLEKS                       R19 R19 K12 ["Keys"]
      149 GETTABLEKS                       R19 R19 K25 ["CurveAnim_TooManyKeys"]
      151 DUPTABLE                         R20 K26 [{"maxAllowed"}]
      152 FASTCALL1                        TOSTRING R5 ; [+3]
      153 MOVE                             R22 R5
      154 GETIMPORT                        R21 K18 [tostring]
      156 CALL                             R21 1 1
      157 SETTABLEKS                       R21 R20 K15 ["maxAllowed"]
      159 NAMECALL                         R17 R0 K19 ["fail"]
      161 CALL                             R17 3 0
      162 RETURN                           R0 0
      163 LOADNIL                          R17
      164 MOVE                             R18 R16
      165 LOADNIL                          R19
      166 LOADNIL                          R20
      167 FORGPREP                         R18
      168 GETTABLEKS                       R23 R22 K20 ["Time"]
      170 JUMPIFNOT                        R23 ; [+13]
      171 GETUPVAL                         R23 6
      172 GETTABLEKS                       R24 R22 K20 ["Time"]
      174 CALL                             R23 1 1
      175 JUMPIFNOT                        R23 ; [+8]
      176 GETTABLEKS                       R23 R22 K21 ["Value"]
      178 JUMPIFNOT                        R23 ; [+5]
      179 GETUPVAL                         R23 6
      180 GETTABLEKS                       R24 R22 K21 ["Value"]
      182 CALL                             R23 1 1
      183 JUMPIF                           R23 ; [+9]
      184 GETUPVAL                         R25 5
      185 GETTABLEKS                       R25 R25 K12 ["Keys"]
      187 GETTABLEKS                       R25 R25 K27 ["CurveAnim_InvalidCurveData"]
      189 NAMECALL                         R23 R0 K19 ["fail"]
      191 CALL                             R23 2 0
      192 RETURN                           R0 0
      193 JUMPIFNOT                        R17 ; [+51]
      194 ADD                              R23 R17 R3
      195 GETTABLEKS                       R24 R22 K20 ["Time"]
      197 JUMPIFNOTLT                      R24 R23 ; [+89]
      199 GETTABLEKS                       R25 R15 K28 ["Parent"]
      201 GETTABLEKS                       R25 R25 K28 ["Parent"]
      203 JUMPIFNOT                        R25 ; [+7]
      204 GETTABLEKS                       R24 R15 K28 ["Parent"]
      206 GETTABLEKS                       R24 R24 K28 ["Parent"]
      208 GETTABLEKS                       R24 R24 K29 ["Name"]
      210 JUMP                             ; [+1]
      211 LOADK                            R24 K30 ["-"]
      212 GETUPVAL                         R27 5
      213 GETTABLEKS                       R27 R27 K12 ["Keys"]
      215 GETTABLEKS                       R27 R27 K31 ["CurveAnim_KeysTooClose"]
      217 DUPTABLE                         R28 K34 [{"curvePath", "maxFPS"}]
      218 LOADK                            R30 K35 ["%*.%*.%*"]
      219 MOVE                             R32 R24
      220 GETTABLEKS                       R33 R15 K28 ["Parent"]
      222 GETTABLEKS                       R33 R33 K29 ["Name"]
      224 GETTABLEKS                       R34 R15 K29 ["Name"]
      226 NAMECALL                         R30 R30 K36 ["format"]
      228 CALL                             R30 4 1
      229 MOVE                             R29 R30
      230 SETTABLEKS                       R29 R28 K32 ["curvePath"]
      232 GETUPVAL                         R30 0
      233 CALL                             R30 0 -1
      234 FASTCALL                         TOSTRING ; [+2]
      235 GETIMPORT                        R29 K18 [tostring]
      237 CALL                             R29 -1 1
      238 SETTABLEKS                       R29 R28 K33 ["maxFPS"]
      240 NAMECALL                         R25 R0 K19 ["fail"]
      242 CALL                             R25 3 0
      243 RETURN                           R0 0
      244 JUMP                             ; [+42]
      245 GETTABLEKS                       R23 R22 K20 ["Time"]
      247 LOADN                            R24 0
      248 JUMPIFNOTLT                      R23 R24 ; [+38]
      250 GETTABLEKS                       R24 R15 K28 ["Parent"]
      252 GETTABLEKS                       R24 R24 K28 ["Parent"]
      254 JUMPIFNOT                        R24 ; [+7]
      255 GETTABLEKS                       R23 R15 K28 ["Parent"]
      257 GETTABLEKS                       R23 R23 K28 ["Parent"]
      259 GETTABLEKS                       R23 R23 K29 ["Name"]
      261 JUMP                             ; [+1]
      262 LOADK                            R23 K30 ["-"]
      263 GETUPVAL                         R26 5
      264 GETTABLEKS                       R26 R26 K12 ["Keys"]
      266 GETTABLEKS                       R26 R26 K37 ["CurveAnim_NegativeKeyTime"]
      268 DUPTABLE                         R27 K38 [{"curvePath"}]
      269 LOADK                            R29 K35 ["%*.%*.%*"]
      270 MOVE                             R31 R23
      271 GETTABLEKS                       R32 R15 K28 ["Parent"]
      273 GETTABLEKS                       R32 R32 K29 ["Name"]
      275 GETTABLEKS                       R33 R15 K29 ["Name"]
      277 NAMECALL                         R29 R29 K36 ["format"]
      279 CALL                             R29 4 1
      280 MOVE                             R28 R29
      281 SETTABLEKS                       R28 R27 K32 ["curvePath"]
      283 NAMECALL                         R24 R0 K19 ["fail"]
      285 CALL                             R24 3 0
      286 RETURN                           R0 0
      287 GETTABLEKS                       R17 R22 K20 ["Time"]
      289 FORGLOOP                         R18 2 ; [-122]
      291 FORGLOOP                         R11 2 ; [-265]
      293 FORGLOOP                         R6 2 ; [-271]
      295 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateCurveAnim"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K10 ["flags"]
       41 GETTABLEKS                       R6 R6 K12 ["GetFStringUGCValidationMaxAnimationLength"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidateFrameDeltaKeyTimeTol"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K10 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["getFIntUGCValidateMaxAnimationFPS"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K10 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFIntUGCValidateMaxMarkerCurveValueLength"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K10 ["flags"]
       69 GETTABLEKS                       R10 R10 K16 ["getFFlagUGCValidateRestrictNumMarkersInsideMarkerCurves"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K4 [require]
       74 GETTABLEKS                       R11 R0 K10 ["flags"]
       76 GETTABLEKS                       R11 R11 K17 ["getFIntUGCValidateMaxTotalInternalMarkers"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K4 [require]
       81 GETTABLEKS                       R12 R0 K10 ["flags"]
       83 GETTABLEKS                       R12 R12 K18 ["getFFlagUGCValidationAnimationPackSupport"]
       85 CALL                             R11 1 1
       86 NEWTABLE                         R12 8 0
       88 NEWTABLE                         R13 0 1
       90 GETTABLEKS                       R14 R2 K19 ["UploadCategory"]
       92 GETTABLEKS                       R14 R14 K20 ["EMOTE_ANIMATION"]
       94 SETLIST                          R13 R14 1 [1]
       96 SETTABLEKS                       R13 R12 K21 ["categories"]
       98 MOVE                             R13 R11
       99 CALL                             R13 0 1
      100 JUMPIFNOT                        R13 ; [+11]
      101 GETTABLEKS                       R14 R12 K21 ["categories"]
      103 GETTABLEKS                       R15 R2 K19 ["UploadCategory"]
      105 GETTABLEKS                       R15 R15 K22 ["ANIMATION"]
      107 FASTCALL2                        TABLE_INSERT R14 R15 ; [+3]
      109 GETIMPORT                        R13 K25 [table.insert]
      111 CALL                             R13 2 0
      112 NEWTABLE                         R13 0 1
      114 GETTABLEKS                       R14 R2 K26 ["SharedDataMember"]
      116 GETTABLEKS                       R14 R14 K27 ["curveAnimations"]
      118 SETLIST                          R13 R14 1 [1]
      120 SETTABLEKS                       R13 R12 K28 ["requiredData"]
      122 SETTABLEKS                       R4 R12 K29 ["fflag"]
      124 NEWTABLE                         R13 0 0
      126 SETTABLEKS                       R13 R12 K30 ["expectedFailures"]
      128 NEWTABLE                         R13 0 1
      130 GETTABLEKS                       R14 R2 K31 ["ValidationModule"]
      132 GETTABLEKS                       R14 R14 K32 ["CurveAnimDataAvailable"]
      134 SETLIST                          R13 R14 1 [1]
      136 SETTABLEKS                       R13 R12 K33 ["prereqTests"]
      138 DUPCLOSURE                       R13 K34 [PROTO_2]
      139 DUPCLOSURE                       R14 K35 [PROTO_3]
      140 CAPTURE                          VAL R7
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R10
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R8
      148 SETTABLEKS                       R14 R12 K36 ["run"]
      150 RETURN                           R12 1
