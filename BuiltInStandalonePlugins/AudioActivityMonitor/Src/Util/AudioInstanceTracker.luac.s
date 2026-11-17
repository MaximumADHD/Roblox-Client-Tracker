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
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R0
       28 FASTPCALL                        pcall 1 ; [+2]
       29 GETIMPORT                        R2 K3 [pcall]
       31 CALL                             R2 1 2
       32 JUMPIFNOT                        R2 ; [+2]
       33 JUMPIFNOT                        R3 ; [+1]
       34 RETURN                           R0 0
       35 GETIMPORT                        R4 K6 [table.clone]
       37 GETUPVAL                         R5 3
       38 CALL                             R4 1 1
       39 GETUPVAL                         R6 4
       40 GETUPVAL                         R8 4
       41 ADDK                             R7 R8 K7 [1]
       42 SETUPVAL                         R7 4
       43 GETUPVAL                         R8 4
       44 FASTCALL1                        TOSTRING R8 ; [+2]
       45 GETIMPORT                        R7 K9 [tostring]
       47 CALL                             R7 1 1
       48 FASTCALL1                        TOSTRING R6 ; [+3]
       49 MOVE                             R9 R6
       50 GETIMPORT                        R8 K9 [tostring]
       52 CALL                             R8 1 1
       53 JUMPIFNOTEQ                      R7 R8 ; [+3]
       55 LOADN                            R7 0
       56 SETUPVAL                         R7 4
       57 FASTCALL1                        TOSTRING R6 ; [+3]
       58 MOVE                             R8 R6
       59 GETIMPORT                        R7 K9 [tostring]
       61 CALL                             R7 1 1
       62 MOVE                             R5 R7
       63 SETTABLEKS                       R5 R4 K10 ["Id"]
       65 GETUPVAL                         R5 5
       66 GETTABLEKS                       R6 R4 K10 ["Id"]
       68 SETTABLE                         R0 R5 R6
       69 GETUPVAL                         R5 0
       70 SETTABLE                         R4 R5 R0
       71 GETUPVAL                         R5 6
       72 GETTABLEKS                       R5 R5 K11 ["_updateInstanceData"]
       74 MOVE                             R6 R0
       75 GETUPVAL                         R8 0
       76 GETTABLE                         R7 R8 R0
       77 CALL                             R5 2 0
       78 RETURN                           R0 0

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
       48 JUMPIFNOT                        R3 ; [+52]
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
       91 NEWCLOSURE                       R4 P0
       92 CAPTURE                          VAL R0
       93 FASTPCALL                        pcall 1 ; [+2]
       94 GETIMPORT                        R3 K24 [pcall]
       96 CALL                             R3 1 2
       97 JUMPIFNOT                        R3 ; [+247]
       98 SETTABLEKS                       R4 R1 K4 ["PlaybackState"]
      100 JUMP                             ; [+244]
      101 LOADK                            R5 K25 ["VideoFrame"]
      102 NAMECALL                         R3 R0 K14 ["IsA"]
      104 CALL                             R3 2 1
      105 JUMPIFNOT                        R3 ; [+41]
      106 GETUPVAL                         R3 1
      107 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      109 MOVE                             R4 R1
      110 GETTABLEKS                       R5 R0 K16 ["Playing"]
      112 CALL                             R3 2 0
      113 GETTABLEKS                       R3 R0 K26 ["Video"]
      115 SETTABLEKS                       R3 R1 K3 ["Asset"]
      117 GETTABLEKS                       R3 R0 K5 ["Volume"]
      119 SETTABLEKS                       R3 R1 K5 ["Volume"]
      121 GETUPVAL                         R3 2
      122 GETTABLEKS                       R3 R3 K27 ["getAttenuationForVideoFrame"]
      124 MOVE                             R4 R0
      125 CALL                             R3 1 3
      126 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      128 SETTABLEKS                       R4 R1 K7 ["Distance"]
      130 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      132 GETUPVAL                         R3 2
      133 GETTABLEKS                       R3 R3 K28 ["getAudibilityForVideoFrame"]
      135 MOVE                             R4 R0
      136 GETTABLEKS                       R5 R1 K20 ["Active"]
      138 GETTABLEKS                       R6 R1 K5 ["Volume"]
      140 CALL                             R3 3 1
      141 SETTABLEKS                       R3 R1 K9 ["PotentialAudibility"]
      143 LOADN                            R3 0
      144 SETTABLEKS                       R3 R1 K10 ["Metering"]
      146 JUMP                             ; [+198]
      147 LOADK                            R5 K29 ["AudioPlayer"]
      148 NAMECALL                         R3 R0 K14 ["IsA"]
      150 CALL                             R3 2 1
      151 JUMPIFNOT                        R3 ; [+26]
      152 GETUPVAL                         R3 1
      153 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      155 MOVE                             R4 R1
      156 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      158 CALL                             R3 2 0
      159 GETTABLEKS                       R3 R0 K3 ["Asset"]
      161 SETTABLEKS                       R3 R1 K3 ["Asset"]
      163 GETTABLEKS                       R3 R0 K5 ["Volume"]
      165 SETTABLEKS                       R3 R1 K5 ["Volume"]
      167 LOADB                            R2 1
      168 NEWCLOSURE                       R4 P1
      169 CAPTURE                          VAL R0
      170 FASTPCALL                        pcall 1 ; [+2]
      171 GETIMPORT                        R3 K24 [pcall]
      173 CALL                             R3 1 2
      174 JUMPIFNOT                        R3 ; [+170]
      175 SETTABLEKS                       R4 R1 K4 ["PlaybackState"]
      177 JUMP                             ; [+167]
      178 LOADK                            R5 K31 ["AudioDeviceInput"]
      179 NAMECALL                         R3 R0 K14 ["IsA"]
      181 CALL                             R3 2 1
      182 JUMPIFNOT                        R3 ; [+32]
      183 GETUPVAL                         R3 1
      184 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      186 MOVE                             R4 R1
      187 GETTABLEKS                       R5 R0 K32 ["IsReady"]
      189 JUMPIFNOT                        R5 ; [+7]
      190 GETTABLEKS                       R6 R0 K33 ["Muted"]
      192 NOT                              R5 R6
      193 JUMPIFNOT                        R5 ; [+3]
      194 GETTABLEKS                       R6 R0 K34 ["MutedByLocalUser"]
      196 NOT                              R5 R6
      197 CALL                             R3 2 0
      198 GETTABLEKS                       R4 R0 K35 ["Player"]
      200 JUMPIFNOT                        R4 ; [+5]
      201 GETTABLEKS                       R3 R0 K35 ["Player"]
      203 GETTABLEKS                       R3 R3 K0 ["Name"]
      205 JUMP                             ; [+1]
      206 LOADK                            R3 K36 [""]
      207 SETTABLEKS                       R3 R1 K3 ["Asset"]
      209 GETTABLEKS                       R3 R0 K5 ["Volume"]
      211 SETTABLEKS                       R3 R1 K5 ["Volume"]
      213 LOADB                            R2 1
      214 JUMP                             ; [+130]
      215 LOADK                            R5 K37 ["AudioListener"]
      216 NAMECALL                         R3 R0 K14 ["IsA"]
      218 CALL                             R3 2 1
      219 JUMPIFNOT                        R3 ; [+16]
      220 GETUPVAL                         R3 1
      221 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      223 MOVE                             R4 R1
      224 NAMECALL                         R7 R0 K38 ["GetInteractingEmitters"]
      226 CALL                             R7 1 1
      227 LENGTH                           R6 R7
      228 LOADN                            R7 0
      229 JUMPIFLT                         R7 R6 ; [+2]
      231 LOADB                            R5 0 +1
      232 LOADB                            R5 1
      233 CALL                             R3 2 0
      234 LOADB                            R2 1
      235 JUMP                             ; [+109]
      236 LOADK                            R5 K39 ["AudioTextToSpeech"]
      237 NAMECALL                         R3 R0 K14 ["IsA"]
      239 CALL                             R3 2 1
      240 JUMPIFNOT                        R3 ; [+20]
      241 GETUPVAL                         R3 1
      242 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      244 MOVE                             R4 R1
      245 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      247 CALL                             R3 2 0
      248 LOADK                            R4 K40 ["\""]
      249 GETTABLEKS                       R5 R0 K41 ["Text"]
      251 LOADK                            R6 K40 ["\""]
      252 CONCAT                           R3 R4 R6
      253 SETTABLEKS                       R3 R1 K3 ["Asset"]
      255 GETTABLEKS                       R3 R0 K5 ["Volume"]
      257 SETTABLEKS                       R3 R1 K5 ["Volume"]
      259 LOADB                            R2 1
      260 JUMP                             ; [+84]
      261 LOADK                            R5 K42 ["VideoPlayer"]
      262 NAMECALL                         R3 R0 K14 ["IsA"]
      264 CALL                             R3 2 1
      265 JUMPIFNOT                        R3 ; [+20]
      266 GETUPVAL                         R3 1
      267 GETTABLEKS                       R3 R3 K15 ["_setDataActive"]
      269 MOVE                             R4 R1
      270 GETTABLEKS                       R5 R0 K30 ["IsPlaying"]
      272 CALL                             R3 2 0
      273 GETTABLEKS                       R4 R0 K43 ["VideoContent"]
      275 GETTABLEKS                       R4 R4 K44 ["Uri"]
      277 ORK                              R3 R4 K36 [""]
      278 SETTABLEKS                       R3 R1 K3 ["Asset"]
      280 GETTABLEKS                       R3 R0 K5 ["Volume"]
      282 SETTABLEKS                       R3 R1 K5 ["Volume"]
      284 LOADB                            R2 1
      285 JUMP                             ; [+59]
      286 LOADK                            R5 K45 ["AudioDeviceOutput"]
      287 NAMECALL                         R3 R0 K14 ["IsA"]
      289 CALL                             R3 2 1
      290 JUMPIFNOT                        R3 ; [+14]
      291 LOADB                            R3 1
      292 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      294 LOADB                            R3 0
      295 LOADN                            R4 0
      296 LOADN                            R5 1
      297 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      299 SETTABLEKS                       R4 R1 K7 ["Distance"]
      301 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      303 LOADB                            R2 1
      304 JUMP                             ; [+40]
      305 LOADK                            R5 K46 ["AudioEmitter"]
      306 NAMECALL                         R3 R0 K14 ["IsA"]
      308 CALL                             R3 2 1
      309 JUMPIFNOT                        R3 ; [+16]
      310 LOADB                            R3 1
      311 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      313 GETUPVAL                         R3 2
      314 GETTABLEKS                       R3 R3 K47 ["getAttenuationForEmitter"]
      316 MOVE                             R4 R0
      317 CALL                             R3 1 3
      318 SETTABLEKS                       R3 R1 K6 ["Is3D"]
      320 SETTABLEKS                       R4 R1 K7 ["Distance"]
      322 SETTABLEKS                       R5 R1 K8 ["AttenuationFactor"]
      324 LOADB                            R2 1
      325 JUMP                             ; [+19]
      326 LOADK                            R5 K48 ["AudioAnalyzer"]
      327 NAMECALL                         R3 R0 K14 ["IsA"]
      329 CALL                             R3 2 1
      330 JUMPIF                           R3 ; [+10]
      331 LOADK                            R5 K49 ["AudioRecorder"]
      332 NAMECALL                         R3 R0 K14 ["IsA"]
      334 CALL                             R3 2 1
      335 JUMPIF                           R3 ; [+5]
      336 LOADK                            R5 K50 ["AudioSpeechToText"]
      337 NAMECALL                         R3 R0 K14 ["IsA"]
      339 CALL                             R3 2 1
      340 JUMPIFNOT                        R3 ; [+4]
      341 LOADB                            R3 1
      342 SETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      344 LOADB                            R2 1
      345 JUMPIFNOT                        R2 ; [+18]
      346 GETTABLEKS                       R3 R1 K12 ["ShouldBeTargeted"]
      348 JUMPIF                           R3 ; [+15]
      349 GETUPVAL                         R3 1
      350 GETTABLEKS                       R3 R3 K51 ["_updateActivityDependentWirableData"]
      352 MOVE                             R4 R0
      353 MOVE                             R5 R1
      354 CALL                             R3 2 0
      355 GETUPVAL                         R3 2
      356 GETTABLEKS                       R3 R3 K52 ["getTargetsForWirable"]
      358 MOVE                             R4 R0
      359 NEWCLOSURE                       R5 P2
      360 CAPTURE                          UPVAL U3
      361 CALL                             R3 2 1
      362 SETTABLEKS                       R3 R1 K11 ["Targets"]
      364 RETURN                           R0 0

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
       77 DUPCLOSURE                       R3 K8 [PROTO_13]
       78 CAPTURE                          UPVAL U3
       79 FASTPCALL                        pcall 1 ; [+2]
       80 GETIMPORT                        R2 K10 [pcall]
       82 CALL                             R2 1 2
       83 JUMPIF                           R2 ; [+1]
       84 LOADN                            R3 0
       85 MOVE                             R4 R1
       86 MOVE                             R5 R3
       87 RETURN                           R4 2

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
        0 DUPCLOSURE                       R1 K0 [PROTO_18]
        1 CAPTURE                          UPVAL U0
        2 FASTPCALL                        pcall 1 ; [+2]
        3 GETIMPORT                        R0 K2 [pcall]
        5 CALL                             R0 1 2
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLE                         R7 R1 R5
       13 JUMPIF                           R7 ; [+5]
       14 GETUPVAL                         R7 2
       15 GETTABLEKS                       R7 R7 K3 ["_removeDetachedPlayback"]
       17 MOVE                             R8 R5
       18 CALL                             R7 1 0
       19 FORGLOOP                         R2 2 ; [-8]
       21 MOVE                             R2 R1
       22 LOADNIL                          R3
       23 LOADNIL                          R4
       24 FORGPREP                         R2
       25 GETUPVAL                         R8 1
       26 GETTABLE                         R7 R8 R5
       27 JUMPIF                           R7 ; [+6]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R7 R7 K4 ["_addDetachedPlayback"]
       31 MOVE                             R8 R5
       32 MOVE                             R9 R6
       33 CALL                             R7 2 0
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K5 ["_updateDetachedData"]
       37 MOVE                             R8 R6
       38 GETUPVAL                         R10 1
       39 GETTABLE                         R9 R10 R5
       40 CALL                             R7 2 0
       41 FORGLOOP                         R2 2 ; [-17]
       43 RETURN                           R0 0

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
       21 NEWCLOSURE                       R2 P0
       22 CAPTURE                          VAL R0
       23 FASTPCALL                        pcall 1 ; [+2]
       24 GETIMPORT                        R1 K11 [pcall]
       26 CALL                             R1 1 2
       27 JUMPIFNOT                        R1 ; [+24]
       28 JUMPIFNOT                        R2 ; [+23]
       29 GETIMPORT                        R3 K2 [Instance.new]
       31 LOADK                            R4 K12 ["AudioAnalyzer"]
       32 CALL                             R3 1 1
       33 LOADB                            R4 0
       34 SETTABLEKS                       R4 R3 K13 ["SpectrumEnabled"]
       36 GETUPVAL                         R4 0
       37 SETTABLEKS                       R4 R3 K6 ["Parent"]
       39 GETUPVAL                         R4 2
       40 SETTABLE                         R3 R4 R0
       41 GETIMPORT                        R4 K2 [Instance.new]
       43 LOADK                            R5 K14 ["Wire"]
       44 CALL                             R4 1 1
       45 SETTABLEKS                       R0 R4 K15 ["SourceInstance"]
       47 SETTABLEKS                       R3 R4 K16 ["TargetInstance"]
       49 SETTABLEKS                       R3 R4 K6 ["Parent"]
       51 RETURN                           R0 0
       52 NEWCLOSURE                       R4 P1
       53 CAPTURE                          VAL R0
       54 FASTPCALL                        pcall 1 ; [+2]
       55 GETIMPORT                        R3 K11 [pcall]
       57 CALL                             R3 1 2
       58 JUMPIFNOT                        R3 ; [+48]
       59 JUMPIFNOT                        R4 ; [+47]
       60 GETIMPORT                        R5 K2 [Instance.new]
       62 LOADK                            R6 K12 ["AudioAnalyzer"]
       63 CALL                             R5 1 1
       64 LOADB                            R6 0
       65 SETTABLEKS                       R6 R5 K13 ["SpectrumEnabled"]
       67 GETUPVAL                         R6 0
       68 SETTABLEKS                       R6 R5 K6 ["Parent"]
       70 GETUPVAL                         R6 2
       71 SETTABLE                         R5 R6 R0
       72 NAMECALL                         R6 R0 K17 ["GetInputPins"]
       74 CALL                             R6 1 3
       75 FORGPREP                         R6
       76 MOVE                             R13 R10
       77 NAMECALL                         R11 R0 K18 ["GetConnectedWires"]
       79 CALL                             R11 2 3
       80 FORGPREP                         R11
       81 GETIMPORT                        R16 K2 [Instance.new]
       83 LOADK                            R17 K14 ["Wire"]
       84 CALL                             R16 1 1
       85 GETTABLEKS                       R17 R15 K15 ["SourceInstance"]
       87 SETTABLEKS                       R17 R16 K15 ["SourceInstance"]
       89 SETTABLEKS                       R5 R16 K16 ["TargetInstance"]
       91 SETTABLEKS                       R5 R16 K6 ["Parent"]
       93 FORGLOOP                         R11 2 ; [-13]
       95 FORGLOOP                         R6 2 ; [-20]
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R7 R0 K19 ["WiringChanged"]
      100 NEWCLOSURE                       R9 P2
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R0
      103 NAMECALL                         R7 R7 K20 ["Connect"]
      105 CALL                             R7 2 1
      106 SETTABLE                         R7 R6 R0
      107 RETURN                           R0 0

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
