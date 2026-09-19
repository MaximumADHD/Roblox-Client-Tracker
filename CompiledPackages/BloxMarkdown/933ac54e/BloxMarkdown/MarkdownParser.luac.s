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
        2 JUMPIFNOTLT                      R2 R1 ; [+14]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K4 [{[1] = "TEXT", ["children"], ["text"]}]
        6 NEWTABLE                         R4 0 0
        8 SETTABLEKS                       R4 R3 K2 ["children"]
       10 SETTABLEKS                       R0 R3 K3 ["text"]
       12 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       14 GETIMPORT                        R1 K7 [table.insert]
       16 CALL                             R1 2 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 JUMPIFNOTLE                      R2 R3 ; [+345]
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
       26 JUMP                             ; [+324]
       27 MOVE                             R7 R2
       28 MOVE                             R8 R2
       29 NAMECALL                         R5 R0 K0 ["sub"]
       31 CALL                             R5 3 1
       32 JUMPIFNOTEQKS                    R5 K4 ["!"] ; [+61]
       34 ADDK                             R7 R2 K2 [1]
       35 ADDK                             R8 R2 K2 [1]
       36 NAMECALL                         R5 R0 K0 ["sub"]
       38 CALL                             R5 3 1
       39 JUMPIFNOTEQKS                    R5 K5 ["["] ; [+54]
       41 LOADK                            R7 K6 ["]"]
       42 ADDK                             R8 R2 K3 [2]
       43 LOADB                            R9 1
       44 NAMECALL                         R5 R0 K7 ["find"]
       46 CALL                             R5 4 1
       47 JUMPIFNOT                        R5 ; [+46]
       48 LOADK                            R8 K8 ["("]
       49 ADDK                             R9 R5 K2 [1]
       50 LOADB                            R10 1
       51 NAMECALL                         R6 R0 K7 ["find"]
       53 CALL                             R6 4 1
       54 ADDK                             R7 R5 K2 [1]
       55 JUMPIFNOTEQ                      R6 R7 ; [+38]
       57 LOADK                            R9 K9 [")"]
       58 ADDK                             R10 R6 K2 [1]
       59 LOADB                            R11 1
       60 NAMECALL                         R7 R0 K7 ["find"]
       62 CALL                             R7 4 1
       63 JUMPIFNOT                        R7 ; [+30]
       64 ADDK                             R10 R2 K3 [2]
       65 SUBK                             R11 R5 K2 [1]
       66 NAMECALL                         R8 R0 K0 ["sub"]
       68 CALL                             R8 3 1
       69 ADDK                             R11 R6 K2 [1]
       70 SUBK                             R12 R7 K2 [1]
       71 NAMECALL                         R9 R0 K0 ["sub"]
       73 CALL                             R9 3 1
       74 DUPTABLE                         R12 K15 [{["name"] = "IMAGE", ["children"], ["text"], ["attributes"]}]
       75 NEWTABLE                         R13 0 0
       77 SETTABLEKS                       R13 R12 K12 ["children"]
       79 SETTABLEKS                       R8 R12 K13 ["text"]
       81 DUPTABLE                         R13 K17 [{"url"}]
       82 SETTABLEKS                       R9 R13 K16 ["url"]
       84 SETTABLEKS                       R13 R12 K14 ["attributes"]
       86 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       88 MOVE                             R11 R1
       89 GETIMPORT                        R10 K20 [table.insert]
       91 CALL                             R10 2 0
       92 ADDK                             R2 R7 K2 [1]
       93 JUMP                             ; [+257]
       94 MOVE                             R7 R2
       95 MOVE                             R8 R2
       96 NAMECALL                         R5 R0 K0 ["sub"]
       98 CALL                             R5 3 1
       99 JUMPIFNOTEQKS                    R5 K5 ["["] ; [+55]
      101 LOADK                            R7 K6 ["]"]
      102 ADDK                             R8 R2 K2 [1]
      103 LOADB                            R9 1
      104 NAMECALL                         R5 R0 K7 ["find"]
      106 CALL                             R5 4 1
      107 JUMPIFNOT                        R5 ; [+47]
      108 LOADK                            R8 K8 ["("]
      109 ADDK                             R9 R5 K2 [1]
      110 LOADB                            R10 1
      111 NAMECALL                         R6 R0 K7 ["find"]
      113 CALL                             R6 4 1
      114 ADDK                             R7 R5 K2 [1]
      115 JUMPIFNOTEQ                      R6 R7 ; [+39]
      117 LOADK                            R9 K9 [")"]
      118 ADDK                             R10 R6 K2 [1]
      119 LOADB                            R11 1
      120 NAMECALL                         R7 R0 K7 ["find"]
      122 CALL                             R7 4 1
      123 JUMPIFNOT                        R7 ; [+31]
      124 ADDK                             R10 R2 K2 [1]
      125 SUBK                             R11 R5 K2 [1]
      126 NAMECALL                         R8 R0 K0 ["sub"]
      128 CALL                             R8 3 1
      129 ADDK                             R11 R6 K2 [1]
      130 SUBK                             R12 R7 K2 [1]
      131 NAMECALL                         R9 R0 K0 ["sub"]
      133 CALL                             R9 3 1
      134 DUPTABLE                         R12 K22 [{["name"] = "LINK", ["children"], ["text"], ["attributes"]}]
      135 GETUPVAL                         R13 0
      136 MOVE                             R14 R8
      137 CALL                             R13 1 1
      138 SETTABLEKS                       R13 R12 K12 ["children"]
      140 SETTABLEKS                       R8 R12 K13 ["text"]
      142 DUPTABLE                         R13 K17 [{"url"}]
      143 SETTABLEKS                       R9 R13 K16 ["url"]
      145 SETTABLEKS                       R13 R12 K14 ["attributes"]
      147 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
      149 MOVE                             R11 R1
      150 GETIMPORT                        R10 K20 [table.insert]
      152 CALL                             R10 2 0
      153 ADDK                             R2 R7 K2 [1]
      154 JUMP                             ; [+196]
      155 MOVE                             R7 R2
      156 MOVE                             R8 R2
      157 NAMECALL                         R5 R0 K0 ["sub"]
      159 CALL                             R5 3 1
      160 JUMPIFNOTEQKS                    R5 K23 ["`"] ; [+38]
      162 LOADK                            R7 K23 ["`"]
      163 ADDK                             R8 R2 K2 [1]
      164 LOADB                            R9 1
      165 NAMECALL                         R5 R0 K7 ["find"]
      167 CALL                             R5 4 1
      168 JUMPIFNOT                        R5 ; [+30]
      169 ADDK                             R8 R2 K2 [1]
      170 SUBK                             R9 R5 K2 [1]
      171 NAMECALL                         R6 R0 K0 ["sub"]
      173 CALL                             R6 3 1
      174 DUPTABLE                         R9 K25 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      175 NEWTABLE                         R10 0 1
      177 DUPTABLE                         R11 K27 [{["name"] = "TEXT", ["children"], ["text"]}]
      178 NEWTABLE                         R12 0 0
      180 SETTABLEKS                       R12 R11 K12 ["children"]
      182 SETTABLEKS                       R6 R11 K13 ["text"]
      184 SETLIST                          R10 R11 1 [1]
      186 SETTABLEKS                       R10 R9 K12 ["children"]
      188 DUPTABLE                         R10 K30 [{["style"] = "INLINE_CODE"}]
      189 SETTABLEKS                       R10 R9 K14 ["attributes"]
      191 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      193 MOVE                             R8 R1
      194 GETIMPORT                        R7 K20 [table.insert]
      196 CALL                             R7 2 0
      197 ADDK                             R2 R5 K2 [1]
      198 JUMP                             ; [+152]
      199 LOADK                            R7 K31 ["^%*%*(.-)%*%*"]
      200 MOVE                             R8 R2
      201 NAMECALL                         R5 R0 K32 ["match"]
      203 CALL                             R5 3 1
      204 JUMPIF                           R5 ; [+5]
      205 LOADK                            R7 K33 ["^__(.-)__"]
      206 MOVE                             R8 R2
      207 NAMECALL                         R5 R0 K32 ["match"]
      209 CALL                             R5 3 1
      210 JUMPIFNOT                        R5 ; [+31]
      211 MOVE                             R9 R2
      212 MOVE                             R10 R2
      213 NAMECALL                         R7 R0 K0 ["sub"]
      215 CALL                             R7 3 1
      216 JUMPIFNOTEQKS                    R7 K34 ["*"] ; [+3]
      218 LOADK                            R6 K35 ["**"]
      219 JUMP                             ; [+1]
      220 LOADK                            R6 K36 ["__"]
      221 DUPTABLE                         R9 K25 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      222 GETUPVAL                         R10 0
      223 MOVE                             R11 R5
      224 CALL                             R10 1 1
      225 SETTABLEKS                       R10 R9 K12 ["children"]
      227 DUPTABLE                         R10 K38 [{["style"] = "BOLD"}]
      228 SETTABLEKS                       R10 R9 K14 ["attributes"]
      230 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      232 MOVE                             R8 R1
      233 GETIMPORT                        R7 K20 [table.insert]
      235 CALL                             R7 2 0
      236 LENGTH                           R8 R5
      237 LENGTH                           R10 R6
      238 MULK                             R9 R10 K3 [2]
      239 ADD                              R7 R8 R9
      240 ADD                              R2 R2 R7
      241 JUMP                             ; [+109]
      242 LOADK                            R8 K39 ["^~~(.-)~~"]
      243 MOVE                             R9 R2
      244 NAMECALL                         R6 R0 K32 ["match"]
      246 CALL                             R6 3 1
      247 JUMPIFNOT                        R6 ; [+19]
      248 DUPTABLE                         R9 K25 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      249 GETUPVAL                         R10 0
      250 MOVE                             R11 R6
      251 CALL                             R10 1 1
      252 SETTABLEKS                       R10 R9 K12 ["children"]
      254 DUPTABLE                         R10 K41 [{["style"] = "STRIKE"}]
      255 SETTABLEKS                       R10 R9 K14 ["attributes"]
      257 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      259 MOVE                             R8 R1
      260 GETIMPORT                        R7 K20 [table.insert]
      262 CALL                             R7 2 0
      263 LENGTH                           R8 R6
      264 ADDK                             R7 R8 K42 [4]
      265 ADD                              R2 R2 R7
      266 JUMP                             ; [+84]
      267 LOADK                            R9 K43 ["^%*(.-)%*"]
      268 MOVE                             R10 R2
      269 NAMECALL                         R7 R0 K32 ["match"]
      271 CALL                             R7 3 1
      272 JUMPIF                           R7 ; [+5]
      273 LOADK                            R9 K44 ["^_(.-)_"]
      274 MOVE                             R10 R2
      275 NAMECALL                         R7 R0 K32 ["match"]
      277 CALL                             R7 3 1
      278 JUMPIFNOT                        R7 ; [+31]
      279 MOVE                             R11 R2
      280 MOVE                             R12 R2
      281 NAMECALL                         R9 R0 K0 ["sub"]
      283 CALL                             R9 3 1
      284 JUMPIFNOTEQKS                    R9 K34 ["*"] ; [+3]
      286 LOADK                            R8 K34 ["*"]
      287 JUMP                             ; [+1]
      288 LOADK                            R8 K45 ["_"]
      289 DUPTABLE                         R11 K25 [{["name"] = "STYLED_TEXT", ["children"], ["attributes"]}]
      290 GETUPVAL                         R12 0
      291 MOVE                             R13 R7
      292 CALL                             R12 1 1
      293 SETTABLEKS                       R12 R11 K12 ["children"]
      295 DUPTABLE                         R12 K47 [{["style"] = "ITALIC"}]
      296 SETTABLEKS                       R12 R11 K14 ["attributes"]
      298 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      300 MOVE                             R10 R1
      301 GETIMPORT                        R9 K20 [table.insert]
      303 CALL                             R9 2 0
      304 LENGTH                           R10 R7
      305 LENGTH                           R12 R8
      306 MULK                             R11 R12 K3 [2]
      307 ADD                              R9 R10 R11
      308 ADD                              R2 R2 R9
      309 JUMP                             ; [+41]
      310 LOADK                            R10 K48 ["^<br%s*/?>"]
      311 MOVE                             R11 R2
      312 NAMECALL                         R8 R0 K32 ["match"]
      314 CALL                             R8 3 1
      315 JUMPIFNOT                        R8 ; [+14]
      316 DUPTABLE                         R11 K50 [{["name"] = "BREAK", ["children"]}]
      317 NEWTABLE                         R12 0 0
      319 SETTABLEKS                       R12 R11 K12 ["children"]
      321 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
      323 MOVE                             R10 R1
      324 GETIMPORT                        R9 K20 [table.insert]
      326 CALL                             R9 2 0
      327 LENGTH                           R9 R8
      328 ADD                              R2 R2 R9
      329 JUMP                             ; [+21]
      330 LOADK                            R11 K51 ["[\\!%[`%*_~<]"]
      331 ADDK                             R12 R2 K2 [1]
      332 NAMECALL                         R9 R0 K7 ["find"]
      334 CALL                             R9 3 1
      335 JUMPIFNOT                        R9 ; [+6]
      336 MOVE                             R12 R2
      337 SUBK                             R13 R9 K2 [1]
      338 NAMECALL                         R10 R0 K0 ["sub"]
      340 CALL                             R10 3 1
      341 JUMP                             ; [+4]
      342 MOVE                             R12 R2
      343 NAMECALL                         R10 R0 K0 ["sub"]
      345 CALL                             R10 2 1
      346 MOVE                             R11 R4
      347 MOVE                             R12 R10
      348 CALL                             R11 1 0
      349 LENGTH                           R11 R10
      350 ADD                              R2 R2 R11
      351 JUMPBACK                         ; [-346]
      352 RETURN                           R1 1

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
        4 JUMPIFNOTLE                      R2 R3 ; [+194]
        6 MOVE                             R6 R2
        7 NAMECALL                         R4 R0 K0 ["sub"]
        9 CALL                             R4 2 1
       10 LOADK                            R6 K1 ["^(%s+)"]
       11 NAMECALL                         R4 R4 K2 ["match"]
       13 CALL                             R4 2 1
       14 JUMPIFNOT                        R4 ; [+2]
       15 LENGTH                           R5 R4
       16 ADD                              R2 R2 R5
       17 JUMPIFLT                         R3 R2 ; [+181]
       19 MOVE                             R7 R2
       20 NAMECALL                         R5 R0 K0 ["sub"]
       22 CALL                             R5 2 1
       23 LOADK                            R7 K3 ["^([%w_]+)"]
       24 NAMECALL                         R5 R5 K2 ["match"]
       26 CALL                             R5 2 1
       27 JUMPIFNOT                        R5 ; [+171]
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
       53 JUMP                             ; [+144]
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
       67 JUMPIFLT                         R3 R2 ; [+131]
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
       82 JUMPIFNOT                        R7 ; [+116]
       83 ADDK                             R10 R2 K5 [1]
       84 SUBK                             R11 R7 K5 [1]
       85 NAMECALL                         R8 R0 K0 ["sub"]
       87 CALL                             R8 3 1
       88 SETTABLE                         R8 R1 R5
       89 ADDK                             R2 R7 K5 [1]
       90 JUMP                             ; [+107]
       91 RETURN                           R1 1
       92 JUMP                             ; [+105]
       93 JUMPIFNOTEQKS                    R6 K8 ["'"] ; [+18]
       95 LOADK                            R9 K8 ["'"]
       96 ADDK                             R10 R2 K5 [1]
       97 LOADB                            R11 1
       98 NAMECALL                         R7 R0 K7 ["find"]
      100 CALL                             R7 4 1
      101 JUMPIFNOT                        R7 ; [+97]
      102 ADDK                             R10 R2 K5 [1]
      103 SUBK                             R11 R7 K5 [1]
      104 NAMECALL                         R8 R0 K0 ["sub"]
      106 CALL                             R8 3 1
      107 SETTABLE                         R8 R1 R5
      108 ADDK                             R2 R7 K5 [1]
      109 JUMP                             ; [+88]
      110 RETURN                           R1 1
      111 JUMP                             ; [+86]
      112 JUMPIFNOTEQKS                    R6 K9 ["{"] ; [+86]
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
      173 JUMP                             ; [+24]
      174 JUMPIFNOTEQKS                    R10 K16 ["false"] ; [+4]
      176 LOADB                            R11 0
      177 SETTABLE                         R11 R1 R5
      178 JUMP                             ; [+19]
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
      191 JUMP                             ; [+6]
      192 DUPTABLE                         R11 K22 [{["type"] = "Expr", ["expr"]}]
      193 SETTABLEKS                       R10 R11 K21 ["expr"]
      195 SETTABLE                         R11 R1 R5
      196 JUMP                             ; [+1]
      197 RETURN                           R1 1
      198 JUMPBACK                         ; [-195]
      199 RETURN                           R1 1

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
      124 JUMPIFNOT                        R5 ; [+18]
      125 DUPTABLE                         R13 K23 [{["name"] = "COMPONENT", ["children"], ["attributes"], ["index"]}]
      126 NEWTABLE                         R14 0 0
      128 SETTABLEKS                       R14 R13 K20 ["children"]
      130 DUPTABLE                         R14 K26 [{"tagName", "props"}]
      131 SETTABLEKS                       R8 R14 K24 ["tagName"]
      133 SETTABLEKS                       R12 R14 K25 ["props"]
      135 SETTABLEKS                       R14 R13 K21 ["attributes"]
      137 MOVE                             R14 R2
      138 CALL                             R14 0 1
      139 SETTABLEKS                       R14 R13 K22 ["index"]
      141 MOVE                             R14 R4
      142 RETURN                           R13 2
      143 NEWTABLE                         R13 0 0
      145 ADDK                             R7 R4 K8 [1]
      146 LENGTH                           R14 R0
      147 JUMPIFNOTLE                      R7 R14 ; [+80]
      149 GETTABLE                         R14 R0 R7
      150 LOADK                            R19 K27 ["^%s*</"]
      151 MOVE                             R20 R8
      152 LOADK                            R21 K28 ["%s*>"]
      153 CONCAT                           R18 R19 R21
      154 NAMECALL                         R16 R14 K15 ["match"]
      156 CALL                             R16 2 1
      157 JUMPIFNOTEQKNIL                  R16 ; [+2]
      159 LOADB                            R15 0 +1
      160 LOADB                            R15 1
      161 JUMPIF                           R15 ; [+66]
      162 LOADK                            R18 K29 ["^%s*$"]
      163 NAMECALL                         R16 R14 K15 ["match"]
      165 CALL                             R16 2 1
      166 JUMPIFNOTEQKNIL                  R16 ; [+2]
      168 LOADB                            R15 0 +1
      169 LOADB                            R15 1
      170 JUMPIFNOT                        R15 ; [+2]
      171 ADDK                             R7 R7 K8 [1]
      172 JUMP                             ; [+54]
      173 LOADK                            R17 K30 ["^%s*<([A-Za-z][%w%-]*)"]
      174 NAMECALL                         R15 R14 K15 ["match"]
      176 CALL                             R15 2 1
      177 JUMPIFNOT                        R15 ; [+15]
      178 GETUPVAL                         R16 1
      179 MOVE                             R17 R0
      180 MOVE                             R18 R7
      181 MOVE                             R19 R2
      182 CALL                             R16 3 2
      183 JUMPIFNOT                        R16 ; [+9]
      184 FASTCALL2                        TABLE_INSERT R13 R16 ; [+5]
      186 MOVE                             R19 R13
      187 MOVE                             R20 R16
      188 GETIMPORT                        R18 K2 [table.insert]
      190 CALL                             R18 2 0
      191 ADDK                             R7 R17 K8 [1]
      192 JUMP                             ; [+34]
      193 LOADK                            R19 K31 ["^%s*(.-)%s*$"]
      194 NAMECALL                         R17 R14 K15 ["match"]
      196 CALL                             R17 2 1
      197 FASTCALL2K                       ASSERT R17 K32 ; [+5]
      199 MOVE                             R19 R17
      200 LOADK                            R20 K32 ["trim match failed"]
      201 GETIMPORT                        R18 K34 [assert]
      203 CALL                             R18 2 0
      204 MOVE                             R16 R17
      205 LENGTH                           R17 R16
      206 LOADN                            R18 0
      207 JUMPIFNOTLT                      R18 R17 ; [+18]
      209 DUPTABLE                         R19 K37 [{["name"] = "INLINE_TEXT", ["children"], ["text"], ["index"]}]
      210 NEWTABLE                         R20 0 0
      212 SETTABLEKS                       R20 R19 K20 ["children"]
      214 SETTABLEKS                       R16 R19 K36 ["text"]
      216 MOVE                             R20 R2
      217 CALL                             R20 0 1
      218 SETTABLEKS                       R20 R19 K22 ["index"]
      220 FASTCALL2                        TABLE_INSERT R13 R19 ; [+4]
      222 MOVE                             R18 R13
      223 GETIMPORT                        R17 K2 [table.insert]
      225 CALL                             R17 2 0
      226 ADDK                             R7 R7 K8 [1]
      227 JUMPBACK                         ; [-82]
      228 DUPTABLE                         R14 K23 [{["name"] = "COMPONENT", ["children"], ["attributes"], ["index"]}]
      229 SETTABLEKS                       R13 R14 K20 ["children"]
      231 DUPTABLE                         R15 K26 [{"tagName", "props"}]
      232 SETTABLEKS                       R8 R15 K24 ["tagName"]
      234 SETTABLEKS                       R12 R15 K25 ["props"]
      236 SETTABLEKS                       R15 R14 K21 ["attributes"]
      238 MOVE                             R15 R2
      239 CALL                             R15 0 1
      240 SETTABLEKS                       R15 R14 K22 ["index"]
      242 MOVE                             R15 R7
      243 RETURN                           R14 2

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
       20 DUPTABLE                         R2 K11 [{["name"] = "ROOT", ["children"], ["offset"] = 0}]
       21 NEWTABLE                         R3 0 0
       23 SETTABLEKS                       R3 R2 K8 ["children"]
       25 LOADN                            R3 1
       26 LOADN                            R4 0
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          REF R4
       29 LENGTH                           R6 R1
       30 JUMPIFNOTLE                      R3 R6 ; [+751]
       32 GETTABLE                         R6 R1 R3
       33 LOADK                            R10 K12 ["^%s*$"]
       34 NAMECALL                         R8 R6 K13 ["match"]
       36 CALL                             R8 2 1
       37 JUMPIFNOTEQKNIL                  R8 ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 JUMPIFNOT                        R7 ; [+2]
       42 ADDK                             R3 R3 K14 [1]
       43 JUMP                             ; [+737]
       44 LOADK                            R11 K15 ["^(#+)%s+(.*)"]
       45 NAMECALL                         R9 R6 K13 ["match"]
       47 CALL                             R9 2 2
       48 JUMPIFNOT                        R9 ; [+21]
       49 LENGTH                           R12 R9
       50 FASTCALL2K                       MATH_MIN R12 K16 ; [+4]
       52 LOADK                            R13 K16 [6]
       53 GETIMPORT                        R11 K19 [math.min]
       55 CALL                             R11 2 1
       56 MOVE                             R7 R11
       57 LOADK                            R13 K20 ["^%s*(.-)%s*$"]
       58 NAMECALL                         R11 R10 K13 ["match"]
       60 CALL                             R11 2 1
       61 FASTCALL2K                       ASSERT R11 K21 ; [+5]
       63 MOVE                             R13 R11
       64 LOADK                            R14 K21 ["trim match failed"]
       65 GETIMPORT                        R12 K23 [assert]
       67 CALL                             R12 2 0
       68 MOVE                             R8 R11
       69 JUMP                             ; [+2]
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 JUMPIFNOT                        R7 ; [+25]
       73 JUMPIFNOT                        R8 ; [+24]
       74 GETTABLEKS                       R10 R2 K8 ["children"]
       76 DUPTABLE                         R11 K27 [{["name"] = "HEADING", ["children"], ["attributes"], ["index"]}]
       77 GETUPVAL                         R12 0
       78 MOVE                             R13 R8
       79 CALL                             R12 1 1
       80 SETTABLEKS                       R12 R11 K8 ["children"]
       82 DUPTABLE                         R12 K29 [{"depth"}]
       83 SETTABLEKS                       R7 R12 K28 ["depth"]
       85 SETTABLEKS                       R12 R11 K25 ["attributes"]
       87 ADDK                             R4 R4 K14 [1]
       88 MOVE                             R12 R4
       89 SETTABLEKS                       R12 R11 K26 ["index"]
       91 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
       93 GETIMPORT                        R9 K5 [table.insert]
       95 CALL                             R9 2 0
       96 ADDK                             R3 R3 K14 [1]
       97 JUMP                             ; [+683]
       98 LOADB                            R9 1
       99 LOADK                            R12 K30 ["^%s*%-%-%-+%s*$"]
      100 NAMECALL                         R10 R6 K13 ["match"]
      102 CALL                             R10 2 1
      103 JUMPIFNOTEQKNIL                  R10 ; [+16]
      105 LOADB                            R9 1
      106 LOADK                            R12 K31 ["^%s*%*%*%*+%s*$"]
      107 NAMECALL                         R10 R6 K13 ["match"]
      109 CALL                             R10 2 1
      110 JUMPIFNOTEQKNIL                  R10 ; [+9]
      112 LOADK                            R12 K32 ["^%s*___+%s*$"]
      113 NAMECALL                         R10 R6 K13 ["match"]
      115 CALL                             R10 2 1
      116 JUMPIFNOTEQKNIL                  R10 ; [+2]
      118 LOADB                            R9 0 +1
      119 LOADB                            R9 1
      120 JUMPIFNOT                        R9 ; [+22]
      121 GETTABLEKS                       R10 R2 K8 ["children"]
      123 DUPTABLE                         R11 K34 [{["name"] = "DIVIDER", ["children"], ["attributes"], ["index"]}]
      124 NEWTABLE                         R12 0 0
      126 SETTABLEKS                       R12 R11 K8 ["children"]
      128 NEWTABLE                         R12 0 0
      130 SETTABLEKS                       R12 R11 K25 ["attributes"]
      132 ADDK                             R4 R4 K14 [1]
      133 MOVE                             R12 R4
      134 SETTABLEKS                       R12 R11 K26 ["index"]
      136 FASTCALL2                        TABLE_INSERT R10 R11 ; [+3]
      138 GETIMPORT                        R9 K5 [table.insert]
      140 CALL                             R9 2 0
      141 ADDK                             R3 R3 K14 [1]
      142 JUMP                             ; [+638]
      143 LOADK                            R11 K35 ["^```(%w*)"]
      144 NAMECALL                         R9 R6 K13 ["match"]
      146 CALL                             R9 2 1
      147 JUMPIFEQKNIL                     R9 ; [+57]
      149 NEWTABLE                         R10 0 0
      151 ADDK                             R3 R3 K14 [1]
      152 LENGTH                           R11 R1
      153 JUMPIFNOTLE                      R3 R11 ; [+16]
      155 GETTABLE                         R11 R1 R3
      156 LOADK                            R13 K36 ["^```"]
      157 NAMECALL                         R11 R11 K13 ["match"]
      159 CALL                             R11 2 1
      160 JUMPIF                           R11 ; [+9]
      161 GETTABLE                         R13 R1 R3
      162 FASTCALL2                        TABLE_INSERT R10 R13 ; [+4]
      164 MOVE                             R12 R10
      165 GETIMPORT                        R11 K5 [table.insert]
      167 CALL                             R11 2 0
      168 ADDK                             R3 R3 K14 [1]
      169 JUMPBACK                         ; [-18]
      170 ADDK                             R3 R3 K14 [1]
      171 GETTABLEKS                       R12 R2 K8 ["children"]
      173 DUPTABLE                         R13 K39 [{["name"] = "CODE_BLOCK", ["children"], ["text"], ["attributes"], ["index"]}]
      174 NEWTABLE                         R14 0 0
      176 SETTABLEKS                       R14 R13 K8 ["children"]
      178 GETIMPORT                        R14 K41 [table.concat]
      180 MOVE                             R15 R10
      181 LOADK                            R16 K0 ["\n"]
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K38 ["text"]
      185 DUPTABLE                         R14 K43 [{"language"}]
      186 JUMPIFEQKS                       R9 K44 [""] ; [+3]
      188 MOVE                             R15 R9
      189 JUMP                             ; [+1]
      190 LOADNIL                          R15
      191 SETTABLEKS                       R15 R14 K42 ["language"]
      193 SETTABLEKS                       R14 R13 K25 ["attributes"]
      195 ADDK                             R4 R4 K14 [1]
      196 MOVE                             R14 R4
      197 SETTABLEKS                       R14 R13 K26 ["index"]
      199 FASTCALL2                        TABLE_INSERT R12 R13 ; [+3]
      201 GETIMPORT                        R11 K5 [table.insert]
      203 CALL                             R11 2 0
      204 JUMP                             ; [+576]
      205 GETUPVAL                         R10 1
      206 MOVE                             R11 R6
      207 CALL                             R10 1 1
      208 JUMPIFNOT                        R10 ; [+148]
      209 ADDK                             R11 R3 K14 [1]
      210 LENGTH                           R12 R1
      211 JUMPIFNOTLE                      R11 R12 ; [+145]
      213 GETUPVAL                         R11 1
      214 ADDK                             R13 R3 K14 [1]
      215 GETTABLE                         R12 R1 R13
      216 CALL                             R11 1 1
      217 JUMPIFNOT                        R11 ; [+139]
      218 MOVE                             R13 R11
      219 LOADNIL                          R14
      220 LOADNIL                          R15
      221 FORGPREP                         R13
      222 LOADK                            R20 K45 ["^:?%-+:?$"]
      223 NAMECALL                         R18 R17 K13 ["match"]
      225 CALL                             R18 2 1
      226 JUMPIF                           R18 ; [+2]
      227 LOADB                            R12 0
      228 JUMP                             ; [+3]
      229 FORGLOOP                         R13 2 ; [-8]
      231 LOADB                            R12 1
      232 JUMPIFNOT                        R12 ; [+124]
      233 DUPTABLE                         R12 K47 [{["name"] = "TABLE_HEADER", ["children"], ["attributes"], ["index"]}]
      234 NEWTABLE                         R13 0 0
      236 SETTABLEKS                       R13 R12 K8 ["children"]
      238 NEWTABLE                         R13 0 0
      240 SETTABLEKS                       R13 R12 K25 ["attributes"]
      242 ADDK                             R4 R4 K14 [1]
      243 MOVE                             R13 R4
      244 SETTABLEKS                       R13 R12 K26 ["index"]
      246 MOVE                             R13 R10
      247 LOADNIL                          R14
      248 LOADNIL                          R15
      249 FORGPREP                         R13
      250 GETTABLEKS                       R19 R12 K8 ["children"]
      252 DUPTABLE                         R20 K49 [{["name"] = "TABLE_CELL", ["children"], ["text"], ["index"]}]
      253 GETUPVAL                         R21 0
      254 MOVE                             R22 R17
      255 CALL                             R21 1 1
      256 SETTABLEKS                       R21 R20 K8 ["children"]
      258 SETTABLEKS                       R17 R20 K38 ["text"]
      260 ADDK                             R4 R4 K14 [1]
      261 MOVE                             R21 R4
      262 SETTABLEKS                       R21 R20 K26 ["index"]
      264 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      266 GETIMPORT                        R18 K5 [table.insert]
      268 CALL                             R18 2 0
      269 FORGLOOP                         R13 2 ; [-20]
      271 NEWTABLE                         R13 0 0
      273 ADDK                             R3 R3 K50 [2]
      274 LENGTH                           R14 R1
      275 JUMPIFNOTLE                      R3 R14 ; [+52]
      277 GETUPVAL                         R14 1
      278 GETTABLE                         R15 R1 R3
      279 CALL                             R14 1 1
      280 JUMPIFNOT                        R14 ; [+47]
      281 DUPTABLE                         R15 K52 [{["name"] = "TABLE_ROW", ["children"], ["attributes"], ["index"]}]
      282 NEWTABLE                         R16 0 0
      284 SETTABLEKS                       R16 R15 K8 ["children"]
      286 NEWTABLE                         R16 0 0
      288 SETTABLEKS                       R16 R15 K25 ["attributes"]
      290 ADDK                             R4 R4 K14 [1]
      291 MOVE                             R16 R4
      292 SETTABLEKS                       R16 R15 K26 ["index"]
      294 MOVE                             R16 R14
      295 LOADNIL                          R17
      296 LOADNIL                          R18
      297 FORGPREP                         R16
      298 GETTABLEKS                       R22 R15 K8 ["children"]
      300 DUPTABLE                         R23 K49 [{["name"] = "TABLE_CELL", ["children"], ["text"], ["index"]}]
      301 GETUPVAL                         R24 0
      302 MOVE                             R25 R20
      303 CALL                             R24 1 1
      304 SETTABLEKS                       R24 R23 K8 ["children"]
      306 SETTABLEKS                       R20 R23 K38 ["text"]
      308 ADDK                             R4 R4 K14 [1]
      309 MOVE                             R24 R4
      310 SETTABLEKS                       R24 R23 K26 ["index"]
      312 FASTCALL2                        TABLE_INSERT R22 R23 ; [+3]
      314 GETIMPORT                        R21 K5 [table.insert]
      316 CALL                             R21 2 0
      317 FORGLOOP                         R16 2 ; [-20]
      319 FASTCALL2                        TABLE_INSERT R13 R15 ; [+5]
      321 MOVE                             R17 R13
      322 MOVE                             R18 R15
      323 GETIMPORT                        R16 K5 [table.insert]
      325 CALL                             R16 2 0
      326 ADDK                             R3 R3 K14 [1]
      327 JUMPBACK                         ; [-54]
      328 GETTABLEKS                       R15 R2 K8 ["children"]
      330 DUPTABLE                         R16 K54 [{["name"] = "TABLE", ["children"], ["attributes"], ["index"]}]
      331 NEWTABLE                         R17 0 2
      333 MOVE                             R18 R12
      334 FASTCALL1                        TABLE_UNPACK R13 ; [+3]
      335 MOVE                             R20 R13
      336 GETIMPORT                        R19 K56 [unpack]
      338 CALL                             R19 1 -1
      339 SETLIST                          R17 R18 -1 [1]
      341 SETTABLEKS                       R17 R16 K8 ["children"]
      343 NEWTABLE                         R17 0 0
      345 SETTABLEKS                       R17 R16 K25 ["attributes"]
      347 ADDK                             R4 R4 K14 [1]
      348 MOVE                             R17 R4
      349 SETTABLEKS                       R17 R16 K26 ["index"]
      351 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      353 GETIMPORT                        R14 K5 [table.insert]
      355 CALL                             R14 2 0
      356 JUMP                             ; [+424]
      357 LOADK                            R13 K57 ["^>%s?(.*)"]
      358 NAMECALL                         R11 R6 K13 ["match"]
      360 CALL                             R11 2 1
      361 JUMPIFNOT                        R11 ; [+73]
      362 NEWTABLE                         R12 0 1
      364 MOVE                             R13 R11
      365 SETLIST                          R12 R13 1 [1]
      367 ADDK                             R3 R3 K14 [1]
      368 LENGTH                           R13 R1
      369 JUMPIFNOTLE                      R3 R13 ; [+38]
      371 GETTABLE                         R14 R1 R3
      372 LOADK                            R17 K57 ["^>%s?(.*)"]
      373 NAMECALL                         R15 R14 K13 ["match"]
      375 CALL                             R15 2 1
      376 MOVE                             R13 R15
      377 JUMPIFNOT                        R13 ; [+9]
      378 FASTCALL2                        TABLE_INSERT R12 R13 ; [+5]
      380 MOVE                             R15 R12
      381 MOVE                             R16 R13
      382 GETIMPORT                        R14 K5 [table.insert]
      384 CALL                             R14 2 0
      385 ADDK                             R3 R3 K14 [1]
      386 JUMP                             ; [+20]
      387 GETTABLE                         R15 R1 R3
      388 LOADK                            R18 K12 ["^%s*$"]
      389 NAMECALL                         R16 R15 K13 ["match"]
      391 CALL                             R16 2 1
      392 JUMPIFNOTEQKNIL                  R16 ; [+2]
      394 LOADB                            R14 0 +1
      395 LOADB                            R14 1
      396 JUMPIF                           R14 ; [+11]
      397 GETTABLE                         R16 R1 R3
      398 FASTCALL2                        TABLE_INSERT R12 R16 ; [+4]
      400 MOVE                             R15 R12
      401 GETIMPORT                        R14 K5 [table.insert]
      403 CALL                             R14 2 0
      404 ADDK                             R3 R3 K14 [1]
      405 JUMP                             ; [+1]
      406 JUMP                             ; [+1]
      407 JUMPBACK                         ; [-40]
      408 GETIMPORT                        R13 K41 [table.concat]
      410 MOVE                             R14 R12
      411 LOADK                            R15 K0 ["\n"]
      412 CALL                             R13 2 1
      413 GETTABLEKS                       R15 R2 K8 ["children"]
      415 DUPTABLE                         R16 K59 [{["name"] = "QUOTE", ["children"], ["attributes"], ["index"]}]
      416 GETUPVAL                         R17 0
      417 MOVE                             R18 R13
      418 CALL                             R17 1 1
      419 SETTABLEKS                       R17 R16 K8 ["children"]
      421 NEWTABLE                         R17 0 0
      423 SETTABLEKS                       R17 R16 K25 ["attributes"]
      425 ADDK                             R4 R4 K14 [1]
      426 MOVE                             R17 R4
      427 SETTABLEKS                       R17 R16 K26 ["index"]
      429 FASTCALL2                        TABLE_INSERT R15 R16 ; [+3]
      431 GETIMPORT                        R14 K5 [table.insert]
      433 CALL                             R14 2 0
      434 JUMP                             ; [+346]
      435 LOADK                            R16 K60 ["^%s*([%*%-])%s+(.*)"]
      436 NAMECALL                         R14 R6 K13 ["match"]
      438 CALL                             R14 2 2
      439 JUMPIFNOT                        R14 ; [+3]
      440 MOVE                             R12 R14
      441 MOVE                             R13 R15
      442 JUMP                             ; [+2]
      443 LOADNIL                          R12
      444 LOADNIL                          R13
      445 LOADK                            R18 K61 ["^%s*(%d+)[%.%)]%s+(.*)"]
      446 NAMECALL                         R16 R6 K13 ["match"]
      448 CALL                             R16 2 2
      449 JUMPIFNOT                        R16 ; [+3]
      450 MOVE                             R14 R16
      451 MOVE                             R15 R17
      452 JUMP                             ; [+2]
      453 LOADNIL                          R14
      454 LOADNIL                          R15
      455 JUMPIF                           R12 ; [+1]
      456 JUMPIFNOT                        R14 ; [+133]
      457 NEWTABLE                         R16 0 0
      459 JUMPIFNOTEQKNIL                  R14 ; [+2]
      461 LOADB                            R17 0 +1
      462 LOADB                            R17 1
      463 LENGTH                           R18 R1
      464 JUMPIFNOTLE                      R3 R18 ; [+105]
      466 GETTABLE                         R20 R1 R3
      467 LOADK                            R23 K60 ["^%s*([%*%-])%s+(.*)"]
      468 NAMECALL                         R21 R20 K13 ["match"]
      470 CALL                             R21 2 2
      471 JUMPIFNOT                        R21 ; [+3]
      472 MOVE                             R18 R21
      473 MOVE                             R19 R22
      474 JUMP                             ; [+2]
      475 LOADNIL                          R18
      476 LOADNIL                          R19
      477 GETTABLE                         R22 R1 R3
      478 LOADK                            R25 K61 ["^%s*(%d+)[%.%)]%s+(.*)"]
      479 NAMECALL                         R23 R22 K13 ["match"]
      481 CALL                             R23 2 2
      482 JUMPIFNOT                        R23 ; [+3]
      483 MOVE                             R20 R23
      484 MOVE                             R21 R24
      485 JUMP                             ; [+2]
      486 LOADNIL                          R20
      487 LOADNIL                          R21
      488 JUMPIF                           R17 ; [+1]
      489 JUMPIF                           R18 ; [+2]
      490 JUMPIFNOT                        R17 ; [+79]
      491 JUMPIFNOT                        R20 ; [+78]
      492 JUMPIFNOT                        R17 ; [+2]
      493 MOVE                             R22 R21
      494 JUMP                             ; [+1]
      495 MOVE                             R22 R19
      496 JUMPIFNOT                        R17 ; [+4]
      497 MOVE                             R24 R20
      498 LOADK                            R25 K62 ["."]
      499 CONCAT                           R23 R24 R25
      500 JUMP                             ; [+1]
      501 MOVE                             R23 R18
      502 GETTABLE                         R26 R1 R3
      503 LOADK                            R29 K63 ["^%s*[%*%-]%s+%[([ xX])%]%s+(.*)"]
      504 NAMECALL                         R27 R26 K13 ["match"]
      506 CALL                             R27 2 2
      507 JUMPIFNOT                        R27 ; [+9]
      508 NAMECALL                         R29 R27 K64 ["lower"]
      510 CALL                             R29 1 1
      511 JUMPIFEQKS                       R29 K65 ["x"] ; [+2]
      513 LOADB                            R24 0 +1
      514 LOADB                            R24 1
      515 MOVE                             R25 R28
      516 JUMP                             ; [+2]
      517 LOADNIL                          R24
      518 LOADNIL                          R25
      519 JUMPIFEQKNIL                     R24 ; [+25]
      521 DUPTABLE                         R28 K67 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      522 GETUPVAL                         R29 0
      523 MOVE                             R30 R25
      524 CALL                             R29 1 1
      525 SETTABLEKS                       R29 R28 K8 ["children"]
      527 DUPTABLE                         R29 K72 [{["prefix"], ["checkbox"] = True, ["checked"]}]
      528 SETTABLEKS                       R23 R29 K68 ["prefix"]
      530 SETTABLEKS                       R24 R29 K71 ["checked"]
      532 SETTABLEKS                       R29 R28 K25 ["attributes"]
      534 ADDK                             R4 R4 K14 [1]
      535 MOVE                             R29 R4
      536 SETTABLEKS                       R29 R28 K26 ["index"]
      538 FASTCALL2                        TABLE_INSERT R16 R28 ; [+4]
      540 MOVE                             R27 R16
      541 GETIMPORT                        R26 K5 [table.insert]
      543 CALL                             R26 2 0
      544 JUMP                             ; [+21]
      545 DUPTABLE                         R28 K67 [{["name"] = "LIST_ITEM", ["children"], ["attributes"], ["index"]}]
      546 GETUPVAL                         R29 0
      547 MOVE                             R30 R22
      548 CALL                             R29 1 1
      549 SETTABLEKS                       R29 R28 K8 ["children"]
      551 DUPTABLE                         R29 K73 [{"prefix"}]
      552 SETTABLEKS                       R23 R29 K68 ["prefix"]
      554 SETTABLEKS                       R29 R28 K25 ["attributes"]
      556 ADDK                             R4 R4 K14 [1]
      557 MOVE                             R29 R4
      558 SETTABLEKS                       R29 R28 K26 ["index"]
      560 FASTCALL2                        TABLE_INSERT R16 R28 ; [+4]
      562 MOVE                             R27 R16
      563 GETIMPORT                        R26 K5 [table.insert]
      565 CALL                             R26 2 0
      566 ADDK                             R3 R3 K14 [1]
      567 JUMP                             ; [+1]
      568 JUMP                             ; [+1]
      569 JUMPBACK                         ; [-107]
      570 GETTABLEKS                       R19 R2 K8 ["children"]
      572 DUPTABLE                         R20 K75 [{["name"] = "LIST", ["children"], ["attributes"], ["index"]}]
      573 SETTABLEKS                       R16 R20 K8 ["children"]
      575 DUPTABLE                         R21 K77 [{"ordered"}]
      576 SETTABLEKS                       R17 R21 K76 ["ordered"]
      578 SETTABLEKS                       R21 R20 K25 ["attributes"]
      580 ADDK                             R4 R4 K14 [1]
      581 MOVE                             R21 R4
      582 SETTABLEKS                       R21 R20 K26 ["index"]
      584 FASTCALL2                        TABLE_INSERT R19 R20 ; [+3]
      586 GETIMPORT                        R18 K5 [table.insert]
      588 CALL                             R18 2 0
      589 JUMP                             ; [+191]
      590 LOADK                            R18 K78 ["^%s*<([A-Za-z][%w%-]*)"]
      591 NAMECALL                         R16 R6 K13 ["match"]
      593 CALL                             R16 2 1
      594 JUMPIFNOT                        R16 ; [+16]
      595 GETUPVAL                         R17 2
      596 MOVE                             R18 R1
      597 MOVE                             R19 R3
      598 MOVE                             R20 R5
      599 CALL                             R17 3 2
      600 JUMPIFNOT                        R17 ; [+10]
      601 GETTABLEKS                       R20 R2 K8 ["children"]
      603 FASTCALL2                        TABLE_INSERT R20 R17 ; [+4]
      605 MOVE                             R21 R17
      606 GETIMPORT                        R19 K5 [table.insert]
      608 CALL                             R19 2 0
      609 ADDK                             R3 R18 K14 [1]
      610 JUMP                             ; [+170]
      611 NEWTABLE                         R17 0 1
      613 MOVE                             R18 R6
      614 SETLIST                          R17 R18 1 [1]
      616 ADDK                             R3 R3 K14 [1]
      617 LENGTH                           R18 R1
      618 JUMPIFNOTLE                      R3 R18 ; [+136]
      620 GETTABLE                         R18 R1 R3
      621 LOADK                            R22 K12 ["^%s*$"]
      622 NAMECALL                         R20 R18 K13 ["match"]
      624 CALL                             R20 2 1
      625 JUMPIFNOTEQKNIL                  R20 ; [+2]
      627 LOADB                            R19 0 +1
      628 LOADB                            R19 1
      629 JUMPIF                           R19 ; [+125]
      630 LOADK                            R22 K15 ["^(#+)%s+(.*)"]
      631 NAMECALL                         R20 R18 K13 ["match"]
      633 CALL                             R20 2 2
      634 JUMPIFNOT                        R20 ; [+21]
      635 LENGTH                           R23 R20
      636 FASTCALL2K                       MATH_MIN R23 K16 ; [+4]
      638 LOADK                            R24 K16 [6]
      639 GETIMPORT                        R22 K19 [math.min]
      641 CALL                             R22 2 1
      642 MOVE                             R19 R22
      643 LOADK                            R25 K20 ["^%s*(.-)%s*$"]
      644 NAMECALL                         R23 R21 K13 ["match"]
      646 CALL                             R23 2 1
      647 FASTCALL2K                       ASSERT R23 K21 ; [+5]
      649 MOVE                             R25 R23
      650 LOADK                            R26 K21 ["trim match failed"]
      651 GETIMPORT                        R24 K23 [assert]
      653 CALL                             R24 2 0
      654 MOVE                             R22 R23
      655 JUMP                             ; [+1]
      656 LOADNIL                          R19
      657 JUMPIF                           R19 ; [+97]
      658 LOADB                            R19 1
      659 LOADK                            R22 K30 ["^%s*%-%-%-+%s*$"]
      660 NAMECALL                         R20 R18 K13 ["match"]
      662 CALL                             R20 2 1
      663 JUMPIFNOTEQKNIL                  R20 ; [+16]
      665 LOADB                            R19 1
      666 LOADK                            R22 K31 ["^%s*%*%*%*+%s*$"]
      667 NAMECALL                         R20 R18 K13 ["match"]
      669 CALL                             R20 2 1
      670 JUMPIFNOTEQKNIL                  R20 ; [+9]
      672 LOADK                            R22 K32 ["^%s*___+%s*$"]
      673 NAMECALL                         R20 R18 K13 ["match"]
      675 CALL                             R20 2 1
      676 JUMPIFNOTEQKNIL                  R20 ; [+2]
      678 LOADB                            R19 0 +1
      679 LOADB                            R19 1
      680 JUMPIF                           R19 ; [+74]
      681 LOADK                            R21 K35 ["^```(%w*)"]
      682 NAMECALL                         R19 R18 K13 ["match"]
      684 CALL                             R19 2 1
      685 JUMPIF                           R19 ; [+69]
      686 LOADK                            R22 K60 ["^%s*([%*%-])%s+(.*)"]
      687 NAMECALL                         R20 R18 K13 ["match"]
      689 CALL                             R20 2 2
      690 JUMPIFNOT                        R20 ; [+2]
      691 MOVE                             R19 R20
      692 JUMP                             ; [+1]
      693 LOADNIL                          R19
      694 JUMPIF                           R19 ; [+60]
      695 LOADK                            R22 K61 ["^%s*(%d+)[%.%)]%s+(.*)"]
      696 NAMECALL                         R20 R18 K13 ["match"]
      698 CALL                             R20 2 2
      699 JUMPIFNOT                        R20 ; [+2]
      700 MOVE                             R19 R20
      701 JUMP                             ; [+1]
      702 LOADNIL                          R19
      703 JUMPIF                           R19 ; [+51]
      704 LOADK                            R21 K57 ["^>%s?(.*)"]
      705 NAMECALL                         R19 R18 K13 ["match"]
      707 CALL                             R19 2 1
      708 JUMPIF                           R19 ; [+46]
      709 LOADK                            R21 K78 ["^%s*<([A-Za-z][%w%-]*)"]
      710 NAMECALL                         R19 R18 K13 ["match"]
      712 CALL                             R19 2 1
      713 JUMPIF                           R19 ; [+41]
      714 GETUPVAL                         R19 1
      715 MOVE                             R20 R18
      716 CALL                             R19 1 1
      717 JUMPIFNOT                        R19 ; [+28]
      718 ADDK                             R19 R3 K14 [1]
      719 LENGTH                           R20 R1
      720 JUMPIFNOTLE                      R19 R20 ; [+25]
      722 GETUPVAL                         R19 1
      723 ADDK                             R21 R3 K14 [1]
      724 GETTABLE                         R20 R1 R21
      725 CALL                             R19 1 1
      726 JUMPIFNOT                        R19 ; [+19]
      727 GETUPVAL                         R20 1
      728 ADDK                             R22 R3 K14 [1]
      729 GETTABLE                         R21 R1 R22
      730 CALL                             R20 1 1
      731 MOVE                             R21 R20
      732 LOADNIL                          R22
      733 LOADNIL                          R23
      734 FORGPREP                         R21
      735 LOADK                            R28 K45 ["^:?%-+:?$"]
      736 NAMECALL                         R26 R25 K13 ["match"]
      738 CALL                             R26 2 1
      739 JUMPIF                           R26 ; [+2]
      740 LOADB                            R19 0
      741 JUMP                             ; [+3]
      742 FORGLOOP                         R21 2 ; [-8]
      744 LOADB                            R19 1
      745 JUMPIF                           R19 ; [+9]
      746 FASTCALL2                        TABLE_INSERT R17 R18 ; [+5]
      748 MOVE                             R20 R17
      749 MOVE                             R21 R18
      750 GETIMPORT                        R19 K5 [table.insert]
      752 CALL                             R19 2 0
      753 ADDK                             R3 R3 K14 [1]
      754 JUMPBACK                         ; [-138]
      755 GETIMPORT                        R18 K41 [table.concat]
      757 MOVE                             R19 R17
      758 LOADK                            R20 K79 [" "]
      759 CALL                             R18 2 1
      760 GETTABLEKS                       R20 R2 K8 ["children"]
      762 DUPTABLE                         R21 K81 [{["name"] = "PARAGRAPH", ["children"], ["attributes"], ["index"]}]
      763 GETUPVAL                         R22 0
      764 MOVE                             R23 R18
      765 CALL                             R22 1 1
      766 SETTABLEKS                       R22 R21 K8 ["children"]
      768 NEWTABLE                         R22 0 0
      770 SETTABLEKS                       R22 R21 K25 ["attributes"]
      772 ADDK                             R4 R4 K14 [1]
      773 MOVE                             R22 R4
      774 SETTABLEKS                       R22 R21 K26 ["index"]
      776 FASTCALL2                        TABLE_INSERT R20 R21 ; [+3]
      778 GETIMPORT                        R19 K5 [table.insert]
      780 CALL                             R19 2 0
      781 JUMPBACK                         ; [-753]
      782 ADDK                             R4 R4 K14 [1]
      783 MOVE                             R6 R4
      784 SETTABLEKS                       R6 R2 K26 ["index"]
      786 CLOSEUPVALS                      R4
      787 RETURN                           R2 1

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
