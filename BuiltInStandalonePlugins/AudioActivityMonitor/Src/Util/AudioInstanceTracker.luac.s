PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 ADDK                             R1 R2 K0 [1]
        3 SETUPVAL                         R1 0
        4 GETUPVAL                         R2 0
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K2 [tostring]
        8 CALL                             R1 1 1
        9 FASTCALL1                        TOSTRING R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K2 [tostring]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQ                      R1 R2 ; [+3]
       16 LOADN                            R1 0
       17 SETUPVAL                         R1 0
       18 FASTCALL1                        TOSTRING R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K2 [tostring]
       22 CALL                             R1 1 1
       23 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K2 [{[1] = "k"}]
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K4 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R2 K2 [{[1] = "v"}]
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K4 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIFEQKNIL                     R2 ; [+17]
        5 GETIMPORT                        R3 K1 [game]
        7 JUMPIFEQ                         R2 R3 ; [+13]
        9 LOADN                            R5 1
       10 GETTABLEKS                       R6 R2 K2 ["Name"]
       12 FASTCALL3                        TABLE_INSERT R1 R5 R6
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K5 [table.insert]
       17 CALL                             R3 3 0
       18 GETTABLEKS                       R2 R2 K6 ["Parent"]
       20 JUMPBACK                         ; [-18]
       21 GETIMPORT                        R3 K8 [table.concat]
       23 MOVE                             R4 R1
       24 LOADK                            R5 K9 ["."]
       25 CALL                             R3 2 -1
       26 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 NEWTABLE                         R1 0 0
        5 DUPTABLE                         R2 K2 [{[1] = "v"}]
        6 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        8 GETIMPORT                        R0 K4 [setmetatable]
       10 CALL                             R0 2 1
       11 SETUPVAL                         R0 1
       12 NEWTABLE                         R0 0 0
       14 SETUPVAL                         R0 2
       15 NEWTABLE                         R1 0 0
       17 DUPTABLE                         R2 K6 [{[1] = "k"}]
       18 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
       20 GETIMPORT                        R0 K4 [setmetatable]
       22 CALL                             R0 2 1
       23 SETUPVAL                         R0 3
       24 LOADN                            R0 0
       25 SETUPVAL                         R0 4
       26 GETUPVAL                         R0 5
       27 GETTABLEKS                       R0 R0 K7 ["setMeteringEnabled"]
       29 LOADB                            R1 0
       30 CALL                             R0 1 0
       31 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["SoundShimService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADB                            R1 0
        7 JUMPIFEQKNIL                     R0 ; [+6]
        9 GETUPVAL                         R1 0
       10 MOVE                             R3 R0
       11 NAMECALL                         R1 R1 K4 ["IsDescendantOf"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 0
        5 GETUPVAL                         R2 1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 MOVE                             R9 R6
       10 NAMECALL                         R7 R0 K0 ["IsA"]
       12 CALL                             R7 2 1
       13 JUMPIFNOT                        R7 ; [+2]
       14 LOADB                            R1 1
       15 JUMP                             ; [+2]
       16 FORGLOOP                         R2 2 ; [-8]
       18 JUMPIF                           R1 ; [+1]
       19 RETURN                           R0 0
       20 GETUPVAL                         R4 2
       21 NAMECALL                         R2 R0 K1 ["IsDescendantOf"]
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+1]
       25 RETURN                           R0 0
       26 GETIMPORT                        R2 K3 [pcall]
       28 NEWCLOSURE                       R3 P0
       29 CAPTURE                          VAL R0
       30 CALL                             R2 1 2
       31 JUMPIFNOT                        R2 ; [+2]
       32 JUMPIFNOT                        R3 ; [+1]
       33 RETURN                           R0 0
       34 GETIMPORT                        R4 K6 [table.clone]
       36 GETUPVAL                         R5 3
       37 CALL                             R4 1 1
       38 GETUPVAL                         R6 4
       39 GETUPVAL                         R8 4
       40 ADDK                             R7 R8 K7 [1]
       41 SETUPVAL                         R7 4
       42 GETUPVAL                         R8 4
       43 FASTCALL1                        TOSTRING R8 ; [+2]
       44 GETIMPORT                        R7 K9 [tostring]
       46 CALL                             R7 1 1
       47 FASTCALL1                        TOSTRING R6 ; [+3]
       48 MOVE                             R9 R6
       49 GETIMPORT                        R8 K9 [tostring]
       51 CALL                             R8 1 1
       52 JUMPIFNOTEQ                      R7 R8 ; [+3]
       54 LOADN                            R7 0
       55 SETUPVAL                         R7 4
       56 FASTCALL1                        TOSTRING R6 ; [+3]
       57 MOVE                             R8 R6
       58 GETIMPORT                        R7 K9 [tostring]
       60 CALL                             R7 1 1
       61 MOVE                             R5 R7
       62 SETTABLEKS                       R5 R4 K10 ["Id"]
       64 GETUPVAL                         R5 5
       65 GETTABLEKS                       R6 R4 K10 ["Id"]
       67 SETTABLE                         R0 R5 R6
       68 GETUPVAL                         R5 0
       69 SETTABLE                         R4 R5 R0
       70 GETUPVAL                         R5 6
       71 GETTABLEKS                       R5 R5 K11 ["_updateInstanceData"]
       73 MOVE                             R6 R0
       74 GETUPVAL                         R8 0
       75 GETTABLE                         R7 R8 R0
       76 CALL                             R5 2 0
       77 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPlaybackState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPlaybackState"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLE                         R1 R2 R0
        7 GETTABLEKS                       R1 R1 K0 ["Id"]
        9 RETURN                           R1 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["Active"]
        2 GETTABLEKS                       R3 R0 K1 ["Name"]
        4 SETTABLEKS                       R3 R1 K1 ["Name"]
        6 GETTABLEKS                       R3 R0 K2 ["ClassName"]
        8 SETTABLEKS                       R3 R1 K2 ["ClassName"]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R1 K3 ["Path"]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R1 K0 ["Active"]
       18 LOADNIL                          R3
       19 SETTABLEKS                       R3 R1 K4 ["Asset"]
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R1 K5 ["PlaybackState"]
       24 LOADNIL                          R3
       25 SETTABLEKS                       R3 R1 K6 ["Volume"]
       27 LOADNIL                          R3
       28 SETTABLEKS                       R3 R1 K7 ["Is3D"]
       30 LOADNIL                          R3
       31 SETTABLEKS                       R3 R1 K8 ["Distance"]
       33 LOADNIL                          R3
       34 SETTABLEKS                       R3 R1 K9 ["AttenuationFactor"]
       36 LOADN                            R3 -1
       37 SETTABLEKS                       R3 R1 K10 ["PotentialAudibility"]
       39 LOADNIL                          R3
       40 SETTABLEKS                       R3 R1 K11 ["Metering"]
       42 LOADNIL                          R3
       43 SETTABLEKS                       R3 R1 K12 ["Targets"]
       45 LOADNIL                          R3
       46 SETTABLEKS                       R3 R1 K13 ["ShouldBeTargeted"]
       48 LOADB                            R3 0
       49 LOADB                            R4 0
       50 LOADK                            R7 K14 ["Sound"]
       51 NAMECALL                         R5 R0 K15 ["IsA"]
       53 CALL                             R5 2 1
       54 JUMPIFNOT                        R5 ; [+48]
       55 GETTABLEKS                       R5 R0 K16 ["Playing"]
       57 SETTABLEKS                       R5 R1 K0 ["Active"]
       59 GETTABLEKS                       R5 R0 K17 ["SoundId"]
       61 SETTABLEKS                       R5 R1 K4 ["Asset"]
       63 GETTABLEKS                       R5 R0 K6 ["Volume"]
       65 SETTABLEKS                       R5 R1 K6 ["Volume"]
       67 GETUPVAL                         R5 1
       68 GETTABLEKS                       R5 R5 K18 ["getAttenuationForSound"]
       70 MOVE                             R6 R0
       71 CALL                             R5 1 3
       72 SETTABLEKS                       R5 R1 K7 ["Is3D"]
       74 SETTABLEKS                       R6 R1 K8 ["Distance"]
       76 SETTABLEKS                       R7 R1 K9 ["AttenuationFactor"]
       78 GETUPVAL                         R5 1
       79 GETTABLEKS                       R5 R5 K19 ["getAudibilityForSound"]
       81 MOVE                             R6 R0
       82 GETTABLEKS                       R7 R1 K0 ["Active"]
       84 GETTABLEKS                       R8 R1 K6 ["Volume"]
       86 CALL                             R5 3 1
       87 SETTABLEKS                       R5 R1 K10 ["PotentialAudibility"]
       89 GETTABLEKS                       R6 R0 K21 ["PlaybackLoudness"]
       91 DIVK                             R5 R6 K20 [1000]
       92 SETTABLEKS                       R5 R1 K11 ["Metering"]
       94 GETIMPORT                        R5 K23 [pcall]
       96 NEWCLOSURE                       R6 P0
       97 CAPTURE                          VAL R0
       98 CALL                             R5 1 2
       99 JUMPIFNOT                        R5 ; [+233]
      100 SETTABLEKS                       R6 R1 K5 ["PlaybackState"]
      102 JUMP                             ; [+230]
      103 LOADK                            R7 K24 ["VideoFrame"]
      104 NAMECALL                         R5 R0 K15 ["IsA"]
      106 CALL                             R5 2 1
      107 JUMPIFNOT                        R5 ; [+38]
      108 GETTABLEKS                       R5 R0 K16 ["Playing"]
      110 SETTABLEKS                       R5 R1 K0 ["Active"]
      112 GETTABLEKS                       R5 R0 K25 ["Video"]
      114 SETTABLEKS                       R5 R1 K4 ["Asset"]
      116 GETTABLEKS                       R5 R0 K6 ["Volume"]
      118 SETTABLEKS                       R5 R1 K6 ["Volume"]
      120 GETUPVAL                         R5 1
      121 GETTABLEKS                       R5 R5 K26 ["getAttenuationForVideoFrame"]
      123 MOVE                             R6 R0
      124 CALL                             R5 1 3
      125 SETTABLEKS                       R5 R1 K7 ["Is3D"]
      127 SETTABLEKS                       R6 R1 K8 ["Distance"]
      129 SETTABLEKS                       R7 R1 K9 ["AttenuationFactor"]
      131 GETUPVAL                         R5 1
      132 GETTABLEKS                       R5 R5 K27 ["getAudibilityForVideoFrame"]
      134 MOVE                             R6 R0
      135 GETTABLEKS                       R7 R1 K0 ["Active"]
      137 GETTABLEKS                       R8 R1 K6 ["Volume"]
      139 CALL                             R5 3 1
      140 SETTABLEKS                       R5 R1 K10 ["PotentialAudibility"]
      142 LOADN                            R5 0
      143 SETTABLEKS                       R5 R1 K11 ["Metering"]
      145 JUMP                             ; [+187]
      146 LOADK                            R7 K28 ["AudioPlayer"]
      147 NAMECALL                         R5 R0 K15 ["IsA"]
      149 CALL                             R5 2 1
      150 JUMPIFNOT                        R5 ; [+23]
      151 GETTABLEKS                       R5 R0 K29 ["IsPlaying"]
      153 SETTABLEKS                       R5 R1 K0 ["Active"]
      155 GETTABLEKS                       R5 R0 K4 ["Asset"]
      157 SETTABLEKS                       R5 R1 K4 ["Asset"]
      159 GETTABLEKS                       R5 R0 K6 ["Volume"]
      161 SETTABLEKS                       R5 R1 K6 ["Volume"]
      163 LOADB                            R3 1
      164 LOADB                            R4 1
      165 GETIMPORT                        R5 K23 [pcall]
      167 NEWCLOSURE                       R6 P1
      168 CAPTURE                          VAL R0
      169 CALL                             R5 1 2
      170 JUMPIFNOT                        R5 ; [+162]
      171 SETTABLEKS                       R6 R1 K5 ["PlaybackState"]
      173 JUMP                             ; [+159]
      174 LOADK                            R7 K30 ["AudioDeviceInput"]
      175 NAMECALL                         R5 R0 K15 ["IsA"]
      177 CALL                             R5 2 1
      178 JUMPIFNOT                        R5 ; [+30]
      179 GETTABLEKS                       R5 R0 K31 ["IsReady"]
      181 JUMPIFNOT                        R5 ; [+7]
      182 GETTABLEKS                       R6 R0 K32 ["Muted"]
      184 NOT                              R5 R6
      185 JUMPIFNOT                        R5 ; [+3]
      186 GETTABLEKS                       R6 R0 K33 ["MutedByLocalUser"]
      188 NOT                              R5 R6
      189 SETTABLEKS                       R5 R1 K0 ["Active"]
      191 GETTABLEKS                       R6 R0 K34 ["Player"]
      193 JUMPIFNOT                        R6 ; [+5]
      194 GETTABLEKS                       R5 R0 K34 ["Player"]
      196 GETTABLEKS                       R5 R5 K1 ["Name"]
      198 JUMP                             ; [+1]
      199 LOADK                            R5 K35 [""]
      200 SETTABLEKS                       R5 R1 K4 ["Asset"]
      202 GETTABLEKS                       R5 R0 K6 ["Volume"]
      204 SETTABLEKS                       R5 R1 K6 ["Volume"]
      206 LOADB                            R3 1
      207 LOADB                            R4 1
      208 JUMP                             ; [+124]
      209 LOADK                            R7 K36 ["AudioListener"]
      210 NAMECALL                         R5 R0 K15 ["IsA"]
      212 CALL                             R5 2 1
      213 JUMPIFNOT                        R5 ; [+14]
      214 NAMECALL                         R7 R0 K37 ["GetInteractingEmitters"]
      216 CALL                             R7 1 1
      217 LENGTH                           R6 R7
      218 LOADN                            R7 0
      219 JUMPIFLT                         R7 R6 ; [+2]
      221 LOADB                            R5 0 +1
      222 LOADB                            R5 1
      223 SETTABLEKS                       R5 R1 K0 ["Active"]
      225 LOADB                            R3 1
      226 LOADB                            R4 1
      227 JUMP                             ; [+105]
      228 LOADK                            R7 K38 ["AudioTextToSpeech"]
      229 NAMECALL                         R5 R0 K15 ["IsA"]
      231 CALL                             R5 2 1
      232 JUMPIFNOT                        R5 ; [+18]
      233 GETTABLEKS                       R5 R0 K29 ["IsPlaying"]
      235 SETTABLEKS                       R5 R1 K0 ["Active"]
      237 LOADK                            R6 K39 ["\""]
      238 GETTABLEKS                       R7 R0 K40 ["Text"]
      240 LOADK                            R8 K39 ["\""]
      241 CONCAT                           R5 R6 R8
      242 SETTABLEKS                       R5 R1 K4 ["Asset"]
      244 GETTABLEKS                       R5 R0 K6 ["Volume"]
      246 SETTABLEKS                       R5 R1 K6 ["Volume"]
      248 LOADB                            R3 1
      249 LOADB                            R4 1
      250 JUMP                             ; [+82]
      251 LOADK                            R7 K41 ["VideoPlayer"]
      252 NAMECALL                         R5 R0 K15 ["IsA"]
      254 CALL                             R5 2 1
      255 JUMPIFNOT                        R5 ; [+18]
      256 GETTABLEKS                       R5 R0 K29 ["IsPlaying"]
      258 SETTABLEKS                       R5 R1 K0 ["Active"]
      260 GETTABLEKS                       R6 R0 K42 ["VideoContent"]
      262 GETTABLEKS                       R6 R6 K43 ["Uri"]
      264 ORK                              R5 R6 K35 [""]
      265 SETTABLEKS                       R5 R1 K4 ["Asset"]
      267 GETTABLEKS                       R5 R0 K6 ["Volume"]
      269 SETTABLEKS                       R5 R1 K6 ["Volume"]
      271 LOADB                            R3 1
      272 LOADB                            R4 1
      273 JUMP                             ; [+59]
      274 LOADK                            R7 K44 ["AudioDeviceOutput"]
      275 NAMECALL                         R5 R0 K15 ["IsA"]
      277 CALL                             R5 2 1
      278 JUMPIFNOT                        R5 ; [+14]
      279 LOADB                            R5 1
      280 SETTABLEKS                       R5 R1 K13 ["ShouldBeTargeted"]
      282 LOADB                            R5 0
      283 LOADN                            R6 0
      284 LOADN                            R7 1
      285 SETTABLEKS                       R5 R1 K7 ["Is3D"]
      287 SETTABLEKS                       R6 R1 K8 ["Distance"]
      289 SETTABLEKS                       R7 R1 K9 ["AttenuationFactor"]
      291 LOADB                            R3 1
      292 JUMP                             ; [+40]
      293 LOADK                            R7 K45 ["AudioEmitter"]
      294 NAMECALL                         R5 R0 K15 ["IsA"]
      296 CALL                             R5 2 1
      297 JUMPIFNOT                        R5 ; [+16]
      298 GETUPVAL                         R5 1
      299 GETTABLEKS                       R5 R5 K46 ["getAttenuationForEmitter"]
      301 MOVE                             R6 R0
      302 CALL                             R5 1 3
      303 SETTABLEKS                       R5 R1 K7 ["Is3D"]
      305 SETTABLEKS                       R6 R1 K8 ["Distance"]
      307 SETTABLEKS                       R7 R1 K9 ["AttenuationFactor"]
      309 LOADB                            R5 1
      310 SETTABLEKS                       R5 R1 K13 ["ShouldBeTargeted"]
      312 LOADB                            R3 1
      313 JUMP                             ; [+19]
      314 LOADK                            R7 K47 ["AudioAnalyzer"]
      315 NAMECALL                         R5 R0 K15 ["IsA"]
      317 CALL                             R5 2 1
      318 JUMPIF                           R5 ; [+10]
      319 LOADK                            R7 K48 ["AudioRecorder"]
      320 NAMECALL                         R5 R0 K15 ["IsA"]
      322 CALL                             R5 2 1
      323 JUMPIF                           R5 ; [+5]
      324 LOADK                            R7 K49 ["AudioSpeechToText"]
      325 NAMECALL                         R5 R0 K15 ["IsA"]
      327 CALL                             R5 2 1
      328 JUMPIFNOT                        R5 ; [+4]
      329 LOADB                            R5 1
      330 SETTABLEKS                       R5 R1 K13 ["ShouldBeTargeted"]
      332 LOADB                            R3 1
      333 JUMPIFNOT                        R3 ; [+19]
      334 GETTABLEKS                       R5 R1 K0 ["Active"]
      336 JUMPIFNOT                        R5 ; [+7]
      337 GETUPVAL                         R5 1
      338 GETTABLEKS                       R5 R5 K50 ["getAudibilityForWirable"]
      340 MOVE                             R6 R0
      341 CALL                             R5 1 1
      342 SETTABLEKS                       R5 R1 K10 ["PotentialAudibility"]
      344 GETUPVAL                         R5 2
      345 GETTABLEKS                       R5 R5 K51 ["_getMetering"]
      347 MOVE                             R6 R0
      348 GETTABLEKS                       R7 R1 K0 ["Active"]
      350 CALL                             R5 2 1
      351 SETTABLEKS                       R5 R1 K11 ["Metering"]
      353 JUMPIFNOT                        R4 ; [+9]
      354 GETUPVAL                         R5 1
      355 GETTABLEKS                       R5 R5 K52 ["getTargetsForWirable"]
      357 MOVE                             R6 R0
      358 NEWCLOSURE                       R7 P2
      359 CAPTURE                          UPVAL U3
      360 CALL                             R5 2 1
      361 SETTABLEKS                       R5 R1 K12 ["Targets"]
      363 GETTABLEKS                       R5 R1 K0 ["Active"]
      365 JUMPIFNOT                        R5 ; [+6]
      366 JUMPIF                           R2 ; [+5]
      367 GETIMPORT                        R5 K55 [os.clock]
      369 CALL                             R5 0 1
      370 SETTABLEKS                       R5 R1 K56 ["TimeBecameActive"]
      372 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPeakLevel"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K0 ["_updateInstanceData"]
        7 MOVE                             R6 R3
        8 GETUPVAL                         R8 0
        9 GETTABLE                         R7 R8 R3
       10 CALL                             R5 2 0
       11 FORGLOOP                         R0 2 ; [-8]
       13 NEWTABLE                         R0 0 0
       15 GETUPVAL                         R1 0
       16 LOADNIL                          R2
       17 LOADNIL                          R3
       18 FORGPREP                         R1
       19 GETTABLEKS                       R6 R5 K1 ["Active"]
       21 JUMPIFNOT                        R6 ; [+3]
       22 GETTABLEKS                       R6 R5 K2 ["Id"]
       24 SETTABLE                         R5 R0 R6
       25 FORGLOOP                         R1 2 ; [-7]
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K3 ["_updateDetachedPlaybacks"]
       30 CALL                             R1 0 0
       31 GETUPVAL                         R1 2
       32 LOADNIL                          R2
       33 LOADNIL                          R3
       34 FORGPREP                         R1
       35 GETTABLEKS                       R6 R5 K2 ["Id"]
       37 SETTABLE                         R5 R0 R6
       38 FORGLOOP                         R1 2 ; [-4]
       40 GETIMPORT                        R1 K5 [pcall]
       42 DUPCLOSURE                       R2 K6 [PROTO_11]
       43 CAPTURE                          UPVAL U3
       44 CALL                             R1 1 2
       45 JUMPIF                           R1 ; [+1]
       46 LOADN                            R2 0
       47 MOVE                             R3 R0
       48 MOVE                             R4 R2
       49 RETURN                           R3 2

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 GETTABLEKS                       R1 R1 K0 ["Id"]
        8 GETUPVAL                         R2 0
        9 LOADNIL                          R3
       10 SETTABLE                         R3 R2 R0
       11 GETUPVAL                         R2 1
       12 LOADNIL                          R3
       13 SETTABLE                         R3 R2 R1
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K1 ["_teardownMetering"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K2 [table.clone]
        6 GETUPVAL                         R3 1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETUPVAL                         R6 2
       10 ADDK                             R5 R6 K3 [1]
       11 SETUPVAL                         R5 2
       12 GETUPVAL                         R6 2
       13 FASTCALL1                        TOSTRING R6 ; [+2]
       14 GETIMPORT                        R5 K5 [tostring]
       16 CALL                             R5 1 1
       17 FASTCALL1                        TOSTRING R4 ; [+3]
       18 MOVE                             R7 R4
       19 GETIMPORT                        R6 K5 [tostring]
       21 CALL                             R6 1 1
       22 JUMPIFNOTEQ                      R5 R6 ; [+3]
       24 LOADN                            R5 0
       25 SETUPVAL                         R5 2
       26 FASTCALL1                        TOSTRING R4 ; [+3]
       27 MOVE                             R6 R4
       28 GETIMPORT                        R5 K5 [tostring]
       30 CALL                             R5 1 1
       31 MOVE                             R3 R5
       32 SETTABLEKS                       R3 R2 K6 ["Id"]
       34 GETTABLEKS                       R3 R1 K7 ["Name"]
       36 SETTABLEKS                       R3 R2 K7 ["Name"]
       38 LOADK                            R3 K8 ["DetachedSound"]
       39 SETTABLEKS                       R3 R2 K9 ["ClassName"]
       41 GETTABLEKS                       R3 R1 K7 ["Name"]
       43 SETTABLEKS                       R3 R2 K10 ["Path"]
       45 GETTABLEKS                       R3 R1 K11 ["SoundId"]
       47 SETTABLEKS                       R3 R2 K12 ["Asset"]
       49 GETTABLEKS                       R3 R1 K13 ["Volume"]
       51 SETTABLEKS                       R3 R2 K13 ["Volume"]
       53 GETTABLEKS                       R4 R1 K14 ["Distance"]
       55 JUMPIFNOTEQKNIL                  R4 ; [+2]
       57 LOADB                            R3 0 +1
       58 LOADB                            R3 1
       59 SETTABLEKS                       R3 R2 K15 ["Is3D"]
       61 LOADB                            R3 1
       62 SETTABLEKS                       R3 R2 K16 ["Active"]
       64 GETIMPORT                        R3 K19 [os.clock]
       66 CALL                             R3 0 1
       67 SETTABLEKS                       R3 R2 K20 ["TimeBecameActive"]
       69 GETUPVAL                         R3 0
       70 SETTABLE                         R2 R3 R0
       71 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["Instance"]
        2 JUMPIFNOT                        R2 ; [+38]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R3 R1 K1 ["Id"]
        6 GETTABLEKS                       R4 R0 K0 ["Instance"]
        8 SETTABLE                         R4 R2 R3
        9 GETTABLEKS                       R2 R0 K0 ["Instance"]
       11 GETTABLEKS                       R2 R2 K2 ["Name"]
       13 SETTABLEKS                       R2 R1 K2 ["Name"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R3 R0 K0 ["Instance"]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K3 ["Path"]
       21 GETUPVAL                         R3 2
       22 GETTABLEKS                       R4 R0 K0 ["Instance"]
       24 GETTABLE                         R2 R3 R4
       25 JUMPIF                           R2 ; [+6]
       26 GETUPVAL                         R2 2
       27 GETTABLEKS                       R3 R0 K0 ["Instance"]
       29 NEWTABLE                         R4 0 0
       31 SETTABLE                         R4 R2 R3
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R4 R0 K0 ["Instance"]
       35 GETTABLE                         R2 R3 R4
       36 GETTABLEKS                       R3 R1 K1 ["Id"]
       38 LOADB                            R4 1
       39 SETTABLE                         R4 R2 R3
       40 JUMP                             ; [+5]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R3 R1 K1 ["Id"]
       44 LOADNIL                          R4
       45 SETTABLE                         R4 R2 R3
       46 GETTABLEKS                       R2 R0 K4 ["Distance"]
       48 SETTABLEKS                       R2 R1 K4 ["Distance"]
       50 GETTABLEKS                       R2 R0 K5 ["AttenuationFactor"]
       52 SETTABLEKS                       R2 R1 K5 ["AttenuationFactor"]
       54 GETTABLEKS                       R2 R0 K6 ["PotentialAudibility"]
       56 SETTABLEKS                       R2 R1 K6 ["PotentialAudibility"]
       58 GETTABLEKS                       R2 R0 K7 ["PlaybackState"]
       60 SETTABLEKS                       R2 R1 K7 ["PlaybackState"]
       62 GETTABLEKS                       R2 R0 K8 ["Metering"]
       64 SETTABLEKS                       R2 R1 K8 ["Metering"]
       66 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDetachedPlaybackData"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_17:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_16]
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 2
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETTABLE                         R7 R1 R5
       12 JUMPIF                           R7 ; [+5]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K3 ["_removeDetachedPlayback"]
       16 MOVE                             R8 R5
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 ; [-8]
       20 MOVE                             R2 R1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETUPVAL                         R8 1
       25 GETTABLE                         R7 R8 R5
       26 JUMPIF                           R7 ; [+6]
       27 GETUPVAL                         R7 2
       28 GETTABLEKS                       R7 R7 K4 ["_addDetachedPlayback"]
       30 MOVE                             R8 R5
       31 MOVE                             R9 R6
       32 CALL                             R7 2 0
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R7 R7 K5 ["_updateDetachedData"]
       36 MOVE                             R8 R6
       37 GETUPVAL                         R10 1
       38 GETTABLE                         R9 R10 R5
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-17]
       42 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R2 0
        5 GETTABLE                         R1 R2 R0
        6 GETTABLEKS                       R1 R1 K0 ["Id"]
        8 GETUPVAL                         R3 1
        9 GETTABLE                         R2 R3 R1
       10 JUMPIFNOT                        R2 ; [+7]
       11 GETUPVAL                         R4 2
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+4]
       14 GETUPVAL                         R4 2
       15 GETTABLE                         R3 R4 R2
       16 LOADNIL                          R4
       17 SETTABLE                         R4 R3 R1
       18 GETUPVAL                         R3 1
       19 GETUPVAL                         R5 0
       20 GETTABLE                         R4 R5 R0
       21 GETTABLEKS                       R4 R4 K0 ["Id"]
       23 LOADNIL                          R5
       24 SETTABLE                         R5 R3 R4
       25 GETUPVAL                         R3 0
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R0
       28 RETURN                           R0 0

PROTO_19:
        0 SETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["_teardownAllMetering"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetOutputPins"]
        3 CALL                             R0 1 1
        4 MOVE                             R1 R0
        5 JUMPIFNOT                        R1 ; [+6]
        6 LENGTH                           R2 R0
        7 LOADN                            R3 0
        8 JUMPIFLT                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetInputPins"]
        3 CALL                             R0 1 1
        4 MOVE                             R1 R0
        5 JUMPIFNOT                        R1 ; [+6]
        6 LENGTH                           R2 R0
        7 LOADN                            R3 0
        8 JUMPIFLT                         R3 R2 ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_teardownMetering"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_setUpMetering"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+12]
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["Folder"]
        6 CALL                             R1 1 1
        7 LOADK                            R2 K4 ["AudioActivityMonitor_Metering"]
        8 SETTABLEKS                       R2 R1 K5 ["Name"]
       10 GETUPVAL                         R2 1
       11 SETTABLEKS                       R2 R1 K6 ["Parent"]
       13 SETUPVAL                         R1 0
       14 GETUPVAL                         R2 0
       15 FASTCALL2K                       ASSERT R2 K7 ; [+4]
       17 LOADK                            R3 K7 ["audioAnalyzersContainers was nil"]
       18 GETIMPORT                        R1 K9 [assert]
       20 CALL                             R1 2 0
       21 GETIMPORT                        R1 K11 [pcall]
       23 NEWCLOSURE                       R2 P0
       24 CAPTURE                          VAL R0
       25 CALL                             R1 1 2
       26 JUMPIFNOT                        R1 ; [+24]
       27 JUMPIFNOT                        R2 ; [+23]
       28 GETIMPORT                        R3 K2 [Instance.new]
       30 LOADK                            R4 K12 ["AudioAnalyzer"]
       31 CALL                             R3 1 1
       32 LOADB                            R4 0
       33 SETTABLEKS                       R4 R3 K13 ["SpectrumEnabled"]
       35 GETUPVAL                         R4 0
       36 SETTABLEKS                       R4 R3 K6 ["Parent"]
       38 GETUPVAL                         R4 2
       39 SETTABLE                         R3 R4 R0
       40 GETIMPORT                        R4 K2 [Instance.new]
       42 LOADK                            R5 K14 ["Wire"]
       43 CALL                             R4 1 1
       44 SETTABLEKS                       R0 R4 K15 ["SourceInstance"]
       46 SETTABLEKS                       R3 R4 K16 ["TargetInstance"]
       48 SETTABLEKS                       R3 R4 K6 ["Parent"]
       50 RETURN                           R0 0
       51 GETIMPORT                        R3 K11 [pcall]
       53 NEWCLOSURE                       R4 P1
       54 CAPTURE                          VAL R0
       55 CALL                             R3 1 2
       56 JUMPIFNOT                        R3 ; [+48]
       57 JUMPIFNOT                        R4 ; [+47]
       58 GETIMPORT                        R5 K2 [Instance.new]
       60 LOADK                            R6 K12 ["AudioAnalyzer"]
       61 CALL                             R5 1 1
       62 LOADB                            R6 0
       63 SETTABLEKS                       R6 R5 K13 ["SpectrumEnabled"]
       65 GETUPVAL                         R6 0
       66 SETTABLEKS                       R6 R5 K6 ["Parent"]
       68 GETUPVAL                         R6 2
       69 SETTABLE                         R5 R6 R0
       70 NAMECALL                         R6 R0 K17 ["GetInputPins"]
       72 CALL                             R6 1 3
       73 FORGPREP                         R6
       74 MOVE                             R13 R10
       75 NAMECALL                         R11 R0 K18 ["GetConnectedWires"]
       77 CALL                             R11 2 3
       78 FORGPREP                         R11
       79 GETIMPORT                        R16 K2 [Instance.new]
       81 LOADK                            R17 K14 ["Wire"]
       82 CALL                             R16 1 1
       83 GETTABLEKS                       R17 R15 K15 ["SourceInstance"]
       85 SETTABLEKS                       R17 R16 K15 ["SourceInstance"]
       87 SETTABLEKS                       R5 R16 K16 ["TargetInstance"]
       89 SETTABLEKS                       R5 R16 K6 ["Parent"]
       91 FORGLOOP                         R11 2 ; [-13]
       93 FORGLOOP                         R6 2 ; [-20]
       95 GETUPVAL                         R6 3
       96 GETTABLEKS                       R7 R0 K19 ["WiringChanged"]
       98 NEWCLOSURE                       R9 P2
       99 CAPTURE                          UPVAL U4
      100 CAPTURE                          VAL R0
      101 NAMECALL                         R7 R7 K20 ["Connect"]
      103 CALL                             R7 2 1
      104 SETTABLE                         R7 R6 R0
      105 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADNIL                          R2
        3 RETURN                           R2 1
        4 LOADK                            R4 K0 ["AudioAnalyzer"]
        5 NAMECALL                         R2 R0 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+3]
        9 GETTABLEKS                       R2 R0 K2 ["PeakLevel"]
       11 RETURN                           R2 1
       12 JUMPIFNOT                        R1 ; [+10]
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R2 R3 R0
       15 JUMPIFNOTEQKNIL                  R2 ; [+7]
       17 GETUPVAL                         R2 2
       18 GETTABLEKS                       R2 R2 K3 ["_setUpMetering"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 JUMP                             ; [+10]
       23 JUMPIF                           R1 ; [+9]
       24 GETUPVAL                         R3 1
       25 GETTABLE                         R2 R3 R0
       26 JUMPIFEQKNIL                     R2 ; [+6]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K4 ["_teardownMetering"]
       31 MOVE                             R3 R0
       32 CALL                             R2 1 0
       33 GETUPVAL                         R3 1
       34 GETTABLE                         R2 R3 R0
       35 JUMPIFEQKNIL                     R2 ; [+6]
       37 GETUPVAL                         R3 1
       38 GETTABLE                         R2 R3 R0
       39 GETTABLEKS                       R3 R2 K2 ["PeakLevel"]
       41 RETURN                           R3 1
       42 LOADNIL                          R2
       43 RETURN                           R2 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 1
        6 GETTABLE                         R1 R2 R0
        7 JUMPIFNOT                        R1 ; [+8]
        8 GETUPVAL                         R2 1
        9 GETTABLE                         R1 R2 R0
       10 NAMECALL                         R1 R1 K0 ["Disconnect"]
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 1
       14 LOADNIL                          R2
       15 SETTABLE                         R2 R1 R0
       16 GETUPVAL                         R2 0
       17 GETTABLE                         R1 R2 R0
       18 NAMECALL                         R2 R1 K1 ["Destroy"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 0
       22 LOADNIL                          R3
       23 SETTABLE                         R3 R2 R0
       24 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 NEWTABLE                         R0 0 0
       11 SETUPVAL                         R0 0
       12 GETUPVAL                         R0 1
       13 LOADK                            R2 K1 ["AudioActivityMonitor_Metering"]
       14 NAMECALL                         R0 R0 K2 ["FindFirstChild"]
       16 CALL                             R0 2 1
       17 JUMPIFNOT                        R0 ; [+3]
       18 NAMECALL                         R1 R0 K3 ["Destroy"]
       20 CALL                             R1 1 0
       21 NEWTABLE                         R1 0 0
       23 SETUPVAL                         R1 2
       24 LOADNIL                          R1
       25 SETUPVAL                         R1 3
       26 RETURN                           R0 0

PROTO_27:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

PROTO_28:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R8 0
        7 GETTABLE                         R7 R8 R6
        8 JUMPIFNOT                        R7 ; [+11]
        9 GETUPVAL                         R8 0
       10 GETTABLE                         R7 R8 R6
       11 GETTABLEKS                       R7 R7 K0 ["Id"]
       13 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       15 MOVE                             R9 R1
       16 MOVE                             R10 R7
       17 GETIMPORT                        R8 K3 [table.insert]
       19 CALL                             R8 2 0
       20 GETUPVAL                         R8 1
       21 GETTABLE                         R7 R8 R6
       22 JUMPIFNOT                        R7 ; [+14]
       23 GETUPVAL                         R10 1
       24 GETTABLE                         R7 R10 R6
       25 LOADNIL                          R8
       26 LOADNIL                          R9
       27 FORGPREP                         R7
       28 FASTCALL2                        TABLE_INSERT R1 R10 ; [+5]
       30 MOVE                             R13 R1
       31 MOVE                             R14 R10
       32 GETIMPORT                        R12 K3 [table.insert]
       34 CALL                             R12 2 0
       35 FORGLOOP                         R7 2 ; [-8]
       37 FORGLOOP                         R2 2 ; [-32]
       39 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioActivityMonitor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["PotentialAudibilityUtil"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K11 [game]
       25 LOADK                            R5 K12 ["GuiService"]
       26 NAMECALL                         R3 R3 K13 ["GetService"]
       28 CALL                             R3 2 1
       29 GETIMPORT                        R4 K11 [game]
       31 LOADK                            R6 K14 ["SoundService"]
       32 NAMECALL                         R4 R4 K13 ["GetService"]
       34 CALL                             R4 2 1
       35 DUPTABLE                         R5 K36 [{["Id"] = "", ["Name"] = "", ["ClassName"] = "", ["Path"] = "", ["Active"] = False, ["TimeBecameActive"] = -1, ["Asset"] = , ["PlaybackState"] = , ["Volume"] = , ["Is3D"] = False, ["Distance"] = , ["AttenuationFactor"] = , ["PotentialAudibility"] = 0, ["Metering"] = , ["Targets"] = , ["ShouldBeTargeted"] = }]
       36 NEWTABLE                         R6 0 7
       38 LOADK                            R7 K37 ["Sound"]
       39 LOADK                            R8 K38 ["AudioPlayer"]
       40 LOADK                            R9 K39 ["AudioDeviceInput"]
       41 LOADK                            R10 K40 ["AudioTextToSpeech"]
       42 LOADK                            R11 K41 ["AudioListener"]
       43 LOADK                            R12 K42 ["AudioDeviceOutput"]
       44 LOADK                            R13 K43 ["AudioEmitter"]
       45 SETLIST                          R6 R7 7 [1]
       47 LOADN                            R7 0
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          REF R7
       50 DUPCLOSURE                       R9 K44 [PROTO_1]
       51 DUPCLOSURE                       R10 K45 [PROTO_2]
       52 DUPCLOSURE                       R11 K46 [PROTO_3]
       53 NEWTABLE                         R12 0 0
       55 NEWTABLE                         R14 0 0
       57 DUPTABLE                         R15 K49 [{["__mode"] = "v"}]
       58 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
       60 GETIMPORT                        R13 K51 [setmetatable]
       62 CALL                             R13 2 1
       63 NEWTABLE                         R14 0 0
       65 NEWTABLE                         R16 0 0
       67 DUPTABLE                         R17 K53 [{["__mode"] = "k"}]
       68 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
       70 GETIMPORT                        R15 K51 [setmetatable]
       72 CALL                             R15 2 1
       73 LOADNIL                          R16
       74 NEWTABLE                         R17 0 0
       76 NEWTABLE                         R18 0 0
       78 LOADB                            R19 0
       79 NEWTABLE                         R20 16 0
       81 NEWCLOSURE                       R21 P4
       82 CAPTURE                          REF R12
       83 CAPTURE                          REF R13
       84 CAPTURE                          REF R14
       85 CAPTURE                          REF R15
       86 CAPTURE                          REF R7
       87 CAPTURE                          VAL R20
       88 SETTABLEKS                       R21 R20 K54 ["clear"]
       90 NEWCLOSURE                       R21 P5
       91 CAPTURE                          REF R12
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R5
       95 CAPTURE                          REF R7
       96 CAPTURE                          REF R13
       97 CAPTURE                          VAL R20
       98 SETTABLEKS                       R21 R20 K55 ["addInstance"]
      100 NEWCLOSURE                       R21 P6
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R20
      104 CAPTURE                          REF R12
      105 SETTABLEKS                       R21 R20 K56 ["_updateInstanceData"]
      107 NEWCLOSURE                       R21 P7
      108 CAPTURE                          REF R12
      109 CAPTURE                          VAL R20
      110 CAPTURE                          REF R14
      111 CAPTURE                          VAL R4
      112 SETTABLEKS                       R21 R20 K57 ["updateInstances"]
      114 NEWCLOSURE                       R21 P8
      115 CAPTURE                          REF R12
      116 CAPTURE                          REF R13
      117 CAPTURE                          VAL R20
      118 SETTABLEKS                       R21 R20 K58 ["removeInstance"]
      120 NEWCLOSURE                       R21 P9
      121 CAPTURE                          REF R14
      122 CAPTURE                          VAL R5
      123 CAPTURE                          REF R7
      124 SETTABLEKS                       R21 R20 K59 ["_addDetachedPlayback"]
      126 NEWCLOSURE                       R21 P10
      127 CAPTURE                          REF R13
      128 CAPTURE                          VAL R11
      129 CAPTURE                          REF R15
      130 SETTABLEKS                       R21 R20 K60 ["_updateDetachedData"]
      132 NEWCLOSURE                       R21 P11
      133 CAPTURE                          VAL R4
      134 CAPTURE                          REF R14
      135 CAPTURE                          VAL R20
      136 SETTABLEKS                       R21 R20 K61 ["_updateDetachedPlaybacks"]
      138 NEWCLOSURE                       R21 P12
      139 CAPTURE                          REF R14
      140 CAPTURE                          REF R13
      141 CAPTURE                          REF R15
      142 SETTABLEKS                       R21 R20 K62 ["_removeDetachedPlayback"]
      144 NEWCLOSURE                       R21 P13
      145 CAPTURE                          REF R19
      146 CAPTURE                          VAL R20
      147 SETTABLEKS                       R21 R20 K63 ["setMeteringEnabled"]
      149 NEWCLOSURE                       R21 P14
      150 CAPTURE                          REF R16
      151 CAPTURE                          VAL R3
      152 CAPTURE                          REF R17
      153 CAPTURE                          REF R18
      154 CAPTURE                          VAL R20
      155 SETTABLEKS                       R21 R20 K64 ["_setUpMetering"]
      157 NEWCLOSURE                       R21 P15
      158 CAPTURE                          REF R19
      159 CAPTURE                          REF R17
      160 CAPTURE                          VAL R20
      161 SETTABLEKS                       R21 R20 K65 ["_getMetering"]
      163 NEWCLOSURE                       R21 P16
      164 CAPTURE                          REF R17
      165 CAPTURE                          REF R18
      166 SETTABLEKS                       R21 R20 K66 ["_teardownMetering"]
      168 NEWCLOSURE                       R21 P17
      169 CAPTURE                          REF R18
      170 CAPTURE                          VAL R3
      171 CAPTURE                          REF R17
      172 CAPTURE                          REF R16
      173 SETTABLEKS                       R21 R20 K67 ["_teardownAllMetering"]
      175 NEWCLOSURE                       R21 P18
      176 CAPTURE                          REF R13
      177 SETTABLEKS                       R21 R20 K68 ["getInstancesToSelectForId"]
      179 NEWCLOSURE                       R21 P19
      180 CAPTURE                          REF R12
      181 CAPTURE                          REF R15
      182 SETTABLEKS                       R21 R20 K69 ["getIdsToSelectForInstances"]
      184 CLOSEUPVALS                      R7
      185 RETURN                           R20 1
