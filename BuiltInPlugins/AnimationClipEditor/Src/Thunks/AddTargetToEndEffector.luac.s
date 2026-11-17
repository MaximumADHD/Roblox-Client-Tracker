PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETUPVAL                         R4 0
        6 GETTABLEN                        R3 R4 1
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K2 ["AnimationData"]
       10 NEWTABLE                         R6 0 5
       12 LOADK                            R7 K3 ["Instances"]
       13 GETUPVAL                         R8 2
       14 LOADK                            R9 K4 ["Tracks"]
       15 MOVE                             R10 R3
       16 LOADK                            R11 K5 ["Components"]
       17 SETLIST                          R6 R7 5 [1]
       19 CALL                             R4 2 1
       20 GETTABLEKS                       R7 R4 K3 ["Instances"]
       22 GETUPVAL                         R8 2
       23 GETTABLE                         R6 R7 R8
       24 GETTABLEKS                       R6 R6 K4 ["Tracks"]
       26 GETTABLE                         R5 R6 R3
       27 GETTABLEKS                       R7 R5 K5 ["Components"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K6 ["PROPERTY_KEYS"]
       32 GETTABLEKS                       R8 R8 K7 ["IkData"]
       34 GETTABLE                         R6 R7 R8
       35 JUMPIFNOT                        R6 ; [+63]
       36 GETTABLEKS                       R9 R5 K5 ["Components"]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K6 ["PROPERTY_KEYS"]
       41 GETTABLEKS                       R10 R10 K7 ["IkData"]
       43 GETTABLE                         R6 R9 R10
       44 GETTABLEKS                       R6 R6 K5 ["Components"]
       46 LOADNIL                          R7
       47 LOADNIL                          R8
       48 FORGPREP                         R6
       49 GETTABLEKS                       R11 R4 K8 ["Metadata"]
       51 GETTABLEKS                       R11 R11 K9 ["IkTargets"]
       53 JUMPIFNOT                        R11 ; [+18]
       54 GETTABLEKS                       R12 R4 K8 ["Metadata"]
       56 GETTABLEKS                       R12 R12 K9 ["IkTargets"]
       58 GETTABLE                         R11 R12 R9
       59 GETUPVAL                         R12 4
       60 JUMPIFNOTEQ                      R11 R12 ; [+11]
       62 GETIMPORT                        R11 K11 [warn]
       64 GETUPVAL                         R13 4
       65 GETTABLEKS                       R13 R13 K12 ["Name"]
       67 LOADK                            R14 K13 [" is already a target for "]
       68 MOVE                             R15 R3
       69 CONCAT                           R12 R13 R15
       70 CALL                             R11 1 0
       71 RETURN                           R0 0
       72 FORGLOOP                         R6 1 ; [-24]
       74 GETTABLEKS                       R6 R5 K5 ["Components"]
       76 GETUPVAL                         R7 3
       77 GETTABLEKS                       R7 R7 K6 ["PROPERTY_KEYS"]
       79 GETTABLEKS                       R7 R7 K7 ["IkData"]
       81 GETUPVAL                         R8 5
       82 GETTABLEKS                       R8 R8 K14 ["Dictionary"]
       84 GETTABLEKS                       R8 R8 K15 ["join"]
       86 NEWTABLE                         R9 0 0
       88 GETTABLEKS                       R11 R5 K5 ["Components"]
       90 GETUPVAL                         R12 3
       91 GETTABLEKS                       R12 R12 K6 ["PROPERTY_KEYS"]
       93 GETTABLEKS                       R12 R12 K7 ["IkData"]
       95 GETTABLE                         R10 R11 R12
       96 CALL                             R8 2 1
       97 SETTABLE                         R8 R6 R7
       98 JUMP                             ; [+28]
       99 GETTABLEKS                       R6 R5 K5 ["Components"]
      101 GETUPVAL                         R7 3
      102 GETTABLEKS                       R7 R7 K6 ["PROPERTY_KEYS"]
      104 GETTABLEKS                       R7 R7 K7 ["IkData"]
      106 GETUPVAL                         R8 6
      107 GETTABLEKS                       R8 R8 K16 ["addTrack"]
      109 GETTABLEKS                       R9 R5 K5 ["Components"]
      111 GETUPVAL                         R10 3
      112 GETTABLEKS                       R10 R10 K6 ["PROPERTY_KEYS"]
      114 GETTABLEKS                       R10 R10 K7 ["IkData"]
      116 GETUPVAL                         R11 3
      117 GETTABLEKS                       R11 R11 K17 ["TRACK_TYPES"]
      119 GETTABLEKS                       R11 R11 K7 ["IkData"]
      121 LOADB                            R12 1
      122 LOADNIL                          R13
      123 GETTABLEKS                       R14 R2 K18 ["DefaultEulerAnglesOrder"]
      125 CALL                             R8 6 1
      126 SETTABLE                         R8 R6 R7
      127 GETUPVAL                         R6 7
      128 GETUPVAL                         R7 4
      129 CALL                             R6 1 1
      130 GETTABLEKS                       R8 R5 K5 ["Components"]
      132 GETUPVAL                         R9 3
      133 GETTABLEKS                       R9 R9 K6 ["PROPERTY_KEYS"]
      135 GETTABLEKS                       R9 R9 K7 ["IkData"]
      137 GETTABLE                         R7 R8 R9
      138 GETTABLEKS                       R7 R7 K5 ["Components"]
      140 GETUPVAL                         R8 6
      141 GETTABLEKS                       R8 R8 K16 ["addTrack"]
      143 GETTABLEKS                       R10 R5 K5 ["Components"]
      145 GETUPVAL                         R11 3
      146 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      148 GETTABLEKS                       R11 R11 K7 ["IkData"]
      150 GETTABLE                         R9 R10 R11
      151 GETTABLEKS                       R9 R9 K5 ["Components"]
      153 MOVE                             R10 R6
      154 GETUPVAL                         R11 3
      155 GETTABLEKS                       R11 R11 K17 ["TRACK_TYPES"]
      157 GETTABLEKS                       R11 R11 K19 ["IkTarget"]
      159 LOADB                            R12 1
      160 GETUPVAL                         R13 3
      161 GETTABLEKS                       R13 R13 K17 ["TRACK_TYPES"]
      163 GETTABLEKS                       R13 R13 K20 ["Quaternion"]
      165 GETTABLEKS                       R14 R2 K18 ["DefaultEulerAnglesOrder"]
      167 CALL                             R8 6 1
      168 SETTABLE                         R8 R7 R6
      169 GETUPVAL                         R7 1
      170 MOVE                             R8 R4
      171 NEWTABLE                         R9 0 2
      173 LOADK                            R10 K8 ["Metadata"]
      174 LOADK                            R11 K9 ["IkTargets"]
      175 SETLIST                          R9 R10 2 [1]
      177 CALL                             R7 2 1
      178 MOVE                             R4 R7
      179 GETTABLEKS                       R7 R4 K8 ["Metadata"]
      181 GETTABLEKS                       R7 R7 K9 ["IkTargets"]
      183 GETUPVAL                         R8 4
      184 SETTABLE                         R8 R7 R6
      185 GETUPVAL                         R7 5
      186 GETTABLEKS                       R7 R7 K14 ["Dictionary"]
      188 GETTABLEKS                       R7 R7 K15 ["join"]
      190 NEWTABLE                         R8 0 0
      192 GETTABLEKS                       R9 R2 K4 ["Tracks"]
      194 CALL                             R7 2 1
      195 LOADNIL                          R8
      196 MOVE                             R9 R7
      197 LOADNIL                          R10
      198 LOADNIL                          R11
      199 FORGPREP                         R9
      200 GETTABLEKS                       R14 R13 K12 ["Name"]
      202 JUMPIFNOTEQ                      R14 R3 ; [+13]
      204 GETUPVAL                         R14 5
      205 GETTABLEKS                       R14 R14 K14 ["Dictionary"]
      207 GETTABLEKS                       R14 R14 K15 ["join"]
      209 NEWTABLE                         R15 0 0
      211 GETTABLE                         R16 R7 R12
      212 CALL                             R14 2 1
      213 SETTABLE                         R14 R7 R12
      214 GETTABLE                         R8 R7 R12
      215 JUMP                             ; [+2]
      216 FORGLOOP                         R9 2 ; [-17]
      218 JUMPIFNOT                        R8 ; [+143]
      219 GETUPVAL                         R9 5
      220 GETTABLEKS                       R9 R9 K14 ["Dictionary"]
      222 GETTABLEKS                       R9 R9 K15 ["join"]
      224 NEWTABLE                         R10 0 0
      226 GETTABLEKS                       R11 R8 K5 ["Components"]
      228 CALL                             R9 2 1
      229 SETTABLEKS                       R9 R8 K5 ["Components"]
      231 GETTABLEKS                       R10 R8 K5 ["Components"]
      233 GETUPVAL                         R11 3
      234 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      236 GETTABLEKS                       R11 R11 K7 ["IkData"]
      238 GETTABLE                         R9 R10 R11
      239 JUMPIFNOT                        R9 ; [+25]
      240 GETTABLEKS                       R9 R8 K5 ["Components"]
      242 GETUPVAL                         R10 3
      243 GETTABLEKS                       R10 R10 K6 ["PROPERTY_KEYS"]
      245 GETTABLEKS                       R10 R10 K7 ["IkData"]
      247 GETUPVAL                         R11 5
      248 GETTABLEKS                       R11 R11 K14 ["Dictionary"]
      250 GETTABLEKS                       R11 R11 K15 ["join"]
      252 NEWTABLE                         R12 0 0
      254 GETTABLEKS                       R14 R8 K5 ["Components"]
      256 GETUPVAL                         R15 3
      257 GETTABLEKS                       R15 R15 K6 ["PROPERTY_KEYS"]
      259 GETTABLEKS                       R15 R15 K7 ["IkData"]
      261 GETTABLE                         R13 R14 R15
      262 CALL                             R11 2 1
      263 SETTABLE                         R11 R9 R10
      264 JUMP                             ; [+55]
      265 GETTABLEKS                       R9 R8 K5 ["Components"]
      267 GETUPVAL                         R10 3
      268 GETTABLEKS                       R10 R10 K6 ["PROPERTY_KEYS"]
      270 GETTABLEKS                       R10 R10 K7 ["IkData"]
      272 GETUPVAL                         R11 8
      273 GETTABLEKS                       R11 R11 K21 ["track"]
      275 GETUPVAL                         R12 3
      276 GETTABLEKS                       R12 R12 K17 ["TRACK_TYPES"]
      278 GETTABLEKS                       R12 R12 K7 ["IkData"]
      280 CALL                             R11 1 1
      281 SETTABLE                         R11 R9 R10
      282 GETTABLEKS                       R10 R8 K5 ["Components"]
      284 GETUPVAL                         R11 3
      285 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      287 GETTABLEKS                       R11 R11 K7 ["IkData"]
      289 GETTABLE                         R9 R10 R11
      290 NEWTABLE                         R10 0 0
      292 SETTABLEKS                       R10 R9 K5 ["Components"]
      294 GETTABLEKS                       R10 R8 K5 ["Components"]
      296 GETUPVAL                         R11 3
      297 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      299 GETTABLEKS                       R11 R11 K7 ["IkData"]
      301 GETTABLE                         R9 R10 R11
      302 GETUPVAL                         R10 3
      303 GETTABLEKS                       R10 R10 K6 ["PROPERTY_KEYS"]
      305 GETTABLEKS                       R10 R10 K7 ["IkData"]
      307 SETTABLEKS                       R10 R9 K12 ["Name"]
      309 GETTABLEKS                       R10 R8 K5 ["Components"]
      311 GETUPVAL                         R11 3
      312 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      314 GETTABLEKS                       R11 R11 K7 ["IkData"]
      316 GETTABLE                         R9 R10 R11
      317 GETUPVAL                         R10 2
      318 SETTABLEKS                       R10 R9 K22 ["Instance"]
      320 GETTABLEKS                       R10 R8 K5 ["Components"]
      322 GETUPVAL                         R11 3
      323 GETTABLEKS                       R11 R11 K6 ["PROPERTY_KEYS"]
      325 GETTABLEKS                       R11 R11 K7 ["IkData"]
      327 GETTABLE                         R9 R10 R11
      328 GETUPVAL                         R10 8
      329 GETTABLEKS                       R10 R10 K21 ["track"]
      331 GETUPVAL                         R11 3
      332 GETTABLEKS                       R11 R11 K17 ["TRACK_TYPES"]
      334 GETTABLEKS                       R11 R11 K19 ["IkTarget"]
      336 CALL                             R10 1 1
      337 SETTABLEKS                       R6 R10 K12 ["Name"]
      339 GETUPVAL                         R11 2
      340 SETTABLEKS                       R11 R10 K22 ["Instance"]
      342 NEWTABLE                         R11 0 0
      344 SETTABLEKS                       R11 R10 K5 ["Components"]
      346 GETUPVAL                         R11 9
      347 GETTABLEKS                       R11 R11 K23 ["createTrackListEntryComponents"]
      349 MOVE                             R12 R10
      350 GETUPVAL                         R13 2
      351 GETUPVAL                         R14 3
      352 GETTABLEKS                       R14 R14 K17 ["TRACK_TYPES"]
      354 GETTABLEKS                       R14 R14 K20 ["Quaternion"]
      356 GETTABLEKS                       R15 R2 K18 ["DefaultEulerAnglesOrder"]
      358 CALL                             R11 4 0
      359 GETTABLEKS                       R11 R9 K5 ["Components"]
      361 SETTABLE                         R10 R11 R6
      362 GETUPVAL                         R11 10
      363 MOVE                             R12 R4
      364 CALL                             R11 1 -1
      365 NAMECALL                         R9 R0 K24 ["dispatch"]
      367 CALL                             R9 -1 0
      368 GETUPVAL                         R11 11
      369 MOVE                             R12 R7
      370 CALL                             R11 1 -1
      371 NAMECALL                         R9 R0 K24 ["dispatch"]
      373 CALL                             R9 -1 0
      374 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Thunks"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SortAndSetTracks"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R2 K11 ["UpdateAnimationData"]
       27 CALL                             R4 1 1
       28 GETTABLEKS                       R5 R0 K8 ["Src"]
       30 GETTABLEKS                       R5 R5 K12 ["Util"]
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R5 K13 ["AnimationData"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R5 K14 ["Constants"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K5 [require]
       44 GETTABLEKS                       R9 R5 K15 ["duplicateHierarchy"]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R5 K16 ["getInstancePath"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K5 [require]
       54 GETTABLEKS                       R11 R5 K17 ["PathUtils"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K5 [require]
       59 GETTABLEKS                       R12 R5 K18 ["Templates"]
       61 CALL                             R11 1 1
       62 GETIMPORT                        R12 K5 [require]
       64 GETTABLEKS                       R13 R5 K19 ["TrackUtils"]
       66 CALL                             R12 1 1
       67 DUPCLOSURE                       R13 K20 [PROTO_1]
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R12
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R3
       77 RETURN                           R13 1
