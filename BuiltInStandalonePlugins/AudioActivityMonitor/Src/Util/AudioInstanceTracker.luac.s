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
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 SETTABLEKS                       R2 R1 K0 ["Name"]
        4 GETTABLEKS                       R2 R0 K1 ["ClassName"]
        6 SETTABLEKS                       R2 R1 K1 ["ClassName"]
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 SETTABLEKS                       R2 R1 K2 ["Path"]
       13 LOADNIL                          R2
       14 SETTABLEKS                       R2 R1 K3 ["Asset"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K4 ["PlaybackState"]
       19 LOADNIL                          R2
       20 SETTABLEKS                       R2 R1 K5 ["Volume"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K6 ["Is3D"]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K7 ["Distance"]
       28 LOADNIL                          R2
       29 SETTABLEKS                       R2 R1 K8 ["AttenuationFactor"]
       31 LOADN                            R2 -1
       32 SETTABLEKS                       R2 R1 K9 ["PotentialAudibility"]
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K10 ["Metering"]
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R1 K11 ["Targets"]
       40 LOADNIL                          R2
       41 SETTABLEKS                       R2 R1 K12 ["ShouldBeTargeted"]
       43 LOADB                            R2 0
       44 LOADK                            R5 K13 ["Sound"]
       45 NAMECALL                         R3 R0 K14 ["IsA"]
       47 CALL                             R3 2 1
       48 JUMPIFNOT                        R3 ; [+51]
       49 GETUPVAL                         R3 1
       50 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
       52 MOVE                             R4 R1
       53 GETTABLEKS                       R5 R0 K16 ["Playing"]
       55 CALL                             R3 2 0
       56 GETTABLEKS                       R3 R0 K17 ["SoundId"]
       58 SETTABLEKS                       R3 R1 K3 ["Asset"]
       60 GETTABLEKS                       R3 R0 K5 ["Volume"]
       62 SETTABLEKS                       R3 R1 K5 ["Volume"]
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K18 ["getAttenuationForSound"]
       67 MOVE                             R4 R0
       68 CALL                             R3 1 3
       69 SETTABLEKS                       R3 R1 K6 ["Is3D"]
       71 SETTABLEKS                       R4 R1 K7 ["Distance"]
       73 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
       75 GETUPVAL                         R3 2
       76 GETTABLEKS                       R3 R3 K19 ["getAudibilityForSound"]
       78 MOVE                             R4 R0
       79 GETTABLEKS                       R5 R1 K20 ["Active"]
       81 GETTABLEKS                       R6 R1 K5 ["Volume"]
       83 CALL                             R3 3 1
       84 SETTABLEKS                       R3 R1 K9 ["PotentialAudibility"]
       86 GETTABLEKS                       R4 R0 K22 ["PlaybackLoudness"]
       88 DIVK                             R3 R4 K21 [1000]
       89 SETTABLEKS                       R3 R1 K10 ["Metering"]
       91 GETIMPORT                        R3 K24 [pcall]
       93 NEWCLOSURE                       R4 P0
       94 CAPTURE                          VAL R0
       95 CALL                             R3 1 2
       96 JUMPIFNOT                        R3 ; [+246]
       97 SETTABLEKS                       R4 R1 K4 ["PlaybackState"]
       99 JUMP                             ; [+243]
      100 LOADK                            R5 K25 ["VideoFrame"]
      101 NAMECALL                         R3 R0 K14 ["IsA"]
      103 CALL                             R3 2 1
      104 JUMPIFNOT                        R3 ; [+41]
      105 GETUPVAL                         R3 1
      106 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      108 MOVE                             R4 R1
      109 GETTABLEKS                       R5 R0 K16 ["Playing"]
      111 CALL                             R3 2 0
      112 GETTABLEKS                       R3 R0 K26 ["Video"]
      114 SETTABLEKS                       R3 R1 K3 ["Asset"]
      116 GETTABLEKS                       R3 R0 K5 ["Volume"]
      118 SETTABLEKS                       R3 R1 K5 ["Volume"]
      120 GETUPVAL                         R3 2
      121 GETTABLEKS                       R3 R3 K27 ["getAttenuationForVideoFrame"]
      123 MOVE                             R4 R0
      124 CALL                             R3 1 3
      125 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      127 SETTABLEKS                       R4 R1 K7 ["Distance"]
      129 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      131 GETUPVAL                         R3 2
      132 GETTABLEKS                       R3 R3 K28 ["getAudibilityForVideoFrame"]
      134 MOVE                             R4 R0
      135 GETTABLEKS                       R5 R1 K20 ["Active"]
      137 GETTABLEKS                       R6 R1 K5 ["Volume"]
      139 CALL                             R3 3 1
      140 SETTABLEKS                       R3 R1 K9 ["PotentialAudibility"]
      142 LOADN                            R3 0
      143 SETTABLEKS                       R3 R1 K10 ["Metering"]
      145 JUMP                             ; [+197]
      146 LOADK                            R5 K29 ["AudioPlayer"]
      147 NAMECALL                         R3 R0 K14 ["IsA"]
      149 CALL                             R3 2 1
      150 JUMPIFNOT                        R3 ; [+25]
      151 GETUPVAL                         R3 1
      152 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      154 MOVE                             R4 R1
      155 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      157 CALL                             R3 2 0
      158 GETTABLEKS                       R3 R0 K3 ["Asset"]
      160 SETTABLEKS                       R3 R1 K3 ["Asset"]
      162 GETTABLEKS                       R3 R0 K5 ["Volume"]
      164 SETTABLEKS                       R3 R1 K5 ["Volume"]
      166 LOADB                            R2 1
      167 GETIMPORT                        R3 K24 [pcall]
      169 NEWCLOSURE                       R4 P1
      170 CAPTURE                          VAL R0
      171 CALL                             R3 1 2
      172 JUMPIFNOT                        R3 ; [+170]
      173 SETTABLEKS                       R4 R1 K4 ["PlaybackState"]
      175 JUMP                             ; [+167]
      176 LOADK                            R5 K31 ["AudioDeviceInput"]
      177 NAMECALL                         R3 R0 K14 ["IsA"]
      179 CALL                             R3 2 1
      180 JUMPIFNOT                        R3 ; [+32]
      181 GETUPVAL                         R3 1
      182 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      184 MOVE                             R4 R1
      185 GETTABLEKS                       R5 R0 K32 ["IsReady"]
      187 JUMPIFNOT                        R5 ; [+7]
      188 GETTABLEKS                       R6 R0 K33 ["Muted"]
      190 NOT                              R5 R6
      191 JUMPIFNOT                        R5 ; [+3]
      192 GETTABLEKS                       R6 R0 K34 ["MutedByLocalUser"]
      194 NOT                              R5 R6
      195 CALL                             R3 2 0
      196 GETTABLEKS                       R4 R0 K35 ["Player"]
      198 JUMPIFNOT                        R4 ; [+5]
      199 GETTABLEKS                       R3 R0 K35 ["Player"]
      201 GETTABLEKS                       R3 R3 K0 ["Name"]
      203 JUMP                             ; [+1]
      204 LOADK                            R3 K36 [""]
      205 SETTABLEKS                       R3 R1 K3 ["Asset"]
      207 GETTABLEKS                       R3 R0 K5 ["Volume"]
      209 SETTABLEKS                       R3 R1 K5 ["Volume"]
      211 LOADB                            R2 1
      212 JUMP                             ; [+130]
      213 LOADK                            R5 K37 ["AudioListener"]
      214 NAMECALL                         R3 R0 K14 ["IsA"]
      216 CALL                             R3 2 1
      217 JUMPIFNOT                        R3 ; [+16]
      218 GETUPVAL                         R3 1
      219 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      221 MOVE                             R4 R1
      222 NAMECALL                         R7 R0 K38 ["GetInteractingEmitters"]
      224 CALL                             R7 1 1
      225 LENGTH                           R6 R7
      226 LOADN                            R7 0
      227 JUMPIFLT                         R7 R6 ; [+2]
      229 LOADB                            R5 0 +1
      230 LOADB                            R5 1
      231 CALL                             R3 2 0
      232 LOADB                            R2 1
      233 JUMP                             ; [+109]
      234 LOADK                            R5 K39 ["AudioTextToSpeech"]
      235 NAMECALL                         R3 R0 K14 ["IsA"]
      237 CALL                             R3 2 1
      238 JUMPIFNOT                        R3 ; [+20]
      239 GETUPVAL                         R3 1
      240 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      242 MOVE                             R4 R1
      243 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      245 CALL                             R3 2 0
      246 LOADK                            R4 K40 ["\""]
      247 GETTABLEKS                       R5 R0 K41 ["Text"]
      249 LOADK                            R6 K40 ["\""]
      250 CONCAT                           R3 R4 R6
      251 SETTABLEKS                       R3 R1 K3 ["Asset"]
      253 GETTABLEKS                       R3 R0 K5 ["Volume"]
      255 SETTABLEKS                       R3 R1 K5 ["Volume"]
      257 LOADB                            R2 1
      258 JUMP                             ; [+84]
      259 LOADK                            R5 K42 ["VideoPlayer"]
      260 NAMECALL                         R3 R0 K14 ["IsA"]
      262 CALL                             R3 2 1
      263 JUMPIFNOT                        R3 ; [+20]
      264 GETUPVAL                         R3 1
      265 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      267 MOVE                             R4 R1
      268 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      270 CALL                             R3 2 0
      271 GETTABLEKS                       R4 R0 K43 ["VideoContent"]
      273 GETTABLEKS                       R4 R4 K44 ["Uri"]
      275 ORK                              R3 R4 K36 [""]
      276 SETTABLEKS                       R3 R1 K3 ["Asset"]
      278 GETTABLEKS                       R3 R0 K5 ["Volume"]
      280 SETTABLEKS                       R3 R1 K5 ["Volume"]
      282 LOADB                            R2 1
      283 JUMP                             ; [+59]
      284 LOADK                            R5 K45 ["AudioDeviceOutput"]
      285 NAMECALL                         R3 R0 K14 ["IsA"]
      287 CALL                             R3 2 1
      288 JUMPIFNOT                        R3 ; [+14]
      289 LOADB                            R3 1
      290 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      292 LOADB                            R3 0
      293 LOADN                            R4 0
      294 LOADN                            R5 1
      295 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      297 SETTABLEKS                       R4 R1 K7 ["Distance"]
      299 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      301 LOADB                            R2 1
      302 JUMP                             ; [+40]
      303 LOADK                            R5 K46 ["AudioEmitter"]
      304 NAMECALL                         R3 R0 K14 ["IsA"]
      306 CALL                             R3 2 1
      307 JUMPIFNOT                        R3 ; [+16]
      308 LOADB                            R3 1
      309 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      311 GETUPVAL                         R3 2
      312 GETTABLEKS                       R3 R3 K47 ["getAttenuationForEmitter"]
      314 MOVE                             R4 R0
      315 CALL                             R3 1 3
      316 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      318 SETTABLEKS                       R4 R1 K7 ["Distance"]
      320 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      322 LOADB                            R2 1
      323 JUMP                             ; [+19]
      324 LOADK                            R5 K48 ["AudioAnalyzer"]
      325 NAMECALL                         R3 R0 K14 ["IsA"]
      327 CALL                             R3 2 1
      328 JUMPIF                           R3 ; [+10]
      329 LOADK                            R5 K49 ["AudioRecorder"]
      330 NAMECALL                         R3 R0 K14 ["IsA"]
      332 CALL                             R3 2 1
      333 JUMPIF                           R3 ; [+5]
      334 LOADK                            R5 K50 ["AudioSpeechToText"]
      335 NAMECALL                         R3 R0 K14 ["IsA"]
      337 CALL                             R3 2 1
      338 JUMPIFNOT                        R3 ; [+4]
      339 LOADB                            R3 1
      340 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      342 LOADB                            R2 1
      343 JUMPIFNOT                        R2 ; [+18]
      344 GETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      346 JUMPIF                           R3 ; [+15]
      347 GETUPVAL                         R3 1
      348 GETTABLEKS                       R3 R3 K51 ["_updateActivityDependentWirableData"]
      350 MOVE                             R4 R0
      351 MOVE                             R5 R1
      352 CALL                             R3 2 0
      353 GETUPVAL                         R3 2
      354 GETTABLEKS                       R3 R3 K52 ["getTargetsForWirable"]
      356 MOVE                             R4 R0
      357 NEWCLOSURE                       R5 P2
      358 CAPTURE                          UPVAL U3
      359 CALL                             R3 2 1
      360 SETTABLEKS                       R3 R1 K11 ["Targets"]
      362 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+8]
        1 GETTABLEKS                       R2 R0 K0 ["Active"]
        3 JUMPIF                           R2 ; [+5]
        4 GETIMPORT                        R2 K3 [os.clock]
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R0 K4 ["TimeBecameActive"]
        9 SETTABLEKS                       R1 R0 K0 ["Active"]
       11 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["Active"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["getAudibilityForWirable"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMP                             ; [+1]
        9 LOADN                            R2 -1
       10 SETTABLEKS                       R2 R1 K2 ["PotentialAudibility"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["_getMetering"]
       15 MOVE                             R3 R0
       16 GETTABLEKS                       R4 R1 K0 ["Active"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R1 K4 ["Metering"]
       21 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetPeakLevel"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_14:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K0 ["_updateInstanceData"]
        9 MOVE                             R7 R4
       10 MOVE                             R8 R5
       11 CALL                             R6 2 0
       12 GETTABLEKS                       R6 R5 K1 ["Active"]
       14 JUMPIFNOT                        R6 ; [+12]
       15 GETTABLEKS                       R6 R5 K2 ["Targets"]
       17 JUMPIFNOT                        R6 ; [+9]
       18 GETTABLEKS                       R6 R5 K2 ["Targets"]
       20 LOADNIL                          R7
       21 LOADNIL                          R8
       22 FORGPREP                         R6
       23 LOADB                            R11 1
       24 SETTABLE                         R11 R0 R9
       25 FORGLOOP                         R6 2 ; [-3]
       27 FORGLOOP                         R1 2 ; [-22]
       29 NEWTABLE                         R1 0 0
       31 GETUPVAL                         R2 0
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLEKS                       R7 R6 K3 ["ShouldBeTargeted"]
       37 JUMPIFNOT                        R7 ; [+18]
       38 GETUPVAL                         R7 1
       39 GETTABLEKS                       R7 R7 K4 ["_setDataActive"]
       41 MOVE                             R8 R6
       42 GETTABLEKS                       R11 R6 K5 ["Id"]
       44 GETTABLE                         R10 R0 R11
       45 JUMPIFEQKB                       R10 TRUE ; [+2]
       47 LOADB                            R9 0 +1
       48 LOADB                            R9 1
       49 CALL                             R7 2 0
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K6 ["_updateActivityDependentWirableData"]
       53 MOVE                             R8 R5
       54 MOVE                             R9 R6
       55 CALL                             R7 2 0
       56 GETTABLEKS                       R7 R6 K1 ["Active"]
       58 JUMPIFNOT                        R7 ; [+3]
       59 GETTABLEKS                       R7 R6 K5 ["Id"]
       61 SETTABLE                         R6 R1 R7
       62 FORGLOOP                         R2 2 ; [-28]
       64 GETUPVAL                         R2 1
       65 GETTABLEKS                       R2 R2 K7 ["_updateDetachedPlaybacks"]
       67 CALL                             R2 0 0
       68 GETUPVAL                         R2 2
       69 LOADNIL                          R3
       70 LOADNIL                          R4
       71 FORGPREP                         R2
       72 GETTABLEKS                       R7 R6 K5 ["Id"]
       74 SETTABLE                         R6 R1 R7
       75 FORGLOOP                         R2 2 ; [-4]
       77 GETIMPORT                        R2 K9 [pcall]
       79 DUPCLOSURE                       R3 K10 [PROTO_13]
       80 CAPTURE                          UPVAL U3
       81 CALL                             R2 1 2
       82 JUMPIF                           R2 ; [+1]
       83 LOADN                            R3 0
       84 MOVE                             R4 R1
       85 MOVE                             R5 R3
       86 RETURN                           R4 2

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDetachedPlaybackData"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_19:
        0 GETIMPORT                        R0 K1 [pcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_18]
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

PROTO_20:
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

PROTO_21:
        0 SETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["_teardownAllMetering"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_teardownMetering"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["_setUpMetering"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_25:
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

PROTO_26:
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

PROTO_27:
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

PROTO_28:
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

PROTO_29:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R3 0
        3 GETTABLE                         R2 R3 R0
        4 SETLIST                          R1 R2 1 [1]
        6 RETURN                           R1 1

PROTO_30:
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
       79 NEWTABLE                         R20 32 0
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
      102 CAPTURE                          VAL R20
      103 CAPTURE                          VAL R2
      104 CAPTURE                          REF R12
      105 SETTABLEKS                       R21 R20 K56 ["_updateInstanceData"]
      107 DUPCLOSURE                       R21 K57 [PROTO_11]
      108 SETTABLEKS                       R21 R20 K58 ["_setDataActive"]
      110 DUPCLOSURE                       R21 K59 [PROTO_12]
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R20
      113 SETTABLEKS                       R21 R20 K60 ["_updateActivityDependentWirableData"]
      115 NEWCLOSURE                       R21 P9
      116 CAPTURE                          REF R12
      117 CAPTURE                          VAL R20
      118 CAPTURE                          REF R14
      119 CAPTURE                          VAL R4
      120 SETTABLEKS                       R21 R20 K61 ["updateInstances"]
      122 NEWCLOSURE                       R21 P10
      123 CAPTURE                          REF R12
      124 CAPTURE                          REF R13
      125 CAPTURE                          VAL R20
      126 SETTABLEKS                       R21 R20 K62 ["removeInstance"]
      128 NEWCLOSURE                       R21 P11
      129 CAPTURE                          REF R14
      130 CAPTURE                          VAL R5
      131 CAPTURE                          REF R7
      132 SETTABLEKS                       R21 R20 K63 ["_addDetachedPlayback"]
      134 NEWCLOSURE                       R21 P12
      135 CAPTURE                          REF R13
      136 CAPTURE                          VAL R11
      137 CAPTURE                          REF R15
      138 SETTABLEKS                       R21 R20 K64 ["_updateDetachedData"]
      140 NEWCLOSURE                       R21 P13
      141 CAPTURE                          VAL R4
      142 CAPTURE                          REF R14
      143 CAPTURE                          VAL R20
      144 SETTABLEKS                       R21 R20 K65 ["_updateDetachedPlaybacks"]
      146 NEWCLOSURE                       R21 P14
      147 CAPTURE                          REF R14
      148 CAPTURE                          REF R13
      149 CAPTURE                          REF R15
      150 SETTABLEKS                       R21 R20 K66 ["_removeDetachedPlayback"]
      152 NEWCLOSURE                       R21 P15
      153 CAPTURE                          REF R19
      154 CAPTURE                          VAL R20
      155 SETTABLEKS                       R21 R20 K67 ["setMeteringEnabled"]
      157 NEWCLOSURE                       R21 P16
      158 CAPTURE                          REF R16
      159 CAPTURE                          VAL R3
      160 CAPTURE                          REF R17
      161 CAPTURE                          REF R18
      162 CAPTURE                          VAL R20
      163 SETTABLEKS                       R21 R20 K68 ["_setUpMetering"]
      165 NEWCLOSURE                       R21 P17
      166 CAPTURE                          REF R19
      167 CAPTURE                          REF R17
      168 CAPTURE                          VAL R20
      169 SETTABLEKS                       R21 R20 K69 ["_getMetering"]
      171 NEWCLOSURE                       R21 P18
      172 CAPTURE                          REF R17
      173 CAPTURE                          REF R18
      174 SETTABLEKS                       R21 R20 K70 ["_teardownMetering"]
      176 NEWCLOSURE                       R21 P19
      177 CAPTURE                          REF R18
      178 CAPTURE                          VAL R3
      179 CAPTURE                          REF R17
      180 CAPTURE                          REF R16
      181 SETTABLEKS                       R21 R20 K71 ["_teardownAllMetering"]
      183 NEWCLOSURE                       R21 P20
      184 CAPTURE                          REF R13
      185 SETTABLEKS                       R21 R20 K72 ["getInstancesToSelectForId"]
      187 NEWCLOSURE                       R21 P21
      188 CAPTURE                          REF R12
      189 CAPTURE                          REF R15
      190 SETTABLEKS                       R21 R20 K73 ["getIdsToSelectForInstances"]
      192 CLOSEUPVALS                      R7
      193 RETURN                           R20 1
