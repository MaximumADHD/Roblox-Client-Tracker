PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["curveAnimComputedFrames"]
        2 GETTABLEKS                       R3 R2 K1 ["animFrames"]
        4 GETTABLEKS                       R4 R2 K2 ["animLength"]
        6 GETUPVAL                         R6 0
        7 CALL                             R6 0 1
        8 DIVRK                            R5 K3 [1] R6
        9 GETUPVAL                         R6 1
       10 CALL                             R6 0 1
       11 JUMPIFNOT                        R6 ; [+117]
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R6 R6 K4 ["asNumber"]
       15 CALL                             R6 0 1
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R7 R7 K4 ["asNumber"]
       19 CALL                             R7 0 1
       20 MOVE                             R8 R3
       21 LOADNIL                          R9
       22 LOADNIL                          R10
       23 FORGPREP                         R8
       24 MOVE                             R13 R12
       25 LOADNIL                          R14
       26 LOADNIL                          R15
       27 FORGPREP                         R13
       28 GETTABLEKS                       R18 R17 K5 ["Position"]
       30 GETTABLEKS                       R18 R18 K6 ["Y"]
       32 JUMPIFNOTLT                      R18 R6 ; [+43]
       34 GETUPVAL                         R20 4
       35 GETTABLEKS                       R20 R20 K7 ["Keys"]
       37 GETTABLEKS                       R20 R20 K8 ["CurveAnim_PartTooLow"]
       39 DUPTABLE                         R21 K13 [{"time", "bodyPart", "height", "minHeight"}]
       40 GETIMPORT                        R22 K16 [string.format]
       42 LOADK                            R23 K17 ["%.2f"]
       43 SUBK                             R27 R11 K3 [1]
       44 MUL                              R26 R27 R5
       45 FASTCALL2                        MATH_MIN R4 R26 ; [+4]
       47 MOVE                             R25 R4
       48 GETIMPORT                        R24 K20 [math.min]
       50 CALL                             R24 2 1
       51 CALL                             R22 2 1
       52 SETTABLEKS                       R22 R21 K9 ["time"]
       54 SETTABLEKS                       R16 R21 K10 ["bodyPart"]
       56 GETIMPORT                        R22 K16 [string.format]
       58 LOADK                            R23 K17 ["%.2f"]
       59 GETTABLEKS                       R24 R17 K5 ["Position"]
       61 GETTABLEKS                       R24 R24 K6 ["Y"]
       63 CALL                             R22 2 1
       64 SETTABLEKS                       R22 R21 K11 ["height"]
       66 GETUPVAL                         R22 2
       67 GETTABLEKS                       R22 R22 K21 ["asString"]
       69 CALL                             R22 0 1
       70 SETTABLEKS                       R22 R21 K12 ["minHeight"]
       72 NAMECALL                         R18 R0 K22 ["fail"]
       74 CALL                             R18 3 0
       75 RETURN                           R0 0
       76 GETTABLEKS                       R18 R17 K5 ["Position"]
       78 GETTABLEKS                       R18 R18 K23 ["Magnitude"]
       80 JUMPIFNOTLT                      R7 R18 ; [+43]
       82 GETUPVAL                         R20 4
       83 GETTABLEKS                       R20 R20 K7 ["Keys"]
       85 GETTABLEKS                       R20 R20 K24 ["CurveAnim_PartTooFar"]
       87 DUPTABLE                         R21 K27 [{"time", "bodyPart", "distance", "maxDistance"}]
       88 GETIMPORT                        R22 K16 [string.format]
       90 LOADK                            R23 K17 ["%.2f"]
       91 SUBK                             R27 R11 K3 [1]
       92 MUL                              R26 R27 R5
       93 FASTCALL2                        MATH_MIN R4 R26 ; [+4]
       95 MOVE                             R25 R4
       96 GETIMPORT                        R24 K20 [math.min]
       98 CALL                             R24 2 1
       99 CALL                             R22 2 1
      100 SETTABLEKS                       R22 R21 K9 ["time"]
      102 SETTABLEKS                       R16 R21 K10 ["bodyPart"]
      104 GETIMPORT                        R22 K16 [string.format]
      106 LOADK                            R23 K17 ["%.2f"]
      107 GETTABLEKS                       R24 R17 K5 ["Position"]
      109 GETTABLEKS                       R24 R24 K23 ["Magnitude"]
      111 CALL                             R22 2 1
      112 SETTABLEKS                       R22 R21 K25 ["distance"]
      114 GETUPVAL                         R22 3
      115 GETTABLEKS                       R22 R22 K21 ["asString"]
      117 CALL                             R22 0 1
      118 SETTABLEKS                       R22 R21 K26 ["maxDistance"]
      120 NAMECALL                         R18 R0 K22 ["fail"]
      122 CALL                             R18 3 0
      123 RETURN                           R0 0
      124 FORGLOOP                         R13 2 ; [-97]
      126 FORGLOOP                         R8 2 ; [-103]
      128 RETURN                           R0 0
      129 LOADK                            R6 K28 [∞]
      130 LOADN                            R7 0
      131 MOVE                             R8 R3
      132 LOADNIL                          R9
      133 LOADNIL                          R10
      134 FORGPREP                         R8
      135 MOVE                             R13 R12
      136 LOADNIL                          R14
      137 LOADNIL                          R15
      138 FORGPREP                         R13
      139 GETTABLEKS                       R20 R17 K5 ["Position"]
      141 GETTABLEKS                       R20 R20 K23 ["Magnitude"]
      143 FASTCALL2                        MATH_MAX R7 R20 ; [+4]
      145 MOVE                             R19 R7
      146 GETIMPORT                        R18 K30 [math.max]
      148 CALL                             R18 2 1
      149 MOVE                             R7 R18
      150 GETTABLEKS                       R20 R17 K5 ["Position"]
      152 GETTABLEKS                       R20 R20 K6 ["Y"]
      154 FASTCALL2                        MATH_MIN R6 R20 ; [+4]
      156 MOVE                             R19 R6
      157 GETIMPORT                        R18 K20 [math.min]
      159 CALL                             R18 2 1
      160 MOVE                             R6 R18
      161 FORGLOOP                         R13 2 ; [-23]
      163 FORGLOOP                         R8 2 ; [-29]
      165 GETUPVAL                         R8 2
      166 GETTABLEKS                       R8 R8 K4 ["asNumber"]
      168 CALL                             R8 0 1
      169 JUMPIFNOTLT                      R6 R8 ; [+22]
      171 GETUPVAL                         R10 4
      172 GETTABLEKS                       R10 R10 K7 ["Keys"]
      174 GETTABLEKS                       R10 R10 K31 ["CurveAnim_BoundsExceeded"]
      176 DUPTABLE                         R11 K32 [{"minHeight", "maxDistance"}]
      177 GETUPVAL                         R12 2
      178 GETTABLEKS                       R12 R12 K21 ["asString"]
      180 CALL                             R12 0 1
      181 SETTABLEKS                       R12 R11 K12 ["minHeight"]
      183 GETUPVAL                         R12 3
      184 GETTABLEKS                       R12 R12 K21 ["asString"]
      186 CALL                             R12 0 1
      187 SETTABLEKS                       R12 R11 K26 ["maxDistance"]
      189 NAMECALL                         R8 R0 K22 ["fail"]
      191 CALL                             R8 3 0
      192 GETUPVAL                         R8 3
      193 GETTABLEKS                       R8 R8 K4 ["asNumber"]
      195 CALL                             R8 0 1
      196 JUMPIFNOTLT                      R8 R7 ; [+22]
      198 GETUPVAL                         R10 4
      199 GETTABLEKS                       R10 R10 K7 ["Keys"]
      201 GETTABLEKS                       R10 R10 K31 ["CurveAnim_BoundsExceeded"]
      203 DUPTABLE                         R11 K32 [{"minHeight", "maxDistance"}]
      204 GETUPVAL                         R12 2
      205 GETTABLEKS                       R12 R12 K21 ["asString"]
      207 CALL                             R12 0 1
      208 SETTABLEKS                       R12 R11 K12 ["minHeight"]
      210 GETUPVAL                         R12 3
      211 GETTABLEKS                       R12 R12 K21 ["asString"]
      213 CALL                             R12 0 1
      214 SETTABLEKS                       R12 R11 K26 ["maxDistance"]
      216 NAMECALL                         R8 R0 K22 ["fail"]
      218 CALL                             R8 3 0
      219 RETURN                           R0 0

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
       41 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateCurveAnimTimeErrorMessageFix"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K10 ["flags"]
       48 GETTABLEKS                       R7 R7 K13 ["GetFStringUGCValidateAnimationHeightTol"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K10 ["flags"]
       55 GETTABLEKS                       R8 R8 K14 ["GetFStringUGCValidationMaxAnimationBounds"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K10 ["flags"]
       62 GETTABLEKS                       R9 R9 K15 ["getFIntUGCValidateMaxAnimationFPS"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K10 ["flags"]
       69 GETTABLEKS                       R10 R10 K16 ["getFFlagUGCValidationAnimationPackSupport"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 8 0
       74 NEWTABLE                         R11 0 1
       76 GETTABLEKS                       R12 R2 K17 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K18 ["EMOTE_ANIMATION"]
       80 SETLIST                          R11 R12 1 [1]
       82 SETTABLEKS                       R11 R10 K19 ["categories"]
       84 MOVE                             R11 R9
       85 CALL                             R11 0 1
       86 JUMPIFNOT                        R11 ; [+11]
       87 GETTABLEKS                       R12 R10 K19 ["categories"]
       89 GETTABLEKS                       R13 R2 K17 ["UploadCategory"]
       91 GETTABLEKS                       R13 R13 K20 ["ANIMATION"]
       93 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
       95 GETIMPORT                        R11 K23 [table.insert]
       97 CALL                             R11 2 0
       98 NEWTABLE                         R11 0 2
      100 GETTABLEKS                       R12 R2 K24 ["SharedDataMember"]
      102 GETTABLEKS                       R12 R12 K25 ["curveAnimations"]
      104 GETTABLEKS                       R13 R2 K24 ["SharedDataMember"]
      106 GETTABLEKS                       R13 R13 K26 ["curveAnimComputedFrames"]
      108 SETLIST                          R11 R12 2 [1]
      110 SETTABLEKS                       R11 R10 K27 ["requiredData"]
      112 SETTABLEKS                       R4 R10 K28 ["fflag"]
      114 NEWTABLE                         R11 0 0
      116 SETTABLEKS                       R11 R10 K29 ["expectedFailures"]
      118 NEWTABLE                         R11 0 1
      120 GETTABLEKS                       R12 R2 K30 ["ValidationModule"]
      122 GETTABLEKS                       R12 R12 K31 ["CurveAnimDataAvailable"]
      124 SETLIST                          R11 R12 1 [1]
      126 SETTABLEKS                       R11 R10 K32 ["prereqTests"]
      128 DUPCLOSURE                       R11 K33 [PROTO_0]
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R3
      134 SETTABLEKS                       R11 R10 K34 ["run"]
      136 RETURN                           R10 1
