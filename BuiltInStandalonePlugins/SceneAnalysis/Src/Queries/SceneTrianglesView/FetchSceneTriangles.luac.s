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
       95 LOADN                            R2 1000
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
       95 LOADN                            R2 1000
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
       65 DUPTABLE                         R9 K31 [{["id"] = "name", ["headerText"] = "Name", ["headerKey"] = "Name", ["sortKey"] = "name", ["width"] = 0.5, ["idealWidth"] = 200, ["priority"] = 1, ["order"] = 1, ["cell"]}]
       66 DUPCLOSURE                       R10 K32 [PROTO_0]
       67 SETTABLEKS                       R10 R9 K30 ["cell"]
       69 DUPTABLE                         R10 K38 [{["id"] = "triangles", ["headerText"] = "Triangles", ["headerKey"] = "Triangles", ["sortKey"] = "triangles", ["width"] = 0.25, ["idealWidth"] = 90, ["priority"] = 2, ["order"] = 2, ["cell"]}]
       70 DUPCLOSURE                       R11 K39 [PROTO_1]
       71 SETTABLEKS                       R11 R10 K30 ["cell"]
       73 DUPTABLE                         R11 K43 [{["id"] = "drawcalls", ["headerText"] = "Drawcalls", ["headerKey"] = "Drawcalls", ["sortKey"] = "drawcalls", ["width"] = 0.25, ["idealWidth"] = 90, ["priority"] = 3, ["order"] = 3, ["cell"]}]
       74 DUPCLOSURE                       R12 K44 [PROTO_2]
       75 SETTABLEKS                       R12 R11 K30 ["cell"]
       77 SETLIST                          R8 R9 3 [1]
       79 MOVE                             R9 R8
       80 LOADNIL                          R10
       81 LOADNIL                          R11
       82 FORGPREP                         R9
       83 MOVE                             R14 R6
       84 GETTABLEKS                       R15 R13 K19 ["headerText"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K45 ["minWidth"]
       89 FORGLOOP                         R9 2 ; [-7]
       91 NEWTABLE                         R9 0 0
       93 SETTABLEKS                       R9 R0 K46 ["instanceOrder"]
       95 NEWTABLE                         R9 0 0
       97 SETTABLEKS                       R9 R0 K47 ["nodeById"]
       99 NEWTABLE                         R9 0 0
      101 SETTABLEKS                       R9 R0 K48 ["parentById"]
      103 GETIMPORT                        R9 K51 [table.freeze]
      105 DUPTABLE                         R10 K54 [{"Column", "Direction"}]
      106 GETIMPORT                        R11 K51 [table.freeze]
      108 DUPTABLE                         R12 K56 [{["none"] = "none", ["name"] = "name", ["triangles"] = "triangles", ["drawcalls"] = "drawcalls"}]
      109 CALL                             R11 1 1
      110 SETTABLEKS                       R11 R10 K52 ["Column"]
      112 GETIMPORT                        R11 K51 [table.freeze]
      114 DUPTABLE                         R12 K59 [{["asc"] = "asc", ["desc"] = "desc"}]
      115 CALL                             R11 1 1
      116 SETTABLEKS                       R11 R10 K53 ["Direction"]
      118 CALL                             R9 1 1
      119 MOVE                             R10 R5
      120 DUPTABLE                         R11 K64 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      121 NEWTABLE                         R12 0 0
      123 SETTABLEKS                       R12 R11 K63 ["Children"]
      125 CALL                             R10 1 1
      126 GETTABLEKS                       R11 R4 K65 ["create"]
      128 MOVE                             R12 R10
      129 CALL                             R11 1 2
      130 GETTABLEKS                       R13 R4 K65 ["create"]
      132 NEWTABLE                         R14 0 0
      134 CALL                             R13 1 2
      135 GETTABLEKS                       R15 R4 K65 ["create"]
      137 MOVE                             R16 R5
      138 DUPTABLE                         R17 K68 [{"column", "direction"}]
      139 GETTABLEKS                       R18 R9 K52 ["Column"]
      141 GETTABLEKS                       R18 R18 K33 ["triangles"]
      143 SETTABLEKS                       R18 R17 K66 ["column"]
      145 GETTABLEKS                       R18 R9 K53 ["Direction"]
      147 GETTABLEKS                       R18 R18 K58 ["desc"]
      149 SETTABLEKS                       R18 R17 K67 ["direction"]
      151 CALL                             R16 1 -1
      152 CALL                             R15 -1 2
      153 GETTABLEKS                       R17 R4 K65 ["create"]
      155 LOADN                            R18 0
      156 CALL                             R17 1 2
      157 DUPCLOSURE                       R19 K69 [PROTO_3]
      158 CAPTURE                          VAL R11
      159 SETTABLEKS                       R19 R0 K70 ["getNodesObservable"]
      161 DUPCLOSURE                       R19 K71 [PROTO_4]
      162 CAPTURE                          VAL R13
      163 SETTABLEKS                       R19 R0 K72 ["getOrderObservable"]
      165 DUPCLOSURE                       R19 K73 [PROTO_5]
      166 CAPTURE                          VAL R15
      167 SETTABLEKS                       R19 R0 K74 ["getSortStateObservable"]
      169 DUPCLOSURE                       R19 K75 [PROTO_6]
      170 CAPTURE                          VAL R17
      171 SETTABLEKS                       R19 R0 K76 ["getTotalCountObservable"]
      173 DUPCLOSURE                       R19 K77 [PROTO_7]
      174 CAPTURE                          VAL R8
      175 SETTABLEKS                       R19 R0 K78 ["getColumns"]
      177 DUPCLOSURE                       R19 K79 [PROTO_8]
      178 CAPTURE                          VAL R19
      179 DUPCLOSURE                       R20 K80 [PROTO_10]
      180 CAPTURE                          VAL R9
      181 DUPCLOSURE                       R21 K81 [PROTO_11]
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R9
      184 CAPTURE                          VAL R5
      185 CAPTURE                          VAL R16
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R20
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R18
      191 SETTABLEKS                       R21 R0 K82 ["setSort"]
      193 DUPCLOSURE                       R21 K83 [PROTO_12]
      194 CAPTURE                          VAL R12
      195 CAPTURE                          VAL R10
      196 CAPTURE                          VAL R14
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R0
      199 SETTABLEKS                       R21 R0 K84 ["reset"]
      201 DUPCLOSURE                       R21 K85 [PROTO_13]
      202 CAPTURE                          VAL R13
      203 SETTABLEKS                       R21 R0 K86 ["getIndexForId"]
      205 DUPCLOSURE                       R21 K87 [PROTO_14]
      206 CAPTURE                          VAL R0
      207 SETTABLEKS                       R21 R0 K88 ["getNodeById"]
      209 DUPCLOSURE                       R21 K89 [PROTO_15]
      210 CAPTURE                          VAL R0
      211 SETTABLEKS                       R21 R0 K90 ["getDepth"]
      213 DUPCLOSURE                       R21 K91 [PROTO_16]
      214 CAPTURE                          VAL R13
      215 CAPTURE                          VAL R0
      216 SETTABLEKS                       R21 R0 K92 ["getNodeAtIndex"]
      218 DUPCLOSURE                       R21 K93 [PROTO_18]
      219 CAPTURE                          VAL R2
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R10
      223 CAPTURE                          VAL R3
      224 CAPTURE                          VAL R19
      225 CAPTURE                          VAL R15
      226 CAPTURE                          VAL R20
      227 CAPTURE                          VAL R5
      228 CAPTURE                          VAL R12
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R18
      231 SETTABLEKS                       R21 R0 K94 ["RunQueryAsync"]
      233 DUPCLOSURE                       R21 K95 [PROTO_19]
      234 SETTABLEKS                       R21 R0 K96 ["getWarnings"]
      236 DUPCLOSURE                       R21 K97 [PROTO_20]
      237 CAPTURE                          VAL R20
      238 SETTABLEKS                       R21 R0 K98 ["sortedIds"]
      240 RETURN                           R0 1
