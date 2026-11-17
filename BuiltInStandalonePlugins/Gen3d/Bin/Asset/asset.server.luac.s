PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K1 ["Destroy"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 GETTABLEKS                       R0 R0 K2 ["destroy"]
       19 CALL                             R0 0 0
       20 GETUPVAL                         R0 3
       21 JUMPIFNOT                        R0 ; [+4]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K2 ["destroy"]
       25 CALL                             R0 0 0
       26 GETUPVAL                         R0 4
       27 JUMPIFNOT                        R0 ; [+4]
       28 GETUPVAL                         R0 4
       29 GETTABLEKS                       R0 R0 K2 ["destroy"]
       31 CALL                             R0 0 0
       32 GETUPVAL                         R0 5
       33 JUMPIFNOT                        R0 ; [+4]
       34 GETUPVAL                         R0 5
       35 GETTABLEKS                       R0 R0 K2 ["destroy"]
       37 CALL                             R0 0 0
       38 GETUPVAL                         R0 6
       39 GETTABLEKS                       R0 R0 K2 ["destroy"]
       41 CALL                             R0 0 0
       42 GETUPVAL                         R0 7
       43 GETTABLEKS                       R0 R0 K2 ["destroy"]
       45 CALL                             R0 0 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [script]
        7 LOADK                            R2 K4 ["Gen3d"]
        8 NAMECALL                         R0 R0 K5 ["FindFirstAncestor"]
       10 CALL                             R0 2 1
       11 GETIMPORT                        R1 K7 [require]
       13 GETTABLEKS                       R2 R0 K8 ["Packages"]
       15 GETTABLEKS                       R2 R2 K9 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K10 ["launch"]
       20 LOADK                            R3 K4 ["Gen3d"]
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R2 R1 K12 ["isCli"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+1]
       28 RETURN                           R0 0
       29 GETIMPORT                        R2 K7 [require]
       31 GETTABLEKS                       R3 R0 K13 ["Bin"]
       33 GETTABLEKS                       R3 R3 K14 ["Common"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableTextureGenStudio"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+1]
       42 RETURN                           R0 0
       43 GETIMPORT                        R3 K18 [game]
       45 LOADK                            R5 K19 ["RunService"]
       46 NAMECALL                         R3 R3 K20 ["GetService"]
       48 CALL                             R3 2 1
       49 NAMECALL                         R4 R3 K21 ["IsEdit"]
       51 CALL                             R4 1 1
       52 JUMPIF                           R4 ; [+1]
       53 RETURN                           R0 0
       54 GETIMPORT                        R4 K18 [game]
       56 LOADK                            R6 K22 ["CoreGui"]
       57 NAMECALL                         R4 R4 K20 ["GetService"]
       59 CALL                             R4 2 1
       60 NAMECALL                         R4 R4 K23 ["GetChildren"]
       62 CALL                             R4 1 3
       63 FORGPREP                         R4
       64 GETTABLEKS                       R9 R8 K24 ["Name"]
       66 JUMPIFNOTEQKS                    R9 K4 ["Gen3d"] ; [+4]
       68 NAMECALL                         R9 R8 K25 ["Destroy"]
       70 CALL                             R9 1 0
       71 FORGLOOP                         R4 2 ; [-8]
       73 GETIMPORT                        R4 K18 [game]
       75 LOADK                            R6 K26 ["HttpService"]
       76 NAMECALL                         R4 R4 K20 ["GetService"]
       78 CALL                             R4 2 1
       79 GETIMPORT                        R5 K7 [require]
       81 GETTABLEKS                       R6 R0 K13 ["Bin"]
       83 GETTABLEKS                       R6 R6 K14 ["Common"]
       85 GETTABLEKS                       R6 R6 K27 ["StudioNetworking"]
       87 CALL                             R5 1 1
       88 GETIMPORT                        R6 K7 [require]
       90 GETTABLEKS                       R7 R0 K11 ["Src"]
       92 GETTABLEKS                       R7 R7 K28 ["Host"]
       94 GETTABLEKS                       R7 R7 K29 ["createSelectionHost"]
       96 CALL                             R6 1 1
       97 GETIMPORT                        R7 K7 [require]
       99 GETTABLEKS                       R8 R0 K11 ["Src"]
      101 GETTABLEKS                       R8 R8 K28 ["Host"]
      103 GETTABLEKS                       R8 R8 K30 ["buildTextureGenServices"]
      105 CALL                             R7 1 1
      106 GETIMPORT                        R8 K7 [require]
      108 GETTABLEKS                       R9 R0 K11 ["Src"]
      110 GETTABLEKS                       R9 R9 K28 ["Host"]
      112 GETTABLEKS                       R9 R9 K31 ["createGenerationHost"]
      114 CALL                             R8 1 1
      115 GETIMPORT                        R9 K7 [require]
      117 GETTABLEKS                       R10 R0 K11 ["Src"]
      119 GETTABLEKS                       R10 R10 K28 ["Host"]
      121 GETTABLEKS                       R10 R10 K32 ["createSceneGenHost"]
      123 CALL                             R9 1 1
      124 GETIMPORT                        R10 K7 [require]
      126 GETTABLEKS                       R11 R0 K11 ["Src"]
      128 GETTABLEKS                       R11 R11 K28 ["Host"]
      130 GETTABLEKS                       R11 R11 K33 ["createMeshGenHost"]
      132 CALL                             R10 1 1
      133 GETIMPORT                        R11 K7 [require]
      135 GETTABLEKS                       R12 R0 K11 ["Src"]
      137 GETTABLEKS                       R12 R12 K28 ["Host"]
      139 GETTABLEKS                       R12 R12 K34 ["Services"]
      141 GETTABLEKS                       R12 R12 K35 ["createMeshGenerationServices"]
      143 CALL                             R11 1 1
      144 GETIMPORT                        R12 K7 [require]
      146 GETTABLEKS                       R13 R0 K11 ["Src"]
      148 GETTABLEKS                       R13 R13 K28 ["Host"]
      150 GETTABLEKS                       R13 R13 K34 ["Services"]
      152 GETTABLEKS                       R13 R13 K36 ["createLayoutGenServices"]
      154 CALL                             R12 1 1
      155 GETIMPORT                        R13 K7 [require]
      157 GETTABLEKS                       R14 R0 K8 ["Packages"]
      159 GETTABLEKS                       R14 R14 K37 ["LoadingSkeleton3D"]
      161 CALL                             R13 1 1
      162 LOADB                            R16 0
      163 NAMECALL                         R14 R4 K38 ["GenerateGUID"]
      165 CALL                             R14 2 1
      166 GETIMPORT                        R15 K7 [require]
      168 GETTABLEKS                       R16 R0 K8 ["Packages"]
      170 GETTABLEKS                       R16 R16 K39 ["React"]
      172 CALL                             R15 1 1
      173 GETIMPORT                        R16 K7 [require]
      175 GETTABLEKS                       R17 R0 K8 ["Packages"]
      177 GETTABLEKS                       R17 R17 K40 ["ReactRoblox"]
      179 CALL                             R16 1 1
      180 GETIMPORT                        R17 K7 [require]
      182 GETTABLEKS                       R18 R0 K11 ["Src"]
      184 GETTABLEKS                       R18 R18 K41 ["CoreGuiRoot"]
      186 CALL                             R17 1 1
      187 GETTABLEKS                       R18 R2 K42 ["getFFlagDebugLogAssistantUI"]
      189 CALL                             R18 0 1
      190 JUMPIFNOT                        R18 ; [+8]
      191 GETIMPORT                        R18 K44 [print]
      193 LOADK                            R19 K45 ["[Gen3d][asset.legacy] Edit DM entry running editSessionId=%*"]
      194 MOVE                             R21 R14
      195 NAMECALL                         R19 R19 K46 ["format"]
      197 CALL                             R19 2 1
      198 CALL                             R18 1 0
      199 GETTABLEKS                       R18 R5 K47 ["create"]
      201 DUPTABLE                         R19 K53 [{[1], ["isGuest"] = False, ["isHost"] = True, ["useSuspendOverride"] = True}]
      202 GETIMPORT                        R20 K1 [plugin]
      204 SETTABLEKS                       R20 R19 K0 ["plugin"]
      206 CALL                             R18 1 1
      207 MOVE                             R19 R7
      208 GETIMPORT                        R20 K1 [plugin]
      210 CALL                             R19 1 2
      211 MOVE                             R21 R6
      212 MOVE                             R22 R18
      213 GETTABLEKS                       R23 R20 K54 ["registerInstance"]
      215 MOVE                             R24 R14
      216 CALL                             R21 3 1
      217 GETTABLEKS                       R22 R13 K55 ["destroyAll"]
      219 CALL                             R22 0 0
      220 MOVE                             R22 R8
      221 MOVE                             R23 R18
      222 MOVE                             R24 R19
      223 MOVE                             R25 R20
      224 MOVE                             R26 R21
      225 GETIMPORT                        R27 K1 [plugin]
      227 CALL                             R22 5 1
      228 GETTABLEKS                       R24 R2 K56 ["getFFlagGen3dSceneGenSurface"]
      230 CALL                             R24 0 1
      231 JUMPIFNOT                        R24 ; [+11]
      232 MOVE                             R23 R9
      233 MOVE                             R24 R18
      234 GETIMPORT                        R25 K1 [plugin]
      236 MOVE                             R26 R14
      237 MOVE                             R27 R12
      238 GETIMPORT                        R28 K1 [plugin]
      240 CALL                             R27 1 -1
      241 CALL                             R23 -1 1
      242 JUMP                             ; [+1]
      243 LOADNIL                          R23
      244 GETTABLEKS                       R25 R2 K57 ["getFFlagGen3dMeshGen"]
      246 CALL                             R25 0 1
      247 JUMPIFNOT                        R25 ; [+6]
      248 MOVE                             R24 R10
      249 MOVE                             R25 R18
      250 MOVE                             R26 R11
      251 CALL                             R26 0 -1
      252 CALL                             R24 -1 1
      253 JUMP                             ; [+1]
      254 LOADNIL                          R24
      255 GETIMPORT                        R25 K60 [Instance.new]
      257 LOADK                            R26 K61 ["Folder"]
      258 CALL                             R25 1 1
      259 LOADK                            R26 K4 ["Gen3d"]
      260 SETTABLEKS                       R26 R25 K24 ["Name"]
      262 GETIMPORT                        R26 K18 [game]
      264 LOADK                            R28 K22 ["CoreGui"]
      265 NAMECALL                         R26 R26 K20 ["GetService"]
      267 CALL                             R26 2 1
      268 SETTABLEKS                       R26 R25 K62 ["Parent"]
      270 GETIMPORT                        R26 K60 [Instance.new]
      272 LOADK                            R27 K63 ["ScreenGui"]
      273 CALL                             R26 1 1
      274 LOADK                            R27 K64 ["Gen3dGui"]
      275 SETTABLEKS                       R27 R26 K24 ["Name"]
      277 GETIMPORT                        R27 K68 [Enum.ZIndexBehavior.Sibling]
      279 SETTABLEKS                       R27 R26 K66 ["ZIndexBehavior"]
      281 LOADN                            R27 1000
      282 SETTABLEKS                       R27 R26 K69 ["DisplayOrder"]
      284 SETTABLEKS                       R25 R26 K62 ["Parent"]
      286 GETTABLEKS                       R27 R16 K70 ["createRoot"]
      288 MOVE                             R28 R26
      289 CALL                             R27 1 1
      290 GETTABLEKS                       R30 R15 K71 ["createElement"]
      292 MOVE                             R31 R17
      293 DUPTABLE                         R32 K74 [{"Plugin", "EditSessionId"}]
      294 GETIMPORT                        R33 K1 [plugin]
      296 SETTABLEKS                       R33 R32 K72 ["Plugin"]
      298 SETTABLEKS                       R14 R32 K73 ["EditSessionId"]
      300 CALL                             R30 2 -1
      301 NAMECALL                         R28 R27 K75 ["render"]
      303 CALL                             R28 -1 0
      304 GETTABLEKS                       R28 R2 K42 ["getFFlagDebugLogAssistantUI"]
      306 CALL                             R28 0 1
      307 JUMPIFNOT                        R28 ; [+4]
      308 GETIMPORT                        R28 K44 [print]
      310 LOADK                            R29 K76 ["[Gen3d][asset.legacy] CoreGuiRoot mounted into CoreGui.Gen3d.Gen3dGui"]
      311 CALL                             R28 1 0
      312 GETIMPORT                        R28 K1 [plugin]
      314 GETTABLEKS                       R28 R28 K77 ["Unloading"]
      316 NEWCLOSURE                       R30 P0
      317 CAPTURE                          REF R27
      318 CAPTURE                          REF R25
      319 CAPTURE                          VAL R22
      320 CAPTURE                          VAL R23
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R20
      323 CAPTURE                          VAL R21
      324 CAPTURE                          VAL R5
      325 NAMECALL                         R28 R28 K78 ["Connect"]
      327 CALL                             R28 2 0
      328 CLOSEUPVALS                      R25
      329 RETURN                           R0 0
