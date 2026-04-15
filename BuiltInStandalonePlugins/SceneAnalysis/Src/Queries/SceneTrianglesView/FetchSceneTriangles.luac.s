PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["triangles"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R2 K2 ["Triangles"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADN                            R1 0
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       13 GETTABLEKS                       R4 R0 K0 ["node"]
       15 GETTABLEKS                       R3 R4 K4 ["Size"]
       17 FASTCALL1                        TYPE R3 ; [+2]
       18 GETIMPORT                        R2 K6 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       23 GETTABLEKS                       R2 R0 K0 ["node"]
       25 GETTABLEKS                       R1 R2 K4 ["Size"]
       27 JUMP                             ; [+50]
       28 JUMPIFNOTEQKN                    R1 K3 [0] ; [+49]
       30 GETTABLEKS                       R3 R0 K0 ["node"]
       32 GETTABLEKS                       R2 R3 K8 ["Sizes"]
       34 JUMPIFNOT                        R2 ; [+43]
       35 GETTABLEKS                       R4 R0 K0 ["node"]
       37 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       39 FASTCALL1                        TYPE R3 ; [+2]
       40 GETIMPORT                        R2 K6 [type]
       42 CALL                             R2 1 1
       43 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+34]
       45 GETTABLEKS                       R4 R0 K0 ["node"]
       47 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       49 GETTABLEKS                       R2 R3 K1 ["triangles"]
       51 JUMPIF                           R2 ; [+8]
       52 GETTABLEKS                       R4 R0 K0 ["node"]
       54 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       56 GETTABLEKS                       R2 R3 K2 ["Triangles"]
       58 JUMPIF                           R2 ; [+1]
       59 LOADN                            R2 0
       60 MOVE                             R1 R2
       61 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       63 GETIMPORT                        R2 K11 [next]
       65 GETTABLEKS                       R4 R0 K0 ["node"]
       67 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       69 CALL                             R2 1 2
       70 FASTCALL1                        TYPE R3 ; [+3]
       71 MOVE                             R5 R3
       72 GETIMPORT                        R4 K6 [type]
       74 CALL                             R4 1 1
       75 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+2]
       77 MOVE                             R1 R3
       78 FASTCALL1                        TYPE R1 ; [+3]
       79 MOVE                             R3 R1
       80 GETIMPORT                        R2 K6 [type]
       82 CALL                             R2 1 1
       83 JUMPIFEQKS                       R2 K7 ["number"] ; [+2]
       85 LOADN                            R1 0
       86 LOADK                            R2 K12 [1000000]
       87 JUMPIFNOTLE                      R2 R1 ; [+7]
       89 GETIMPORT                        R2 K15 [string.format]
       91 LOADK                            R3 K16 ["%.1fM"]
       92 DIVK                             R4 R1 K12 [1000000]
       93 CALL                             R2 2 -1
       94 RETURN                           R2 -1
       95 LOADN                            R2 232
       96 JUMPIFNOTLE                      R2 R1 ; [+7]
       98 GETIMPORT                        R2 K15 [string.format]
      100 LOADK                            R3 K17 ["%.1fK"]
      101 DIVK                             R4 R1 K18 [1000]
      102 CALL                             R2 2 -1
      103 RETURN                           R2 -1
      104 FASTCALL1                        TOSTRING R1 ; [+3]
      105 MOVE                             R3 R1
      106 GETIMPORT                        R2 K20 [tostring]
      108 CALL                             R2 1 1
      109 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["drawcalls"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R2 K2 ["Drawcalls"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADN                            R1 0
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       13 GETTABLEKS                       R4 R0 K0 ["node"]
       15 GETTABLEKS                       R3 R4 K4 ["Size"]
       17 FASTCALL1                        TYPE R3 ; [+2]
       18 GETIMPORT                        R2 K6 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       23 GETTABLEKS                       R2 R0 K0 ["node"]
       25 GETTABLEKS                       R1 R2 K4 ["Size"]
       27 JUMP                             ; [+50]
       28 JUMPIFNOTEQKN                    R1 K3 [0] ; [+49]
       30 GETTABLEKS                       R3 R0 K0 ["node"]
       32 GETTABLEKS                       R2 R3 K8 ["Sizes"]
       34 JUMPIFNOT                        R2 ; [+43]
       35 GETTABLEKS                       R4 R0 K0 ["node"]
       37 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       39 FASTCALL1                        TYPE R3 ; [+2]
       40 GETIMPORT                        R2 K6 [type]
       42 CALL                             R2 1 1
       43 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+34]
       45 GETTABLEKS                       R4 R0 K0 ["node"]
       47 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       49 GETTABLEKS                       R2 R3 K1 ["drawcalls"]
       51 JUMPIF                           R2 ; [+8]
       52 GETTABLEKS                       R4 R0 K0 ["node"]
       54 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       56 GETTABLEKS                       R2 R3 K2 ["Drawcalls"]
       58 JUMPIF                           R2 ; [+1]
       59 LOADN                            R2 0
       60 MOVE                             R1 R2
       61 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       63 GETIMPORT                        R2 K11 [next]
       65 GETTABLEKS                       R4 R0 K0 ["node"]
       67 GETTABLEKS                       R3 R4 K8 ["Sizes"]
       69 CALL                             R2 1 2
       70 FASTCALL1                        TYPE R3 ; [+3]
       71 MOVE                             R5 R3
       72 GETIMPORT                        R4 K6 [type]
       74 CALL                             R4 1 1
       75 JUMPIFNOTEQKS                    R4 K7 ["number"] ; [+2]
       77 MOVE                             R1 R3
       78 FASTCALL1                        TYPE R1 ; [+3]
       79 MOVE                             R3 R1
       80 GETIMPORT                        R2 K6 [type]
       82 CALL                             R2 1 1
       83 JUMPIFEQKS                       R2 K7 ["number"] ; [+2]
       85 LOADN                            R1 0
       86 LOADK                            R2 K12 [1000000]
       87 JUMPIFNOTLE                      R2 R1 ; [+7]
       89 GETIMPORT                        R2 K15 [string.format]
       91 LOADK                            R3 K16 ["%.1fM"]
       92 DIVK                             R4 R1 K12 [1000000]
       93 CALL                             R2 2 -1
       94 RETURN                           R2 -1
       95 LOADN                            R2 232
       96 JUMPIFNOTLE                      R2 R1 ; [+7]
       98 GETIMPORT                        R2 K15 [string.format]
      100 LOADK                            R3 K17 ["%.1fK"]
      101 DIVK                             R4 R1 K18 [1000]
      102 CALL                             R2 2 -1
      103 RETURN                           R2 -1
      104 FASTCALL1                        TOSTRING R1 ; [+3]
      105 MOVE                             R3 R1
      106 GETIMPORT                        R2 K20 [tostring]
      108 CALL                             R2 1 1
      109 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R1 R4
        5 ORK                              R2 R2 K0 [0]
        6 JUMPIFNOTEQKNIL                  R3 ; [+2]
        8 LOADB                            R3 1
        9 GETTABLEKS                       R4 R0 K1 ["Children"]
       11 JUMPIFNOT                        R4 ; [+9]
       12 GETIMPORT                        R5 K3 [next]
       14 GETTABLEKS                       R6 R0 K1 ["Children"]
       16 CALL                             R5 1 1
       17 JUMPIFNOTEQKNIL                  R5 ; [+2]
       19 LOADB                            R4 0 +1
       20 LOADB                            R4 1
       21 JUMPIFNOT                        R4 ; [+15]
       22 GETIMPORT                        R5 K5 [pairs]
       24 GETTABLEKS                       R6 R0 K1 ["Children"]
       26 CALL                             R5 1 3
       27 FORGPREP_NEXT                    R5
       28 GETUPVAL                         R10 0
       29 MOVE                             R11 R9
       30 MOVE                             R12 R1
       31 ADDK                             R13 R2 K6 [1]
       32 LOADB                            R14 0
       33 CALL                             R10 4 0
       34 FORGLOOP                         R5 2 ; [-7]
       36 RETURN                           R1 1
       37 JUMPIF                           R3 ; [+11]
       38 DUPTABLE                         R7 K9 [{"node", "depth"}]
       39 SETTABLEKS                       R0 R7 K7 ["node"]
       41 SETTABLEKS                       R2 R7 K8 ["depth"]
       43 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       45 MOVE                             R6 R1
       46 GETIMPORT                        R5 K12 [table.insert]
       48 CALL                             R5 2 0
       49 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["node"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R4 R1 K0 ["node"]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R3 R4 R5
        8 GETUPVAL                         R4 0
        9 JUMPIFEQKS                       R4 K1 ["triangles"] ; [+7]
       11 GETUPVAL                         R4 0
       12 JUMPIFEQKS                       R4 K2 ["size"] ; [+4]
       14 GETUPVAL                         R4 0
       15 JUMPIFNOTEQKS                    R4 K3 ["drawcalls"] ; [+207]
       17 FASTCALL1                        TYPE R2 ; [+3]
       18 MOVE                             R5 R2
       19 GETIMPORT                        R4 K5 [type]
       21 CALL                             R4 1 1
       22 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+37]
       24 GETUPVAL                         R5 0
       25 GETTABLE                         R4 R2 R5
       26 JUMPIF                           R4 ; [+6]
       27 GETTABLEKS                       R5 R0 K0 ["node"]
       29 GETUPVAL                         R6 0
       30 GETTABLE                         R4 R5 R6
       31 JUMPIF                           R4 ; [+1]
       32 LOADN                            R4 0
       33 MOVE                             R2 R4
       34 JUMPIFNOTEQKN                    R2 K7 [0] ; [+85]
       36 GETTABLEKS                       R5 R0 K0 ["node"]
       38 GETTABLEKS                       R4 R5 K8 ["Sizes"]
       40 JUMPIFNOT                        R4 ; [+79]
       41 GETIMPORT                        R4 K10 [next]
       43 GETTABLEKS                       R6 R0 K0 ["node"]
       45 GETTABLEKS                       R5 R6 K8 ["Sizes"]
       47 CALL                             R4 1 2
       48 FASTCALL1                        TYPE R5 ; [+3]
       49 MOVE                             R8 R5
       50 GETIMPORT                        R7 K5 [type]
       52 CALL                             R7 1 1
       53 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+3]
       55 MOVE                             R6 R5
       56 JUMPIF                           R6 ; [+1]
       57 LOADN                            R6 0
       58 MOVE                             R2 R6
       59 JUMP                             ; [+60]
       60 FASTCALL1                        TYPE R2 ; [+3]
       61 MOVE                             R5 R2
       62 GETIMPORT                        R4 K5 [type]
       64 CALL                             R4 1 1
       65 JUMPIFNOTEQKS                    R4 K12 ["nil"] ; [+54]
       67 GETTABLEKS                       R5 R0 K0 ["node"]
       69 GETTABLEKS                       R4 R5 K8 ["Sizes"]
       71 JUMPIFNOT                        R4 ; [+28]
       72 GETTABLEKS                       R6 R0 K0 ["node"]
       74 GETTABLEKS                       R5 R6 K8 ["Sizes"]
       76 GETUPVAL                         R6 0
       77 GETTABLE                         R4 R5 R6
       78 ORK                              R2 R4 K7 [0]
       79 JUMPIFNOTEQKN                    R2 K7 [0] ; [+40]
       81 GETIMPORT                        R4 K10 [next]
       83 GETTABLEKS                       R6 R0 K0 ["node"]
       85 GETTABLEKS                       R5 R6 K8 ["Sizes"]
       87 CALL                             R4 1 2
       88 FASTCALL1                        TYPE R5 ; [+3]
       89 MOVE                             R8 R5
       90 GETIMPORT                        R7 K5 [type]
       92 CALL                             R7 1 1
       93 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+3]
       95 MOVE                             R6 R5
       96 JUMPIF                           R6 ; [+1]
       97 LOADN                            R6 0
       98 MOVE                             R2 R6
       99 JUMP                             ; [+20]
      100 GETTABLEKS                       R5 R0 K0 ["node"]
      102 GETUPVAL                         R6 0
      103 GETTABLE                         R4 R5 R6
      104 JUMPIF                           R4 ; [+6]
      105 GETTABLEKS                       R5 R0 K0 ["node"]
      107 GETTABLEKS                       R4 R5 K13 ["Size"]
      109 JUMPIF                           R4 ; [+1]
      110 LOADN                            R4 0
      111 MOVE                             R2 R4
      112 FASTCALL1                        TYPE R2 ; [+3]
      113 MOVE                             R5 R2
      114 GETIMPORT                        R4 K5 [type]
      116 CALL                             R4 1 1
      117 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+2]
      119 LOADN                            R2 0
      120 FASTCALL1                        TYPE R3 ; [+3]
      121 MOVE                             R5 R3
      122 GETIMPORT                        R4 K5 [type]
      124 CALL                             R4 1 1
      125 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+37]
      127 GETUPVAL                         R5 0
      128 GETTABLE                         R4 R3 R5
      129 JUMPIF                           R4 ; [+6]
      130 GETTABLEKS                       R5 R1 K0 ["node"]
      132 GETUPVAL                         R6 0
      133 GETTABLE                         R4 R5 R6
      134 JUMPIF                           R4 ; [+1]
      135 LOADN                            R4 0
      136 MOVE                             R3 R4
      137 JUMPIFNOTEQKN                    R3 K7 [0] ; [+85]
      139 GETTABLEKS                       R5 R1 K0 ["node"]
      141 GETTABLEKS                       R4 R5 K8 ["Sizes"]
      143 JUMPIFNOT                        R4 ; [+79]
      144 GETIMPORT                        R4 K10 [next]
      146 GETTABLEKS                       R6 R1 K0 ["node"]
      148 GETTABLEKS                       R5 R6 K8 ["Sizes"]
      150 CALL                             R4 1 2
      151 FASTCALL1                        TYPE R5 ; [+3]
      152 MOVE                             R8 R5
      153 GETIMPORT                        R7 K5 [type]
      155 CALL                             R7 1 1
      156 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+3]
      158 MOVE                             R6 R5
      159 JUMPIF                           R6 ; [+1]
      160 LOADN                            R6 0
      161 MOVE                             R3 R6
      162 JUMP                             ; [+60]
      163 FASTCALL1                        TYPE R3 ; [+3]
      164 MOVE                             R5 R3
      165 GETIMPORT                        R4 K5 [type]
      167 CALL                             R4 1 1
      168 JUMPIFNOTEQKS                    R4 K12 ["nil"] ; [+54]
      170 GETTABLEKS                       R5 R1 K0 ["node"]
      172 GETTABLEKS                       R4 R5 K8 ["Sizes"]
      174 JUMPIFNOT                        R4 ; [+28]
      175 GETTABLEKS                       R6 R1 K0 ["node"]
      177 GETTABLEKS                       R5 R6 K8 ["Sizes"]
      179 GETUPVAL                         R6 0
      180 GETTABLE                         R4 R5 R6
      181 ORK                              R3 R4 K7 [0]
      182 JUMPIFNOTEQKN                    R3 K7 [0] ; [+40]
      184 GETIMPORT                        R4 K10 [next]
      186 GETTABLEKS                       R6 R1 K0 ["node"]
      188 GETTABLEKS                       R5 R6 K8 ["Sizes"]
      190 CALL                             R4 1 2
      191 FASTCALL1                        TYPE R5 ; [+3]
      192 MOVE                             R8 R5
      193 GETIMPORT                        R7 K5 [type]
      195 CALL                             R7 1 1
      196 JUMPIFNOTEQKS                    R7 K11 ["number"] ; [+3]
      198 MOVE                             R6 R5
      199 JUMPIF                           R6 ; [+1]
      200 LOADN                            R6 0
      201 MOVE                             R3 R6
      202 JUMP                             ; [+20]
      203 GETTABLEKS                       R5 R1 K0 ["node"]
      205 GETUPVAL                         R6 0
      206 GETTABLE                         R4 R5 R6
      207 JUMPIF                           R4 ; [+6]
      208 GETTABLEKS                       R5 R1 K0 ["node"]
      210 GETTABLEKS                       R4 R5 K13 ["Size"]
      212 JUMPIF                           R4 ; [+1]
      213 LOADN                            R4 0
      214 MOVE                             R3 R4
      215 FASTCALL1                        TYPE R3 ; [+3]
      216 MOVE                             R5 R3
      217 GETIMPORT                        R4 K5 [type]
      219 CALL                             R4 1 1
      220 JUMPIFNOTEQKS                    R4 K6 ["table"] ; [+2]
      222 LOADN                            R3 0
      223 JUMPIFNOTEQKNIL                  R2 ; [+5]
      225 JUMPIFNOTEQKNIL                  R3 ; [+3]
      227 LOADB                            R4 0
      228 RETURN                           R4 1
      229 JUMPIFNOTEQKNIL                  R2 ; [+12]
      231 GETUPVAL                         R5 1
      232 GETUPVAL                         R8 2
      233 GETTABLEKS                       R7 R8 K14 ["Direction"]
      235 GETTABLEKS                       R6 R7 K15 ["desc"]
      237 JUMPIFEQ                         R5 R6 ; [+2]
      239 LOADB                            R4 0 +1
      240 LOADB                            R4 1
      241 RETURN                           R4 1
      242 JUMPIFNOTEQKNIL                  R3 ; [+12]
      244 GETUPVAL                         R5 1
      245 GETUPVAL                         R8 2
      246 GETTABLEKS                       R7 R8 K14 ["Direction"]
      248 GETTABLEKS                       R6 R7 K16 ["asc"]
      250 JUMPIFEQ                         R5 R6 ; [+2]
      252 LOADB                            R4 0 +1
      253 LOADB                            R4 1
      254 RETURN                           R4 1
      255 FASTCALL1                        TYPE R2 ; [+3]
      256 MOVE                             R5 R2
      257 GETIMPORT                        R4 K5 [type]
      259 CALL                             R4 1 1
      260 JUMPIFNOTEQKS                    R4 K11 ["number"] ; [+26]
      262 FASTCALL1                        TYPE R3 ; [+3]
      263 MOVE                             R5 R3
      264 GETIMPORT                        R4 K5 [type]
      266 CALL                             R4 1 1
      267 JUMPIFNOTEQKS                    R4 K11 ["number"] ; [+19]
      269 GETUPVAL                         R4 1
      270 GETUPVAL                         R7 2
      271 GETTABLEKS                       R6 R7 K14 ["Direction"]
      273 GETTABLEKS                       R5 R6 K16 ["asc"]
      275 JUMPIFNOTEQ                      R4 R5 ; [+6]
      277 JUMPIFLT                         R2 R3 ; [+2]
      279 LOADB                            R4 0 +1
      280 LOADB                            R4 1
      281 RETURN                           R4 1
      282 JUMPIFLT                         R3 R2 ; [+2]
      284 LOADB                            R4 0 +1
      285 LOADB                            R4 1
      286 RETURN                           R4 1
      287 FASTCALL1                        TOSTRING R2 ; [+3]
      288 MOVE                             R5 R2
      289 GETIMPORT                        R4 K18 [tostring]
      291 CALL                             R4 1 1
      292 NAMECALL                         R4 R4 K19 ["lower"]
      294 CALL                             R4 1 1
      295 FASTCALL1                        TOSTRING R3 ; [+3]
      296 MOVE                             R6 R3
      297 GETIMPORT                        R5 K18 [tostring]
      299 CALL                             R5 1 1
      300 NAMECALL                         R5 R5 K19 ["lower"]
      302 CALL                             R5 1 1
      303 GETUPVAL                         R6 1
      304 GETUPVAL                         R9 2
      305 GETTABLEKS                       R8 R9 K14 ["Direction"]
      307 GETTABLEKS                       R7 R8 K16 ["asc"]
      309 JUMPIFNOTEQ                      R6 R7 ; [+6]
      311 JUMPIFLT                         R4 R5 ; [+2]
      313 LOADB                            R6 0 +1
      314 LOADB                            R6 1
      315 RETURN                           R6 1
      316 JUMPIFLT                         R5 R4 ; [+2]
      318 LOADB                            R6 0 +1
      319 LOADB                            R6 1
      320 RETURN                           R6 1

PROTO_10:
        0 GETTABLEKS                       R2 R1 K0 ["column"]
        2 GETTABLEKS                       R3 R1 K1 ["direction"]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K2 ["Column"]
        7 GETTABLEKS                       R4 R5 K3 ["none"]
        9 JUMPIFNOTEQ                      R2 R4 ; [+15]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R11 R9 K4 ["node"]
       19 GETTABLEKS                       R10 R11 K5 ["Id"]
       21 SETTABLE                         R10 R4 R8
       22 FORGLOOP                         R5 2 ; [-6]
       24 RETURN                           R4 1
       25 GETIMPORT                        R4 K8 [table.clone]
       27 MOVE                             R5 R0
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K10 [table.sort]
       31 MOVE                             R6 R4
       32 NEWCLOSURE                       R7 P0
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          UPVAL U0
       36 CALL                             R5 2 0
       37 NEWTABLE                         R5 0 0
       39 MOVE                             R6 R4
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 FORGPREP                         R6
       43 GETTABLEKS                       R12 R10 K4 ["node"]
       45 GETTABLEKS                       R11 R12 K5 ["Id"]
       47 SETTABLE                         R11 R5 R9
       48 FORGLOOP                         R6 2 ; [-6]
       50 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["Direction"]
        7 GETTABLEKS                       R2 R3 K2 ["desc"]
        9 GETTABLEKS                       R3 R1 K3 ["column"]
       11 JUMPIFNOTEQ                      R3 R0 ; [+21]
       13 GETTABLEKS                       R3 R1 K4 ["direction"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R5 R6 K1 ["Direction"]
       18 GETTABLEKS                       R4 R5 K5 ["asc"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K1 ["Direction"]
       25 GETTABLEKS                       R2 R3 K2 ["desc"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R4 1
       29 GETTABLEKS                       R3 R4 K1 ["Direction"]
       31 GETTABLEKS                       R2 R3 K5 ["asc"]
       33 GETUPVAL                         R3 2
       34 DUPTABLE                         R4 K6 [{"column", "direction"}]
       35 SETTABLEKS                       R0 R4 K3 ["column"]
       37 SETTABLEKS                       R2 R4 K4 ["direction"]
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R5 4
       44 GETTABLEKS                       R4 R5 K0 ["get"]
       46 CALL                             R4 0 1
       47 GETUPVAL                         R5 5
       48 MOVE                             R6 R4
       49 CALL                             R5 1 1
       50 GETUPVAL                         R6 6
       51 MOVE                             R7 R5
       52 MOVE                             R8 R3
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 7
       55 MOVE                             R8 R6
       56 CALL                             R7 1 0
       57 GETUPVAL                         R7 8
       58 LENGTH                           R8 R6
       59 CALL                             R7 1 0
       60 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 NEWTABLE                         R1 0 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 3
        8 LOADN                            R1 0
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 4
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K0 ["nodeById"]
       15 GETUPVAL                         R0 4
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K1 ["parentById"]
       20 GETUPVAL                         R0 4
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K2 ["instanceOrder"]
       25 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 JUMPIFNOTEQ                      R6 R0 ; [+2]
       10 RETURN                           R5 1
       11 FORGLOOP                         R2 2 ; [-4]
       13 LOADNIL                          R2
       14 RETURN                           R2 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R1 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["parentById"]
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+6]
        6 ADDK                             R1 R1 K1 [1]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K0 ["parentById"]
       10 GETTABLE                         R2 R3 R2
       11 JUMPBACK                         ; [-7]
       12 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLE                         R2 R1 R0
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K1 ["getNodeById"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 DUPTABLE                         R4 K6 [{"node", "depth", "hasChildren", "id"}]
       17 SETTABLEKS                       R3 R4 K2 ["node"]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R5 R6 K7 ["getDepth"]
       22 MOVE                             R6 R2
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R5 R4 K3 ["depth"]
       26 GETTABLEKS                       R5 R3 K8 ["Children"]
       28 JUMPIFNOT                        R5 ; [+9]
       29 GETIMPORT                        R6 K10 [next]
       31 GETTABLEKS                       R7 R3 K8 ["Children"]
       33 CALL                             R6 1 1
       34 JUMPIFNOTEQKNIL                  R6 ; [+2]
       36 LOADB                            R5 0 +1
       37 LOADB                            R5 1
       38 SETTABLEKS                       R5 R4 K4 ["hasChildren"]
       40 SETTABLEKS                       R2 R4 K5 ["id"]
       42 RETURN                           R4 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["Id"]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K1 [1]
        8 SETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R0 K2 ["Name"]
       11 JUMPIFNOT                        R2 ; [+15]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K3 ["TriangleCategories"]
       15 GETTABLEKS                       R4 R0 K2 ["Name"]
       17 GETTABLE                         R2 R3 R4
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R3 R4 K3 ["TriangleCategories"]
       22 GETTABLEKS                       R4 R0 K2 ["Name"]
       24 GETTABLE                         R2 R3 R4
       25 SETTABLEKS                       R2 R0 K4 ["Color"]
       27 GETTABLEKS                       R2 R0 K0 ["Id"]
       29 JUMPIFNOT                        R2 ; [+13]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R2 R3 K5 ["nodeById"]
       33 GETTABLEKS                       R3 R0 K0 ["Id"]
       35 SETTABLE                         R0 R2 R3
       36 JUMPIFNOT                        R1 ; [+6]
       37 GETUPVAL                         R3 2
       38 GETTABLEKS                       R2 R3 K6 ["parentById"]
       40 GETTABLEKS                       R3 R0 K0 ["Id"]
       42 SETTABLE                         R1 R2 R3
       43 GETTABLEKS                       R2 R0 K7 ["Children"]
       45 JUMPIFNOT                        R2 ; [+9]
       46 GETIMPORT                        R3 K9 [next]
       48 GETTABLEKS                       R4 R0 K7 ["Children"]
       50 CALL                             R3 1 1
       51 JUMPIFNOTEQKNIL                  R3 ; [+2]
       53 LOADB                            R2 0 +1
       54 LOADB                            R2 1
       55 JUMPIFNOT                        R2 ; [+12]
       56 GETTABLEKS                       R3 R0 K7 ["Children"]
       58 LOADNIL                          R4
       59 LOADNIL                          R5
       60 FORGPREP                         R3
       61 GETUPVAL                         R8 3
       62 MOVE                             R9 R7
       63 GETTABLEKS                       R10 R0 K0 ["Id"]
       65 CALL                             R8 2 0
       66 FORGLOOP                         R3 2 ; [-6]
       68 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchSceneTriangles"]
        2 NEWTABLE                         R4 0 0
        4 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["reset"]
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 2
       13 RETURN                           R2 1
       14 GETUPVAL                         R2 1
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K3 ["nodeById"]
       19 GETUPVAL                         R2 1
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K4 ["parentById"]
       24 LOADN                            R2 1
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          REF R2
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R3
       30 MOVE                             R4 R3
       31 MOVE                             R5 R1
       32 LOADNIL                          R6
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 4
       35 MOVE                             R5 R1
       36 CALL                             R4 1 1
       37 GETUPVAL                         R6 5
       38 GETTABLEKS                       R5 R6 K5 ["get"]
       40 CALL                             R5 0 1
       41 GETUPVAL                         R6 6
       42 MOVE                             R7 R4
       43 MOVE                             R8 R5
       44 CALL                             R6 2 1
       45 GETUPVAL                         R7 7
       46 MOVE                             R8 R1
       47 CALL                             R7 1 0
       48 GETUPVAL                         R7 8
       49 MOVE                             R8 R1
       50 CALL                             R7 1 0
       51 GETUPVAL                         R7 9
       52 MOVE                             R8 R6
       53 CALL                             R7 1 0
       54 GETUPVAL                         R7 10
       55 LENGTH                           R8 R6
       56 CALL                             R7 1 0
       57 CLOSEUPVALS                      R2
       58 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"column", "direction"}]
        3 SETTABLEKS                       R1 R5 K0 ["column"]
        5 SETTABLEKS                       R2 R5 K1 ["direction"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R5 R1 K6 ["Src"]
       13 GETTABLEKS                       R4 R5 K7 ["Util"]
       15 GETTABLEKS                       R3 R4 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R1 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K9 ["Resources"]
       24 GETTABLEKS                       R4 R5 K10 ["ColorRamps"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K11 ["Observable"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R1 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K7 ["Util"]
       42 GETTABLEKS                       R6 R7 K12 ["deepFreeze"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R1 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K7 ["Util"]
       51 GETTABLEKS                       R7 R8 K13 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 0 3
       56 DUPTABLE                         R8 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       57 LOADK                            R9 K24 ["name"]
       58 SETTABLEKS                       R9 R8 K14 ["id"]
       60 LOADK                            R9 K25 ["Name"]
       61 SETTABLEKS                       R9 R8 K15 ["headerText"]
       63 LOADK                            R9 K25 ["Name"]
       64 SETTABLEKS                       R9 R8 K16 ["headerKey"]
       66 LOADK                            R9 K24 ["name"]
       67 SETTABLEKS                       R9 R8 K17 ["sortKey"]
       69 LOADK                            R9 K26 [0.5]
       70 SETTABLEKS                       R9 R8 K18 ["width"]
       72 LOADN                            R9 200
       73 SETTABLEKS                       R9 R8 K19 ["idealWidth"]
       75 LOADN                            R9 1
       76 SETTABLEKS                       R9 R8 K20 ["priority"]
       78 LOADN                            R9 1
       79 SETTABLEKS                       R9 R8 K21 ["order"]
       81 DUPCLOSURE                       R9 K27 [PROTO_0]
       82 SETTABLEKS                       R9 R8 K22 ["cell"]
       84 DUPTABLE                         R9 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       85 LOADK                            R10 K28 ["triangles"]
       86 SETTABLEKS                       R10 R9 K14 ["id"]
       88 LOADK                            R10 K29 ["Triangles"]
       89 SETTABLEKS                       R10 R9 K15 ["headerText"]
       91 LOADK                            R10 K29 ["Triangles"]
       92 SETTABLEKS                       R10 R9 K16 ["headerKey"]
       94 LOADK                            R10 K28 ["triangles"]
       95 SETTABLEKS                       R10 R9 K17 ["sortKey"]
       97 LOADK                            R10 K30 [0.25]
       98 SETTABLEKS                       R10 R9 K18 ["width"]
      100 LOADN                            R10 90
      101 SETTABLEKS                       R10 R9 K19 ["idealWidth"]
      103 LOADN                            R10 2
      104 SETTABLEKS                       R10 R9 K20 ["priority"]
      106 LOADN                            R10 2
      107 SETTABLEKS                       R10 R9 K21 ["order"]
      109 DUPCLOSURE                       R10 K31 [PROTO_1]
      110 SETTABLEKS                       R10 R9 K22 ["cell"]
      112 DUPTABLE                         R10 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      113 LOADK                            R11 K32 ["drawcalls"]
      114 SETTABLEKS                       R11 R10 K14 ["id"]
      116 LOADK                            R11 K33 ["Drawcalls"]
      117 SETTABLEKS                       R11 R10 K15 ["headerText"]
      119 LOADK                            R11 K33 ["Drawcalls"]
      120 SETTABLEKS                       R11 R10 K16 ["headerKey"]
      122 LOADK                            R11 K32 ["drawcalls"]
      123 SETTABLEKS                       R11 R10 K17 ["sortKey"]
      125 LOADK                            R11 K30 [0.25]
      126 SETTABLEKS                       R11 R10 K18 ["width"]
      128 LOADN                            R11 90
      129 SETTABLEKS                       R11 R10 K19 ["idealWidth"]
      131 LOADN                            R11 3
      132 SETTABLEKS                       R11 R10 K20 ["priority"]
      134 LOADN                            R11 3
      135 SETTABLEKS                       R11 R10 K21 ["order"]
      137 DUPCLOSURE                       R11 K34 [PROTO_2]
      138 SETTABLEKS                       R11 R10 K22 ["cell"]
      140 SETLIST                          R7 R8 3 [1]
      142 MOVE                             R8 R7
      143 LOADNIL                          R9
      144 LOADNIL                          R10
      145 FORGPREP                         R8
      146 MOVE                             R13 R6
      147 GETTABLEKS                       R14 R12 K15 ["headerText"]
      149 CALL                             R13 1 1
      150 SETTABLEKS                       R13 R12 K35 ["minWidth"]
      152 FORGLOOP                         R8 2 ; [-7]
      154 NEWTABLE                         R8 0 0
      156 SETTABLEKS                       R8 R0 K36 ["instanceOrder"]
      158 NEWTABLE                         R8 0 0
      160 SETTABLEKS                       R8 R0 K37 ["nodeById"]
      162 NEWTABLE                         R8 0 0
      164 SETTABLEKS                       R8 R0 K38 ["parentById"]
      166 GETIMPORT                        R8 K41 [table.freeze]
      168 DUPTABLE                         R9 K44 [{"Column", "Direction"}]
      169 GETIMPORT                        R10 K41 [table.freeze]
      171 DUPTABLE                         R11 K46 [{"none", "name", "triangles", "drawcalls"}]
      172 LOADK                            R12 K45 ["none"]
      173 SETTABLEKS                       R12 R11 K45 ["none"]
      175 LOADK                            R12 K24 ["name"]
      176 SETTABLEKS                       R12 R11 K24 ["name"]
      178 LOADK                            R12 K28 ["triangles"]
      179 SETTABLEKS                       R12 R11 K28 ["triangles"]
      181 LOADK                            R12 K32 ["drawcalls"]
      182 SETTABLEKS                       R12 R11 K32 ["drawcalls"]
      184 CALL                             R10 1 1
      185 SETTABLEKS                       R10 R9 K42 ["Column"]
      187 GETIMPORT                        R10 K41 [table.freeze]
      189 DUPTABLE                         R11 K49 [{"asc", "desc"}]
      190 LOADK                            R12 K47 ["asc"]
      191 SETTABLEKS                       R12 R11 K47 ["asc"]
      193 LOADK                            R12 K48 ["desc"]
      194 SETTABLEKS                       R12 R11 K48 ["desc"]
      196 CALL                             R10 1 1
      197 SETTABLEKS                       R10 R9 K43 ["Direction"]
      199 CALL                             R8 1 1
      200 MOVE                             R9 R5
      201 DUPTABLE                         R10 K52 [{"Name", "Size", "Children"}]
      202 LOADK                            R11 K53 ["Root"]
      203 SETTABLEKS                       R11 R10 K25 ["Name"]
      205 LOADN                            R11 0
      206 SETTABLEKS                       R11 R10 K50 ["Size"]
      208 NEWTABLE                         R11 0 0
      210 SETTABLEKS                       R11 R10 K51 ["Children"]
      212 CALL                             R9 1 1
      213 GETTABLEKS                       R10 R4 K54 ["create"]
      215 MOVE                             R11 R9
      216 CALL                             R10 1 2
      217 GETTABLEKS                       R12 R4 K54 ["create"]
      219 NEWTABLE                         R13 0 0
      221 CALL                             R12 1 2
      222 GETTABLEKS                       R14 R4 K54 ["create"]
      224 MOVE                             R15 R5
      225 DUPTABLE                         R16 K57 [{"column", "direction"}]
      226 GETTABLEKS                       R18 R8 K42 ["Column"]
      228 GETTABLEKS                       R17 R18 K28 ["triangles"]
      230 SETTABLEKS                       R17 R16 K55 ["column"]
      232 GETTABLEKS                       R18 R8 K43 ["Direction"]
      234 GETTABLEKS                       R17 R18 K48 ["desc"]
      236 SETTABLEKS                       R17 R16 K56 ["direction"]
      238 CALL                             R15 1 -1
      239 CALL                             R14 -1 2
      240 GETTABLEKS                       R16 R4 K54 ["create"]
      242 LOADN                            R17 0
      243 CALL                             R16 1 2
      244 DUPCLOSURE                       R18 K58 [PROTO_3]
      245 CAPTURE                          VAL R10
      246 SETTABLEKS                       R18 R0 K59 ["getNodesObservable"]
      248 DUPCLOSURE                       R18 K60 [PROTO_4]
      249 CAPTURE                          VAL R12
      250 SETTABLEKS                       R18 R0 K61 ["getOrderObservable"]
      252 DUPCLOSURE                       R18 K62 [PROTO_5]
      253 CAPTURE                          VAL R14
      254 SETTABLEKS                       R18 R0 K63 ["getSortStateObservable"]
      256 DUPCLOSURE                       R18 K64 [PROTO_6]
      257 CAPTURE                          VAL R16
      258 SETTABLEKS                       R18 R0 K65 ["getTotalCountObservable"]
      260 DUPCLOSURE                       R18 K66 [PROTO_7]
      261 CAPTURE                          VAL R7
      262 SETTABLEKS                       R18 R0 K67 ["getColumns"]
      264 DUPCLOSURE                       R18 K68 [PROTO_8]
      265 CAPTURE                          VAL R18
      266 DUPCLOSURE                       R19 K69 [PROTO_10]
      267 CAPTURE                          VAL R8
      268 DUPCLOSURE                       R20 K70 [PROTO_11]
      269 CAPTURE                          VAL R14
      270 CAPTURE                          VAL R8
      271 CAPTURE                          VAL R5
      272 CAPTURE                          VAL R15
      273 CAPTURE                          VAL R10
      274 CAPTURE                          VAL R18
      275 CAPTURE                          VAL R19
      276 CAPTURE                          VAL R13
      277 CAPTURE                          VAL R17
      278 SETTABLEKS                       R20 R0 K71 ["setSort"]
      280 DUPCLOSURE                       R20 K72 [PROTO_12]
      281 CAPTURE                          VAL R11
      282 CAPTURE                          VAL R9
      283 CAPTURE                          VAL R13
      284 CAPTURE                          VAL R17
      285 CAPTURE                          VAL R0
      286 SETTABLEKS                       R20 R0 K73 ["reset"]
      288 DUPCLOSURE                       R20 K74 [PROTO_13]
      289 CAPTURE                          VAL R12
      290 SETTABLEKS                       R20 R0 K75 ["getIndexForId"]
      292 DUPCLOSURE                       R20 K76 [PROTO_14]
      293 CAPTURE                          VAL R0
      294 SETTABLEKS                       R20 R0 K77 ["getNodeById"]
      296 DUPCLOSURE                       R20 K78 [PROTO_15]
      297 CAPTURE                          VAL R0
      298 SETTABLEKS                       R20 R0 K79 ["getDepth"]
      300 DUPCLOSURE                       R20 K80 [PROTO_16]
      301 CAPTURE                          VAL R12
      302 CAPTURE                          VAL R0
      303 SETTABLEKS                       R20 R0 K81 ["getNodeAtIndex"]
      305 DUPCLOSURE                       R20 K82 [PROTO_18]
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R0
      308 CAPTURE                          VAL R9
      309 CAPTURE                          VAL R3
      310 CAPTURE                          VAL R18
      311 CAPTURE                          VAL R14
      312 CAPTURE                          VAL R19
      313 CAPTURE                          VAL R5
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R13
      316 CAPTURE                          VAL R17
      317 SETTABLEKS                       R20 R0 K83 ["RunQueryAsync"]
      319 DUPCLOSURE                       R20 K84 [PROTO_19]
      320 CAPTURE                          VAL R19
      321 SETTABLEKS                       R20 R0 K85 ["sortedIds"]
      323 RETURN                           R0 1
