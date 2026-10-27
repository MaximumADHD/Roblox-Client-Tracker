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
        4 JUMPIFNOTLE                      R2 R3 ; [+352]
        6 MOVE                             R6 R2
        7 MOVE                             R7 R2
        8 NAMECALL                         R4 R0 K0 ["sub"]
       10 CALL                             R4 3 1
       11 JUMPIFEQKS                       R4 K1 [" "] ; [+7]
       13 JUMPIFEQKS                       R4 K2 ["\t"] ; [+5]
       15 JUMPIFEQKS                       R4 K3 ["\r"] ; [+3]
       17 JUMPIFNOTEQKS                    R4 K4 ["\n"] ; [+34]
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
       37 DUPTABLE                         R8 K9 [{["type"] = "whitespace", ["value"]}]
       38 MOVE                             R11 R5
       39 SUBK                             R12 R2 K5 [1]
       40 NAMECALL                         R9 R0 K0 ["sub"]
       42 CALL                             R9 3 1
       43 SETTABLEKS                       R9 R8 K8 ["value"]
       45 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       47 MOVE                             R7 R1
       48 GETIMPORT                        R6 K12 [table.insert]
       50 CALL                             R6 2 0
       51 JUMP                             ; [+304]
       52 JUMPIFNOTEQKS                    R4 K13 ["\""] ; [+72]
       54 MOVE                             R5 R2
       55 ADDK                             R2 R2 K5 [1]
       56 JUMPIFNOTLE                      R2 R3 ; [+16]
       58 MOVE                             R8 R2
       59 MOVE                             R9 R2
       60 NAMECALL                         R6 R0 K0 ["sub"]
       62 CALL                             R6 3 1
       63 JUMPIFNOTEQKS                    R6 K14 ["\\"] ; [+3]
       65 ADDK                             R2 R2 K15 [2]
       66 JUMP                             ; [+5]
       67 JUMPIFNOTEQKS                    R6 K13 ["\""] ; [+3]
       69 ADDK                             R2 R2 K5 [1]
       70 JUMP                             ; [+2]
       71 ADDK                             R2 R2 K5 [1]
       72 JUMPBACK                         ; [-17]
       73 MOVE                             R8 R5
       74 SUBK                             R9 R2 K5 [1]
       75 NAMECALL                         R6 R0 K0 ["sub"]
       77 CALL                             R6 3 1
       78 MOVE                             R7 R2
       79 JUMPIFNOTLE                      R7 R3 ; [+16]
       81 MOVE                             R10 R7
       82 MOVE                             R11 R7
       83 NAMECALL                         R8 R0 K0 ["sub"]
       85 CALL                             R8 3 1
       86 JUMPIFEQKS                       R8 K1 [" "] ; [+7]
       88 JUMPIFEQKS                       R8 K2 ["\t"] ; [+5]
       90 JUMPIFEQKS                       R8 K3 ["\r"] ; [+3]
       92 JUMPIFNOTEQKS                    R8 K4 ["\n"] ; [+3]
       94 ADDK                             R7 R7 K5 [1]
       95 JUMPBACK                         ; [-17]
       96 JUMPIFNOTLE                      R7 R3 ; [+18]
       98 MOVE                             R10 R7
       99 MOVE                             R11 R7
      100 NAMECALL                         R8 R0 K0 ["sub"]
      102 CALL                             R8 3 1
      103 JUMPIFNOTEQKS                    R8 K16 [":"] ; [+11]
      105 DUPTABLE                         R10 K18 [{["type"] = "key", ["value"]}]
      106 SETTABLEKS                       R6 R10 K8 ["value"]
      108 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      110 MOVE                             R9 R1
      111 GETIMPORT                        R8 K12 [table.insert]
      113 CALL                             R8 2 0
      114 JUMP                             ; [+241]
      115 DUPTABLE                         R10 K20 [{["type"] = "string", ["value"]}]
      116 SETTABLEKS                       R6 R10 K8 ["value"]
      118 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
      120 MOVE                             R9 R1
      121 GETIMPORT                        R8 K12 [table.insert]
      123 CALL                             R8 2 0
      124 JUMP                             ; [+231]
      125 LOADB                            R5 0
      126 LOADK                            R6 K21 ["0"]
      127 JUMPIFNOTLE                      R6 R4 ; [+6]
      129 LOADK                            R6 K22 ["9"]
      130 JUMPIFLE                         R4 R6 ; [+2]
      132 LOADB                            R5 0 +1
      133 LOADB                            R5 1
      134 JUMPIF                           R5 ; [+20]
      135 JUMPIFNOTEQKS                    R4 K23 ["-"] ; [+135]
      137 ADDK                             R5 R2 K5 [1]
      138 JUMPIFNOTLE                      R5 R3 ; [+132]
      140 ADDK                             R8 R2 K5 [1]
      141 ADDK                             R9 R2 K5 [1]
      142 NAMECALL                         R6 R0 K0 ["sub"]
      144 CALL                             R6 3 1
      145 LOADB                            R5 0
      146 LOADK                            R7 K21 ["0"]
      147 JUMPIFNOTLE                      R7 R6 ; [+6]
      149 LOADK                            R7 K22 ["9"]
      150 JUMPIFLE                         R6 R7 ; [+2]
      152 LOADB                            R5 0 +1
      153 LOADB                            R5 1
      154 JUMPIFNOT                        R5 ; [+116]
      155 MOVE                             R5 R2
      156 JUMPIFNOTEQKS                    R4 K23 ["-"] ; [+2]
      158 ADDK                             R2 R2 K5 [1]
      159 JUMPIFNOTLE                      R2 R3 ; [+18]
      161 MOVE                             R9 R2
      162 MOVE                             R10 R2
      163 NAMECALL                         R7 R0 K0 ["sub"]
      165 CALL                             R7 3 1
      166 LOADB                            R6 0
      167 LOADK                            R8 K21 ["0"]
      168 JUMPIFNOTLE                      R8 R7 ; [+6]
      170 LOADK                            R8 K22 ["9"]
      171 JUMPIFLE                         R7 R8 ; [+2]
      173 LOADB                            R6 0 +1
      174 LOADB                            R6 1
      175 JUMPIFNOT                        R6 ; [+2]
      176 ADDK                             R2 R2 K5 [1]
      177 JUMPBACK                         ; [-19]
      178 JUMPIFNOTLE                      R2 R3 ; [+28]
      180 MOVE                             R8 R2
      181 MOVE                             R9 R2
      182 NAMECALL                         R6 R0 K0 ["sub"]
      184 CALL                             R6 3 1
      185 JUMPIFNOTEQKS                    R6 K24 ["."] ; [+21]
      187 ADDK                             R2 R2 K5 [1]
      188 JUMPIFNOTLE                      R2 R3 ; [+18]
      190 MOVE                             R9 R2
      191 MOVE                             R10 R2
      192 NAMECALL                         R7 R0 K0 ["sub"]
      194 CALL                             R7 3 1
      195 LOADB                            R6 0
      196 LOADK                            R8 K21 ["0"]
      197 JUMPIFNOTLE                      R8 R7 ; [+6]
      199 LOADK                            R8 K22 ["9"]
      200 JUMPIFLE                         R7 R8 ; [+2]
      202 LOADB                            R6 0 +1
      203 LOADB                            R6 1
      204 JUMPIFNOT                        R6 ; [+2]
      205 ADDK                             R2 R2 K5 [1]
      206 JUMPBACK                         ; [-19]
      207 JUMPIFNOTLE                      R2 R3 ; [+48]
      209 MOVE                             R8 R2
      210 MOVE                             R9 R2
      211 NAMECALL                         R6 R0 K0 ["sub"]
      213 CALL                             R6 3 1
      214 NAMECALL                         R6 R6 K25 ["lower"]
      216 CALL                             R6 1 1
      217 JUMPIFNOTEQKS                    R6 K26 ["e"] ; [+38]
      219 ADDK                             R2 R2 K5 [1]
      220 JUMPIFNOTLE                      R2 R3 ; [+16]
      222 MOVE                             R8 R2
      223 MOVE                             R9 R2
      224 NAMECALL                         R6 R0 K0 ["sub"]
      226 CALL                             R6 3 1
      227 JUMPIFEQKS                       R6 K27 ["+"] ; [+8]
      229 MOVE                             R8 R2
      230 MOVE                             R9 R2
      231 NAMECALL                         R6 R0 K0 ["sub"]
      233 CALL                             R6 3 1
      234 JUMPIFNOTEQKS                    R6 K23 ["-"] ; [+2]
      236 ADDK                             R2 R2 K5 [1]
      237 JUMPIFNOTLE                      R2 R3 ; [+18]
      239 MOVE                             R9 R2
      240 MOVE                             R10 R2
      241 NAMECALL                         R7 R0 K0 ["sub"]
      243 CALL                             R7 3 1
      244 LOADB                            R6 0
      245 LOADK                            R8 K21 ["0"]
      246 JUMPIFNOTLE                      R8 R7 ; [+6]
      248 LOADK                            R8 K22 ["9"]
      249 JUMPIFLE                         R7 R8 ; [+2]
      251 LOADB                            R6 0 +1
      252 LOADB                            R6 1
      253 JUMPIFNOT                        R6 ; [+2]
      254 ADDK                             R2 R2 K5 [1]
      255 JUMPBACK                         ; [-19]
      256 DUPTABLE                         R8 K29 [{["type"] = "number", ["value"]}]
      257 MOVE                             R11 R5
      258 SUBK                             R12 R2 K5 [1]
      259 NAMECALL                         R9 R0 K0 ["sub"]
      261 CALL                             R9 3 1
      262 SETTABLEKS                       R9 R8 K8 ["value"]
      264 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
      266 MOVE                             R7 R1
      267 GETIMPORT                        R6 K12 [table.insert]
      269 CALL                             R6 2 0
      270 JUMP                             ; [+85]
      271 LOADK                            R6 K30 ["a"]
      272 JUMPIFNOTLE                      R6 R4 ; [+5]
      274 LOADB                            R5 1
      275 LOADK                            R6 K31 ["z"]
      276 JUMPIFLE                         R4 R6 ; [+10]
      278 LOADB                            R5 0
      279 LOADK                            R6 K32 ["A"]
      280 JUMPIFNOTLE                      R6 R4 ; [+6]
      282 LOADK                            R6 K33 ["Z"]
      283 JUMPIFLE                         R4 R6 ; [+2]
      285 LOADB                            R5 0 +1
      286 LOADB                            R5 1
      287 JUMPIFNOT                        R5 ; [+58]
      288 MOVE                             R5 R2
      289 JUMPIFNOTLE                      R2 R3 ; [+25]
      291 MOVE                             R9 R2
      292 MOVE                             R10 R2
      293 NAMECALL                         R7 R0 K0 ["sub"]
      295 CALL                             R7 3 1
      296 LOADK                            R8 K30 ["a"]
      297 JUMPIFNOTLE                      R8 R7 ; [+5]
      299 LOADB                            R6 1
      300 LOADK                            R8 K31 ["z"]
      301 JUMPIFLE                         R7 R8 ; [+10]
      303 LOADB                            R6 0
      304 LOADK                            R8 K32 ["A"]
      305 JUMPIFNOTLE                      R8 R7 ; [+6]
      307 LOADK                            R8 K33 ["Z"]
      308 JUMPIFLE                         R7 R8 ; [+2]
      310 LOADB                            R6 0 +1
      311 LOADB                            R6 1
      312 JUMPIFNOT                        R6 ; [+2]
      313 ADDK                             R2 R2 K5 [1]
      314 JUMPBACK                         ; [-26]
      315 MOVE                             R8 R5
      316 SUBK                             R9 R2 K5 [1]
      317 NAMECALL                         R6 R0 K0 ["sub"]
      319 CALL                             R6 3 1
      320 JUMPIFEQKS                       R6 K34 ["true"] ; [+5]
      322 JUMPIFEQKS                       R6 K35 ["false"] ; [+3]
      324 JUMPIFNOTEQKS                    R6 K36 ["null"] ; [+11]
      326 DUPTABLE                         R9 K38 [{["type"] = "keyword", ["value"]}]
      327 SETTABLEKS                       R6 R9 K8 ["value"]
      329 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      331 MOVE                             R8 R1
      332 GETIMPORT                        R7 K12 [table.insert]
      334 CALL                             R7 2 0
      335 JUMP                             ; [+20]
      336 DUPTABLE                         R9 K40 [{["type"] = "identifier", ["value"]}]
      337 SETTABLEKS                       R6 R9 K8 ["value"]
      339 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
      341 MOVE                             R8 R1
      342 GETIMPORT                        R7 K12 [table.insert]
      344 CALL                             R7 2 0
      345 JUMP                             ; [+10]
      346 DUPTABLE                         R7 K42 [{["type"] = "operator", ["value"]}]
      347 SETTABLEKS                       R4 R7 K8 ["value"]
      349 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
      351 MOVE                             R6 R1
      352 GETIMPORT                        R5 K12 [table.insert]
      354 CALL                             R5 2 0
      355 ADDK                             R2 R2 K5 [1]
      356 JUMPBACK                         ; [-353]
      357 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPTABLE                         R3 K4 [{"tokenize"}]
        5 SETTABLEKS                       R2 R3 K3 ["tokenize"]
        7 RETURN                           R3 1
