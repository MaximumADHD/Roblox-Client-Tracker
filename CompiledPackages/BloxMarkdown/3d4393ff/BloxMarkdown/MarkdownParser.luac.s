PROTO_0:
        0 LOADK                            R3 K0 ["^%s*(.-)%s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K2 ["trim match failed"]
        8 GETIMPORT                        R2 K4 [assert]
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["\n"]
        4 CONCAT                           R2 R3 R4
        5 LOADK                            R4 K1 ["([^\n]*)\n"]
        6 NAMECALL                         R2 R2 K2 ["gmatch"]
        8 CALL                             R2 2 3
        9 FORGPREP                         R2
       10 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R5
       14 GETIMPORT                        R7 K5 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-8]
       19 RETURN                           R1 1

PROTO_2:
        0 LENGTH                           R1 R0
        1 LOADN                            R2 0
        2 JUMPIFNOTLT                      R2 R1 ; [+17]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K3 [{"name", "children", "text"}]
        6 LOADK                            R4 K4 ["TEXT"]
        7 SETTABLEKS                       R4 R3 K0 ["name"]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R3 K1 ["children"]
       13 SETTABLEKS                       R0 R3 K2 ["text"]
       15 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       17 GETIMPORT                        R1 K7 [table.insert]
       19 CALL                             R1 2 0
       20 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 JUMPIFNOTLE                      R2 R3 ; [+381]
        8 MOVE                             R7 R2
        9 MOVE                             R8 R2
       10 NAMECALL                         R5 R0 K0 ["sub"]
       12 CALL                             R5 3 1
       13 JUMPIFNOTEQKS                    R5 K1 ["\\"] ; [+13]
       15 JUMPIFNOTLT                      R2 R3 ; [+11]
       17 ADDK                             R7 R2 K2 [1]
       18 ADDK                             R8 R2 K2 [1]
       19 NAMECALL                         R5 R0 K0 ["sub"]
       21 CALL                             R5 3 1
       22 MOVE                             R6 R4
       23 MOVE                             R7 R5
       24 CALL                             R6 1 0
       25 ADDK                             R2 R2 K3 [2]
       26 JUMP                             ; [+360]
       27 MOVE                             R7 R2
       28 MOVE                             R8 R2
       29 NAMECALL                         R5 R0 K0 ["sub"]
       31 CALL                             R5 3 1
       32 JUMPIFNOTEQKS                    R5 K4 ["!"] ; [+64]
       34 ADDK                             R7 R2 K2 [1]
       35 ADDK                             R8 R2 K2 [1]
       36 NAMECALL                         R5 R0 K0 ["sub"]
       38 CALL                             R5 3 1
       39 JUMPIFNOTEQKS                    R5 K5 ["["] ; [+57]
       41 LOADK                            R7 K6 ["]"]
       42 ADDK                             R8 R2 K3 [2]
       43 LOADB                            R9 1
       44 NAMECALL                         R5 R0 K7 ["find"]
       46 CALL                             R5 4 1
       47 JUMPIFNOT                        R5 ; [+49]
       48 LOADK                            R8 K8 ["("]
       49 ADDK                             R9 R5 K2 [1]
       50 LOADB                            R10 1
       51 NAMECALL                         R6 R0 K7 ["find"]
       53 CALL                             R6 4 1
       54 ADDK                             R7 R5 K2 [1]
       55 JUMPIFNOTEQ                      R6 R7 ; [+41]
       57 LOADK                            R9 K9 [")"]
       58 ADDK                             R10 R6 K2 [1]
       59 LOADB                            R11 1
       60 NAMECALL                         R7 R0 K7 ["find"]
       62 CALL                             R7 4 1
       63 JUMPIFNOT                        R7 ; [+33]
       64 ADDK                             R10 R2 K3 [2]
       65 SUBK                             R11 R5 K2 [1]
       66 NAMECALL                         R8 R0 K0 ["sub"]
       68 CALL                             R8 3 1
       69 ADDK                             R11 R6 K2 [1]
       70 SUBK                             R12 R7 K2 [1]
       71 NAMECALL                         R9 R0 K0 ["sub"]
       73 CALL                             R9 3 1
       74 DUPTABLE                         R12 K14 [{"name", "children", "text", "attributes"}]
       75 LOADK                            R13 K15 ["IMAGE"]
       76 SETTABLEKS                       R13 R12 K10 ["name"]
       78 NEWTABLE                         R13 0 0
       80 SETTABLEKS                       R13 R12 K11 ["children"]
       82 SETTABLEKS                       R8 R12 K12 ["text"]
       84 DUPTABLE                         R13 K17 [{"url"}]
       85 SETTABLEKS                       R9 R13 K16 ["url"]
       87 SETTABLEKS                       R13 R12 K13 ["attributes"]
       89 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       91 MOVE                             R11 R1
       92 GETIMPORT                        R10 K20 [table.insert]
       94 CALL                             R10 2 0
       95 ADDK                             R2 R7 K2 [1]
       96 JUMP                             ; [+290]
       97 MOVE                             R7 R2
       98 MOVE                             R8 R2
       99 NAMECALL                         R5 R0 K0 ["sub"]
      101 CALL                             R5 3 1
      102 JUMPIFNOTEQKS                    R5 K5 ["["] ; [+58]
      104 LOADK                            R7 K6 ["]"]
      105 ADDK                             R8 R2 K2 [1]
      106 LOADB                            R9 1
      107 NAMECALL                         R5 R0 K7 ["find"]
      109 CALL                             R5 4 1
      110 JUMPIFNOT                        R5 ; [+50]
      111 LOADK                            R8 K8 ["("]
      112 ADDK                             R9 R5 K2 [1]
      113 LOADB                            R10 1
      114 NAMECALL                         R6 R0 K7 ["find"]
      116 CALL                             R6 4 1
      117 ADDK                             R7 R5 K2 [1]
      118 JUMPIFNOTEQ                      R6 R7 ; [+42]
      120 LOADK                            R9 K9 [")"]
      121 ADDK                             R10 R6 K2 [1]
      122 LOADB                            R11 1
      123 NAMECALL                         R7 R0 K7 ["find"]
      125 CALL                             R7 4 1
      126 JUMPIFNOT                        R7 ; [+34]
      127 ADDK                             R10 R2 K2 [1]
      128 SUBK                             R11 R5 K2 [1]
      129 NAMECALL                         R8 R0 K0 ["sub"]
      131 CALL                             R8 3 1
      132 ADDK                             R11 R6 K2 [1]
      133 SUBK                             R12 R7 K2 [1]
      134 NAMECALL                         R9 R0 K0 ["sub"]
      136 CALL                             R9 3 1
      137 DUPTABLE                         R12 K14 [{"name", "children", "text", "attributes"}]
      138 LOADK                            R13 K21 ["LINK"]
      139 SETTABLEKS                       R13 R12 K10 ["name"]
      141 GETUPVAL                         R13 0
      142 MOVE                             R14 R8
      143 CALL                             R13 1 1
      144 SETTABLEKS                       R13 R12 K11 ["children"]
      146 SETTABLEKS                       R8 R12 K12 ["text"]
      148 DUPTABLE                         R13 K17 [{"url"}]
      149 SETTABLEKS                       R9 R13 K16 ["url"]
      151 SETTABLEKS                       R13 R12 K13 ["attributes"]
      153 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      155 MOVE                             R11 R1
      156 GETIMPORT                        R10 K20 [table.insert]
      158 CALL                             R10 2 0
      159 ADDK                             R2 R7 K2 [1]
      160 JUMP                             ; [+226]
      161 MOVE                             R7 R2
      162 MOVE                             R8 R2
      163 NAMECALL                         R5 R0 K0 ["sub"]
      165 CALL                             R5 3 1
      166 JUMPIFNOTEQKS                    R5 K22 ["`"] ; [+47]
      168 LOADK                            R7 K22 ["`"]
      169 ADDK                             R8 R2 K2 [1]
      170 LOADB                            R9 1
      171 NAMECALL                         R5 R0 K7 ["find"]
      173 CALL                             R5 4 1
      174 JUMPIFNOT                        R5 ; [+39]
      175 ADDK                             R8 R2 K2 [1]
      176 SUBK                             R9 R5 K2 [1]
      177 NAMECALL                         R6 R0 K0 ["sub"]
      179 CALL                             R6 3 1
      180 DUPTABLE                         R9 K23 [{"name", "children", "attributes"}]
      181 LOADK                            R10 K24 ["STYLED_TEXT"]
      182 SETTABLEKS                       R10 R9 K10 ["name"]
      184 NEWTABLE                         R10 0 1
      186 DUPTABLE                         R11 K25 [{"name", "children", "text"}]
      187 LOADK                            R12 K26 ["TEXT"]
      188 SETTABLEKS                       R12 R11 K10 ["name"]
      190 NEWTABLE                         R12 0 0
      192 SETTABLEKS                       R12 R11 K11 ["children"]
      194 SETTABLEKS                       R6 R11 K12 ["text"]
      196 SETLIST                          R10 R11 1 [1]
      198 SETTABLEKS                       R10 R9 K11 ["children"]
      200 DUPTABLE                         R10 K28 [{"style"}]
      201 LOADK                            R11 K29 ["INLINE_CODE"]
      202 SETTABLEKS                       R11 R10 K27 ["style"]
      204 SETTABLEKS                       R10 R9 K13 ["attributes"]
      206 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      208 MOVE                             R8 R1
      209 GETIMPORT                        R7 K20 [table.insert]
      211 CALL                             R7 2 0
      212 ADDK                             R2 R5 K2 [1]
      213 JUMP                             ; [+173]
      214 LOADK                            R7 K30 ["^%*%*(.-)%*%*"]
      215 MOVE                             R8 R2
      216 NAMECALL                         R5 R0 K31 ["match"]
      218 CALL                             R5 3 1
      219 JUMPIF                           R5 ; [+5]
      220 LOADK                            R7 K32 ["^__(.-)__"]
      221 MOVE                             R8 R2
      222 NAMECALL                         R5 R0 K31 ["match"]
      224 CALL                             R5 3 1
      225 JUMPIFNOT                        R5 ; [+37]
      226 MOVE                             R9 R2
      227 MOVE                             R10 R2
      228 NAMECALL                         R7 R0 K0 ["sub"]
      230 CALL                             R7 3 1
      231 JUMPIFNOTEQKS                    R7 K33 ["*"] ; [+3]
      233 LOADK                            R6 K34 ["**"]
      234 JUMP                             ; [+1]
      235 LOADK                            R6 K35 ["__"]
      236 DUPTABLE                         R9 K23 [{"name", "children", "attributes"}]
      237 LOADK                            R10 K24 ["STYLED_TEXT"]
      238 SETTABLEKS                       R10 R9 K10 ["name"]
      240 GETUPVAL                         R10 0
      241 MOVE                             R11 R5
      242 CALL                             R10 1 1
      243 SETTABLEKS                       R10 R9 K11 ["children"]
      245 DUPTABLE                         R10 K28 [{"style"}]
      246 LOADK                            R11 K36 ["BOLD"]
      247 SETTABLEKS                       R11 R10 K27 ["style"]
      249 SETTABLEKS                       R10 R9 K13 ["attributes"]
      251 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      253 MOVE                             R8 R1
      254 GETIMPORT                        R7 K20 [table.insert]
      256 CALL                             R7 2 0
      257 LENGTH                           R8 R5
      258 LENGTH                           R10 R6
      259 MULK                             R9 R10 K3 [2]
      260 ADD                              R7 R8 R9
      261 ADD                              R2 R2 R7
      262 JUMP                             ; [+124]
      263 LOADK                            R8 K37 ["^~~(.-)~~"]
      264 MOVE                             R9 R2
      265 NAMECALL                         R6 R0 K31 ["match"]
      267 CALL                             R6 3 1
      268 JUMPIFNOT                        R6 ; [+25]
      269 DUPTABLE                         R9 K23 [{"name", "children", "attributes"}]
      270 LOADK                            R10 K24 ["STYLED_TEXT"]
      271 SETTABLEKS                       R10 R9 K10 ["name"]
      273 GETUPVAL                         R10 0
      274 MOVE                             R11 R6
      275 CALL                             R10 1 1
      276 SETTABLEKS                       R10 R9 K11 ["children"]
      278 DUPTABLE                         R10 K28 [{"style"}]
      279 LOADK                            R11 K38 ["STRIKE"]
      280 SETTABLEKS                       R11 R10 K27 ["style"]
      282 SETTABLEKS                       R10 R9 K13 ["attributes"]
      284 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      286 MOVE                             R8 R1
      287 GETIMPORT                        R7 K20 [table.insert]
      289 CALL                             R7 2 0
      290 LENGTH                           R8 R6
      291 ADDK                             R7 R8 K39 [4]
      292 ADD                              R2 R2 R7
      293 JUMP                             ; [+93]
      294 LOADK                            R9 K40 ["^%*(.-)%*"]
      295 MOVE                             R10 R2
      296 NAMECALL                         R7 R0 K31 ["match"]
      298 CALL                             R7 3 1
      299 JUMPIF                           R7 ; [+5]
      300 LOADK                            R9 K41 ["^_(.-)_"]
      301 MOVE                             R10 R2
      302 NAMECALL                         R7 R0 K31 ["match"]
      304 CALL                             R7 3 1
      305 JUMPIFNOT                        R7 ; [+37]
      306 MOVE                             R11 R2
      307 MOVE                             R12 R2
      308 NAMECALL                         R9 R0 K0 ["sub"]
      310 CALL                             R9 3 1
      311 JUMPIFNOTEQKS                    R9 K33 ["*"] ; [+3]
      313 LOADK                            R8 K33 ["*"]
      314 JUMP                             ; [+1]
      315 LOADK                            R8 K42 ["_"]
      316 DUPTABLE                         R11 K23 [{"name", "children", "attributes"}]
      317 LOADK                            R12 K24 ["STYLED_TEXT"]
      318 SETTABLEKS                       R12 R11 K10 ["name"]
      320 GETUPVAL                         R12 0
      321 MOVE                             R13 R7
      322 CALL                             R12 1 1
      323 SETTABLEKS                       R12 R11 K11 ["children"]
      325 DUPTABLE                         R12 K28 [{"style"}]
      326 LOADK                            R13 K43 ["ITALIC"]
      327 SETTABLEKS                       R13 R12 K27 ["style"]
      329 SETTABLEKS                       R12 R11 K13 ["attributes"]
      331 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      333 MOVE                             R10 R1
      334 GETIMPORT                        R9 K20 [table.insert]
      336 CALL                             R9 2 0
      337 LENGTH                           R10 R7
      338 LENGTH                           R12 R8
      339 MULK                             R11 R12 K3 [2]
      340 ADD                              R9 R10 R11
      341 ADD                              R2 R2 R9
      342 JUMP                             ; [+44]
      343 LOADK                            R10 K44 ["^<br%s*/?>"]
      344 MOVE                             R11 R2
      345 NAMECALL                         R8 R0 K31 ["match"]
      347 CALL                             R8 3 1
      348 JUMPIFNOT                        R8 ; [+17]
      349 DUPTABLE                         R11 K45 [{"name", "children"}]
      350 LOADK                            R12 K46 ["BREAK"]
      351 SETTABLEKS                       R12 R11 K10 ["name"]
      353 NEWTABLE                         R12 0 0
      355 SETTABLEKS                       R12 R11 K11 ["children"]
      357 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      359 MOVE                             R10 R1
      360 GETIMPORT                        R9 K20 [table.insert]
      362 CALL                             R9 2 0
      363 LENGTH                           R9 R8
      364 ADD                              R2 R2 R9
      365 JUMP                             ; [+21]
      366 LOADK                            R11 K47 ["[\\!%[`%*_~<]"]
      367 ADDK                             R12 R2 K2 [1]
      368 NAMECALL                         R9 R0 K7 ["find"]
      370 CALL                             R9 3 1
      371 JUMPIFNOT                        R9 ; [+6]
      372 MOVE                             R12 R2
      373 SUBK                             R13 R9 K2 [1]
      374 NAMECALL                         R10 R0 K0 ["sub"]
      376 CALL                             R10 3 1
      377 JUMP                             ; [+4]
      378 MOVE                             R12 R2
      379 NAMECALL                         R10 R0 K0 ["sub"]
      381 CALL                             R10 2 1
      382 MOVE                             R11 R4
      383 MOVE                             R12 R10
      384 CALL                             R11 1 0
      385 LENGTH                           R11 R10
      386 ADD                              R2 R2 R11
      387 JUMPBACK                         ; [-382]
      388 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R4 K0 ["^%s*$"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["^(#+)%s+(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 2
        4 JUMPIFNOT                        R1 ; [+20]
        5 LENGTH                           R4 R1
        6 FASTCALL2K                       MATH_MIN R4 K2 ; [+4]
        8 LOADK                            R5 K2 [6]
        9 GETIMPORT                        R3 K5 [math.min]
       11 CALL                             R3 2 1
       12 LOADK                            R7 K6 ["^%s*(.-)%s*$"]
       13 NAMECALL                         R5 R2 K1 ["match"]
       15 CALL                             R5 2 1
       16 FASTCALL2K                       ASSERT R5 K7 ; [+5]
       18 MOVE                             R7 R5
       19 LOADK                            R8 K7 ["trim match failed"]
       20 GETIMPORT                        R6 K9 [assert]
       22 CALL                             R6 2 0
       23 MOVE                             R4 R5
       24 RETURN                           R3 2
       25 LOADNIL                          R3
       26 LOADNIL                          R4
       27 RETURN                           R3 2

PROTO_6:
        0 LOADB                            R1 1
        1 LOADK                            R4 K0 ["^%s*%-%-%-+%s*$"]
        2 NAMECALL                         R2 R0 K1 ["match"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+16]
        7 LOADB                            R1 1
        8 LOADK                            R4 K2 ["^%s*%*%*%*+%s*$"]
        9 NAMECALL                         R2 R0 K1 ["match"]
       11 CALL                             R2 2 1
       12 JUMPIFNOTEQKNIL                  R2 ; [+9]
       14 LOADK                            R4 K3 ["^%s*___+%s*$"]
       15 NAMECALL                         R2 R0 K1 ["match"]
       17 CALL                             R2 2 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 LOADB                            R1 0 +1
       21 LOADB                            R1 1
       22 RETURN                           R1 1

PROTO_7:
        0 LOADK                            R3 K0 ["^%s*([%*%-])%s+(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 2
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 RETURN                           R3 2

PROTO_8:
        0 LOADK                            R3 K0 ["^%s*(%d+)[%.%)]%s+(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 2
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R1 2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 RETURN                           R3 2

PROTO_9:
        0 LOADK                            R3 K0 ["^%s*[%*%-]%s+%[([ xX])%]%s+(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 2
        4 JUMPIFNOT                        R1 ; [+9]
        5 NAMECALL                         R4 R1 K2 ["lower"]
        7 CALL                             R4 1 1
        8 JUMPIFEQKS                       R4 K3 ["x"] ; [+2]
       10 LOADB                            R3 0 +1
       11 LOADB                            R3 1
       12 MOVE                             R4 R2
       13 RETURN                           R3 2
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 RETURN                           R3 2

PROTO_10:
        0 LOADK                            R3 K0 ["^```(%w*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_11:
        0 LOADK                            R3 K0 ["^>%s?(.*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_12:
        0 LOADK                            R3 K0 ["^%s*|"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R1
        6 RETURN                           R1 1
        7 NEWTABLE                         R1 0 0
        9 LOADK                            R4 K2 ["|([^|]*)"]
       10 NAMECALL                         R2 R0 K3 ["gmatch"]
       12 CALL                             R2 2 3
       13 FORGPREP                         R2
       14 LOADK                            R10 K4 ["^%s*(.-)%s*$"]
       15 NAMECALL                         R8 R5 K1 ["match"]
       17 CALL                             R8 2 1
       18 FASTCALL2K                       ASSERT R8 K5 ; [+5]
       20 MOVE                             R10 R8
       21 LOADK                            R11 K5 ["trim match failed"]
       22 GETIMPORT                        R9 K7 [assert]
       24 CALL                             R9 2 0
       25 MOVE                             R7 R8
       26 JUMPIFNOTEQKS                    R7 K8 [""] ; [+5]
       28 LENGTH                           R8 R1
       29 LOADN                            R9 0
       30 JUMPIFNOTLT                      R9 R8 ; [+8]
       32 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       34 MOVE                             R9 R1
       35 MOVE                             R10 R7
       36 GETIMPORT                        R8 K11 [table.insert]
       38 CALL                             R8 2 0
       39 FORGLOOP                         R2 1 ; [-26]
       41 LENGTH                           R2 R1
       42 LOADN                            R3 0
       43 JUMPIFNOTLT                      R3 R2 ; [+10]
       45 LENGTH                           R3 R1
       46 GETTABLE                         R2 R1 R3
       47 JUMPIFNOTEQKS                    R2 K8 [""] ; [+6]
       49 GETIMPORT                        R2 K13 [table.remove]
       51 MOVE                             R3 R1
       52 CALL                             R2 1 0
       53 JUMPBACK                         ; [-13]
       54 LENGTH                           R2 R1
       55 LOADN                            R3 0
       56 JUMPIFNOTLT                      R3 R2 ; [+2]
       58 RETURN                           R1 1
       59 LOADNIL                          R2
       60 RETURN                           R2 1

PROTO_13:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 LOADK                            R8 K0 ["^:?%-+:?$"]
        5 NAMECALL                         R6 R5 K1 ["match"]
        7 CALL                             R6 2 1
        8 JUMPIF                           R6 ; [+2]
        9 LOADB                            R6 0
       10 RETURN                           R6 1
       11 FORGLOOP                         R1 2 ; [-8]
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R3 K0 ["^%s*<([A-Za-z][%w%-]*)"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_15:
        0 LOADK                            R6 K0 ["^%s*</"]
        1 MOVE                             R7 R1
        2 LOADK                            R8 K1 ["%s*>"]
        3 CONCAT                           R5 R6 R8
        4 NAMECALL                         R3 R0 K2 ["match"]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_16:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+197]
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R0 K0 ["sub"]
        9 CALL                             R4 2 1
       10 LOADK                            R6 K1 ["^(%s+)"]
       11 NAMECALL                         R4 R4 K2 ["match"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 LENGTH                           R5 R4
       16 ADD                              R2 R2 R5
       17 JUMPIFLT                         R3 R2 ; [+184]
       19 MOVE                             R7 R2
       20 NAMECALL                         R5 R0 K0 ["sub"]
       22 CALL                             R5 2 1
       23 LOADK                            R7 K3 ["^([%w_]+)"]
       24 NAMECALL                         R5 R5 K2 ["match"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+174]
       28 LENGTH                           R6 R5
       29 ADD                              R2 R2 R6
       30 MOVE                             R8 R2
       31 NAMECALL                         R6 R0 K0 ["sub"]
       33 CALL                             R6 2 1
       34 LOADK                            R8 K1 ["^(%s+)"]
       35 NAMECALL                         R6 R6 K2 ["match"]
       37 CALL                             R6 2 1
       38 MOVE                             R4 R6
       39 JUMPIFNOT                        R4 ; [+2]
       40 LENGTH                           R6 R4
       41 ADD                              R2 R2 R6
       42 JUMPIFLT                         R3 R2 ; [+8]
       44 MOVE                             R8 R2
       45 MOVE                             R9 R2
       46 NAMECALL                         R6 R0 K0 ["sub"]
       48 CALL                             R6 3 1
       49 JUMPIFEQKS                       R6 K4 ["="] ; [+4]
       51 LOADB                            R6 1
       52 SETTABLE                         R6 R1 R5
       53 JUMP                             ; [+147]
       54 ADDK                             R2 R2 K5 [1]
       55 MOVE                             R8 R2
       56 NAMECALL                         R6 R0 K0 ["sub"]
       58 CALL                             R6 2 1
       59 LOADK                            R8 K1 ["^(%s+)"]
       60 NAMECALL                         R6 R6 K2 ["match"]
       62 CALL                             R6 2 1
       63 MOVE                             R4 R6
       64 JUMPIFNOT                        R4 ; [+2]
       65 LENGTH                           R6 R4
       66 ADD                              R2 R2 R6
       67 JUMPIFLT                         R3 R2 ; [+134]
       69 MOVE                             R8 R2
       70 MOVE                             R9 R2
       71 NAMECALL                         R6 R0 K0 ["sub"]
       73 CALL                             R6 3 1
       74 JUMPIFNOTEQKS                    R6 K6 ["\""] ; [+18]
       76 LOADK                            R9 K6 ["\""]
       77 ADDK                             R10 R2 K5 [1]
       78 LOADB                            R11 1
       79 NAMECALL                         R7 R0 K7 ["find"]
       81 CALL                             R7 4 1
       82 JUMPIFNOT                        R7 ; [+119]
       83 ADDK                             R10 R2 K5 [1]
       84 SUBK                             R11 R7 K5 [1]
       85 NAMECALL                         R8 R0 K0 ["sub"]
       87 CALL                             R8 3 1
       88 SETTABLE                         R8 R1 R5
       89 ADDK                             R2 R7 K5 [1]
       90 JUMP                             ; [+110]
       91 RETURN                           R1 1
       92 JUMP                             ; [+108]
       93 JUMPIFNOTEQKS                    R6 K8 ["'"] ; [+18]
       95 LOADK                            R9 K8 ["'"]
       96 ADDK                             R10 R2 K5 [1]
       97 LOADB                            R11 1
       98 NAMECALL                         R7 R0 K7 ["find"]
      100 CALL                             R7 4 1
      101 JUMPIFNOT                        R7 ; [+100]
      102 ADDK                             R10 R2 K5 [1]
      103 SUBK                             R11 R7 K5 [1]
      104 NAMECALL                         R8 R0 K0 ["sub"]
      106 CALL                             R8 3 1
      107 SETTABLE                         R8 R1 R5
      108 ADDK                             R2 R7 K5 [1]
      109 JUMP                             ; [+91]
      110 RETURN                           R1 1
      111 JUMP                             ; [+89]
      112 JUMPIFNOTEQKS                    R6 K9 ["{"] ; [+89]
      114 LOADN                            R7 1
      115 ADDK                             R8 R2 K5 [1]
      116 ADDK                             R2 R2 K5 [1]
      117 LOADNIL                          R9
      118 JUMPIFNOTLE                      R2 R3 ; [+32]
      120 LOADN                            R10 0
      121 JUMPIFNOTLT                      R10 R7 ; [+29]
      123 MOVE                             R12 R2
      124 MOVE                             R13 R2
      125 NAMECALL                         R10 R0 K0 ["sub"]
      127 CALL                             R10 3 1
      128 JUMPIFNOT                        R9 ; [+4]
      129 JUMPIFNOTEQ                      R10 R9 ; [+16]
      131 LOADNIL                          R9
      132 JUMP                             ; [+13]
      133 JUMPIFEQKS                       R10 K6 ["\""] ; [+3]
      135 JUMPIFNOTEQKS                    R10 K8 ["'"] ; [+3]
      137 MOVE                             R9 R10
      138 JUMP                             ; [+7]
      139 JUMPIFNOTEQKS                    R10 K9 ["{"] ; [+3]
      141 ADDK                             R7 R7 K5 [1]
      142 JUMP                             ; [+3]
      143 JUMPIFNOTEQKS                    R10 K10 ["}"] ; [+2]
      145 SUBK                             R7 R7 K5 [1]
      146 LOADN                            R11 0
      147 JUMPIFNOTLT                      R11 R7 ; [+2]
      149 ADDK                             R2 R2 K5 [1]
      150 JUMPBACK                         ; [-33]
      151 MOVE                             R13 R8
      152 SUBK                             R14 R2 K5 [1]
      153 NAMECALL                         R11 R0 K0 ["sub"]
      155 CALL                             R11 3 1
      156 LOADK                            R14 K11 ["^%s*(.-)%s*$"]
      157 NAMECALL                         R12 R11 K2 ["match"]
      159 CALL                             R12 2 1
      160 FASTCALL2K                       ASSERT R12 K12 ; [+5]
      162 MOVE                             R14 R12
      163 LOADK                            R15 K12 ["trim match failed"]
      164 GETIMPORT                        R13 K14 [assert]
      166 CALL                             R13 2 0
      167 MOVE                             R10 R12
      168 ADDK                             R2 R2 K5 [1]
      169 JUMPIFNOTEQKS                    R10 K15 ["true"] ; [+4]
      171 LOADB                            R11 1
      172 SETTABLE                         R11 R1 R5
      173 JUMP                             ; [+27]
      174 JUMPIFNOTEQKS                    R10 K16 ["false"] ; [+4]
      176 LOADB                            R11 0
      177 SETTABLE                         R11 R1 R5
      178 JUMP                             ; [+22]
      179 FASTCALL1                        TONUMBER R10 ; [+3]
      180 MOVE                             R12 R10
      181 GETIMPORT                        R11 K18 [tonumber]
      183 CALL                             R11 1 1
      184 JUMPIFNOT                        R11 ; [+7]
      185 FASTCALL1                        TONUMBER R10 ; [+3]
      186 MOVE                             R12 R10
      187 GETIMPORT                        R11 K18 [tonumber]
      189 CALL                             R11 1 1
      190 SETTABLE                         R11 R1 R5
      191 JUMP                             ; [+9]
      192 DUPTABLE                         R11 K21 [{"type", "expr"}]
      193 LOADK                            R12 K22 ["Expr"]
      194 SETTABLEKS                       R12 R11 K19 ["type"]
      196 SETTABLEKS                       R10 R11 K20 ["expr"]
      198 SETTABLE                         R11 R1 R5
      199 JUMP                             ; [+1]
      200 RETURN                           R1 1
      201 JUMPBACK                         ; [-198]
      202 RETURN                           R1 1

PROTO_17:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 LOADB                            R5 0
        4 LOADNIL                          R6
        5 MOVE                             R7 R1
        6 LENGTH                           R8 R0
        7 JUMPIFNOTLE                      R7 R8 ; [+89]
        9 GETTABLE                         R10 R0 R7
       10 FASTCALL2                        TABLE_INSERT R3 R10 ; [+4]
       12 MOVE                             R9 R3
       13 GETIMPORT                        R8 K2 [table.insert]
       15 CALL                             R8 2 0
       16 GETIMPORT                        R8 K4 [table.concat]
       18 MOVE                             R9 R3
       19 LOADK                            R10 K5 [" "]
       20 CALL                             R8 2 1
       21 LOADNIL                          R9
       22 LOADN                            R10 0
       23 LOADB                            R11 0
       24 LOADN                            R14 1
       25 LENGTH                           R12 R8
       26 LOADN                            R13 1
       27 FORNPREP                         R12
       28 MOVE                             R17 R14
       29 MOVE                             R18 R14
       30 NAMECALL                         R15 R8 K6 ["sub"]
       32 CALL                             R15 3 1
       33 JUMPIFNOT                        R9 ; [+4]
       34 JUMPIFNOTEQ                      R15 R9 ; [+58]
       36 LOADNIL                          R9
       37 JUMP                             ; [+55]
       38 LOADN                            R16 0
       39 JUMPIFNOTLT                      R16 R10 ; [+9]
       41 JUMPIFNOTEQKS                    R15 K7 ["{"] ; [+3]
       43 ADDK                             R10 R10 K8 [1]
       44 JUMP                             ; [+48]
       45 JUMPIFNOTEQKS                    R15 K9 ["}"] ; [+47]
       47 SUBK                             R10 R10 K8 [1]
       48 JUMP                             ; [+44]
       49 JUMPIFEQKS                       R15 K10 ["\""] ; [+3]
       51 JUMPIFNOTEQKS                    R15 K11 ["'"] ; [+3]
       53 MOVE                             R9 R15
       54 JUMP                             ; [+38]
       55 JUMPIFNOTEQKS                    R15 K7 ["{"] ; [+3]
       57 ADDK                             R10 R10 K8 [1]
       58 JUMP                             ; [+34]
       59 JUMPIFNOTEQKS                    R15 K12 ["/"] ; [+21]
       61 LENGTH                           R16 R8
       62 JUMPIFNOTLT                      R14 R16 ; [+18]
       64 ADDK                             R18 R14 K8 [1]
       65 ADDK                             R19 R14 K8 [1]
       66 NAMECALL                         R16 R8 K6 ["sub"]
       68 CALL                             R16 3 1
       69 JUMPIFNOTEQKS                    R16 K13 [">"] ; [+11]
       71 LOADN                            R18 1
       72 SUBK                             R19 R14 K8 [1]
       73 NAMECALL                         R16 R8 K6 ["sub"]
       75 CALL                             R16 3 1
       76 MOVE                             R6 R16
       77 MOVE                             R4 R7
       78 LOADB                            R5 1
       79 LOADB                            R11 1
       80 JUMP                             ; [+13]
       81 JUMPIFNOTEQKS                    R15 K13 [">"] ; [+11]
       83 LOADN                            R18 1
       84 SUBK                             R19 R14 K8 [1]
       85 NAMECALL                         R16 R8 K6 ["sub"]
       87 CALL                             R16 3 1
       88 MOVE                             R6 R16
       89 MOVE                             R4 R7
       90 LOADB                            R5 0
       91 LOADB                            R11 1
       92 JUMP                             ; [+1]
       93 FORNLOOP                         R12
       94 JUMPIF                           R11 ; [+2]
       95 ADDK                             R7 R7 K8 [1]
       96 JUMPBACK                         ; [-91]
       97 JUMPIF                           R6 ; [+3]
       98 LOADNIL                          R8
       99 MOVE                             R9 R1
      100 RETURN                           R8 2
      101 LOADK                            R10 K14 ["<([A-Za-z][%w%-]*)"]
      102 NAMECALL                         R8 R6 K15 ["match"]
      104 CALL                             R8 2 1
      105 JUMPIF                           R8 ; [+3]
      106 LOADNIL                          R9
      107 MOVE                             R10 R1
      108 RETURN                           R9 2
      109 LOADK                            R12 K16 ["<"]
      110 MOVE                             R13 R8
      111 CONCAT                           R11 R12 R13
      112 LOADN                            R12 1
      113 LOADB                            R13 1
      114 NAMECALL                         R9 R6 K17 ["find"]
      116 CALL                             R9 4 2
      117 ADDK                             R13 R10 K8 [1]
      118 NAMECALL                         R11 R6 K6 ["sub"]
      120 CALL                             R11 2 1
      121 GETUPVAL                         R12 0
      122 MOVE                             R13 R11
      123 CALL                             R12 1 1
      124 GETIMPORT                        R13 K19 [print]
      126 LOADK                            R14 K20 ["[MarkdownParser] Parsed component tag:"]
      127 MOVE                             R15 R8
      128 LOADK                            R16 K21 ["| self-closing:"]
      129 MOVE                             R17 R5
      130 LOADK                            R18 K22 ["| props:"]
      131 MOVE                             R19 R11
      132 CALL                             R13 6 0
      133 JUMPIFNOT                        R5 ; [+21]
      134 DUPTABLE                         R13 K27 [{"name", "children", "attributes", "index"}]
      135 LOADK                            R14 K28 ["COMPONENT"]
      136 SETTABLEKS                       R14 R13 K23 ["name"]
      138 NEWTABLE                         R14 0 0
      140 SETTABLEKS                       R14 R13 K24 ["children"]
      142 DUPTABLE                         R14 K31 [{"tagName", "props"}]
      143 SETTABLEKS                       R8 R14 K29 ["tagName"]
      145 SETTABLEKS                       R12 R14 K30 ["props"]
      147 SETTABLEKS                       R14 R13 K25 ["attributes"]
      149 MOVE                             R14 R2
      150 CALL                             R14 0 1
      151 SETTABLEKS                       R14 R13 K26 ["index"]
      153 MOVE                             R14 R4
      154 RETURN                           R13 2
      155 NEWTABLE                         R13 0 0
      157 ADDK                             R7 R4 K8 [1]
      158 LENGTH                           R14 R0
      159 JUMPIFNOTLE                      R7 R14 ; [+83]
      161 GETTABLE                         R14 R0 R7
      162 LOADK                            R19 K32 ["^%s*</"]
      163 MOVE                             R20 R8
      164 LOADK                            R21 K33 ["%s*>"]
      165 CONCAT                           R18 R19 R21
      166 NAMECALL                         R16 R14 K15 ["match"]
      168 CALL                             R16 2 1
      169 JUMPIFNOTEQKNIL                  R16 ; [+2]
      171 LOADB                            R15 0 +1
      172 LOADB                            R15 1
      173 JUMPIF                           R15 ; [+69]
      174 LOADK                            R18 K34 ["^%s*$"]
      175 NAMECALL                         R16 R14 K15 ["match"]
      177 CALL                             R16 2 1
      178 JUMPIFNOTEQKNIL                  R16 ; [+2]
      180 LOADB                            R15 0 +1
      181 LOADB                            R15 1
      182 JUMPIFNOT                        R15 ; [+2]
      183 ADDK                             R7 R7 K8 [1]
      184 JUMP                             ; [+57]
      185 LOADK                            R17 K35 ["^%s*<([A-Za-z][%w%-]*)"]
      186 NAMECALL                         R15 R14 K15 ["match"]
      188 CALL                             R15 2 1
      189 JUMPIFNOT                        R15 ; [+15]
      190 GETUPVAL                         R16 1
      191 MOVE                             R17 R0
      192 MOVE                             R18 R7
      193 MOVE                             R19 R2
      194 CALL                             R16 3 2
      195 JUMPIFNOT                        R16 ; [+9]
      196 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      198 MOVE                             R19 R13
      199 MOVE                             R20 R16
      200 GETIMPORT                        R18 K2 [table.insert]
      202 CALL                             R18 2 0
      203 ADDK                             R7 R17 K8 [1]
      204 JUMP                             ; [+37]
      205 LOADK                            R19 K36 ["^%s*(.-)%s*$"]
      206 NAMECALL                         R17 R14 K15 ["match"]
      208 CALL                             R17 2 1
      209 FASTCALL2K                       ASSERT R17 K37 ; [+5]
      211 MOVE                             R19 R17
      212 LOADK                            R20 K37 ["trim match failed"]
      213 GETIMPORT                        R18 K39 [assert]
      215 CALL                             R18 2 0
      216 MOVE                             R16 R17
      217 LENGTH                           R17 R16
      218 LOADN                            R18 0
      219 JUMPIFNOTLT                      R18 R17 ; [+21]
      221 DUPTABLE                         R19 K41 [{"name", "children", "text", "index"}]
      222 LOADK                            R20 K42 ["INLINE_TEXT"]
      223 SETTABLEKS                       R20 R19 K23 ["name"]
      225 NEWTABLE                         R20 0 0
      227 SETTABLEKS                       R20 R19 K24 ["children"]
      229 SETTABLEKS                       R16 R19 K40 ["text"]
      231 MOVE                             R20 R2
      232 CALL                             R20 0 1
      233 SETTABLEKS                       R20 R19 K26 ["index"]
      235 FASTCALL2                        TABLE_INSERT R13 R19 ; [+4]
      237 MOVE                             R18 R13
      238 GETIMPORT                        R17 K2 [table.insert]
      240 CALL                             R17 2 0
      241 ADDK                             R7 R7 K8 [1]
      242 JUMPBACK                         ; [-85]
      243 DUPTABLE                         R14 K27 [{"name", "children", "attributes", "index"}]
      244 LOADK                            R15 K28 ["COMPONENT"]
      245 SETTABLEKS                       R15 R14 K23 ["name"]
      247 SETTABLEKS                       R13 R14 K24 ["children"]
      249 DUPTABLE                         R15 K31 [{"tagName", "props"}]
      250 SETTABLEKS                       R8 R15 K29 ["tagName"]
      252 SETTABLEKS                       R12 R15 K30 ["props"]
      254 SETTABLEKS                       R15 R14 K25 ["attributes"]
      256 MOVE                             R15 R2
      257 CALL                             R15 0 1
      258 SETTABLEKS                       R15 R14 K26 ["index"]
      260 MOVE                             R15 R7
      261 RETURN                           R14 2

PROTO_18:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_19:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R4 R0
        3 LOADK                            R5 K0 ["\n"]
        4 CONCAT                           R3 R4 R5
        5 LOADK                            R5 K1 ["([^\n]*)\n"]
        6 NAMECALL                         R3 R3 K2 ["gmatch"]
        8 CALL                             R3 2 3
        9 FORGPREP                         R3
       10 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R6
       14 GETIMPORT                        R8 K5 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 1 ; [-8]
       19 MOVE                             R1 R2
       20 DUPTABLE                         R2 K9 [{"name", "children", "offset"}]
       21 LOADK                            R3 K10 ["ROOT"]
       22 SETTABLEKS                       R3 R2 K6 ["name"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K7 ["children"]
       28 LOADN                            R3 0
       29 SETTABLEKS                       R3 R2 K8 ["offset"]
       31 LOADN                            R3 1
       32 LOADN                            R4 0
       33 NEWCLOSURE                       R5 P0
       34 CAPTURE                          REF R4
       35 LENGTH                           R6 R1
       36 JUMPIFNOTLE                      R3 R6 ; [+793]
       38 GETTABLE                         R6 R1 R3
       39 LOADK                            R10 K11 ["^%s*$"]
       40 NAMECALL                         R8 R6 K12 ["match"]
       42 CALL                             R8 2 1
       43 JUMPIFNOTEQKNIL                  R8 ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 JUMPIFNOT                        R7 ; [+2]
       48 ADDK                             R3 R3 K13 [1]
       49 JUMP                             ; [+779]
       50 LOADK                            R11 K14 ["^(#+)%s+(.*)"]
       51 NAMECALL                         R9 R6 K12 ["match"]
       53 CALL                             R9 2 2
       54 JUMPIFNOT                        R9 ; [+21]
       55 LENGTH                           R12 R9
       56 FASTCALL2K                       MATH_MIN R12 K15 ; [+4]
       58 LOADK                            R13 K15 [6]
       59 GETIMPORT                        R11 K18 [math.min]
       61 CALL                             R11 2 1
       62 MOVE                             R7 R11
       63 LOADK                            R13 K19 ["^%s*(.-)%s*$"]
       64 NAMECALL                         R11 R10 K12 ["match"]
       66 CALL                             R11 2 1
       67 FASTCALL2K                       ASSERT R11 K20 ; [+5]
       69 MOVE                             R13 R11
       70 LOADK                            R14 K20 ["trim match failed"]
       71 GETIMPORT                        R12 K22 [assert]
       73 CALL                             R12 2 0
       74 MOVE                             R8 R11
       75 JUMP                             ; [+2]
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 JUMPIFNOT                        R7 ; [+28]
       79 JUMPIFNOT                        R8 ; [+27]
       80 GETTABLEKS                       R10 R2 K7 ["children"]
       82 DUPTABLE                         R11 K25 [{"name", "children", "attributes", "index"}]
       83 LOADK                            R12 K26 ["HEADING"]
       84 SETTABLEKS                       R12 R11 K6 ["name"]
       86 GETUPVAL                         R12 0
       87 MOVE                             R13 R8
       88 CALL                             R12 1 1
       89 SETTABLEKS                       R12 R11 K7 ["children"]
       91 DUPTABLE                         R12 K28 [{"depth"}]
       92 SETTABLEKS                       R7 R12 K27 ["depth"]
       94 SETTABLEKS                       R12 R11 K23 ["attributes"]
       96 ADDK                             R4 R4 K13 [1]
       97 MOVE                             R12 R4
       98 SETTABLEKS                       R12 R11 K24 ["index"]
      100 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      102 GETIMPORT                        R9 K5 [table.insert]
      104 CALL                             R9 2 0
      105 ADDK                             R3 R3 K13 [1]
      106 JUMP                             ; [+722]
      107 LOADB                            R9 1
      108 LOADK                            R12 K29 ["^%s*%-%-%-+%s*$"]
      109 NAMECALL                         R10 R6 K12 ["match"]
      111 CALL                             R10 2 1
      112 JUMPIFNOTEQKNIL                  R10 ; [+16]
      114 LOADB                            R9 1
      115 LOADK                            R12 K30 ["^%s*%*%*%*+%s*$"]
      116 NAMECALL                         R10 R6 K12 ["match"]
      118 CALL                             R10 2 1
      119 JUMPIFNOTEQKNIL                  R10 ; [+9]
      121 LOADK                            R12 K31 ["^%s*___+%s*$"]
      122 NAMECALL                         R10 R6 K12 ["match"]
      124 CALL                             R10 2 1
      125 JUMPIFNOTEQKNIL                  R10 ; [+2]
      127 LOADB                            R9 0 +1
      128 LOADB                            R9 1
      129 JUMPIFNOT                        R9 ; [+25]
      130 GETTABLEKS                       R10 R2 K7 ["children"]
      132 DUPTABLE                         R11 K25 [{"name", "children", "attributes", "index"}]
      133 LOADK                            R12 K32 ["DIVIDER"]
      134 SETTABLEKS                       R12 R11 K6 ["name"]
      136 NEWTABLE                         R12 0 0
      138 SETTABLEKS                       R12 R11 K7 ["children"]
      140 NEWTABLE                         R12 0 0
      142 SETTABLEKS                       R12 R11 K23 ["attributes"]
      144 ADDK                             R4 R4 K13 [1]
      145 MOVE                             R12 R4
      146 SETTABLEKS                       R12 R11 K24 ["index"]
      148 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      150 GETIMPORT                        R9 K5 [table.insert]
      152 CALL                             R9 2 0
      153 ADDK                             R3 R3 K13 [1]
      154 JUMP                             ; [+674]
      155 LOADK                            R11 K33 ["^```(%w*)"]
      156 NAMECALL                         R9 R6 K12 ["match"]
      158 CALL                             R9 2 1
      159 JUMPIFEQKNIL                     R9 ; [+60]
      161 NEWTABLE                         R10 0 0
      163 ADDK                             R3 R3 K13 [1]
      164 LENGTH                           R11 R1
      165 JUMPIFNOTLE                      R3 R11 ; [+16]
      167 GETTABLE                         R11 R1 R3
      168 LOADK                            R13 K34 ["^```"]
      169 NAMECALL                         R11 R11 K12 ["match"]
      171 CALL                             R11 2 1
      172 JUMPIF                           R11 ; [+9]
      173 GETTABLE                         R13 R1 R3
      174 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      176 MOVE                             R12 R10
      177 GETIMPORT                        R11 K5 [table.insert]
      179 CALL                             R11 2 0
      180 ADDK                             R3 R3 K13 [1]
      181 JUMPBACK                         ; [-18]
      182 ADDK                             R3 R3 K13 [1]
      183 GETTABLEKS                       R12 R2 K7 ["children"]
      185 DUPTABLE                         R13 K36 [{"name", "children", "text", "attributes", "index"}]
      186 LOADK                            R14 K37 ["CODE_BLOCK"]
      187 SETTABLEKS                       R14 R13 K6 ["name"]
      189 NEWTABLE                         R14 0 0
      191 SETTABLEKS                       R14 R13 K7 ["children"]
      193 GETIMPORT                        R14 K39 [table.concat]
      195 MOVE                             R15 R10
      196 LOADK                            R16 K0 ["\n"]
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K35 ["text"]
      200 DUPTABLE                         R14 K41 [{"language"}]
      201 JUMPIFEQKS                       R9 K42 [""] ; [+3]
      203 MOVE                             R15 R9
      204 JUMP                             ; [+1]
      205 LOADNIL                          R15
      206 SETTABLEKS                       R15 R14 K40 ["language"]
      208 SETTABLEKS                       R14 R13 K23 ["attributes"]
      210 ADDK                             R4 R4 K13 [1]
      211 MOVE                             R14 R4
      212 SETTABLEKS                       R14 R13 K24 ["index"]
      214 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      216 GETIMPORT                        R11 K5 [table.insert]
      218 CALL                             R11 2 0
      219 JUMP                             ; [+609]
      220 GETUPVAL                         R10 1
      221 MOVE                             R11 R6
      222 CALL                             R10 1 1
      223 JUMPIFNOT                        R10 ; [+163]
      224 ADDK                             R11 R3 K13 [1]
      225 LENGTH                           R12 R1
      226 JUMPIFNOTLE                      R11 R12 ; [+160]
      228 GETUPVAL                         R11 1
      229 ADDK                             R13 R3 K13 [1]
      230 GETTABLE                         R12 R1 R13
      231 CALL                             R11 1 1
      232 JUMPIFNOT                        R11 ; [+154]
      233 MOVE                             R13 R11
      234 LOADNIL                          R14
      235 LOADNIL                          R15
      236 FORGPREP                         R13
      237 LOADK                            R20 K43 ["^:?%-+:?$"]
      238 NAMECALL                         R18 R17 K12 ["match"]
      240 CALL                             R18 2 1
      241 JUMPIF                           R18 ; [+2]
      242 LOADB                            R12 0
      243 JUMP                             ; [+3]
      244 FORGLOOP                         R13 2 ; [-8]
      246 LOADB                            R12 1
      247 JUMPIFNOT                        R12 ; [+139]
      248 DUPTABLE                         R12 K25 [{"name", "children", "attributes", "index"}]
      249 LOADK                            R13 K44 ["TABLE_HEADER"]
      250 SETTABLEKS                       R13 R12 K6 ["name"]
      252 NEWTABLE                         R13 0 0
      254 SETTABLEKS                       R13 R12 K7 ["children"]
      256 NEWTABLE                         R13 0 0
      258 SETTABLEKS                       R13 R12 K23 ["attributes"]
      260 ADDK                             R4 R4 K13 [1]
      261 MOVE                             R13 R4
      262 SETTABLEKS                       R13 R12 K24 ["index"]
      264 MOVE                             R13 R10
      265 LOADNIL                          R14
      266 LOADNIL                          R15
      267 FORGPREP                         R13
      268 GETTABLEKS                       R19 R12 K7 ["children"]
      270 DUPTABLE                         R20 K45 [{"name", "children", "text", "index"}]
      271 LOADK                            R21 K46 ["TABLE_CELL"]
      272 SETTABLEKS                       R21 R20 K6 ["name"]
      274 GETUPVAL                         R21 0
      275 MOVE                             R22 R17
      276 CALL                             R21 1 1
      277 SETTABLEKS                       R21 R20 K7 ["children"]
      279 SETTABLEKS                       R17 R20 K35 ["text"]
      281 ADDK                             R4 R4 K13 [1]
      282 MOVE                             R21 R4
      283 SETTABLEKS                       R21 R20 K24 ["index"]
      285 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      287 GETIMPORT                        R18 K5 [table.insert]
      289 CALL                             R18 2 0
      290 FORGLOOP                         R13 2 ; [-23]
      292 NEWTABLE                         R13 0 0
      294 ADDK                             R3 R3 K47 [2]
      295 LENGTH                           R14 R1
      296 JUMPIFNOTLE                      R3 R14 ; [+58]
      298 GETUPVAL                         R14 1
      299 GETTABLE                         R15 R1 R3
      300 CALL                             R14 1 1
      301 JUMPIFNOT                        R14 ; [+53]
      302 DUPTABLE                         R15 K25 [{"name", "children", "attributes", "index"}]
      303 LOADK                            R16 K48 ["TABLE_ROW"]
      304 SETTABLEKS                       R16 R15 K6 ["name"]
      306 NEWTABLE                         R16 0 0
      308 SETTABLEKS                       R16 R15 K7 ["children"]
      310 NEWTABLE                         R16 0 0
      312 SETTABLEKS                       R16 R15 K23 ["attributes"]
      314 ADDK                             R4 R4 K13 [1]
      315 MOVE                             R16 R4
      316 SETTABLEKS                       R16 R15 K24 ["index"]
      318 MOVE                             R16 R14
      319 LOADNIL                          R17
      320 LOADNIL                          R18
      321 FORGPREP                         R16
      322 GETTABLEKS                       R22 R15 K7 ["children"]
      324 DUPTABLE                         R23 K45 [{"name", "children", "text", "index"}]
      325 LOADK                            R24 K46 ["TABLE_CELL"]
      326 SETTABLEKS                       R24 R23 K6 ["name"]
      328 GETUPVAL                         R24 0
      329 MOVE                             R25 R20
      330 CALL                             R24 1 1
      331 SETTABLEKS                       R24 R23 K7 ["children"]
      333 SETTABLEKS                       R20 R23 K35 ["text"]
      335 ADDK                             R4 R4 K13 [1]
      336 MOVE                             R24 R4
      337 SETTABLEKS                       R24 R23 K24 ["index"]
      339 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      341 GETIMPORT                        R21 K5 [table.insert]
      343 CALL                             R21 2 0
      344 FORGLOOP                         R16 2 ; [-23]
      346 FASTCALL2                        TABLE_INSERT R13 R15 ; [+5]
      348 MOVE                             R17 R13
      349 MOVE                             R18 R15
      350 GETIMPORT                        R16 K5 [table.insert]
      352 CALL                             R16 2 0
      353 ADDK                             R3 R3 K13 [1]
      354 JUMPBACK                         ; [-60]
      355 GETTABLEKS                       R15 R2 K7 ["children"]
      357 DUPTABLE                         R16 K25 [{"name", "children", "attributes", "index"}]
      358 LOADK                            R17 K49 ["TABLE"]
      359 SETTABLEKS                       R17 R16 K6 ["name"]
      361 NEWTABLE                         R17 0 2
      363 MOVE                             R18 R12
      364 FASTCALL1                        TABLE_UNPACK R13 ; [+3]
      365 MOVE                             R20 R13
      366 GETIMPORT                        R19 K51 [unpack]
      368 CALL                             R19 1 -1
      369 SETLIST                          R17 R18 -1 [1]
      371 SETTABLEKS                       R17 R16 K7 ["children"]
      373 NEWTABLE                         R17 0 0
      375 SETTABLEKS                       R17 R16 K23 ["attributes"]
      377 ADDK                             R4 R4 K13 [1]
      378 MOVE                             R17 R4
      379 SETTABLEKS                       R17 R16 K24 ["index"]
      381 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      383 GETIMPORT                        R14 K5 [table.insert]
      385 CALL                             R14 2 0
      386 JUMP                             ; [+442]
      387 LOADK                            R13 K52 ["^>%s?(.*)"]
      388 NAMECALL                         R11 R6 K12 ["match"]
      390 CALL                             R11 2 1
      391 JUMPIFNOT                        R11 ; [+76]
      392 NEWTABLE                         R12 0 1
      394 MOVE                             R13 R11
      395 SETLIST                          R12 R13 1 [1]
      397 ADDK                             R3 R3 K13 [1]
      398 LENGTH                           R13 R1
      399 JUMPIFNOTLE                      R3 R13 ; [+38]
      401 GETTABLE                         R14 R1 R3
      402 LOADK                            R17 K52 ["^>%s?(.*)"]
      403 NAMECALL                         R15 R14 K12 ["match"]
      405 CALL                             R15 2 1
      406 MOVE                             R13 R15
      407 JUMPIFNOT                        R13 ; [+9]
      408 FASTCALL2                        TABLE_INSERT R12 R13 ; [+5]
      410 MOVE                             R15 R12
      411 MOVE                             R16 R13
      412 GETIMPORT                        R14 K5 [table.insert]
      414 CALL                             R14 2 0
      415 ADDK                             R3 R3 K13 [1]
      416 JUMP                             ; [+20]
      417 GETTABLE                         R15 R1 R3
      418 LOADK                            R18 K11 ["^%s*$"]
      419 NAMECALL                         R16 R15 K12 ["match"]
      421 CALL                             R16 2 1
      422 JUMPIFNOTEQKNIL                  R16 ; [+2]
      424 LOADB                            R14 0 +1
      425 LOADB                            R14 1
      426 JUMPIF                           R14 ; [+11]
      427 GETTABLE                         R16 R1 R3
      428 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      430 MOVE                             R15 R12
      431 GETIMPORT                        R14 K5 [table.insert]
      433 CALL                             R14 2 0
      434 ADDK                             R3 R3 K13 [1]
      435 JUMP                             ; [+1]
      436 JUMP                             ; [+1]
      437 JUMPBACK                         ; [-40]
      438 GETIMPORT                        R13 K39 [table.concat]
      440 MOVE                             R14 R12
      441 LOADK                            R15 K0 ["\n"]
      442 CALL                             R13 2 1
      443 GETTABLEKS                       R15 R2 K7 ["children"]
      445 DUPTABLE                         R16 K25 [{"name", "children", "attributes", "index"}]
      446 LOADK                            R17 K53 ["QUOTE"]
      447 SETTABLEKS                       R17 R16 K6 ["name"]
      449 GETUPVAL                         R17 0
      450 MOVE                             R18 R13
      451 CALL                             R17 1 1
      452 SETTABLEKS                       R17 R16 K7 ["children"]
      454 NEWTABLE                         R17 0 0
      456 SETTABLEKS                       R17 R16 K23 ["attributes"]
      458 ADDK                             R4 R4 K13 [1]
      459 MOVE                             R17 R4
      460 SETTABLEKS                       R17 R16 K24 ["index"]
      462 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      464 GETIMPORT                        R14 K5 [table.insert]
      466 CALL                             R14 2 0
      467 JUMP                             ; [+361]
      468 LOADK                            R16 K54 ["^%s*([%*%-])%s+(.*)"]
      469 NAMECALL                         R14 R6 K12 ["match"]
      471 CALL                             R14 2 2
      472 JUMPIFNOT                        R14 ; [+3]
      473 MOVE                             R12 R14
      474 MOVE                             R13 R15
      475 JUMP                             ; [+2]
      476 LOADNIL                          R12
      477 LOADNIL                          R13
      478 LOADK                            R18 K55 ["^%s*(%d+)[%.%)]%s+(.*)"]
      479 NAMECALL                         R16 R6 K12 ["match"]
      481 CALL                             R16 2 2
      482 JUMPIFNOT                        R16 ; [+3]
      483 MOVE                             R14 R16
      484 MOVE                             R15 R17
      485 JUMP                             ; [+2]
      486 LOADNIL                          R14
      487 LOADNIL                          R15
      488 JUMPIF                           R12 ; [+1]
      489 JUMPIFNOT                        R14 ; [+145]
      490 NEWTABLE                         R16 0 0
      492 JUMPIFNOTEQKNIL                  R14 ; [+2]
      494 LOADB                            R17 0 +1
      495 LOADB                            R17 1
      496 LENGTH                           R18 R1
      497 JUMPIFNOTLE                      R3 R18 ; [+114]
      499 GETTABLE                         R20 R1 R3
      500 LOADK                            R23 K54 ["^%s*([%*%-])%s+(.*)"]
      501 NAMECALL                         R21 R20 K12 ["match"]
      503 CALL                             R21 2 2
      504 JUMPIFNOT                        R21 ; [+3]
      505 MOVE                             R18 R21
      506 MOVE                             R19 R22
      507 JUMP                             ; [+2]
      508 LOADNIL                          R18
      509 LOADNIL                          R19
      510 GETTABLE                         R22 R1 R3
      511 LOADK                            R25 K55 ["^%s*(%d+)[%.%)]%s+(.*)"]
      512 NAMECALL                         R23 R22 K12 ["match"]
      514 CALL                             R23 2 2
      515 JUMPIFNOT                        R23 ; [+3]
      516 MOVE                             R20 R23
      517 MOVE                             R21 R24
      518 JUMP                             ; [+2]
      519 LOADNIL                          R20
      520 LOADNIL                          R21
      521 JUMPIF                           R17 ; [+1]
      522 JUMPIF                           R18 ; [+2]
      523 JUMPIFNOT                        R17 ; [+88]
      524 JUMPIFNOT                        R20 ; [+87]
      525 JUMPIFNOT                        R17 ; [+2]
      526 MOVE                             R22 R21
      527 JUMP                             ; [+1]
      528 MOVE                             R22 R19
      529 JUMPIFNOT                        R17 ; [+4]
      530 MOVE                             R24 R20
      531 LOADK                            R25 K56 ["."]
      532 CONCAT                           R23 R24 R25
      533 JUMP                             ; [+1]
      534 MOVE                             R23 R18
      535 GETTABLE                         R26 R1 R3
      536 LOADK                            R29 K57 ["^%s*[%*%-]%s+%[([ xX])%]%s+(.*)"]
      537 NAMECALL                         R27 R26 K12 ["match"]
      539 CALL                             R27 2 2
      540 JUMPIFNOT                        R27 ; [+9]
      541 NAMECALL                         R29 R27 K58 ["lower"]
      543 CALL                             R29 1 1
      544 JUMPIFEQKS                       R29 K59 ["x"] ; [+2]
      546 LOADB                            R24 0 +1
      547 LOADB                            R24 1
      548 MOVE                             R25 R28
      549 JUMP                             ; [+2]
      550 LOADNIL                          R24
      551 LOADNIL                          R25
      552 JUMPIFEQKNIL                     R24 ; [+31]
      554 DUPTABLE                         R28 K25 [{"name", "children", "attributes", "index"}]
      555 LOADK                            R29 K60 ["LIST_ITEM"]
      556 SETTABLEKS                       R29 R28 K6 ["name"]
      558 GETUPVAL                         R29 0
      559 MOVE                             R30 R25
      560 CALL                             R29 1 1
      561 SETTABLEKS                       R29 R28 K7 ["children"]
      563 DUPTABLE                         R29 K64 [{"prefix", "checkbox", "checked"}]
      564 SETTABLEKS                       R23 R29 K61 ["prefix"]
      566 LOADB                            R30 1
      567 SETTABLEKS                       R30 R29 K62 ["checkbox"]
      569 SETTABLEKS                       R24 R29 K63 ["checked"]
      571 SETTABLEKS                       R29 R28 K23 ["attributes"]
      573 ADDK                             R4 R4 K13 [1]
      574 MOVE                             R29 R4
      575 SETTABLEKS                       R29 R28 K24 ["index"]
      577 FASTCALL2                        TABLE_INSERT R16 R28 ; [+4]
      579 MOVE                             R27 R16
      580 GETIMPORT                        R26 K5 [table.insert]
      582 CALL                             R26 2 0
      583 JUMP                             ; [+24]
      584 DUPTABLE                         R28 K25 [{"name", "children", "attributes", "index"}]
      585 LOADK                            R29 K60 ["LIST_ITEM"]
      586 SETTABLEKS                       R29 R28 K6 ["name"]
      588 GETUPVAL                         R29 0
      589 MOVE                             R30 R22
      590 CALL                             R29 1 1
      591 SETTABLEKS                       R29 R28 K7 ["children"]
      593 DUPTABLE                         R29 K65 [{"prefix"}]
      594 SETTABLEKS                       R23 R29 K61 ["prefix"]
      596 SETTABLEKS                       R29 R28 K23 ["attributes"]
      598 ADDK                             R4 R4 K13 [1]
      599 MOVE                             R29 R4
      600 SETTABLEKS                       R29 R28 K24 ["index"]
      602 FASTCALL2                        TABLE_INSERT R16 R28 ; [+4]
      604 MOVE                             R27 R16
      605 GETIMPORT                        R26 K5 [table.insert]
      607 CALL                             R26 2 0
      608 ADDK                             R3 R3 K13 [1]
      609 JUMP                             ; [+1]
      610 JUMP                             ; [+1]
      611 JUMPBACK                         ; [-116]
      612 GETTABLEKS                       R19 R2 K7 ["children"]
      614 DUPTABLE                         R20 K25 [{"name", "children", "attributes", "index"}]
      615 LOADK                            R21 K66 ["LIST"]
      616 SETTABLEKS                       R21 R20 K6 ["name"]
      618 SETTABLEKS                       R16 R20 K7 ["children"]
      620 DUPTABLE                         R21 K68 [{"ordered"}]
      621 SETTABLEKS                       R17 R21 K67 ["ordered"]
      623 SETTABLEKS                       R21 R20 K23 ["attributes"]
      625 ADDK                             R4 R4 K13 [1]
      626 MOVE                             R21 R4
      627 SETTABLEKS                       R21 R20 K24 ["index"]
      629 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      631 GETIMPORT                        R18 K5 [table.insert]
      633 CALL                             R18 2 0
      634 JUMP                             ; [+194]
      635 LOADK                            R18 K69 ["^%s*<([A-Za-z][%w%-]*)"]
      636 NAMECALL                         R16 R6 K12 ["match"]
      638 CALL                             R16 2 1
      639 JUMPIFNOT                        R16 ; [+16]
      640 GETUPVAL                         R17 2
      641 MOVE                             R18 R1
      642 MOVE                             R19 R3
      643 MOVE                             R20 R5
      644 CALL                             R17 3 2
      645 JUMPIFNOT                        R17 ; [+10]
      646 GETTABLEKS                       R20 R2 K7 ["children"]
      648 FASTCALL2                        TABLE_INSERT R20 R17 ; [+4]
      650 MOVE                             R21 R17
      651 GETIMPORT                        R19 K5 [table.insert]
      653 CALL                             R19 2 0
      654 ADDK                             R3 R18 K13 [1]
      655 JUMP                             ; [+173]
      656 NEWTABLE                         R17 0 1
      658 MOVE                             R18 R6
      659 SETLIST                          R17 R18 1 [1]
      661 ADDK                             R3 R3 K13 [1]
      662 LENGTH                           R18 R1
      663 JUMPIFNOTLE                      R3 R18 ; [+136]
      665 GETTABLE                         R18 R1 R3
      666 LOADK                            R22 K11 ["^%s*$"]
      667 NAMECALL                         R20 R18 K12 ["match"]
      669 CALL                             R20 2 1
      670 JUMPIFNOTEQKNIL                  R20 ; [+2]
      672 LOADB                            R19 0 +1
      673 LOADB                            R19 1
      674 JUMPIF                           R19 ; [+125]
      675 LOADK                            R22 K14 ["^(#+)%s+(.*)"]
      676 NAMECALL                         R20 R18 K12 ["match"]
      678 CALL                             R20 2 2
      679 JUMPIFNOT                        R20 ; [+21]
      680 LENGTH                           R23 R20
      681 FASTCALL2K                       MATH_MIN R23 K15 ; [+4]
      683 LOADK                            R24 K15 [6]
      684 GETIMPORT                        R22 K18 [math.min]
      686 CALL                             R22 2 1
      687 MOVE                             R19 R22
      688 LOADK                            R25 K19 ["^%s*(.-)%s*$"]
      689 NAMECALL                         R23 R21 K12 ["match"]
      691 CALL                             R23 2 1
      692 FASTCALL2K                       ASSERT R23 K20 ; [+5]
      694 MOVE                             R25 R23
      695 LOADK                            R26 K20 ["trim match failed"]
      696 GETIMPORT                        R24 K22 [assert]
      698 CALL                             R24 2 0
      699 MOVE                             R22 R23
      700 JUMP                             ; [+1]
      701 LOADNIL                          R19
      702 JUMPIF                           R19 ; [+97]
      703 LOADB                            R19 1
      704 LOADK                            R22 K29 ["^%s*%-%-%-+%s*$"]
      705 NAMECALL                         R20 R18 K12 ["match"]
      707 CALL                             R20 2 1
      708 JUMPIFNOTEQKNIL                  R20 ; [+16]
      710 LOADB                            R19 1
      711 LOADK                            R22 K30 ["^%s*%*%*%*+%s*$"]
      712 NAMECALL                         R20 R18 K12 ["match"]
      714 CALL                             R20 2 1
      715 JUMPIFNOTEQKNIL                  R20 ; [+9]
      717 LOADK                            R22 K31 ["^%s*___+%s*$"]
      718 NAMECALL                         R20 R18 K12 ["match"]
      720 CALL                             R20 2 1
      721 JUMPIFNOTEQKNIL                  R20 ; [+2]
      723 LOADB                            R19 0 +1
      724 LOADB                            R19 1
      725 JUMPIF                           R19 ; [+74]
      726 LOADK                            R21 K33 ["^```(%w*)"]
      727 NAMECALL                         R19 R18 K12 ["match"]
      729 CALL                             R19 2 1
      730 JUMPIF                           R19 ; [+69]
      731 LOADK                            R22 K54 ["^%s*([%*%-])%s+(.*)"]
      732 NAMECALL                         R20 R18 K12 ["match"]
      734 CALL                             R20 2 2
      735 JUMPIFNOT                        R20 ; [+2]
      736 MOVE                             R19 R20
      737 JUMP                             ; [+1]
      738 LOADNIL                          R19
      739 JUMPIF                           R19 ; [+60]
      740 LOADK                            R22 K55 ["^%s*(%d+)[%.%)]%s+(.*)"]
      741 NAMECALL                         R20 R18 K12 ["match"]
      743 CALL                             R20 2 2
      744 JUMPIFNOT                        R20 ; [+2]
      745 MOVE                             R19 R20
      746 JUMP                             ; [+1]
      747 LOADNIL                          R19
      748 JUMPIF                           R19 ; [+51]
      749 LOADK                            R21 K52 ["^>%s?(.*)"]
      750 NAMECALL                         R19 R18 K12 ["match"]
      752 CALL                             R19 2 1
      753 JUMPIF                           R19 ; [+46]
      754 LOADK                            R21 K69 ["^%s*<([A-Za-z][%w%-]*)"]
      755 NAMECALL                         R19 R18 K12 ["match"]
      757 CALL                             R19 2 1
      758 JUMPIF                           R19 ; [+41]
      759 GETUPVAL                         R19 1
      760 MOVE                             R20 R18
      761 CALL                             R19 1 1
      762 JUMPIFNOT                        R19 ; [+28]
      763 ADDK                             R19 R3 K13 [1]
      764 LENGTH                           R20 R1
      765 JUMPIFNOTLE                      R19 R20 ; [+25]
      767 GETUPVAL                         R19 1
      768 ADDK                             R21 R3 K13 [1]
      769 GETTABLE                         R20 R1 R21
      770 CALL                             R19 1 1
      771 JUMPIFNOT                        R19 ; [+19]
      772 GETUPVAL                         R20 1
      773 ADDK                             R22 R3 K13 [1]
      774 GETTABLE                         R21 R1 R22
      775 CALL                             R20 1 1
      776 MOVE                             R21 R20
      777 LOADNIL                          R22
      778 LOADNIL                          R23
      779 FORGPREP                         R21
      780 LOADK                            R28 K43 ["^:?%-+:?$"]
      781 NAMECALL                         R26 R25 K12 ["match"]
      783 CALL                             R26 2 1
      784 JUMPIF                           R26 ; [+2]
      785 LOADB                            R19 0
      786 JUMP                             ; [+3]
      787 FORGLOOP                         R21 2 ; [-8]
      789 LOADB                            R19 1
      790 JUMPIF                           R19 ; [+9]
      791 FASTCALL2                        TABLE_INSERT R17 R18 ; [+5]
      793 MOVE                             R20 R17
      794 MOVE                             R21 R18
      795 GETIMPORT                        R19 K5 [table.insert]
      797 CALL                             R19 2 0
      798 ADDK                             R3 R3 K13 [1]
      799 JUMPBACK                         ; [-138]
      800 GETIMPORT                        R18 K39 [table.concat]
      802 MOVE                             R19 R17
      803 LOADK                            R20 K70 [" "]
      804 CALL                             R18 2 1
      805 GETTABLEKS                       R20 R2 K7 ["children"]
      807 DUPTABLE                         R21 K25 [{"name", "children", "attributes", "index"}]
      808 LOADK                            R22 K71 ["PARAGRAPH"]
      809 SETTABLEKS                       R22 R21 K6 ["name"]
      811 GETUPVAL                         R22 0
      812 MOVE                             R23 R18
      813 CALL                             R22 1 1
      814 SETTABLEKS                       R22 R21 K7 ["children"]
      816 NEWTABLE                         R22 0 0
      818 SETTABLEKS                       R22 R21 K23 ["attributes"]
      820 ADDK                             R4 R4 K13 [1]
      821 MOVE                             R22 R4
      822 SETTABLEKS                       R22 R21 K24 ["index"]
      824 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      826 GETIMPORT                        R19 K5 [table.insert]
      828 CALL                             R19 2 0
      829 JUMPBACK                         ; [-795]
      830 ADDK                             R4 R4 K13 [1]
      831 MOVE                             R6 R4
      832 SETTABLEKS                       R6 R2 K24 ["index"]
      834 CLOSEUPVALS                      R4
      835 RETURN                           R2 1

PROTO_20:
        0 GETIMPORT                        R1 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["parse"]
        5 MOVE                             R3 R0
        6 CALL                             R1 2 2
        7 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 DUPCLOSURE                       R3 K2 [PROTO_3]
        6 CAPTURE                          VAL R3
        7 DUPCLOSURE                       R4 K3 [PROTO_4]
        8 DUPCLOSURE                       R5 K4 [PROTO_5]
        9 DUPCLOSURE                       R6 K5 [PROTO_6]
       10 DUPCLOSURE                       R7 K6 [PROTO_7]
       11 DUPCLOSURE                       R8 K7 [PROTO_8]
       12 DUPCLOSURE                       R9 K8 [PROTO_9]
       13 DUPCLOSURE                       R10 K9 [PROTO_10]
       14 DUPCLOSURE                       R11 K10 [PROTO_11]
       15 DUPCLOSURE                       R12 K11 [PROTO_12]
       16 DUPCLOSURE                       R13 K12 [PROTO_13]
       17 DUPCLOSURE                       R14 K13 [PROTO_14]
       18 DUPCLOSURE                       R15 K14 [PROTO_15]
       19 DUPCLOSURE                       R16 K15 [PROTO_16]
       20 LOADNIL                          R17
       21 NEWCLOSURE                       R17 P16
       22 CAPTURE                          VAL R16
       23 CAPTURE                          REF R17
       24 NEWCLOSURE                       R18 P17
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R12
       27 CAPTURE                          REF R17
       28 SETTABLEKS                       R18 R0 K16 ["parse"]
       30 DUPCLOSURE                       R18 K17 [PROTO_20]
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R18 R0 K18 ["safeParse"]
       34 CLOSEUPVALS                      R17
       35 RETURN                           R0 1
