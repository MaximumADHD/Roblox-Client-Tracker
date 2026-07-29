PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETUPVAL                         R2 0
        4 GETTABLE                         R1 R2 R0
        5 RETURN                           R1 1
        6 RETURN                           R0 1

PROTO_1:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["inverse"]
        5 GETTABLEKS                       R2 R2 K1 ["open"]
        7 LOADK                            R3 K2 ["<i>"]
        8 SETTABLE                         R3 R1 R2
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["inverse"]
       12 GETTABLEKS                       R2 R2 K3 ["close"]
       14 LOADK                            R3 K4 ["</i>"]
       15 SETTABLE                         R3 R1 R2
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["bold"]
       19 GETTABLEKS                       R2 R2 K1 ["open"]
       21 LOADK                            R3 K6 ["<b>"]
       22 SETTABLE                         R3 R1 R2
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K7 ["dim"]
       26 GETTABLEKS                       R2 R2 K1 ["open"]
       28 LOADK                            R3 K8 ["<d>"]
       29 SETTABLE                         R3 R1 R2
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K9 ["green"]
       33 GETTABLEKS                       R2 R2 K1 ["open"]
       35 LOADK                            R3 K10 ["<g>"]
       36 SETTABLE                         R3 R1 R2
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K11 ["red"]
       40 GETTABLEKS                       R2 R2 K1 ["open"]
       42 LOADK                            R3 K12 ["<r>"]
       43 SETTABLE                         R3 R1 R2
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K13 ["yellow"]
       47 GETTABLEKS                       R2 R2 K1 ["open"]
       49 LOADK                            R3 K14 ["<y>"]
       50 SETTABLE                         R3 R1 R2
       51 GETUPVAL                         R2 0
       52 GETTABLEKS                       R2 R2 K15 ["bgYellow"]
       54 GETTABLEKS                       R2 R2 K1 ["open"]
       56 LOADK                            R3 K16 ["<Y>"]
       57 SETTABLE                         R3 R1 R2
       58 GETUPVAL                         R2 0
       59 GETTABLEKS                       R2 R2 K5 ["bold"]
       61 GETTABLEKS                       R2 R2 K3 ["close"]
       63 LOADK                            R3 K17 ["</>"]
       64 SETTABLE                         R3 R1 R2
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K7 ["dim"]
       68 GETTABLEKS                       R2 R2 K3 ["close"]
       70 LOADK                            R3 K17 ["</>"]
       71 SETTABLE                         R3 R1 R2
       72 GETUPVAL                         R2 0
       73 GETTABLEKS                       R2 R2 K9 ["green"]
       75 GETTABLEKS                       R2 R2 K3 ["close"]
       77 LOADK                            R3 K17 ["</>"]
       78 SETTABLE                         R3 R1 R2
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K11 ["red"]
       82 GETTABLEKS                       R2 R2 K3 ["close"]
       84 LOADK                            R3 K17 ["</>"]
       85 SETTABLE                         R3 R1 R2
       86 GETUPVAL                         R2 0
       87 GETTABLEKS                       R2 R2 K13 ["yellow"]
       89 GETTABLEKS                       R2 R2 K3 ["close"]
       91 LOADK                            R3 K17 ["</>"]
       92 SETTABLE                         R3 R1 R2
       93 GETUPVAL                         R2 0
       94 GETTABLEKS                       R2 R2 K15 ["bgYellow"]
       96 GETTABLEKS                       R2 R2 K3 ["close"]
       98 LOADK                            R3 K17 ["</>"]
       99 SETTABLE                         R3 R1 R2
      100 GETUPVAL                         R4 1
      101 NEWCLOSURE                       R5 P0
      102 CAPTURE                          VAL R1
      103 NAMECALL                         R2 R0 K18 ["gsub"]
      105 CALL                             R2 3 -1
      106 RETURN                           R2 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["PrettyFormat"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K6 ["plugins"]
       14 GETTABLEKS                       R2 R2 K7 ["ConvertAnsi"]
       16 GETTABLEKS                       R2 R2 K8 ["ansiRegex"]
       18 GETIMPORT                        R3 K4 [require]
       20 GETTABLEKS                       R4 R1 K9 ["ChalkLua"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K10 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 DUPCLOSURE                       R5 K11 [PROTO_2]
       27 DUPTABLE                         R6 K14 [{"serialize", "test"}]
       28 SETTABLEKS                       R4 R6 K12 ["serialize"]
       30 SETTABLEKS                       R5 R6 K13 ["test"]
       32 RETURN                           R6 1
