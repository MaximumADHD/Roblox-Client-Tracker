PROTO_0:
        0 NEWTABLE                         R1 16 0
        2 NEWTABLE                         R2 0 11
        4 NEWTABLE                         R3 0 4
        6 LOADK                            R4 K0 ["LINE_BREAK"]
        7 LOADK                            R5 K1 ["^\n"]
        8 LOADK                            R6 K1 ["^\n"]
        9 LOADN                            R7 1
       10 SETLIST                          R3 R4 4 [1]
       12 NEWTABLE                         R4 0 3
       14 LOADK                            R5 K2 ["HEADING"]
       15 LOADK                            R6 K3 ["^[#]+"]
       16 LOADK                            R7 K4 ["^([#]+)"]
       17 SETLIST                          R4 R5 3 [1]
       19 NEWTABLE                         R5 0 4
       21 LOADK                            R6 K5 ["DIVIDER"]
       22 LOADK                            R7 K6 ["^[-]+[ \t]*\n"]
       23 LOADK                            R8 K7 ["^([-]+)[ \t]*\n"]
       24 LOADN                            R9 1
       25 SETLIST                          R5 R6 4 [1]
       27 NEWTABLE                         R6 0 4
       29 LOADK                            R7 K8 ["DIVIDER_2"]
       30 LOADK                            R8 K9 ["^[=]+[ \t]*\n"]
       31 LOADK                            R9 K10 ["^([=]+)[ \t]*\n"]
       32 LOADN                            R10 1
       33 SETLIST                          R6 R7 4 [1]
       35 NEWTABLE                         R7 0 3
       37 LOADK                            R8 K11 ["BULLET_LIST_ITEM"]
       38 LOADK                            R9 K12 ["^%s*%* "]
       39 LOADK                            R10 K13 ["^(%s*)(%* )"]
       40 SETLIST                          R7 R8 3 [1]
       42 NEWTABLE                         R8 0 3
       44 LOADK                            R9 K14 ["BULLET_LIST_ITEM_2"]
       45 LOADK                            R10 K15 ["^%s*- "]
       46 LOADK                            R11 K16 ["^(%s*)(- )"]
       47 SETLIST                          R8 R9 3 [1]
       49 NEWTABLE                         R9 0 3
       51 LOADK                            R10 K17 ["CODE_BLOCK"]
       52 LOADK                            R11 K18 ["^```[%w]*\n.-```"]
       53 LOADK                            R12 K19 ["^```([%w]*)\n(.-)```"]
       54 SETLIST                          R9 R10 3 [1]
       56 NEWTABLE                         R10 0 3
       58 LOADK                            R11 K17 ["CODE_BLOCK"]
       59 LOADK                            R12 K20 ["^```[%w]*\n.+$"]
       60 LOADK                            R13 K21 ["^```([%w]*)\n(.+)$"]
       61 SETLIST                          R10 R11 3 [1]
       63 NEWTABLE                         R11 0 2
       65 LOADK                            R12 K22 ["QUOTE"]
       66 LOADK                            R13 K23 ["^%s*>"]
       67 SETLIST                          R11 R12 2 [1]
       69 NEWTABLE                         R12 0 3
       71 LOADK                            R13 K24 ["ORDERED_LIST_ITEM"]
       72 LOADK                            R14 K25 ["^%s*[0-9A-Za-z]+%."]
       73 LOADK                            R15 K26 ["^(%s*)([0-9A-Za-z]+)%."]
       74 SETLIST                          R12 R13 3 [1]
       76 NEWTABLE                         R13 0 2
       78 LOADK                            R14 K27 ["TABLE_ROW"]
       79 LOADK                            R15 K28 ["^|"]
       80 SETLIST                          R13 R14 2 [1]
       82 SETLIST                          R2 R3 11 [1]
       84 SETTABLEKS                       R2 R1 K29 ["\n"]
       86 NEWTABLE                         R2 0 1
       88 NEWTABLE                         R3 0 3
       90 LOADK                            R4 K30 ["ESCAPE"]
       91 LOADK                            R5 K31 ["^\\."]
       92 LOADK                            R6 K32 ["^\\(.)"]
       93 SETLIST                          R3 R4 3 [1]
       95 SETLIST                          R2 R3 1 [1]
       97 SETTABLEKS                       R2 R1 K33 ["\\"]
       99 NEWTABLE                         R2 0 1
      101 NEWTABLE                         R3 0 2
      103 LOADK                            R4 K34 ["TABLE_HEADER"]
      104 LOADK                            R5 K35 ["^[-]+"]
      105 SETLIST                          R3 R4 2 [1]
      107 SETLIST                          R2 R3 1 [1]
      109 SETTABLEKS                       R2 R1 K36 ["-"]
      111 NEWTABLE                         R2 0 1
      113 NEWTABLE                         R3 0 2
      115 LOADK                            R4 K37 ["TABLE_HEADER_2"]
      116 LOADK                            R5 K38 ["^[=]+"]
      117 SETLIST                          R3 R4 2 [1]
      119 SETLIST                          R2 R3 1 [1]
      121 SETTABLEKS                       R2 R1 K39 ["="]
      123 NEWTABLE                         R2 0 1
      125 NEWTABLE                         R3 0 3
      127 LOADK                            R4 K40 ["IMAGE"]
      128 LOADK                            R5 K41 ["^!%[[^%]]+%]%([^%)]+%)"]
      129 LOADK                            R6 K42 ["^!%[([^%]]+)%]%(([^%)]+)%)"]
      130 SETLIST                          R3 R4 3 [1]
      132 SETLIST                          R2 R3 1 [1]
      134 SETTABLEKS                       R2 R1 K43 ["!"]
      136 NEWTABLE                         R2 0 1
      138 NEWTABLE                         R3 0 2
      140 LOADK                            R4 K44 ["TABLE_DIVIDER"]
      141 LOADK                            R5 K28 ["^|"]
      142 SETLIST                          R3 R4 2 [1]
      144 SETLIST                          R2 R3 1 [1]
      146 SETTABLEKS                       R2 R1 K45 ["|"]
      148 NEWTABLE                         R2 0 3
      150 NEWTABLE                         R3 0 3
      152 LOADK                            R4 K46 ["OPEN_CLOSE"]
      153 LOADK                            R5 K47 ["^<[^>]*/>"]
      154 LOADK                            R6 K48 ["^<([%w-]+)%s?([^>]*)/>"]
      155 SETLIST                          R3 R4 3 [1]
      157 NEWTABLE                         R4 0 3
      159 LOADK                            R5 K49 ["CLOSE"]
      160 LOADK                            R6 K50 ["^</[^>]*>"]
      161 LOADK                            R7 K51 ["^</([%w-]+)%s?([^>]*)>"]
      162 SETLIST                          R4 R5 3 [1]
      164 NEWTABLE                         R5 0 3
      166 LOADK                            R6 K52 ["OPEN"]
      167 LOADK                            R7 K53 ["^<[^>]*>"]
      168 LOADK                            R8 K54 ["^<([%w-]+)%s?([^>]*)>"]
      169 SETLIST                          R5 R6 3 [1]
      171 SETLIST                          R2 R3 3 [1]
      173 SETTABLEKS                       R2 R1 K55 ["<"]
      175 NEWTABLE                         R2 0 2
      177 NEWTABLE                         R3 0 2
      179 LOADK                            R4 K56 ["BOLD_2"]
      180 LOADK                            R5 K57 ["^%*%*"]
      181 SETLIST                          R3 R4 2 [1]
      183 NEWTABLE                         R4 0 2
      185 LOADK                            R5 K58 ["BOLD"]
      186 LOADK                            R6 K59 ["^%*"]
      187 SETLIST                          R4 R5 2 [1]
      189 SETLIST                          R2 R3 2 [1]
      191 SETTABLEKS                       R2 R1 K60 ["*"]
      193 NEWTABLE                         R2 0 2
      195 NEWTABLE                         R3 0 2
      197 LOADK                            R4 K61 ["ITALIC_2"]
      198 LOADK                            R5 K62 ["^__"]
      199 SETLIST                          R3 R4 2 [1]
      201 NEWTABLE                         R4 0 2
      203 LOADK                            R5 K63 ["ITALIC"]
      204 LOADK                            R6 K64 ["^_"]
      205 SETLIST                          R4 R5 2 [1]
      207 SETLIST                          R2 R3 2 [1]
      209 SETTABLEKS                       R2 R1 K65 ["_"]
      211 NEWTABLE                         R2 0 1
      213 NEWTABLE                         R3 0 2
      215 LOADK                            R4 K66 ["STRIKE"]
      216 LOADK                            R5 K67 ["^~"]
      217 SETLIST                          R3 R4 2 [1]
      219 SETLIST                          R2 R3 1 [1]
      221 SETTABLEKS                       R2 R1 K68 ["~"]
      223 NEWTABLE                         R2 0 2
      225 NEWTABLE                         R3 0 3
      227 LOADK                            R4 K69 ["LINK"]
      228 LOADK                            R5 K70 ["^%[[^%]]+%]%([^%)]+%)"]
      229 LOADK                            R6 K71 ["^%[([^%]]+)%]%(([^%)]+)%)"]
      230 SETLIST                          R3 R4 3 [1]
      232 NEWTABLE                         R4 0 3
      234 LOADK                            R5 K72 ["ACTION"]
      235 LOADK                            R6 K73 ["^%[%[[^%]]+%]%]"]
      236 LOADK                            R7 K74 ["^%[%[([^%]]+)%]%]"]
      237 SETLIST                          R4 R5 3 [1]
      239 SETLIST                          R2 R3 2 [1]
      241 SETTABLEKS                       R2 R1 K75 ["["]
      243 NEWTABLE                         R2 0 2
      245 NEWTABLE                         R3 0 3
      247 LOADK                            R4 K76 ["INLINE_CODE"]
      248 LOADK                            R5 K77 ["^`[^\n`]*`"]
      249 LOADK                            R6 K78 ["^`([^\n`]*)`"]
      250 SETLIST                          R3 R4 3 [1]
      252 NEWTABLE                         R4 0 3
      254 LOADK                            R5 K76 ["INLINE_CODE"]
      255 LOADK                            R6 K79 ["^`[^\n`]+$"]
      256 LOADK                            R7 K80 ["^`([^\n`]+)$"]
      257 SETLIST                          R4 R5 3 [1]
      259 SETLIST                          R2 R3 2 [1]
      261 SETTABLEKS                       R2 R1 K81 ["`"]
      263 LOADN                            R2 0
      264 LOADN                            R3 0
      265 NEWTABLE                         R4 0 0
      267 LENGTH                           R5 R0
      268 JUMPIFNOTLE                      R2 R5 ; [+99]
      270 JUMPIFNOTEQKN                    R2 K82 [0] ; [+3]
      272 LOADK                            R5 K29 ["\n"]
      273 JUMP                             ; [+5]
      274 MOVE                             R7 R2
      275 MOVE                             R8 R2
      276 NAMECALL                         R5 R0 K83 ["sub"]
      278 CALL                             R5 3 1
      279 GETTABLE                         R6 R1 R5
      280 LOADB                            R7 0
      281 JUMPIFNOT                        R6 ; [+83]
      282 JUMPIFNOTEQKS                    R5 K29 ["\n"] ; [+3]
      284 LOADN                            R8 1
      285 JUMP                             ; [+1]
      286 LOADN                            R8 0
      287 ADD                              R11 R2 R8
      288 NAMECALL                         R9 R0 K83 ["sub"]
      290 CALL                             R9 2 1
      291 MOVE                             R10 R6
      292 LOADNIL                          R11
      293 LOADNIL                          R12
      294 FORGPREP                         R10
      295 GETTABLEN                        R15 R14 2
      296 MOVE                             R18 R15
      297 NAMECALL                         R16 R9 K84 ["match"]
      299 CALL                             R16 2 1
      300 JUMPIFNOT                        R16 ; [+62]
      301 GETTABLEN                        R17 R14 1
      302 GETTABLEN                        R18 R14 3
      303 GETTABLEN                        R20 R14 4
      304 ORK                              R19 R20 K82 [0]
      305 LENGTH                           R21 R16
      306 SUB                              R20 R21 R19
      307 JUMPIFEQ                         R2 R3 ; [+19]
      309 DUPTABLE                         R23 K88 [{"name", "text", "offset"}]
      310 LOADK                            R24 K89 ["TEXT"]
      311 SETTABLEKS                       R24 R23 K85 ["name"]
      313 MOVE                             R26 R3
      314 SUBK                             R27 R2 K90 [1]
      315 NAMECALL                         R24 R0 K83 ["sub"]
      317 CALL                             R24 3 1
      318 SETTABLEKS                       R24 R23 K86 ["text"]
      320 SETTABLEKS                       R3 R23 K87 ["offset"]
      322 FASTCALL2                        TABLE_INSERT R4 R23 ; [+3]
      324 MOVE                             R22 R4
      325 GETUPVAL                         R21 0
      326 CALL                             R21 2 0
      327 DUPTABLE                         R23 K93 [{"name", "text", "capture", "isBlock", "offset"}]
      328 SETTABLEKS                       R17 R23 K85 ["name"]
      330 SETTABLEKS                       R16 R23 K86 ["text"]
      332 JUMPIFNOT                        R18 ; [+9]
      333 NEWTABLE                         R24 0 1
      335 MOVE                             R27 R18
      336 NAMECALL                         R25 R9 K84 ["match"]
      338 CALL                             R25 2 -1
      339 SETLIST                          R24 R25 -1 [1]
      341 JUMP                             ; [+1]
      342 LOADNIL                          R24
      343 SETTABLEKS                       R24 R23 K91 ["capture"]
      345 JUMPIFEQKS                       R5 K29 ["\n"] ; [+2]
      347 LOADB                            R24 0 +1
      348 LOADB                            R24 1
      349 SETTABLEKS                       R24 R23 K92 ["isBlock"]
      351 SETTABLEKS                       R2 R23 K87 ["offset"]
      353 FASTCALL2                        TABLE_INSERT R4 R23 ; [+3]
      355 MOVE                             R22 R4
      356 GETUPVAL                         R21 0
      357 CALL                             R21 2 0
      358 ADD                              R21 R8 R20
      359 ADD                              R2 R2 R21
      360 MOVE                             R3 R2
      361 LOADB                            R7 1
      362 JUMP                             ; [+2]
      363 FORGLOOP                         R10 2 ; [-69]
      365 JUMPIF                           R7 ; [+1]
      366 ADDK                             R2 R2 K90 [1]
      367 JUMPBACK                         ; [-101]
      368 JUMPIFEQ                         R2 R3 ; [+19]
      370 DUPTABLE                         R7 K88 [{"name", "text", "offset"}]
      371 LOADK                            R8 K89 ["TEXT"]
      372 SETTABLEKS                       R8 R7 K85 ["name"]
      374 MOVE                             R10 R3
      375 SUBK                             R11 R2 K90 [1]
      376 NAMECALL                         R8 R0 K83 ["sub"]
      378 CALL                             R8 3 1
      379 SETTABLEKS                       R8 R7 K86 ["text"]
      381 SETTABLEKS                       R3 R7 K87 ["offset"]
      383 FASTCALL2                        TABLE_INSERT R4 R7 ; [+3]
      385 MOVE                             R6 R4
      386 GETUPVAL                         R5 0
      387 CALL                             R5 2 0
      388 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K8 [table.insert]
       12 DUPCLOSURE                       R2 K9 [PROTO_0]
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1
