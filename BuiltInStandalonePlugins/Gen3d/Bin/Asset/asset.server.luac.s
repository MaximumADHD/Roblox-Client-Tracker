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
       33 GETTABLEKS                       R0 R0 K2 ["destroy"]
       35 CALL                             R0 0 0
       36 GETUPVAL                         R0 6
       37 GETTABLEKS                       R0 R0 K2 ["destroy"]
       39 CALL                             R0 0 0
       40 RETURN                           R0 0

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
      130 GETTABLEKS                       R11 R11 K33 ["Services"]
      132 GETTABLEKS                       R11 R11 K34 ["createLayoutGenServices"]
      134 CALL                             R10 1 1
      135 GETIMPORT                        R11 K7 [require]
      137 GETTABLEKS                       R12 R0 K8 ["Packages"]
      139 GETTABLEKS                       R12 R12 K35 ["LoadingSkeleton3D"]
      141 CALL                             R11 1 1
      142 LOADB                            R14 0
      143 NAMECALL                         R12 R4 K36 ["GenerateGUID"]
      145 CALL                             R12 2 1
      146 GETIMPORT                        R13 K7 [require]
      148 GETTABLEKS                       R14 R0 K8 ["Packages"]
      150 GETTABLEKS                       R14 R14 K37 ["React"]
      152 CALL                             R13 1 1
      153 GETIMPORT                        R14 K7 [require]
      155 GETTABLEKS                       R15 R0 K8 ["Packages"]
      157 GETTABLEKS                       R15 R15 K38 ["ReactRoblox"]
      159 CALL                             R14 1 1
      160 GETIMPORT                        R15 K7 [require]
      162 GETTABLEKS                       R16 R0 K11 ["Src"]
      164 GETTABLEKS                       R16 R16 K39 ["CoreGuiRoot"]
      166 CALL                             R15 1 1
      167 GETTABLEKS                       R16 R2 K40 ["getFFlagDebugLogAssistantUI"]
      169 CALL                             R16 0 1
      170 JUMPIFNOT                        R16 ; [+8]
      171 GETIMPORT                        R16 K42 [print]
      173 LOADK                            R17 K43 ["[Gen3d][asset.legacy] Edit DM entry running editSessionId=%*"]
      174 MOVE                             R19 R12
      175 NAMECALL                         R17 R17 K44 ["format"]
      177 CALL                             R17 2 1
      178 CALL                             R16 1 0
      179 GETTABLEKS                       R16 R5 K45 ["create"]
      181 DUPTABLE                         R17 K51 [{[1], ["isGuest"] = False, ["isHost"] = True, ["useSuspendOverride"] = True}]
      182 GETIMPORT                        R18 K1 [plugin]
      184 SETTABLEKS                       R18 R17 K0 ["plugin"]
      186 CALL                             R16 1 1
      187 MOVE                             R17 R7
      188 GETIMPORT                        R18 K1 [plugin]
      190 CALL                             R17 1 2
      191 MOVE                             R19 R6
      192 MOVE                             R20 R16
      193 GETTABLEKS                       R21 R18 K52 ["registerInstance"]
      195 MOVE                             R22 R12
      196 CALL                             R19 3 1
      197 GETTABLEKS                       R20 R11 K53 ["destroyAll"]
      199 CALL                             R20 0 0
      200 MOVE                             R20 R8
      201 MOVE                             R21 R16
      202 MOVE                             R22 R17
      203 MOVE                             R23 R18
      204 MOVE                             R24 R19
      205 GETIMPORT                        R25 K1 [plugin]
      207 CALL                             R20 5 1
      208 GETTABLEKS                       R22 R2 K54 ["getFFlagGen3dSceneGenSurface"]
      210 CALL                             R22 0 1
      211 JUMPIFNOT                        R22 ; [+11]
      212 MOVE                             R21 R9
      213 MOVE                             R22 R16
      214 GETIMPORT                        R23 K1 [plugin]
      216 MOVE                             R24 R12
      217 MOVE                             R25 R10
      218 GETIMPORT                        R26 K1 [plugin]
      220 CALL                             R25 1 -1
      221 CALL                             R21 -1 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R21
      224 GETIMPORT                        R22 K57 [Instance.new]
      226 LOADK                            R23 K58 ["Folder"]
      227 CALL                             R22 1 1
      228 LOADK                            R23 K4 ["Gen3d"]
      229 SETTABLEKS                       R23 R22 K24 ["Name"]
      231 GETIMPORT                        R23 K18 [game]
      233 LOADK                            R25 K22 ["CoreGui"]
      234 NAMECALL                         R23 R23 K20 ["GetService"]
      236 CALL                             R23 2 1
      237 SETTABLEKS                       R23 R22 K59 ["Parent"]
      239 GETIMPORT                        R23 K57 [Instance.new]
      241 LOADK                            R24 K60 ["ScreenGui"]
      242 CALL                             R23 1 1
      243 LOADK                            R24 K61 ["Gen3dGui"]
      244 SETTABLEKS                       R24 R23 K24 ["Name"]
      246 GETIMPORT                        R24 K65 [Enum.ZIndexBehavior.Sibling]
      248 SETTABLEKS                       R24 R23 K63 ["ZIndexBehavior"]
      250 LOADN                            R24 1000
      251 SETTABLEKS                       R24 R23 K66 ["DisplayOrder"]
      253 SETTABLEKS                       R22 R23 K59 ["Parent"]
      255 GETTABLEKS                       R24 R14 K67 ["createRoot"]
      257 MOVE                             R25 R23
      258 CALL                             R24 1 1
      259 GETTABLEKS                       R27 R13 K68 ["createElement"]
      261 MOVE                             R28 R15
      262 DUPTABLE                         R29 K71 [{"Plugin", "EditSessionId"}]
      263 GETIMPORT                        R30 K1 [plugin]
      265 SETTABLEKS                       R30 R29 K69 ["Plugin"]
      267 SETTABLEKS                       R12 R29 K70 ["EditSessionId"]
      269 CALL                             R27 2 -1
      270 NAMECALL                         R25 R24 K72 ["render"]
      272 CALL                             R25 -1 0
      273 GETTABLEKS                       R25 R2 K40 ["getFFlagDebugLogAssistantUI"]
      275 CALL                             R25 0 1
      276 JUMPIFNOT                        R25 ; [+4]
      277 GETIMPORT                        R25 K42 [print]
      279 LOADK                            R26 K73 ["[Gen3d][asset.legacy] CoreGuiRoot mounted into CoreGui.Gen3d.Gen3dGui"]
      280 CALL                             R25 1 0
      281 GETIMPORT                        R25 K1 [plugin]
      283 GETTABLEKS                       R25 R25 K74 ["Unloading"]
      285 NEWCLOSURE                       R27 P0
      286 CAPTURE                          REF R24
      287 CAPTURE                          REF R22
      288 CAPTURE                          VAL R20
      289 CAPTURE                          VAL R21
      290 CAPTURE                          VAL R18
      291 CAPTURE                          VAL R19
      292 CAPTURE                          VAL R5
      293 NAMECALL                         R25 R25 K75 ["Connect"]
      295 CALL                             R25 2 0
      296 CLOSEUPVALS                      R22
      297 RETURN                           R0 0
