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
        4 GETTABLEKS                       R4 R0 K0 ["displayName"]
        6 JUMPIFEQKS                       R4 K1 [""] ; [+4]
        8 GETTABLEKS                       R4 R0 K0 ["displayName"]
       10 RETURN                           R4 1
       11 GETIMPORT                        R4 K5 [Enum.InputActionType.Direction1D]
       13 JUMPIFNOTEQ                      R1 R4 ; [+46]
       15 GETTABLEKS                       R4 R0 K6 ["up"]
       17 GETTABLEKS                       R5 R4 K7 ["Value"]
       19 GETTABLE                         R6 R3 R5
       20 JUMPIFNOT                        R6 ; [+1]
       21 JUMP                             ; [+15]
       22 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       24 JUMPIFNOTEQ                      R4 R6 ; [+2]
       26 JUMP                             ; [+10]
       27 LOADB                            R6 1
       28 SETTABLE                         R6 R3 R5
       29 GETTABLEKS                       R8 R4 K11 ["Name"]
       31 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       33 MOVE                             R7 R2
       34 GETIMPORT                        R6 K14 [table.insert]
       36 CALL                             R6 2 0
       37 GETTABLEKS                       R4 R0 K15 ["down"]
       39 GETTABLEKS                       R5 R4 K7 ["Value"]
       41 GETTABLE                         R6 R3 R5
       42 JUMPIFNOT                        R6 ; [+1]
       43 JUMP                             ; [+245]
       44 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       46 JUMPIFNOTEQ                      R4 R6 ; [+2]
       48 JUMP                             ; [+240]
       49 LOADB                            R6 1
       50 SETTABLE                         R6 R3 R5
       51 GETTABLEKS                       R8 R4 K11 ["Name"]
       53 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       55 MOVE                             R7 R2
       56 GETIMPORT                        R6 K14 [table.insert]
       58 CALL                             R6 2 0
       59 JUMP                             ; [+229]
       60 GETIMPORT                        R4 K17 [Enum.InputActionType.Direction2D]
       62 JUMPIFNOTEQ                      R1 R4 ; [+90]
       64 GETTABLEKS                       R4 R0 K6 ["up"]
       66 GETTABLEKS                       R5 R4 K7 ["Value"]
       68 GETTABLE                         R6 R3 R5
       69 JUMPIFNOT                        R6 ; [+1]
       70 JUMP                             ; [+15]
       71 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       73 JUMPIFNOTEQ                      R4 R6 ; [+2]
       75 JUMP                             ; [+10]
       76 LOADB                            R6 1
       77 SETTABLE                         R6 R3 R5
       78 GETTABLEKS                       R8 R4 K11 ["Name"]
       80 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       82 MOVE                             R7 R2
       83 GETIMPORT                        R6 K14 [table.insert]
       85 CALL                             R6 2 0
       86 GETTABLEKS                       R4 R0 K18 ["left"]
       88 GETTABLEKS                       R5 R4 K7 ["Value"]
       90 GETTABLE                         R6 R3 R5
       91 JUMPIFNOT                        R6 ; [+1]
       92 JUMP                             ; [+15]
       93 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
       95 JUMPIFNOTEQ                      R4 R6 ; [+2]
       97 JUMP                             ; [+10]
       98 LOADB                            R6 1
       99 SETTABLE                         R6 R3 R5
      100 GETTABLEKS                       R8 R4 K11 ["Name"]
      102 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      104 MOVE                             R7 R2
      105 GETIMPORT                        R6 K14 [table.insert]
      107 CALL                             R6 2 0
      108 GETTABLEKS                       R4 R0 K15 ["down"]
      110 GETTABLEKS                       R5 R4 K7 ["Value"]
      112 GETTABLE                         R6 R3 R5
      113 JUMPIFNOT                        R6 ; [+1]
      114 JUMP                             ; [+15]
      115 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      117 JUMPIFNOTEQ                      R4 R6 ; [+2]
      119 JUMP                             ; [+10]
      120 LOADB                            R6 1
      121 SETTABLE                         R6 R3 R5
      122 GETTABLEKS                       R8 R4 K11 ["Name"]
      124 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      126 MOVE                             R7 R2
      127 GETIMPORT                        R6 K14 [table.insert]
      129 CALL                             R6 2 0
      130 GETTABLEKS                       R4 R0 K19 ["right"]
      132 GETTABLEKS                       R5 R4 K7 ["Value"]
      134 GETTABLE                         R6 R3 R5
      135 JUMPIFNOT                        R6 ; [+1]
      136 JUMP                             ; [+152]
      137 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      139 JUMPIFNOTEQ                      R4 R6 ; [+2]
      141 JUMP                             ; [+147]
      142 LOADB                            R6 1
      143 SETTABLE                         R6 R3 R5
      144 GETTABLEKS                       R8 R4 K11 ["Name"]
      146 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      148 MOVE                             R7 R2
      149 GETIMPORT                        R6 K14 [table.insert]
      151 CALL                             R6 2 0
      152 JUMP                             ; [+136]
      153 GETIMPORT                        R4 K21 [Enum.InputActionType.Direction3D]
      155 JUMPIFNOTEQ                      R1 R4 ; [+133]
      157 GETTABLEKS                       R4 R0 K6 ["up"]
      159 GETTABLEKS                       R5 R4 K7 ["Value"]
      161 GETTABLE                         R6 R3 R5
      162 JUMPIFNOT                        R6 ; [+1]
      163 JUMP                             ; [+15]
      164 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      166 JUMPIFNOTEQ                      R4 R6 ; [+2]
      168 JUMP                             ; [+10]
      169 LOADB                            R6 1
      170 SETTABLE                         R6 R3 R5
      171 GETTABLEKS                       R8 R4 K11 ["Name"]
      173 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      175 MOVE                             R7 R2
      176 GETIMPORT                        R6 K14 [table.insert]
      178 CALL                             R6 2 0
      179 GETTABLEKS                       R4 R0 K18 ["left"]
      181 GETTABLEKS                       R5 R4 K7 ["Value"]
      183 GETTABLE                         R6 R3 R5
      184 JUMPIFNOT                        R6 ; [+1]
      185 JUMP                             ; [+15]
      186 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      188 JUMPIFNOTEQ                      R4 R6 ; [+2]
      190 JUMP                             ; [+10]
      191 LOADB                            R6 1
      192 SETTABLE                         R6 R3 R5
      193 GETTABLEKS                       R8 R4 K11 ["Name"]
      195 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      197 MOVE                             R7 R2
      198 GETIMPORT                        R6 K14 [table.insert]
      200 CALL                             R6 2 0
      201 GETTABLEKS                       R4 R0 K22 ["forward"]
      203 GETTABLEKS                       R5 R4 K7 ["Value"]
      205 GETTABLE                         R6 R3 R5
      206 JUMPIFNOT                        R6 ; [+1]
      207 JUMP                             ; [+15]
      208 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      210 JUMPIFNOTEQ                      R4 R6 ; [+2]
      212 JUMP                             ; [+10]
      213 LOADB                            R6 1
      214 SETTABLE                         R6 R3 R5
      215 GETTABLEKS                       R8 R4 K11 ["Name"]
      217 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      219 MOVE                             R7 R2
      220 GETIMPORT                        R6 K14 [table.insert]
      222 CALL                             R6 2 0
      223 GETTABLEKS                       R4 R0 K15 ["down"]
      225 GETTABLEKS                       R5 R4 K7 ["Value"]
      227 GETTABLE                         R6 R3 R5
      228 JUMPIFNOT                        R6 ; [+1]
      229 JUMP                             ; [+15]
      230 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      232 JUMPIFNOTEQ                      R4 R6 ; [+2]
      234 JUMP                             ; [+10]
      235 LOADB                            R6 1
      236 SETTABLE                         R6 R3 R5
      237 GETTABLEKS                       R8 R4 K11 ["Name"]
      239 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      241 MOVE                             R7 R2
      242 GETIMPORT                        R6 K14 [table.insert]
      244 CALL                             R6 2 0
      245 GETTABLEKS                       R4 R0 K19 ["right"]
      247 GETTABLEKS                       R5 R4 K7 ["Value"]
      249 GETTABLE                         R6 R3 R5
      250 JUMPIFNOT                        R6 ; [+1]
      251 JUMP                             ; [+15]
      252 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      254 JUMPIFNOTEQ                      R4 R6 ; [+2]
      256 JUMP                             ; [+10]
      257 LOADB                            R6 1
      258 SETTABLE                         R6 R3 R5
      259 GETTABLEKS                       R8 R4 K11 ["Name"]
      261 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      263 MOVE                             R7 R2
      264 GETIMPORT                        R6 K14 [table.insert]
      266 CALL                             R6 2 0
      267 GETTABLEKS                       R4 R0 K23 ["backward"]
      269 GETTABLEKS                       R5 R4 K7 ["Value"]
      271 GETTABLE                         R6 R3 R5
      272 JUMPIFNOT                        R6 ; [+1]
      273 JUMP                             ; [+15]
      274 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      276 JUMPIFNOTEQ                      R4 R6 ; [+2]
      278 JUMP                             ; [+10]
      279 LOADB                            R6 1
      280 SETTABLE                         R6 R3 R5
      281 GETTABLEKS                       R8 R4 K11 ["Name"]
      283 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      285 MOVE                             R7 R2
      286 GETIMPORT                        R6 K14 [table.insert]
      288 CALL                             R6 2 0
      289 GETTABLEKS                       R4 R0 K24 ["keyCode"]
      291 GETTABLEKS                       R5 R4 K7 ["Value"]
      293 GETTABLE                         R6 R3 R5
      294 JUMPIFNOT                        R6 ; [+1]
      295 JUMP                             ; [+15]
      296 GETIMPORT                        R6 K10 [Enum.KeyCode.None]
      298 JUMPIFNOTEQ                      R4 R6 ; [+2]
      300 JUMP                             ; [+10]
      301 LOADB                            R6 1
      302 SETTABLE                         R6 R3 R5
      303 GETTABLEKS                       R8 R4 K11 ["Name"]
      305 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
      307 MOVE                             R7 R2
      308 GETIMPORT                        R6 K14 [table.insert]
      310 CALL                             R6 2 0
      311 GETTABLEKS                       R4 R0 K25 ["uiButton"]
      313 JUMPIFNOT                        R4 ; [+16]
      314 GETTABLEKS                       R4 R0 K25 ["uiButton"]
      316 GETTABLEKS                       R4 R4 K26 ["name"]
      318 JUMPIFEQKS                       R4 K1 [""] ; [+11]
      320 GETTABLEKS                       R6 R0 K25 ["uiButton"]
      322 GETTABLEKS                       R6 R6 K26 ["name"]
      324 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
      326 MOVE                             R5 R2
      327 GETIMPORT                        R4 K14 [table.insert]
      329 CALL                             R4 2 0
      330 LENGTH                           R4 R2
      331 JUMPIFNOTEQKN                    R4 K27 [0] ; [+3]
      333 LOADNIL                          R4
      334 RETURN                           R4 1
      335 MOVE                             R5 R2
      336 LOADNIL                          R6
      337 LOADNIL                          R7
      338 FORGPREP                         R5
      339 LENGTH                           R10 R9
      340 JUMPIFEQKN                       R10 K28 [1] ; [+3]
      342 LOADB                            R4 0
      343 JUMP                             ; [+3]
      344 FORGLOOP                         R5 2 ; [-6]
      346 LOADB                            R4 1
      347 JUMPIFNOT                        R4 ; [+6]
      348 GETIMPORT                        R4 K30 [table.concat]
      350 MOVE                             R5 R2
      351 LOADK                            R6 K1 [""]
      352 CALL                             R4 2 -1
      353 RETURN                           R4 -1
      354 GETIMPORT                        R4 K30 [table.concat]
      356 MOVE                             R5 R2
      357 LOADK                            R6 K31 [" + "]
      358 CALL                             R4 2 -1
      359 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_1]
       16 DUPCLOSURE                       R4 K10 [PROTO_2]
       17 RETURN                           R4 1
