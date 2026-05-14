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
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["reset"]
       11 CALL                             R2 0 0
       12 GETUPVAL                         R2 2
       13 RETURN                           R2 1
       14 FASTCALL1                        TYPE R1 ; [+3]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R2 K4 [type]
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKS                    R2 K5 ["table"] ; [+17]
       21 GETTABLEKS                       R2 R1 K6 ["Name"]
       23 JUMPIF                           R2 ; [+13]
       24 GETTABLEKS                       R2 R1 K7 ["Children"]
       26 JUMPIF                           R2 ; [+10]
       27 DUPTABLE                         R2 K9 [{"Name", "Size", "Children"}]
       28 LOADK                            R3 K10 ["Root"]
       29 SETTABLEKS                       R3 R2 K6 ["Name"]
       31 LOADN                            R3 0
       32 SETTABLEKS                       R3 R2 K8 ["Size"]
       34 SETTABLEKS                       R1 R2 K7 ["Children"]
       36 MOVE                             R1 R2
       37 GETUPVAL                         R2 1
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K11 ["nodeById"]
       42 GETUPVAL                         R2 1
       43 NEWTABLE                         R3 0 0
       45 SETTABLEKS                       R3 R2 K12 ["parentById"]
       47 LOADN                            R2 1
       48 NEWCLOSURE                       R3 P0
       49 CAPTURE                          REF R2
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          VAL R3
       52 MOVE                             R4 R3
       53 MOVE                             R5 R1
       54 LOADNIL                          R6
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 1
       57 GETTABLEKS                       R4 R4 K13 ["baselineByKey"]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K11 ["nodeById"]
       62 LOADNIL                          R6
       63 LOADNIL                          R7
       64 FORGPREP                         R5
       65 GETTABLEKS                       R10 R9 K7 ["Children"]
       67 JUMPIFNOT                        R10 ; [+7]
       68 GETIMPORT                        R10 K15 [next]
       70 GETTABLEKS                       R11 R9 K7 ["Children"]
       72 CALL                             R10 1 1
       73 JUMPIFNOTEQKNIL                  R10 ; [+45]
       75 GETTABLEKS                       R10 R9 K16 ["AssetId"]
       77 JUMPIF                           R10 ; [+2]
       78 GETTABLEKS                       R10 R9 K6 ["Name"]
       80 JUMPIFNOT                        R10 ; [+38]
       81 GETTABLE                         R11 R4 R10
       82 JUMPIFNOTEQKNIL                  R11 ; [+9]
       84 GETTABLEKS                       R13 R9 K8 ["Size"]
       86 ORK                              R12 R13 K17 [0]
       87 SETTABLE                         R12 R4 R10
       88 LOADN                            R12 0
       89 SETTABLEKS                       R12 R9 K18 ["change"]
       91 JUMP                             ; [+6]
       92 GETTABLEKS                       R14 R9 K8 ["Size"]
       94 ORK                              R13 R14 K17 [0]
       95 SUB                              R12 R13 R11
       96 SETTABLEKS                       R12 R9 K18 ["change"]
       98 GETTABLEKS                       R12 R9 K18 ["change"]
      100 LOADN                            R13 0
      101 JUMPIFNOTLT                      R13 R12 ; [+7]
      103 GETUPVAL                         R12 3
      104 GETTABLEKS                       R12 R12 K19 ["IceBlueWarm"]
      106 SETTABLEKS                       R12 R9 K20 ["colorRamp"]
      108 JUMP                             ; [+10]
      109 GETTABLEKS                       R12 R9 K18 ["change"]
      111 LOADN                            R13 0
      112 JUMPIFNOTLT                      R12 R13 ; [+6]
      114 GETUPVAL                         R12 3
      115 GETTABLEKS                       R12 R12 K21 ["IceBlueCool"]
      117 SETTABLEKS                       R12 R9 K20 ["colorRamp"]
      119 FORGLOOP                         R5 2 ; [-55]
      121 GETUPVAL                         R5 4
      122 MOVE                             R6 R1
      123 CALL                             R5 1 1
      124 GETUPVAL                         R6 5
      125 GETTABLEKS                       R6 R6 K22 ["get"]
      127 CALL                             R6 0 1
      128 GETUPVAL                         R7 6
      129 MOVE                             R8 R5
      130 MOVE                             R9 R6
      131 CALL                             R7 2 1
      132 GETUPVAL                         R8 7
      133 MOVE                             R9 R1
      134 CALL                             R8 1 0
      135 GETUPVAL                         R8 8
      136 MOVE                             R9 R1
      137 CALL                             R8 1 0
      138 GETUPVAL                         R8 9
      139 MOVE                             R9 R7
      140 CALL                             R8 1 0
      141 GETUPVAL                         R8 10
      142 LENGTH                           R9 R7
      143 CALL                             R8 1 0
      144 CLOSEUPVALS                      R2
      145 RETURN                           R1 1

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
       58 GETTABLEKS                       R8 R8 K13 ["Components"]
       60 GETTABLEKS                       R8 R8 K14 ["AbridgedPathCell"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K5 [require]
       65 GETTABLEKS                       R9 R1 K6 ["Src"]
       67 GETTABLEKS                       R9 R9 K15 ["Resources"]
       69 GETTABLEKS                       R9 R9 K16 ["ColorRamps"]
       71 CALL                             R8 1 1
       72 NEWTABLE                         R9 0 6
       74 DUPTABLE                         R10 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       75 LOADK                            R11 K27 ["name"]
       76 SETTABLEKS                       R11 R10 K17 ["id"]
       78 LOADK                            R11 K28 ["Name"]
       79 SETTABLEKS                       R11 R10 K18 ["headerText"]
       81 LOADK                            R11 K28 ["Name"]
       82 SETTABLEKS                       R11 R10 K19 ["headerKey"]
       84 LOADK                            R11 K27 ["name"]
       85 SETTABLEKS                       R11 R10 K20 ["sortKey"]
       87 LOADK                            R11 K29 [0.35]
       88 SETTABLEKS                       R11 R10 K21 ["width"]
       90 LOADN                            R11 200
       91 SETTABLEKS                       R11 R10 K22 ["idealWidth"]
       93 LOADN                            R11 1
       94 SETTABLEKS                       R11 R10 K23 ["priority"]
       96 LOADN                            R11 1
       97 SETTABLEKS                       R11 R10 K24 ["order"]
       99 DUPCLOSURE                       R11 K30 [PROTO_0]
      100 SETTABLEKS                       R11 R10 K25 ["cell"]
      102 DUPTABLE                         R11 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      103 LOADK                            R12 K31 ["size"]
      104 SETTABLEKS                       R12 R11 K17 ["id"]
      106 LOADK                            R12 K32 ["Memory"]
      107 SETTABLEKS                       R12 R11 K18 ["headerText"]
      109 LOADK                            R12 K32 ["Memory"]
      110 SETTABLEKS                       R12 R11 K19 ["headerKey"]
      112 LOADK                            R12 K31 ["size"]
      113 SETTABLEKS                       R12 R11 K20 ["sortKey"]
      115 LOADK                            R12 K33 [0.15]
      116 SETTABLEKS                       R12 R11 K21 ["width"]
      118 LOADN                            R12 90
      119 SETTABLEKS                       R12 R11 K22 ["idealWidth"]
      121 LOADN                            R12 2
      122 SETTABLEKS                       R12 R11 K23 ["priority"]
      124 LOADN                            R12 2
      125 SETTABLEKS                       R12 R11 K24 ["order"]
      127 DUPCLOSURE                       R12 K34 [PROTO_1]
      128 SETTABLEKS                       R12 R11 K25 ["cell"]
      130 DUPTABLE                         R12 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      131 LOADK                            R13 K35 ["change"]
      132 SETTABLEKS                       R13 R12 K17 ["id"]
      134 LOADK                            R13 K36 ["Change"]
      135 SETTABLEKS                       R13 R12 K18 ["headerText"]
      137 LOADK                            R13 K36 ["Change"]
      138 SETTABLEKS                       R13 R12 K19 ["headerKey"]
      140 LOADK                            R13 K35 ["change"]
      141 SETTABLEKS                       R13 R12 K20 ["sortKey"]
      143 LOADK                            R13 K37 [0.1]
      144 SETTABLEKS                       R13 R12 K21 ["width"]
      146 LOADN                            R13 60
      147 SETTABLEKS                       R13 R12 K22 ["idealWidth"]
      149 LOADN                            R13 6
      150 SETTABLEKS                       R13 R12 K23 ["priority"]
      152 LOADN                            R13 3
      153 SETTABLEKS                       R13 R12 K24 ["order"]
      155 DUPCLOSURE                       R13 K38 [PROTO_2]
      156 CAPTURE                          VAL R5
      157 SETTABLEKS                       R13 R12 K25 ["cell"]
      159 DUPTABLE                         R13 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      160 LOADK                            R14 K39 ["references"]
      161 SETTABLEKS                       R14 R13 K17 ["id"]
      163 LOADK                            R14 K40 ["References"]
      164 SETTABLEKS                       R14 R13 K18 ["headerText"]
      166 LOADK                            R14 K40 ["References"]
      167 SETTABLEKS                       R14 R13 K19 ["headerKey"]
      169 LOADK                            R14 K39 ["references"]
      170 SETTABLEKS                       R14 R13 K20 ["sortKey"]
      172 LOADK                            R14 K41 [0.05]
      173 SETTABLEKS                       R14 R13 K21 ["width"]
      175 LOADN                            R14 60
      176 SETTABLEKS                       R14 R13 K22 ["idealWidth"]
      178 LOADN                            R14 3
      179 SETTABLEKS                       R14 R13 K23 ["priority"]
      181 LOADN                            R14 4
      182 SETTABLEKS                       R14 R13 K24 ["order"]
      184 DUPCLOSURE                       R14 K42 [PROTO_3]
      185 SETTABLEKS                       R14 R13 K25 ["cell"]
      187 DUPTABLE                         R14 K44 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell", "renderCell"}]
      188 LOADK                            R15 K45 ["owners"]
      189 SETTABLEKS                       R15 R14 K17 ["id"]
      191 LOADK                            R15 K46 ["Owners"]
      192 SETTABLEKS                       R15 R14 K18 ["headerText"]
      194 LOADK                            R15 K46 ["Owners"]
      195 SETTABLEKS                       R15 R14 K19 ["headerKey"]
      197 LOADK                            R15 K45 ["owners"]
      198 SETTABLEKS                       R15 R14 K20 ["sortKey"]
      200 LOADK                            R15 K47 [0.3]
      201 SETTABLEKS                       R15 R14 K21 ["width"]
      203 LOADN                            R15 44
      204 SETTABLEKS                       R15 R14 K22 ["idealWidth"]
      206 LOADN                            R15 4
      207 SETTABLEKS                       R15 R14 K23 ["priority"]
      209 LOADN                            R15 5
      210 SETTABLEKS                       R15 R14 K24 ["order"]
      212 DUPCLOSURE                       R15 K48 [PROTO_4]
      213 SETTABLEKS                       R15 R14 K25 ["cell"]
      215 SETTABLEKS                       R7 R14 K43 ["renderCell"]
      217 DUPTABLE                         R15 K26 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      218 LOADK                            R16 K49 ["inDatamodel"]
      219 SETTABLEKS                       R16 R15 K17 ["id"]
      221 LOADK                            R16 K50 ["In Datamodel"]
      222 SETTABLEKS                       R16 R15 K18 ["headerText"]
      224 LOADK                            R16 K51 ["InDatamodel"]
      225 SETTABLEKS                       R16 R15 K19 ["headerKey"]
      227 LOADK                            R16 K49 ["inDatamodel"]
      228 SETTABLEKS                       R16 R15 K20 ["sortKey"]
      230 LOADK                            R16 K37 [0.1]
      231 SETTABLEKS                       R16 R15 K21 ["width"]
      233 LOADN                            R16 100
      234 SETTABLEKS                       R16 R15 K22 ["idealWidth"]
      236 LOADN                            R16 5
      237 SETTABLEKS                       R16 R15 K23 ["priority"]
      239 LOADN                            R16 6
      240 SETTABLEKS                       R16 R15 K24 ["order"]
      242 DUPCLOSURE                       R16 K52 [PROTO_5]
      243 SETTABLEKS                       R16 R15 K25 ["cell"]
      245 SETLIST                          R9 R10 6 [1]
      247 MOVE                             R10 R9
      248 LOADNIL                          R11
      249 LOADNIL                          R12
      250 FORGPREP                         R10
      251 MOVE                             R15 R6
      252 GETTABLEKS                       R16 R14 K18 ["headerText"]
      254 CALL                             R15 1 1
      255 SETTABLEKS                       R15 R14 K53 ["minWidth"]
      257 FORGLOOP                         R10 2 ; [-7]
      259 NEWTABLE                         R10 0 0
      261 SETTABLEKS                       R10 R0 K54 ["instanceOrder"]
      263 NEWTABLE                         R10 0 0
      265 SETTABLEKS                       R10 R0 K55 ["nodeById"]
      267 NEWTABLE                         R10 0 0
      269 SETTABLEKS                       R10 R0 K56 ["parentById"]
      271 NEWTABLE                         R10 0 0
      273 SETTABLEKS                       R10 R0 K57 ["baselineByKey"]
      275 GETIMPORT                        R10 K60 [table.freeze]
      277 DUPTABLE                         R11 K63 [{"Column", "Direction"}]
      278 GETIMPORT                        R12 K60 [table.freeze]
      280 DUPTABLE                         R13 K66 [{"none", "Name", "Size", "References", "Owners", "InDatamodel"}]
      281 LOADK                            R14 K64 ["none"]
      282 SETTABLEKS                       R14 R13 K64 ["none"]
      284 LOADK                            R14 K27 ["name"]
      285 SETTABLEKS                       R14 R13 K28 ["Name"]
      287 LOADK                            R14 K31 ["size"]
      288 SETTABLEKS                       R14 R13 K65 ["Size"]
      290 LOADK                            R14 K39 ["references"]
      291 SETTABLEKS                       R14 R13 K40 ["References"]
      293 LOADK                            R14 K45 ["owners"]
      294 SETTABLEKS                       R14 R13 K46 ["Owners"]
      296 LOADK                            R14 K49 ["inDatamodel"]
      297 SETTABLEKS                       R14 R13 K51 ["InDatamodel"]
      299 CALL                             R12 1 1
      300 SETTABLEKS                       R12 R11 K61 ["Column"]
      302 GETIMPORT                        R12 K60 [table.freeze]
      304 DUPTABLE                         R13 K69 [{"asc", "desc"}]
      305 LOADK                            R14 K67 ["asc"]
      306 SETTABLEKS                       R14 R13 K67 ["asc"]
      308 LOADK                            R14 K68 ["desc"]
      309 SETTABLEKS                       R14 R13 K68 ["desc"]
      311 CALL                             R12 1 1
      312 SETTABLEKS                       R12 R11 K62 ["Direction"]
      314 CALL                             R10 1 1
      315 MOVE                             R11 R4
      316 DUPTABLE                         R12 K71 [{"Name", "Size", "Children"}]
      317 LOADK                            R13 K72 ["Root"]
      318 SETTABLEKS                       R13 R12 K28 ["Name"]
      320 LOADN                            R13 0
      321 SETTABLEKS                       R13 R12 K65 ["Size"]
      323 NEWTABLE                         R13 0 0
      325 SETTABLEKS                       R13 R12 K70 ["Children"]
      327 CALL                             R11 1 1
      328 GETTABLEKS                       R12 R3 K73 ["create"]
      330 MOVE                             R13 R11
      331 CALL                             R12 1 2
      332 GETTABLEKS                       R14 R3 K73 ["create"]
      334 NEWTABLE                         R15 0 0
      336 CALL                             R14 1 2
      337 GETTABLEKS                       R16 R3 K73 ["create"]
      339 MOVE                             R17 R4
      340 DUPTABLE                         R18 K76 [{"column", "direction"}]
      341 GETTABLEKS                       R19 R10 K61 ["Column"]
      343 GETTABLEKS                       R19 R19 K65 ["Size"]
      345 SETTABLEKS                       R19 R18 K74 ["column"]
      347 GETTABLEKS                       R19 R10 K62 ["Direction"]
      349 GETTABLEKS                       R19 R19 K68 ["desc"]
      351 SETTABLEKS                       R19 R18 K75 ["direction"]
      353 CALL                             R17 1 -1
      354 CALL                             R16 -1 2
      355 GETTABLEKS                       R18 R3 K73 ["create"]
      357 LOADN                            R19 0
      358 CALL                             R18 1 2
      359 DUPCLOSURE                       R20 K77 [PROTO_6]
      360 CAPTURE                          VAL R12
      361 SETTABLEKS                       R20 R0 K78 ["getNodesObservable"]
      363 DUPCLOSURE                       R20 K79 [PROTO_7]
      364 CAPTURE                          VAL R14
      365 SETTABLEKS                       R20 R0 K80 ["getOrderObservable"]
      367 DUPCLOSURE                       R20 K81 [PROTO_8]
      368 CAPTURE                          VAL R16
      369 SETTABLEKS                       R20 R0 K82 ["getSortStateObservable"]
      371 DUPCLOSURE                       R20 K83 [PROTO_9]
      372 CAPTURE                          VAL R18
      373 SETTABLEKS                       R20 R0 K84 ["getTotalCountObservable"]
      375 DUPCLOSURE                       R20 K85 [PROTO_10]
      376 CAPTURE                          VAL R9
      377 SETTABLEKS                       R20 R0 K86 ["getColumns"]
      379 DUPCLOSURE                       R20 K87 [PROTO_11]
      380 CAPTURE                          VAL R20
      381 DUPCLOSURE                       R21 K88 [PROTO_13]
      382 CAPTURE                          VAL R10
      383 DUPCLOSURE                       R22 K89 [PROTO_14]
      384 CAPTURE                          VAL R16
      385 CAPTURE                          VAL R10
      386 CAPTURE                          VAL R4
      387 CAPTURE                          VAL R17
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R20
      390 CAPTURE                          VAL R21
      391 CAPTURE                          VAL R15
      392 CAPTURE                          VAL R19
      393 SETTABLEKS                       R22 R0 K90 ["setSort"]
      395 DUPCLOSURE                       R22 K91 [PROTO_15]
      396 CAPTURE                          VAL R13
      397 CAPTURE                          VAL R11
      398 CAPTURE                          VAL R15
      399 CAPTURE                          VAL R19
      400 CAPTURE                          VAL R0
      401 SETTABLEKS                       R22 R0 K92 ["reset"]
      403 DUPCLOSURE                       R22 K93 [PROTO_16]
      404 CAPTURE                          VAL R14
      405 SETTABLEKS                       R22 R0 K94 ["getIndexForId"]
      407 DUPCLOSURE                       R22 K95 [PROTO_17]
      408 CAPTURE                          VAL R0
      409 SETTABLEKS                       R22 R0 K96 ["getNodeById"]
      411 DUPCLOSURE                       R22 K97 [PROTO_18]
      412 CAPTURE                          VAL R0
      413 CAPTURE                          VAL R2
      414 SETTABLEKS                       R22 R0 K98 ["onRightClick"]
      416 DUPCLOSURE                       R22 K99 [PROTO_19]
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R22 R0 K100 ["getDepth"]
      420 DUPCLOSURE                       R22 K101 [PROTO_20]
      421 CAPTURE                          VAL R14
      422 CAPTURE                          VAL R0
      423 SETTABLEKS                       R22 R0 K102 ["getNodeAtIndex"]
      425 DUPCLOSURE                       R22 K103 [PROTO_22]
      426 CAPTURE                          VAL R2
      427 CAPTURE                          VAL R0
      428 CAPTURE                          VAL R11
      429 CAPTURE                          VAL R8
      430 CAPTURE                          VAL R20
      431 CAPTURE                          VAL R16
      432 CAPTURE                          VAL R21
      433 CAPTURE                          VAL R4
      434 CAPTURE                          VAL R13
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R19
      437 SETTABLEKS                       R22 R0 K104 ["RunQueryAsync"]
      439 DUPCLOSURE                       R22 K105 [PROTO_23]
      440 CAPTURE                          VAL R5
      441 SETTABLEKS                       R22 R0 K106 ["tooltipLabels"]
      443 DUPCLOSURE                       R22 K107 [PROTO_24]
      444 CAPTURE                          VAL R0
      445 SETTABLEKS                       R22 R0 K108 ["clearBaselines"]
      447 DUPCLOSURE                       R22 K109 [PROTO_25]
      448 CAPTURE                          VAL R21
      449 SETTABLEKS                       R22 R0 K110 ["sortedIds"]
      451 RETURN                           R0 1
