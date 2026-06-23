PROTO_0:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["isInRange"]
        3 MOVE                             R7 R3
        4 MOVE                             R8 R4
        5 MOVE                             R9 R5
        6 CALL                             R6 3 1
        7 JUMPIF                           R6 ; [+28]
        8 GETUPVAL                         R8 1
        9 GETTABLEKS                       R8 R8 K1 ["Keys"]
       11 GETTABLEKS                       R8 R8 K2 ["HrdProperties_PropertyOutOfRange"]
       13 DUPTABLE                         R9 K8 [{"jointName", "propertyName", "currentValue", "valueMin", "valueMax"}]
       14 SETTABLEKS                       R1 R9 K3 ["jointName"]
       16 SETTABLEKS                       R2 R9 K4 ["propertyName"]
       18 GETUPVAL                         R10 2
       19 MOVE                             R11 R3
       20 CALL                             R10 1 1
       21 SETTABLEKS                       R10 R9 K5 ["currentValue"]
       23 GETUPVAL                         R10 2
       24 MOVE                             R11 R4
       25 CALL                             R10 1 1
       26 SETTABLEKS                       R10 R9 K6 ["valueMin"]
       28 GETUPVAL                         R10 2
       29 MOVE                             R11 R5
       30 CALL                             R10 1 1
       31 SETTABLEKS                       R10 R9 K7 ["valueMax"]
       33 NAMECALL                         R6 R0 K9 ["fail"]
       35 CALL                             R6 3 0
       36 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R5 0
        1 JUMPIFLT                         R3 R5 ; [+3]
        3 JUMPIFNOTLT                      R4 R3 ; [+27]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["Keys"]
        8 GETTABLEKS                       R7 R7 K1 ["HrdProperties_PropertyOutOfRange"]
       10 DUPTABLE                         R8 K7 [{"jointName", "propertyName", "currentValue", "valueMin", "valueMax"}]
       11 SETTABLEKS                       R1 R8 K2 ["jointName"]
       13 SETTABLEKS                       R2 R8 K3 ["propertyName"]
       15 GETUPVAL                         R9 1
       16 MOVE                             R10 R3
       17 CALL                             R9 1 1
       18 SETTABLEKS                       R9 R8 K4 ["currentValue"]
       20 LOADK                            R9 K8 ["0"]
       21 SETTABLEKS                       R9 R8 K5 ["valueMin"]
       23 GETUPVAL                         R9 1
       24 MOVE                             R10 R4
       25 CALL                             R9 1 1
       26 SETTABLEKS                       R9 R8 K6 ["valueMax"]
       28 NAMECALL                         R5 R0 K9 ["fail"]
       30 CALL                             R5 3 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R2
        4 LOADK                            R5 K1 ["MeshPart"]
        5 CALL                             R3 2 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K2 ["HumanoidRigDescription"]
        8 NAMECALL                         R8 R7 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R8 2 1
       11 GETUPVAL                         R10 1
       12 GETTABLEKS                       R10 R10 K4 ["rigAttachmentToParentMap"]
       14 GETTABLEKS                       R11 R7 K5 ["Name"]
       16 GETTABLE                         R9 R10 R11
       17 JUMPIFEQKNIL                     R8 ; [+389]
       19 GETUPVAL                         R10 2
       20 CALL                             R10 0 1
       21 JUMPIFNOT                        R10 ; [+4]
       22 MOVE                             R12 R8
       23 NAMECALL                         R10 R0 K6 ["setReportingInstance"]
       25 CALL                             R10 2 0
       26 GETTABLEKS                       R10 R8 K7 ["OriginOffset"]
       28 GETTABLEKS                       R11 R7 K5 ["Name"]
       30 JUMPIFNOTEQKS                    R11 K8 ["LowerTorso"] ; [+39]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R11 R11 K9 ["fuzzyEq"]
       35 GETTABLEKS                       R12 R10 K10 ["Rotation"]
       37 GETIMPORT                        R13 K13 [CFrame.identity]
       39 CALL                             R11 2 1
       40 JUMPIFNOT                        R11 ; [+9]
       41 GETUPVAL                         R11 4
       42 GETTABLEKS                       R11 R11 K14 ["isInRange"]
       44 GETTABLEKS                       R12 R10 K15 ["Position"]
       46 GETUPVAL                         R13 5
       47 GETUPVAL                         R14 6
       48 CALL                             R11 3 1
       49 JUMPIF                           R11 ; [+44]
       50 GETUPVAL                         R13 7
       51 GETTABLEKS                       R13 R13 K16 ["Keys"]
       53 GETTABLEKS                       R13 R13 K17 ["HrdProperties_OriginOutsideBounds"]
       55 DUPTABLE                         R14 K20 [{"valueMin", "valueMax"}]
       56 GETUPVAL                         R15 8
       57 GETUPVAL                         R16 5
       58 CALL                             R15 1 1
       59 SETTABLEKS                       R15 R14 K18 ["valueMin"]
       61 GETUPVAL                         R15 8
       62 GETUPVAL                         R16 6
       63 CALL                             R15 1 1
       64 SETTABLEKS                       R15 R14 K19 ["valueMax"]
       66 NAMECALL                         R11 R0 K21 ["fail"]
       68 CALL                             R11 3 0
       69 JUMP                             ; [+24]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K9 ["fuzzyEq"]
       73 MOVE                             R12 R10
       74 GETIMPORT                        R13 K13 [CFrame.identity]
       76 CALL                             R11 2 1
       77 JUMPIF                           R11 ; [+16]
       78 GETUPVAL                         R13 7
       79 GETTABLEKS                       R13 R13 K16 ["Keys"]
       81 GETTABLEKS                       R13 R13 K22 ["HrdProperties_UncontainedJoint"]
       83 DUPTABLE                         R14 K25 [{"jointName", "foundMeshName"}]
       84 LOADK                            R15 K26 ["originOffset"]
       85 SETTABLEKS                       R15 R14 K23 ["jointName"]
       87 GETTABLEKS                       R15 R7 K5 ["Name"]
       89 SETTABLEKS                       R15 R14 K24 ["foundMeshName"]
       91 NAMECALL                         R11 R0 K21 ["fail"]
       93 CALL                             R11 3 0
       94 GETTABLEKS                       R13 R7 K5 ["Name"]
       96 NAMECALL                         R11 R8 K27 ["GetContainedJointLabels"]
       98 CALL                             R11 2 1
       99 GETUPVAL                         R12 9
      100 GETTABLEKS                       R12 R12 K28 ["getHrdJointLabels"]
      102 CALL                             R12 0 3
      103 FORGPREP                         R12
      104 LOADK                            R19 K29 ["%*RigAttachment"]
      105 GETTABLEKS                       R21 R16 K5 ["Name"]
      107 NAMECALL                         R19 R19 K30 ["format"]
      109 CALL                             R19 2 1
      110 MOVE                             R18 R19
      111 JUMPIFEQ                         R18 R9 ; [+2]
      113 LOADB                            R17 0 +1
      114 LOADB                            R17 1
      115 MOVE                             R20 R16
      116 NAMECALL                         R18 R8 K31 ["GetJoint"]
      118 CALL                             R18 2 1
      119 JUMPIFNOT                        R17 ; [+22]
      120 JUMPIFNOT                        R18 ; [+8]
      121 GETTABLEKS                       R19 R18 K5 ["Name"]
      123 JUMPIFNOTEQ                      R19 R9 ; [+5]
      125 GETTABLEKS                       R19 R18 K32 ["ClassName"]
      127 JUMPIFEQKS                       R19 K33 ["Attachment"] ; [+14]
      129 GETUPVAL                         R21 7
      130 GETTABLEKS                       R21 R21 K16 ["Keys"]
      132 GETTABLEKS                       R21 R21 K34 ["HrdMissingStandardJoint"]
      134 DUPTABLE                         R22 K35 [{"jointName"}]
      135 GETTABLEKS                       R23 R16 K5 ["Name"]
      137 SETTABLEKS                       R23 R22 K23 ["jointName"]
      139 NAMECALL                         R19 R0 K21 ["fail"]
      141 CALL                             R19 3 0
      142 JUMPIF                           R18 ; [+1]
      143 JUMP                             ; [+110]
      144 GETIMPORT                        R19 K38 [table.find]
      146 MOVE                             R20 R11
      147 MOVE                             R21 R16
      148 CALL                             R19 2 1
      149 JUMPIF                           R19 ; [+18]
      150 GETUPVAL                         R21 7
      151 GETTABLEKS                       R21 R21 K16 ["Keys"]
      153 GETTABLEKS                       R21 R21 K22 ["HrdProperties_UncontainedJoint"]
      155 DUPTABLE                         R22 K25 [{"jointName", "foundMeshName"}]
      156 GETTABLEKS                       R23 R16 K5 ["Name"]
      158 SETTABLEKS                       R23 R22 K23 ["jointName"]
      160 GETTABLEKS                       R23 R7 K5 ["Name"]
      162 SETTABLEKS                       R23 R22 K24 ["foundMeshName"]
      164 NAMECALL                         R19 R0 K21 ["fail"]
      166 CALL                             R19 3 0
      167 JUMP                             ; [+86]
      168 JUMPIF                           R17 ; [+27]
      169 GETTABLEKS                       R19 R18 K5 ["Name"]
      171 GETTABLEKS                       R20 R16 K5 ["Name"]
      173 JUMPIFNOTEQ                      R19 R20 ; [+5]
      175 GETTABLEKS                       R19 R18 K32 ["ClassName"]
      177 JUMPIFEQKS                       R19 K39 ["Bone"] ; [+18]
      179 GETUPVAL                         R21 7
      180 GETTABLEKS                       R21 R21 K16 ["Keys"]
      182 GETTABLEKS                       R21 R21 K40 ["HrdImproperJointMapping"]
      184 DUPTABLE                         R22 K42 [{"jointName", "boneName"}]
      185 GETTABLEKS                       R23 R16 K5 ["Name"]
      187 SETTABLEKS                       R23 R22 K23 ["jointName"]
      189 GETTABLEKS                       R23 R16 K5 ["Name"]
      191 SETTABLEKS                       R23 R22 K41 ["boneName"]
      193 NAMECALL                         R19 R0 K21 ["fail"]
      195 CALL                             R19 3 0
      196 MOVE                             R21 R16
      197 NAMECALL                         R19 R8 K43 ["GetJointSize"]
      199 CALL                             R19 2 1
      200 MOVE                             R22 R16
      201 NAMECALL                         R20 R8 K44 ["GetJointRangeMin"]
      203 CALL                             R20 2 1
      204 MOVE                             R23 R16
      205 NAMECALL                         R21 R8 K45 ["GetJointRangeMax"]
      207 CALL                             R21 2 1
      208 GETUPVAL                         R22 10
      209 MOVE                             R23 R0
      210 GETTABLEKS                       R24 R16 K5 ["Name"]
      212 LOADK                            R25 K46 ["size"]
      213 MOVE                             R26 R19
      214 GETUPVAL                         R27 11
      215 CALL                             R22 5 0
      216 GETUPVAL                         R22 12
      217 MOVE                             R23 R0
      218 GETTABLEKS                       R24 R16 K5 ["Name"]
      220 LOADK                            R25 K47 ["rangeMin"]
      221 MOVE                             R26 R20
      222 GETUPVAL                         R27 13
      223 GETUPVAL                         R28 14
      224 CALL                             R22 6 0
      225 GETUPVAL                         R22 12
      226 MOVE                             R23 R0
      227 GETTABLEKS                       R24 R16 K5 ["Name"]
      229 LOADK                            R25 K48 ["rangeMax"]
      230 MOVE                             R26 R21
      231 GETUPVAL                         R27 13
      232 GETUPVAL                         R28 14
      233 CALL                             R22 6 0
      234 GETUPVAL                         R22 4
      235 GETTABLEKS                       R22 R22 K49 ["isFirstLessOrEqual"]
      237 MOVE                             R23 R20
      238 MOVE                             R24 R21
      239 CALL                             R22 2 1
      240 JUMPIF                           R22 ; [+13]
      241 GETUPVAL                         R24 7
      242 GETTABLEKS                       R24 R24 K16 ["Keys"]
      244 GETTABLEKS                       R24 R24 K50 ["HrdProperties_MinAboveMax"]
      246 DUPTABLE                         R25 K35 [{"jointName"}]
      247 GETTABLEKS                       R26 R16 K5 ["Name"]
      249 SETTABLEKS                       R26 R25 K23 ["jointName"]
      251 NAMECALL                         R22 R0 K21 ["fail"]
      253 CALL                             R22 3 0
      254 FORGLOOP                         R12 2 ; [-151]
      256 LOADK                            R14 K51 ["DigitsRigDescription"]
      257 NAMECALL                         R12 R7 K3 ["FindFirstChildWhichIsA"]
      259 CALL                             R12 2 1
      260 JUMPIFEQKNIL                     R12 ; [+146]
      262 GETUPVAL                         R13 2
      263 CALL                             R13 0 1
      264 JUMPIFNOT                        R13 ; [+4]
      265 MOVE                             R15 R12
      266 NAMECALL                         R13 R0 K6 ["setReportingInstance"]
      268 CALL                             R13 2 0
      269 GETTABLEKS                       R13 R7 K5 ["Name"]
      271 JUMPIFNOTEQKS                    R13 K52 ["LeftHand"] ; [+7]
      273 GETTABLEKS                       R13 R12 K53 ["Side"]
      275 GETIMPORT                        R14 K57 [Enum.DigitsRigDescriptionSide.Left]
      277 JUMPIFEQ                         R13 R14 ; [+44]
      279 GETTABLEKS                       R13 R7 K5 ["Name"]
      281 JUMPIFNOTEQKS                    R13 K58 ["RightHand"] ; [+7]
      283 GETTABLEKS                       R13 R12 K53 ["Side"]
      285 GETIMPORT                        R14 K60 [Enum.DigitsRigDescriptionSide.Right]
      287 JUMPIFEQ                         R13 R14 ; [+34]
      289 LOADK                            R13 K61 ["None"]
      290 GETTABLEKS                       R14 R7 K5 ["Name"]
      292 JUMPIFNOTEQKS                    R14 K52 ["LeftHand"] ; [+3]
      294 LOADK                            R13 K56 ["Left"]
      295 JUMP                             ; [+5]
      296 GETTABLEKS                       R14 R7 K5 ["Name"]
      298 JUMPIFNOTEQKS                    R14 K58 ["RightHand"] ; [+2]
      300 LOADK                            R13 K59 ["Right"]
      301 GETUPVAL                         R16 7
      302 GETTABLEKS                       R16 R16 K16 ["Keys"]
      304 GETTABLEKS                       R16 R16 K62 ["HrdCheck_DrdInvalidSide"]
      306 DUPTABLE                         R17 K66 [{"partName", "expectedSide", "foundSide"}]
      307 GETTABLEKS                       R18 R7 K5 ["Name"]
      309 SETTABLEKS                       R18 R17 K63 ["partName"]
      311 SETTABLEKS                       R13 R17 K64 ["expectedSide"]
      313 GETTABLEKS                       R18 R12 K53 ["Side"]
      315 GETTABLEKS                       R18 R18 K5 ["Name"]
      317 SETTABLEKS                       R18 R17 K65 ["foundSide"]
      319 NAMECALL                         R14 R0 K21 ["fail"]
      321 CALL                             R14 3 0
      322 GETUPVAL                         R13 10
      323 MOVE                             R14 R0
      324 LOADK                            R15 K67 ["Index"]
      325 LOADK                            R16 K46 ["size"]
      326 GETTABLEKS                       R17 R12 K68 ["IndexSize"]
      328 GETUPVAL                         R18 15
      329 CALL                             R13 5 0
      330 GETUPVAL                         R13 10
      331 MOVE                             R14 R0
      332 LOADK                            R15 K69 ["Thumb"]
      333 LOADK                            R16 K46 ["size"]
      334 GETTABLEKS                       R17 R12 K70 ["ThumbSize"]
      336 GETUPVAL                         R18 15
      337 CALL                             R13 5 0
      338 GETUPVAL                         R13 10
      339 MOVE                             R14 R0
      340 LOADK                            R15 K71 ["Middle"]
      341 LOADK                            R16 K46 ["size"]
      342 GETTABLEKS                       R17 R12 K72 ["MiddleSize"]
      344 GETUPVAL                         R18 15
      345 CALL                             R13 5 0
      346 GETUPVAL                         R13 10
      347 MOVE                             R14 R0
      348 LOADK                            R15 K73 ["Pinky"]
      349 LOADK                            R16 K46 ["size"]
      350 GETTABLEKS                       R17 R12 K74 ["PinkySize"]
      352 GETUPVAL                         R18 15
      353 CALL                             R13 5 0
      354 GETUPVAL                         R13 10
      355 MOVE                             R14 R0
      356 LOADK                            R15 K75 ["Ring"]
      357 LOADK                            R16 K46 ["size"]
      358 GETTABLEKS                       R17 R12 K76 ["RingSize"]
      360 GETUPVAL                         R18 15
      361 CALL                             R13 5 0
      362 GETUPVAL                         R13 12
      363 MOVE                             R14 R0
      364 LOADK                            R15 K67 ["Index"]
      365 LOADK                            R16 K77 ["range"]
      366 GETTABLEKS                       R17 R12 K78 ["IndexRange"]
      368 GETUPVAL                         R18 16
      369 GETUPVAL                         R19 17
      370 CALL                             R13 6 0
      371 GETUPVAL                         R13 12
      372 MOVE                             R14 R0
      373 LOADK                            R15 K69 ["Thumb"]
      374 LOADK                            R16 K77 ["range"]
      375 GETTABLEKS                       R17 R12 K79 ["ThumbRange"]
      377 GETUPVAL                         R18 16
      378 GETUPVAL                         R19 17
      379 CALL                             R13 6 0
      380 GETUPVAL                         R13 12
      381 MOVE                             R14 R0
      382 LOADK                            R15 K73 ["Pinky"]
      383 LOADK                            R16 K77 ["range"]
      384 GETTABLEKS                       R17 R12 K80 ["PinkyRange"]
      386 GETUPVAL                         R18 16
      387 GETUPVAL                         R19 17
      388 CALL                             R13 6 0
      389 GETUPVAL                         R13 12
      390 MOVE                             R14 R0
      391 LOADK                            R15 K75 ["Ring"]
      392 LOADK                            R16 K77 ["range"]
      393 GETTABLEKS                       R17 R12 K81 ["RingRange"]
      395 GETUPVAL                         R18 16
      396 GETUPVAL                         R19 17
      397 CALL                             R13 6 0
      398 GETUPVAL                         R13 12
      399 MOVE                             R14 R0
      400 LOADK                            R15 K71 ["Middle"]
      401 LOADK                            R16 K77 ["range"]
      402 GETTABLEKS                       R17 R12 K82 ["MiddleRange"]
      404 GETUPVAL                         R18 16
      405 GETUPVAL                         R19 17
      406 CALL                             R13 6 0
      407 FORGLOOP                         R3 2 ; [-401]
      409 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K12 ["ValidationRulesUtil"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K13 ["getAllInstancesIsA"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K14 ["R15plusUtils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K15 ["Vector3Utils"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["util"]
       69 GETTABLEKS                       R10 R10 K16 ["valueToString"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K4 [require]
       74 GETTABLEKS                       R11 R0 K5 ["util"]
       76 GETTABLEKS                       R11 R11 K17 ["CFrameUtils"]
       78 CALL                             R10 1 1
       79 NEWTABLE                         R11 4 0
       81 NEWTABLE                         R12 0 2
       83 GETTABLEKS                       R13 R2 K18 ["UploadCategory"]
       85 GETTABLEKS                       R13 R13 K19 ["TORSO_AND_LIMBS"]
       87 GETTABLEKS                       R14 R2 K18 ["UploadCategory"]
       89 GETTABLEKS                       R14 R14 K20 ["DYNAMIC_HEAD"]
       91 SETLIST                          R12 R13 2 [1]
       93 SETTABLEKS                       R12 R11 K21 ["categories"]
       95 NEWTABLE                         R12 0 1
       97 GETTABLEKS                       R13 R2 K22 ["SharedDataMember"]
       99 GETTABLEKS                       R13 R13 K23 ["rootInstance"]
      101 SETLIST                          R12 R13 1 [1]
      103 SETTABLEKS                       R12 R11 K24 ["requiredData"]
      105 GETTABLEKS                       R12 R7 K25 ["checkFlagEnabledForAllowHrd"]
      107 SETTABLEKS                       R12 R11 K26 ["fflag"]
      109 GETIMPORT                        R13 K29 [game]
      111 LOADK                            R15 K30 ["UGCValidationHrdJointSizeHundredthsLimit"]
      112 LOADN                            R16 150
      113 NAMECALL                         R13 R13 K31 ["DefineFastInt"]
      115 CALL                             R13 3 1
      116 DIVK                             R12 R13 K27 [100]
      117 GETIMPORT                        R13 K29 [game]
      119 LOADK                            R15 K32 ["UGCValidationHrdJointRangeMinXHundredths"]
      120 LOADN                            R16 0
      121 NAMECALL                         R13 R13 K31 ["DefineFastInt"]
      123 CALL                             R13 3 1
      124 GETIMPORT                        R14 K29 [game]
      126 LOADK                            R16 K33 ["UGCValidationHrdJointRangeMaxXHundredths"]
      127 LOADN                            R17 0
      128 NAMECALL                         R14 R14 K31 ["DefineFastInt"]
      130 CALL                             R14 3 1
      131 GETIMPORT                        R15 K29 [game]
      133 LOADK                            R17 K34 ["UGCValidationHrdJointRangeMinYHundredths"]
      134 LOADN                            R18 0
      135 NAMECALL                         R15 R15 K31 ["DefineFastInt"]
      137 CALL                             R15 3 1
      138 GETIMPORT                        R16 K29 [game]
      140 LOADK                            R18 K35 ["UGCValidationHrdJointRangeMaxYHundredths"]
      141 LOADN                            R19 0
      142 NAMECALL                         R16 R16 K31 ["DefineFastInt"]
      144 CALL                             R16 3 1
      145 GETIMPORT                        R17 K29 [game]
      147 LOADK                            R19 K36 ["UGCValidationHrdJointRangeMinZHundredths"]
      148 LOADN                            R20 0
      149 NAMECALL                         R17 R17 K31 ["DefineFastInt"]
      151 CALL                             R17 3 1
      152 GETIMPORT                        R18 K29 [game]
      154 LOADK                            R20 K37 ["UGCValidationHrdJointRangeMaxZHundredths"]
      155 LOADN                            R21 0
      156 NAMECALL                         R18 R18 K31 ["DefineFastInt"]
      158 CALL                             R18 3 1
      159 GETIMPORT                        R19 K29 [game]
      161 LOADK                            R21 K38 ["UGCValidationHrdOriginOffsetMinYHundredths"]
      162 LOADN                            R22 12
      163 NAMECALL                         R19 R19 K31 ["DefineFastInt"]
      165 CALL                             R19 3 1
      166 GETIMPORT                        R20 K29 [game]
      168 LOADK                            R22 K39 ["UGCValidationHrdOriginOffsetMaxYHundredths"]
      169 LOADN                            R23 244
      170 NAMECALL                         R20 R20 K31 ["DefineFastInt"]
      172 CALL                             R20 3 1
      173 DIVK                             R22 R13 K27 [100]
      174 DIVK                             R23 R15 K27 [100]
      175 DIVK                             R24 R17 K27 [100]
      176 FASTCALL                         VECTOR ; [+2]
      177 GETIMPORT                        R21 K42 [Vector3.new]
      179 CALL                             R21 3 1
      180 DIVK                             R23 R14 K27 [100]
      181 DIVK                             R24 R16 K27 [100]
      182 DIVK                             R25 R18 K27 [100]
      183 FASTCALL                         VECTOR ; [+2]
      184 GETIMPORT                        R22 K42 [Vector3.new]
      186 CALL                             R22 3 1
      187 LOADN                            R24 0
      188 DIVK                             R25 R19 K27 [100]
      189 LOADN                            R26 0
      190 FASTCALL                         VECTOR ; [+2]
      191 GETIMPORT                        R23 K42 [Vector3.new]
      193 CALL                             R23 3 1
      194 LOADN                            R25 0
      195 DIVK                             R26 R20 K27 [100]
      196 LOADN                            R27 0
      197 FASTCALL                         VECTOR ; [+2]
      198 GETIMPORT                        R24 K42 [Vector3.new]
      200 CALL                             R24 3 1
      201 GETIMPORT                        R26 K29 [game]
      203 LOADK                            R28 K43 ["UGCValidationDrdJointSizeHundredthsLimit"]
      204 LOADN                            R29 150
      205 NAMECALL                         R26 R26 K31 ["DefineFastInt"]
      207 CALL                             R26 3 1
      208 DIVK                             R25 R26 K27 [100]
      209 GETIMPORT                        R26 K29 [game]
      211 LOADK                            R28 K44 ["UGCValidationDrdJointRangeMinXHundredths"]
      212 LOADN                            R29 0
      213 NAMECALL                         R26 R26 K31 ["DefineFastInt"]
      215 CALL                             R26 3 1
      216 GETIMPORT                        R27 K29 [game]
      218 LOADK                            R29 K45 ["UGCValidationDrdJointRangeMaxXHundredths"]
      219 LOADN                            R30 0
      220 NAMECALL                         R27 R27 K31 ["DefineFastInt"]
      222 CALL                             R27 3 1
      223 GETIMPORT                        R28 K29 [game]
      225 LOADK                            R30 K46 ["UGCValidationDrdJointRangeMinYHundredths"]
      226 LOADN                            R31 0
      227 NAMECALL                         R28 R28 K31 ["DefineFastInt"]
      229 CALL                             R28 3 1
      230 GETIMPORT                        R29 K29 [game]
      232 LOADK                            R31 K47 ["UGCValidationDrdJointRangeMaxYHundredths"]
      233 LOADN                            R32 0
      234 NAMECALL                         R29 R29 K31 ["DefineFastInt"]
      236 CALL                             R29 3 1
      237 GETIMPORT                        R30 K29 [game]
      239 LOADK                            R32 K48 ["UGCValidationDrdJointRangeMinZHundredths"]
      240 LOADN                            R33 0
      241 NAMECALL                         R30 R30 K31 ["DefineFastInt"]
      243 CALL                             R30 3 1
      244 GETIMPORT                        R31 K29 [game]
      246 LOADK                            R33 K49 ["UGCValidationDrdJointRangeMaxZHundredths"]
      247 LOADN                            R34 0
      248 NAMECALL                         R31 R31 K31 ["DefineFastInt"]
      250 CALL                             R31 3 1
      251 DIVK                             R33 R26 K27 [100]
      252 DIVK                             R34 R28 K27 [100]
      253 DIVK                             R35 R30 K27 [100]
      254 FASTCALL                         VECTOR ; [+2]
      255 GETIMPORT                        R32 K42 [Vector3.new]
      257 CALL                             R32 3 1
      258 DIVK                             R34 R27 K27 [100]
      259 DIVK                             R35 R29 K27 [100]
      260 DIVK                             R36 R31 K27 [100]
      261 FASTCALL                         VECTOR ; [+2]
      262 GETIMPORT                        R33 K42 [Vector3.new]
      264 CALL                             R33 3 1
      265 DUPCLOSURE                       R34 K50 [PROTO_0]
      266 CAPTURE                          VAL R8
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R9
      269 DUPCLOSURE                       R35 K51 [PROTO_1]
      270 CAPTURE                          VAL R3
      271 CAPTURE                          VAL R9
      272 DUPCLOSURE                       R36 K52 [PROTO_2]
      273 CAPTURE                          VAL R6
      274 CAPTURE                          VAL R5
      275 CAPTURE                          VAL R4
      276 CAPTURE                          VAL R10
      277 CAPTURE                          VAL R8
      278 CAPTURE                          VAL R23
      279 CAPTURE                          VAL R24
      280 CAPTURE                          VAL R3
      281 CAPTURE                          VAL R9
      282 CAPTURE                          VAL R7
      283 CAPTURE                          VAL R35
      284 CAPTURE                          VAL R12
      285 CAPTURE                          VAL R34
      286 CAPTURE                          VAL R21
      287 CAPTURE                          VAL R22
      288 CAPTURE                          VAL R25
      289 CAPTURE                          VAL R32
      290 CAPTURE                          VAL R33
      291 SETTABLEKS                       R36 R11 K53 ["run"]
      293 RETURN                           R11 1
