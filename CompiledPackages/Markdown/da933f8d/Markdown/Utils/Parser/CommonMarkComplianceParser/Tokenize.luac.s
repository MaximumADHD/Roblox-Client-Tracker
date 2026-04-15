PROTO_0:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 LOADN                            R3 0
        3 NEWTABLE                         R4 0 0
        5 LENGTH                           R5 R0
        6 JUMPIFNOTLE                      R1 R5 ; [+152]
        8 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
       10 LOADK                            R5 K1 ["\n"]
       11 JUMP                             ; [+8]
       12 FASTCALL3                        STRING_SUB R0 R1 R1
       14 MOVE                             R6 R0
       15 MOVE                             R7 R1
       16 MOVE                             R8 R1
       17 GETIMPORT                        R5 K4 [string.sub]
       19 CALL                             R5 3 1
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R6 R7 R5
       22 JUMPIF                           R6 ; [+1]
       23 GETUPVAL                         R6 1
       24 LOADB                            R7 0
       25 LOADN                            R8 0
       26 JUMPIFNOTEQKS                    R5 K1 ["\n"] ; [+3]
       28 LOADN                            R8 1
       29 MOVE                             R3 R1
       30 MOVE                             R9 R6
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETTABLEN                        R14 R13 2
       35 GETIMPORT                        R15 K6 [string.find]
       37 MOVE                             R16 R0
       38 MOVE                             R17 R14
       39 ADD                              R18 R1 R8
       40 CALL                             R15 3 2
       41 JUMPIFNOT                        R15 ; [+112]
       42 JUMPIFNOT                        R16 ; [+111]
       43 FASTCALL3                        STRING_SUB R0 R15 R16
       45 MOVE                             R18 R0
       46 MOVE                             R19 R15
       47 MOVE                             R20 R16
       48 GETIMPORT                        R17 K4 [string.sub]
       50 CALL                             R17 3 1
       51 GETTABLEN                        R18 R13 1
       52 GETTABLEN                        R20 R13 3
       53 ORK                              R19 R20 K0 [0]
       54 LENGTH                           R21 R17
       55 SUB                              R20 R21 R19
       56 LOADNIL                          R21
       57 GETIMPORT                        R22 K6 [string.find]
       59 MOVE                             R23 R17
       60 LOADK                            R24 K7 ["\n[^\n]*$"]
       61 CALL                             R22 2 2
       62 JUMPIFNOT                        R23 ; [+1]
       63 ADD                              R3 R23 R15
       64 JUMPIFNOTEQKS                    R18 K8 ["ESCAPE"] ; [+9]
       66 GETUPVAL                         R25 2
       67 GETTABLEKS                       R24 R25 K9 ["isInsideInlineCode"]
       69 MOVE                             R25 R4
       70 MOVE                             R26 R3
       71 CALL                             R24 2 1
       72 JUMPIFNOT                        R24 ; [+1]
       73 JUMP                             ; [+80]
       74 GETUPVAL                         R26 3
       75 GETTABLEKS                       R25 R26 K10 ["STYLED_TEXT"]
       77 GETTABLE                         R24 R25 R18
       78 JUMPIFNOT                        R24 ; [+8]
       79 GETUPVAL                         R25 2
       80 GETTABLEKS                       R24 R25 K11 ["getCharacterContext"]
       82 MOVE                             R25 R0
       83 MOVE                             R26 R1
       84 ADD                              R27 R8 R20
       85 CALL                             R24 3 1
       86 MOVE                             R21 R24
       87 JUMPIFEQ                         R1 R2 ; [+22]
       89 DUPTABLE                         R26 K15 [{"name", "text", "offset"}]
       90 LOADK                            R27 K16 ["TEXT"]
       91 SETTABLEKS                       R27 R26 K12 ["name"]
       93 SUBK                             R30 R1 K17 [1]
       94 FASTCALL3                        STRING_SUB R0 R2 R30
       96 MOVE                             R28 R0
       97 MOVE                             R29 R2
       98 GETIMPORT                        R27 K4 [string.sub]
      100 CALL                             R27 3 1
      101 SETTABLEKS                       R27 R26 K13 ["text"]
      103 SETTABLEKS                       R2 R26 K14 ["offset"]
      105 FASTCALL2                        TABLE_INSERT R4 R26 ; [+3]
      107 MOVE                             R25 R4
      108 GETUPVAL                         R24 4
      109 CALL                             R24 2 0
      110 NEWTABLE                         R24 0 1
      112 GETIMPORT                        R25 K19 [string.match]
      114 MOVE                             R26 R0
      115 MOVE                             R27 R14
      116 ADD                              R28 R1 R8
      117 CALL                             R25 3 -1
      118 SETLIST                          R24 R25 -1 [1]
      120 DUPTABLE                         R27 K23 [{"name", "text", "capture", "isBlock", "offset", "context"}]
      121 SETTABLEKS                       R18 R27 K12 ["name"]
      123 SETTABLEKS                       R17 R27 K13 ["text"]
      125 LENGTH                           R29 R24
      126 LOADN                            R30 0
      127 JUMPIFNOTLT                      R30 R29 ; [+3]
      129 MOVE                             R28 R24
      130 JUMP                             ; [+1]
      131 LOADNIL                          R28
      132 SETTABLEKS                       R28 R27 K20 ["capture"]
      134 JUMPIFEQKS                       R5 K1 ["\n"] ; [+2]
      136 LOADB                            R28 0 +1
      137 LOADB                            R28 1
      138 SETTABLEKS                       R28 R27 K21 ["isBlock"]
      140 SETTABLEKS                       R1 R27 K14 ["offset"]
      142 SETTABLEKS                       R21 R27 K22 ["context"]
      144 FASTCALL2                        TABLE_INSERT R4 R27 ; [+3]
      146 MOVE                             R26 R4
      147 GETUPVAL                         R25 4
      148 CALL                             R25 2 0
      149 ADD                              R25 R8 R20
      150 ADD                              R1 R1 R25
      151 MOVE                             R2 R1
      152 LOADB                            R7 1
      153 JUMP                             ; [+2]
      154 FORGLOOP                         R9 2 ; [-121]
      156 JUMPIF                           R7 ; [+1]
      157 ADDK                             R1 R1 K17 [1]
      158 JUMPBACK                         ; [-154]
      159 JUMPIFEQ                         R1 R2 ; [+22]
      161 DUPTABLE                         R7 K15 [{"name", "text", "offset"}]
      162 LOADK                            R8 K16 ["TEXT"]
      163 SETTABLEKS                       R8 R7 K12 ["name"]
      165 SUBK                             R11 R1 K17 [1]
      166 FASTCALL3                        STRING_SUB R0 R2 R11
      168 MOVE                             R9 R0
      169 MOVE                             R10 R2
      170 GETIMPORT                        R8 K4 [string.sub]
      172 CALL                             R8 3 1
      173 SETTABLEKS                       R8 R7 K13 ["text"]
      175 SETTABLEKS                       R2 R7 K14 ["offset"]
      177 FASTCALL2                        TABLE_INSERT R4 R7 ; [+3]
      179 MOVE                             R6 R4
      180 GETUPVAL                         R5 4
      181 CALL                             R5 2 0
      182 GETUPVAL                         R5 5
      183 MOVE                             R6 R4
      184 CALL                             R5 1 -1
      185 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["Utils"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K6 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K4 ["Parent"]
       31 GETTABLEKS                       R4 R5 K9 ["PostProcessTokens"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETIMPORT                        R7 K1 [script]
       38 GETTABLEKS                       R6 R7 K4 ["Parent"]
       40 GETTABLEKS                       R5 R6 K2 ["Utils"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K12 [table.insert]
       45 NEWTABLE                         R6 16 0
       47 NEWTABLE                         R7 0 15
       49 NEWTABLE                         R8 0 3
       51 LOADK                            R9 K13 ["LINE_BREAK"]
       52 LOADK                            R10 K14 ["^\n"]
       53 LOADN                            R11 1
       54 SETLIST                          R8 R9 3 [1]
       56 NEWTABLE                         R9 0 3
       58 LOADK                            R10 K15 ["HEADING"]
       59 LOADK                            R11 K16 ["^ ? ? ?(##?#?#?#?#?)[ \t]+"]
       60 LOADN                            R12 1
       61 SETLIST                          R9 R10 3 [1]
       63 NEWTABLE                         R10 0 3
       65 LOADK                            R11 K15 ["HEADING"]
       66 LOADK                            R12 K17 ["^ ? ? ?(##?#?#?#?#?)\n"]
       67 LOADN                            R13 1
       68 SETLIST                          R10 R11 3 [1]
       70 NEWTABLE                         R11 0 3
       72 LOADK                            R12 K18 ["DIVIDER"]
       73 LOADK                            R13 K19 ["^ ? ? ?%-[ \t]*%-[ \t]*%-[ \t]*[%- \t]*\n"]
       74 LOADN                            R14 1
       75 SETLIST                          R11 R12 3 [1]
       77 NEWTABLE                         R12 0 3
       79 LOADK                            R13 K18 ["DIVIDER"]
       80 LOADK                            R14 K20 ["^ ? ? ?%*[ \t]*%*[ \t]*%*[ \t]*[%* \t]*\n"]
       81 LOADN                            R15 1
       82 SETLIST                          R12 R13 3 [1]
       84 NEWTABLE                         R13 0 3
       86 LOADK                            R14 K18 ["DIVIDER"]
       87 LOADK                            R15 K21 ["^ ? ? ?_[ \t]*_[ \t]*_[ \t]*[_ \t]*\n"]
       88 LOADN                            R16 1
       89 SETLIST                          R13 R14 3 [1]
       91 NEWTABLE                         R14 0 2
       93 LOADK                            R15 K22 ["BULLET_LIST_ITEM"]
       94 LOADK                            R16 K23 ["^(%s*)(%* )"]
       95 SETLIST                          R14 R15 2 [1]
       97 NEWTABLE                         R15 0 2
       99 LOADK                            R16 K24 ["BULLET_LIST_ITEM_2"]
      100 LOADK                            R17 K25 ["^(%s*)(- )"]
      101 SETLIST                          R15 R16 2 [1]
      103 NEWTABLE                         R16 0 2
      105 LOADK                            R17 K26 ["CODE_BLOCK"]
      106 LOADK                            R18 K27 ["^```[ \t]*([^\n]*)[ \t]*\n(.-)```"]
      107 SETLIST                          R16 R17 2 [1]
      109 NEWTABLE                         R17 0 2
      111 LOADK                            R18 K26 ["CODE_BLOCK"]
      112 LOADK                            R19 K28 ["^```[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      113 SETLIST                          R17 R18 2 [1]
      115 NEWTABLE                         R18 0 2
      117 LOADK                            R19 K26 ["CODE_BLOCK"]
      118 LOADK                            R20 K29 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.-)~~~"]
      119 SETLIST                          R18 R19 2 [1]
      121 NEWTABLE                         R19 0 2
      123 LOADK                            R20 K26 ["CODE_BLOCK"]
      124 LOADK                            R21 K30 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      125 SETLIST                          R19 R20 2 [1]
      127 NEWTABLE                         R20 0 2
      129 LOADK                            R21 K31 ["QUOTE"]
      130 LOADK                            R22 K32 ["^%s*>"]
      131 SETLIST                          R20 R21 2 [1]
      133 NEWTABLE                         R21 0 2
      135 LOADK                            R22 K33 ["ORDERED_LIST_ITEM"]
      136 LOADK                            R23 K34 ["^(%s*)([0-9A-Za-z]+)%."]
      137 SETLIST                          R21 R22 2 [1]
      139 NEWTABLE                         R22 0 2
      141 LOADK                            R23 K35 ["TABLE_ROW"]
      142 LOADK                            R24 K36 ["^|"]
      143 SETLIST                          R22 R23 2 [1]
      145 SETLIST                          R7 R8 15 [1]
      147 SETTABLEKS                       R7 R6 K37 ["\n"]
      149 NEWTABLE                         R7 0 2
      151 NEWTABLE                         R8 0 2
      153 LOADK                            R9 K38 ["BREAK"]
      154 LOADK                            R10 K39 ["^\\\n"]
      155 SETLIST                          R8 R9 2 [1]
      157 NEWTABLE                         R9 0 2
      159 LOADK                            R10 K40 ["ESCAPE"]
      160 LOADK                            R11 K41 ["^\\(%p)"]
      161 SETLIST                          R9 R10 2 [1]
      163 SETLIST                          R7 R8 2 [1]
      165 SETTABLEKS                       R7 R6 K42 ["\\"]
      167 NEWTABLE                         R7 0 1
      169 NEWTABLE                         R8 0 2
      171 LOADK                            R9 K43 ["TABLE_HEADER"]
      172 LOADK                            R10 K44 ["^[-]+"]
      173 SETLIST                          R8 R9 2 [1]
      175 SETLIST                          R7 R8 1 [1]
      177 SETTABLEKS                       R7 R6 K45 ["-"]
      179 NEWTABLE                         R7 0 1
      181 NEWTABLE                         R8 0 2
      183 LOADK                            R9 K46 ["TABLE_HEADER_2"]
      184 LOADK                            R10 K47 ["^[=]+"]
      185 SETLIST                          R8 R9 2 [1]
      187 SETLIST                          R7 R8 1 [1]
      189 SETTABLEKS                       R7 R6 K48 ["="]
      191 NEWTABLE                         R7 0 1
      193 NEWTABLE                         R8 0 2
      195 LOADK                            R9 K49 ["IMAGE"]
      196 LOADK                            R10 K50 ["^!%[([^%]]+)%]%(([^%)]+)%)"]
      197 SETLIST                          R8 R9 2 [1]
      199 SETLIST                          R7 R8 1 [1]
      201 SETTABLEKS                       R7 R6 K51 ["!"]
      203 NEWTABLE                         R7 0 1
      205 NEWTABLE                         R8 0 2
      207 LOADK                            R9 K52 ["TABLE_DIVIDER"]
      208 LOADK                            R10 K36 ["^|"]
      209 SETLIST                          R8 R9 2 [1]
      211 SETLIST                          R7 R8 1 [1]
      213 SETTABLEKS                       R7 R6 K53 ["|"]
      215 NEWTABLE                         R7 0 3
      217 NEWTABLE                         R8 0 2
      219 LOADK                            R9 K54 ["OPEN_CLOSE"]
      220 LOADK                            R10 K55 ["^<([%w-]+)%s?([^>]*)/>"]
      221 SETLIST                          R8 R9 2 [1]
      223 NEWTABLE                         R9 0 2
      225 LOADK                            R10 K56 ["CLOSE"]
      226 LOADK                            R11 K57 ["^</([%w-]+)%s?([^>]*)>"]
      227 SETLIST                          R9 R10 2 [1]
      229 NEWTABLE                         R10 0 2
      231 LOADK                            R11 K58 ["OPEN"]
      232 LOADK                            R12 K59 ["^<([%w-]+)%s?([^>]*)>"]
      233 SETLIST                          R10 R11 2 [1]
      235 SETLIST                          R7 R8 3 [1]
      237 SETTABLEKS                       R7 R6 K60 ["<"]
      239 NEWTABLE                         R7 0 2
      241 NEWTABLE                         R8 0 2
      243 LOADK                            R9 K61 ["BOLD_2"]
      244 LOADK                            R10 K62 ["^%*%*"]
      245 SETLIST                          R8 R9 2 [1]
      247 NEWTABLE                         R9 0 2
      249 LOADK                            R10 K63 ["BOLD"]
      250 LOADK                            R11 K64 ["^%*"]
      251 SETLIST                          R9 R10 2 [1]
      253 SETLIST                          R7 R8 2 [1]
      255 SETTABLEKS                       R7 R6 K65 ["*"]
      257 NEWTABLE                         R7 0 2
      259 NEWTABLE                         R8 0 2
      261 LOADK                            R9 K66 ["ITALIC_2"]
      262 LOADK                            R10 K67 ["^__"]
      263 SETLIST                          R8 R9 2 [1]
      265 NEWTABLE                         R9 0 2
      267 LOADK                            R10 K68 ["ITALIC"]
      268 LOADK                            R11 K69 ["^_"]
      269 SETLIST                          R9 R10 2 [1]
      271 SETLIST                          R7 R8 2 [1]
      273 SETTABLEKS                       R7 R6 K70 ["_"]
      275 NEWTABLE                         R7 0 1
      277 NEWTABLE                         R8 0 2
      279 LOADK                            R9 K71 ["STRIKE"]
      280 LOADK                            R10 K72 ["^~"]
      281 SETLIST                          R8 R9 2 [1]
      283 SETLIST                          R7 R8 1 [1]
      285 SETTABLEKS                       R7 R6 K73 ["~"]
      287 NEWTABLE                         R7 0 8
      289 NEWTABLE                         R8 0 2
      291 LOADK                            R9 K74 ["LINK"]
      292 LOADK                            R10 K75 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]\"([^\n]+)\"[ \t]*%)"]
      293 SETLIST                          R8 R9 2 [1]
      295 NEWTABLE                         R9 0 2
      297 LOADK                            R10 K74 ["LINK"]
      298 LOADK                            R11 K76 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]'([^\n]+)'[ \t]*%)"]
      299 SETLIST                          R9 R10 2 [1]
      301 NEWTABLE                         R10 0 2
      303 LOADK                            R11 K74 ["LINK"]
      304 LOADK                            R12 K77 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]%(([^\n]+)%)[ \t]*%)"]
      305 SETLIST                          R10 R11 2 [1]
      307 NEWTABLE                         R11 0 2
      309 LOADK                            R12 K74 ["LINK"]
      310 LOADK                            R13 K78 ["^%[([^%]]*)%]%([ \t]*%)"]
      311 SETLIST                          R11 R12 2 [1]
      313 NEWTABLE                         R12 0 2
      315 LOADK                            R13 K74 ["LINK"]
      316 LOADK                            R14 K79 ["^%[([^%]]*)%]%([ \t]*<>[ \t]*%)"]
      317 SETLIST                          R12 R13 2 [1]
      319 NEWTABLE                         R13 0 2
      321 LOADK                            R14 K74 ["LINK"]
      322 LOADK                            R15 K80 ["^%[([^%]]*)%]%([ \t]*<([^\n\t]+)>[ \t]*%)"]
      323 SETLIST                          R13 R14 2 [1]
      325 NEWTABLE                         R14 0 2
      327 LOADK                            R15 K74 ["LINK"]
      328 LOADK                            R16 K81 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]*%)"]
      329 SETLIST                          R14 R15 2 [1]
      331 NEWTABLE                         R15 0 2
      333 LOADK                            R16 K82 ["ACTION"]
      334 LOADK                            R17 K83 ["^%[%[([^%]]+)%]%]"]
      335 SETLIST                          R15 R16 2 [1]
      337 SETLIST                          R7 R8 8 [1]
      339 SETTABLEKS                       R7 R6 K84 ["["]
      341 NEWTABLE                         R7 0 1
      343 NEWTABLE                         R8 0 2
      345 LOADK                            R9 K85 ["INLINE_CODE"]
      346 LOADK                            R10 K86 ["^`"]
      347 SETLIST                          R8 R9 2 [1]
      349 SETLIST                          R7 R8 1 [1]
      351 SETTABLEKS                       R7 R6 K87 ["`"]
      353 NEWTABLE                         R7 0 1
      355 NEWTABLE                         R8 0 3
      357 LOADK                            R9 K15 ["HEADING"]
      358 LOADK                            R10 K88 ["^  ? ?(#+)%s*\n"]
      359 LOADN                            R11 1
      360 SETLIST                          R8 R9 3 [1]
      362 SETLIST                          R7 R8 1 [1]
      364 DUPCLOSURE                       R8 K89 [PROTO_0]
      365 CAPTURE                          VAL R6
      366 CAPTURE                          VAL R7
      367 CAPTURE                          VAL R4
      368 CAPTURE                          VAL R2
      369 CAPTURE                          VAL R5
      370 CAPTURE                          VAL R3
      371 RETURN                           R8 1
