PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["node"]
        2 GETTABLEKS                       R1 R2 K1 ["AssetId"]
        4 JUMPIF                           R1 ; [+6]
        5 GETTABLEKS                       R2 R0 K0 ["node"]
        7 GETTABLEKS                       R1 R2 K2 ["Name"]
        9 JUMPIF                           R1 ; [+1]
       10 LOADK                            R1 K3 [""]
       11 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K1 ["sizeMB"]
        2 ORK                              R1 R2 K0 ["0B"]
        3 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R4 R0 K1 ["node"]
        2 GETTABLEKS                       R3 R4 K2 ["references"]
        4 ORK                              R2 R3 K0 [0]
        5 FASTCALL1                        TOSTRING R2 ; [+2]
        6 GETIMPORT                        R1 K4 [tostring]
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K1 ["node"]
        2 GETTABLEKS                       R2 R3 K2 ["owners"]
        4 ORK                              R1 R2 K0 [""]
        5 RETURN                           R1 1

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
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
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

PROTO_10:
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
       26 GETTABLEKS                       R5 R0 K0 ["node"]
       28 GETTABLEKS                       R4 R5 K1 ["size"]
       30 JUMPIF                           R4 ; [+6]
       31 GETTABLEKS                       R5 R0 K0 ["node"]
       33 GETTABLEKS                       R4 R5 K5 ["Size"]
       35 JUMPIF                           R4 ; [+1]
       36 LOADN                            R4 0
       37 MOVE                             R2 R4
       38 JUMPIFNOTEQKN                    R2 K6 [0] ; [+85]
       40 GETTABLEKS                       R5 R0 K0 ["node"]
       42 GETTABLEKS                       R4 R5 K7 ["Sizes"]
       44 JUMPIFNOT                        R4 ; [+79]
       45 GETIMPORT                        R4 K9 [next]
       47 GETTABLEKS                       R6 R0 K0 ["node"]
       49 GETTABLEKS                       R5 R6 K7 ["Sizes"]
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
       71 GETTABLEKS                       R5 R0 K0 ["node"]
       73 GETTABLEKS                       R4 R5 K7 ["Sizes"]
       75 JUMPIFNOT                        R4 ; [+28]
       76 GETTABLEKS                       R6 R0 K0 ["node"]
       78 GETTABLEKS                       R5 R6 K7 ["Sizes"]
       80 GETUPVAL                         R6 0
       81 GETTABLE                         R4 R5 R6
       82 ORK                              R2 R4 K6 [0]
       83 JUMPIFNOTEQKN                    R2 K6 [0] ; [+40]
       85 GETIMPORT                        R4 K9 [next]
       87 GETTABLEKS                       R6 R0 K0 ["node"]
       89 GETTABLEKS                       R5 R6 K7 ["Sizes"]
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
      109 GETTABLEKS                       R5 R0 K0 ["node"]
      111 GETTABLEKS                       R4 R5 K5 ["Size"]
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
      139 GETTABLEKS                       R5 R1 K0 ["node"]
      141 GETTABLEKS                       R4 R5 K1 ["size"]
      143 JUMPIF                           R4 ; [+6]
      144 GETTABLEKS                       R5 R1 K0 ["node"]
      146 GETTABLEKS                       R4 R5 K5 ["Size"]
      148 JUMPIF                           R4 ; [+1]
      149 LOADN                            R4 0
      150 MOVE                             R3 R4
      151 JUMPIFNOTEQKN                    R3 K6 [0] ; [+85]
      153 GETTABLEKS                       R5 R1 K0 ["node"]
      155 GETTABLEKS                       R4 R5 K7 ["Sizes"]
      157 JUMPIFNOT                        R4 ; [+79]
      158 GETIMPORT                        R4 K9 [next]
      160 GETTABLEKS                       R6 R1 K0 ["node"]
      162 GETTABLEKS                       R5 R6 K7 ["Sizes"]
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
      184 GETTABLEKS                       R5 R1 K0 ["node"]
      186 GETTABLEKS                       R4 R5 K7 ["Sizes"]
      188 JUMPIFNOT                        R4 ; [+28]
      189 GETTABLEKS                       R6 R1 K0 ["node"]
      191 GETTABLEKS                       R5 R6 K7 ["Sizes"]
      193 GETUPVAL                         R6 0
      194 GETTABLE                         R4 R5 R6
      195 ORK                              R3 R4 K6 [0]
      196 JUMPIFNOTEQKN                    R3 K6 [0] ; [+40]
      198 GETIMPORT                        R4 K9 [next]
      200 GETTABLEKS                       R6 R1 K0 ["node"]
      202 GETTABLEKS                       R5 R6 K7 ["Sizes"]
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
      222 GETTABLEKS                       R5 R1 K0 ["node"]
      224 GETTABLEKS                       R4 R5 K5 ["Size"]
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
      246 GETUPVAL                         R8 2
      247 GETTABLEKS                       R7 R8 K12 ["Direction"]
      249 GETTABLEKS                       R6 R7 K13 ["desc"]
      251 JUMPIFEQ                         R5 R6 ; [+2]
      253 LOADB                            R4 0 +1
      254 LOADB                            R4 1
      255 RETURN                           R4 1
      256 JUMPIFNOTEQKNIL                  R3 ; [+12]
      258 GETUPVAL                         R5 1
      259 GETUPVAL                         R8 2
      260 GETTABLEKS                       R7 R8 K12 ["Direction"]
      262 GETTABLEKS                       R6 R7 K14 ["asc"]
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
      284 GETUPVAL                         R7 2
      285 GETTABLEKS                       R6 R7 K12 ["Direction"]
      287 GETTABLEKS                       R5 R6 K14 ["asc"]
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
      318 GETUPVAL                         R9 2
      319 GETTABLEKS                       R8 R9 K12 ["Direction"]
      321 GETTABLEKS                       R7 R8 K14 ["asc"]
      323 JUMPIFNOTEQ                      R6 R7 ; [+6]
      325 JUMPIFLT                         R4 R5 ; [+2]
      327 LOADB                            R6 0 +1
      328 LOADB                            R6 1
      329 RETURN                           R6 1
      330 JUMPIFLT                         R5 R4 ; [+2]
      332 LOADB                            R6 0 +1
      333 LOADB                            R6 1
      334 RETURN                           R6 1

PROTO_11:
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

PROTO_12:
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

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["nodeById"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getNodeById"]
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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 JUMPIF                           R2 ; [+6]
        3 GETUPVAL                         R2 0
        4 SETTABLEKS                       R2 R0 K0 ["Id"]
        6 GETUPVAL                         R3 0
        7 ADDK                             R2 R3 K1 [1]
        8 SETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R0 K2 ["Owners"]
       11 JUMPIFNOT                        R2 ; [+112]
       12 LENGTH                           R3 R2
       13 LOADN                            R4 0
       14 JUMPIFNOTLT                      R4 R3 ; [+109]
       16 LENGTH                           R3 R2
       17 SETTABLEKS                       R3 R0 K3 ["references"]
       19 NEWTABLE                         R3 0 0
       21 NEWTABLE                         R4 0 0
       23 GETIMPORT                        R5 K5 [ipairs]
       25 MOVE                             R6 R2
       26 CALL                             R5 1 3
       27 FORGPREP_INEXT                   R5
       28 FASTCALL1                        TYPEOF R9 ; [+3]
       29 MOVE                             R11 R9
       30 GETIMPORT                        R10 K7 [typeof]
       32 CALL                             R10 1 1
       33 JUMPIFNOTEQKS                    R10 K8 ["Instance"] ; [+18]
       35 MOVE                             R11 R3
       36 NAMECALL                         R12 R9 K9 ["GetFullName"]
       38 CALL                             R12 1 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R10 K12 [table.insert]
       42 CALL                             R10 -1 0
       43 MOVE                             R11 R4
       44 NAMECALL                         R12 R9 K9 ["GetFullName"]
       46 CALL                             R12 1 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R10 K12 [table.insert]
       50 CALL                             R10 -1 0
       51 JUMP                             ; [+60]
       52 FASTCALL1                        TYPE R9 ; [+3]
       53 MOVE                             R11 R9
       54 GETIMPORT                        R10 K14 [type]
       56 CALL                             R10 1 1
       57 JUMPIFNOTEQKS                    R10 K10 ["table"] ; [+21]
       59 GETTABLEKS                       R10 R9 K15 ["Name"]
       61 JUMPIFNOT                        R10 ; [+17]
       62 GETTABLEKS                       R12 R9 K15 ["Name"]
       64 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       66 MOVE                             R11 R3
       67 GETIMPORT                        R10 K12 [table.insert]
       69 CALL                             R10 2 0
       70 GETTABLEKS                       R12 R9 K15 ["Name"]
       72 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       74 MOVE                             R11 R4
       75 GETIMPORT                        R10 K12 [table.insert]
       77 CALL                             R10 2 0
       78 JUMP                             ; [+33]
       79 FASTCALL1                        TYPE R9 ; [+3]
       80 MOVE                             R11 R9
       81 GETIMPORT                        R10 K14 [type]
       83 CALL                             R10 1 1
       84 JUMPIFNOTEQKS                    R10 K16 ["string"] ; [+16]
       86 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       88 MOVE                             R11 R3
       89 MOVE                             R12 R9
       90 GETIMPORT                        R10 K12 [table.insert]
       92 CALL                             R10 2 0
       93 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       95 MOVE                             R11 R4
       96 MOVE                             R12 R9
       97 GETIMPORT                        R10 K12 [table.insert]
       99 CALL                             R10 2 0
      100 JUMP                             ; [+11]
      101 FASTCALL1                        TOSTRING R9 ; [+3]
      102 MOVE                             R13 R9
      103 GETIMPORT                        R12 K18 [tostring]
      105 CALL                             R12 1 1
      106 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
      108 MOVE                             R11 R3
      109 GETIMPORT                        R10 K12 [table.insert]
      111 CALL                             R10 2 0
      112 FORGLOOP                         R5 2 [inext] ; [-85]
      114 GETIMPORT                        R5 K20 [table.concat]
      116 MOVE                             R6 R3
      117 LOADK                            R7 K21 [", "]
      118 CALL                             R5 2 1
      119 SETTABLEKS                       R5 R0 K22 ["owners"]
      121 SETTABLEKS                       R4 R0 K23 ["ownerPaths"]
      123 JUMP                             ; [+17]
      124 LOADN                            R3 1
      125 SETTABLEKS                       R3 R0 K3 ["references"]
      127 GETTABLEKS                       R4 R0 K15 ["Name"]
      129 ORK                              R3 R4 K24 [""]
      130 SETTABLEKS                       R3 R0 K22 ["owners"]
      132 NEWTABLE                         R3 0 1
      134 GETTABLEKS                       R5 R0 K15 ["Name"]
      136 ORK                              R4 R5 K24 [""]
      137 SETLIST                          R3 R4 1 [1]
      139 SETTABLEKS                       R3 R0 K23 ["ownerPaths"]
      141 GETTABLEKS                       R3 R0 K0 ["Id"]
      143 JUMPIFNOT                        R3 ; [+13]
      144 GETUPVAL                         R4 1
      145 GETTABLEKS                       R3 R4 K25 ["nodeById"]
      147 GETTABLEKS                       R4 R0 K0 ["Id"]
      149 SETTABLE                         R0 R3 R4
      150 JUMPIFNOT                        R1 ; [+6]
      151 GETUPVAL                         R4 1
      152 GETTABLEKS                       R3 R4 K26 ["parentById"]
      154 GETTABLEKS                       R4 R0 K0 ["Id"]
      156 SETTABLE                         R1 R3 R4
      157 GETTABLEKS                       R3 R0 K27 ["Children"]
      159 JUMPIFNOT                        R3 ; [+9]
      160 GETIMPORT                        R4 K29 [next]
      162 GETTABLEKS                       R5 R0 K27 ["Children"]
      164 CALL                             R4 1 1
      165 JUMPIFNOTEQKNIL                  R4 ; [+2]
      167 LOADB                            R3 0 +1
      168 LOADB                            R3 1
      169 JUMPIFNOT                        R3 ; [+12]
      170 GETTABLEKS                       R4 R0 K27 ["Children"]
      172 LOADNIL                          R5
      173 LOADNIL                          R6
      174 FORGPREP                         R4
      175 GETUPVAL                         R9 2
      176 MOVE                             R10 R8
      177 GETTABLEKS                       R11 R0 K0 ["Id"]
      179 CALL                             R9 2 0
      180 FORGLOOP                         R4 2 ; [-6]
      182 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["FetchAudioMemory"]
        2 NEWTABLE                         R4 0 0
        4 NAMECALL                         R1 R1 K1 ["CallAssetPluginAsync"]
        6 CALL                             R1 3 1
        7 JUMPIF                           R1 ; [+6]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["reset"]
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
       56 GETUPVAL                         R4 3
       57 MOVE                             R5 R1
       58 CALL                             R4 1 1
       59 GETUPVAL                         R6 4
       60 GETTABLEKS                       R5 R6 K13 ["get"]
       62 CALL                             R5 0 1
       63 GETUPVAL                         R6 5
       64 MOVE                             R7 R4
       65 MOVE                             R8 R5
       66 CALL                             R6 2 1
       67 GETUPVAL                         R7 6
       68 MOVE                             R8 R1
       69 CALL                             R7 1 0
       70 GETUPVAL                         R7 7
       71 MOVE                             R8 R1
       72 CALL                             R7 1 0
       73 GETUPVAL                         R7 8
       74 MOVE                             R8 R6
       75 CALL                             R7 1 0
       76 GETUPVAL                         R7 9
       77 LENGTH                           R8 R6
       78 CALL                             R7 1 0
       79 CLOSEUPVALS                      R2
       80 RETURN                           R1 1

PROTO_21:
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
       11 GETTABLEKS                       R5 R1 K6 ["Src"]
       13 GETTABLEKS                       R4 R5 K7 ["Util"]
       15 GETTABLEKS                       R3 R4 K8 ["AssetDMBridge"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R1 K6 ["Src"]
       22 GETTABLEKS                       R5 R6 K7 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["Observable"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R7 R1 K6 ["Src"]
       31 GETTABLEKS                       R6 R7 K7 ["Util"]
       33 GETTABLEKS                       R5 R6 K10 ["deepFreeze"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K5 [require]
       38 GETTABLEKS                       R8 R1 K6 ["Src"]
       40 GETTABLEKS                       R7 R8 K7 ["Util"]
       42 GETTABLEKS                       R6 R7 K11 ["measureHeaderText"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K5 [require]
       47 GETTABLEKS                       R9 R1 K6 ["Src"]
       49 GETTABLEKS                       R8 R9 K12 ["Components"]
       51 GETTABLEKS                       R7 R8 K13 ["AbridgedPathCell"]
       53 CALL                             R6 1 1
       54 NEWTABLE                         R7 0 4
       56 DUPTABLE                         R8 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       57 LOADK                            R9 K24 ["assetId"]
       58 SETTABLEKS                       R9 R8 K14 ["id"]
       60 LOADK                            R9 K25 ["Asset ID"]
       61 SETTABLEKS                       R9 R8 K15 ["headerText"]
       63 LOADK                            R9 K26 ["AssetID"]
       64 SETTABLEKS                       R9 R8 K16 ["headerKey"]
       66 LOADK                            R9 K24 ["assetId"]
       67 SETTABLEKS                       R9 R8 K17 ["sortKey"]
       69 LOADK                            R9 K27 [0.3]
       70 SETTABLEKS                       R9 R8 K18 ["width"]
       72 LOADN                            R9 200
       73 SETTABLEKS                       R9 R8 K19 ["idealWidth"]
       75 LOADN                            R9 1
       76 SETTABLEKS                       R9 R8 K20 ["priority"]
       78 LOADN                            R9 1
       79 SETTABLEKS                       R9 R8 K21 ["order"]
       81 DUPCLOSURE                       R9 K28 [PROTO_0]
       82 SETTABLEKS                       R9 R8 K22 ["cell"]
       84 DUPTABLE                         R9 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
       85 LOADK                            R10 K29 ["size"]
       86 SETTABLEKS                       R10 R9 K14 ["id"]
       88 LOADK                            R10 K30 ["Memory"]
       89 SETTABLEKS                       R10 R9 K15 ["headerText"]
       91 LOADK                            R10 K30 ["Memory"]
       92 SETTABLEKS                       R10 R9 K16 ["headerKey"]
       94 LOADK                            R10 K29 ["size"]
       95 SETTABLEKS                       R10 R9 K17 ["sortKey"]
       97 LOADK                            R10 K31 [0.15]
       98 SETTABLEKS                       R10 R9 K18 ["width"]
      100 LOADN                            R10 90
      101 SETTABLEKS                       R10 R9 K19 ["idealWidth"]
      103 LOADN                            R10 2
      104 SETTABLEKS                       R10 R9 K20 ["priority"]
      106 LOADN                            R10 2
      107 SETTABLEKS                       R10 R9 K21 ["order"]
      109 DUPCLOSURE                       R10 K32 [PROTO_1]
      110 SETTABLEKS                       R10 R9 K22 ["cell"]
      112 DUPTABLE                         R10 K23 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell"}]
      113 LOADK                            R11 K33 ["references"]
      114 SETTABLEKS                       R11 R10 K14 ["id"]
      116 LOADK                            R11 K34 ["References"]
      117 SETTABLEKS                       R11 R10 K15 ["headerText"]
      119 LOADK                            R11 K34 ["References"]
      120 SETTABLEKS                       R11 R10 K16 ["headerKey"]
      122 LOADK                            R11 K33 ["references"]
      123 SETTABLEKS                       R11 R10 K17 ["sortKey"]
      125 LOADK                            R11 K35 [0.05]
      126 SETTABLEKS                       R11 R10 K18 ["width"]
      128 LOADN                            R11 60
      129 SETTABLEKS                       R11 R10 K19 ["idealWidth"]
      131 LOADN                            R11 3
      132 SETTABLEKS                       R11 R10 K20 ["priority"]
      134 LOADN                            R11 3
      135 SETTABLEKS                       R11 R10 K21 ["order"]
      137 DUPCLOSURE                       R11 K36 [PROTO_2]
      138 SETTABLEKS                       R11 R10 K22 ["cell"]
      140 DUPTABLE                         R11 K38 [{"id", "headerText", "headerKey", "sortKey", "width", "idealWidth", "priority", "order", "cell", "renderCell"}]
      141 LOADK                            R12 K39 ["owners"]
      142 SETTABLEKS                       R12 R11 K14 ["id"]
      144 LOADK                            R12 K40 ["Owners"]
      145 SETTABLEKS                       R12 R11 K15 ["headerText"]
      147 LOADK                            R12 K40 ["Owners"]
      148 SETTABLEKS                       R12 R11 K16 ["headerKey"]
      150 LOADK                            R12 K39 ["owners"]
      151 SETTABLEKS                       R12 R11 K17 ["sortKey"]
      153 LOADK                            R12 K41 [0.5]
      154 SETTABLEKS                       R12 R11 K18 ["width"]
      156 LOADN                            R12 44
      157 SETTABLEKS                       R12 R11 K19 ["idealWidth"]
      159 LOADN                            R12 4
      160 SETTABLEKS                       R12 R11 K20 ["priority"]
      162 LOADN                            R12 4
      163 SETTABLEKS                       R12 R11 K21 ["order"]
      165 DUPCLOSURE                       R12 K42 [PROTO_3]
      166 SETTABLEKS                       R12 R11 K22 ["cell"]
      168 SETTABLEKS                       R6 R11 K37 ["renderCell"]
      170 SETLIST                          R7 R8 4 [1]
      172 MOVE                             R8 R7
      173 LOADNIL                          R9
      174 LOADNIL                          R10
      175 FORGPREP                         R8
      176 MOVE                             R13 R5
      177 GETTABLEKS                       R14 R12 K15 ["headerText"]
      179 CALL                             R13 1 1
      180 SETTABLEKS                       R13 R12 K43 ["minWidth"]
      182 FORGLOOP                         R8 2 ; [-7]
      184 NEWTABLE                         R8 0 0
      186 SETTABLEKS                       R8 R0 K44 ["instanceOrder"]
      188 NEWTABLE                         R8 0 0
      190 SETTABLEKS                       R8 R0 K45 ["nodeById"]
      192 NEWTABLE                         R8 0 0
      194 SETTABLEKS                       R8 R0 K46 ["parentById"]
      196 GETIMPORT                        R8 K49 [table.freeze]
      198 DUPTABLE                         R9 K52 [{"Column", "Direction"}]
      199 GETIMPORT                        R10 K49 [table.freeze]
      201 DUPTABLE                         R11 K56 [{"none", "AssetId", "Size", "References", "Owners"}]
      202 LOADK                            R12 K53 ["none"]
      203 SETTABLEKS                       R12 R11 K53 ["none"]
      205 LOADK                            R12 K24 ["assetId"]
      206 SETTABLEKS                       R12 R11 K54 ["AssetId"]
      208 LOADK                            R12 K29 ["size"]
      209 SETTABLEKS                       R12 R11 K55 ["Size"]
      211 LOADK                            R12 K33 ["references"]
      212 SETTABLEKS                       R12 R11 K34 ["References"]
      214 LOADK                            R12 K39 ["owners"]
      215 SETTABLEKS                       R12 R11 K40 ["Owners"]
      217 CALL                             R10 1 1
      218 SETTABLEKS                       R10 R9 K50 ["Column"]
      220 GETIMPORT                        R10 K49 [table.freeze]
      222 DUPTABLE                         R11 K59 [{"asc", "desc"}]
      223 LOADK                            R12 K57 ["asc"]
      224 SETTABLEKS                       R12 R11 K57 ["asc"]
      226 LOADK                            R12 K58 ["desc"]
      227 SETTABLEKS                       R12 R11 K58 ["desc"]
      229 CALL                             R10 1 1
      230 SETTABLEKS                       R10 R9 K51 ["Direction"]
      232 CALL                             R8 1 1
      233 MOVE                             R9 R4
      234 DUPTABLE                         R10 K62 [{"Name", "Size", "Children"}]
      235 LOADK                            R11 K63 ["Root"]
      236 SETTABLEKS                       R11 R10 K60 ["Name"]
      238 LOADN                            R11 0
      239 SETTABLEKS                       R11 R10 K55 ["Size"]
      241 NEWTABLE                         R11 0 0
      243 SETTABLEKS                       R11 R10 K61 ["Children"]
      245 CALL                             R9 1 1
      246 GETTABLEKS                       R10 R3 K64 ["create"]
      248 MOVE                             R11 R9
      249 CALL                             R10 1 2
      250 GETTABLEKS                       R12 R3 K64 ["create"]
      252 NEWTABLE                         R13 0 0
      254 CALL                             R12 1 2
      255 GETTABLEKS                       R14 R3 K64 ["create"]
      257 MOVE                             R15 R4
      258 DUPTABLE                         R16 K67 [{"column", "direction"}]
      259 GETTABLEKS                       R18 R8 K50 ["Column"]
      261 GETTABLEKS                       R17 R18 K55 ["Size"]
      263 SETTABLEKS                       R17 R16 K65 ["column"]
      265 GETTABLEKS                       R18 R8 K51 ["Direction"]
      267 GETTABLEKS                       R17 R18 K58 ["desc"]
      269 SETTABLEKS                       R17 R16 K66 ["direction"]
      271 CALL                             R15 1 -1
      272 CALL                             R14 -1 2
      273 GETTABLEKS                       R16 R3 K64 ["create"]
      275 LOADN                            R17 0
      276 CALL                             R16 1 2
      277 DUPCLOSURE                       R18 K68 [PROTO_4]
      278 CAPTURE                          VAL R10
      279 SETTABLEKS                       R18 R0 K69 ["getNodesObservable"]
      281 DUPCLOSURE                       R18 K70 [PROTO_5]
      282 CAPTURE                          VAL R12
      283 SETTABLEKS                       R18 R0 K71 ["getOrderObservable"]
      285 DUPCLOSURE                       R18 K72 [PROTO_6]
      286 CAPTURE                          VAL R14
      287 SETTABLEKS                       R18 R0 K73 ["getSortStateObservable"]
      289 DUPCLOSURE                       R18 K74 [PROTO_7]
      290 CAPTURE                          VAL R16
      291 SETTABLEKS                       R18 R0 K75 ["getTotalCountObservable"]
      293 DUPCLOSURE                       R18 K76 [PROTO_8]
      294 CAPTURE                          VAL R7
      295 SETTABLEKS                       R18 R0 K77 ["getColumns"]
      297 DUPCLOSURE                       R18 K78 [PROTO_9]
      298 CAPTURE                          VAL R18
      299 DUPCLOSURE                       R19 K79 [PROTO_11]
      300 CAPTURE                          VAL R8
      301 DUPCLOSURE                       R20 K80 [PROTO_12]
      302 CAPTURE                          VAL R14
      303 CAPTURE                          VAL R8
      304 CAPTURE                          VAL R4
      305 CAPTURE                          VAL R15
      306 CAPTURE                          VAL R10
      307 CAPTURE                          VAL R18
      308 CAPTURE                          VAL R19
      309 CAPTURE                          VAL R13
      310 CAPTURE                          VAL R17
      311 SETTABLEKS                       R20 R0 K81 ["setSort"]
      313 DUPCLOSURE                       R20 K82 [PROTO_13]
      314 CAPTURE                          VAL R11
      315 CAPTURE                          VAL R9
      316 CAPTURE                          VAL R13
      317 CAPTURE                          VAL R17
      318 CAPTURE                          VAL R0
      319 SETTABLEKS                       R20 R0 K83 ["reset"]
      321 DUPCLOSURE                       R20 K84 [PROTO_14]
      322 CAPTURE                          VAL R12
      323 SETTABLEKS                       R20 R0 K85 ["getIndexForId"]
      325 DUPCLOSURE                       R20 K86 [PROTO_15]
      326 CAPTURE                          VAL R0
      327 SETTABLEKS                       R20 R0 K87 ["getNodeById"]
      329 DUPCLOSURE                       R20 K88 [PROTO_16]
      330 CAPTURE                          VAL R0
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R20 R0 K89 ["onRightClick"]
      334 DUPCLOSURE                       R20 K90 [PROTO_17]
      335 CAPTURE                          VAL R0
      336 SETTABLEKS                       R20 R0 K91 ["getDepth"]
      338 DUPCLOSURE                       R20 K92 [PROTO_18]
      339 CAPTURE                          VAL R12
      340 CAPTURE                          VAL R0
      341 SETTABLEKS                       R20 R0 K93 ["getNodeAtIndex"]
      343 DUPCLOSURE                       R20 K94 [PROTO_20]
      344 CAPTURE                          VAL R2
      345 CAPTURE                          VAL R0
      346 CAPTURE                          VAL R9
      347 CAPTURE                          VAL R18
      348 CAPTURE                          VAL R14
      349 CAPTURE                          VAL R19
      350 CAPTURE                          VAL R4
      351 CAPTURE                          VAL R11
      352 CAPTURE                          VAL R13
      353 CAPTURE                          VAL R17
      354 SETTABLEKS                       R20 R0 K95 ["RunQueryAsync"]
      356 DUPCLOSURE                       R20 K96 [PROTO_21]
      357 CAPTURE                          VAL R19
      358 SETTABLEKS                       R20 R0 K97 ["sortedIds"]
      360 RETURN                           R0 1
