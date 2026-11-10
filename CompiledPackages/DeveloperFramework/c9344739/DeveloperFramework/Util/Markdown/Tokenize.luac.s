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
        7 GETTABLEKS                       R1 R1 K5 ["Types"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["Constants"]
       18 CALL                             R1 1 1
       19 GETIMPORT                        R2 K1 [require]
       21 GETIMPORT                        R3 K3 [script]
       23 GETTABLEKS                       R3 R3 K4 ["Parent"]
       25 GETTABLEKS                       R3 R3 K7 ["PostProcessTokens"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K1 [require]
       30 GETIMPORT                        R4 K3 [script]
       32 GETTABLEKS                       R4 R4 K4 ["Parent"]
       34 GETTABLEKS                       R4 R4 K8 ["Utils"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K11 [table.insert]
       39 NEWTABLE                         R5 16 0
       41 NEWTABLE                         R6 0 15
       43 NEWTABLE                         R7 0 3
       45 LOADK                            R8 K12 ["LINE_BREAK"]
       46 LOADK                            R9 K13 ["^\n"]
       47 LOADN                            R10 1
       48 SETLIST                          R7 R8 3 [1]
       50 NEWTABLE                         R8 0 3
       52 LOADK                            R9 K14 ["HEADING"]
       53 LOADK                            R10 K15 ["^ ? ? ?(##?#?#?#?#?)[ \t]+"]
       54 LOADN                            R11 1
       55 SETLIST                          R8 R9 3 [1]
       57 NEWTABLE                         R9 0 3
       59 LOADK                            R10 K14 ["HEADING"]
       60 LOADK                            R11 K16 ["^ ? ? ?(##?#?#?#?#?)\n"]
       61 LOADN                            R12 1
       62 SETLIST                          R9 R10 3 [1]
       64 NEWTABLE                         R10 0 3
       66 LOADK                            R11 K17 ["DIVIDER"]
       67 LOADK                            R12 K18 ["^ ? ? ?%-[ \t]*%-[ \t]*%-[ \t]*[%- \t]*\n"]
       68 LOADN                            R13 1
       69 SETLIST                          R10 R11 3 [1]
       71 NEWTABLE                         R11 0 3
       73 LOADK                            R12 K17 ["DIVIDER"]
       74 LOADK                            R13 K19 ["^ ? ? ?%*[ \t]*%*[ \t]*%*[ \t]*[%* \t]*\n"]
       75 LOADN                            R14 1
       76 SETLIST                          R11 R12 3 [1]
       78 NEWTABLE                         R12 0 3
       80 LOADK                            R13 K17 ["DIVIDER"]
       81 LOADK                            R14 K20 ["^ ? ? ?_[ \t]*_[ \t]*_[ \t]*[_ \t]*\n"]
       82 LOADN                            R15 1
       83 SETLIST                          R12 R13 3 [1]
       85 NEWTABLE                         R13 0 2
       87 LOADK                            R14 K21 ["BULLET_LIST_ITEM"]
       88 LOADK                            R15 K22 ["^(%s*)(%* )"]
       89 SETLIST                          R13 R14 2 [1]
       91 NEWTABLE                         R14 0 2
       93 LOADK                            R15 K23 ["BULLET_LIST_ITEM_2"]
       94 LOADK                            R16 K24 ["^(%s*)(- )"]
       95 SETLIST                          R14 R15 2 [1]
       97 NEWTABLE                         R15 0 2
       99 LOADK                            R16 K25 ["CODE_BLOCK"]
      100 LOADK                            R17 K26 ["^```[ \t]*([^\n]*)[ \t]*\n(.-)```"]
      101 SETLIST                          R15 R16 2 [1]
      103 NEWTABLE                         R16 0 2
      105 LOADK                            R17 K25 ["CODE_BLOCK"]
      106 LOADK                            R18 K27 ["^```[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      107 SETLIST                          R16 R17 2 [1]
      109 NEWTABLE                         R17 0 2
      111 LOADK                            R18 K25 ["CODE_BLOCK"]
      112 LOADK                            R19 K28 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.-)~~~"]
      113 SETLIST                          R17 R18 2 [1]
      115 NEWTABLE                         R18 0 2
      117 LOADK                            R19 K25 ["CODE_BLOCK"]
      118 LOADK                            R20 K29 ["^~~~[ \t]*([^\n]*)[ \t]*\n(.+)$"]
      119 SETLIST                          R18 R19 2 [1]
      121 NEWTABLE                         R19 0 2
      123 LOADK                            R20 K30 ["QUOTE"]
      124 LOADK                            R21 K31 ["^%s*>"]
      125 SETLIST                          R19 R20 2 [1]
      127 NEWTABLE                         R20 0 2
      129 LOADK                            R21 K32 ["ORDERED_LIST_ITEM"]
      130 LOADK                            R22 K33 ["^(%s*)([0-9A-Za-z]+)%."]
      131 SETLIST                          R20 R21 2 [1]
      133 NEWTABLE                         R21 0 2
      135 LOADK                            R22 K34 ["TABLE_ROW"]
      136 LOADK                            R23 K35 ["^|"]
      137 SETLIST                          R21 R22 2 [1]
      139 SETLIST                          R6 R7 15 [1]
      141 SETTABLEKS                       R6 R5 K36 ["\n"]
      143 NEWTABLE                         R6 0 2
      145 NEWTABLE                         R7 0 2
      147 LOADK                            R8 K37 ["BREAK"]
      148 LOADK                            R9 K38 ["^\\\n"]
      149 SETLIST                          R7 R8 2 [1]
      151 NEWTABLE                         R8 0 2
      153 LOADK                            R9 K39 ["ESCAPE"]
      154 LOADK                            R10 K40 ["^\\(%p)"]
      155 SETLIST                          R8 R9 2 [1]
      157 SETLIST                          R6 R7 2 [1]
      159 SETTABLEKS                       R6 R5 K41 ["\\"]
      161 NEWTABLE                         R6 0 1
      163 NEWTABLE                         R7 0 2
      165 LOADK                            R8 K42 ["TABLE_HEADER"]
      166 LOADK                            R9 K43 ["^[-]+"]
      167 SETLIST                          R7 R8 2 [1]
      169 SETLIST                          R6 R7 1 [1]
      171 SETTABLEKS                       R6 R5 K44 ["-"]
      173 NEWTABLE                         R6 0 1
      175 NEWTABLE                         R7 0 2
      177 LOADK                            R8 K45 ["TABLE_HEADER_2"]
      178 LOADK                            R9 K46 ["^[=]+"]
      179 SETLIST                          R7 R8 2 [1]
      181 SETLIST                          R6 R7 1 [1]
      183 SETTABLEKS                       R6 R5 K47 ["="]
      185 NEWTABLE                         R6 0 1
      187 NEWTABLE                         R7 0 2
      189 LOADK                            R8 K48 ["IMAGE"]
      190 LOADK                            R9 K49 ["^!%[([^%]]+)%]%(([^%)]+)%)"]
      191 SETLIST                          R7 R8 2 [1]
      193 SETLIST                          R6 R7 1 [1]
      195 SETTABLEKS                       R6 R5 K50 ["!"]
      197 NEWTABLE                         R6 0 1
      199 NEWTABLE                         R7 0 2
      201 LOADK                            R8 K51 ["TABLE_DIVIDER"]
      202 LOADK                            R9 K35 ["^|"]
      203 SETLIST                          R7 R8 2 [1]
      205 SETLIST                          R6 R7 1 [1]
      207 SETTABLEKS                       R6 R5 K52 ["|"]
      209 NEWTABLE                         R6 0 3
      211 NEWTABLE                         R7 0 2
      213 LOADK                            R8 K53 ["OPEN_CLOSE"]
      214 LOADK                            R9 K54 ["^<([%w-]+)%s?([^>]*)/>"]
      215 SETLIST                          R7 R8 2 [1]
      217 NEWTABLE                         R8 0 2
      219 LOADK                            R9 K55 ["CLOSE"]
      220 LOADK                            R10 K56 ["^</([%w-]+)%s?([^>]*)>"]
      221 SETLIST                          R8 R9 2 [1]
      223 NEWTABLE                         R9 0 2
      225 LOADK                            R10 K57 ["OPEN"]
      226 LOADK                            R11 K58 ["^<([%w-]+)%s?([^>]*)>"]
      227 SETLIST                          R9 R10 2 [1]
      229 SETLIST                          R6 R7 3 [1]
      231 SETTABLEKS                       R6 R5 K59 ["<"]
      233 NEWTABLE                         R6 0 2
      235 NEWTABLE                         R7 0 2
      237 LOADK                            R8 K60 ["BOLD_2"]
      238 LOADK                            R9 K61 ["^%*%*"]
      239 SETLIST                          R7 R8 2 [1]
      241 NEWTABLE                         R8 0 2
      243 LOADK                            R9 K62 ["BOLD"]
      244 LOADK                            R10 K63 ["^%*"]
      245 SETLIST                          R8 R9 2 [1]
      247 SETLIST                          R6 R7 2 [1]
      249 SETTABLEKS                       R6 R5 K64 ["*"]
      251 NEWTABLE                         R6 0 2
      253 NEWTABLE                         R7 0 2
      255 LOADK                            R8 K65 ["ITALIC_2"]
      256 LOADK                            R9 K66 ["^__"]
      257 SETLIST                          R7 R8 2 [1]
      259 NEWTABLE                         R8 0 2
      261 LOADK                            R9 K67 ["ITALIC"]
      262 LOADK                            R10 K68 ["^_"]
      263 SETLIST                          R8 R9 2 [1]
      265 SETLIST                          R6 R7 2 [1]
      267 SETTABLEKS                       R6 R5 K69 ["_"]
      269 NEWTABLE                         R6 0 1
      271 NEWTABLE                         R7 0 2
      273 LOADK                            R8 K70 ["STRIKE"]
      274 LOADK                            R9 K71 ["^~"]
      275 SETLIST                          R7 R8 2 [1]
      277 SETLIST                          R6 R7 1 [1]
      279 SETTABLEKS                       R6 R5 K72 ["~"]
      281 NEWTABLE                         R6 0 8
      283 NEWTABLE                         R7 0 2
      285 LOADK                            R8 K73 ["LINK"]
      286 LOADK                            R9 K74 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]\"([^\n]+)\"[ \t]*%)"]
      287 SETLIST                          R7 R8 2 [1]
      289 NEWTABLE                         R8 0 2
      291 LOADK                            R9 K73 ["LINK"]
      292 LOADK                            R10 K75 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]'([^\n]+)'[ \t]*%)"]
      293 SETLIST                          R8 R9 2 [1]
      295 NEWTABLE                         R9 0 2
      297 LOADK                            R10 K73 ["LINK"]
      298 LOADK                            R11 K76 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]%(([^\n]+)%)[ \t]*%)"]
      299 SETLIST                          R9 R10 2 [1]
      301 NEWTABLE                         R10 0 2
      303 LOADK                            R11 K73 ["LINK"]
      304 LOADK                            R12 K77 ["^%[([^%]]*)%]%([ \t]*%)"]
      305 SETLIST                          R10 R11 2 [1]
      307 NEWTABLE                         R11 0 2
      309 LOADK                            R12 K73 ["LINK"]
      310 LOADK                            R13 K78 ["^%[([^%]]*)%]%([ \t]*<>[ \t]*%)"]
      311 SETLIST                          R11 R12 2 [1]
      313 NEWTABLE                         R12 0 2
      315 LOADK                            R13 K73 ["LINK"]
      316 LOADK                            R14 K79 ["^%[([^%]]*)%]%([ \t]*<([^\n\t]+)>[ \t]*%)"]
      317 SETLIST                          R12 R13 2 [1]
      319 NEWTABLE                         R13 0 2
      321 LOADK                            R14 K73 ["LINK"]
      322 LOADK                            R15 K80 ["^%[([^%]]*)%]%([ \t]*([^\n\t ]+)[ \t]*%)"]
      323 SETLIST                          R13 R14 2 [1]
      325 NEWTABLE                         R14 0 2
      327 LOADK                            R15 K81 ["ACTION"]
      328 LOADK                            R16 K82 ["^%[%[([^%]]+)%]%]"]
      329 SETLIST                          R14 R15 2 [1]
      331 SETLIST                          R6 R7 8 [1]
      333 SETTABLEKS                       R6 R5 K83 ["["]
      335 NEWTABLE                         R6 0 1
      337 NEWTABLE                         R7 0 2
      339 LOADK                            R8 K84 ["INLINE_CODE"]
      340 LOADK                            R9 K85 ["^`"]
      341 SETLIST                          R7 R8 2 [1]
      343 SETLIST                          R6 R7 1 [1]
      345 SETTABLEKS                       R6 R5 K86 ["`"]
      347 NEWTABLE                         R6 0 1
      349 NEWTABLE                         R7 0 3
      351 LOADK                            R8 K14 ["HEADING"]
      352 LOADK                            R9 K87 ["^  ? ?(#+)%s*\n"]
      353 LOADN                            R10 1
      354 SETLIST                          R7 R8 3 [1]
      356 SETLIST                          R6 R7 1 [1]
      358 DUPCLOSURE                       R7 K88 [PROTO_0]
      359 CAPTURE                          VAL R5
      360 CAPTURE                          VAL R6
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R1
      363 CAPTURE                          VAL R4
      364 CAPTURE                          VAL R2
      365 RETURN                           R7 1
