PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R6 R3
        2 NAMECALL                         R4 R1 K0 ["exec"]
        4 CALL                             R4 2 1
        5 LOADN                            R5 0
        6 NEWTABLE                         R6 0 0
        8 JUMPIFEQKNIL                     R4 ; [+63]
       10 GETTABLEKS                       R7 R4 K1 ["index"]
       12 JUMPIFEQKNIL                     R7 ; [+59]
       14 GETTABLEN                        R7 R4 1
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R8 R9 K2 ["slice"]
       18 MOVE                             R9 R4
       19 LOADN                            R10 1
       20 GETTABLEKS                       R12 R4 K4 ["n"]
       22 ADDK                             R11 R12 K3 [1]
       23 CALL                             R8 3 1
       24 GETTABLEKS                       R10 R4 K1 ["index"]
       26 ADD                              R9 R10 R5
       27 FASTCALL2                        TABLE_INSERT R8 R9 ; [+5]
       29 MOVE                             R11 R8
       30 MOVE                             R12 R9
       31 GETIMPORT                        R10 K7 [table.insert]
       33 CALL                             R10 2 0
       34 MOVE                             R10 R2
       35 FASTCALL1                        TABLE_UNPACK R8 ; [+3]
       36 MOVE                             R12 R8
       37 GETIMPORT                        R11 K9 [table.unpack]
       39 CALL                             R11 1 -1
       40 CALL                             R10 -1 1
       41 DUPTABLE                         R13 K13 [{"from", "length", "value"}]
       42 SETTABLEKS                       R9 R13 K10 ["from"]
       44 LENGTH                           R14 R7
       45 SETTABLEKS                       R14 R13 K11 ["length"]
       47 SETTABLEKS                       R10 R13 K12 ["value"]
       49 FASTCALL2                        TABLE_INSERT R6 R13 ; [+4]
       51 MOVE                             R12 R6
       52 GETIMPORT                        R11 K7 [table.insert]
       54 CALL                             R11 2 0
       55 LENGTH                           R13 R7
       56 GETTABLEKS                       R14 R4 K1 ["index"]
       58 ADD                              R12 R13 R14
       59 SUBK                             R11 R12 K3 [1]
       60 ADD                              R5 R5 R11
       61 ADDK                             R13 R5 K3 [1]
       62 NAMECALL                         R11 R0 K14 ["sub"]
       64 CALL                             R11 2 1
       65 MOVE                             R3 R11
       66 MOVE                             R13 R3
       67 NAMECALL                         R11 R1 K0 ["exec"]
       69 CALL                             R11 2 1
       70 MOVE                             R4 R11
       71 JUMPBACK                         ; [-64]
       72 LOADN                            R9 1
       73 NAMECALL                         R7 R0 K14 ["sub"]
       75 CALL                             R7 2 1
       76 GETIMPORT                        R8 K16 [ipairs]
       78 GETUPVAL                         R10 0
       79 GETTABLEKS                       R9 R10 K17 ["reverse"]
       81 MOVE                             R10 R6
       82 CALL                             R9 1 -1
       83 CALL                             R8 -1 3
       84 FORGPREP_INEXT                   R8
       85 GETTABLEKS                       R13 R12 K10 ["from"]
       87 GETTABLEKS                       R14 R12 K11 ["length"]
       89 GETTABLEKS                       R15 R12 K12 ["value"]
       91 LOADN                            R18 1
       92 SUBK                             R19 R13 K3 [1]
       93 NAMECALL                         R16 R7 K14 ["sub"]
       95 CALL                             R16 3 1
       96 ADD                              R19 R13 R14
       97 NAMECALL                         R17 R7 K14 ["sub"]
       99 CALL                             R17 2 1
      100 MOVE                             R18 R16
      101 MOVE                             R19 R15
      102 MOVE                             R20 R17
      103 CONCAT                           R7 R18 R20
      104 FORGLOOP                         R8 2 [inext] ; [-20]
      106 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R1 K7 ["RegExp"]
       18 CALL                             R4 1 1
       19 DUPCLOSURE                       R5 K8 [PROTO_0]
       20 CAPTURE                          VAL R3
       21 DUPTABLE                         R6 K10 [{"stringReplace"}]
       22 SETTABLEKS                       R5 R6 K9 ["stringReplace"]
       24 RETURN                           R6 1
