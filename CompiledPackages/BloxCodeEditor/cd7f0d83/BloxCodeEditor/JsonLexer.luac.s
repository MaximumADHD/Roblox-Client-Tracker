PROTO_0:
        0 LOADB                            R1 0
        1 LOADK                            R2 K0 ["0"]
        2 JUMPIFNOTLE                      R2 R0 ; [+6]
        4 LOADK                            R2 K1 ["9"]
        5 JUMPIFLE                         R0 R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R2 K0 ["a"]
        1 JUMPIFNOTLE                      R2 R0 ; [+5]
        3 LOADB                            R1 1
        4 LOADK                            R2 K1 ["z"]
        5 JUMPIFLE                         R0 R2 ; [+10]
        7 LOADB                            R1 0
        8 LOADK                            R2 K2 ["A"]
        9 JUMPIFNOTLE                      R2 R0 ; [+6]
       11 LOADK                            R2 K3 ["Z"]
       12 JUMPIFLE                         R0 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 LENGTH                           R3 R0
        4 JUMPIFNOTLE                      R2 R3 ; [+373]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R0 K0 ["sub"]
       10 CALL                             R4 3 1
       11 JUMPIFEQKS                       R4 K1 [" "] ; [+7]
       13 JUMPIFEQKS                       R4 K2 ["\t"] ; [+5]
       15 JUMPIFEQKS                       R4 K3 ["\r"] ; [+3]
       17 JUMPIFNOTEQKS                    R4 K4 ["\n"] ; [+37]
       19 MOVE                             R5 R2
       20 JUMPIFNOTLE                      R2 R3 ; [+16]
       22 MOVE                             R8 R2
       23 MOVE                             R9 R2
       24 NAMECALL                         R6 R0 K0 ["sub"]
       26 CALL                             R6 3 1
       27 JUMPIFEQKS                       R6 K1 [" "] ; [+7]
       29 JUMPIFEQKS                       R6 K2 ["\t"] ; [+5]
       31 JUMPIFEQKS                       R6 K3 ["\r"] ; [+3]
       33 JUMPIFNOTEQKS                    R6 K4 ["\n"] ; [+3]
       35 ADDK                             R2 R2 K5 [1]
       36 JUMPBACK                         ; [-17]
       37 DUPTABLE                         R8 K8 [{"type", "value"}]
       38 LOADK                            R9 K9 ["whitespace"]
       39 SETTABLEKS                       R9 R8 K6 ["type"]
       41 MOVE                             R11 R5
       42 SUBK                             R12 R2 K5 [1]
       43 NAMECALL                         R9 R0 K0 ["sub"]
       45 CALL                             R9 3 1
       46 SETTABLEKS                       R9 R8 K7 ["value"]
       48 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       50 MOVE                             R7 R1
       51 GETIMPORT                        R6 K12 [table.insert]
       53 CALL                             R6 2 0
       54 JUMP                             ; [+322]
       55 JUMPIFNOTEQKS                    R4 K13 ["\""] ; [+78]
       57 MOVE                             R5 R2
       58 ADDK                             R2 R2 K5 [1]
       59 JUMPIFNOTLE                      R2 R3 ; [+16]
       61 MOVE                             R8 R2
       62 MOVE                             R9 R2
       63 NAMECALL                         R6 R0 K0 ["sub"]
       65 CALL                             R6 3 1
       66 JUMPIFNOTEQKS                    R6 K14 ["\\"] ; [+3]
       68 ADDK                             R2 R2 K15 [2]
       69 JUMP                             ; [+5]
       70 JUMPIFNOTEQKS                    R6 K13 ["\""] ; [+3]
       72 ADDK                             R2 R2 K5 [1]
       73 JUMP                             ; [+2]
       74 ADDK                             R2 R2 K5 [1]
       75 JUMPBACK                         ; [-17]
       76 MOVE                             R8 R5
       77 SUBK                             R9 R2 K5 [1]
       78 NAMECALL                         R6 R0 K0 ["sub"]
       80 CALL                             R6 3 1
       81 MOVE                             R7 R2
       82 JUMPIFNOTLE                      R7 R3 ; [+16]
       84 MOVE                             R10 R7
       85 MOVE                             R11 R7
       86 NAMECALL                         R8 R0 K0 ["sub"]
       88 CALL                             R8 3 1
       89 JUMPIFEQKS                       R8 K1 [" "] ; [+7]
       91 JUMPIFEQKS                       R8 K2 ["\t"] ; [+5]
       93 JUMPIFEQKS                       R8 K3 ["\r"] ; [+3]
       95 JUMPIFNOTEQKS                    R8 K4 ["\n"] ; [+3]
       97 ADDK                             R7 R7 K5 [1]
       98 JUMPBACK                         ; [-17]
       99 JUMPIFNOTLE                      R7 R3 ; [+21]
      101 MOVE                             R10 R7
      102 MOVE                             R11 R7
      103 NAMECALL                         R8 R0 K0 ["sub"]
      105 CALL                             R8 3 1
      106 JUMPIFNOTEQKS                    R8 K16 [":"] ; [+14]
      108 DUPTABLE                         R10 K8 [{"type", "value"}]
      109 LOADK                            R11 K17 ["key"]
      110 SETTABLEKS                       R11 R10 K6 ["type"]
      112 SETTABLEKS                       R6 R10 K7 ["value"]
      114 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      116 MOVE                             R9 R1
      117 GETIMPORT                        R8 K12 [table.insert]
      119 CALL                             R8 2 0
      120 JUMP                             ; [+256]
      121 DUPTABLE                         R10 K8 [{"type", "value"}]
      122 LOADK                            R11 K18 ["string"]
      123 SETTABLEKS                       R11 R10 K6 ["type"]
      125 SETTABLEKS                       R6 R10 K7 ["value"]
      127 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      129 MOVE                             R9 R1
      130 GETIMPORT                        R8 K12 [table.insert]
      132 CALL                             R8 2 0
      133 JUMP                             ; [+243]
      134 LOADB                            R5 0
      135 LOADK                            R6 K19 ["0"]
      136 JUMPIFNOTLE                      R6 R4 ; [+6]
      138 LOADK                            R6 K20 ["9"]
      139 JUMPIFLE                         R4 R6 ; [+2]
      141 LOADB                            R5 0 +1
      142 LOADB                            R5 1
      143 JUMPIF                           R5 ; [+20]
      144 JUMPIFNOTEQKS                    R4 K21 ["-"] ; [+138]
      146 ADDK                             R5 R2 K5 [1]
      147 JUMPIFNOTLE                      R5 R3 ; [+135]
      149 ADDK                             R8 R2 K5 [1]
      150 ADDK                             R9 R2 K5 [1]
      151 NAMECALL                         R6 R0 K0 ["sub"]
      153 CALL                             R6 3 1
      154 LOADB                            R5 0
      155 LOADK                            R7 K19 ["0"]
      156 JUMPIFNOTLE                      R7 R6 ; [+6]
      158 LOADK                            R7 K20 ["9"]
      159 JUMPIFLE                         R6 R7 ; [+2]
      161 LOADB                            R5 0 +1
      162 LOADB                            R5 1
      163 JUMPIFNOT                        R5 ; [+119]
      164 MOVE                             R5 R2
      165 JUMPIFNOTEQKS                    R4 K21 ["-"] ; [+2]
      167 ADDK                             R2 R2 K5 [1]
      168 JUMPIFNOTLE                      R2 R3 ; [+18]
      170 MOVE                             R9 R2
      171 MOVE                             R10 R2
      172 NAMECALL                         R7 R0 K0 ["sub"]
      174 CALL                             R7 3 1
      175 LOADB                            R6 0
      176 LOADK                            R8 K19 ["0"]
      177 JUMPIFNOTLE                      R8 R7 ; [+6]
      179 LOADK                            R8 K20 ["9"]
      180 JUMPIFLE                         R7 R8 ; [+2]
      182 LOADB                            R6 0 +1
      183 LOADB                            R6 1
      184 JUMPIFNOT                        R6 ; [+2]
      185 ADDK                             R2 R2 K5 [1]
      186 JUMPBACK                         ; [-19]
      187 JUMPIFNOTLE                      R2 R3 ; [+28]
      189 MOVE                             R8 R2
      190 MOVE                             R9 R2
      191 NAMECALL                         R6 R0 K0 ["sub"]
      193 CALL                             R6 3 1
      194 JUMPIFNOTEQKS                    R6 K22 ["."] ; [+21]
      196 ADDK                             R2 R2 K5 [1]
      197 JUMPIFNOTLE                      R2 R3 ; [+18]
      199 MOVE                             R9 R2
      200 MOVE                             R10 R2
      201 NAMECALL                         R7 R0 K0 ["sub"]
      203 CALL                             R7 3 1
      204 LOADB                            R6 0
      205 LOADK                            R8 K19 ["0"]
      206 JUMPIFNOTLE                      R8 R7 ; [+6]
      208 LOADK                            R8 K20 ["9"]
      209 JUMPIFLE                         R7 R8 ; [+2]
      211 LOADB                            R6 0 +1
      212 LOADB                            R6 1
      213 JUMPIFNOT                        R6 ; [+2]
      214 ADDK                             R2 R2 K5 [1]
      215 JUMPBACK                         ; [-19]
      216 JUMPIFNOTLE                      R2 R3 ; [+48]
      218 MOVE                             R8 R2
      219 MOVE                             R9 R2
      220 NAMECALL                         R6 R0 K0 ["sub"]
      222 CALL                             R6 3 1
      223 NAMECALL                         R6 R6 K23 ["lower"]
      225 CALL                             R6 1 1
      226 JUMPIFNOTEQKS                    R6 K24 ["e"] ; [+38]
      228 ADDK                             R2 R2 K5 [1]
      229 JUMPIFNOTLE                      R2 R3 ; [+16]
      231 MOVE                             R8 R2
      232 MOVE                             R9 R2
      233 NAMECALL                         R6 R0 K0 ["sub"]
      235 CALL                             R6 3 1
      236 JUMPIFEQKS                       R6 K25 ["+"] ; [+8]
      238 MOVE                             R8 R2
      239 MOVE                             R9 R2
      240 NAMECALL                         R6 R0 K0 ["sub"]
      242 CALL                             R6 3 1
      243 JUMPIFNOTEQKS                    R6 K21 ["-"] ; [+2]
      245 ADDK                             R2 R2 K5 [1]
      246 JUMPIFNOTLE                      R2 R3 ; [+18]
      248 MOVE                             R9 R2
      249 MOVE                             R10 R2
      250 NAMECALL                         R7 R0 K0 ["sub"]
      252 CALL                             R7 3 1
      253 LOADB                            R6 0
      254 LOADK                            R8 K19 ["0"]
      255 JUMPIFNOTLE                      R8 R7 ; [+6]
      257 LOADK                            R8 K20 ["9"]
      258 JUMPIFLE                         R7 R8 ; [+2]
      260 LOADB                            R6 0 +1
      261 LOADB                            R6 1
      262 JUMPIFNOT                        R6 ; [+2]
      263 ADDK                             R2 R2 K5 [1]
      264 JUMPBACK                         ; [-19]
      265 DUPTABLE                         R8 K8 [{"type", "value"}]
      266 LOADK                            R9 K26 ["number"]
      267 SETTABLEKS                       R9 R8 K6 ["type"]
      269 MOVE                             R11 R5
      270 SUBK                             R12 R2 K5 [1]
      271 NAMECALL                         R9 R0 K0 ["sub"]
      273 CALL                             R9 3 1
      274 SETTABLEKS                       R9 R8 K7 ["value"]
      276 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      278 MOVE                             R7 R1
      279 GETIMPORT                        R6 K12 [table.insert]
      281 CALL                             R6 2 0
      282 JUMP                             ; [+94]
      283 LOADK                            R6 K27 ["a"]
      284 JUMPIFNOTLE                      R6 R4 ; [+5]
      286 LOADB                            R5 1
      287 LOADK                            R6 K28 ["z"]
      288 JUMPIFLE                         R4 R6 ; [+10]
      290 LOADB                            R5 0
      291 LOADK                            R6 K29 ["A"]
      292 JUMPIFNOTLE                      R6 R4 ; [+6]
      294 LOADK                            R6 K30 ["Z"]
      295 JUMPIFLE                         R4 R6 ; [+2]
      297 LOADB                            R5 0 +1
      298 LOADB                            R5 1
      299 JUMPIFNOT                        R5 ; [+64]
      300 MOVE                             R5 R2
      301 JUMPIFNOTLE                      R2 R3 ; [+25]
      303 MOVE                             R9 R2
      304 MOVE                             R10 R2
      305 NAMECALL                         R7 R0 K0 ["sub"]
      307 CALL                             R7 3 1
      308 LOADK                            R8 K27 ["a"]
      309 JUMPIFNOTLE                      R8 R7 ; [+5]
      311 LOADB                            R6 1
      312 LOADK                            R8 K28 ["z"]
      313 JUMPIFLE                         R7 R8 ; [+10]
      315 LOADB                            R6 0
      316 LOADK                            R8 K29 ["A"]
      317 JUMPIFNOTLE                      R8 R7 ; [+6]
      319 LOADK                            R8 K30 ["Z"]
      320 JUMPIFLE                         R7 R8 ; [+2]
      322 LOADB                            R6 0 +1
      323 LOADB                            R6 1
      324 JUMPIFNOT                        R6 ; [+2]
      325 ADDK                             R2 R2 K5 [1]
      326 JUMPBACK                         ; [-26]
      327 MOVE                             R8 R5
      328 SUBK                             R9 R2 K5 [1]
      329 NAMECALL                         R6 R0 K0 ["sub"]
      331 CALL                             R6 3 1
      332 JUMPIFEQKS                       R6 K31 ["true"] ; [+5]
      334 JUMPIFEQKS                       R6 K32 ["false"] ; [+3]
      336 JUMPIFNOTEQKS                    R6 K33 ["null"] ; [+14]
      338 DUPTABLE                         R9 K8 [{"type", "value"}]
      339 LOADK                            R10 K34 ["keyword"]
      340 SETTABLEKS                       R10 R9 K6 ["type"]
      342 SETTABLEKS                       R6 R9 K7 ["value"]
      344 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      346 MOVE                             R8 R1
      347 GETIMPORT                        R7 K12 [table.insert]
      349 CALL                             R7 2 0
      350 JUMP                             ; [+26]
      351 DUPTABLE                         R9 K8 [{"type", "value"}]
      352 LOADK                            R10 K35 ["identifier"]
      353 SETTABLEKS                       R10 R9 K6 ["type"]
      355 SETTABLEKS                       R6 R9 K7 ["value"]
      357 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      359 MOVE                             R8 R1
      360 GETIMPORT                        R7 K12 [table.insert]
      362 CALL                             R7 2 0
      363 JUMP                             ; [+13]
      364 DUPTABLE                         R7 K8 [{"type", "value"}]
      365 LOADK                            R8 K36 ["operator"]
      366 SETTABLEKS                       R8 R7 K6 ["type"]
      368 SETTABLEKS                       R4 R7 K7 ["value"]
      370 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      372 MOVE                             R6 R1
      373 GETIMPORT                        R5 K12 [table.insert]
      375 CALL                             R5 2 0
      376 ADDK                             R2 R2 K5 [1]
      377 JUMPBACK                         ; [-374]
      378 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPTABLE                         R3 K4 [{"tokenize"}]
        5 SETTABLEKS                       R2 R3 K3 ["tokenize"]
        7 RETURN                           R3 1
