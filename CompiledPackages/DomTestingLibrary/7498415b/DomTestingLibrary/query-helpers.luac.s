PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R2 R3 K0 ["getElementError"]
        4 MOVE                             R3 R0
        5 MOVE                             R4 R1
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["%s\n\n(If this is intentional, then use the `*AllBy*` variant of the query (like `queryAllByText`, `getAllByText`, or `findAllByText`))."]
        2 MOVE                             R5 R0
        3 NAMECALL                         R3 R3 K1 ["format"]
        5 CALL                             R3 2 1
        6 MOVE                             R4 R1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R4
        8 RETURN                           R4 1
        9 MOVE                             R4 R3
       10 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["includes"]
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+12]
        8 GETUPVAL                         R3 3
        9 GETIMPORT                        R4 K2 [pcall]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R3
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+2]
       16 LOADNIL                          R2
       17 JUMP                             ; [+17]
       18 MOVE                             R2 R5
       19 JUMP                             ; [+15]
       20 GETUPVAL                         R4 4
       21 CALL                             R4 0 1
       22 GETTABLEKS                       R3 R4 K3 ["testIdAttribute"]
       24 GETUPVAL                         R4 3
       25 JUMPIFNOTEQ                      R3 R4 ; [+5]
       27 GETUPVAL                         R2 5
       28 MOVE                             R3 R0
       29 CALL                             R2 1 1
       30 JUMP                             ; [+4]
       31 GETUPVAL                         R4 3
       32 NAMECALL                         R2 R0 K4 ["GetAttribute"]
       34 CALL                             R2 2 1
       35 MOVE                             R3 R0
       36 GETUPVAL                         R4 6
       37 GETUPVAL                         R5 7
       38 CALL                             R1 4 -1
       39 RETURN                           R1 -1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R3 ; [+4]
        2 NEWTABLE                         R4 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R4 R3
        6 GETTABLEKS                       R9 R4 K0 ["exact"]
        8 JUMPIFNOTEQKNIL                  R9 ; [+3]
       10 LOADB                            R5 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R5 R4 K0 ["exact"]
       14 GETTABLEKS                       R6 R4 K1 ["collapseWhitespace"]
       16 GETTABLEKS                       R7 R4 K2 ["trim"]
       18 GETTABLEKS                       R8 R4 K3 ["normalizer"]
       20 JUMPIFEQKNIL                     R5 ; [+3]
       22 GETUPVAL                         R9 0
       23 JUMP                             ; [+1]
       24 GETUPVAL                         R9 1
       25 GETUPVAL                         R10 2
       26 DUPTABLE                         R11 K4 [{"collapseWhitespace", "trim", "normalizer"}]
       27 SETTABLEKS                       R6 R11 K1 ["collapseWhitespace"]
       29 SETTABLEKS                       R7 R11 K2 ["trim"]
       31 SETTABLEKS                       R8 R11 K3 ["normalizer"]
       33 CALL                             R10 1 1
       34 DUPCLOSURE                       R11 K5 [PROTO_3]
       35 GETUPVAL                         R13 3
       36 GETTABLEKS                       R12 R13 K6 ["filter"]
       38 GETUPVAL                         R13 4
       39 MOVE                             R14 R1
       40 NEWTABLE                         R15 0 1
       42 MOVE                             R16 R0
       43 SETLIST                          R15 R16 1 [1]
       45 GETUPVAL                         R18 3
       46 GETTABLEKS                       R17 R18 K7 ["includes"]
       48 GETUPVAL                         R18 5
       49 MOVE                             R19 R0
       50 CALL                             R17 2 1
       51 JUMPIFNOT                        R17 ; [+2]
       52 LOADK                            R16 K8 ["property"]
       53 JUMP                             ; [+9]
       54 GETUPVAL                         R18 6
       55 CALL                             R18 0 1
       56 GETTABLEKS                       R17 R18 K9 ["testIdAttribute"]
       58 JUMPIFNOTEQ                      R17 R0 ; [+3]
       60 LOADK                            R16 K10 ["tag"]
       61 JUMP                             ; [+1]
       62 LOADK                            R16 K11 ["attribute"]
       63 CALL                             R13 3 1
       64 NEWCLOSURE                       R14 P1
       65 CAPTURE                          VAL R9
       66 CAPTURE                          UPVAL U3
       67 CAPTURE                          UPVAL U5
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U6
       70 CAPTURE                          UPVAL U7
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R10
       73 CALL                             R12 2 -1
       74 RETURN                           R12 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 CALL                             R4 4 1
        6 LENGTH                           R5 R4
        7 LOADN                            R6 1
        8 JUMPIFNOTLT                      R6 R5 ; [+17]
       10 GETIMPORT                        R5 K1 [error]
       12 GETUPVAL                         R6 1
       13 LOADK                            R7 K2 ["Found multiple elements by [%s=%s]"]
       14 MOVE                             R9 R0
       15 FASTCALL1                        TOSTRING R2 ; [+3]
       16 MOVE                             R11 R2
       17 GETIMPORT                        R10 K4 [tostring]
       19 CALL                             R10 1 1
       20 NAMECALL                         R7 R7 K5 ["format"]
       22 CALL                             R7 3 1
       23 MOVE                             R8 R1
       24 CALL                             R6 2 -1
       25 CALL                             R5 -1 0
       26 GETTABLEN                        R6 R4 1
       27 JUMPIFNOT                        R6 ; [+2]
       28 GETTABLEN                        R5 R4 1
       29 RETURN                           R5 1
       30 LOADNIL                          R5
       31 RETURN                           R5 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R2 R3 K0 ["getElementError"]
        4 LOADNIL                          R3
        5 MOVE                             R4 R0
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R1 R2 K1 ["message"]
        9 RETURN                           R1 1

PROTO_8:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 1
        5 LENGTH                           R2 R1
        6 LOADN                            R3 1
        7 JUMPIFNOTLT                      R3 R2 ; [+32]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R2 R3 K0 ["join"]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K1 ["map"]
       15 MOVE                             R4 R1
       16 DUPCLOSURE                       R5 K2 [PROTO_7]
       17 CAPTURE                          UPVAL U2
       18 CALL                             R3 2 1
       19 LOADK                            R4 K3 ["\n\n"]
       20 CALL                             R2 2 1
       21 GETIMPORT                        R3 K5 [error]
       23 GETUPVAL                         R4 3
       24 LOADK                            R5 K6 ["%s\n\nHere are the matching elements:\n\n%s"]
       25 GETUPVAL                         R8 4
       26 MOVE                             R9 R0
       27 GETVARARGS                       R10 -1
       28 CALL                             R8 -1 -1
       29 FASTCALL                         TOSTRING ; [+2]
       30 GETIMPORT                        R7 K8 [tostring]
       32 CALL                             R7 -1 1
       33 MOVE                             R8 R2
       34 NAMECALL                         R5 R5 K9 ["format"]
       36 CALL                             R5 3 1
       37 MOVE                             R6 R0
       38 CALL                             R4 2 -1
       39 CALL                             R3 -1 0
       40 GETTABLEN                        R3 R1 1
       41 JUMPIFNOT                        R3 ; [+2]
       42 GETTABLEN                        R2 R1 1
       43 RETURN                           R2 1
       44 LOADNIL                          R2
       45 RETURN                           R2 1

PROTO_9:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 RETURN                           R2 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLEKS                       R2 R3 K0 ["getElementError"]
        4 LOADK                            R3 K1 ["A better query is available, try this:\n%s\n"]
        5 NAMECALL                         R5 R0 K2 ["toString"]
        7 CALL                             R5 1 -1
        8 NAMECALL                         R3 R3 K3 ["format"]
       10 CALL                             R3 -1 1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_11:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R2 R0
        3 GETVARARGS                       R3 -1
        4 CALL                             R1 -1 1
        5 LENGTH                           R2 R1
        6 JUMPIFNOTEQKN                    R2 K0 [0] ; [+14]
        8 GETIMPORT                        R2 K2 [error]
       10 GETUPVAL                         R4 1
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R3 R4 K3 ["getElementError"]
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R0
       16 GETVARARGS                       R6 -1
       17 CALL                             R4 -1 1
       18 MOVE                             R5 R0
       19 CALL                             R3 2 -1
       20 CALL                             R2 -1 0
       21 RETURN                           R1 1

PROTO_12:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R4 0
        1 NEWCLOSURE                       R5 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 GETUPVAL                         R7 2
        7 GETTABLEKS                       R6 R7 K0 ["assign"]
        9 NEWTABLE                         R7 0 0
       11 DUPTABLE                         R8 K2 [{"container"}]
       12 SETTABLEKS                       R0 R8 K1 ["container"]
       14 MOVE                             R9 R3
       15 CALL                             R6 3 -1
       16 CALL                             R4 -1 -1
       17 RETURN                           R4 -1

PROTO_15:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 RETURN                           R1 1

PROTO_16:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 GETVARARGS                       R4 -1
        9 CALL                             R2 -1 1
       10 LENGTH                           R5 R1
       11 GETTABLE                         R4 R1 R5
       12 JUMPIFNOTEQKNIL                  R4 ; [+4]
       14 NEWTABLE                         R3 0 0
       16 JUMP                             ; [+2]
       17 LENGTH                           R4 R1
       18 GETTABLE                         R3 R1 R4
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K1 [typeof]
       23 CALL                             R5 1 1
       24 JUMPIFNOTEQKS                    R5 K2 ["table"] ; [+5]
       26 GETTABLEKS                       R5 R3 K3 ["suggest"]
       28 JUMPIFNOTEQKNIL                  R5 ; [+6]
       30 GETUPVAL                         R5 1
       31 CALL                             R5 0 1
       32 GETTABLEKS                       R4 R5 K4 ["throwSuggestions"]
       34 JUMP                             ; [+2]
       35 GETTABLEKS                       R4 R3 K3 ["suggest"]
       37 JUMPIFNOT                        R2 ; [+22]
       38 JUMPIFNOT                        R4 ; [+21]
       39 GETUPVAL                         R5 2
       40 MOVE                             R6 R2
       41 GETUPVAL                         R7 3
       42 CALL                             R5 2 1
       43 JUMPIFEQKNIL                     R5 ; [+16]
       45 GETUPVAL                         R7 4
       46 GETTABLEKS                       R6 R7 K5 ["endsWith"]
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R8 R5 K6 ["queryName"]
       51 CALL                             R6 2 1
       52 JUMPIF                           R6 ; [+7]
       53 GETIMPORT                        R6 K8 [error]
       55 GETUPVAL                         R7 6
       56 MOVE                             R8 R5
       57 MOVE                             R9 R0
       58 CALL                             R7 2 -1
       59 CALL                             R6 -1 0
       60 RETURN                           R2 1

PROTO_17:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R2
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETUPVAL                         R3 1
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+5]
        6 GETTABLEKS                       R2 R1 K0 ["toString"]
        8 CALL                             R2 0 1
        9 RETURN                           R2 1
       10 MOVE                             R2 R1
       11 RETURN                           R2 1

PROTO_19:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETVARARGS                       R2 -1
        4 SETLIST                          R1 R2 -1 [1]
        6 GETUPVAL                         R2 0
        7 MOVE                             R3 R0
        8 GETVARARGS                       R4 -1
        9 CALL                             R2 -1 1
       10 LENGTH                           R5 R1
       11 GETTABLE                         R4 R1 R5
       12 JUMPIFNOTEQKNIL                  R4 ; [+4]
       14 NEWTABLE                         R3 0 0
       16 JUMP                             ; [+2]
       17 LENGTH                           R4 R1
       18 GETTABLE                         R3 R1 R4
       19 GETTABLEKS                       R5 R3 K0 ["suggest"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+6]
       23 GETUPVAL                         R5 1
       24 CALL                             R5 0 1
       25 GETTABLEKS                       R4 R5 K1 ["throwSuggestions"]
       27 JUMP                             ; [+2]
       28 GETTABLEKS                       R4 R3 K0 ["suggest"]
       30 LENGTH                           R5 R2
       31 JUMPIFEQKN                       R5 K2 [0] ; [+46]
       33 JUMPIFNOT                        R4 ; [+44]
       34 GETUPVAL                         R6 2
       35 GETTABLEKS                       R5 R6 K3 ["concat"]
       37 NEWTABLE                         R6 0 0
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K4 ["from"]
       42 GETUPVAL                         R9 3
       43 GETTABLEKS                       R8 R9 K5 ["new"]
       45 GETUPVAL                         R10 2
       46 GETTABLEKS                       R9 R10 K6 ["map"]
       48 MOVE                             R10 R2
       49 NEWCLOSURE                       R11 P0
       50 CAPTURE                          UPVAL U4
       51 CAPTURE                          UPVAL U5
       52 CALL                             R9 2 -1
       53 CALL                             R8 -1 -1
       54 CALL                             R7 -1 -1
       55 CALL                             R5 -1 1
       56 LENGTH                           R6 R5
       57 JUMPIFNOTEQKN                    R6 K7 [1] ; [+20]
       59 GETUPVAL                         R7 6
       60 GETTABLEKS                       R6 R7 K8 ["endsWith"]
       62 GETUPVAL                         R7 7
       63 GETUPVAL                         R9 4
       64 GETTABLEN                        R10 R2 1
       65 GETUPVAL                         R11 5
       66 CALL                             R9 2 1
       67 GETTABLEKS                       R8 R9 K9 ["queryName"]
       69 CALL                             R6 2 1
       70 JUMPIF                           R6 ; [+7]
       71 GETIMPORT                        R6 K11 [error]
       73 GETUPVAL                         R7 8
       74 GETTABLEN                        R8 R5 1
       75 MOVE                             R9 R0
       76 CALL                             R7 2 -1
       77 CALL                             R6 -1 0
       78 RETURN                           R2 1

PROTO_20:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          VAL R2
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 RETURN                           R3 1

PROTO_21:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 GETIMPORT                        R5 K2 [debug.info]
        8 MOVE                             R6 R0
        9 LOADK                            R7 K3 ["n"]
       10 CALL                             R5 2 1
       11 LOADK                            R6 K4 ["query"]
       12 NEWCLOSURE                       R3 P1
       13 CAPTURE                          VAL R4
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R6
       17 CAPTURE                          UPVAL U4
       18 CAPTURE                          VAL R5
       19 CAPTURE                          UPVAL U5
       20 NEWCLOSURE                       R4 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 CAPTURE                          VAL R2
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CAPTURE                          UPVAL U2
       29 CAPTURE                          VAL R1
       30 GETIMPORT                        R7 K2 [debug.info]
       32 MOVE                             R8 R0
       33 LOADK                            R9 K3 ["n"]
       34 CALL                             R7 2 1
       35 LOADK                            R8 K5 ["get"]
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          UPVAL U3
       40 CAPTURE                          VAL R8
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          VAL R7
       43 CAPTURE                          UPVAL U5
       44 GETIMPORT                        R8 K2 [debug.info]
       46 MOVE                             R9 R0
       47 LOADK                            R10 K3 ["n"]
       48 CALL                             R8 2 1
       49 LOADK                            R10 K4 ["query"]
       50 LOADK                            R11 K5 ["get"]
       51 NAMECALL                         R8 R8 K6 ["gsub"]
       53 CALL                             R8 3 1
       54 LOADK                            R9 K7 ["getAll"]
       55 NEWCLOSURE                       R7 P3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          UPVAL U6
       60 CAPTURE                          UPVAL U3
       61 CAPTURE                          VAL R9
       62 CAPTURE                          UPVAL U4
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U5
       65 GETIMPORT                        R10 K2 [debug.info]
       67 MOVE                             R11 R0
       68 LOADK                            R12 K3 ["n"]
       69 CALL                             R10 2 1
       70 LOADK                            R11 K8 ["findAll"]
       71 NEWCLOSURE                       R9 P3
       72 CAPTURE                          VAL R4
       73 CAPTURE                          UPVAL U1
       74 CAPTURE                          UPVAL U0
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U3
       77 CAPTURE                          VAL R11
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          VAL R10
       80 CAPTURE                          UPVAL U5
       81 NEWCLOSURE                       R8 P4
       82 CAPTURE                          UPVAL U7
       83 CAPTURE                          VAL R9
       84 CAPTURE                          UPVAL U8
       85 GETIMPORT                        R11 K2 [debug.info]
       87 MOVE                             R12 R0
       88 LOADK                            R13 K3 ["n"]
       89 CALL                             R11 2 1
       90 LOADK                            R12 K9 ["find"]
       91 NEWCLOSURE                       R10 P1
       92 CAPTURE                          VAL R5
       93 CAPTURE                          UPVAL U1
       94 CAPTURE                          UPVAL U3
       95 CAPTURE                          VAL R12
       96 CAPTURE                          UPVAL U4
       97 CAPTURE                          VAL R11
       98 CAPTURE                          UPVAL U5
       99 NEWCLOSURE                       R9 P4
      100 CAPTURE                          UPVAL U7
      101 CAPTURE                          VAL R10
      102 CAPTURE                          UPVAL U8
      103 MOVE                             R10 R3
      104 MOVE                             R11 R7
      105 MOVE                             R12 R6
      106 MOVE                             R13 R8
      107 MOVE                             R14 R9
      108 RETURN                           R10 5

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Object"]
       16 GETTABLEKS                       R4 R1 K8 ["Set"]
       18 GETTABLEKS                       R5 R1 K9 ["String"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETIMPORT                        R11 K1 [script]
       24 GETTABLEKS                       R10 R11 K2 ["Parent"]
       26 GETTABLEKS                       R9 R10 K10 ["jsHelpers"]
       28 GETTABLEKS                       R8 R9 K11 ["querySelectors"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R6 R7 K12 ["querySelectorAll"]
       33 NEWTABLE                         R7 16 0
       35 NEWTABLE                         R8 0 2
       37 LOADK                            R9 K13 ["PlaceholderText"]
       38 LOADK                            R10 K14 ["Image"]
       39 SETLIST                          R8 R9 2 [1]
       41 GETIMPORT                        R9 K4 [require]
       43 GETIMPORT                        R12 K1 [script]
       45 GETTABLEKS                       R11 R12 K2 ["Parent"]
       47 GETTABLEKS                       R10 R11 K15 ["types"]
       49 CALL                             R9 1 1
       50 GETIMPORT                        R11 K4 [require]
       52 GETIMPORT                        R14 K1 [script]
       54 GETTABLEKS                       R13 R14 K2 ["Parent"]
       56 GETTABLEKS                       R12 R13 K16 ["suggestions"]
       58 CALL                             R11 1 1
       59 GETTABLEKS                       R10 R11 K17 ["getSuggestedQuery"]
       61 GETIMPORT                        R11 K4 [require]
       63 GETIMPORT                        R14 K1 [script]
       65 GETTABLEKS                       R13 R14 K2 ["Parent"]
       67 GETTABLEKS                       R12 R13 K18 ["matches"]
       69 CALL                             R11 1 1
       70 GETTABLEKS                       R12 R11 K19 ["fuzzyMatches"]
       72 GETTABLEKS                       R13 R11 K18 ["matches"]
       74 GETTABLEKS                       R14 R11 K20 ["makeNormalizer"]
       76 GETIMPORT                        R16 K4 [require]
       78 GETIMPORT                        R19 K1 [script]
       80 GETTABLEKS                       R18 R19 K2 ["Parent"]
       82 GETTABLEKS                       R17 R18 K21 ["wait-for"]
       84 CALL                             R16 1 1
       85 GETTABLEKS                       R15 R16 K22 ["waitFor"]
       87 GETIMPORT                        R17 K4 [require]
       89 GETIMPORT                        R20 K1 [script]
       91 GETTABLEKS                       R19 R20 K2 ["Parent"]
       93 GETTABLEKS                       R18 R19 K23 ["config"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R16 R17 K24 ["getConfig"]
       98 GETIMPORT                        R18 K4 [require]
      100 GETIMPORT                        R21 K1 [script]
      102 GETTABLEKS                       R20 R21 K2 ["Parent"]
      104 GETTABLEKS                       R19 R20 K25 ["get-node-test-id"]
      106 CALL                             R18 1 1
      107 GETTABLEKS                       R17 R18 K26 ["getNodeTestId"]
      109 DUPCLOSURE                       R18 K27 [PROTO_0]
      110 CAPTURE                          VAL R16
      111 DUPCLOSURE                       R19 K28 [PROTO_1]
      112 CAPTURE                          VAL R18
      113 DUPCLOSURE                       R20 K29 [PROTO_5]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R14
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R17
      122 DUPCLOSURE                       R21 K30 [PROTO_6]
      123 CAPTURE                          VAL R20
      124 CAPTURE                          VAL R19
      125 DUPCLOSURE                       R22 K31 [PROTO_9]
      126 CAPTURE                          VAL R2
      127 CAPTURE                          VAL R16
      128 CAPTURE                          VAL R19
      129 DUPCLOSURE                       R23 K32 [PROTO_10]
      130 CAPTURE                          VAL R16
      131 DUPCLOSURE                       R24 K33 [PROTO_12]
      132 CAPTURE                          VAL R16
      133 DUPCLOSURE                       R25 K34 [PROTO_15]
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R3
      136 DUPCLOSURE                       R26 K35 [PROTO_17]
      137 CAPTURE                          VAL R16
      138 CAPTURE                          VAL R10
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R23
      141 DUPCLOSURE                       R27 K36 [PROTO_20]
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R10
      146 CAPTURE                          VAL R5
      147 CAPTURE                          VAL R23
      148 DUPCLOSURE                       R28 K37 [PROTO_21]
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R5
      154 CAPTURE                          VAL R23
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R3
      158 SETTABLEKS                       R18 R7 K38 ["getElementError"]
      160 SETTABLEKS                       R27 R7 K39 ["wrapAllByQueryWithSuggestion"]
      162 SETTABLEKS                       R26 R7 K40 ["wrapSingleQueryWithSuggestion"]
      164 SETTABLEKS                       R19 R7 K41 ["getMultipleElementsFoundError"]
      166 SETTABLEKS                       R20 R7 K42 ["queryAllByAttribute"]
      168 SETTABLEKS                       R21 R7 K43 ["queryByAttribute"]
      170 SETTABLEKS                       R22 R7 K44 ["makeSingleQuery"]
      172 SETTABLEKS                       R24 R7 K45 ["makeGetAllQuery"]
      174 SETTABLEKS                       R25 R7 K46 ["makeFindQuery"]
      176 SETTABLEKS                       R28 R7 K47 ["buildQueries"]
      178 RETURN                           R7 1
