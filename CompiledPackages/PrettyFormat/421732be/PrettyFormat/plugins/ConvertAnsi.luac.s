PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 LOADK                            R1 K0 [""]
        7 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 DUPCLOSURE                       R4 K0 [PROTO_0]
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R1 R0 K1 ["gsub"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+9]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["toJSBoolean"]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R0 K4 ["match"]
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 1
       16 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R6 R5
        1 GETUPVAL                         R9 0
        2 DUPCLOSURE                       R10 K0 [PROTO_0]
        3 CAPTURE                          UPVAL U1
        4 NAMECALL                         R7 R0 K1 ["gsub"]
        6 CALL                             R7 3 1
        7 MOVE                             R8 R1
        8 MOVE                             R9 R2
        9 MOVE                             R10 R3
       10 MOVE                             R11 R4
       11 CALL                             R6 5 -1
       12 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["Boolean"]
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Types"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R1 K8 ["ChalkLua"]
       25 CALL                             R5 1 1
       26 LOADN                            R10 27
       27 FASTCALL1                        STRING_CHAR R10 ; [+2]
       28 GETIMPORT                        R9 K11 [string.char]
       30 CALL                             R9 1 1
       31 MOVE                             R7 R9
       32 LOADK                            R8 K12 ["%[%d+;?5?;?%d*m"]
       33 CONCAT                           R6 R7 R8
       34 NEWTABLE                         R7 32 0
       36 GETTABLEKS                       R9 R5 K13 ["red"]
       38 GETTABLEKS                       R8 R9 K14 ["close"]
       40 LOADK                            R9 K15 ["</>"]
       41 SETTABLE                         R9 R7 R8
       42 GETTABLEKS                       R9 R5 K16 ["green"]
       44 GETTABLEKS                       R8 R9 K14 ["close"]
       46 LOADK                            R9 K15 ["</>"]
       47 SETTABLE                         R9 R7 R8
       48 GETTABLEKS                       R9 R5 K17 ["cyan"]
       50 GETTABLEKS                       R8 R9 K14 ["close"]
       52 LOADK                            R9 K15 ["</>"]
       53 SETTABLE                         R9 R7 R8
       54 GETTABLEKS                       R9 R5 K18 ["gray"]
       56 GETTABLEKS                       R8 R9 K14 ["close"]
       58 LOADK                            R9 K15 ["</>"]
       59 SETTABLE                         R9 R7 R8
       60 GETTABLEKS                       R9 R5 K19 ["white"]
       62 GETTABLEKS                       R8 R9 K14 ["close"]
       64 LOADK                            R9 K15 ["</>"]
       65 SETTABLE                         R9 R7 R8
       66 GETTABLEKS                       R9 R5 K20 ["yellow"]
       68 GETTABLEKS                       R8 R9 K14 ["close"]
       70 LOADK                            R9 K15 ["</>"]
       71 SETTABLE                         R9 R7 R8
       72 GETTABLEKS                       R9 R5 K21 ["bgRed"]
       74 GETTABLEKS                       R8 R9 K14 ["close"]
       76 LOADK                            R9 K15 ["</>"]
       77 SETTABLE                         R9 R7 R8
       78 GETTABLEKS                       R9 R5 K22 ["bgGreen"]
       80 GETTABLEKS                       R8 R9 K14 ["close"]
       82 LOADK                            R9 K15 ["</>"]
       83 SETTABLE                         R9 R7 R8
       84 GETTABLEKS                       R9 R5 K23 ["bgYellow"]
       86 GETTABLEKS                       R8 R9 K14 ["close"]
       88 LOADK                            R9 K15 ["</>"]
       89 SETTABLE                         R9 R7 R8
       90 GETTABLEKS                       R9 R5 K24 ["inverse"]
       92 GETTABLEKS                       R8 R9 K14 ["close"]
       94 LOADK                            R9 K15 ["</>"]
       95 SETTABLE                         R9 R7 R8
       96 GETTABLEKS                       R9 R5 K25 ["dim"]
       98 GETTABLEKS                       R8 R9 K14 ["close"]
      100 LOADK                            R9 K15 ["</>"]
      101 SETTABLE                         R9 R7 R8
      102 GETTABLEKS                       R9 R5 K26 ["bold"]
      104 GETTABLEKS                       R8 R9 K14 ["close"]
      106 LOADK                            R9 K15 ["</>"]
      107 SETTABLE                         R9 R7 R8
      108 GETTABLEKS                       R9 R5 K27 ["reset"]
      110 GETTABLEKS                       R8 R9 K28 ["open"]
      112 LOADK                            R9 K15 ["</>"]
      113 SETTABLE                         R9 R7 R8
      114 GETTABLEKS                       R9 R5 K27 ["reset"]
      116 GETTABLEKS                       R8 R9 K14 ["close"]
      118 LOADK                            R9 K15 ["</>"]
      119 SETTABLE                         R9 R7 R8
      120 GETTABLEKS                       R9 R5 K13 ["red"]
      122 GETTABLEKS                       R8 R9 K28 ["open"]
      124 LOADK                            R9 K29 ["<red>"]
      125 SETTABLE                         R9 R7 R8
      126 GETTABLEKS                       R9 R5 K16 ["green"]
      128 GETTABLEKS                       R8 R9 K28 ["open"]
      130 LOADK                            R9 K30 ["<green>"]
      131 SETTABLE                         R9 R7 R8
      132 GETTABLEKS                       R9 R5 K17 ["cyan"]
      134 GETTABLEKS                       R8 R9 K28 ["open"]
      136 LOADK                            R9 K31 ["<cyan>"]
      137 SETTABLE                         R9 R7 R8
      138 GETTABLEKS                       R9 R5 K18 ["gray"]
      140 GETTABLEKS                       R8 R9 K28 ["open"]
      142 LOADK                            R9 K32 ["<gray>"]
      143 SETTABLE                         R9 R7 R8
      144 GETTABLEKS                       R9 R5 K19 ["white"]
      146 GETTABLEKS                       R8 R9 K28 ["open"]
      148 LOADK                            R9 K33 ["<white>"]
      149 SETTABLE                         R9 R7 R8
      150 GETTABLEKS                       R9 R5 K20 ["yellow"]
      152 GETTABLEKS                       R8 R9 K28 ["open"]
      154 LOADK                            R9 K34 ["<yellow>"]
      155 SETTABLE                         R9 R7 R8
      156 GETTABLEKS                       R9 R5 K21 ["bgRed"]
      158 GETTABLEKS                       R8 R9 K28 ["open"]
      160 LOADK                            R9 K35 ["<bgRed>"]
      161 SETTABLE                         R9 R7 R8
      162 GETTABLEKS                       R9 R5 K22 ["bgGreen"]
      164 GETTABLEKS                       R8 R9 K28 ["open"]
      166 LOADK                            R9 K36 ["<bgGreen>"]
      167 SETTABLE                         R9 R7 R8
      168 GETTABLEKS                       R9 R5 K23 ["bgYellow"]
      170 GETTABLEKS                       R8 R9 K28 ["open"]
      172 LOADK                            R9 K37 ["<bgYellow>"]
      173 SETTABLE                         R9 R7 R8
      174 GETTABLEKS                       R9 R5 K24 ["inverse"]
      176 GETTABLEKS                       R8 R9 K28 ["open"]
      178 LOADK                            R9 K38 ["<inverse>"]
      179 SETTABLE                         R9 R7 R8
      180 GETTABLEKS                       R9 R5 K25 ["dim"]
      182 GETTABLEKS                       R8 R9 K28 ["open"]
      184 LOADK                            R9 K39 ["<dim>"]
      185 SETTABLE                         R9 R7 R8
      186 GETTABLEKS                       R9 R5 K26 ["bold"]
      188 GETTABLEKS                       R8 R9 K28 ["open"]
      190 LOADK                            R9 K40 ["<bold>"]
      191 SETTABLE                         R9 R7 R8
      192 DUPCLOSURE                       R8 K41 [PROTO_1]
      193 CAPTURE                          VAL R6
      194 CAPTURE                          VAL R7
      195 DUPCLOSURE                       R9 K42 [PROTO_2]
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R6
      198 DUPCLOSURE                       R10 K43 [PROTO_3]
      199 CAPTURE                          VAL R6
      200 CAPTURE                          VAL R7
      201 DUPTABLE                         R11 K48 [{"test", "serialize", "ansiRegex", "toHumanReadableAnsi"}]
      202 SETTABLEKS                       R9 R11 K44 ["test"]
      204 SETTABLEKS                       R10 R11 K45 ["serialize"]
      206 SETTABLEKS                       R6 R11 K46 ["ansiRegex"]
      208 SETTABLEKS                       R8 R11 K47 ["toHumanReadableAnsi"]
      210 RETURN                           R11 1
