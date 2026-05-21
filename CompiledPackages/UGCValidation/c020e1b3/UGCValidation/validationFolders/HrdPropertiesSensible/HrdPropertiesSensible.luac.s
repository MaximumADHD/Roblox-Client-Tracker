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
       17 JUMPIFEQKNIL                     R8 ; [+375]
       19 GETTABLEKS                       R10 R8 K6 ["OriginOffset"]
       21 GETTABLEKS                       R11 R7 K5 ["Name"]
       23 JUMPIFNOTEQKS                    R11 K7 ["LowerTorso"] ; [+39]
       25 GETUPVAL                         R11 2
       26 GETTABLEKS                       R11 R11 K8 ["fuzzyEq"]
       28 GETTABLEKS                       R12 R10 K9 ["Rotation"]
       30 GETIMPORT                        R13 K12 [CFrame.identity]
       32 CALL                             R11 2 1
       33 JUMPIFNOT                        R11 ; [+9]
       34 GETUPVAL                         R11 3
       35 GETTABLEKS                       R11 R11 K13 ["isInRange"]
       37 GETTABLEKS                       R12 R10 K14 ["Position"]
       39 GETUPVAL                         R13 4
       40 GETUPVAL                         R14 5
       41 CALL                             R11 3 1
       42 JUMPIF                           R11 ; [+44]
       43 GETUPVAL                         R13 6
       44 GETTABLEKS                       R13 R13 K15 ["Keys"]
       46 GETTABLEKS                       R13 R13 K16 ["HrdProperties_OriginOutsideBounds"]
       48 DUPTABLE                         R14 K19 [{"valueMin", "valueMax"}]
       49 GETUPVAL                         R15 7
       50 GETUPVAL                         R16 4
       51 CALL                             R15 1 1
       52 SETTABLEKS                       R15 R14 K17 ["valueMin"]
       54 GETUPVAL                         R15 7
       55 GETUPVAL                         R16 5
       56 CALL                             R15 1 1
       57 SETTABLEKS                       R15 R14 K18 ["valueMax"]
       59 NAMECALL                         R11 R0 K20 ["fail"]
       61 CALL                             R11 3 0
       62 JUMP                             ; [+24]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R11 R11 K8 ["fuzzyEq"]
       66 MOVE                             R12 R10
       67 GETIMPORT                        R13 K12 [CFrame.identity]
       69 CALL                             R11 2 1
       70 JUMPIF                           R11 ; [+16]
       71 GETUPVAL                         R13 6
       72 GETTABLEKS                       R13 R13 K15 ["Keys"]
       74 GETTABLEKS                       R13 R13 K21 ["HrdProperties_UncontainedJoint"]
       76 DUPTABLE                         R14 K24 [{"jointName", "foundMeshName"}]
       77 LOADK                            R15 K25 ["originOffset"]
       78 SETTABLEKS                       R15 R14 K22 ["jointName"]
       80 GETTABLEKS                       R15 R7 K5 ["Name"]
       82 SETTABLEKS                       R15 R14 K23 ["foundMeshName"]
       84 NAMECALL                         R11 R0 K20 ["fail"]
       86 CALL                             R11 3 0
       87 GETTABLEKS                       R13 R7 K5 ["Name"]
       89 NAMECALL                         R11 R8 K26 ["GetContainedJointLabels"]
       91 CALL                             R11 2 1
       92 GETUPVAL                         R12 8
       93 GETTABLEKS                       R12 R12 K27 ["getHrdJointLabels"]
       95 CALL                             R12 0 3
       96 FORGPREP                         R12
       97 LOADK                            R19 K28 ["%*RigAttachment"]
       98 GETTABLEKS                       R21 R16 K5 ["Name"]
      100 NAMECALL                         R19 R19 K29 ["format"]
      102 CALL                             R19 2 1
      103 MOVE                             R18 R19
      104 JUMPIFEQ                         R18 R9 ; [+2]
      106 LOADB                            R17 0 +1
      107 LOADB                            R17 1
      108 MOVE                             R20 R16
      109 NAMECALL                         R18 R8 K30 ["GetJoint"]
      111 CALL                             R18 2 1
      112 JUMPIFNOT                        R17 ; [+22]
      113 JUMPIFNOT                        R18 ; [+8]
      114 GETTABLEKS                       R19 R18 K5 ["Name"]
      116 JUMPIFNOTEQ                      R19 R9 ; [+5]
      118 GETTABLEKS                       R19 R18 K31 ["ClassName"]
      120 JUMPIFEQKS                       R19 K32 ["Attachment"] ; [+14]
      122 GETUPVAL                         R21 6
      123 GETTABLEKS                       R21 R21 K15 ["Keys"]
      125 GETTABLEKS                       R21 R21 K33 ["HrdMissingStandardJoint"]
      127 DUPTABLE                         R22 K34 [{"jointName"}]
      128 GETTABLEKS                       R23 R16 K5 ["Name"]
      130 SETTABLEKS                       R23 R22 K22 ["jointName"]
      132 NAMECALL                         R19 R0 K20 ["fail"]
      134 CALL                             R19 3 0
      135 JUMPIF                           R18 ; [+1]
      136 JUMP                             ; [+110]
      137 GETIMPORT                        R19 K37 [table.find]
      139 MOVE                             R20 R11
      140 MOVE                             R21 R16
      141 CALL                             R19 2 1
      142 JUMPIF                           R19 ; [+18]
      143 GETUPVAL                         R21 6
      144 GETTABLEKS                       R21 R21 K15 ["Keys"]
      146 GETTABLEKS                       R21 R21 K21 ["HrdProperties_UncontainedJoint"]
      148 DUPTABLE                         R22 K24 [{"jointName", "foundMeshName"}]
      149 GETTABLEKS                       R23 R16 K5 ["Name"]
      151 SETTABLEKS                       R23 R22 K22 ["jointName"]
      153 GETTABLEKS                       R23 R7 K5 ["Name"]
      155 SETTABLEKS                       R23 R22 K23 ["foundMeshName"]
      157 NAMECALL                         R19 R0 K20 ["fail"]
      159 CALL                             R19 3 0
      160 JUMP                             ; [+86]
      161 JUMPIF                           R17 ; [+27]
      162 GETTABLEKS                       R19 R18 K5 ["Name"]
      164 GETTABLEKS                       R20 R16 K5 ["Name"]
      166 JUMPIFNOTEQ                      R19 R20 ; [+5]
      168 GETTABLEKS                       R19 R18 K31 ["ClassName"]
      170 JUMPIFEQKS                       R19 K38 ["Bone"] ; [+18]
      172 GETUPVAL                         R21 6
      173 GETTABLEKS                       R21 R21 K15 ["Keys"]
      175 GETTABLEKS                       R21 R21 K39 ["HrdImproperJointMapping"]
      177 DUPTABLE                         R22 K41 [{"jointName", "boneName"}]
      178 GETTABLEKS                       R23 R16 K5 ["Name"]
      180 SETTABLEKS                       R23 R22 K22 ["jointName"]
      182 GETTABLEKS                       R23 R16 K5 ["Name"]
      184 SETTABLEKS                       R23 R22 K40 ["boneName"]
      186 NAMECALL                         R19 R0 K20 ["fail"]
      188 CALL                             R19 3 0
      189 MOVE                             R21 R16
      190 NAMECALL                         R19 R8 K42 ["GetJointSize"]
      192 CALL                             R19 2 1
      193 MOVE                             R22 R16
      194 NAMECALL                         R20 R8 K43 ["GetJointRangeMin"]
      196 CALL                             R20 2 1
      197 MOVE                             R23 R16
      198 NAMECALL                         R21 R8 K44 ["GetJointRangeMax"]
      200 CALL                             R21 2 1
      201 GETUPVAL                         R22 9
      202 MOVE                             R23 R0
      203 GETTABLEKS                       R24 R16 K5 ["Name"]
      205 LOADK                            R25 K45 ["size"]
      206 MOVE                             R26 R19
      207 GETUPVAL                         R27 10
      208 CALL                             R22 5 0
      209 GETUPVAL                         R22 11
      210 MOVE                             R23 R0
      211 GETTABLEKS                       R24 R16 K5 ["Name"]
      213 LOADK                            R25 K46 ["rangeMin"]
      214 MOVE                             R26 R20
      215 GETUPVAL                         R27 12
      216 GETUPVAL                         R28 13
      217 CALL                             R22 6 0
      218 GETUPVAL                         R22 11
      219 MOVE                             R23 R0
      220 GETTABLEKS                       R24 R16 K5 ["Name"]
      222 LOADK                            R25 K47 ["rangeMax"]
      223 MOVE                             R26 R21
      224 GETUPVAL                         R27 12
      225 GETUPVAL                         R28 13
      226 CALL                             R22 6 0
      227 GETUPVAL                         R22 3
      228 GETTABLEKS                       R22 R22 K48 ["isFirstLessOrEqual"]
      230 MOVE                             R23 R20
      231 MOVE                             R24 R21
      232 CALL                             R22 2 1
      233 JUMPIF                           R22 ; [+13]
      234 GETUPVAL                         R24 6
      235 GETTABLEKS                       R24 R24 K15 ["Keys"]
      237 GETTABLEKS                       R24 R24 K49 ["HrdProperties_MinAboveMax"]
      239 DUPTABLE                         R25 K34 [{"jointName"}]
      240 GETTABLEKS                       R26 R16 K5 ["Name"]
      242 SETTABLEKS                       R26 R25 K22 ["jointName"]
      244 NAMECALL                         R22 R0 K20 ["fail"]
      246 CALL                             R22 3 0
      247 FORGLOOP                         R12 2 ; [-151]
      249 LOADK                            R14 K50 ["DigitsRigDescription"]
      250 NAMECALL                         R12 R7 K3 ["FindFirstChildWhichIsA"]
      252 CALL                             R12 2 1
      253 JUMPIFEQKNIL                     R12 ; [+139]
      255 GETTABLEKS                       R13 R7 K5 ["Name"]
      257 JUMPIFNOTEQKS                    R13 K51 ["LeftHand"] ; [+7]
      259 GETTABLEKS                       R13 R12 K52 ["Side"]
      261 GETIMPORT                        R14 K56 [Enum.DigitsRigDescriptionSide.Left]
      263 JUMPIFEQ                         R13 R14 ; [+44]
      265 GETTABLEKS                       R13 R7 K5 ["Name"]
      267 JUMPIFNOTEQKS                    R13 K57 ["RightHand"] ; [+7]
      269 GETTABLEKS                       R13 R12 K52 ["Side"]
      271 GETIMPORT                        R14 K59 [Enum.DigitsRigDescriptionSide.Right]
      273 JUMPIFEQ                         R13 R14 ; [+34]
      275 LOADK                            R13 K60 ["None"]
      276 GETTABLEKS                       R14 R7 K5 ["Name"]
      278 JUMPIFNOTEQKS                    R14 K51 ["LeftHand"] ; [+3]
      280 LOADK                            R13 K55 ["Left"]
      281 JUMP                             ; [+5]
      282 GETTABLEKS                       R14 R7 K5 ["Name"]
      284 JUMPIFNOTEQKS                    R14 K57 ["RightHand"] ; [+2]
      286 LOADK                            R13 K58 ["Right"]
      287 GETUPVAL                         R16 6
      288 GETTABLEKS                       R16 R16 K15 ["Keys"]
      290 GETTABLEKS                       R16 R16 K61 ["HrdCheck_DrdInvalidSide"]
      292 DUPTABLE                         R17 K65 [{"partName", "expectedSide", "foundSide"}]
      293 GETTABLEKS                       R18 R7 K5 ["Name"]
      295 SETTABLEKS                       R18 R17 K62 ["partName"]
      297 SETTABLEKS                       R13 R17 K63 ["expectedSide"]
      299 GETTABLEKS                       R18 R12 K52 ["Side"]
      301 GETTABLEKS                       R18 R18 K5 ["Name"]
      303 SETTABLEKS                       R18 R17 K64 ["foundSide"]
      305 NAMECALL                         R14 R0 K20 ["fail"]
      307 CALL                             R14 3 0
      308 GETUPVAL                         R13 9
      309 MOVE                             R14 R0
      310 LOADK                            R15 K66 ["Index"]
      311 LOADK                            R16 K45 ["size"]
      312 GETTABLEKS                       R17 R12 K67 ["IndexSize"]
      314 GETUPVAL                         R18 14
      315 CALL                             R13 5 0
      316 GETUPVAL                         R13 9
      317 MOVE                             R14 R0
      318 LOADK                            R15 K68 ["Thumb"]
      319 LOADK                            R16 K45 ["size"]
      320 GETTABLEKS                       R17 R12 K69 ["ThumbSize"]
      322 GETUPVAL                         R18 14
      323 CALL                             R13 5 0
      324 GETUPVAL                         R13 9
      325 MOVE                             R14 R0
      326 LOADK                            R15 K70 ["Middle"]
      327 LOADK                            R16 K45 ["size"]
      328 GETTABLEKS                       R17 R12 K71 ["MiddleSize"]
      330 GETUPVAL                         R18 14
      331 CALL                             R13 5 0
      332 GETUPVAL                         R13 9
      333 MOVE                             R14 R0
      334 LOADK                            R15 K72 ["Pinky"]
      335 LOADK                            R16 K45 ["size"]
      336 GETTABLEKS                       R17 R12 K73 ["PinkySize"]
      338 GETUPVAL                         R18 14
      339 CALL                             R13 5 0
      340 GETUPVAL                         R13 9
      341 MOVE                             R14 R0
      342 LOADK                            R15 K74 ["Ring"]
      343 LOADK                            R16 K45 ["size"]
      344 GETTABLEKS                       R17 R12 K75 ["RingSize"]
      346 GETUPVAL                         R18 14
      347 CALL                             R13 5 0
      348 GETUPVAL                         R13 11
      349 MOVE                             R14 R0
      350 LOADK                            R15 K66 ["Index"]
      351 LOADK                            R16 K76 ["range"]
      352 GETTABLEKS                       R17 R12 K77 ["IndexRange"]
      354 GETUPVAL                         R18 15
      355 GETUPVAL                         R19 16
      356 CALL                             R13 6 0
      357 GETUPVAL                         R13 11
      358 MOVE                             R14 R0
      359 LOADK                            R15 K68 ["Thumb"]
      360 LOADK                            R16 K76 ["range"]
      361 GETTABLEKS                       R17 R12 K78 ["ThumbRange"]
      363 GETUPVAL                         R18 15
      364 GETUPVAL                         R19 16
      365 CALL                             R13 6 0
      366 GETUPVAL                         R13 11
      367 MOVE                             R14 R0
      368 LOADK                            R15 K72 ["Pinky"]
      369 LOADK                            R16 K76 ["range"]
      370 GETTABLEKS                       R17 R12 K79 ["PinkyRange"]
      372 GETUPVAL                         R18 15
      373 GETUPVAL                         R19 16
      374 CALL                             R13 6 0
      375 GETUPVAL                         R13 11
      376 MOVE                             R14 R0
      377 LOADK                            R15 K74 ["Ring"]
      378 LOADK                            R16 K76 ["range"]
      379 GETTABLEKS                       R17 R12 K80 ["RingRange"]
      381 GETUPVAL                         R18 15
      382 GETUPVAL                         R19 16
      383 CALL                             R13 6 0
      384 GETUPVAL                         R13 11
      385 MOVE                             R14 R0
      386 LOADK                            R15 K70 ["Middle"]
      387 LOADK                            R16 K76 ["range"]
      388 GETTABLEKS                       R17 R12 K81 ["MiddleRange"]
      390 GETUPVAL                         R18 15
      391 GETUPVAL                         R19 16
      392 CALL                             R13 6 0
      393 FORGLOOP                         R3 2 ; [-387]
      395 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K5 ["util"]
       34 GETTABLEKS                       R5 R5 K10 ["ValidationRulesUtil"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETTABLEKS                       R6 R0 K5 ["util"]
       41 GETTABLEKS                       R6 R6 K11 ["getAllInstancesIsA"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K4 [require]
       46 GETTABLEKS                       R7 R0 K5 ["util"]
       48 GETTABLEKS                       R7 R7 K12 ["R15plusUtils"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K4 [require]
       53 GETTABLEKS                       R8 R0 K5 ["util"]
       55 GETTABLEKS                       R8 R8 K13 ["Vector3Utils"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K4 [require]
       60 GETTABLEKS                       R9 R0 K5 ["util"]
       62 GETTABLEKS                       R9 R9 K14 ["valueToString"]
       64 CALL                             R8 1 1
       65 GETIMPORT                        R9 K4 [require]
       67 GETTABLEKS                       R10 R0 K5 ["util"]
       69 GETTABLEKS                       R10 R10 K15 ["CFrameUtils"]
       71 CALL                             R9 1 1
       72 NEWTABLE                         R10 4 0
       74 NEWTABLE                         R11 0 2
       76 GETTABLEKS                       R12 R2 K16 ["UploadCategory"]
       78 GETTABLEKS                       R12 R12 K17 ["TORSO_AND_LIMBS"]
       80 GETTABLEKS                       R13 R2 K16 ["UploadCategory"]
       82 GETTABLEKS                       R13 R13 K18 ["DYNAMIC_HEAD"]
       84 SETLIST                          R11 R12 2 [1]
       86 SETTABLEKS                       R11 R10 K19 ["categories"]
       88 NEWTABLE                         R11 0 1
       90 GETTABLEKS                       R12 R2 K20 ["SharedDataMember"]
       92 GETTABLEKS                       R12 R12 K21 ["rootInstance"]
       94 SETLIST                          R11 R12 1 [1]
       96 SETTABLEKS                       R11 R10 K22 ["requiredData"]
       98 GETTABLEKS                       R11 R6 K23 ["checkFlagEnabledForAllowHrd"]
      100 SETTABLEKS                       R11 R10 K24 ["fflag"]
      102 GETIMPORT                        R12 K27 [game]
      104 LOADK                            R14 K28 ["UGCValidationHrdJointSizeHundredthsLimit"]
      105 LOADN                            R15 150
      106 NAMECALL                         R12 R12 K29 ["DefineFastInt"]
      108 CALL                             R12 3 1
      109 DIVK                             R11 R12 K25 [100]
      110 GETIMPORT                        R12 K27 [game]
      112 LOADK                            R14 K30 ["UGCValidationHrdJointRangeMinXHundredths"]
      113 LOADN                            R15 0
      114 NAMECALL                         R12 R12 K29 ["DefineFastInt"]
      116 CALL                             R12 3 1
      117 GETIMPORT                        R13 K27 [game]
      119 LOADK                            R15 K31 ["UGCValidationHrdJointRangeMaxXHundredths"]
      120 LOADN                            R16 0
      121 NAMECALL                         R13 R13 K29 ["DefineFastInt"]
      123 CALL                             R13 3 1
      124 GETIMPORT                        R14 K27 [game]
      126 LOADK                            R16 K32 ["UGCValidationHrdJointRangeMinYHundredths"]
      127 LOADN                            R17 0
      128 NAMECALL                         R14 R14 K29 ["DefineFastInt"]
      130 CALL                             R14 3 1
      131 GETIMPORT                        R15 K27 [game]
      133 LOADK                            R17 K33 ["UGCValidationHrdJointRangeMaxYHundredths"]
      134 LOADN                            R18 0
      135 NAMECALL                         R15 R15 K29 ["DefineFastInt"]
      137 CALL                             R15 3 1
      138 GETIMPORT                        R16 K27 [game]
      140 LOADK                            R18 K34 ["UGCValidationHrdJointRangeMinZHundredths"]
      141 LOADN                            R19 0
      142 NAMECALL                         R16 R16 K29 ["DefineFastInt"]
      144 CALL                             R16 3 1
      145 GETIMPORT                        R17 K27 [game]
      147 LOADK                            R19 K35 ["UGCValidationHrdJointRangeMaxZHundredths"]
      148 LOADN                            R20 0
      149 NAMECALL                         R17 R17 K29 ["DefineFastInt"]
      151 CALL                             R17 3 1
      152 GETIMPORT                        R18 K27 [game]
      154 LOADK                            R20 K36 ["UGCValidationHrdOriginOffsetMinYHundredths"]
      155 LOADN                            R21 12
      156 NAMECALL                         R18 R18 K29 ["DefineFastInt"]
      158 CALL                             R18 3 1
      159 GETIMPORT                        R19 K27 [game]
      161 LOADK                            R21 K37 ["UGCValidationHrdOriginOffsetMaxYHundredths"]
      162 LOADN                            R22 244
      163 NAMECALL                         R19 R19 K29 ["DefineFastInt"]
      165 CALL                             R19 3 1
      166 DIVK                             R21 R12 K25 [100]
      167 DIVK                             R22 R14 K25 [100]
      168 DIVK                             R23 R16 K25 [100]
      169 FASTCALL                         VECTOR ; [+2]
      170 GETIMPORT                        R20 K40 [Vector3.new]
      172 CALL                             R20 3 1
      173 DIVK                             R22 R13 K25 [100]
      174 DIVK                             R23 R15 K25 [100]
      175 DIVK                             R24 R17 K25 [100]
      176 FASTCALL                         VECTOR ; [+2]
      177 GETIMPORT                        R21 K40 [Vector3.new]
      179 CALL                             R21 3 1
      180 LOADN                            R23 0
      181 DIVK                             R24 R18 K25 [100]
      182 LOADN                            R25 0
      183 FASTCALL                         VECTOR ; [+2]
      184 GETIMPORT                        R22 K40 [Vector3.new]
      186 CALL                             R22 3 1
      187 LOADN                            R24 0
      188 DIVK                             R25 R19 K25 [100]
      189 LOADN                            R26 0
      190 FASTCALL                         VECTOR ; [+2]
      191 GETIMPORT                        R23 K40 [Vector3.new]
      193 CALL                             R23 3 1
      194 GETIMPORT                        R25 K27 [game]
      196 LOADK                            R27 K41 ["UGCValidationDrdJointSizeHundredthsLimit"]
      197 LOADN                            R28 150
      198 NAMECALL                         R25 R25 K29 ["DefineFastInt"]
      200 CALL                             R25 3 1
      201 DIVK                             R24 R25 K25 [100]
      202 GETIMPORT                        R25 K27 [game]
      204 LOADK                            R27 K42 ["UGCValidationDrdJointRangeMinXHundredths"]
      205 LOADN                            R28 0
      206 NAMECALL                         R25 R25 K29 ["DefineFastInt"]
      208 CALL                             R25 3 1
      209 GETIMPORT                        R26 K27 [game]
      211 LOADK                            R28 K43 ["UGCValidationDrdJointRangeMaxXHundredths"]
      212 LOADN                            R29 0
      213 NAMECALL                         R26 R26 K29 ["DefineFastInt"]
      215 CALL                             R26 3 1
      216 GETIMPORT                        R27 K27 [game]
      218 LOADK                            R29 K44 ["UGCValidationDrdJointRangeMinYHundredths"]
      219 LOADN                            R30 0
      220 NAMECALL                         R27 R27 K29 ["DefineFastInt"]
      222 CALL                             R27 3 1
      223 GETIMPORT                        R28 K27 [game]
      225 LOADK                            R30 K45 ["UGCValidationDrdJointRangeMaxYHundredths"]
      226 LOADN                            R31 0
      227 NAMECALL                         R28 R28 K29 ["DefineFastInt"]
      229 CALL                             R28 3 1
      230 GETIMPORT                        R29 K27 [game]
      232 LOADK                            R31 K46 ["UGCValidationDrdJointRangeMinZHundredths"]
      233 LOADN                            R32 0
      234 NAMECALL                         R29 R29 K29 ["DefineFastInt"]
      236 CALL                             R29 3 1
      237 GETIMPORT                        R30 K27 [game]
      239 LOADK                            R32 K47 ["UGCValidationDrdJointRangeMaxZHundredths"]
      240 LOADN                            R33 0
      241 NAMECALL                         R30 R30 K29 ["DefineFastInt"]
      243 CALL                             R30 3 1
      244 DIVK                             R32 R25 K25 [100]
      245 DIVK                             R33 R27 K25 [100]
      246 DIVK                             R34 R29 K25 [100]
      247 FASTCALL                         VECTOR ; [+2]
      248 GETIMPORT                        R31 K40 [Vector3.new]
      250 CALL                             R31 3 1
      251 DIVK                             R33 R26 K25 [100]
      252 DIVK                             R34 R28 K25 [100]
      253 DIVK                             R35 R30 K25 [100]
      254 FASTCALL                         VECTOR ; [+2]
      255 GETIMPORT                        R32 K40 [Vector3.new]
      257 CALL                             R32 3 1
      258 DUPCLOSURE                       R33 K48 [PROTO_0]
      259 CAPTURE                          VAL R7
      260 CAPTURE                          VAL R3
      261 CAPTURE                          VAL R8
      262 DUPCLOSURE                       R34 K49 [PROTO_1]
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R8
      265 DUPCLOSURE                       R35 K50 [PROTO_2]
      266 CAPTURE                          VAL R5
      267 CAPTURE                          VAL R4
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R7
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R23
      272 CAPTURE                          VAL R3
      273 CAPTURE                          VAL R8
      274 CAPTURE                          VAL R6
      275 CAPTURE                          VAL R34
      276 CAPTURE                          VAL R11
      277 CAPTURE                          VAL R33
      278 CAPTURE                          VAL R20
      279 CAPTURE                          VAL R21
      280 CAPTURE                          VAL R24
      281 CAPTURE                          VAL R31
      282 CAPTURE                          VAL R32
      283 SETTABLEKS                       R35 R10 K51 ["run"]
      285 RETURN                           R10 1
