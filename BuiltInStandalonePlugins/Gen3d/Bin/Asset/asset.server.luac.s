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
       27 GETTABLEKS                       R0 R0 K2 ["destroy"]
       29 CALL                             R0 0 0
       30 GETUPVAL                         R0 5
       31 GETTABLEKS                       R0 R0 K2 ["destroy"]
       33 CALL                             R0 0 0
       34 RETURN                           R0 0

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
      117 GETTABLEKS                       R10 R0 K8 ["Packages"]
      119 GETTABLEKS                       R10 R10 K32 ["LoadingSkeleton3D"]
      121 CALL                             R9 1 1
      122 LOADB                            R12 0
      123 NAMECALL                         R10 R4 K33 ["GenerateGUID"]
      125 CALL                             R10 2 1
      126 GETIMPORT                        R11 K7 [require]
      128 GETTABLEKS                       R12 R0 K8 ["Packages"]
      130 GETTABLEKS                       R12 R12 K34 ["React"]
      132 CALL                             R11 1 1
      133 GETIMPORT                        R12 K7 [require]
      135 GETTABLEKS                       R13 R0 K8 ["Packages"]
      137 GETTABLEKS                       R13 R13 K35 ["ReactRoblox"]
      139 CALL                             R12 1 1
      140 GETIMPORT                        R13 K7 [require]
      142 GETTABLEKS                       R14 R0 K11 ["Src"]
      144 GETTABLEKS                       R14 R14 K36 ["CoreGuiRoot"]
      146 CALL                             R13 1 1
      147 GETTABLEKS                       R14 R2 K37 ["getFFlagDebugLogAssistantUI"]
      149 CALL                             R14 0 1
      150 JUMPIFNOT                        R14 ; [+8]
      151 GETIMPORT                        R14 K39 [print]
      153 LOADK                            R15 K40 ["[Gen3d][asset.legacy] Edit DM entry running editSessionId=%*"]
      154 MOVE                             R17 R10
      155 NAMECALL                         R15 R15 K41 ["format"]
      157 CALL                             R15 2 1
      158 CALL                             R14 1 0
      159 GETTABLEKS                       R14 R5 K42 ["create"]
      161 DUPTABLE                         R15 K48 [{[1], ["isGuest"] = False, ["isHost"] = True, ["useSuspendOverride"] = True}]
      162 GETIMPORT                        R16 K1 [plugin]
      164 SETTABLEKS                       R16 R15 K0 ["plugin"]
      166 CALL                             R14 1 1
      167 MOVE                             R15 R7
      168 GETIMPORT                        R16 K1 [plugin]
      170 CALL                             R15 1 2
      171 MOVE                             R17 R6
      172 MOVE                             R18 R14
      173 GETTABLEKS                       R19 R16 K49 ["registerInstance"]
      175 MOVE                             R20 R10
      176 CALL                             R17 3 1
      177 GETTABLEKS                       R18 R9 K50 ["destroyAll"]
      179 CALL                             R18 0 0
      180 MOVE                             R18 R8
      181 MOVE                             R19 R14
      182 MOVE                             R20 R15
      183 MOVE                             R21 R16
      184 MOVE                             R22 R17
      185 GETIMPORT                        R23 K1 [plugin]
      187 CALL                             R18 5 1
      188 GETIMPORT                        R19 K53 [Instance.new]
      190 LOADK                            R20 K54 ["Folder"]
      191 CALL                             R19 1 1
      192 LOADK                            R20 K4 ["Gen3d"]
      193 SETTABLEKS                       R20 R19 K24 ["Name"]
      195 GETIMPORT                        R20 K18 [game]
      197 LOADK                            R22 K22 ["CoreGui"]
      198 NAMECALL                         R20 R20 K20 ["GetService"]
      200 CALL                             R20 2 1
      201 SETTABLEKS                       R20 R19 K55 ["Parent"]
      203 GETIMPORT                        R20 K53 [Instance.new]
      205 LOADK                            R21 K56 ["ScreenGui"]
      206 CALL                             R20 1 1
      207 LOADK                            R21 K57 ["Gen3dGui"]
      208 SETTABLEKS                       R21 R20 K24 ["Name"]
      210 GETIMPORT                        R21 K61 [Enum.ZIndexBehavior.Sibling]
      212 SETTABLEKS                       R21 R20 K59 ["ZIndexBehavior"]
      214 LOADN                            R21 1000
      215 SETTABLEKS                       R21 R20 K62 ["DisplayOrder"]
      217 SETTABLEKS                       R19 R20 K55 ["Parent"]
      219 GETTABLEKS                       R21 R12 K63 ["createRoot"]
      221 MOVE                             R22 R20
      222 CALL                             R21 1 1
      223 GETTABLEKS                       R24 R11 K64 ["createElement"]
      225 MOVE                             R25 R13
      226 DUPTABLE                         R26 K67 [{"Plugin", "EditSessionId"}]
      227 GETIMPORT                        R27 K1 [plugin]
      229 SETTABLEKS                       R27 R26 K65 ["Plugin"]
      231 SETTABLEKS                       R10 R26 K66 ["EditSessionId"]
      233 CALL                             R24 2 -1
      234 NAMECALL                         R22 R21 K68 ["render"]
      236 CALL                             R22 -1 0
      237 GETTABLEKS                       R22 R2 K37 ["getFFlagDebugLogAssistantUI"]
      239 CALL                             R22 0 1
      240 JUMPIFNOT                        R22 ; [+4]
      241 GETIMPORT                        R22 K39 [print]
      243 LOADK                            R23 K69 ["[Gen3d][asset.legacy] CoreGuiRoot mounted into CoreGui.Gen3d.Gen3dGui"]
      244 CALL                             R22 1 0
      245 GETIMPORT                        R22 K1 [plugin]
      247 GETTABLEKS                       R22 R22 K70 ["Unloading"]
      249 NEWCLOSURE                       R24 P0
      250 CAPTURE                          REF R21
      251 CAPTURE                          REF R19
      252 CAPTURE                          VAL R18
      253 CAPTURE                          VAL R16
      254 CAPTURE                          VAL R17
      255 CAPTURE                          VAL R5
      256 NAMECALL                         R22 R22 K71 ["Connect"]
      258 CALL                             R22 2 0
      259 CLOSEUPVALS                      R19
      260 RETURN                           R0 0
