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
        3 JUMPIFNOTLT                      R4 R3 ; [+24]
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K0 ["Keys"]
        8 GETTABLEKS                       R7 R7 K1 ["HrdProperties_PropertyOutOfRange"]
       10 DUPTABLE                         R8 K8 [{["jointName"], ["propertyName"], ["currentValue"], ["valueMin"] = "0", ["valueMax"]}]
       11 SETTABLEKS                       R1 R8 K2 ["jointName"]
       13 SETTABLEKS                       R2 R8 K3 ["propertyName"]
       15 GETUPVAL                         R9 1
       16 MOVE                             R10 R3
       17 CALL                             R9 1 1
       18 SETTABLEKS                       R9 R8 K4 ["currentValue"]
       20 GETUPVAL                         R9 1
       21 MOVE                             R10 R4
       22 CALL                             R9 1 1
       23 SETTABLEKS                       R9 R8 K7 ["valueMax"]
       25 NAMECALL                         R5 R0 K9 ["fail"]
       27 CALL                             R5 3 0
       28 RETURN                           R0 0

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
       17 JUMPIFEQKNIL                     R8 ; [+386]
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
       49 JUMPIF                           R11 ; [+41]
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
       69 JUMP                             ; [+21]
       70 GETUPVAL                         R11 3
       71 GETTABLEKS                       R11 R11 K9 ["fuzzyEq"]
       73 MOVE                             R12 R10
       74 GETIMPORT                        R13 K13 [CFrame.identity]
       76 CALL                             R11 2 1
       77 JUMPIF                           R11 ; [+13]
       78 GETUPVAL                         R13 7
       79 GETTABLEKS                       R13 R13 K16 ["Keys"]
       81 GETTABLEKS                       R13 R13 K22 ["HrdProperties_UncontainedJoint"]
       83 DUPTABLE                         R14 K26 [{["jointName"] = "originOffset", ["foundMeshName"]}]
       84 GETTABLEKS                       R15 R7 K5 ["Name"]
       86 SETTABLEKS                       R15 R14 K25 ["foundMeshName"]
       88 NAMECALL                         R11 R0 K21 ["fail"]
       90 CALL                             R11 3 0
       91 GETTABLEKS                       R13 R7 K5 ["Name"]
       93 NAMECALL                         R11 R8 K27 ["GetContainedJointLabels"]
       95 CALL                             R11 2 1
       96 GETUPVAL                         R12 9
       97 GETTABLEKS                       R12 R12 K28 ["getHrdJointLabels"]
       99 CALL                             R12 0 3
      100 FORGPREP                         R12
      101 LOADK                            R19 K29 ["%*RigAttachment"]
      102 GETTABLEKS                       R21 R16 K5 ["Name"]
      104 NAMECALL                         R19 R19 K30 ["format"]
      106 CALL                             R19 2 1
      107 MOVE                             R18 R19
      108 JUMPIFEQ                         R18 R9 ; [+2]
      110 LOADB                            R17 0 +1
      111 LOADB                            R17 1
      112 MOVE                             R20 R16
      113 NAMECALL                         R18 R8 K31 ["GetJoint"]
      115 CALL                             R18 2 1
      116 JUMPIFNOT                        R17 ; [+22]
      117 JUMPIFNOT                        R18 ; [+8]
      118 GETTABLEKS                       R19 R18 K5 ["Name"]
      120 JUMPIFNOTEQ                      R19 R9 ; [+5]
      122 GETTABLEKS                       R19 R18 K32 ["ClassName"]
      124 JUMPIFEQKS                       R19 K33 ["Attachment"] ; [+14]
      126 GETUPVAL                         R21 7
      127 GETTABLEKS                       R21 R21 K16 ["Keys"]
      129 GETTABLEKS                       R21 R21 K34 ["HrdMissingStandardJoint"]
      131 DUPTABLE                         R22 K35 [{"jointName"}]
      132 GETTABLEKS                       R23 R16 K5 ["Name"]
      134 SETTABLEKS                       R23 R22 K23 ["jointName"]
      136 NAMECALL                         R19 R0 K21 ["fail"]
      138 CALL                             R19 3 0
      139 JUMPIF                           R18 ; [+1]
      140 JUMP                             ; [+110]
      141 GETIMPORT                        R19 K38 [table.find]
      143 MOVE                             R20 R11
      144 MOVE                             R21 R16
      145 CALL                             R19 2 1
      146 JUMPIF                           R19 ; [+18]
      147 GETUPVAL                         R21 7
      148 GETTABLEKS                       R21 R21 K16 ["Keys"]
      150 GETTABLEKS                       R21 R21 K22 ["HrdProperties_UncontainedJoint"]
      152 DUPTABLE                         R22 K39 [{"jointName", "foundMeshName"}]
      153 GETTABLEKS                       R23 R16 K5 ["Name"]
      155 SETTABLEKS                       R23 R22 K23 ["jointName"]
      157 GETTABLEKS                       R23 R7 K5 ["Name"]
      159 SETTABLEKS                       R23 R22 K25 ["foundMeshName"]
      161 NAMECALL                         R19 R0 K21 ["fail"]
      163 CALL                             R19 3 0
      164 JUMP                             ; [+86]
      165 JUMPIF                           R17 ; [+27]
      166 GETTABLEKS                       R19 R18 K5 ["Name"]
      168 GETTABLEKS                       R20 R16 K5 ["Name"]
      170 JUMPIFNOTEQ                      R19 R20 ; [+5]
      172 GETTABLEKS                       R19 R18 K32 ["ClassName"]
      174 JUMPIFEQKS                       R19 K40 ["Bone"] ; [+18]
      176 GETUPVAL                         R21 7
      177 GETTABLEKS                       R21 R21 K16 ["Keys"]
      179 GETTABLEKS                       R21 R21 K41 ["HrdImproperJointMapping"]
      181 DUPTABLE                         R22 K43 [{"jointName", "boneName"}]
      182 GETTABLEKS                       R23 R16 K5 ["Name"]
      184 SETTABLEKS                       R23 R22 K23 ["jointName"]
      186 GETTABLEKS                       R23 R16 K5 ["Name"]
      188 SETTABLEKS                       R23 R22 K42 ["boneName"]
      190 NAMECALL                         R19 R0 K21 ["fail"]
      192 CALL                             R19 3 0
      193 MOVE                             R21 R16
      194 NAMECALL                         R19 R8 K44 ["GetJointSize"]
      196 CALL                             R19 2 1
      197 MOVE                             R22 R16
      198 NAMECALL                         R20 R8 K45 ["GetJointRangeMin"]
      200 CALL                             R20 2 1
      201 MOVE                             R23 R16
      202 NAMECALL                         R21 R8 K46 ["GetJointRangeMax"]
      204 CALL                             R21 2 1
      205 GETUPVAL                         R22 10
      206 MOVE                             R23 R0
      207 GETTABLEKS                       R24 R16 K5 ["Name"]
      209 LOADK                            R25 K47 ["size"]
      210 MOVE                             R26 R19
      211 GETUPVAL                         R27 11
      212 CALL                             R22 5 0
      213 GETUPVAL                         R22 12
      214 MOVE                             R23 R0
      215 GETTABLEKS                       R24 R16 K5 ["Name"]
      217 LOADK                            R25 K48 ["rangeMin"]
      218 MOVE                             R26 R20
      219 GETUPVAL                         R27 13
      220 GETUPVAL                         R28 14
      221 CALL                             R22 6 0
      222 GETUPVAL                         R22 12
      223 MOVE                             R23 R0
      224 GETTABLEKS                       R24 R16 K5 ["Name"]
      226 LOADK                            R25 K49 ["rangeMax"]
      227 MOVE                             R26 R21
      228 GETUPVAL                         R27 13
      229 GETUPVAL                         R28 14
      230 CALL                             R22 6 0
      231 GETUPVAL                         R22 4
      232 GETTABLEKS                       R22 R22 K50 ["isFirstLessOrEqual"]
      234 MOVE                             R23 R20
      235 MOVE                             R24 R21
      236 CALL                             R22 2 1
      237 JUMPIF                           R22 ; [+13]
      238 GETUPVAL                         R24 7
      239 GETTABLEKS                       R24 R24 K16 ["Keys"]
      241 GETTABLEKS                       R24 R24 K51 ["HrdProperties_MinAboveMax"]
      243 DUPTABLE                         R25 K35 [{"jointName"}]
      244 GETTABLEKS                       R26 R16 K5 ["Name"]
      246 SETTABLEKS                       R26 R25 K23 ["jointName"]
      248 NAMECALL                         R22 R0 K21 ["fail"]
      250 CALL                             R22 3 0
      251 FORGLOOP                         R12 2 ; [-151]
      253 LOADK                            R14 K52 ["DigitsRigDescription"]
      254 NAMECALL                         R12 R7 K3 ["FindFirstChildWhichIsA"]
      256 CALL                             R12 2 1
      257 JUMPIFEQKNIL                     R12 ; [+146]
      259 GETUPVAL                         R13 2
      260 CALL                             R13 0 1
      261 JUMPIFNOT                        R13 ; [+4]
      262 MOVE                             R15 R12
      263 NAMECALL                         R13 R0 K6 ["setReportingInstance"]
      265 CALL                             R13 2 0
      266 GETTABLEKS                       R13 R7 K5 ["Name"]
      268 JUMPIFNOTEQKS                    R13 K53 ["LeftHand"] ; [+7]
      270 GETTABLEKS                       R13 R12 K54 ["Side"]
      272 GETIMPORT                        R14 K58 [Enum.DigitsRigDescriptionSide.Left]
      274 JUMPIFEQ                         R13 R14 ; [+44]
      276 GETTABLEKS                       R13 R7 K5 ["Name"]
      278 JUMPIFNOTEQKS                    R13 K59 ["RightHand"] ; [+7]
      280 GETTABLEKS                       R13 R12 K54 ["Side"]
      282 GETIMPORT                        R14 K61 [Enum.DigitsRigDescriptionSide.Right]
      284 JUMPIFEQ                         R13 R14 ; [+34]
      286 LOADK                            R13 K62 ["None"]
      287 GETTABLEKS                       R14 R7 K5 ["Name"]
      289 JUMPIFNOTEQKS                    R14 K53 ["LeftHand"] ; [+3]
      291 LOADK                            R13 K57 ["Left"]
      292 JUMP                             ; [+5]
      293 GETTABLEKS                       R14 R7 K5 ["Name"]
      295 JUMPIFNOTEQKS                    R14 K59 ["RightHand"] ; [+2]
      297 LOADK                            R13 K60 ["Right"]
      298 GETUPVAL                         R16 7
      299 GETTABLEKS                       R16 R16 K16 ["Keys"]
      301 GETTABLEKS                       R16 R16 K63 ["HrdCheck_DrdInvalidSide"]
      303 DUPTABLE                         R17 K67 [{"partName", "expectedSide", "foundSide"}]
      304 GETTABLEKS                       R18 R7 K5 ["Name"]
      306 SETTABLEKS                       R18 R17 K64 ["partName"]
      308 SETTABLEKS                       R13 R17 K65 ["expectedSide"]
      310 GETTABLEKS                       R18 R12 K54 ["Side"]
      312 GETTABLEKS                       R18 R18 K5 ["Name"]
      314 SETTABLEKS                       R18 R17 K66 ["foundSide"]
      316 NAMECALL                         R14 R0 K21 ["fail"]
      318 CALL                             R14 3 0
      319 GETUPVAL                         R13 10
      320 MOVE                             R14 R0
      321 LOADK                            R15 K68 ["Index"]
      322 LOADK                            R16 K47 ["size"]
      323 GETTABLEKS                       R17 R12 K69 ["IndexSize"]
      325 GETUPVAL                         R18 15
      326 CALL                             R13 5 0
      327 GETUPVAL                         R13 10
      328 MOVE                             R14 R0
      329 LOADK                            R15 K70 ["Thumb"]
      330 LOADK                            R16 K47 ["size"]
      331 GETTABLEKS                       R17 R12 K71 ["ThumbSize"]
      333 GETUPVAL                         R18 15
      334 CALL                             R13 5 0
      335 GETUPVAL                         R13 10
      336 MOVE                             R14 R0
      337 LOADK                            R15 K72 ["Middle"]
      338 LOADK                            R16 K47 ["size"]
      339 GETTABLEKS                       R17 R12 K73 ["MiddleSize"]
      341 GETUPVAL                         R18 15
      342 CALL                             R13 5 0
      343 GETUPVAL                         R13 10
      344 MOVE                             R14 R0
      345 LOADK                            R15 K74 ["Pinky"]
      346 LOADK                            R16 K47 ["size"]
      347 GETTABLEKS                       R17 R12 K75 ["PinkySize"]
      349 GETUPVAL                         R18 15
      350 CALL                             R13 5 0
      351 GETUPVAL                         R13 10
      352 MOVE                             R14 R0
      353 LOADK                            R15 K76 ["Ring"]
      354 LOADK                            R16 K47 ["size"]
      355 GETTABLEKS                       R17 R12 K77 ["RingSize"]
      357 GETUPVAL                         R18 15
      358 CALL                             R13 5 0
      359 GETUPVAL                         R13 12
      360 MOVE                             R14 R0
      361 LOADK                            R15 K68 ["Index"]
      362 LOADK                            R16 K78 ["range"]
      363 GETTABLEKS                       R17 R12 K79 ["IndexRange"]
      365 GETUPVAL                         R18 16
      366 GETUPVAL                         R19 17
      367 CALL                             R13 6 0
      368 GETUPVAL                         R13 12
      369 MOVE                             R14 R0
      370 LOADK                            R15 K70 ["Thumb"]
      371 LOADK                            R16 K78 ["range"]
      372 GETTABLEKS                       R17 R12 K80 ["ThumbRange"]
      374 GETUPVAL                         R18 16
      375 GETUPVAL                         R19 17
      376 CALL                             R13 6 0
      377 GETUPVAL                         R13 12
      378 MOVE                             R14 R0
      379 LOADK                            R15 K74 ["Pinky"]
      380 LOADK                            R16 K78 ["range"]
      381 GETTABLEKS                       R17 R12 K81 ["PinkyRange"]
      383 GETUPVAL                         R18 16
      384 GETUPVAL                         R19 17
      385 CALL                             R13 6 0
      386 GETUPVAL                         R13 12
      387 MOVE                             R14 R0
      388 LOADK                            R15 K76 ["Ring"]
      389 LOADK                            R16 K78 ["range"]
      390 GETTABLEKS                       R17 R12 K82 ["RingRange"]
      392 GETUPVAL                         R18 16
      393 GETUPVAL                         R19 17
      394 CALL                             R13 6 0
      395 GETUPVAL                         R13 12
      396 MOVE                             R14 R0
      397 LOADK                            R15 K72 ["Middle"]
      398 LOADK                            R16 K78 ["range"]
      399 GETTABLEKS                       R17 R12 K83 ["MiddleRange"]
      401 GETUPVAL                         R18 16
      402 GETUPVAL                         R19 17
      403 CALL                             R13 6 0
      404 FORGLOOP                         R3 2 ; [-398]
      406 RETURN                           R0 0

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
      162 LOADN                            R22 -500
      163 NAMECALL                         R19 R19 K31 ["DefineFastInt"]
      165 CALL                             R19 3 1
      166 GETIMPORT                        R20 K29 [game]
      168 LOADK                            R22 K39 ["UGCValidationHrdOriginOffsetMaxYHundredths"]
      169 LOADN                            R23 500
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
