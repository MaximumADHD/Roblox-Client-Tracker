PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["Value"]
        2 GETTABLE                         R4 R1 R3
        3 JUMPIFNOT                        R4 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R4 K4 [Enum.KeyCode.Unknown]
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
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 1
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 LENGTH                           R6 R5
       10 JUMPIFEQKN                       R6 K1 [1] ; [+3]
       12 LOADB                            R6 0
       13 RETURN                           R6 1
       14 FORGLOOP                         R1 2 ; [-6]
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K3 [Enum.InputActionType.Direction1D]
        6 JUMPIFNOTEQ                      R1 R4 ; [+46]
        8 GETTABLEKS                       R4 R0 K4 ["up"]
       10 GETTABLEKS                       R5 R4 K5 ["Value"]
       12 GETTABLE                         R6 R3 R5
       13 JUMPIFNOT                        R6 ; [+1]
       14 JUMP                             ; [+15]
       15 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
       17 JUMPIFNOTEQ                      R4 R6 ; [+2]
       19 JUMP                             ; [+10]
       20 LOADB                            R6 1
       21 SETTABLE                         R6 R3 R5
       22 GETTABLEKS                       R8 R4 K9 ["Name"]
       24 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       26 MOVE                             R7 R2
       27 GETIMPORT                        R6 K12 [table.insert]
       29 CALL                             R6 2 0
       30 GETTABLEKS                       R4 R0 K13 ["down"]
       32 GETTABLEKS                       R5 R4 K5 ["Value"]
       34 GETTABLE                         R6 R3 R5
       35 JUMPIFNOT                        R6 ; [+1]
       36 JUMP                             ; [+245]
       37 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
       39 JUMPIFNOTEQ                      R4 R6 ; [+2]
       41 JUMP                             ; [+240]
       42 LOADB                            R6 1
       43 SETTABLE                         R6 R3 R5
       44 GETTABLEKS                       R8 R4 K9 ["Name"]
       46 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       48 MOVE                             R7 R2
       49 GETIMPORT                        R6 K12 [table.insert]
       51 CALL                             R6 2 0
       52 JUMP                             ; [+229]
       53 GETIMPORT                        R4 K15 [Enum.InputActionType.Direction2D]
       55 JUMPIFNOTEQ                      R1 R4 ; [+90]
       57 GETTABLEKS                       R4 R0 K4 ["up"]
       59 GETTABLEKS                       R5 R4 K5 ["Value"]
       61 GETTABLE                         R6 R3 R5
       62 JUMPIFNOT                        R6 ; [+1]
       63 JUMP                             ; [+15]
       64 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
       66 JUMPIFNOTEQ                      R4 R6 ; [+2]
       68 JUMP                             ; [+10]
       69 LOADB                            R6 1
       70 SETTABLE                         R6 R3 R5
       71 GETTABLEKS                       R8 R4 K9 ["Name"]
       73 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       75 MOVE                             R7 R2
       76 GETIMPORT                        R6 K12 [table.insert]
       78 CALL                             R6 2 0
       79 GETTABLEKS                       R4 R0 K16 ["left"]
       81 GETTABLEKS                       R5 R4 K5 ["Value"]
       83 GETTABLE                         R6 R3 R5
       84 JUMPIFNOT                        R6 ; [+1]
       85 JUMP                             ; [+15]
       86 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
       88 JUMPIFNOTEQ                      R4 R6 ; [+2]
       90 JUMP                             ; [+10]
       91 LOADB                            R6 1
       92 SETTABLE                         R6 R3 R5
       93 GETTABLEKS                       R8 R4 K9 ["Name"]
       95 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       97 MOVE                             R7 R2
       98 GETIMPORT                        R6 K12 [table.insert]
      100 CALL                             R6 2 0
      101 GETTABLEKS                       R4 R0 K13 ["down"]
      103 GETTABLEKS                       R5 R4 K5 ["Value"]
      105 GETTABLE                         R6 R3 R5
      106 JUMPIFNOT                        R6 ; [+1]
      107 JUMP                             ; [+15]
      108 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      110 JUMPIFNOTEQ                      R4 R6 ; [+2]
      112 JUMP                             ; [+10]
      113 LOADB                            R6 1
      114 SETTABLE                         R6 R3 R5
      115 GETTABLEKS                       R8 R4 K9 ["Name"]
      117 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      119 MOVE                             R7 R2
      120 GETIMPORT                        R6 K12 [table.insert]
      122 CALL                             R6 2 0
      123 GETTABLEKS                       R4 R0 K17 ["right"]
      125 GETTABLEKS                       R5 R4 K5 ["Value"]
      127 GETTABLE                         R6 R3 R5
      128 JUMPIFNOT                        R6 ; [+1]
      129 JUMP                             ; [+152]
      130 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      132 JUMPIFNOTEQ                      R4 R6 ; [+2]
      134 JUMP                             ; [+147]
      135 LOADB                            R6 1
      136 SETTABLE                         R6 R3 R5
      137 GETTABLEKS                       R8 R4 K9 ["Name"]
      139 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      141 MOVE                             R7 R2
      142 GETIMPORT                        R6 K12 [table.insert]
      144 CALL                             R6 2 0
      145 JUMP                             ; [+136]
      146 GETIMPORT                        R4 K19 [Enum.InputActionType.Direction3D]
      148 JUMPIFNOTEQ                      R1 R4 ; [+133]
      150 GETTABLEKS                       R4 R0 K4 ["up"]
      152 GETTABLEKS                       R5 R4 K5 ["Value"]
      154 GETTABLE                         R6 R3 R5
      155 JUMPIFNOT                        R6 ; [+1]
      156 JUMP                             ; [+15]
      157 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      159 JUMPIFNOTEQ                      R4 R6 ; [+2]
      161 JUMP                             ; [+10]
      162 LOADB                            R6 1
      163 SETTABLE                         R6 R3 R5
      164 GETTABLEKS                       R8 R4 K9 ["Name"]
      166 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      168 MOVE                             R7 R2
      169 GETIMPORT                        R6 K12 [table.insert]
      171 CALL                             R6 2 0
      172 GETTABLEKS                       R4 R0 K16 ["left"]
      174 GETTABLEKS                       R5 R4 K5 ["Value"]
      176 GETTABLE                         R6 R3 R5
      177 JUMPIFNOT                        R6 ; [+1]
      178 JUMP                             ; [+15]
      179 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      181 JUMPIFNOTEQ                      R4 R6 ; [+2]
      183 JUMP                             ; [+10]
      184 LOADB                            R6 1
      185 SETTABLE                         R6 R3 R5
      186 GETTABLEKS                       R8 R4 K9 ["Name"]
      188 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      190 MOVE                             R7 R2
      191 GETIMPORT                        R6 K12 [table.insert]
      193 CALL                             R6 2 0
      194 GETTABLEKS                       R4 R0 K20 ["forward"]
      196 GETTABLEKS                       R5 R4 K5 ["Value"]
      198 GETTABLE                         R6 R3 R5
      199 JUMPIFNOT                        R6 ; [+1]
      200 JUMP                             ; [+15]
      201 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      203 JUMPIFNOTEQ                      R4 R6 ; [+2]
      205 JUMP                             ; [+10]
      206 LOADB                            R6 1
      207 SETTABLE                         R6 R3 R5
      208 GETTABLEKS                       R8 R4 K9 ["Name"]
      210 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      212 MOVE                             R7 R2
      213 GETIMPORT                        R6 K12 [table.insert]
      215 CALL                             R6 2 0
      216 GETTABLEKS                       R4 R0 K13 ["down"]
      218 GETTABLEKS                       R5 R4 K5 ["Value"]
      220 GETTABLE                         R6 R3 R5
      221 JUMPIFNOT                        R6 ; [+1]
      222 JUMP                             ; [+15]
      223 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      225 JUMPIFNOTEQ                      R4 R6 ; [+2]
      227 JUMP                             ; [+10]
      228 LOADB                            R6 1
      229 SETTABLE                         R6 R3 R5
      230 GETTABLEKS                       R8 R4 K9 ["Name"]
      232 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      234 MOVE                             R7 R2
      235 GETIMPORT                        R6 K12 [table.insert]
      237 CALL                             R6 2 0
      238 GETTABLEKS                       R4 R0 K17 ["right"]
      240 GETTABLEKS                       R5 R4 K5 ["Value"]
      242 GETTABLE                         R6 R3 R5
      243 JUMPIFNOT                        R6 ; [+1]
      244 JUMP                             ; [+15]
      245 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      247 JUMPIFNOTEQ                      R4 R6 ; [+2]
      249 JUMP                             ; [+10]
      250 LOADB                            R6 1
      251 SETTABLE                         R6 R3 R5
      252 GETTABLEKS                       R8 R4 K9 ["Name"]
      254 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      256 MOVE                             R7 R2
      257 GETIMPORT                        R6 K12 [table.insert]
      259 CALL                             R6 2 0
      260 GETTABLEKS                       R4 R0 K21 ["backward"]
      262 GETTABLEKS                       R5 R4 K5 ["Value"]
      264 GETTABLE                         R6 R3 R5
      265 JUMPIFNOT                        R6 ; [+1]
      266 JUMP                             ; [+15]
      267 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      269 JUMPIFNOTEQ                      R4 R6 ; [+2]
      271 JUMP                             ; [+10]
      272 LOADB                            R6 1
      273 SETTABLE                         R6 R3 R5
      274 GETTABLEKS                       R8 R4 K9 ["Name"]
      276 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      278 MOVE                             R7 R2
      279 GETIMPORT                        R6 K12 [table.insert]
      281 CALL                             R6 2 0
      282 GETTABLEKS                       R4 R0 K22 ["keyCode"]
      284 GETTABLEKS                       R5 R4 K5 ["Value"]
      286 GETTABLE                         R6 R3 R5
      287 JUMPIFNOT                        R6 ; [+1]
      288 JUMP                             ; [+15]
      289 GETIMPORT                        R6 K8 [Enum.KeyCode.Unknown]
      291 JUMPIFNOTEQ                      R4 R6 ; [+2]
      293 JUMP                             ; [+10]
      294 LOADB                            R6 1
      295 SETTABLE                         R6 R3 R5
      296 GETTABLEKS                       R8 R4 K9 ["Name"]
      298 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      300 MOVE                             R7 R2
      301 GETIMPORT                        R6 K12 [table.insert]
      303 CALL                             R6 2 0
      304 GETTABLEKS                       R4 R0 K23 ["uiButton"]
      306 JUMPIFNOT                        R4 ; [+16]
      307 GETTABLEKS                       R5 R0 K23 ["uiButton"]
      309 GETTABLEKS                       R4 R5 K24 ["name"]
      311 JUMPIFEQKS                       R4 K25 [""] ; [+11]
      313 GETTABLEKS                       R7 R0 K23 ["uiButton"]
      315 GETTABLEKS                       R6 R7 K24 ["name"]
      317 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      319 MOVE                             R5 R2
      320 GETIMPORT                        R4 K12 [table.insert]
      322 CALL                             R4 2 0
      323 LENGTH                           R4 R2
      324 JUMPIFNOTEQKN                    R4 K26 [0] ; [+3]
      326 LOADNIL                          R4
      327 RETURN                           R4 1
      328 LENGTH                           R5 R2
      329 JUMPIFNOTEQKN                    R5 K26 [0] ; [+3]
      331 LOADB                            R4 1
      332 JUMP                             ; [+12]
      333 MOVE                             R5 R2
      334 LOADNIL                          R6
      335 LOADNIL                          R7
      336 FORGPREP                         R5
      337 LENGTH                           R10 R9
      338 JUMPIFEQKN                       R10 K27 [1] ; [+3]
      340 LOADB                            R4 0
      341 JUMP                             ; [+3]
      342 FORGLOOP                         R5 2 ; [-6]
      344 LOADB                            R4 1
      345 JUMPIFNOT                        R4 ; [+6]
      346 GETIMPORT                        R4 K29 [table.concat]
      348 MOVE                             R5 R2
      349 LOADK                            R6 K25 [""]
      350 CALL                             R4 2 -1
      351 RETURN                           R4 -1
      352 GETIMPORT                        R4 K29 [table.concat]
      354 MOVE                             R5 R2
      355 LOADK                            R6 K30 [" + "]
      356 CALL                             R4 2 -1
      357 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 RETURN                           R4 1
