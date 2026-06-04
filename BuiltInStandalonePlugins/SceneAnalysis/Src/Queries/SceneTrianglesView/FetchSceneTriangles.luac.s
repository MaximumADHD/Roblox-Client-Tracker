PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["Name"]
        4 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["triangles"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R1 K2 ["Triangles"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADN                            R1 0
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       13 GETTABLEKS                       R3 R0 K0 ["node"]
       15 GETTABLEKS                       R3 R3 K4 ["Size"]
       17 FASTCALL1                        TYPE R3 ; [+2]
       18 GETIMPORT                        R2 K6 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       23 GETTABLEKS                       R2 R0 K0 ["node"]
       25 GETTABLEKS                       R1 R2 K4 ["Size"]
       27 JUMP                             ; [+50]
       28 JUMPIFNOTEQKN                    R1 K3 [0] ; [+49]
       30 GETTABLEKS                       R2 R0 K0 ["node"]
       32 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       34 JUMPIFNOT                        R2 ; [+43]
       35 GETTABLEKS                       R3 R0 K0 ["node"]
       37 GETTABLEKS                       R3 R3 K8 ["Sizes"]
       39 FASTCALL1                        TYPE R3 ; [+2]
       40 GETIMPORT                        R2 K6 [type]
       42 CALL                             R2 1 1
       43 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+34]
       45 GETTABLEKS                       R2 R0 K0 ["node"]
       47 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       49 GETTABLEKS                       R2 R2 K1 ["triangles"]
       51 JUMPIF                           R2 ; [+8]
       52 GETTABLEKS                       R2 R0 K0 ["node"]
       54 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       56 GETTABLEKS                       R2 R2 K2 ["Triangles"]
       58 JUMPIF                           R2 ; [+1]
       59 LOADN                            R2 0
       60 MOVE                             R1 R2
       61 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       63 GETIMPORT                        R2 K11 [next]
       65 GETTABLEKS                       R3 R0 K0 ["node"]
       67 GETTABLEKS                       R3 R3 K8 ["Sizes"]
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
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["drawcalls"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R1 K2 ["Drawcalls"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADN                            R1 0
       11 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       13 GETTABLEKS                       R3 R0 K0 ["node"]
       15 GETTABLEKS                       R3 R3 K4 ["Size"]
       17 FASTCALL1                        TYPE R3 ; [+2]
       18 GETIMPORT                        R2 K6 [type]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K7 ["number"] ; [+6]
       23 GETTABLEKS                       R2 R0 K0 ["node"]
       25 GETTABLEKS                       R1 R2 K4 ["Size"]
       27 JUMP                             ; [+50]
       28 JUMPIFNOTEQKN                    R1 K3 [0] ; [+49]
       30 GETTABLEKS                       R2 R0 K0 ["node"]
       32 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       34 JUMPIFNOT                        R2 ; [+43]
       35 GETTABLEKS                       R3 R0 K0 ["node"]
       37 GETTABLEKS                       R3 R3 K8 ["Sizes"]
       39 FASTCALL1                        TYPE R3 ; [+2]
       40 GETIMPORT                        R2 K6 [type]
       42 CALL                             R2 1 1
       43 JUMPIFNOTEQKS                    R2 K9 ["table"] ; [+34]
       45 GETTABLEKS                       R2 R0 K0 ["node"]
       47 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       49 GETTABLEKS                       R2 R2 K1 ["drawcalls"]
       51 JUMPIF                           R2 ; [+8]
       52 GETTABLEKS                       R2 R0 K0 ["node"]
       54 GETTABLEKS                       R2 R2 K8 ["Sizes"]
       56 GETTABLEKS                       R2 R2 K2 ["Drawcalls"]
       58 JUMPIF                           R2 ; [+1]
       59 LOADN                            R2 0
       60 MOVE                             R1 R2
       61 JUMPIFNOTEQKN                    R1 K3 [0] ; [+16]
       63 GETIMPORT                        R2 K11 [next]
       65 GETTABLEKS                       R3 R0 K0 ["node"]
       67 GETTABLEKS                       R3 R3 K8 ["Sizes"]
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
       36 GETTABLEKS                       R4 R0 K0 ["node"]
       38 GETTABLEKS                       R4 R4 K8 ["Sizes"]
       40 JUMPIFNOT                        R4 ; [+79]
       41 GETIMPORT                        R4 K10 [next]
       43 GETTABLEKS                       R5 R0 K0 ["node"]
       45 GETTABLEKS                       R5 R5 K8 ["Sizes"]
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
       67 GETTABLEKS                       R4 R0 K0 ["node"]
       69 GETTABLEKS                       R4 R4 K8 ["Sizes"]
       71 JUMPIFNOT                        R4 ; [+28]
       72 GETTABLEKS                       R5 R0 K0 ["node"]
       74 GETTABLEKS                       R5 R5 K8 ["Sizes"]
       76 GETUPVAL                         R6 0
       77 GETTABLE                         R4 R5 R6
       78 ORK                              R2 R4 K7 [0]
       79 JUMPIFNOTEQKN                    R2 K7 [0] ; [+40]
       81 GETIMPORT                        R4 K10 [next]
       83 GETTABLEKS                       R5 R0 K0 ["node"]
       85 GETTABLEKS                       R5 R5 K8 ["Sizes"]
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
      105 GETTABLEKS                       R4 R0 K0 ["node"]
      107 GETTABLEKS                       R4 R4 K13 ["Size"]
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
      139 GETTABLEKS                       R4 R1 K0 ["node"]
      141 GETTABLEKS                       R4 R4 K8 ["Sizes"]
      143 JUMPIFNOT                        R4 ; [+79]
      144 GETIMPORT                        R4 K10 [next]
      146 GETTABLEKS                       R5 R1 K0 ["node"]
      148 GETTABLEKS                       R5 R5 K8 ["Sizes"]
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
      170 GETTABLEKS                       R4 R1 K0 ["node"]
      172 GETTABLEKS                       R4 R4 K8 ["Sizes"]
      174 JUMPIFNOT                        R4 ; [+28]
      175 GETTABLEKS                       R5 R1 K0 ["node"]
      177 GETTABLEKS                       R5 R5 K8 ["Sizes"]
      179 GETUPVAL                         R6 0
      180 GETTABLE                         R4 R5 R6
      181 ORK                              R3 R4 K7 [0]
      182 JUMPIFNOTEQKN                    R3 K7 [0] ; [+40]
      184 GETIMPORT                        R4 K10 [next]
      186 GETTABLEKS                       R5 R1 K0 ["node"]
      188 GETTABLEKS                       R5 R5 K8 ["Sizes"]
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
      208 GETTABLEKS                       R4 R1 K0 ["node"]
      210 GETTABLEKS                       R4 R4 K13 ["Size"]
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
      232 GETUPVAL                         R6 2
      233 GETTABLEKS                       R6 R6 K14 ["Direction"]
      235 GETTABLEKS                       R6 R6 K15 ["desc"]
      237 JUMPIFEQ                         R5 R6 ; [+2]
      239 LOADB                            R4 0 +1
      240 LOADB                            R4 1
      241 RETURN                           R4 1
      242 JUMPIFNOTEQKNIL                  R3 ; [+12]
      244 GETUPVAL                         R5 1
      245 GETUPVAL                         R6 2
      246 GETTABLEKS                       R6 R6 K14 ["Direction"]
      248 GETTABLEKS                       R6 R6 K16 ["asc"]
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
      270 GETUPVAL                         R5 2
      271 GETTABLEKS                       R5 R5 K14 ["Direction"]
      273 GETTABLEKS                       R5 R5 K16 ["asc"]
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
      304 GETUPVAL                         R7 2
      305 GETTABLEKS                       R7 R7 K14 ["Direction"]
      307 GETTABLEKS                       R7 R7 K16 ["asc"]
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
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Column"]
        7 GETTABLEKS                       R4 R4 K3 ["none"]
        9 JUMPIFNOTEQ                      R2 R4 ; [+15]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R0
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 GETTABLEKS                       R10 R9 K4 ["node"]
       19 GETTABLEKS                       R10 R10 K5 ["Id"]
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
       43 GETTABLEKS                       R11 R10 K4 ["node"]
       45 GETTABLEKS                       R11 R11 K5 ["Id"]
       47 SETTABLE                         R11 R5 R9
       48 FORGLOOP                         R6 2 ; [-6]
       50 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Direction"]
        7 GETTABLEKS                       R2 R2 K2 ["desc"]
        9 GETTABLEKS                       R3 R1 K3 ["column"]
       11 JUMPIFNOTEQ                      R3 R0 ; [+21]
       13 GETTABLEKS                       R3 R1 K4 ["direction"]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K1 ["Direction"]
       18 GETTABLEKS                       R4 R4 K5 ["asc"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+7]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K1 ["Direction"]
       25 GETTABLEKS                       R2 R3 K2 ["desc"]
       27 JUMP                             ; [+5]
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K1 ["Direction"]
       31 GETTABLEKS                       R2 R3 K5 ["asc"]
       33 GETUPVAL                         R3 2
       34 DUPTABLE                         R4 K6 [{"column", "direction"}]
       35 SETTABLEKS                       R0 R4 K3 ["column"]
       37 SETTABLEKS                       R2 R4 K4 ["direction"]
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 3
       41 MOVE                             R5 R3
       42 CALL                             R4 1 0
       43 GETUPVAL                         R4 4
       44 GETTABLEKS                       R4 R4 K0 ["get"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_15:
        0 LOADN                            R1 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["parentById"]
        4 GETTABLE                         R2 R3 R0
        5 JUMPIFNOT                        R2 ; [+6]
        6 ADDK                             R1 R1 K1 [1]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["parentById"]
       10 GETTABLE                         R2 R3 R2
       11 JUMPBACK                         ; [-7]
       12 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLE                         R2 R1 R0
        5 JUMPIF                           R2 ; [+2]
        6 LOADNIL                          R3
        7 RETURN                           R3 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K1 ["getNodeById"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADNIL                          R4
       15 RETURN                           R4 1
       16 DUPTABLE                         R4 K6 [{"node", "depth", "hasChildren", "id"}]
       17 SETTABLEKS                       R3 R4 K2 ["node"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R5 R5 K7 ["getDepth"]
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
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["TriangleCategories"]
       15 GETTABLEKS                       R4 R0 K2 ["Name"]
       17 GETTABLE                         R2 R3 R4
       18 JUMPIFNOT                        R2 ; [+8]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K3 ["TriangleCategories"]
       22 GETTABLEKS                       R4 R0 K2 ["Name"]
       24 GETTABLE                         R2 R3 R4
       25 SETTABLEKS                       R2 R0 K4 ["Color"]
       27 GETTABLEKS                       R2 R0 K0 ["Id"]
       29 JUMPIFNOT                        R2 ; [+13]
       30 GETUPVAL                         R2 2
       31 GETTABLEKS                       R2 R2 K5 ["nodeById"]
       33 GETTABLEKS                       R3 R0 K0 ["Id"]
       35 SETTABLE                         R0 R2 R3
       36 JUMPIFNOT                        R1 ; [+6]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R2 R2 K6 ["parentById"]
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
        7 JUMPIF                           R1 ; [+13]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K3 ["reset"]
       18 CALL                             R2 0 0
       19 GETUPVAL                         R2 3
       20 RETURN                           R2 1
       21 GETUPVAL                         R2 2
       22 NEWTABLE                         R3 0 0
       24 SETTABLEKS                       R3 R2 K4 ["nodeById"]
       26 GETUPVAL                         R2 2
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K5 ["parentById"]
       31 LOADN                            R2 1
       32 NEWCLOSURE                       R3 P0
       33 CAPTURE                          REF R2
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R3
       37 MOVE                             R4 R3
       38 MOVE                             R5 R1
       39 LOADNIL                          R6
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 5
       42 MOVE                             R5 R1
       43 CALL                             R4 1 1
       44 GETUPVAL                         R5 6
       45 GETTABLEKS                       R5 R5 K6 ["get"]
       47 CALL                             R5 0 1
       48 GETUPVAL                         R6 7
       49 MOVE                             R7 R4
       50 MOVE                             R8 R5
       51 CALL                             R6 2 1
       52 GETUPVAL                         R7 8
       53 MOVE                             R8 R1
       54 CALL                             R7 1 0
       55 GETUPVAL                         R7 9
       56 MOVE                             R8 R1
       57 CALL                             R7 1 0
       58 GETUPVAL                         R7 10
       59 MOVE                             R8 R6
       60 CALL                             R7 1 0
       61 GETUPVAL                         R7 11
       62 LENGTH                           R8 R6
       63 CALL                             R7 1 0
       64 CLOSEUPVALS                      R2
       65 RETURN                           R1 1

PROTO_19:
        0 NEWTABLE                         R1 0 0
        2 JUMPIFNOT                        R0 ; [+11]
        3 MOVE                             R3 R1
        4 LOADK                            R6 K0 ["Messages"]
        5 LOADK                            R7 K1 ["QualityLevelWarning"]
        6 NAMECALL                         R4 R0 K2 ["getText"]
        8 CALL                             R4 3 -1
        9 FASTCALL                         TABLE_INSERT ; [+2]
       10 GETIMPORT                        R2 K5 [table.insert]
       12 CALL                             R2 -1 0
       13 RETURN                           R1 1
       14 FASTCALL2K                       TABLE_INSERT R1 K6 ; [+5]
       16 MOVE                             R3 R1
       17 LOADK                            R4 K6 ["Quality level and player devices will affect triangle counts. Values are indicative of current studio conditions only."]
       18 GETIMPORT                        R2 K5 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R1 1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"column", "direction"}]
        3 SETTABLEKS                       R1 R5 K0 ["column"]
        5 SETTABLEKS                       R2 R5 K1 ["direction"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 GETIMPORT                        R1 K1 [script]
        5 LOADK                            R3 K2 ["SceneAnalysis"]
        6 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K5 [require]
       11 GETTABLEKS                       R3 R1 K6 ["Src"]
       13 GETTABLEKS                       R3 R3 K7 ["Util"]
       15 GETTABLEKS                       R3 R3 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Src"]
       22 GETTABLEKS                       R4 R4 K9 ["Resources"]
       24 GETTABLEKS                       R4 R4 K10 ["ColorRamps"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K11 ["Observable"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K7 ["Util"]
       42 GETTABLEKS                       R6 R6 K12 ["deepFreeze"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K13 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K14 ["Bin"]
       58 GETTABLEKS                       R8 R8 K15 ["Common"]
       60 GETTABLEKS                       R8 R8 K16 ["defineLuaFlags"]
       62 CALL                             R7 1 1
       63 NEWTABLE                         R8 0 3
       65 DUPTABLE                         R9 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       66 LOADK                            R10 K27 ["name"]
       67 SETTABLEKS                       R10 R9 K17 ["id"]
       69 LOADK                            R10 K28 ["Name"]
       70 SETTABLEKS                       R10 R9 K18 ["headerText"]
       72 LOADK                            R10 K28 ["Name"]
       73 SETTABLEKS                       R10 R9 K19 ["headerKey"]
       75 LOADK                            R10 K27 ["name"]
       76 SETTABLEKS                       R10 R9 K20 ["sortKey"]
       78 LOADK                            R10 K29 [0.5]
       79 SETTABLEKS                       R10 R9 K21 ["width"]
       81 LOADN                            R10 200
       82 SETTABLEKS                       R10 R9 K22 ["idealWidth"]
       84 LOADN                            R10 1
       85 SETTABLEKS                       R10 R9 K23 ["priority"]
       87 LOADN                            R10 1
       88 SETTABLEKS                       R10 R9 K24 ["order"]
       90 DUPCLOSURE                       R10 K30 [PROTO_0]
       91 SETTABLEKS                       R10 R9 K25 ["cell"]
       93 DUPTABLE                         R10 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       94 LOADK                            R11 K31 ["triangles"]
       95 SETTABLEKS                       R11 R10 K17 ["id"]
       97 LOADK                            R11 K32 ["Triangles"]
       98 SETTABLEKS                       R11 R10 K18 ["headerText"]
      100 LOADK                            R11 K32 ["Triangles"]
      101 SETTABLEKS                       R11 R10 K19 ["headerKey"]
      103 LOADK                            R11 K31 ["triangles"]
      104 SETTABLEKS                       R11 R10 K20 ["sortKey"]
      106 LOADK                            R11 K33 [0.25]
      107 SETTABLEKS                       R11 R10 K21 ["width"]
      109 LOADN                            R11 90
      110 SETTABLEKS                       R11 R10 K22 ["idealWidth"]
      112 LOADN                            R11 2
      113 SETTABLEKS                       R11 R10 K23 ["priority"]
      115 LOADN                            R11 2
      116 SETTABLEKS                       R11 R10 K24 ["order"]
      118 DUPCLOSURE                       R11 K34 [PROTO_1]
      119 SETTABLEKS                       R11 R10 K25 ["cell"]
      121 DUPTABLE                         R11 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      122 LOADK                            R12 K35 ["drawcalls"]
      123 SETTABLEKS                       R12 R11 K17 ["id"]
      125 LOADK                            R12 K36 ["Drawcalls"]
      126 SETTABLEKS                       R12 R11 K18 ["headerText"]
      128 LOADK                            R12 K36 ["Drawcalls"]
      129 SETTABLEKS                       R12 R11 K19 ["headerKey"]
      131 LOADK                            R12 K35 ["drawcalls"]
      132 SETTABLEKS                       R12 R11 K20 ["sortKey"]
      134 LOADK                            R12 K33 [0.25]
      135 SETTABLEKS                       R12 R11 K21 ["width"]
      137 LOADN                            R12 90
      138 SETTABLEKS                       R12 R11 K22 ["idealWidth"]
      140 LOADN                            R12 3
      141 SETTABLEKS                       R12 R11 K23 ["priority"]
      143 LOADN                            R12 3
      144 SETTABLEKS                       R12 R11 K24 ["order"]
      146 DUPCLOSURE                       R12 K37 [PROTO_2]
      147 SETTABLEKS                       R12 R11 K25 ["cell"]
      149 SETLIST                          R8 R9 3 [1]
      151 MOVE                             R9 R8
      152 LOADNIL                          R10
      153 LOADNIL                          R11
      154 FORGPREP                         R9
      155 MOVE                             R14 R6
      156 GETTABLEKS                       R15 R13 K18 ["headerText"]
      158 CALL                             R14 1 1
      159 SETTABLEKS                       R14 R13 K38 ["minWidth"]
      161 FORGLOOP                         R9 2 ; [-7]
      163 NEWTABLE                         R9 0 0
      165 SETTABLEKS                       R9 R0 K39 ["instanceOrder"]
      167 NEWTABLE                         R9 0 0
      169 SETTABLEKS                       R9 R0 K40 ["nodeById"]
      171 NEWTABLE                         R9 0 0
      173 SETTABLEKS                       R9 R0 K41 ["parentById"]
      175 GETIMPORT                        R9 K44 [table.freeze]
      177 DUPTABLE                         R10 K47 [{"Column", "Direction"}]
      178 GETIMPORT                        R11 K44 [table.freeze]
      180 DUPTABLE                         R12 K49 [{"none", "name", "triangles", "drawcalls"}]
      181 LOADK                            R13 K48 ["none"]
      182 SETTABLEKS                       R13 R12 K48 ["none"]
      184 LOADK                            R13 K27 ["name"]
      185 SETTABLEKS                       R13 R12 K27 ["name"]
      187 LOADK                            R13 K31 ["triangles"]
      188 SETTABLEKS                       R13 R12 K31 ["triangles"]
      190 LOADK                            R13 K35 ["drawcalls"]
      191 SETTABLEKS                       R13 R12 K35 ["drawcalls"]
      193 CALL                             R11 1 1
      194 SETTABLEKS                       R11 R10 K45 ["Column"]
      196 GETIMPORT                        R11 K44 [table.freeze]
      198 DUPTABLE                         R12 K52 [{"asc", "desc"}]
      199 LOADK                            R13 K50 ["asc"]
      200 SETTABLEKS                       R13 R12 K50 ["asc"]
      202 LOADK                            R13 K51 ["desc"]
      203 SETTABLEKS                       R13 R12 K51 ["desc"]
      205 CALL                             R11 1 1
      206 SETTABLEKS                       R11 R10 K46 ["Direction"]
      208 CALL                             R9 1 1
      209 MOVE                             R10 R5
      210 DUPTABLE                         R11 K55 [{"Name", "Size", "Children"}]
      211 LOADK                            R12 K56 ["Root"]
      212 SETTABLEKS                       R12 R11 K28 ["Name"]
      214 LOADN                            R12 0
      215 SETTABLEKS                       R12 R11 K53 ["Size"]
      217 NEWTABLE                         R12 0 0
      219 SETTABLEKS                       R12 R11 K54 ["Children"]
      221 CALL                             R10 1 1
      222 GETTABLEKS                       R11 R4 K57 ["create"]
      224 MOVE                             R12 R10
      225 CALL                             R11 1 2
      226 GETTABLEKS                       R13 R4 K57 ["create"]
      228 NEWTABLE                         R14 0 0
      230 CALL                             R13 1 2
      231 GETTABLEKS                       R15 R4 K57 ["create"]
      233 MOVE                             R16 R5
      234 DUPTABLE                         R17 K60 [{"column", "direction"}]
      235 GETTABLEKS                       R18 R9 K45 ["Column"]
      237 GETTABLEKS                       R18 R18 K31 ["triangles"]
      239 SETTABLEKS                       R18 R17 K58 ["column"]
      241 GETTABLEKS                       R18 R9 K46 ["Direction"]
      243 GETTABLEKS                       R18 R18 K51 ["desc"]
      245 SETTABLEKS                       R18 R17 K59 ["direction"]
      247 CALL                             R16 1 -1
      248 CALL                             R15 -1 2
      249 GETTABLEKS                       R17 R4 K57 ["create"]
      251 LOADN                            R18 0
      252 CALL                             R17 1 2
      253 DUPCLOSURE                       R19 K61 [PROTO_3]
      254 CAPTURE                          VAL R11
      255 SETTABLEKS                       R19 R0 K62 ["getNodesObservable"]
      257 DUPCLOSURE                       R19 K63 [PROTO_4]
      258 CAPTURE                          VAL R13
      259 SETTABLEKS                       R19 R0 K64 ["getOrderObservable"]
      261 DUPCLOSURE                       R19 K65 [PROTO_5]
      262 CAPTURE                          VAL R15
      263 SETTABLEKS                       R19 R0 K66 ["getSortStateObservable"]
      265 DUPCLOSURE                       R19 K67 [PROTO_6]
      266 CAPTURE                          VAL R17
      267 SETTABLEKS                       R19 R0 K68 ["getTotalCountObservable"]
      269 DUPCLOSURE                       R19 K69 [PROTO_7]
      270 CAPTURE                          VAL R8
      271 SETTABLEKS                       R19 R0 K70 ["getColumns"]
      273 DUPCLOSURE                       R19 K71 [PROTO_8]
      274 CAPTURE                          VAL R19
      275 DUPCLOSURE                       R20 K72 [PROTO_10]
      276 CAPTURE                          VAL R9
      277 DUPCLOSURE                       R21 K73 [PROTO_11]
      278 CAPTURE                          VAL R15
      279 CAPTURE                          VAL R9
      280 CAPTURE                          VAL R5
      281 CAPTURE                          VAL R16
      282 CAPTURE                          VAL R11
      283 CAPTURE                          VAL R19
      284 CAPTURE                          VAL R20
      285 CAPTURE                          VAL R14
      286 CAPTURE                          VAL R18
      287 SETTABLEKS                       R21 R0 K74 ["setSort"]
      289 DUPCLOSURE                       R21 K75 [PROTO_12]
      290 CAPTURE                          VAL R12
      291 CAPTURE                          VAL R10
      292 CAPTURE                          VAL R14
      293 CAPTURE                          VAL R18
      294 CAPTURE                          VAL R0
      295 SETTABLEKS                       R21 R0 K76 ["reset"]
      297 DUPCLOSURE                       R21 K77 [PROTO_13]
      298 CAPTURE                          VAL R13
      299 SETTABLEKS                       R21 R0 K78 ["getIndexForId"]
      301 DUPCLOSURE                       R21 K79 [PROTO_14]
      302 CAPTURE                          VAL R0
      303 SETTABLEKS                       R21 R0 K80 ["getNodeById"]
      305 DUPCLOSURE                       R21 K81 [PROTO_15]
      306 CAPTURE                          VAL R0
      307 SETTABLEKS                       R21 R0 K82 ["getDepth"]
      309 DUPCLOSURE                       R21 K83 [PROTO_16]
      310 CAPTURE                          VAL R13
      311 CAPTURE                          VAL R0
      312 SETTABLEKS                       R21 R0 K84 ["getNodeAtIndex"]
      314 DUPCLOSURE                       R21 K85 [PROTO_18]
      315 CAPTURE                          VAL R2
      316 CAPTURE                          VAL R7
      317 CAPTURE                          VAL R0
      318 CAPTURE                          VAL R10
      319 CAPTURE                          VAL R3
      320 CAPTURE                          VAL R19
      321 CAPTURE                          VAL R15
      322 CAPTURE                          VAL R20
      323 CAPTURE                          VAL R5
      324 CAPTURE                          VAL R12
      325 CAPTURE                          VAL R14
      326 CAPTURE                          VAL R18
      327 SETTABLEKS                       R21 R0 K86 ["RunQueryAsync"]
      329 DUPCLOSURE                       R21 K87 [PROTO_19]
      330 SETTABLEKS                       R21 R0 K88 ["getWarnings"]
      332 DUPCLOSURE                       R21 K89 [PROTO_20]
      333 CAPTURE                          VAL R20
      334 SETTABLEKS                       R21 R0 K90 ["sortedIds"]
      336 RETURN                           R0 1
