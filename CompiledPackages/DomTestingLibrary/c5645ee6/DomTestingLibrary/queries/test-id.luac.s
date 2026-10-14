PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R0 R0 K0 ["testIdAttribute"]
        4 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 GETTABLEN                        R2 R0 1
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 CALL                             R2 0 1
       12 GETTABLEKS                       R2 R2 K0 ["testIdAttribute"]
       14 GETVARARGS                       R3 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_2:
        0 LOADK                            R2 K0 ["Found multiple elements by: [%s=\"%s\"]"]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R4 R4 K1 ["testIdAttribute"]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K3 [tostring]
        9 CALL                             R5 1 1
       10 NAMECALL                         R2 R2 K4 ["format"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

PROTO_3:
        0 LOADK                            R2 K0 ["Unable to find an element by: [%s=\"%s\"]"]
        1 GETUPVAL                         R4 0
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R4 R4 K1 ["testIdAttribute"]
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R6 R1
        7 GETIMPORT                        R5 K3 [tostring]
        9 CALL                             R5 1 1
       10 NAMECALL                         R2 R2 K4 ["format"]
       12 CALL                             R2 3 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 GETIMPORT                        R3 K4 [require]
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R4 R4 K2 ["Parent"]
       22 GETTABLEKS                       R4 R4 K2 ["Parent"]
       24 GETTABLEKS                       R4 R4 K6 ["helpers"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K7 ["checkContainerType"]
       29 GETIMPORT                        R4 K4 [require]
       31 GETIMPORT                        R6 K1 [script]
       33 GETTABLEKS                       R6 R6 K2 ["Parent"]
       35 GETTABLEKS                       R6 R6 K2 ["Parent"]
       37 GETTABLEKS                       R5 R6 K8 ["query-helpers"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R4 R4 K9 ["wrapAllByQueryWithSuggestion"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETIMPORT                        R6 K1 [script]
       46 GETTABLEKS                       R6 R6 K2 ["Parent"]
       48 GETTABLEKS                       R6 R6 K2 ["Parent"]
       50 GETTABLEKS                       R6 R6 K10 ["types"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K4 [require]
       55 GETIMPORT                        R8 K1 [script]
       57 GETTABLEKS                       R8 R8 K2 ["Parent"]
       59 GETTABLEKS                       R7 R8 K11 ["all-utils"]
       61 CALL                             R6 1 1
       62 GETTABLEKS                       R7 R6 K12 ["queryAllByAttribute"]
       64 GETTABLEKS                       R8 R6 K13 ["getConfig"]
       66 GETTABLEKS                       R9 R6 K14 ["buildQueries"]
       68 DUPCLOSURE                       R10 K15 [PROTO_0]
       69 CAPTURE                          VAL R8
       70 LOADNIL                          R11
       71 DUPCLOSURE                       R11 K16 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R8
       75 LOADNIL                          R12
       76 DUPCLOSURE                       R12 K17 [PROTO_2]
       77 CAPTURE                          VAL R8
       78 LOADNIL                          R13
       79 DUPCLOSURE                       R13 K18 [PROTO_3]
       80 CAPTURE                          VAL R8
       81 MOVE                             R14 R4
       82 MOVE                             R15 R11
       83 GETIMPORT                        R16 K21 [debug.info]
       85 MOVE                             R17 R11
       86 LOADK                            R18 K22 ["n"]
       87 CALL                             R16 2 1
       88 LOADK                            R17 K23 ["queryAll"]
       89 CALL                             R14 3 1
       90 MOVE                             R15 R9
       91 MOVE                             R16 R11
       92 MOVE                             R17 R12
       93 MOVE                             R18 R13
       94 CALL                             R15 3 5
       95 SETTABLEKS                       R15 R2 K24 ["queryByTestId"]
       97 SETTABLEKS                       R14 R2 K25 ["queryAllByTestId"]
       99 SETTABLEKS                       R17 R2 K26 ["getByTestId"]
      101 SETTABLEKS                       R16 R2 K27 ["getAllByTestId"]
      103 SETTABLEKS                       R18 R2 K28 ["findAllByTestId"]
      105 SETTABLEKS                       R19 R2 K29 ["findByTestId"]
      107 RETURN                           R2 1
