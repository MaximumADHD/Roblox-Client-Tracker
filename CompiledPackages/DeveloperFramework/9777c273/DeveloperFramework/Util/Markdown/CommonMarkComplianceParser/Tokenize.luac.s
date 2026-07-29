PROTO_0:
        0 LOADN                            R1 0
        1 LOADN                            R2 0
        2 LOADN                            R3 0
        3 NEWTABLE                         R4 0 0
        5 LENGTH                           R5 R0
        6 JUMPIFNOTLE                      R1 R5 ; [+149]
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
       41 JUMPIFNOT                        R15 ; [+109]
       42 JUMPIFNOT                        R16 ; [+108]
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
       66 GETUPVAL                         R24 2
       67 GETTABLEKS                       R24 R24 K9 ["isInsideInlineCode"]
       69 MOVE                             R25 R4
       70 MOVE                             R26 R3
       71 CALL                             R24 2 1
       72 JUMPIFNOT                        R24 ; [+1]
       73 JUMP                             ; [+77]
       74 GETUPVAL                         R25 3
       75 GETTABLEKS                       R25 R25 K10 ["STYLED_TEXT"]
       77 GETTABLE                         R24 R25 R18
       78 JUMPIFNOT                        R24 ; [+8]
       79 GETUPVAL                         R24 2
       80 GETTABLEKS                       R24 R24 K11 ["getCharacterContext"]
       82 MOVE                             R25 R0
       83 MOVE                             R26 R1
       84 ADD                              R27 R8 R20
       85 CALL                             R24 3 1
       86 MOVE                             R21 R24
       87 JUMPIFEQ                         R1 R2 ; [+19]
       89 DUPTABLE                         R26 K16 [{["name"] = "TEXT", ["text"], ["offset"]}]
       90 SUBK                             R30 R1 K17 [1]
       91 FASTCALL3                        STRING_SUB R0 R2 R30
       93 MOVE                             R28 R0
       94 MOVE                             R29 R2
       95 GETIMPORT                        R27 K4 [string.sub]
       97 CALL                             R27 3 1
       98 SETTABLEKS                       R27 R26 K14 ["text"]
      100 SETTABLEKS                       R2 R26 K15 ["offset"]
      102 FASTCALL2                        TABLE_INSERT R4 R26 ; [+3]
      104 MOVE                             R25 R4
      105 GETUPVAL                         R24 4
      106 CALL                             R24 2 0
      107 NEWTABLE                         R24 0 1
      109 GETIMPORT                        R25 K19 [string.match]
      111 MOVE                             R26 R0
      112 MOVE                             R27 R14
      113 ADD                              R28 R1 R8
      114 CALL                             R25 3 -1
      115 SETLIST                          R24 R25 -1 [1]
      117 DUPTABLE                         R27 K23 [{"name", "text", "capture", "isBlock", "offset", "context"}]
      118 SETTABLEKS                       R18 R27 K12 ["name"]
      120 SETTABLEKS                       R17 R27 K14 ["text"]
      122 LENGTH                           R29 R24
      123 LOADN                            R30 0
      124 JUMPIFNOTLT                      R30 R29 ; [+3]
      126 MOVE                             R28 R24
      127 JUMP                             ; [+1]
      128 LOADNIL                          R28
      129 SETTABLEKS                       R28 R27 K20 ["capture"]
      131 JUMPIFEQKS                       R5 K1 ["\n"] ; [+2]
      133 LOADB                            R28 0 +1
      134 LOADB                            R28 1
      135 SETTABLEKS                       R28 R27 K21 ["isBlock"]
      137 SETTABLEKS                       R1 R27 K15 ["offset"]
      139 SETTABLEKS                       R21 R27 K22 ["context"]
      141 FASTCALL2                        TABLE_INSERT R4 R27 ; [+3]
      143 MOVE                             R26 R4
      144 GETUPVAL                         R25 4
      145 CALL                             R25 2 0
      146 ADD                              R25 R8 R20
      147 ADD                              R1 R1 R25
      148 MOVE                             R2 R1
      149 LOADB                            R7 1
      150 JUMP                             ; [+2]
      151 FORGLOOP                         R9 2 ; [-118]
      153 JUMPIF                           R7 ; [+1]
      154 ADDK                             R1 R1 K17 [1]
      155 JUMPBACK                         ; [-151]
      156 JUMPIFEQ                         R1 R2 ; [+19]
      158 DUPTABLE                         R7 K16 [{["name"] = "TEXT", ["text"], ["offset"]}]
      159 SUBK                             R11 R1 K17 [1]
      160 FASTCALL3                        STRING_SUB R0 R2 R11
      162 MOVE                             R9 R0
      163 MOVE                             R10 R2
      164 GETIMPORT                        R8 K4 [string.sub]
      166 CALL                             R8 3 1
      167 SETTABLEKS                       R8 R7 K14 ["text"]
      169 SETTABLEKS                       R2 R7 K15 ["offset"]
      171 FASTCALL2                        TABLE_INSERT R4 R7 ; [+3]
      173 MOVE                             R6 R4
      174 GETUPVAL                         R5 4
      175 CALL                             R5 2 0
      176 GETUPVAL                         R5 5
      177 MOVE                             R6 R4
      178 CALL                             R5 1 -1
      179 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Types"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["Constants"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K7 ["PostProcessTokens"]
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K1 [require]
       34 GETIMPORT                        R4 K3 [script]
       36 GETTABLEKS                       R4 R4 K4 ["Parent"]
       38 GETTABLEKS                       R4 R4 K8 ["Utils"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K11 [table.insert]
       43 NEWTABLE                         R5 16 0
       45 NEWTABLE                         R6 0 15
       47 NEWTABLE                         R7 0 3
       49 LOADK                            R8 K12 ["LINE_BREAK"]
       50 LOADK                            R9 K13 ["^\n"]
       51 LOADN                            R10 1
       52 SETLIST                          R7 R8 3 [1]
       54 NEWTABLE                         R8 0 3
       56 LOADK                            R9 K14 ["HEADING"]
       57 LOADK                            R10 K15 ["^ ? ? ?(##?#?#?#?#?)[ \t]+"]
       58 LOADN                            R11 1
       59 SETLIST                          R8 R9 3 [1]
       61 NEWTABLE                         R9 0 3
       63 LOADK                            R10 K14 ["HEADING"]
       64 LOADK                            R11 K16 ["^ ? ? ?(##?#?#?#?#?)\n"]
       65 LOADN                            R12 1
       66 SETLIST                          R9 R10 3 [1]
       68 NEWTABLE                         R10 0 3
       70 LOADK                            R11 K17 ["DIVIDER"]
       71 LOADK                            R12 K18 ["^ ? ? ?%-[ \t]*%-[ \t]*%-[ \t]*[%- \t]*\n"]
       72 LOADN                            R13 1
       73 SETLIST                          R10 R11 3 [1]
       75 NEWTABLE                         R11 0 3
       77 LOADK                            R12 K17 ["DIVIDER"]
       78 LOADK                            R13 K19 ["^ ? ? ?%*[ \t]*%*[ \t]*%*[ \t]*[%* \t]*\n"]
       79 LOADN                            R14 1
       80 SETLIST                          R11 R12 3 [1]
       82 NEWTABLE                         R12 0 3
       84 LOADK                            R13 K17 ["DIVIDER"]
       85 LOADK                            R14 K20 ["^ ? ? ?_[ \t]*_[ \t]*_[ \t]*[_ \t]*\n"]
       86 LOADN                            R15 1
       87 SETLIST                          R12 R13 3 [1]
       89 NEWTABLE                         R13 0 2
       91 LOADK                            R14 K21 ["BULLET_LIST_ITEM"]
       92 LOADK                            R15 K22 ["^(%s*)(%* )"]
       93 SETLIST                          R13 R14 2 [1]
       95 NEWTABLE                         R14 0 2
       97 LOADK                            R15 K23 ["BULLET_LIST_ITEM_2"]
       98 LOADK                            R16 K24 ["^(%s*)(- )"]
       99 SETLIST                          R14 R15 2 [1]
      101 NEWTABLE                         R15 0 2
      103 LOADK                            R16 K25 ["CODE_BLOCK"]
      104 LOADK                            R17 K26 ["^```[ \t]*([^\n]*)[ \t]*\n(.-)```"]
      105 SETLIST                          R15 R16 2 [1]
      107 NEWTABLE                         R16 0 2
      109 LOADK                            R17 K25 ["CODE_BLOCK"]
      110 LOADK                            R18 K27 ["^```[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      111 SETLIST                          R16 R17 2 [1]
      113 NEWTABLE                         R17 0 2
      115 LOADK                            R18 K25 ["CODE_BLOCK"]
      116 LOADK                            R19 K28 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.-)~~~"]
      117 SETLIST                          R17 R18 2 [1]
      119 NEWTABLE                         R18 0 2
      121 LOADK                            R19 K25 ["CODE_BLOCK"]
      122 LOADK                            R20 K29 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      123 SETLIST                          R18 R19 2 [1]
      125 NEWTABLE                         R19 0 2
      127 LOADK                            R20 K30 ["QUOTE"]
      128 LOADK                            R21 K31 ["^%s*>"]
      129 SETLIST                          R19 R20 2 [1]
      131 NEWTABLE                         R20 0 2
      133 LOADK                            R21 K32 ["ORDERED_LIST_ITEM"]
      134 LOADK                            R22 K33 ["^(%s*)([0-9A-Za-z]+)%."]
      135 SETLIST                          R20 R21 2 [1]
      137 NEWTABLE                         R21 0 2
      139 LOADK                            R22 K34 ["TABLE_ROW"]
      140 LOADK                            R23 K35 ["^|"]
      141 SETLIST                          R21 R22 2 [1]
      143 SETLIST                          R6 R7 15 [1]
      145 SETTABLEKS                       R6 R5 K36 ["\n"]
      147 NEWTABLE                         R6 0 2
      149 NEWTABLE                         R7 0 2
      151 LOADK                            R8 K37 ["BREAK"]
      152 LOADK                            R9 K38 ["^\\\n"]
      153 SETLIST                          R7 R8 2 [1]
      155 NEWTABLE                         R8 0 2
      157 LOADK                            R9 K39 ["ESCAPE"]
      158 LOADK                            R10 K40 ["^\\(%p)"]
      159 SETLIST                          R8 R9 2 [1]
      161 SETLIST                          R6 R7 2 [1]
      163 SETTABLEKS                       R6 R5 K41 ["\\"]
      165 NEWTABLE                         R6 0 1
      167 NEWTABLE                         R7 0 2
      169 LOADK                            R8 K42 ["TABLE_HEADER"]
      170 LOADK                            R9 K43 ["^[-]+"]
      171 SETLIST                          R7 R8 2 [1]
      173 SETLIST                          R6 R7 1 [1]
      175 SETTABLEKS                       R6 R5 K44 ["-"]
      177 NEWTABLE                         R6 0 1
      179 NEWTABLE                         R7 0 2
      181 LOADK                            R8 K45 ["TABLE_HEADER_2"]
      182 LOADK                            R9 K46 ["^[=]+"]
      183 SETLIST                          R7 R8 2 [1]
      185 SETLIST                          R6 R7 1 [1]
      187 SETTABLEKS                       R6 R5 K47 ["="]
      189 NEWTABLE                         R6 0 1
      191 NEWTABLE                         R7 0 2
      193 LOADK                            R8 K48 ["IMAGE"]
      194 LOADK                            R9 K49 ["^!%[([^%]]+)%]%(([^%)]+)%)"]
      195 SETLIST                          R7 R8 2 [1]
      197 SETLIST                          R6 R7 1 [1]
      199 SETTABLEKS                       R6 R5 K50 ["!"]
      201 NEWTABLE                         R6 0 1
      203 NEWTABLE                         R7 0 2
      205 LOADK                            R8 K51 ["TABLE_DIVIDER"]
      206 LOADK                            R9 K35 ["^|"]
      207 SETLIST                          R7 R8 2 [1]
      209 SETLIST                          R6 R7 1 [1]
      211 SETTABLEKS                       R6 R5 K52 ["|"]
      213 NEWTABLE                         R6 0 3
      215 NEWTABLE                         R7 0 2
      217 LOADK                            R8 K53 ["OPEN_CLOSE"]
      218 LOADK                            R9 K54 ["^<([%w-]+)%s?([^>]*)/>"]
      219 SETLIST                          R7 R8 2 [1]
      221 NEWTABLE                         R8 0 2
      223 LOADK                            R9 K55 ["CLOSE"]
      224 LOADK                            R10 K56 ["^</([%w-]+)%s?([^>]*)>"]
      225 SETLIST                          R8 R9 2 [1]
      227 NEWTABLE                         R9 0 2
      229 LOADK                            R10 K57 ["OPEN"]
      230 LOADK                            R11 K58 ["^<([%w-]+)%s?([^>]*)>"]
      231 SETLIST                          R9 R10 2 [1]
      233 SETLIST                          R6 R7 3 [1]
      235 SETTABLEKS                       R6 R5 K59 ["<"]
      237 NEWTABLE                         R6 0 2
      239 NEWTABLE                         R7 0 2
      241 LOADK                            R8 K60 ["BOLD_2"]
      242 LOADK                            R9 K61 ["^%*%*"]
      243 SETLIST                          R7 R8 2 [1]
      245 NEWTABLE                         R8 0 2
      247 LOADK                            R9 K62 ["BOLD"]
      248 LOADK                            R10 K63 ["^%*"]
      249 SETLIST                          R8 R9 2 [1]
      251 SETLIST                          R6 R7 2 [1]
      253 SETTABLEKS                       R6 R5 K64 ["*"]
      255 NEWTABLE                         R6 0 2
      257 NEWTABLE                         R7 0 2
      259 LOADK                            R8 K65 ["ITALIC_2"]
      260 LOADK                            R9 K66 ["^__"]
      261 SETLIST                          R7 R8 2 [1]
      263 NEWTABLE                         R8 0 2
      265 LOADK                            R9 K67 ["ITALIC"]
      266 LOADK                            R10 K68 ["^_"]
      267 SETLIST                          R8 R9 2 [1]
      269 SETLIST                          R6 R7 2 [1]
      271 SETTABLEKS                       R6 R5 K69 ["_"]
      273 NEWTABLE                         R6 0 1
      275 NEWTABLE                         R7 0 2
      277 LOADK                            R8 K70 ["STRIKE"]
      278 LOADK                            R9 K71 ["^~"]
      279 SETLIST                          R7 R8 2 [1]
      281 SETLIST                          R6 R7 1 [1]
      283 SETTABLEKS                       R6 R5 K72 ["~"]
      285 NEWTABLE                         R6 0 8
      287 NEWTABLE                         R7 0 2
      289 LOADK                            R8 K73 ["LINK"]
      290 LOADK                            R9 K74 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]\"([^\n]+)\"[ \t]*%)"]
      291 SETLIST                          R7 R8 2 [1]
      293 NEWTABLE                         R8 0 2
      295 LOADK                            R9 K73 ["LINK"]
      296 LOADK                            R10 K75 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]'([^\n]+)'[ \t]*%)"]
      297 SETLIST                          R8 R9 2 [1]
      299 NEWTABLE                         R9 0 2
      301 LOADK                            R10 K73 ["LINK"]
      302 LOADK                            R11 K76 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]%(([^\n]+)%)[ \t]*%)"]
      303 SETLIST                          R9 R10 2 [1]
      305 NEWTABLE                         R10 0 2
      307 LOADK                            R11 K73 ["LINK"]
      308 LOADK                            R12 K77 ["^%[([^%]]*)%]%([ \t]*%)"]
      309 SETLIST                          R10 R11 2 [1]
      311 NEWTABLE                         R11 0 2
      313 LOADK                            R12 K73 ["LINK"]
      314 LOADK                            R13 K78 ["^%[([^%]]*)%]%([ \t]*<>[ \t]*%)"]
      315 SETLIST                          R11 R12 2 [1]
      317 NEWTABLE                         R12 0 2
      319 LOADK                            R13 K73 ["LINK"]
      320 LOADK                            R14 K79 ["^%[([^%]]*)%]%([ \t]*<([^\n\t]+)>[ \t]*%)"]
      321 SETLIST                          R12 R13 2 [1]
      323 NEWTABLE                         R13 0 2
      325 LOADK                            R14 K73 ["LINK"]
      326 LOADK                            R15 K80 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]*%)"]
      327 SETLIST                          R13 R14 2 [1]
      329 NEWTABLE                         R14 0 2
      331 LOADK                            R15 K81 ["ACTION"]
      332 LOADK                            R16 K82 ["^%[%[([^%]]+)%]%]"]
      333 SETLIST                          R14 R15 2 [1]
      335 SETLIST                          R6 R7 8 [1]
      337 SETTABLEKS                       R6 R5 K83 ["["]
      339 NEWTABLE                         R6 0 1
      341 NEWTABLE                         R7 0 2
      343 LOADK                            R8 K84 ["INLINE_CODE"]
      344 LOADK                            R9 K85 ["^`"]
      345 SETLIST                          R7 R8 2 [1]
      347 SETLIST                          R6 R7 1 [1]
      349 SETTABLEKS                       R6 R5 K86 ["`"]
      351 NEWTABLE                         R6 0 1
      353 NEWTABLE                         R7 0 3
      355 LOADK                            R8 K14 ["HEADING"]
      356 LOADK                            R9 K87 ["^  ? ?(#+)%s*\n"]
      357 LOADN                            R10 1
      358 SETLIST                          R7 R8 3 [1]
      360 SETLIST                          R6 R7 1 [1]
      362 DUPCLOSURE                       R7 K88 [PROTO_0]
      363 CAPTURE                          VAL R5
      364 CAPTURE                          VAL R6
      365 CAPTURE                          VAL R3
      366 CAPTURE                          VAL R1
      367 CAPTURE                          VAL R4
      368 CAPTURE                          VAL R2
      369 RETURN                           R7 1
