PROTO_0:
        0 ORK                              R2 R2 K0 [0.0001]
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["epsilon was nil"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 SUB                              R5 R0 R1
       12 FASTCALL1                        MATH_ABS R5 ; [+2]
       13 GETIMPORT                        R4 K6 [math.abs]
       15 CALL                             R4 1 1
       16 JUMPIFLT                         R4 R2 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["Min"]
        2 GETTABLEKS                       R5 R1 K0 ["Min"]
        4 MOVE                             R6 R2
        5 ORK                              R6 R6 K1 [0.0001]
        6 JUMPIFNOTEQKNIL                  R6 ; [+2]
        8 LOADB                            R8 0 +1
        9 LOADB                            R8 1
       10 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       12 LOADK                            R9 K2 ["epsilon was nil"]
       13 GETIMPORT                        R7 K4 [assert]
       15 CALL                             R7 2 0
       16 SUB                              R8 R4 R5
       17 FASTCALL1                        MATH_ABS R8 ; [+2]
       18 GETIMPORT                        R7 K7 [math.abs]
       20 CALL                             R7 1 1
       21 JUMPIFLT                         R7 R6 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIFNOT                        R3 ; [+25]
       26 GETTABLEKS                       R4 R0 K8 ["Max"]
       28 GETTABLEKS                       R5 R1 K8 ["Max"]
       30 MOVE                             R6 R2
       31 ORK                              R6 R6 K1 [0.0001]
       32 JUMPIFNOTEQKNIL                  R6 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 FASTCALL2K                       ASSERT R8 K2 ; [+4]
       38 LOADK                            R9 K2 ["epsilon was nil"]
       39 GETIMPORT                        R7 K4 [assert]
       41 CALL                             R7 2 0
       42 SUB                              R8 R4 R5
       43 FASTCALL1                        MATH_ABS R8 ; [+2]
       44 GETIMPORT                        R7 K7 [math.abs]
       46 CALL                             R7 1 1
       47 JUMPIFLT                         R7 R6 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+54]
        5 DUPTABLE                         R1 K10 [{"Type", "AssetId", "Volume", "PlaybackSpeed", "Looping", "PlaybackRegion", "LoopRegion", "TimePosition"}]
        6 LOADK                            R2 K0 ["Sound"]
        7 SETTABLEKS                       R2 R1 K2 ["Type"]
        9 GETTABLEKS                       R3 R0 K12 ["AudioContent"]
       11 GETTABLEKS                       R3 R3 K13 ["Uri"]
       13 ORK                              R2 R3 K11 [""]
       14 SETTABLEKS                       R2 R1 K3 ["AssetId"]
       16 GETTABLEKS                       R2 R0 K4 ["Volume"]
       18 SETTABLEKS                       R2 R1 K4 ["Volume"]
       20 GETTABLEKS                       R2 R0 K5 ["PlaybackSpeed"]
       22 SETTABLEKS                       R2 R1 K5 ["PlaybackSpeed"]
       24 GETTABLEKS                       R2 R0 K14 ["Looped"]
       26 SETTABLEKS                       R2 R1 K6 ["Looping"]
       28 GETTABLEKS                       R3 R0 K15 ["PlaybackRegionsEnabled"]
       30 JUMPIFNOT                        R3 ; [+3]
       31 GETTABLEKS                       R2 R0 K7 ["PlaybackRegion"]
       33 JUMP                             ; [+5]
       34 GETIMPORT                        R2 K18 [NumberRange.new]
       36 LOADN                            R3 0
       37 LOADK                            R4 K19 [60000]
       38 CALL                             R2 2 1
       39 SETTABLEKS                       R2 R1 K7 ["PlaybackRegion"]
       41 GETTABLEKS                       R3 R0 K15 ["PlaybackRegionsEnabled"]
       43 JUMPIFNOT                        R3 ; [+3]
       44 GETTABLEKS                       R2 R0 K8 ["LoopRegion"]
       46 JUMP                             ; [+5]
       47 GETIMPORT                        R2 K18 [NumberRange.new]
       49 LOADN                            R3 0
       50 LOADK                            R4 K19 [60000]
       51 CALL                             R2 2 1
       52 SETTABLEKS                       R2 R1 K8 ["LoopRegion"]
       54 GETTABLEKS                       R2 R0 K9 ["TimePosition"]
       56 SETTABLEKS                       R2 R1 K9 ["TimePosition"]
       58 RETURN                           R1 1
       59 LOADK                            R3 K20 ["AudioPlayer"]
       60 NAMECALL                         R1 R0 K1 ["IsA"]
       62 CALL                             R1 2 1
       63 JUMPIFNOT                        R1 ; [+36]
       64 DUPTABLE                         R1 K10 [{"Type", "AssetId", "Volume", "PlaybackSpeed", "Looping", "PlaybackRegion", "LoopRegion", "TimePosition"}]
       65 LOADK                            R2 K20 ["AudioPlayer"]
       66 SETTABLEKS                       R2 R1 K2 ["Type"]
       68 GETTABLEKS                       R3 R0 K12 ["AudioContent"]
       70 GETTABLEKS                       R3 R3 K13 ["Uri"]
       72 ORK                              R2 R3 K11 [""]
       73 SETTABLEKS                       R2 R1 K3 ["AssetId"]
       75 GETTABLEKS                       R2 R0 K4 ["Volume"]
       77 SETTABLEKS                       R2 R1 K4 ["Volume"]
       79 GETTABLEKS                       R2 R0 K5 ["PlaybackSpeed"]
       81 SETTABLEKS                       R2 R1 K5 ["PlaybackSpeed"]
       83 GETTABLEKS                       R2 R0 K6 ["Looping"]
       85 SETTABLEKS                       R2 R1 K6 ["Looping"]
       87 GETTABLEKS                       R2 R0 K7 ["PlaybackRegion"]
       89 SETTABLEKS                       R2 R1 K7 ["PlaybackRegion"]
       91 GETTABLEKS                       R2 R0 K8 ["LoopRegion"]
       93 SETTABLEKS                       R2 R1 K8 ["LoopRegion"]
       95 GETTABLEKS                       R2 R0 K9 ["TimePosition"]
       97 SETTABLEKS                       R2 R1 K9 ["TimePosition"]
       99 RETURN                           R1 1
      100 LOADNIL                          R1
      101 RETURN                           R1 1

PROTO_3:
        0 LOADK                            R4 K0 ["Sound"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+35]
        5 GETIMPORT                        R2 K4 [Content.fromUri]
        7 GETTABLEKS                       R3 R1 K5 ["AssetId"]
        9 CALL                             R2 1 1
       10 SETTABLEKS                       R2 R0 K6 ["AudioContent"]
       12 GETTABLEKS                       R2 R1 K7 ["Volume"]
       14 SETTABLEKS                       R2 R0 K7 ["Volume"]
       16 GETTABLEKS                       R2 R1 K8 ["PlaybackSpeed"]
       18 SETTABLEKS                       R2 R0 K8 ["PlaybackSpeed"]
       20 GETTABLEKS                       R2 R1 K9 ["Looping"]
       22 SETTABLEKS                       R2 R0 K10 ["Looped"]
       24 LOADB                            R2 1
       25 SETTABLEKS                       R2 R0 K11 ["PlaybackRegionsEnabled"]
       27 GETTABLEKS                       R2 R1 K12 ["PlaybackRegion"]
       29 SETTABLEKS                       R2 R0 K12 ["PlaybackRegion"]
       31 GETTABLEKS                       R2 R1 K13 ["LoopRegion"]
       33 SETTABLEKS                       R2 R0 K13 ["LoopRegion"]
       35 GETTABLEKS                       R2 R1 K14 ["TimePosition"]
       37 SETTABLEKS                       R2 R0 K14 ["TimePosition"]
       39 RETURN                           R0 0
       40 LOADK                            R4 K15 ["AudioPlayer"]
       41 NAMECALL                         R2 R0 K1 ["IsA"]
       43 CALL                             R2 2 1
       44 JUMPIFNOT                        R2 ; [+32]
       45 GETIMPORT                        R2 K4 [Content.fromUri]
       47 GETTABLEKS                       R3 R1 K5 ["AssetId"]
       49 CALL                             R2 1 1
       50 SETTABLEKS                       R2 R0 K6 ["AudioContent"]
       52 GETTABLEKS                       R2 R1 K7 ["Volume"]
       54 SETTABLEKS                       R2 R0 K7 ["Volume"]
       56 GETTABLEKS                       R2 R1 K8 ["PlaybackSpeed"]
       58 SETTABLEKS                       R2 R0 K8 ["PlaybackSpeed"]
       60 GETTABLEKS                       R2 R1 K9 ["Looping"]
       62 SETTABLEKS                       R2 R0 K9 ["Looping"]
       64 GETTABLEKS                       R2 R1 K12 ["PlaybackRegion"]
       66 SETTABLEKS                       R2 R0 K12 ["PlaybackRegion"]
       68 GETTABLEKS                       R2 R1 K13 ["LoopRegion"]
       70 SETTABLEKS                       R2 R0 K13 ["LoopRegion"]
       72 GETTABLEKS                       R2 R1 K14 ["TimePosition"]
       74 SETTABLEKS                       R2 R0 K14 ["TimePosition"]
       76 RETURN                           R0 0
       77 RETURN                           R0 0
       78 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+2]
        2 LOADB                            R2 0
        3 RETURN                           R2 1
        4 LOADK                            R4 K0 ["Sound"]
        5 NAMECALL                         R2 R0 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+392]
        9 JUMPIFNOTEQKS                    R1 K2 ["AudioContent"] ; [+13]
       11 GETTABLEKS                       R3 R0 K2 ["AudioContent"]
       13 GETTABLEKS                       R3 R3 K3 ["Uri"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K4 ["AssetId"]
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 RETURN                           R2 1
       23 JUMPIFNOTEQKS                    R1 K5 ["Volume"] ; [+29]
       25 GETTABLEKS                       R4 R0 K5 ["Volume"]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["Volume"]
       30 LOADNIL                          R6
       31 ORK                              R6 R6 K6 [0.0001]
       32 JUMPIFNOTEQKNIL                  R6 ; [+2]
       34 LOADB                            R8 0 +1
       35 LOADB                            R8 1
       36 FASTCALL2K                       ASSERT R8 K7 ; [+4]
       38 LOADK                            R9 K7 ["epsilon was nil"]
       39 GETIMPORT                        R7 K9 [assert]
       41 CALL                             R7 2 0
       42 SUB                              R8 R4 R5
       43 FASTCALL1                        MATH_ABS R8 ; [+2]
       44 GETIMPORT                        R7 K12 [math.abs]
       46 CALL                             R7 1 1
       47 JUMPIFLT                         R7 R6 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 NOT                              R2 R3
       52 RETURN                           R2 1
       53 JUMPIFNOTEQKS                    R1 K13 ["PlaybackSpeed"] ; [+29]
       55 GETTABLEKS                       R4 R0 K13 ["PlaybackSpeed"]
       57 GETUPVAL                         R5 0
       58 GETTABLEKS                       R5 R5 K13 ["PlaybackSpeed"]
       60 LOADNIL                          R6
       61 ORK                              R6 R6 K6 [0.0001]
       62 JUMPIFNOTEQKNIL                  R6 ; [+2]
       64 LOADB                            R8 0 +1
       65 LOADB                            R8 1
       66 FASTCALL2K                       ASSERT R8 K7 ; [+4]
       68 LOADK                            R9 K7 ["epsilon was nil"]
       69 GETIMPORT                        R7 K9 [assert]
       71 CALL                             R7 2 0
       72 SUB                              R8 R4 R5
       73 FASTCALL1                        MATH_ABS R8 ; [+2]
       74 GETIMPORT                        R7 K12 [math.abs]
       76 CALL                             R7 1 1
       77 JUMPIFLT                         R7 R6 ; [+2]
       79 LOADB                            R3 0 +1
       80 LOADB                            R3 1
       81 NOT                              R2 R3
       82 RETURN                           R2 1
       83 JUMPIFNOTEQKS                    R1 K14 ["Looped"] ; [+11]
       85 GETTABLEKS                       R3 R0 K14 ["Looped"]
       87 GETUPVAL                         R4 0
       88 GETTABLEKS                       R4 R4 K15 ["Looping"]
       90 JUMPIFNOTEQ                      R3 R4 ; [+2]
       92 LOADB                            R2 0 +1
       93 LOADB                            R2 1
       94 RETURN                           R2 1
       95 JUMPIFNOTEQKS                    R1 K16 ["PlaybackRegionsEnabled"] ; [+135]
       97 GETTABLEKS                       R3 R0 K16 ["PlaybackRegionsEnabled"]
       99 JUMPIFNOT                        R3 ; [+3]
      100 GETTABLEKS                       R2 R0 K17 ["PlaybackRegion"]
      102 JUMP                             ; [+5]
      103 GETIMPORT                        R2 K20 [NumberRange.new]
      105 LOADN                            R3 0
      106 LOADK                            R4 K21 [60000]
      107 CALL                             R2 2 1
      108 GETTABLEKS                       R4 R0 K16 ["PlaybackRegionsEnabled"]
      110 JUMPIFNOT                        R4 ; [+3]
      111 GETTABLEKS                       R3 R0 K22 ["LoopRegion"]
      113 JUMP                             ; [+5]
      114 GETIMPORT                        R3 K20 [NumberRange.new]
      116 LOADN                            R4 0
      117 LOADK                            R5 K21 [60000]
      118 CALL                             R3 2 1
      119 GETUPVAL                         R6 0
      120 GETTABLEKS                       R6 R6 K17 ["PlaybackRegion"]
      122 GETTABLEKS                       R7 R2 K23 ["Min"]
      124 GETTABLEKS                       R8 R6 K23 ["Min"]
      126 LOADNIL                          R9
      127 ORK                              R9 R9 K6 [0.0001]
      128 JUMPIFNOTEQKNIL                  R9 ; [+2]
      130 LOADB                            R11 0 +1
      131 LOADB                            R11 1
      132 FASTCALL2K                       ASSERT R11 K7 ; [+4]
      134 LOADK                            R12 K7 ["epsilon was nil"]
      135 GETIMPORT                        R10 K9 [assert]
      137 CALL                             R10 2 0
      138 SUB                              R11 R7 R8
      139 FASTCALL1                        MATH_ABS R11 ; [+2]
      140 GETIMPORT                        R10 K12 [math.abs]
      142 CALL                             R10 1 1
      143 JUMPIFLT                         R10 R9 ; [+2]
      145 LOADB                            R5 0 +1
      146 LOADB                            R5 1
      147 JUMPIFNOT                        R5 ; [+25]
      148 GETTABLEKS                       R7 R2 K24 ["Max"]
      150 GETTABLEKS                       R8 R6 K24 ["Max"]
      152 LOADNIL                          R9
      153 ORK                              R9 R9 K6 [0.0001]
      154 JUMPIFNOTEQKNIL                  R9 ; [+2]
      156 LOADB                            R11 0 +1
      157 LOADB                            R11 1
      158 FASTCALL2K                       ASSERT R11 K7 ; [+4]
      160 LOADK                            R12 K7 ["epsilon was nil"]
      161 GETIMPORT                        R10 K9 [assert]
      163 CALL                             R10 2 0
      164 SUB                              R11 R7 R8
      165 FASTCALL1                        MATH_ABS R11 ; [+2]
      166 GETIMPORT                        R10 K12 [math.abs]
      168 CALL                             R10 1 1
      169 JUMPIFLT                         R10 R9 ; [+2]
      171 LOADB                            R5 0 +1
      172 LOADB                            R5 1
      173 NOT                              R4 R5
      174 JUMPIF                           R4 ; [+55]
      175 GETUPVAL                         R6 0
      176 GETTABLEKS                       R6 R6 K22 ["LoopRegion"]
      178 GETTABLEKS                       R7 R3 K23 ["Min"]
      180 GETTABLEKS                       R8 R6 K23 ["Min"]
      182 LOADNIL                          R9
      183 ORK                              R9 R9 K6 [0.0001]
      184 JUMPIFNOTEQKNIL                  R9 ; [+2]
      186 LOADB                            R11 0 +1
      187 LOADB                            R11 1
      188 FASTCALL2K                       ASSERT R11 K7 ; [+4]
      190 LOADK                            R12 K7 ["epsilon was nil"]
      191 GETIMPORT                        R10 K9 [assert]
      193 CALL                             R10 2 0
      194 SUB                              R11 R7 R8
      195 FASTCALL1                        MATH_ABS R11 ; [+2]
      196 GETIMPORT                        R10 K12 [math.abs]
      198 CALL                             R10 1 1
      199 JUMPIFLT                         R10 R9 ; [+2]
      201 LOADB                            R5 0 +1
      202 LOADB                            R5 1
      203 JUMPIFNOT                        R5 ; [+25]
      204 GETTABLEKS                       R7 R3 K24 ["Max"]
      206 GETTABLEKS                       R8 R6 K24 ["Max"]
      208 LOADNIL                          R9
      209 ORK                              R9 R9 K6 [0.0001]
      210 JUMPIFNOTEQKNIL                  R9 ; [+2]
      212 LOADB                            R11 0 +1
      213 LOADB                            R11 1
      214 FASTCALL2K                       ASSERT R11 K7 ; [+4]
      216 LOADK                            R12 K7 ["epsilon was nil"]
      217 GETIMPORT                        R10 K9 [assert]
      219 CALL                             R10 2 0
      220 SUB                              R11 R7 R8
      221 FASTCALL1                        MATH_ABS R11 ; [+2]
      222 GETIMPORT                        R10 K12 [math.abs]
      224 CALL                             R10 1 1
      225 JUMPIFLT                         R10 R9 ; [+2]
      227 LOADB                            R5 0 +1
      228 LOADB                            R5 1
      229 NOT                              R4 R5
      230 RETURN                           R4 1
      231 JUMPIFNOTEQKS                    R1 K17 ["PlaybackRegion"] ; [+68]
      233 GETTABLEKS                       R3 R0 K16 ["PlaybackRegionsEnabled"]
      235 JUMPIFNOT                        R3 ; [+3]
      236 GETTABLEKS                       R2 R0 K17 ["PlaybackRegion"]
      238 JUMP                             ; [+5]
      239 GETIMPORT                        R2 K20 [NumberRange.new]
      241 LOADN                            R3 0
      242 LOADK                            R4 K21 [60000]
      243 CALL                             R2 2 1
      244 GETUPVAL                         R5 0
      245 GETTABLEKS                       R5 R5 K17 ["PlaybackRegion"]
      247 GETTABLEKS                       R6 R2 K23 ["Min"]
      249 GETTABLEKS                       R7 R5 K23 ["Min"]
      251 LOADNIL                          R8
      252 ORK                              R8 R8 K6 [0.0001]
      253 JUMPIFNOTEQKNIL                  R8 ; [+2]
      255 LOADB                            R10 0 +1
      256 LOADB                            R10 1
      257 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      259 LOADK                            R11 K7 ["epsilon was nil"]
      260 GETIMPORT                        R9 K9 [assert]
      262 CALL                             R9 2 0
      263 SUB                              R10 R6 R7
      264 FASTCALL1                        MATH_ABS R10 ; [+2]
      265 GETIMPORT                        R9 K12 [math.abs]
      267 CALL                             R9 1 1
      268 JUMPIFLT                         R9 R8 ; [+2]
      270 LOADB                            R4 0 +1
      271 LOADB                            R4 1
      272 JUMPIFNOT                        R4 ; [+25]
      273 GETTABLEKS                       R6 R2 K24 ["Max"]
      275 GETTABLEKS                       R7 R5 K24 ["Max"]
      277 LOADNIL                          R8
      278 ORK                              R8 R8 K6 [0.0001]
      279 JUMPIFNOTEQKNIL                  R8 ; [+2]
      281 LOADB                            R10 0 +1
      282 LOADB                            R10 1
      283 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      285 LOADK                            R11 K7 ["epsilon was nil"]
      286 GETIMPORT                        R9 K9 [assert]
      288 CALL                             R9 2 0
      289 SUB                              R10 R6 R7
      290 FASTCALL1                        MATH_ABS R10 ; [+2]
      291 GETIMPORT                        R9 K12 [math.abs]
      293 CALL                             R9 1 1
      294 JUMPIFLT                         R9 R8 ; [+2]
      296 LOADB                            R4 0 +1
      297 LOADB                            R4 1
      298 NOT                              R3 R4
      299 RETURN                           R3 1
      300 JUMPIFNOTEQKS                    R1 K22 ["LoopRegion"] ; [+68]
      302 GETTABLEKS                       R3 R0 K16 ["PlaybackRegionsEnabled"]
      304 JUMPIFNOT                        R3 ; [+3]
      305 GETTABLEKS                       R2 R0 K22 ["LoopRegion"]
      307 JUMP                             ; [+5]
      308 GETIMPORT                        R2 K20 [NumberRange.new]
      310 LOADN                            R3 0
      311 LOADK                            R4 K21 [60000]
      312 CALL                             R2 2 1
      313 GETUPVAL                         R5 0
      314 GETTABLEKS                       R5 R5 K22 ["LoopRegion"]
      316 GETTABLEKS                       R6 R2 K23 ["Min"]
      318 GETTABLEKS                       R7 R5 K23 ["Min"]
      320 LOADNIL                          R8
      321 ORK                              R8 R8 K6 [0.0001]
      322 JUMPIFNOTEQKNIL                  R8 ; [+2]
      324 LOADB                            R10 0 +1
      325 LOADB                            R10 1
      326 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      328 LOADK                            R11 K7 ["epsilon was nil"]
      329 GETIMPORT                        R9 K9 [assert]
      331 CALL                             R9 2 0
      332 SUB                              R10 R6 R7
      333 FASTCALL1                        MATH_ABS R10 ; [+2]
      334 GETIMPORT                        R9 K12 [math.abs]
      336 CALL                             R9 1 1
      337 JUMPIFLT                         R9 R8 ; [+2]
      339 LOADB                            R4 0 +1
      340 LOADB                            R4 1
      341 JUMPIFNOT                        R4 ; [+25]
      342 GETTABLEKS                       R6 R2 K24 ["Max"]
      344 GETTABLEKS                       R7 R5 K24 ["Max"]
      346 LOADNIL                          R8
      347 ORK                              R8 R8 K6 [0.0001]
      348 JUMPIFNOTEQKNIL                  R8 ; [+2]
      350 LOADB                            R10 0 +1
      351 LOADB                            R10 1
      352 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      354 LOADK                            R11 K7 ["epsilon was nil"]
      355 GETIMPORT                        R9 K9 [assert]
      357 CALL                             R9 2 0
      358 SUB                              R10 R6 R7
      359 FASTCALL1                        MATH_ABS R10 ; [+2]
      360 GETIMPORT                        R9 K12 [math.abs]
      362 CALL                             R9 1 1
      363 JUMPIFLT                         R9 R8 ; [+2]
      365 LOADB                            R4 0 +1
      366 LOADB                            R4 1
      367 NOT                              R3 R4
      368 RETURN                           R3 1
      369 JUMPIFNOTEQKS                    R1 K25 ["TimePosition"] ; [+29]
      371 GETTABLEKS                       R4 R0 K25 ["TimePosition"]
      373 GETUPVAL                         R5 0
      374 GETTABLEKS                       R5 R5 K25 ["TimePosition"]
      376 LOADNIL                          R6
      377 ORK                              R6 R6 K6 [0.0001]
      378 JUMPIFNOTEQKNIL                  R6 ; [+2]
      380 LOADB                            R8 0 +1
      381 LOADB                            R8 1
      382 FASTCALL2K                       ASSERT R8 K7 ; [+4]
      384 LOADK                            R9 K7 ["epsilon was nil"]
      385 GETIMPORT                        R7 K9 [assert]
      387 CALL                             R7 2 0
      388 SUB                              R8 R4 R5
      389 FASTCALL1                        MATH_ABS R8 ; [+2]
      390 GETIMPORT                        R7 K12 [math.abs]
      392 CALL                             R7 1 1
      393 JUMPIFLT                         R7 R6 ; [+2]
      395 LOADB                            R3 0 +1
      396 LOADB                            R3 1
      397 NOT                              R2 R3
      398 RETURN                           R2 1
      399 LOADB                            R2 0
      400 RETURN                           R2 1
      401 LOADK                            R4 K26 ["AudioPlayer"]
      402 NAMECALL                         R2 R0 K1 ["IsA"]
      404 CALL                             R2 2 1
      405 JUMPIFNOT                        R2 ; [+238]
      406 JUMPIFNOTEQKS                    R1 K2 ["AudioContent"] ; [+13]
      408 GETTABLEKS                       R3 R0 K2 ["AudioContent"]
      410 GETTABLEKS                       R3 R3 K3 ["Uri"]
      412 GETUPVAL                         R4 0
      413 GETTABLEKS                       R4 R4 K4 ["AssetId"]
      415 JUMPIFNOTEQ                      R3 R4 ; [+2]
      417 LOADB                            R2 0 +1
      418 LOADB                            R2 1
      419 RETURN                           R2 1
      420 JUMPIFNOTEQKS                    R1 K5 ["Volume"] ; [+29]
      422 GETTABLEKS                       R4 R0 K5 ["Volume"]
      424 GETUPVAL                         R5 0
      425 GETTABLEKS                       R5 R5 K5 ["Volume"]
      427 LOADNIL                          R6
      428 ORK                              R6 R6 K6 [0.0001]
      429 JUMPIFNOTEQKNIL                  R6 ; [+2]
      431 LOADB                            R8 0 +1
      432 LOADB                            R8 1
      433 FASTCALL2K                       ASSERT R8 K7 ; [+4]
      435 LOADK                            R9 K7 ["epsilon was nil"]
      436 GETIMPORT                        R7 K9 [assert]
      438 CALL                             R7 2 0
      439 SUB                              R8 R4 R5
      440 FASTCALL1                        MATH_ABS R8 ; [+2]
      441 GETIMPORT                        R7 K12 [math.abs]
      443 CALL                             R7 1 1
      444 JUMPIFLT                         R7 R6 ; [+2]
      446 LOADB                            R3 0 +1
      447 LOADB                            R3 1
      448 NOT                              R2 R3
      449 RETURN                           R2 1
      450 JUMPIFNOTEQKS                    R1 K13 ["PlaybackSpeed"] ; [+29]
      452 GETTABLEKS                       R4 R0 K13 ["PlaybackSpeed"]
      454 GETUPVAL                         R5 0
      455 GETTABLEKS                       R5 R5 K13 ["PlaybackSpeed"]
      457 LOADNIL                          R6
      458 ORK                              R6 R6 K6 [0.0001]
      459 JUMPIFNOTEQKNIL                  R6 ; [+2]
      461 LOADB                            R8 0 +1
      462 LOADB                            R8 1
      463 FASTCALL2K                       ASSERT R8 K7 ; [+4]
      465 LOADK                            R9 K7 ["epsilon was nil"]
      466 GETIMPORT                        R7 K9 [assert]
      468 CALL                             R7 2 0
      469 SUB                              R8 R4 R5
      470 FASTCALL1                        MATH_ABS R8 ; [+2]
      471 GETIMPORT                        R7 K12 [math.abs]
      473 CALL                             R7 1 1
      474 JUMPIFLT                         R7 R6 ; [+2]
      476 LOADB                            R3 0 +1
      477 LOADB                            R3 1
      478 NOT                              R2 R3
      479 RETURN                           R2 1
      480 JUMPIFNOTEQKS                    R1 K15 ["Looping"] ; [+11]
      482 GETTABLEKS                       R3 R0 K15 ["Looping"]
      484 GETUPVAL                         R4 0
      485 GETTABLEKS                       R4 R4 K15 ["Looping"]
      487 JUMPIFNOTEQ                      R3 R4 ; [+2]
      489 LOADB                            R2 0 +1
      490 LOADB                            R2 1
      491 RETURN                           R2 1
      492 JUMPIFNOTEQKS                    R1 K17 ["PlaybackRegion"] ; [+59]
      494 GETTABLEKS                       R4 R0 K17 ["PlaybackRegion"]
      496 GETUPVAL                         R5 0
      497 GETTABLEKS                       R5 R5 K17 ["PlaybackRegion"]
      499 GETTABLEKS                       R6 R4 K23 ["Min"]
      501 GETTABLEKS                       R7 R5 K23 ["Min"]
      503 LOADNIL                          R8
      504 ORK                              R8 R8 K6 [0.0001]
      505 JUMPIFNOTEQKNIL                  R8 ; [+2]
      507 LOADB                            R10 0 +1
      508 LOADB                            R10 1
      509 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      511 LOADK                            R11 K7 ["epsilon was nil"]
      512 GETIMPORT                        R9 K9 [assert]
      514 CALL                             R9 2 0
      515 SUB                              R10 R6 R7
      516 FASTCALL1                        MATH_ABS R10 ; [+2]
      517 GETIMPORT                        R9 K12 [math.abs]
      519 CALL                             R9 1 1
      520 JUMPIFLT                         R9 R8 ; [+2]
      522 LOADB                            R3 0 +1
      523 LOADB                            R3 1
      524 JUMPIFNOT                        R3 ; [+25]
      525 GETTABLEKS                       R6 R4 K24 ["Max"]
      527 GETTABLEKS                       R7 R5 K24 ["Max"]
      529 LOADNIL                          R8
      530 ORK                              R8 R8 K6 [0.0001]
      531 JUMPIFNOTEQKNIL                  R8 ; [+2]
      533 LOADB                            R10 0 +1
      534 LOADB                            R10 1
      535 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      537 LOADK                            R11 K7 ["epsilon was nil"]
      538 GETIMPORT                        R9 K9 [assert]
      540 CALL                             R9 2 0
      541 SUB                              R10 R6 R7
      542 FASTCALL1                        MATH_ABS R10 ; [+2]
      543 GETIMPORT                        R9 K12 [math.abs]
      545 CALL                             R9 1 1
      546 JUMPIFLT                         R9 R8 ; [+2]
      548 LOADB                            R3 0 +1
      549 LOADB                            R3 1
      550 NOT                              R2 R3
      551 RETURN                           R2 1
      552 JUMPIFNOTEQKS                    R1 K22 ["LoopRegion"] ; [+59]
      554 GETTABLEKS                       R4 R0 K22 ["LoopRegion"]
      556 GETUPVAL                         R5 0
      557 GETTABLEKS                       R5 R5 K22 ["LoopRegion"]
      559 GETTABLEKS                       R6 R4 K23 ["Min"]
      561 GETTABLEKS                       R7 R5 K23 ["Min"]
      563 LOADNIL                          R8
      564 ORK                              R8 R8 K6 [0.0001]
      565 JUMPIFNOTEQKNIL                  R8 ; [+2]
      567 LOADB                            R10 0 +1
      568 LOADB                            R10 1
      569 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      571 LOADK                            R11 K7 ["epsilon was nil"]
      572 GETIMPORT                        R9 K9 [assert]
      574 CALL                             R9 2 0
      575 SUB                              R10 R6 R7
      576 FASTCALL1                        MATH_ABS R10 ; [+2]
      577 GETIMPORT                        R9 K12 [math.abs]
      579 CALL                             R9 1 1
      580 JUMPIFLT                         R9 R8 ; [+2]
      582 LOADB                            R3 0 +1
      583 LOADB                            R3 1
      584 JUMPIFNOT                        R3 ; [+25]
      585 GETTABLEKS                       R6 R4 K24 ["Max"]
      587 GETTABLEKS                       R7 R5 K24 ["Max"]
      589 LOADNIL                          R8
      590 ORK                              R8 R8 K6 [0.0001]
      591 JUMPIFNOTEQKNIL                  R8 ; [+2]
      593 LOADB                            R10 0 +1
      594 LOADB                            R10 1
      595 FASTCALL2K                       ASSERT R10 K7 ; [+4]
      597 LOADK                            R11 K7 ["epsilon was nil"]
      598 GETIMPORT                        R9 K9 [assert]
      600 CALL                             R9 2 0
      601 SUB                              R10 R6 R7
      602 FASTCALL1                        MATH_ABS R10 ; [+2]
      603 GETIMPORT                        R9 K12 [math.abs]
      605 CALL                             R9 1 1
      606 JUMPIFLT                         R9 R8 ; [+2]
      608 LOADB                            R3 0 +1
      609 LOADB                            R3 1
      610 NOT                              R2 R3
      611 RETURN                           R2 1
      612 JUMPIFNOTEQKS                    R1 K25 ["TimePosition"] ; [+29]
      614 GETTABLEKS                       R4 R0 K25 ["TimePosition"]
      616 GETUPVAL                         R5 0
      617 GETTABLEKS                       R5 R5 K25 ["TimePosition"]
      619 LOADNIL                          R6
      620 ORK                              R6 R6 K6 [0.0001]
      621 JUMPIFNOTEQKNIL                  R6 ; [+2]
      623 LOADB                            R8 0 +1
      624 LOADB                            R8 1
      625 FASTCALL2K                       ASSERT R8 K7 ; [+4]
      627 LOADK                            R9 K7 ["epsilon was nil"]
      628 GETIMPORT                        R7 K9 [assert]
      630 CALL                             R7 2 0
      631 SUB                              R8 R4 R5
      632 FASTCALL1                        MATH_ABS R8 ; [+2]
      633 GETIMPORT                        R7 K12 [math.abs]
      635 CALL                             R7 1 1
      636 JUMPIFLT                         R7 R6 ; [+2]
      638 LOADB                            R3 0 +1
      639 LOADB                            R3 1
      640 NOT                              R2 R3
      641 RETURN                           R2 1
      642 LOADB                            R2 0
      643 RETURN                           R2 1
      644 LOADB                            R2 0
      645 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isPropertyChanged"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+12]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["getInstanceData"]
       10 GETUPVAL                         R2 1
       11 CALL                             R1 1 1
       12 SETUPVAL                         R1 2
       13 GETUPVAL                         R1 3
       14 LOADK                            R3 K2 ["OnInstanceChanged"]
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R1 R1 K3 ["Invoke"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        3 LOADK                            R3 K0 ["plugin was nil"]
        4 GETIMPORT                        R1 K2 [assert]
        6 CALL                             R1 2 0
        7 LENGTH                           R3 R0
        8 LOADN                            R1 1
        9 LOADN                            R2 255
       10 FORNPREP                         R1
       11 GETTABLE                         R4 R0 R3
       12 JUMPIFNOT                        R4 ; [+10]
       13 LOADK                            R7 K3 ["Sound"]
       14 NAMECALL                         R5 R4 K4 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIF                           R5 ; [+10]
       18 LOADK                            R7 K5 ["AudioPlayer"]
       19 NAMECALL                         R5 R4 K4 ["IsA"]
       21 CALL                             R5 2 1
       22 JUMPIF                           R5 ; [+5]
       23 GETIMPORT                        R5 K8 [table.remove]
       25 MOVE                             R6 R0
       26 MOVE                             R7 R3
       27 CALL                             R5 2 0
       28 FORNLOOP                         R1
       29 LENGTH                           R1 R0
       30 JUMPIFNOTEQKN                    R1 K9 [0] ; [+2]
       32 RETURN                           R0 0
       33 SETUPVAL                         R0 1
       34 GETTABLEN                        R1 R0 1
       35 LOADK                            R3 K10 ["%* \"%*\""]
       36 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       38 GETTABLEKS                       R6 R1 K12 ["Name"]
       40 NAMECALL                         R3 R3 K13 ["format"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 LENGTH                           R3 R0
       45 LOADN                            R4 1
       46 JUMPIFNOTLT                      R4 R3 ; [+9]
       48 LOADK                            R3 K14 ["%* (%* items)"]
       49 GETTABLEKS                       R5 R1 K11 ["ClassName"]
       51 LENGTH                           R6 R0
       52 NAMECALL                         R3 R3 K13 ["format"]
       54 CALL                             R3 3 1
       55 MOVE                             R2 R3
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K15 ["setupForInstance"]
       59 MOVE                             R4 R1
       60 CALL                             R3 1 0
       61 GETUPVAL                         R3 4
       62 GETTABLEKS                       R3 R3 K16 ["getInstanceData"]
       64 MOVE                             R4 R1
       65 CALL                             R3 1 1
       66 SETUPVAL                         R3 3
       67 GETUPVAL                         R3 0
       68 LOADK                            R5 K17 ["OnOpen"]
       69 GETUPVAL                         R6 3
       70 MOVE                             R7 R2
       71 NAMECALL                         R3 R3 K18 ["Invoke"]
       73 CALL                             R3 4 0
       74 GETUPVAL                         R3 5
       75 JUMPIFNOT                        R3 ; [+4]
       76 GETUPVAL                         R3 5
       77 NAMECALL                         R3 R3 K19 ["Disconnect"]
       79 CALL                             R3 1 0
       80 GETTABLEKS                       R3 R1 K20 ["Changed"]
       82 NEWCLOSURE                       R5 P0
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          VAL R1
       85 CAPTURE                          UPVAL U3
       86 CAPTURE                          UPVAL U0
       87 NAMECALL                         R3 R3 K21 ["Connect"]
       89 CALL                             R3 2 1
       90 SETUPVAL                         R3 5
       91 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K0 ["setInstanceData"]
        8 MOVE                             R7 R5
        9 MOVE                             R8 R0
       10 CALL                             R6 2 0
       11 FORGLOOP                         R1 2 ; [-7]
       13 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 NAMECALL                         R0 R0 K0 ["Disconnect"]
        8 CALL                             R0 1 0
        9 LOADNIL                          R0
       10 SETUPVAL                         R0 1
       11 LOADNIL                          R0
       12 SETUPVAL                         R0 2
       13 GETUPVAL                         R0 3
       14 GETTABLEKS                       R0 R0 K1 ["teardown"]
       16 CALL                             R0 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOpen"]
        3 GETUPVAL                         R1 1
        4 NAMECALL                         R1 R1 K1 ["Get"]
        6 CALL                             R1 1 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_10:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R2 0
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["plugin was nil"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K3 ["GetUri"]
       11 CALL                             R1 1 1
       12 GETUPVAL                         R2 0
       13 LOADK                            R4 K4 ["Actions"]
       14 NAMECALL                         R2 R2 K5 ["GetPluginComponent"]
       16 CALL                             R2 2 1
       17 DUPTABLE                         R5 K11 [{"Uri", "Enabled", "Visible", "IsCheckable", "Checked"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K12 ["join"]
       21 MOVE                             R7 R1
       22 DUPTABLE                         R8 K15 [{"Category", "ItemId"}]
       23 LOADK                            R9 K4 ["Actions"]
       24 SETTABLEKS                       R9 R8 K13 ["Category"]
       26 LOADK                            R9 K16 ["Toggle"]
       27 SETTABLEKS                       R9 R8 K14 ["ItemId"]
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K6 ["Uri"]
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K7 ["Enabled"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K8 ["Visible"]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R5 K9 ["IsCheckable"]
       41 LOADB                            R6 0
       42 SETTABLEKS                       R6 R5 K10 ["Checked"]
       44 LOADB                            R6 1
       45 NAMECALL                         R3 R2 K17 ["CreateAsync"]
       47 CALL                             R3 3 1
       48 GETTABLEN                        R4 R3 1
       49 DUPCLOSURE                       R6 K18 [PROTO_9]
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U3
       52 NAMECALL                         R4 R4 K19 ["Connect"]
       54 CALL                             R4 2 0
       55 GETUPVAL                         R4 0
       56 LOADK                            R6 K20 ["OnEdit"]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R7 R7 K21 ["onEdit"]
       60 NAMECALL                         R4 R4 K22 ["OnInvoke"]
       62 CALL                             R4 3 0
       63 GETUPVAL                         R4 0
       64 LOADK                            R6 K23 ["OnStopEditing"]
       65 GETUPVAL                         R7 2
       66 GETTABLEKS                       R7 R7 K24 ["onStopEditing"]
       68 NAMECALL                         R4 R4 K22 ["OnInvoke"]
       70 CALL                             R4 3 0
       71 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AudioPlayerEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K11 ["PlayerUtil"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K10 ["Src"]
       31 GETTABLEKS                       R5 R5 K12 ["Types"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K14 [game]
       36 LOADK                            R7 K15 ["Selection"]
       37 NAMECALL                         R5 R5 K16 ["GetService"]
       39 CALL                             R5 2 1
       40 NEWTABLE                         R6 8 0
       42 LOADNIL                          R7
       43 NEWTABLE                         R8 0 0
       45 LOADNIL                          R9
       46 LOADNIL                          R10
       47 DUPCLOSURE                       R11 K17 [PROTO_0]
       48 DUPCLOSURE                       R12 K18 [PROTO_1]
       49 DUPCLOSURE                       R13 K19 [PROTO_2]
       50 SETTABLEKS                       R13 R6 K20 ["getInstanceData"]
       52 DUPCLOSURE                       R13 K21 [PROTO_3]
       53 SETTABLEKS                       R13 R6 K22 ["setInstanceData"]
       55 NEWCLOSURE                       R13 P4
       56 CAPTURE                          REF R10
       57 SETTABLEKS                       R13 R6 K23 ["isPropertyChanged"]
       59 NEWCLOSURE                       R13 P5
       60 CAPTURE                          REF R7
       61 CAPTURE                          REF R8
       62 CAPTURE                          VAL R3
       63 CAPTURE                          REF R10
       64 CAPTURE                          VAL R6
       65 CAPTURE                          REF R9
       66 SETTABLEKS                       R13 R6 K24 ["onOpen"]
       68 NEWCLOSURE                       R13 P6
       69 CAPTURE                          REF R10
       70 CAPTURE                          REF R8
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R13 R6 K25 ["onEdit"]
       74 NEWCLOSURE                       R13 P7
       75 CAPTURE                          REF R8
       76 CAPTURE                          REF R9
       77 CAPTURE                          REF R10
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R13 R6 K26 ["onStopEditing"]
       81 NEWCLOSURE                       R13 P8
       82 CAPTURE                          REF R7
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 SETTABLEKS                       R13 R6 K27 ["setup"]
       88 CLOSEUPVALS                      R7
       89 RETURN                           R6 1
