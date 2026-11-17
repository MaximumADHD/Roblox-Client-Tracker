PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R1 K1 ["AssetId"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R1 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R1 K2 ["Name"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K3 [""]
       11 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["sizeMB"]
        2 ORK                              R1 R2 K0 ["0B"]
        3 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["change"]
        4 ORK                              R1 R2 K0 [0]
        5 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        7 LOADK                            R2 K3 ["—"]
        8 RETURN                           R2 1
        9 LOADN                            R3 0
       10 JUMPIFNOTLT                      R3 R1 ; [+3]
       12 LOADK                            R2 K4 ["+"]
       13 JUMP                             ; [+1]
       14 LOADK                            R2 K5 ["-"]
       15 MOVE                             R4 R2
       16 GETUPVAL                         R5 0
       17 FASTCALL1                        MATH_ABS R1 ; [+3]
       18 MOVE                             R7 R1
       19 GETIMPORT                        R6 K8 [math.abs]
       21 CALL                             R6 1 1
       22 CALL                             R5 1 1
       23 CONCAT                           R3 R4 R5
       24 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R3 R3 K2 ["references"]
        4 ORK                              R2 R3 K0 [0]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K4 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R2 K2 ["owners"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R3 R3 K2 ["inDatamodel"]
        4 ORK                              R2 R3 K0 [False]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K4 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_11:
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

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["node"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R2 R3 R4
        4 GETTABLEKS                       R4 R1 K0 ["node"]
        6 GETUPVAL                         R5 0
        7 GETTABLE                         R3 R4 R5
        8 GETUPVAL                         R4 0
        9 JUMPIFNOTEQKS                    R4 K1 ["size"] ; [+227]
       11 FASTCALL1                        TYPE R2 ; [+3]
       12 MOVE                             R5 R2
       13 GETIMPORT                        R4 K3 [type]
       15 CALL                             R4 1 1
       16 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+47]
       18 GETUPVAL                         R5 0
       19 GETTABLE                         R4 R2 R5
       20 JUMPIF                           R4 ; [+16]
       21 GETTABLEKS                       R5 R0 K0 ["node"]
       23 GETUPVAL                         R6 0
       24 GETTABLE                         R4 R5 R6
       25 JUMPIF                           R4 ; [+11]
       26 GETTABLEKS                       R4 R0 K0 ["node"]
       28 GETTABLEKS                       R4 R4 K1 ["size"]
       30 JUMPIF                           R4 ; [+6]
       31 GETTABLEKS                       R4 R0 K0 ["node"]
       33 GETTABLEKS                       R4 R4 K5 ["Size"]
       35 JUMPIF                           R4 ; [+1]
       36 LOADN                            R4 0
       37 MOVE                             R2 R4
       38 JUMPIFNOTEQKN                    R2 K6 [0] ; [+85]
       40 GETTABLEKS                       R4 R0 K0 ["node"]
       42 GETTABLEKS                       R4 R4 K7 ["Sizes"]
       44 JUMPIFNOT                        R4 ; [+79]
       45 GETIMPORT                        R4 K9 [next]
       47 GETTABLEKS                       R5 R0 K0 ["node"]
       49 GETTABLEKS                       R5 R5 K7 ["Sizes"]
       51 CALL                             R4 1 2
       52 FASTCALL1                        TYPE R5 ; [+3]
       53 MOVE                             R8 R5
       54 GETIMPORT                        R7 K3 [type]
       56 CALL                             R7 1 1
       57 JUMPIFNOTEQKS                    R7 K10 ["number"] ; [+3]
       59 MOVE                             R6 R5
       60 JUMPIF                           R6 ; [+1]
       61 LOADN                            R6 0
       62 MOVE                             R2 R6
       63 JUMP                             ; [+60]
       64 FASTCALL1                        TYPE R2 ; [+3]
       65 MOVE                             R5 R2
       66 GETIMPORT                        R4 K3 [type]
       68 CALL                             R4 1 1
       69 JUMPIFNOTEQKS                    R4 K11 ["nil"] ; [+54]
       71 GETTABLEKS                       R4 R0 K0 ["node"]
       73 GETTABLEKS                       R4 R4 K7 ["Sizes"]
       75 JUMPIFNOT                        R4 ; [+28]
       76 GETTABLEKS                       R5 R0 K0 ["node"]
       78 GETTABLEKS                       R5 R5 K7 ["Sizes"]
       80 GETUPVAL                         R6 0
       81 GETTABLE                         R4 R5 R6
       82 ORK                              R2 R4 K6 [0]
       83 JUMPIFNOTEQKN                    R2 K6 [0] ; [+40]
       85 GETIMPORT                        R4 K9 [next]
       87 GETTABLEKS                       R5 R0 K0 ["node"]
       89 GETTABLEKS                       R5 R5 K7 ["Sizes"]
       91 CALL                             R4 1 2
       92 FASTCALL1                        TYPE R5 ; [+3]
       93 MOVE                             R8 R5
       94 GETIMPORT                        R7 K3 [type]
       96 CALL                             R7 1 1
       97 JUMPIFNOTEQKS                    R7 K10 ["number"] ; [+3]
       99 MOVE                             R6 R5
      100 JUMPIF                           R6 ; [+1]
      101 LOADN                            R6 0
      102 MOVE                             R2 R6
      103 JUMP                             ; [+20]
      104 GETTABLEKS                       R5 R0 K0 ["node"]
      106 GETUPVAL                         R6 0
      107 GETTABLE                         R4 R5 R6
      108 JUMPIF                           R4 ; [+6]
      109 GETTABLEKS                       R4 R0 K0 ["node"]
      111 GETTABLEKS                       R4 R4 K5 ["Size"]
      113 JUMPIF                           R4 ; [+1]
      114 LOADN                            R4 0
      115 MOVE                             R2 R4
      116 FASTCALL1                        TYPE R2 ; [+3]
      117 MOVE                             R5 R2
      118 GETIMPORT                        R4 K3 [type]
      120 CALL                             R4 1 1
      121 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+2]
      123 LOADN                            R2 0
      124 FASTCALL1                        TYPE R3 ; [+3]
      125 MOVE                             R5 R3
      126 GETIMPORT                        R4 K3 [type]
      128 CALL                             R4 1 1
      129 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+47]
      131 GETUPVAL                         R5 0
      132 GETTABLE                         R4 R3 R5
      133 JUMPIF                           R4 ; [+16]
      134 GETTABLEKS                       R5 R1 K0 ["node"]
      136 GETUPVAL                         R6 0
      137 GETTABLE                         R4 R5 R6
      138 JUMPIF                           R4 ; [+11]
      139 GETTABLEKS                       R4 R1 K0 ["node"]
      141 GETTABLEKS                       R4 R4 K1 ["size"]
      143 JUMPIF                           R4 ; [+6]
      144 GETTABLEKS                       R4 R1 K0 ["node"]
      146 GETTABLEKS                       R4 R4 K5 ["Size"]
      148 JUMPIF                           R4 ; [+1]
      149 LOADN                            R4 0
      150 MOVE                             R3 R4
      151 JUMPIFNOTEQKN                    R3 K6 [0] ; [+85]
      153 GETTABLEKS                       R4 R1 K0 ["node"]
      155 GETTABLEKS                       R4 R4 K7 ["Sizes"]
      157 JUMPIFNOT                        R4 ; [+79]
      158 GETIMPORT                        R4 K9 [next]
      160 GETTABLEKS                       R5 R1 K0 ["node"]
      162 GETTABLEKS                       R5 R5 K7 ["Sizes"]
      164 CALL                             R4 1 2
      165 FASTCALL1                        TYPE R5 ; [+3]
      166 MOVE                             R8 R5
      167 GETIMPORT                        R7 K3 [type]
      169 CALL                             R7 1 1
      170 JUMPIFNOTEQKS                    R7 K10 ["number"] ; [+3]
      172 MOVE                             R6 R5
      173 JUMPIF                           R6 ; [+1]
      174 LOADN                            R6 0
      175 MOVE                             R3 R6
      176 JUMP                             ; [+60]
      177 FASTCALL1                        TYPE R3 ; [+3]
      178 MOVE                             R5 R3
      179 GETIMPORT                        R4 K3 [type]
      181 CALL                             R4 1 1
      182 JUMPIFNOTEQKS                    R4 K11 ["nil"] ; [+54]
      184 GETTABLEKS                       R4 R1 K0 ["node"]
      186 GETTABLEKS                       R4 R4 K7 ["Sizes"]
      188 JUMPIFNOT                        R4 ; [+28]
      189 GETTABLEKS                       R5 R1 K0 ["node"]
      191 GETTABLEKS                       R5 R5 K7 ["Sizes"]
      193 GETUPVAL                         R6 0
      194 GETTABLE                         R4 R5 R6
      195 ORK                              R3 R4 K6 [0]
      196 JUMPIFNOTEQKN                    R3 K6 [0] ; [+40]
      198 GETIMPORT                        R4 K9 [next]
      200 GETTABLEKS                       R5 R1 K0 ["node"]
      202 GETTABLEKS                       R5 R5 K7 ["Sizes"]
      204 CALL                             R4 1 2
      205 FASTCALL1                        TYPE R5 ; [+3]
      206 MOVE                             R8 R5
      207 GETIMPORT                        R7 K3 [type]
      209 CALL                             R7 1 1
      210 JUMPIFNOTEQKS                    R7 K10 ["number"] ; [+3]
      212 MOVE                             R6 R5
      213 JUMPIF                           R6 ; [+1]
      214 LOADN                            R6 0
      215 MOVE                             R3 R6
      216 JUMP                             ; [+20]
      217 GETTABLEKS                       R5 R1 K0 ["node"]
      219 GETUPVAL                         R6 0
      220 GETTABLE                         R4 R5 R6
      221 JUMPIF                           R4 ; [+6]
      222 GETTABLEKS                       R4 R1 K0 ["node"]
      224 GETTABLEKS                       R4 R4 K5 ["Size"]
      226 JUMPIF                           R4 ; [+1]
      227 LOADN                            R4 0
      228 MOVE                             R3 R4
      229 FASTCALL1                        TYPE R3 ; [+3]
      230 MOVE                             R5 R3
      231 GETIMPORT                        R4 K3 [type]
      233 CALL                             R4 1 1
      234 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+2]
      236 LOADN                            R3 0
      237 JUMPIFNOTEQKNIL                  R2 ; [+5]
      239 JUMPIFNOTEQKNIL                  R3 ; [+3]
      241 LOADB                            R4 0
      242 RETURN                           R4 1
      243 JUMPIFNOTEQKNIL                  R2 ; [+12]
      245 GETUPVAL                         R5 1
      246 GETUPVAL                         R6 2
      247 GETTABLEKS                       R6 R6 K12 ["Direction"]
      249 GETTABLEKS                       R6 R6 K13 ["desc"]
      251 JUMPIFEQ                         R5 R6 ; [+2]
      253 LOADB                            R4 0 +1
      254 LOADB                            R4 1
      255 RETURN                           R4 1
      256 JUMPIFNOTEQKNIL                  R3 ; [+12]
      258 GETUPVAL                         R5 1
      259 GETUPVAL                         R6 2
      260 GETTABLEKS                       R6 R6 K12 ["Direction"]
      262 GETTABLEKS                       R6 R6 K14 ["asc"]
      264 JUMPIFEQ                         R5 R6 ; [+2]
      266 LOADB                            R4 0 +1
      267 LOADB                            R4 1
      268 RETURN                           R4 1
      269 FASTCALL1                        TYPE R2 ; [+3]
      270 MOVE                             R5 R2
      271 GETIMPORT                        R4 K3 [type]
      273 CALL                             R4 1 1
      274 JUMPIFNOTEQKS                    R4 K10 ["number"] ; [+26]
      276 FASTCALL1                        TYPE R3 ; [+3]
      277 MOVE                             R5 R3
      278 GETIMPORT                        R4 K3 [type]
      280 CALL                             R4 1 1
      281 JUMPIFNOTEQKS                    R4 K10 ["number"] ; [+19]
      283 GETUPVAL                         R4 1
      284 GETUPVAL                         R5 2
      285 GETTABLEKS                       R5 R5 K12 ["Direction"]
      287 GETTABLEKS                       R5 R5 K14 ["asc"]
      289 JUMPIFNOTEQ                      R4 R5 ; [+6]
      291 JUMPIFLT                         R2 R3 ; [+2]
      293 LOADB                            R4 0 +1
      294 LOADB                            R4 1
      295 RETURN                           R4 1
      296 JUMPIFLT                         R3 R2 ; [+2]
      298 LOADB                            R4 0 +1
      299 LOADB                            R4 1
      300 RETURN                           R4 1
      301 FASTCALL1                        TOSTRING R2 ; [+3]
      302 MOVE                             R5 R2
      303 GETIMPORT                        R4 K16 [tostring]
      305 CALL                             R4 1 1
      306 NAMECALL                         R4 R4 K17 ["lower"]
      308 CALL                             R4 1 1
      309 FASTCALL1                        TOSTRING R3 ; [+3]
      310 MOVE                             R6 R3
      311 GETIMPORT                        R5 K16 [tostring]
      313 CALL                             R5 1 1
      314 NAMECALL                         R5 R5 K17 ["lower"]
      316 CALL                             R5 1 1
      317 GETUPVAL                         R6 1
      318 GETUPVAL                         R7 2
      319 GETTABLEKS                       R7 R7 K12 ["Direction"]
      321 GETTABLEKS                       R7 R7 K14 ["asc"]
      323 JUMPIFNOTEQ                      R6 R7 ; [+6]
      325 JUMPIFLT                         R4 R5 ; [+2]
      327 LOADB                            R6 0 +1
      328 LOADB                            R6 1
      329 RETURN                           R6 1
      330 JUMPIFLT                         R5 R4 ; [+2]
      332 LOADB                            R6 0 +1
      333 LOADB                            R6 1
      334 RETURN                           R6 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getNodeById"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K1 ["ownerPaths"]
        9 JUMPIFNOT                        R2 ; [+13]
       10 GETTABLEKS                       R3 R1 K1 ["ownerPaths"]
       12 LENGTH                           R2 R3
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+8]
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K2 ["SelectInstancesByPaths"]
       18 GETTABLEKS                       R5 R1 K1 ["ownerPaths"]
       20 NAMECALL                         R2 R2 K3 ["CallAssetPluginAsync"]
       22 CALL                             R2 3 0
       23 RETURN                           R0 0

PROTO_19:
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

PROTO_20:
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

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["Id"]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K1 [1]
        8 SETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R0 K2 ["Owners"]
       11 JUMPIFNOT                        R2 ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["Owners"]
       14 LENGTH                           R2 R3
       15 JUMPIFNOTEQKN                    R2 K3 [0] ; [+17]
       17 LOADN                            R2 1
       18 SETTABLEKS                       R2 R0 K4 ["references"]
       20 GETTABLEKS                       R2 R0 K5 ["Name"]
       22 SETTABLEKS                       R2 R0 K6 ["owners"]
       24 NEWTABLE                         R2 0 1
       26 GETTABLEKS                       R3 R0 K5 ["Name"]
       28 SETLIST                          R2 R3 1 [1]
       30 SETTABLEKS                       R2 R0 K7 ["ownerPaths"]
       32 JUMP                             ; [+98]
       33 GETTABLEKS                       R3 R0 K2 ["Owners"]
       35 LENGTH                           R2 R3
       36 SETTABLEKS                       R2 R0 K4 ["references"]
       38 NEWTABLE                         R2 0 0
       40 NEWTABLE                         R3 0 0
       42 GETIMPORT                        R4 K9 [ipairs]
       44 GETTABLEKS                       R5 R0 K2 ["Owners"]
       46 CALL                             R4 1 3
       47 FORGPREP_INEXT                   R4
       48 FASTCALL1                        TYPEOF R8 ; [+3]
       49 MOVE                             R10 R8
       50 GETIMPORT                        R9 K11 [typeof]
       52 CALL                             R9 1 1
       53 JUMPIFNOTEQKS                    R9 K12 ["Instance"] ; [+18]
       55 MOVE                             R10 R2
       56 NAMECALL                         R11 R8 K13 ["GetFullName"]
       58 CALL                             R11 1 -1
       59 FASTCALL                         TABLE_INSERT ; [+2]
       60 GETIMPORT                        R9 K16 [table.insert]
       62 CALL                             R9 -1 0
       63 MOVE                             R10 R3
       64 NAMECALL                         R11 R8 K13 ["GetFullName"]
       66 CALL                             R11 1 -1
       67 FASTCALL                         TABLE_INSERT ; [+2]
       68 GETIMPORT                        R9 K16 [table.insert]
       70 CALL                             R9 -1 0
       71 JUMP                             ; [+48]
       72 FASTCALL1                        TYPE R8 ; [+3]
       73 MOVE                             R10 R8
       74 GETIMPORT                        R9 K18 [type]
       76 CALL                             R9 1 1
       77 JUMPIFNOTEQKS                    R9 K19 ["string"] ; [+16]
       79 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       81 MOVE                             R10 R2
       82 MOVE                             R11 R8
       83 GETIMPORT                        R9 K16 [table.insert]
       85 CALL                             R9 2 0
       86 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       88 MOVE                             R10 R3
       89 MOVE                             R11 R8
       90 GETIMPORT                        R9 K16 [table.insert]
       92 CALL                             R9 2 0
       93 JUMP                             ; [+26]
       94 FASTCALL1                        TYPE R8 ; [+3]
       95 MOVE                             R10 R8
       96 GETIMPORT                        R9 K18 [type]
       98 CALL                             R9 1 1
       99 JUMPIFNOTEQKS                    R9 K14 ["table"] ; [+20]
      101 GETTABLEKS                       R9 R8 K5 ["Name"]
      103 JUMPIFNOT                        R9 ; [+16]
      104 GETTABLEKS                       R11 R8 K5 ["Name"]
      106 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
      108 MOVE                             R10 R2
      109 GETIMPORT                        R9 K16 [table.insert]
      111 CALL                             R9 2 0
      112 GETTABLEKS                       R11 R8 K5 ["Name"]
      114 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
      116 MOVE                             R10 R3
      117 GETIMPORT                        R9 K16 [table.insert]
      119 CALL                             R9 2 0
      120 FORGLOOP                         R4 2 [inext] ; [-73]
      122 GETIMPORT                        R4 K21 [table.concat]
      124 MOVE                             R5 R2
      125 LOADK                            R6 K22 [", "]
      126 CALL                             R4 2 1
      127 SETTABLEKS                       R4 R0 K6 ["owners"]
      129 SETTABLEKS                       R3 R0 K7 ["ownerPaths"]
      131 GETTABLEKS                       R2 R0 K0 ["Id"]
      133 JUMPIFNOT                        R2 ; [+13]
      134 GETUPVAL                         R2 1
      135 GETTABLEKS                       R2 R2 K23 ["nodeById"]
      137 GETTABLEKS                       R3 R0 K0 ["Id"]
      139 SETTABLE                         R0 R2 R3
      140 JUMPIFNOT                        R1 ; [+6]
      141 GETUPVAL                         R2 1
      142 GETTABLEKS                       R2 R2 K24 ["parentById"]
      144 GETTABLEKS                       R3 R0 K0 ["Id"]
      146 SETTABLE                         R1 R2 R3
      147 MOVE                             R2 R1
      148 JUMPIFNOT                        R2 ; [+4]
      149 GETUPVAL                         R3 1
      150 GETTABLEKS                       R3 R3 K23 ["nodeById"]
      152 GETTABLE                         R2 R3 R1
      153 JUMPIFNOT                        R2 ; [+16]
      154 GETTABLEKS                       R3 R2 K5 ["Name"]
      156 JUMPIFEQKS                       R3 K25 ["Not In Datamodel"] ; [+5]
      158 GETTABLEKS                       R3 R2 K26 ["inDatamodel"]
      160 JUMPIFNOTEQKB                    R3 FALSE ; [+5]
      162 LOADB                            R3 0
      163 SETTABLEKS                       R3 R0 K26 ["inDatamodel"]
      165 JUMP                             ; [+15]
      166 LOADB                            R3 1
      167 SETTABLEKS                       R3 R0 K26 ["inDatamodel"]
      169 JUMP                             ; [+11]
      170 GETTABLEKS                       R3 R0 K5 ["Name"]
      172 JUMPIFNOTEQKS                    R3 K25 ["Not In Datamodel"] ; [+5]
      174 LOADB                            R3 0
      175 SETTABLEKS                       R3 R0 K26 ["inDatamodel"]
      177 JUMP                             ; [+3]
      178 LOADB                            R3 1
      179 SETTABLEKS                       R3 R0 K26 ["inDatamodel"]
      181 GETTABLEKS                       R3 R0 K27 ["Children"]
      183 JUMPIFNOT                        R3 ; [+9]
      184 GETIMPORT                        R4 K29 [next]
      186 GETTABLEKS                       R5 R0 K27 ["Children"]
      188 CALL                             R4 1 1
      189 JUMPIFNOTEQKNIL                  R4 ; [+2]
      191 LOADB                            R3 0 +1
      192 LOADB                            R3 1
      193 JUMPIFNOT                        R3 ; [+12]
      194 GETTABLEKS                       R4 R0 K27 ["Children"]
      196 LOADNIL                          R5
      197 LOADNIL                          R6
      198 FORGPREP                         R4
      199 GETUPVAL                         R9 2
      200 MOVE                             R10 R8
      201 GETTABLEKS                       R11 R0 K0 ["Id"]
      203 CALL                             R9 2 0
      204 FORGLOOP                         R4 2 ; [-6]
      206 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchAnimationMemory"]
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
       21 FASTCALL1                        TYPE R1 ; [+3]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K5 [type]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+11]
       28 GETTABLEKS                       R2 R1 K7 ["Name"]
       30 JUMPIF                           R2 ; [+7]
       31 GETTABLEKS                       R2 R1 K8 ["Children"]
       33 JUMPIF                           R2 ; [+4]
       34 DUPTABLE                         R2 K12 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
       35 SETTABLEKS                       R1 R2 K8 ["Children"]
       37 MOVE                             R1 R2
       38 GETUPVAL                         R2 2
       39 NEWTABLE                         R3 0 0
       41 SETTABLEKS                       R3 R2 K13 ["nodeById"]
       43 GETUPVAL                         R2 2
       44 NEWTABLE                         R3 0 0
       46 SETTABLEKS                       R3 R2 K14 ["parentById"]
       48 LOADN                            R2 1
       49 NEWCLOSURE                       R3 P0
       50 CAPTURE                          REF R2
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R3
       53 MOVE                             R4 R3
       54 MOVE                             R5 R1
       55 LOADNIL                          R6
       56 CALL                             R4 2 0
       57 GETUPVAL                         R4 2
       58 GETTABLEKS                       R4 R4 K15 ["baselineByKey"]
       60 GETUPVAL                         R5 2
       61 GETTABLEKS                       R5 R5 K13 ["nodeById"]
       63 LOADNIL                          R6
       64 LOADNIL                          R7
       65 FORGPREP                         R5
       66 GETTABLEKS                       R10 R9 K8 ["Children"]
       68 JUMPIFNOT                        R10 ; [+7]
       69 GETIMPORT                        R10 K17 [next]
       71 GETTABLEKS                       R11 R9 K8 ["Children"]
       73 CALL                             R10 1 1
       74 JUMPIFNOTEQKNIL                  R10 ; [+59]
       76 GETTABLEKS                       R10 R9 K18 ["AssetId"]
       78 JUMPIF                           R10 ; [+2]
       79 GETTABLEKS                       R10 R9 K7 ["Name"]
       81 JUMPIFNOT                        R10 ; [+52]
       82 GETTABLE                         R11 R4 R10
       83 JUMPIFNOTEQKNIL                  R11 ; [+9]
       85 GETTABLEKS                       R13 R9 K10 ["Size"]
       87 ORK                              R12 R13 K11 [0]
       88 SETTABLE                         R12 R4 R10
       89 LOADN                            R12 0
       90 SETTABLEKS                       R12 R9 K19 ["change"]
       92 JUMP                             ; [+6]
       93 GETTABLEKS                       R14 R9 K10 ["Size"]
       95 ORK                              R13 R14 K11 [0]
       96 SUB                              R12 R13 R11
       97 SETTABLEKS                       R12 R9 K19 ["change"]
       99 GETUPVAL                         R12 1
      100 GETTABLEKS                       R12 R12 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
      102 CALL                             R12 0 1
      103 GETTABLEKS                       R13 R9 K19 ["change"]
      105 LOADN                            R14 0
      106 JUMPIFNOTLT                      R14 R13 ; [+12]
      108 JUMPIFNOT                        R12 ; [+4]
      109 GETUPVAL                         R13 4
      110 GETTABLEKS                       R13 R13 K20 ["Red"]
      112 JUMP                             ; [+3]
      113 GETUPVAL                         R13 4
      114 GETTABLEKS                       R13 R13 K21 ["IceBlueWarm"]
      116 SETTABLEKS                       R13 R9 K22 ["colorRamp"]
      118 JUMP                             ; [+15]
      119 GETTABLEKS                       R13 R9 K19 ["change"]
      121 LOADN                            R14 0
      122 JUMPIFNOTLT                      R13 R14 ; [+11]
      124 JUMPIFNOT                        R12 ; [+4]
      125 GETUPVAL                         R13 4
      126 GETTABLEKS                       R13 R13 K23 ["Green"]
      128 JUMP                             ; [+3]
      129 GETUPVAL                         R13 4
      130 GETTABLEKS                       R13 R13 K24 ["IceBlueCool"]
      132 SETTABLEKS                       R13 R9 K22 ["colorRamp"]
      134 FORGLOOP                         R5 2 ; [-69]
      136 GETUPVAL                         R5 5
      137 MOVE                             R6 R1
      138 CALL                             R5 1 1
      139 GETUPVAL                         R6 6
      140 GETTABLEKS                       R6 R6 K25 ["get"]
      142 CALL                             R6 0 1
      143 GETUPVAL                         R7 7
      144 MOVE                             R8 R5
      145 MOVE                             R9 R6
      146 CALL                             R7 2 1
      147 GETUPVAL                         R8 8
      148 MOVE                             R9 R1
      149 CALL                             R8 1 0
      150 GETUPVAL                         R8 9
      151 MOVE                             R9 R1
      152 CALL                             R8 1 0
      153 GETUPVAL                         R8 10
      154 MOVE                             R9 R7
      155 CALL                             R8 1 0
      156 GETUPVAL                         R8 11
      157 LENGTH                           R9 R7
      158 CALL                             R8 1 0
      159 CLOSEUPVALS                      R2
      160 RETURN                           R1 1

PROTO_23:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R5 R0 K1 ["Size"]
        5 ORK                              R4 R5 K0 [0]
        6 CALL                             R3 1 1
        7 JUMPIFNOT                        R1 ; [+14]
        8 MOVE                             R5 R2
        9 LOADK                            R8 K2 ["Tooltip"]
       10 LOADK                            R9 K3 ["MemoryLabel"]
       11 DUPTABLE                         R10 K5 [{"value"}]
       12 SETTABLEKS                       R3 R10 K4 ["value"]
       14 NAMECALL                         R6 R1 K6 ["getText"]
       16 CALL                             R6 4 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R4 K9 [table.insert]
       20 CALL                             R4 -1 0
       21 JUMP                             ; [+9]
       22 LOADK                            R7 K10 ["Memory: "]
       23 MOVE                             R8 R3
       24 CONCAT                           R6 R7 R8
       25 FASTCALL2                        TABLE_INSERT R2 R6 ; [+4]
       27 MOVE                             R5 R2
       28 GETIMPORT                        R4 K9 [table.insert]
       30 CALL                             R4 2 0
       31 GETTABLEKS                       R5 R0 K11 ["change"]
       33 ORK                              R4 R5 K0 [0]
       34 JUMPIFEQKN                       R4 K0 [0] ; [+40]
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R4 ; [+3]
       39 LOADK                            R5 K12 ["+"]
       40 JUMP                             ; [+1]
       41 LOADK                            R5 K13 ["-"]
       42 MOVE                             R7 R5
       43 GETUPVAL                         R8 0
       44 FASTCALL1                        MATH_ABS R4 ; [+3]
       45 MOVE                             R10 R4
       46 GETIMPORT                        R9 K16 [math.abs]
       48 CALL                             R9 1 1
       49 CALL                             R8 1 1
       50 CONCAT                           R6 R7 R8
       51 JUMPIFNOT                        R1 ; [+14]
       52 MOVE                             R8 R2
       53 LOADK                            R11 K2 ["Tooltip"]
       54 LOADK                            R12 K17 ["ChangeLabel"]
       55 DUPTABLE                         R13 K5 [{"value"}]
       56 SETTABLEKS                       R6 R13 K4 ["value"]
       58 NAMECALL                         R9 R1 K6 ["getText"]
       60 CALL                             R9 4 -1
       61 FASTCALL                         TABLE_INSERT ; [+2]
       62 GETIMPORT                        R7 K9 [table.insert]
       64 CALL                             R7 -1 0
       65 RETURN                           R2 1
       66 LOADK                            R10 K18 ["Change: "]
       67 MOVE                             R11 R6
       68 CONCAT                           R9 R10 R11
       69 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       71 MOVE                             R8 R2
       72 GETIMPORT                        R7 K9 [table.insert]
       74 CALL                             R7 2 0
       75 RETURN                           R2 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["baselineByKey"]
        5 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 DUPTABLE                         R5 K2 [{"column", "direction"}]
        3 SETTABLEKS                       R1 R5 K0 ["column"]
        5 SETTABLEKS                       R2 R5 K1 ["direction"]
        7 CALL                             R3 2 1
        8 RETURN                           R3 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getFFlagSceneAnalysisBugfixesMay2026"]
        3 CALL                             R1 0 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 NEWTABLE                         R1 0 0
       10 JUMPIFNOT                        R0 ; [+11]
       11 MOVE                             R3 R1
       12 LOADK                            R6 K1 ["Messages"]
       13 LOADK                            R7 K2 ["LocalMachineValuesWarning"]
       14 NAMECALL                         R4 R0 K3 ["getText"]
       16 CALL                             R4 3 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R2 K6 [table.insert]
       20 CALL                             R2 -1 0
       21 RETURN                           R1 1
       22 FASTCALL2K                       TABLE_INSERT R1 K7 ; [+5]
       24 MOVE                             R3 R1
       25 LOADK                            R4 K7 ["Local machine values. Memory usage will vary on player's devices."]
       26 GETIMPORT                        R2 K6 [table.insert]
       28 CALL                             R2 2 0
       29 RETURN                           R1 1

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
       22 GETTABLEKS                       R4 R4 K7 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Observable"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R1 K6 ["Src"]
       31 GETTABLEKS                       R5 R5 K7 ["Util"]
       33 GETTABLEKS                       R5 R5 K10 ["deepFreeze"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R6 R1 K6 ["Src"]
       40 GETTABLEKS                       R6 R6 K7 ["Util"]
       42 GETTABLEKS                       R6 R6 K11 ["formatSize"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R7 R1 K6 ["Src"]
       49 GETTABLEKS                       R7 R7 K7 ["Util"]
       51 GETTABLEKS                       R7 R7 K12 ["measureHeaderText"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R1 K6 ["Src"]
       58 GETTABLEKS                       R8 R8 K13 ["Resources"]
       60 GETTABLEKS                       R8 R8 K14 ["ColorRamps"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Components"]
       69 GETTABLEKS                       R9 R9 K16 ["AbridgedPathCell"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K5 [require]
       74 GETTABLEKS                       R10 R1 K17 ["Bin"]
       76 GETTABLEKS                       R10 R10 K18 ["Common"]
       78 GETTABLEKS                       R10 R10 K19 ["defineLuaFlags"]
       80 CALL                             R9 1 1
       81 NEWTABLE                         R10 0 6
       83 DUPTABLE                         R11 K34 [{["id"] = "name", ["headerText"] = "Name", ["headerKey"] = "Name", ["sortKey"] = "name", ["width"] = 0.35, ["idealWidth"] = 200, ["priority"] = 1, ["order"] = 1, ["cell"]}]
       84 DUPCLOSURE                       R12 K35 [PROTO_0]
       85 SETTABLEKS                       R12 R11 K33 ["cell"]
       87 DUPTABLE                         R12 K41 [{["id"] = "size", ["headerText"] = "Memory", ["headerKey"] = "Memory", ["sortKey"] = "size", ["width"] = 0.15, ["idealWidth"] = 90, ["priority"] = 2, ["order"] = 2, ["cell"]}]
       88 DUPCLOSURE                       R13 K42 [PROTO_1]
       89 SETTABLEKS                       R13 R12 K33 ["cell"]
       91 DUPTABLE                         R13 K49 [{["id"] = "change", ["headerText"] = "Change", ["headerKey"] = "Change", ["sortKey"] = "change", ["width"] = 0.1, ["idealWidth"] = 60, ["priority"] = 6, ["order"] = 3, ["cell"]}]
       92 DUPCLOSURE                       R14 K50 [PROTO_2]
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R14 R13 K33 ["cell"]
       96 DUPTABLE                         R14 K55 [{["id"] = "references", ["headerText"] = "References", ["headerKey"] = "References", ["sortKey"] = "references", ["width"] = 0.05, ["idealWidth"] = 60, ["priority"] = 3, ["order"] = 4, ["cell"]}]
       97 DUPCLOSURE                       R15 K56 [PROTO_3]
       98 SETTABLEKS                       R15 R14 K33 ["cell"]
      100 DUPTABLE                         R15 K63 [{["id"] = "owners", ["headerText"] = "Owners", ["headerKey"] = "Owners", ["sortKey"] = "owners", ["width"] = 0.3, ["idealWidth"] = 300, ["priority"] = 4, ["order"] = 5, ["cell"], ["renderCell"]}]
      101 DUPCLOSURE                       R16 K64 [PROTO_4]
      102 SETTABLEKS                       R16 R15 K33 ["cell"]
      104 SETTABLEKS                       R8 R15 K62 ["renderCell"]
      106 DUPTABLE                         R16 K69 [{["id"] = "inDatamodel", ["headerText"] = "In Datamodel", ["headerKey"] = "InDatamodel", ["sortKey"] = "inDatamodel", ["width"] = 0.1, ["idealWidth"] = 100, ["priority"] = 5, ["order"] = 6, ["cell"]}]
      107 DUPCLOSURE                       R17 K70 [PROTO_5]
      108 SETTABLEKS                       R17 R16 K33 ["cell"]
      110 SETLIST                          R10 R11 6 [1]
      112 MOVE                             R11 R10
      113 LOADNIL                          R12
      114 LOADNIL                          R13
      115 FORGPREP                         R11
      116 MOVE                             R16 R6
      117 GETTABLEKS                       R17 R15 K22 ["headerText"]
      119 CALL                             R16 1 1
      120 SETTABLEKS                       R16 R15 K71 ["minWidth"]
      122 FORGLOOP                         R11 2 ; [-7]
      124 NEWTABLE                         R11 0 0
      126 SETTABLEKS                       R11 R0 K72 ["instanceOrder"]
      128 NEWTABLE                         R11 0 0
      130 SETTABLEKS                       R11 R0 K73 ["nodeById"]
      132 NEWTABLE                         R11 0 0
      134 SETTABLEKS                       R11 R0 K74 ["parentById"]
      136 NEWTABLE                         R11 0 0
      138 SETTABLEKS                       R11 R0 K75 ["baselineByKey"]
      140 GETIMPORT                        R11 K78 [table.freeze]
      142 DUPTABLE                         R12 K81 [{"Column", "Direction"}]
      143 GETIMPORT                        R13 K78 [table.freeze]
      145 DUPTABLE                         R14 K84 [{["none"] = "none", ["Name"] = "name", ["Size"] = "size", ["References"] = "references", ["Owners"] = "owners", ["InDatamodel"] = "inDatamodel"}]
      146 CALL                             R13 1 1
      147 SETTABLEKS                       R13 R12 K79 ["Column"]
      149 GETIMPORT                        R13 K78 [table.freeze]
      151 DUPTABLE                         R14 K87 [{["asc"] = "asc", ["desc"] = "desc"}]
      152 CALL                             R13 1 1
      153 SETTABLEKS                       R13 R12 K80 ["Direction"]
      155 CALL                             R11 1 1
      156 MOVE                             R12 R4
      157 DUPTABLE                         R13 K91 [{["Name"] = "Root", ["Size"] = 0, ["Children"]}]
      158 NEWTABLE                         R14 0 0
      160 SETTABLEKS                       R14 R13 K90 ["Children"]
      162 CALL                             R12 1 1
      163 GETTABLEKS                       R13 R3 K92 ["create"]
      165 MOVE                             R14 R12
      166 CALL                             R13 1 2
      167 GETTABLEKS                       R15 R3 K92 ["create"]
      169 NEWTABLE                         R16 0 0
      171 CALL                             R15 1 2
      172 GETTABLEKS                       R17 R3 K92 ["create"]
      174 MOVE                             R18 R4
      175 DUPTABLE                         R19 K95 [{"column", "direction"}]
      176 GETTABLEKS                       R20 R11 K79 ["Column"]
      178 GETTABLEKS                       R20 R20 K83 ["Size"]
      180 SETTABLEKS                       R20 R19 K93 ["column"]
      182 GETTABLEKS                       R20 R11 K80 ["Direction"]
      184 GETTABLEKS                       R20 R20 K86 ["desc"]
      186 SETTABLEKS                       R20 R19 K94 ["direction"]
      188 CALL                             R18 1 -1
      189 CALL                             R17 -1 2
      190 GETTABLEKS                       R19 R3 K92 ["create"]
      192 LOADN                            R20 0
      193 CALL                             R19 1 2
      194 DUPCLOSURE                       R21 K96 [PROTO_6]
      195 CAPTURE                          VAL R13
      196 SETTABLEKS                       R21 R0 K97 ["getNodesObservable"]
      198 DUPCLOSURE                       R21 K98 [PROTO_7]
      199 CAPTURE                          VAL R15
      200 SETTABLEKS                       R21 R0 K99 ["getOrderObservable"]
      202 DUPCLOSURE                       R21 K100 [PROTO_8]
      203 CAPTURE                          VAL R17
      204 SETTABLEKS                       R21 R0 K101 ["getSortStateObservable"]
      206 DUPCLOSURE                       R21 K102 [PROTO_9]
      207 CAPTURE                          VAL R19
      208 SETTABLEKS                       R21 R0 K103 ["getTotalCountObservable"]
      210 DUPCLOSURE                       R21 K104 [PROTO_10]
      211 CAPTURE                          VAL R10
      212 SETTABLEKS                       R21 R0 K105 ["getColumns"]
      214 DUPCLOSURE                       R21 K106 [PROTO_11]
      215 CAPTURE                          VAL R21
      216 DUPCLOSURE                       R22 K107 [PROTO_13]
      217 CAPTURE                          VAL R11
      218 DUPCLOSURE                       R23 K108 [PROTO_14]
      219 CAPTURE                          VAL R17
      220 CAPTURE                          VAL R11
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R13
      224 CAPTURE                          VAL R21
      225 CAPTURE                          VAL R22
      226 CAPTURE                          VAL R16
      227 CAPTURE                          VAL R20
      228 SETTABLEKS                       R23 R0 K109 ["setSort"]
      230 DUPCLOSURE                       R23 K110 [PROTO_15]
      231 CAPTURE                          VAL R14
      232 CAPTURE                          VAL R12
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R0
      236 SETTABLEKS                       R23 R0 K111 ["reset"]
      238 DUPCLOSURE                       R23 K112 [PROTO_16]
      239 CAPTURE                          VAL R15
      240 SETTABLEKS                       R23 R0 K113 ["getIndexForId"]
      242 DUPCLOSURE                       R23 K114 [PROTO_17]
      243 CAPTURE                          VAL R0
      244 SETTABLEKS                       R23 R0 K115 ["getNodeById"]
      246 DUPCLOSURE                       R23 K116 [PROTO_18]
      247 CAPTURE                          VAL R0
      248 CAPTURE                          VAL R2
      249 SETTABLEKS                       R23 R0 K117 ["onRightClick"]
      251 DUPCLOSURE                       R23 K118 [PROTO_19]
      252 CAPTURE                          VAL R0
      253 SETTABLEKS                       R23 R0 K119 ["getDepth"]
      255 DUPCLOSURE                       R23 K120 [PROTO_20]
      256 CAPTURE                          VAL R15
      257 CAPTURE                          VAL R0
      258 SETTABLEKS                       R23 R0 K121 ["getNodeAtIndex"]
      260 DUPCLOSURE                       R23 K122 [PROTO_22]
      261 CAPTURE                          VAL R2
      262 CAPTURE                          VAL R9
      263 CAPTURE                          VAL R0
      264 CAPTURE                          VAL R12
      265 CAPTURE                          VAL R7
      266 CAPTURE                          VAL R21
      267 CAPTURE                          VAL R17
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R4
      270 CAPTURE                          VAL R14
      271 CAPTURE                          VAL R16
      272 CAPTURE                          VAL R20
      273 SETTABLEKS                       R23 R0 K123 ["RunQueryAsync"]
      275 DUPCLOSURE                       R23 K124 [PROTO_23]
      276 CAPTURE                          VAL R5
      277 SETTABLEKS                       R23 R0 K125 ["tooltipLabels"]
      279 DUPCLOSURE                       R23 K126 [PROTO_24]
      280 CAPTURE                          VAL R0
      281 SETTABLEKS                       R23 R0 K127 ["clearBaselines"]
      283 DUPCLOSURE                       R23 K128 [PROTO_25]
      284 CAPTURE                          VAL R22
      285 SETTABLEKS                       R23 R0 K129 ["sortedIds"]
      287 DUPCLOSURE                       R23 K130 [PROTO_26]
      288 CAPTURE                          VAL R9
      289 SETTABLEKS                       R23 R0 K131 ["getWarnings"]
      291 RETURN                           R0 1
