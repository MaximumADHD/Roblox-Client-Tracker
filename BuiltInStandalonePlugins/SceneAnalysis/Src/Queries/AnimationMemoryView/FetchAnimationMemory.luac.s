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
       26 JUMPIFNOTEQKS                    R2 K6 ["table"] ; [+17]
       28 GETTABLEKS                       R2 R1 K7 ["Name"]
       30 JUMPIF                           R2 ; [+13]
       31 GETTABLEKS                       R2 R1 K8 ["Children"]
       33 JUMPIF                           R2 ; [+10]
       34 DUPTABLE                         R2 K10 [{"Name", "Size", "Children"}]
       35 LOADK                            R3 K11 ["Root"]
       36 SETTABLEKS                       R3 R2 K7 ["Name"]
       38 LOADN                            R3 0
       39 SETTABLEKS                       R3 R2 K9 ["Size"]
       41 SETTABLEKS                       R1 R2 K8 ["Children"]
       43 MOVE                             R1 R2
       44 GETUPVAL                         R2 2
       45 NEWTABLE                         R3 0 0
       47 SETTABLEKS                       R3 R2 K12 ["nodeById"]
       49 GETUPVAL                         R2 2
       50 NEWTABLE                         R3 0 0
       52 SETTABLEKS                       R3 R2 K13 ["parentById"]
       54 LOADN                            R2 1
       55 NEWCLOSURE                       R3 P0
       56 CAPTURE                          REF R2
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          VAL R3
       59 MOVE                             R4 R3
       60 MOVE                             R5 R1
       61 LOADNIL                          R6
       62 CALL                             R4 2 0
       63 GETUPVAL                         R4 2
       64 GETTABLEKS                       R4 R4 K14 ["baselineByKey"]
       66 GETUPVAL                         R5 2
       67 GETTABLEKS                       R5 R5 K12 ["nodeById"]
       69 LOADNIL                          R6
       70 LOADNIL                          R7
       71 FORGPREP                         R5
       72 GETTABLEKS                       R10 R9 K8 ["Children"]
       74 JUMPIFNOT                        R10 ; [+7]
       75 GETIMPORT                        R10 K16 [next]
       77 GETTABLEKS                       R11 R9 K8 ["Children"]
       79 CALL                             R10 1 1
       80 JUMPIFNOTEQKNIL                  R10 ; [+59]
       82 GETTABLEKS                       R10 R9 K17 ["AssetId"]
       84 JUMPIF                           R10 ; [+2]
       85 GETTABLEKS                       R10 R9 K7 ["Name"]
       87 JUMPIFNOT                        R10 ; [+52]
       88 GETTABLE                         R11 R4 R10
       89 JUMPIFNOTEQKNIL                  R11 ; [+9]
       91 GETTABLEKS                       R13 R9 K9 ["Size"]
       93 ORK                              R12 R13 K18 [0]
       94 SETTABLE                         R12 R4 R10
       95 LOADN                            R12 0
       96 SETTABLEKS                       R12 R9 K19 ["change"]
       98 JUMP                             ; [+6]
       99 GETTABLEKS                       R14 R9 K9 ["Size"]
      101 ORK                              R13 R14 K18 [0]
      102 SUB                              R12 R13 R11
      103 SETTABLEKS                       R12 R9 K19 ["change"]
      105 GETUPVAL                         R12 1
      106 GETTABLEKS                       R12 R12 K2 ["getFFlagSceneAnalysisBugfixesMay2026"]
      108 CALL                             R12 0 1
      109 GETTABLEKS                       R13 R9 K19 ["change"]
      111 LOADN                            R14 0
      112 JUMPIFNOTLT                      R14 R13 ; [+12]
      114 JUMPIFNOT                        R12 ; [+4]
      115 GETUPVAL                         R13 4
      116 GETTABLEKS                       R13 R13 K20 ["Red"]
      118 JUMP                             ; [+3]
      119 GETUPVAL                         R13 4
      120 GETTABLEKS                       R13 R13 K21 ["IceBlueWarm"]
      122 SETTABLEKS                       R13 R9 K22 ["colorRamp"]
      124 JUMP                             ; [+15]
      125 GETTABLEKS                       R13 R9 K19 ["change"]
      127 LOADN                            R14 0
      128 JUMPIFNOTLT                      R13 R14 ; [+11]
      130 JUMPIFNOT                        R12 ; [+4]
      131 GETUPVAL                         R13 4
      132 GETTABLEKS                       R13 R13 K23 ["Green"]
      134 JUMP                             ; [+3]
      135 GETUPVAL                         R13 4
      136 GETTABLEKS                       R13 R13 K24 ["IceBlueCool"]
      138 SETTABLEKS                       R13 R9 K22 ["colorRamp"]
      140 FORGLOOP                         R5 2 ; [-69]
      142 GETUPVAL                         R5 5
      143 MOVE                             R6 R1
      144 CALL                             R5 1 1
      145 GETUPVAL                         R6 6
      146 GETTABLEKS                       R6 R6 K25 ["get"]
      148 CALL                             R6 0 1
      149 GETUPVAL                         R7 7
      150 MOVE                             R8 R5
      151 MOVE                             R9 R6
      152 CALL                             R7 2 1
      153 GETUPVAL                         R8 8
      154 MOVE                             R9 R1
      155 CALL                             R8 1 0
      156 GETUPVAL                         R8 9
      157 MOVE                             R9 R1
      158 CALL                             R8 1 0
      159 GETUPVAL                         R8 10
      160 MOVE                             R9 R7
      161 CALL                             R8 1 0
      162 GETUPVAL                         R8 11
      163 LENGTH                           R9 R7
      164 CALL                             R8 1 0
      165 CLOSEUPVALS                      R2
      166 RETURN                           R1 1

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
       83 DUPTABLE                         R11 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       84 LOADK                            R12 K30 ["name"]
       85 SETTABLEKS                       R12 R11 K20 ["id"]
       87 LOADK                            R12 K31 ["Name"]
       88 SETTABLEKS                       R12 R11 K21 ["headerText"]
       90 LOADK                            R12 K31 ["Name"]
       91 SETTABLEKS                       R12 R11 K22 ["headerKey"]
       93 LOADK                            R12 K30 ["name"]
       94 SETTABLEKS                       R12 R11 K23 ["sortKey"]
       96 LOADK                            R12 K32 [0.35]
       97 SETTABLEKS                       R12 R11 K24 ["width"]
       99 LOADN                            R12 200
      100 SETTABLEKS                       R12 R11 K25 ["idealWidth"]
      102 LOADN                            R12 1
      103 SETTABLEKS                       R12 R11 K26 ["priority"]
      105 LOADN                            R12 1
      106 SETTABLEKS                       R12 R11 K27 ["order"]
      108 DUPCLOSURE                       R12 K33 [PROTO_0]
      109 SETTABLEKS                       R12 R11 K28 ["cell"]
      111 DUPTABLE                         R12 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      112 LOADK                            R13 K34 ["size"]
      113 SETTABLEKS                       R13 R12 K20 ["id"]
      115 LOADK                            R13 K35 ["Memory"]
      116 SETTABLEKS                       R13 R12 K21 ["headerText"]
      118 LOADK                            R13 K35 ["Memory"]
      119 SETTABLEKS                       R13 R12 K22 ["headerKey"]
      121 LOADK                            R13 K34 ["size"]
      122 SETTABLEKS                       R13 R12 K23 ["sortKey"]
      124 LOADK                            R13 K36 [0.15]
      125 SETTABLEKS                       R13 R12 K24 ["width"]
      127 LOADN                            R13 90
      128 SETTABLEKS                       R13 R12 K25 ["idealWidth"]
      130 LOADN                            R13 2
      131 SETTABLEKS                       R13 R12 K26 ["priority"]
      133 LOADN                            R13 2
      134 SETTABLEKS                       R13 R12 K27 ["order"]
      136 DUPCLOSURE                       R13 K37 [PROTO_1]
      137 SETTABLEKS                       R13 R12 K28 ["cell"]
      139 DUPTABLE                         R13 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      140 LOADK                            R14 K38 ["change"]
      141 SETTABLEKS                       R14 R13 K20 ["id"]
      143 LOADK                            R14 K39 ["Change"]
      144 SETTABLEKS                       R14 R13 K21 ["headerText"]
      146 LOADK                            R14 K39 ["Change"]
      147 SETTABLEKS                       R14 R13 K22 ["headerKey"]
      149 LOADK                            R14 K38 ["change"]
      150 SETTABLEKS                       R14 R13 K23 ["sortKey"]
      152 LOADK                            R14 K40 [0.1]
      153 SETTABLEKS                       R14 R13 K24 ["width"]
      155 LOADN                            R14 60
      156 SETTABLEKS                       R14 R13 K25 ["idealWidth"]
      158 LOADN                            R14 6
      159 SETTABLEKS                       R14 R13 K26 ["priority"]
      161 LOADN                            R14 3
      162 SETTABLEKS                       R14 R13 K27 ["order"]
      164 DUPCLOSURE                       R14 K41 [PROTO_2]
      165 CAPTURE                          VAL R5
      166 SETTABLEKS                       R14 R13 K28 ["cell"]
      168 DUPTABLE                         R14 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      169 LOADK                            R15 K42 ["references"]
      170 SETTABLEKS                       R15 R14 K20 ["id"]
      172 LOADK                            R15 K43 ["References"]
      173 SETTABLEKS                       R15 R14 K21 ["headerText"]
      175 LOADK                            R15 K43 ["References"]
      176 SETTABLEKS                       R15 R14 K22 ["headerKey"]
      178 LOADK                            R15 K42 ["references"]
      179 SETTABLEKS                       R15 R14 K23 ["sortKey"]
      181 LOADK                            R15 K44 [0.05]
      182 SETTABLEKS                       R15 R14 K24 ["width"]
      184 LOADN                            R15 60
      185 SETTABLEKS                       R15 R14 K25 ["idealWidth"]
      187 LOADN                            R15 3
      188 SETTABLEKS                       R15 R14 K26 ["priority"]
      190 LOADN                            R15 4
      191 SETTABLEKS                       R15 R14 K27 ["order"]
      193 DUPCLOSURE                       R15 K45 [PROTO_3]
      194 SETTABLEKS                       R15 R14 K28 ["cell"]
      196 DUPTABLE                         R15 K47 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell", "renderCell"}]
      197 LOADK                            R16 K48 ["owners"]
      198 SETTABLEKS                       R16 R15 K20 ["id"]
      200 LOADK                            R16 K49 ["Owners"]
      201 SETTABLEKS                       R16 R15 K21 ["headerText"]
      203 LOADK                            R16 K49 ["Owners"]
      204 SETTABLEKS                       R16 R15 K22 ["headerKey"]
      206 LOADK                            R16 K48 ["owners"]
      207 SETTABLEKS                       R16 R15 K23 ["sortKey"]
      209 LOADK                            R16 K50 [0.3]
      210 SETTABLEKS                       R16 R15 K24 ["width"]
      212 LOADN                            R16 44
      213 SETTABLEKS                       R16 R15 K25 ["idealWidth"]
      215 LOADN                            R16 4
      216 SETTABLEKS                       R16 R15 K26 ["priority"]
      218 LOADN                            R16 5
      219 SETTABLEKS                       R16 R15 K27 ["order"]
      221 DUPCLOSURE                       R16 K51 [PROTO_4]
      222 SETTABLEKS                       R16 R15 K28 ["cell"]
      224 SETTABLEKS                       R8 R15 K46 ["renderCell"]
      226 DUPTABLE                         R16 K29 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      227 LOADK                            R17 K52 ["inDatamodel"]
      228 SETTABLEKS                       R17 R16 K20 ["id"]
      230 LOADK                            R17 K53 ["In Datamodel"]
      231 SETTABLEKS                       R17 R16 K21 ["headerText"]
      233 LOADK                            R17 K54 ["InDatamodel"]
      234 SETTABLEKS                       R17 R16 K22 ["headerKey"]
      236 LOADK                            R17 K52 ["inDatamodel"]
      237 SETTABLEKS                       R17 R16 K23 ["sortKey"]
      239 LOADK                            R17 K40 [0.1]
      240 SETTABLEKS                       R17 R16 K24 ["width"]
      242 LOADN                            R17 100
      243 SETTABLEKS                       R17 R16 K25 ["idealWidth"]
      245 LOADN                            R17 5
      246 SETTABLEKS                       R17 R16 K26 ["priority"]
      248 LOADN                            R17 6
      249 SETTABLEKS                       R17 R16 K27 ["order"]
      251 DUPCLOSURE                       R17 K55 [PROTO_5]
      252 SETTABLEKS                       R17 R16 K28 ["cell"]
      254 SETLIST                          R10 R11 6 [1]
      256 MOVE                             R11 R10
      257 LOADNIL                          R12
      258 LOADNIL                          R13
      259 FORGPREP                         R11
      260 MOVE                             R16 R6
      261 GETTABLEKS                       R17 R15 K21 ["headerText"]
      263 CALL                             R16 1 1
      264 SETTABLEKS                       R16 R15 K56 ["minWidth"]
      266 FORGLOOP                         R11 2 ; [-7]
      268 NEWTABLE                         R11 0 0
      270 SETTABLEKS                       R11 R0 K57 ["instanceOrder"]
      272 NEWTABLE                         R11 0 0
      274 SETTABLEKS                       R11 R0 K58 ["nodeById"]
      276 NEWTABLE                         R11 0 0
      278 SETTABLEKS                       R11 R0 K59 ["parentById"]
      280 NEWTABLE                         R11 0 0
      282 SETTABLEKS                       R11 R0 K60 ["baselineByKey"]
      284 GETIMPORT                        R11 K63 [table.freeze]
      286 DUPTABLE                         R12 K66 [{"Column", "Direction"}]
      287 GETIMPORT                        R13 K63 [table.freeze]
      289 DUPTABLE                         R14 K69 [{"none", "Name", "Size", "References", "Owners", "InDatamodel"}]
      290 LOADK                            R15 K67 ["none"]
      291 SETTABLEKS                       R15 R14 K67 ["none"]
      293 LOADK                            R15 K30 ["name"]
      294 SETTABLEKS                       R15 R14 K31 ["Name"]
      296 LOADK                            R15 K34 ["size"]
      297 SETTABLEKS                       R15 R14 K68 ["Size"]
      299 LOADK                            R15 K42 ["references"]
      300 SETTABLEKS                       R15 R14 K43 ["References"]
      302 LOADK                            R15 K48 ["owners"]
      303 SETTABLEKS                       R15 R14 K49 ["Owners"]
      305 LOADK                            R15 K52 ["inDatamodel"]
      306 SETTABLEKS                       R15 R14 K54 ["InDatamodel"]
      308 CALL                             R13 1 1
      309 SETTABLEKS                       R13 R12 K64 ["Column"]
      311 GETIMPORT                        R13 K63 [table.freeze]
      313 DUPTABLE                         R14 K72 [{"asc", "desc"}]
      314 LOADK                            R15 K70 ["asc"]
      315 SETTABLEKS                       R15 R14 K70 ["asc"]
      317 LOADK                            R15 K71 ["desc"]
      318 SETTABLEKS                       R15 R14 K71 ["desc"]
      320 CALL                             R13 1 1
      321 SETTABLEKS                       R13 R12 K65 ["Direction"]
      323 CALL                             R11 1 1
      324 MOVE                             R12 R4
      325 DUPTABLE                         R13 K74 [{"Name", "Size", "Children"}]
      326 LOADK                            R14 K75 ["Root"]
      327 SETTABLEKS                       R14 R13 K31 ["Name"]
      329 LOADN                            R14 0
      330 SETTABLEKS                       R14 R13 K68 ["Size"]
      332 NEWTABLE                         R14 0 0
      334 SETTABLEKS                       R14 R13 K73 ["Children"]
      336 CALL                             R12 1 1
      337 GETTABLEKS                       R13 R3 K76 ["create"]
      339 MOVE                             R14 R12
      340 CALL                             R13 1 2
      341 GETTABLEKS                       R15 R3 K76 ["create"]
      343 NEWTABLE                         R16 0 0
      345 CALL                             R15 1 2
      346 GETTABLEKS                       R17 R3 K76 ["create"]
      348 MOVE                             R18 R4
      349 DUPTABLE                         R19 K79 [{"column", "direction"}]
      350 GETTABLEKS                       R20 R11 K64 ["Column"]
      352 GETTABLEKS                       R20 R20 K68 ["Size"]
      354 SETTABLEKS                       R20 R19 K77 ["column"]
      356 GETTABLEKS                       R20 R11 K65 ["Direction"]
      358 GETTABLEKS                       R20 R20 K71 ["desc"]
      360 SETTABLEKS                       R20 R19 K78 ["direction"]
      362 CALL                             R18 1 -1
      363 CALL                             R17 -1 2
      364 GETTABLEKS                       R19 R3 K76 ["create"]
      366 LOADN                            R20 0
      367 CALL                             R19 1 2
      368 DUPCLOSURE                       R21 K80 [PROTO_6]
      369 CAPTURE                          VAL R13
      370 SETTABLEKS                       R21 R0 K81 ["getNodesObservable"]
      372 DUPCLOSURE                       R21 K82 [PROTO_7]
      373 CAPTURE                          VAL R15
      374 SETTABLEKS                       R21 R0 K83 ["getOrderObservable"]
      376 DUPCLOSURE                       R21 K84 [PROTO_8]
      377 CAPTURE                          VAL R17
      378 SETTABLEKS                       R21 R0 K85 ["getSortStateObservable"]
      380 DUPCLOSURE                       R21 K86 [PROTO_9]
      381 CAPTURE                          VAL R19
      382 SETTABLEKS                       R21 R0 K87 ["getTotalCountObservable"]
      384 DUPCLOSURE                       R21 K88 [PROTO_10]
      385 CAPTURE                          VAL R10
      386 SETTABLEKS                       R21 R0 K89 ["getColumns"]
      388 DUPCLOSURE                       R21 K90 [PROTO_11]
      389 CAPTURE                          VAL R21
      390 DUPCLOSURE                       R22 K91 [PROTO_13]
      391 CAPTURE                          VAL R11
      392 DUPCLOSURE                       R23 K92 [PROTO_14]
      393 CAPTURE                          VAL R17
      394 CAPTURE                          VAL R11
      395 CAPTURE                          VAL R4
      396 CAPTURE                          VAL R18
      397 CAPTURE                          VAL R13
      398 CAPTURE                          VAL R21
      399 CAPTURE                          VAL R22
      400 CAPTURE                          VAL R16
      401 CAPTURE                          VAL R20
      402 SETTABLEKS                       R23 R0 K93 ["setSort"]
      404 DUPCLOSURE                       R23 K94 [PROTO_15]
      405 CAPTURE                          VAL R14
      406 CAPTURE                          VAL R12
      407 CAPTURE                          VAL R16
      408 CAPTURE                          VAL R20
      409 CAPTURE                          VAL R0
      410 SETTABLEKS                       R23 R0 K95 ["reset"]
      412 DUPCLOSURE                       R23 K96 [PROTO_16]
      413 CAPTURE                          VAL R15
      414 SETTABLEKS                       R23 R0 K97 ["getIndexForId"]
      416 DUPCLOSURE                       R23 K98 [PROTO_17]
      417 CAPTURE                          VAL R0
      418 SETTABLEKS                       R23 R0 K99 ["getNodeById"]
      420 DUPCLOSURE                       R23 K100 [PROTO_18]
      421 CAPTURE                          VAL R0
      422 CAPTURE                          VAL R2
      423 SETTABLEKS                       R23 R0 K101 ["onRightClick"]
      425 DUPCLOSURE                       R23 K102 [PROTO_19]
      426 CAPTURE                          VAL R0
      427 SETTABLEKS                       R23 R0 K103 ["getDepth"]
      429 DUPCLOSURE                       R23 K104 [PROTO_20]
      430 CAPTURE                          VAL R15
      431 CAPTURE                          VAL R0
      432 SETTABLEKS                       R23 R0 K105 ["getNodeAtIndex"]
      434 DUPCLOSURE                       R23 K106 [PROTO_22]
      435 CAPTURE                          VAL R2
      436 CAPTURE                          VAL R9
      437 CAPTURE                          VAL R0
      438 CAPTURE                          VAL R12
      439 CAPTURE                          VAL R7
      440 CAPTURE                          VAL R21
      441 CAPTURE                          VAL R17
      442 CAPTURE                          VAL R22
      443 CAPTURE                          VAL R4
      444 CAPTURE                          VAL R14
      445 CAPTURE                          VAL R16
      446 CAPTURE                          VAL R20
      447 SETTABLEKS                       R23 R0 K107 ["RunQueryAsync"]
      449 DUPCLOSURE                       R23 K108 [PROTO_23]
      450 CAPTURE                          VAL R5
      451 SETTABLEKS                       R23 R0 K109 ["tooltipLabels"]
      453 DUPCLOSURE                       R23 K110 [PROTO_24]
      454 CAPTURE                          VAL R0
      455 SETTABLEKS                       R23 R0 K111 ["clearBaselines"]
      457 DUPCLOSURE                       R23 K112 [PROTO_25]
      458 CAPTURE                          VAL R22
      459 SETTABLEKS                       R23 R0 K113 ["sortedIds"]
      461 DUPCLOSURE                       R23 K114 [PROTO_26]
      462 CAPTURE                          VAL R9
      463 SETTABLEKS                       R23 R0 K115 ["getWarnings"]
      465 RETURN                           R0 1
