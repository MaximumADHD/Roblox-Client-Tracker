PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["Value"]
        2 GETTABLE                         R4 R1 R3
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K4 [Enum.KeyCode.None]
        7 JUMPIFNOTEQ                      R2 R4 ; [+2]
        9 RETURN                           R0 0
       10 LOADB                            R4 1
       11 SETTABLE                         R4 R1 R3
       12 GETTABLEKS                       R6 R2 K5 ["Name"]
       14 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       16 MOVE                             R5 R0
       17 GETIMPORT                        R4 K8 [table.insert]
       19 CALL                             R4 2 0
       20 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LENGTH                           R6 R5
        5 JUMPIFEQKN                       R6 K0 [1] ; [+3]
        7 LOADB                            R6 0
        8 RETURN                           R6 1
        9 FORGLOOP                         R1 2 ; [-6]
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETUPVAL                         R4 0
        5 CALL                             R4 0 1
        6 JUMPIFNOT                        R4 ; [+7]
        7 GETTABLEKS                       R4 R0 K0 ["displayName"]
        9 JUMPIFEQKS                       R4 K1 [""] ; [+4]
       11 GETTABLEKS                       R4 R0 K0 ["displayName"]
       13 RETURN                           R4 1
       14 GETIMPORT                        R4 K5 [Enum.InputActionType.Direction1D]
       16 JUMPIFNOTEQ                      R1 R4 ; [+46]
       18 GETTABLEKS                       R4 R0 K6 ["up"]
       20 GETTABLEKS                       R5 R4 K7 ["Value"]
       22 GETTABLE                         R6 R3 R5
       23 JUMPIFNOT                        R6 ; [+1]
       24 JUMP                             ; [+15]
       25 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       27 JUMPIFNOTEQ                      R4 R6 ; [+2]
       29 JUMP                             ; [+10]
       30 LOADB                            R6 1
       31 SETTABLE                         R6 R3 R5
       32 GETTABLEKS                       R8 R4 K11 ["Name"]
       34 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       36 MOVE                             R7 R2
       37 GETIMPORT                        R6 K14 [table.insert]
       39 CALL                             R6 2 0
       40 GETTABLEKS                       R4 R0 K15 ["down"]
       42 GETTABLEKS                       R5 R4 K7 ["Value"]
       44 GETTABLE                         R6 R3 R5
       45 JUMPIFNOT                        R6 ; [+1]
       46 JUMP                             ; [+245]
       47 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       49 JUMPIFNOTEQ                      R4 R6 ; [+2]
       51 JUMP                             ; [+240]
       52 LOADB                            R6 1
       53 SETTABLE                         R6 R3 R5
       54 GETTABLEKS                       R8 R4 K11 ["Name"]
       56 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       58 MOVE                             R7 R2
       59 GETIMPORT                        R6 K14 [table.insert]
       61 CALL                             R6 2 0
       62 JUMP                             ; [+229]
       63 GETIMPORT                        R4 K17 [Enum.InputActionType.Direction2D]
       65 JUMPIFNOTEQ                      R1 R4 ; [+90]
       67 GETTABLEKS                       R4 R0 K6 ["up"]
       69 GETTABLEKS                       R5 R4 K7 ["Value"]
       71 GETTABLE                         R6 R3 R5
       72 JUMPIFNOT                        R6 ; [+1]
       73 JUMP                             ; [+15]
       74 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       76 JUMPIFNOTEQ                      R4 R6 ; [+2]
       78 JUMP                             ; [+10]
       79 LOADB                            R6 1
       80 SETTABLE                         R6 R3 R5
       81 GETTABLEKS                       R8 R4 K11 ["Name"]
       83 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       85 MOVE                             R7 R2
       86 GETIMPORT                        R6 K14 [table.insert]
       88 CALL                             R6 2 0
       89 GETTABLEKS                       R4 R0 K18 ["left"]
       91 GETTABLEKS                       R5 R4 K7 ["Value"]
       93 GETTABLE                         R6 R3 R5
       94 JUMPIFNOT                        R6 ; [+1]
       95 JUMP                             ; [+15]
       96 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       98 JUMPIFNOTEQ                      R4 R6 ; [+2]
      100 JUMP                             ; [+10]
      101 LOADB                            R6 1
      102 SETTABLE                         R6 R3 R5
      103 GETTABLEKS                       R8 R4 K11 ["Name"]
      105 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      107 MOVE                             R7 R2
      108 GETIMPORT                        R6 K14 [table.insert]
      110 CALL                             R6 2 0
      111 GETTABLEKS                       R4 R0 K15 ["down"]
      113 GETTABLEKS                       R5 R4 K7 ["Value"]
      115 GETTABLE                         R6 R3 R5
      116 JUMPIFNOT                        R6 ; [+1]
      117 JUMP                             ; [+15]
      118 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      120 JUMPIFNOTEQ                      R4 R6 ; [+2]
      122 JUMP                             ; [+10]
      123 LOADB                            R6 1
      124 SETTABLE                         R6 R3 R5
      125 GETTABLEKS                       R8 R4 K11 ["Name"]
      127 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      129 MOVE                             R7 R2
      130 GETIMPORT                        R6 K14 [table.insert]
      132 CALL                             R6 2 0
      133 GETTABLEKS                       R4 R0 K19 ["right"]
      135 GETTABLEKS                       R5 R4 K7 ["Value"]
      137 GETTABLE                         R6 R3 R5
      138 JUMPIFNOT                        R6 ; [+1]
      139 JUMP                             ; [+152]
      140 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      142 JUMPIFNOTEQ                      R4 R6 ; [+2]
      144 JUMP                             ; [+147]
      145 LOADB                            R6 1
      146 SETTABLE                         R6 R3 R5
      147 GETTABLEKS                       R8 R4 K11 ["Name"]
      149 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      151 MOVE                             R7 R2
      152 GETIMPORT                        R6 K14 [table.insert]
      154 CALL                             R6 2 0
      155 JUMP                             ; [+136]
      156 GETIMPORT                        R4 K21 [Enum.InputActionType.Direction3D]
      158 JUMPIFNOTEQ                      R1 R4 ; [+133]
      160 GETTABLEKS                       R4 R0 K6 ["up"]
      162 GETTABLEKS                       R5 R4 K7 ["Value"]
      164 GETTABLE                         R6 R3 R5
      165 JUMPIFNOT                        R6 ; [+1]
      166 JUMP                             ; [+15]
      167 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      169 JUMPIFNOTEQ                      R4 R6 ; [+2]
      171 JUMP                             ; [+10]
      172 LOADB                            R6 1
      173 SETTABLE                         R6 R3 R5
      174 GETTABLEKS                       R8 R4 K11 ["Name"]
      176 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      178 MOVE                             R7 R2
      179 GETIMPORT                        R6 K14 [table.insert]
      181 CALL                             R6 2 0
      182 GETTABLEKS                       R4 R0 K18 ["left"]
      184 GETTABLEKS                       R5 R4 K7 ["Value"]
      186 GETTABLE                         R6 R3 R5
      187 JUMPIFNOT                        R6 ; [+1]
      188 JUMP                             ; [+15]
      189 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      191 JUMPIFNOTEQ                      R4 R6 ; [+2]
      193 JUMP                             ; [+10]
      194 LOADB                            R6 1
      195 SETTABLE                         R6 R3 R5
      196 GETTABLEKS                       R8 R4 K11 ["Name"]
      198 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      200 MOVE                             R7 R2
      201 GETIMPORT                        R6 K14 [table.insert]
      203 CALL                             R6 2 0
      204 GETTABLEKS                       R4 R0 K22 ["forward"]
      206 GETTABLEKS                       R5 R4 K7 ["Value"]
      208 GETTABLE                         R6 R3 R5
      209 JUMPIFNOT                        R6 ; [+1]
      210 JUMP                             ; [+15]
      211 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      213 JUMPIFNOTEQ                      R4 R6 ; [+2]
      215 JUMP                             ; [+10]
      216 LOADB                            R6 1
      217 SETTABLE                         R6 R3 R5
      218 GETTABLEKS                       R8 R4 K11 ["Name"]
      220 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      222 MOVE                             R7 R2
      223 GETIMPORT                        R6 K14 [table.insert]
      225 CALL                             R6 2 0
      226 GETTABLEKS                       R4 R0 K15 ["down"]
      228 GETTABLEKS                       R5 R4 K7 ["Value"]
      230 GETTABLE                         R6 R3 R5
      231 JUMPIFNOT                        R6 ; [+1]
      232 JUMP                             ; [+15]
      233 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      235 JUMPIFNOTEQ                      R4 R6 ; [+2]
      237 JUMP                             ; [+10]
      238 LOADB                            R6 1
      239 SETTABLE                         R6 R3 R5
      240 GETTABLEKS                       R8 R4 K11 ["Name"]
      242 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      244 MOVE                             R7 R2
      245 GETIMPORT                        R6 K14 [table.insert]
      247 CALL                             R6 2 0
      248 GETTABLEKS                       R4 R0 K19 ["right"]
      250 GETTABLEKS                       R5 R4 K7 ["Value"]
      252 GETTABLE                         R6 R3 R5
      253 JUMPIFNOT                        R6 ; [+1]
      254 JUMP                             ; [+15]
      255 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      257 JUMPIFNOTEQ                      R4 R6 ; [+2]
      259 JUMP                             ; [+10]
      260 LOADB                            R6 1
      261 SETTABLE                         R6 R3 R5
      262 GETTABLEKS                       R8 R4 K11 ["Name"]
      264 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      266 MOVE                             R7 R2
      267 GETIMPORT                        R6 K14 [table.insert]
      269 CALL                             R6 2 0
      270 GETTABLEKS                       R4 R0 K23 ["backward"]
      272 GETTABLEKS                       R5 R4 K7 ["Value"]
      274 GETTABLE                         R6 R3 R5
      275 JUMPIFNOT                        R6 ; [+1]
      276 JUMP                             ; [+15]
      277 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      279 JUMPIFNOTEQ                      R4 R6 ; [+2]
      281 JUMP                             ; [+10]
      282 LOADB                            R6 1
      283 SETTABLE                         R6 R3 R5
      284 GETTABLEKS                       R8 R4 K11 ["Name"]
      286 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      288 MOVE                             R7 R2
      289 GETIMPORT                        R6 K14 [table.insert]
      291 CALL                             R6 2 0
      292 GETTABLEKS                       R4 R0 K24 ["keyCode"]
      294 GETTABLEKS                       R5 R4 K7 ["Value"]
      296 GETTABLE                         R6 R3 R5
      297 JUMPIFNOT                        R6 ; [+1]
      298 JUMP                             ; [+15]
      299 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      301 JUMPIFNOTEQ                      R4 R6 ; [+2]
      303 JUMP                             ; [+10]
      304 LOADB                            R6 1
      305 SETTABLE                         R6 R3 R5
      306 GETTABLEKS                       R8 R4 K11 ["Name"]
      308 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      310 MOVE                             R7 R2
      311 GETIMPORT                        R6 K14 [table.insert]
      313 CALL                             R6 2 0
      314 GETTABLEKS                       R4 R0 K25 ["uiButton"]
      316 JUMPIFNOT                        R4 ; [+16]
      317 GETTABLEKS                       R4 R0 K25 ["uiButton"]
      319 GETTABLEKS                       R4 R4 K26 ["name"]
      321 JUMPIFEQKS                       R4 K1 [""] ; [+11]
      323 GETTABLEKS                       R6 R0 K25 ["uiButton"]
      325 GETTABLEKS                       R6 R6 K26 ["name"]
      327 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      329 MOVE                             R5 R2
      330 GETIMPORT                        R4 K14 [table.insert]
      332 CALL                             R4 2 0
      333 LENGTH                           R4 R2
      334 JUMPIFNOTEQKN                    R4 K27 [0] ; [+3]
      336 LOADNIL                          R4
      337 RETURN                           R4 1
      338 MOVE                             R5 R2
      339 LOADNIL                          R6
      340 LOADNIL                          R7
      341 FORGPREP                         R5
      342 LENGTH                           R10 R9
      343 JUMPIFEQKN                       R10 K28 [1] ; [+3]
      345 LOADB                            R4 0
      346 JUMP                             ; [+3]
      347 FORGLOOP                         R5 2 ; [-6]
      349 LOADB                            R4 1
      350 JUMPIFNOT                        R4 ; [+6]
      351 GETIMPORT                        R4 K30 [table.concat]
      353 MOVE                             R5 R2
      354 LOADK                            R6 K1 [""]
      355 CALL                             R4 2 -1
      356 RETURN                           R4 -1
      357 GETIMPORT                        R4 K30 [table.concat]
      359 MOVE                             R5 R2
      360 LOADK                            R6 K31 [" + "]
      361 CALL                             R4 2 -1
      362 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Flags"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["getFFlagIAMUseDisplayImageName"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R0 K4 ["Src"]
       20 GETTABLEKS                       R4 R4 K9 ["Types"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K10 [PROTO_0]
       24 DUPCLOSURE                       R5 K11 [PROTO_1]
       25 DUPCLOSURE                       R6 K12 [PROTO_2]
       26 CAPTURE                          VAL R2
       27 RETURN                           R6 1
