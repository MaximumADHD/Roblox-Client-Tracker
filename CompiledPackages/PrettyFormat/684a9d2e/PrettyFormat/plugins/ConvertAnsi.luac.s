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
        0 LOADK                            R3 K0 ["\x%[%d+;?5?;?%d*m"]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 CAPTURE                          UPVAL U0
        3 NAMECALL                         R1 R0 K2 ["gsub"]
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
       11 LOADK                            R4 K4 ["\x%[%d+;?5?;?%d*m"]
       12 NAMECALL                         R2 R0 K5 ["match"]
       14 CALL                             R2 2 -1
       15 CALL                             R1 -1 1
       16 RETURN                           R1 1

PROTO_3:
        0 MOVE                             R6 R5
        1 LOADK                            R9 K0 ["\x%[%d+;?5?;?%d*m"]
        2 DUPCLOSURE                       R10 K1 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 NAMECALL                         R7 R0 K2 ["gsub"]
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
       26 NEWTABLE                         R6 32 0
       28 GETTABLEKS                       R8 R5 K9 ["red"]
       30 GETTABLEKS                       R7 R8 K10 ["close"]
       32 LOADK                            R8 K11 ["</>"]
       33 SETTABLE                         R8 R6 R7
       34 GETTABLEKS                       R8 R5 K12 ["green"]
       36 GETTABLEKS                       R7 R8 K10 ["close"]
       38 LOADK                            R8 K11 ["</>"]
       39 SETTABLE                         R8 R6 R7
       40 GETTABLEKS                       R8 R5 K13 ["cyan"]
       42 GETTABLEKS                       R7 R8 K10 ["close"]
       44 LOADK                            R8 K11 ["</>"]
       45 SETTABLE                         R8 R6 R7
       46 GETTABLEKS                       R8 R5 K14 ["gray"]
       48 GETTABLEKS                       R7 R8 K10 ["close"]
       50 LOADK                            R8 K11 ["</>"]
       51 SETTABLE                         R8 R6 R7
       52 GETTABLEKS                       R8 R5 K15 ["white"]
       54 GETTABLEKS                       R7 R8 K10 ["close"]
       56 LOADK                            R8 K11 ["</>"]
       57 SETTABLE                         R8 R6 R7
       58 GETTABLEKS                       R8 R5 K16 ["yellow"]
       60 GETTABLEKS                       R7 R8 K10 ["close"]
       62 LOADK                            R8 K11 ["</>"]
       63 SETTABLE                         R8 R6 R7
       64 GETTABLEKS                       R8 R5 K17 ["bgRed"]
       66 GETTABLEKS                       R7 R8 K10 ["close"]
       68 LOADK                            R8 K11 ["</>"]
       69 SETTABLE                         R8 R6 R7
       70 GETTABLEKS                       R8 R5 K18 ["bgGreen"]
       72 GETTABLEKS                       R7 R8 K10 ["close"]
       74 LOADK                            R8 K11 ["</>"]
       75 SETTABLE                         R8 R6 R7
       76 GETTABLEKS                       R8 R5 K19 ["bgYellow"]
       78 GETTABLEKS                       R7 R8 K10 ["close"]
       80 LOADK                            R8 K11 ["</>"]
       81 SETTABLE                         R8 R6 R7
       82 GETTABLEKS                       R8 R5 K20 ["inverse"]
       84 GETTABLEKS                       R7 R8 K10 ["close"]
       86 LOADK                            R8 K11 ["</>"]
       87 SETTABLE                         R8 R6 R7
       88 GETTABLEKS                       R8 R5 K21 ["dim"]
       90 GETTABLEKS                       R7 R8 K10 ["close"]
       92 LOADK                            R8 K11 ["</>"]
       93 SETTABLE                         R8 R6 R7
       94 GETTABLEKS                       R8 R5 K22 ["bold"]
       96 GETTABLEKS                       R7 R8 K10 ["close"]
       98 LOADK                            R8 K11 ["</>"]
       99 SETTABLE                         R8 R6 R7
      100 GETTABLEKS                       R8 R5 K23 ["reset"]
      102 GETTABLEKS                       R7 R8 K24 ["open"]
      104 LOADK                            R8 K11 ["</>"]
      105 SETTABLE                         R8 R6 R7
      106 GETTABLEKS                       R8 R5 K23 ["reset"]
      108 GETTABLEKS                       R7 R8 K10 ["close"]
      110 LOADK                            R8 K11 ["</>"]
      111 SETTABLE                         R8 R6 R7
      112 GETTABLEKS                       R8 R5 K9 ["red"]
      114 GETTABLEKS                       R7 R8 K24 ["open"]
      116 LOADK                            R8 K25 ["<red>"]
      117 SETTABLE                         R8 R6 R7
      118 GETTABLEKS                       R8 R5 K12 ["green"]
      120 GETTABLEKS                       R7 R8 K24 ["open"]
      122 LOADK                            R8 K26 ["<green>"]
      123 SETTABLE                         R8 R6 R7
      124 GETTABLEKS                       R8 R5 K13 ["cyan"]
      126 GETTABLEKS                       R7 R8 K24 ["open"]
      128 LOADK                            R8 K27 ["<cyan>"]
      129 SETTABLE                         R8 R6 R7
      130 GETTABLEKS                       R8 R5 K14 ["gray"]
      132 GETTABLEKS                       R7 R8 K24 ["open"]
      134 LOADK                            R8 K28 ["<gray>"]
      135 SETTABLE                         R8 R6 R7
      136 GETTABLEKS                       R8 R5 K15 ["white"]
      138 GETTABLEKS                       R7 R8 K24 ["open"]
      140 LOADK                            R8 K29 ["<white>"]
      141 SETTABLE                         R8 R6 R7
      142 GETTABLEKS                       R8 R5 K16 ["yellow"]
      144 GETTABLEKS                       R7 R8 K24 ["open"]
      146 LOADK                            R8 K30 ["<yellow>"]
      147 SETTABLE                         R8 R6 R7
      148 GETTABLEKS                       R8 R5 K17 ["bgRed"]
      150 GETTABLEKS                       R7 R8 K24 ["open"]
      152 LOADK                            R8 K31 ["<bgRed>"]
      153 SETTABLE                         R8 R6 R7
      154 GETTABLEKS                       R8 R5 K18 ["bgGreen"]
      156 GETTABLEKS                       R7 R8 K24 ["open"]
      158 LOADK                            R8 K32 ["<bgGreen>"]
      159 SETTABLE                         R8 R6 R7
      160 GETTABLEKS                       R8 R5 K19 ["bgYellow"]
      162 GETTABLEKS                       R7 R8 K24 ["open"]
      164 LOADK                            R8 K33 ["<bgYellow>"]
      165 SETTABLE                         R8 R6 R7
      166 GETTABLEKS                       R8 R5 K20 ["inverse"]
      168 GETTABLEKS                       R7 R8 K24 ["open"]
      170 LOADK                            R8 K34 ["<inverse>"]
      171 SETTABLE                         R8 R6 R7
      172 GETTABLEKS                       R8 R5 K21 ["dim"]
      174 GETTABLEKS                       R7 R8 K24 ["open"]
      176 LOADK                            R8 K35 ["<dim>"]
      177 SETTABLE                         R8 R6 R7
      178 GETTABLEKS                       R8 R5 K22 ["bold"]
      180 GETTABLEKS                       R7 R8 K24 ["open"]
      182 LOADK                            R8 K36 ["<bold>"]
      183 SETTABLE                         R8 R6 R7
      184 DUPCLOSURE                       R7 K37 [PROTO_1]
      185 CAPTURE                          VAL R6
      186 DUPCLOSURE                       R8 K38 [PROTO_2]
      187 CAPTURE                          VAL R3
      188 DUPCLOSURE                       R9 K39 [PROTO_3]
      189 CAPTURE                          VAL R6
      190 DUPTABLE                         R10 K44 [{"test", "serialize", "ansiRegex", "toHumanReadableAnsi"}]
      191 SETTABLEKS                       R8 R10 K40 ["test"]
      193 SETTABLEKS                       R9 R10 K41 ["serialize"]
      195 LOADK                            R11 K45 ["\x%[%d+;?5?;?%d*m"]
      196 SETTABLEKS                       R11 R10 K42 ["ansiRegex"]
      198 SETTABLEKS                       R7 R10 K43 ["toHumanReadableAnsi"]
      200 RETURN                           R10 1
