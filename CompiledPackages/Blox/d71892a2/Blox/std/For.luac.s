PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["elements"]
        3 JUMPIFNOT                        R0 ; [+22]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["elements"]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 FORGPREP                         R0
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K1 ["alive"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K2 ["publish"]
       16 MOVE                             R6 R4
       17 CALL                             R5 1 0
       18 FORGLOOP                         R0 2 ; [-9]
       20 GETIMPORT                        R0 K5 [table.clear]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K0 ["elements"]
       25 CALL                             R0 1 0
       26 GETUPVAL                         R0 0
       27 GETTABLEKS                       R0 R0 K6 ["noneElement"]
       29 JUMPIFNOT                        R0 ; [+17]
       30 GETUPVAL                         R0 0
       31 GETTABLEKS                       R0 R0 K6 ["noneElement"]
       33 LOADB                            R1 0
       34 SETTABLEKS                       R1 R0 K1 ["alive"]
       36 GETUPVAL                         R0 1
       37 GETTABLEKS                       R0 R0 K2 ["publish"]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K6 ["noneElement"]
       42 CALL                             R0 1 0
       43 GETUPVAL                         R0 0
       44 LOADNIL                          R1
       45 SETTABLEKS                       R1 R0 K6 ["noneElement"]
       47 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["keyIndices"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 GETTABLE                         R2 R0 R1
        6 MOVE                             R3 R1
        7 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R4 R2 K0 ["_disposalRegistered"]
        2 JUMPIF                           R4 ; [+10]
        3 LOADB                            R4 1
        4 SETTABLEKS                       R4 R2 K0 ["_disposalRegistered"]
        6 GETTABLEKS                       R4 R1 K1 ["createEffect"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R2
       10 CAPTURE                          VAL R1
       11 LOADK                            R6 K2 ["for-disposal"]
       12 CALL                             R4 2 0
       13 GETTABLEKS                       R4 R1 K3 ["peek"]
       15 MOVE                             R5 R4
       16 GETTABLEKS                       R6 R0 K4 ["keyBy"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R0 K5 ["Each"]
       21 MOVE                             R7 R3
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R7 R0 K6 ["None"]
       25 MOVE                             R8 R3
       26 CALL                             R7 1 1
       27 GETTABLEKS                       R8 R0 K7 ["items"]
       29 GETTABLEKS                       R9 R1 K8 ["isStore"]
       31 MOVE                             R10 R8
       32 CALL                             R9 1 1
       33 MOVE                             R10 R8
       34 MOVE                             R11 R3
       35 CALL                             R10 1 1
       36 LENGTH                           R11 R10
       37 JUMPIFNOT                        R6 ; [+246]
       38 GETTABLEKS                       R12 R6 K9 ["children"]
       40 JUMPIFNOT                        R12 ; [+243]
       41 JUMPIFNOT                        R5 ; [+44]
       42 GETTABLEKS                       R12 R2 K10 ["keyIndices"]
       44 JUMPIFNOT                        R12 ; [+6]
       45 GETIMPORT                        R12 K13 [table.clear]
       47 GETTABLEKS                       R13 R2 K10 ["keyIndices"]
       49 CALL                             R12 1 0
       50 JUMP                             ; [+4]
       51 NEWTABLE                         R12 0 0
       53 SETTABLEKS                       R12 R2 K10 ["keyIndices"]
       55 MOVE                             R12 R10
       56 LOADNIL                          R13
       57 LOADNIL                          R14
       58 FORGPREP                         R12
       59 JUMPIFNOT                        R5 ; [+5]
       60 MOVE                             R17 R5
       61 MOVE                             R18 R16
       62 MOVE                             R19 R15
       63 CALL                             R17 2 1
       64 JUMP                             ; [+1]
       65 MOVE                             R17 R15
       66 JUMPIFNOTEQKNIL                  R17 ; [+14]
       68 GETUPVAL                         R18 0
       69 GETTABLEKS                       R18 R18 K14 ["warn"]
       71 LOADK                            R19 K15 ["For"]
       72 LOADK                            R21 K16 ["keyBy function returned nil for item at index "]
       73 FASTCALL1                        TOSTRING R15 ; [+3]
       74 MOVE                             R23 R15
       75 GETIMPORT                        R22 K18 [tostring]
       77 CALL                             R22 1 1
       78 CONCAT                           R20 R21 R22
       79 CALL                             R18 2 0
       80 JUMP                             ; [+3]
       81 GETTABLEKS                       R18 R2 K10 ["keyIndices"]
       83 SETTABLE                         R15 R18 R17
       84 FORGLOOP                         R12 2 ; [-26]
       86 GETTABLEKS                       R13 R6 K19 ["defaultParams"]
       88 GETTABLEN                        R12 R13 1
       89 JUMPIF                           R12 ; [+4]
       90 GETTABLEKS                       R12 R6 K19 ["defaultParams"]
       92 GETTABLEKS                       R12 R12 K20 ["key"]
       94 GETTABLEKS                       R14 R6 K19 ["defaultParams"]
       96 GETTABLEN                        R13 R14 2
       97 JUMPIF                           R13 ; [+4]
       98 GETTABLEKS                       R13 R6 K19 ["defaultParams"]
      100 GETTABLEKS                       R13 R13 K21 ["value"]
      102 LOADB                            R14 0
      103 JUMPIFEQKNIL                     R13 ; [+8]
      105 LOADB                            R14 0
      106 JUMPIFEQKS                       R13 K22 ["_"] ; [+5]
      108 JUMPIFNOTEQKS                    R13 K23 [""] ; [+2]
      110 LOADB                            R14 0 +1
      111 LOADB                            R14 1
      112 LOADB                            R15 0
      113 JUMPIFEQKNIL                     R12 ; [+8]
      115 LOADB                            R15 0
      116 JUMPIFEQKS                       R12 K22 ["_"] ; [+5]
      118 JUMPIFNOTEQKS                    R12 K23 [""] ; [+2]
      120 LOADB                            R15 0 +1
      121 LOADB                            R15 1
      122 GETTABLEKS                       R16 R2 K24 ["elements"]
      124 JUMPIF                           R16 ; [+2]
      125 NEWTABLE                         R16 0 0
      127 SETTABLEKS                       R16 R2 K24 ["elements"]
      129 GETTABLEKS                       R16 R2 K24 ["elements"]
      131 GETIMPORT                        R17 K27 [os.clock]
      133 CALL                             R17 0 1
      134 MOVE                             R18 R10
      135 LOADNIL                          R19
      136 LOADNIL                          R20
      137 FORGPREP                         R18
      138 JUMPIFNOT                        R5 ; [+5]
      139 MOVE                             R23 R5
      140 MOVE                             R24 R22
      141 MOVE                             R25 R21
      142 CALL                             R23 2 1
      143 JUMP                             ; [+1]
      144 MOVE                             R23 R21
      145 GETTABLE                         R24 R16 R23
      146 JUMPIFNOT                        R24 ; [+5]
      147 GETTABLEKS                       R25 R24 K28 ["ref"]
      149 GETTABLEKS                       R25 R25 K29 ["_itemCursor"]
      151 JUMP                             ; [+1]
      152 LOADNIL                          R25
      153 JUMPIFNOT                        R14 ; [+11]
      154 JUMPIF                           R25 ; [+10]
      155 JUMPIFNOT                        R9 ; [+8]
      156 JUMPIFNOT                        R5 ; [+5]
      157 NEWCLOSURE                       R26 P1
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R23
      160 GETTABLE                         R25 R8 R26
      161 JUMP                             ; [+3]
      162 GETTABLE                         R25 R8 R21
      163 JUMP                             ; [+1]
      164 MOVE                             R25 R22
      165 JUMPIFNOT                        R24 ; [+5]
      166 GETTABLEKS                       R26 R24 K28 ["ref"]
      168 GETTABLEKS                       R26 R26 K30 ["_indexCursor"]
      170 JUMP                             ; [+1]
      171 LOADNIL                          R26
      172 LOADNIL                          R27
      173 JUMPIFNOT                        R15 ; [+22]
      174 JUMPIF                           R26 ; [+21]
      175 JUMPIFNOT                        R9 ; [+16]
      176 JUMPIFNOT                        R5 ; [+15]
      177 GETUPVAL                         R28 1
      178 GETTABLEKS                       R28 R28 K31 ["createSignal"]
      180 MOVE                             R29 R21
      181 LOADNIL                          R30
      182 LOADK                            R32 K32 ["for-index-%*"]
      183 MOVE                             R34 R23
      184 NAMECALL                         R32 R32 K33 ["format"]
      186 CALL                             R32 2 1
      187 MOVE                             R31 R32
      188 CALL                             R28 3 2
      189 MOVE                             R26 R28
      190 MOVE                             R27 R29
      191 JUMP                             ; [+4]
      192 JUMPIFNOT                        R9 ; [+2]
      193 MOVE                             R26 R21
      194 JUMP                             ; [+1]
      195 MOVE                             R26 R21
      196 GETTABLE                         R28 R16 R23
      197 JUMPIF                           R28 ; [+35]
      198 NEWTABLE                         R28 0 0
      200 JUMPIFNOT                        R13 ; [+1]
      201 SETTABLE                         R25 R28 R13
      202 JUMPIFNOT                        R12 ; [+1]
      203 SETTABLE                         R26 R28 R12
      204 DUPTABLE                         R29 K42 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "/inner/each", ["children"], ["params"], ["version"], ["_itemCursor"], ["_indexCursor"], ["setIndex"]}]
      205 SETTABLEKS                       R6 R29 K36 ["templateAst"]
      207 NEWTABLE                         R30 0 0
      209 SETTABLEKS                       R30 R29 K9 ["children"]
      211 SETTABLEKS                       R28 R29 K39 ["params"]
      213 SETTABLEKS                       R17 R29 K40 ["version"]
      215 SETTABLEKS                       R25 R29 K29 ["_itemCursor"]
      217 SETTABLEKS                       R26 R29 K30 ["_indexCursor"]
      219 SETTABLEKS                       R27 R29 K41 ["setIndex"]
      221 GETTABLEKS                       R30 R1 K43 ["createChild"]
      223 MOVE                             R31 R29
      224 MOVE                             R32 R21
      225 CALL                             R30 2 1
      226 MOVE                             R24 R30
      227 GETTABLEKS                       R30 R1 K44 ["publish"]
      229 MOVE                             R31 R24
      230 CALL                             R30 1 0
      231 SETTABLE                         R24 R16 R23
      232 JUMP                             ; [+15]
      233 GETTABLEKS                       R28 R24 K28 ["ref"]
      235 SETTABLEKS                       R17 R28 K40 ["version"]
      237 GETTABLEKS                       R28 R24 K28 ["ref"]
      239 GETTABLEKS                       R28 R28 K41 ["setIndex"]
      241 JUMPIFNOT                        R28 ; [+6]
      242 GETTABLEKS                       R28 R24 K28 ["ref"]
      244 GETTABLEKS                       R28 R28 K41 ["setIndex"]
      246 MOVE                             R29 R21
      247 CALL                             R28 1 0
      248 FORGLOOP                         R18 2 ; [-111]
      250 MOVE                             R18 R16
      251 LOADNIL                          R19
      252 LOADNIL                          R20
      253 FORGPREP                         R18
      254 GETTABLEKS                       R23 R22 K28 ["ref"]
      256 GETTABLEKS                       R23 R23 K40 ["version"]
      258 JUMPIFEQ                         R23 R17 ; [+23]
      260 GETUPVAL                         R23 0
      261 GETTABLEKS                       R23 R23 K45 ["VERBOSE_FOR"]
      263 JUMPIFNOT                        R23 ; [+9]
      264 GETUPVAL                         R23 0
      265 GETTABLEKS                       R23 R23 K46 ["log"]
      267 LOADK                            R24 K15 ["For"]
      268 LOADK                            R25 K47 ["Remove element"]
      269 GETUPVAL                         R26 2
      270 MOVE                             R27 R21
      271 CALL                             R26 1 -1
      272 CALL                             R23 -1 0
      273 LOADB                            R23 0
      274 SETTABLEKS                       R23 R22 K48 ["alive"]
      276 GETTABLEKS                       R23 R1 K44 ["publish"]
      278 MOVE                             R24 R22
      279 CALL                             R23 1 0
      280 LOADNIL                          R23
      281 SETTABLE                         R23 R16 R21
      282 FORGLOOP                         R18 2 ; [-29]
      284 JUMPIFNOT                        R7 ; [+48]
      285 GETTABLEKS                       R12 R7 K9 ["children"]
      287 JUMPIFNOT                        R12 ; [+45]
      288 JUMPIFNOTEQKN                    R11 K49 [0] ; [+28]
      290 GETTABLEKS                       R12 R2 K50 ["noneElement"]
      292 JUMPIF                           R12 ; [+40]
      293 DUPTABLE                         R12 K52 [{["type"] = "Ref", ["templateAst"], ["templateId"] = "/inner/none", ["children"], ["params"]}]
      294 SETTABLEKS                       R7 R12 K36 ["templateAst"]
      296 NEWTABLE                         R13 0 0
      298 SETTABLEKS                       R13 R12 K9 ["children"]
      300 NEWTABLE                         R13 0 0
      302 SETTABLEKS                       R13 R12 K39 ["params"]
      304 GETTABLEKS                       R13 R1 K43 ["createChild"]
      306 MOVE                             R14 R12
      307 GETTABLEKS                       R15 R1 K53 ["childOrder"]
      309 CALL                             R13 2 1
      310 SETTABLEKS                       R13 R2 K50 ["noneElement"]
      312 GETTABLEKS                       R14 R1 K44 ["publish"]
      314 MOVE                             R15 R13
      315 CALL                             R14 1 0
      316 RETURN                           R0 0
      317 GETTABLEKS                       R12 R2 K50 ["noneElement"]
      319 JUMPIFNOT                        R12 ; [+13]
      320 GETTABLEKS                       R12 R2 K50 ["noneElement"]
      322 LOADB                            R13 0
      323 SETTABLEKS                       R13 R12 K48 ["alive"]
      325 GETTABLEKS                       R12 R1 K44 ["publish"]
      327 GETTABLEKS                       R13 R2 K50 ["noneElement"]
      329 CALL                             R12 1 0
      330 LOADNIL                          R12
      331 SETTABLEKS                       R12 R2 K50 ["noneElement"]
      333 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["state"]
       16 GETTABLEKS                       R3 R3 K7 ["Signals"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Debug"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["util"]
       28 GETTABLEKS                       R5 R5 K10 ["pretty"]
       30 CALL                             R4 1 1
       31 DUPTABLE                         R5 K21 [{["type"] = "Template", ["name"] = "For", ["defaultParams"], ["children"], ["controller"] = , ["analyze"] = , ["mountEffect"]}]
       32 DUPTABLE                         R6 K27 [{["items"], ["keyBy"] = False, ["Each"], ["None"]}]
       33 NEWTABLE                         R7 0 0
       35 SETTABLEKS                       R7 R6 K22 ["items"]
       37 DUPTABLE                         R7 K28 [{["type"] = "Template", ["name"] = "Each"}]
       38 SETTABLEKS                       R7 R6 K25 ["Each"]
       40 DUPTABLE                         R7 K29 [{["type"] = "Template", ["name"] = "None"}]
       41 SETTABLEKS                       R7 R6 K26 ["None"]
       43 SETTABLEKS                       R6 R5 K15 ["defaultParams"]
       45 NEWTABLE                         R6 0 0
       47 SETTABLEKS                       R6 R5 K16 ["children"]
       49 DUPCLOSURE                       R6 K30 [PROTO_3]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 SETTABLEKS                       R6 R5 K20 ["mountEffect"]
       55 RETURN                           R5 1
