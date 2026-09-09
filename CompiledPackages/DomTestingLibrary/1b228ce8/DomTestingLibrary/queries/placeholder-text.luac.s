PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 GETTABLEN                        R2 R0 1
        8 CALL                             R1 1 0
        9 GETUPVAL                         R1 1
       10 LOADK                            R2 K0 ["PlaceholderText"]
       11 GETVARARGS                       R3 -1
       12 CALL                             R1 -1 -1
       13 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R2 K0 ["Found multiple elements with the placeholder text of: %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

PROTO_2:
        0 LOADK                            R2 K0 ["Unable to find an element with the placeholder text of: %s"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 NAMECALL                         R2 R2 K3 ["format"]
        8 CALL                             R2 2 -1
        9 RETURN                           R2 -1

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
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R5 R5 K2 ["Parent"]
       22 GETTABLEKS                       R5 R5 K2 ["Parent"]
       24 GETTABLEKS                       R4 R5 K6 ["query-helpers"]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R3 R3 K7 ["wrapAllByQueryWithSuggestion"]
       29 GETIMPORT                        R4 K4 [require]
       31 GETIMPORT                        R5 K1 [script]
       33 GETTABLEKS                       R5 R5 K2 ["Parent"]
       35 GETTABLEKS                       R5 R5 K2 ["Parent"]
       37 GETTABLEKS                       R5 R5 K8 ["helpers"]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R4 R4 K9 ["checkContainerType"]
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
       64 GETTABLEKS                       R8 R6 K13 ["buildQueries"]
       66 LOADNIL                          R9
       67 DUPCLOSURE                       R9 K14 [PROTO_0]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R7
       70 LOADNIL                          R10
       71 DUPCLOSURE                       R10 K15 [PROTO_1]
       72 LOADNIL                          R11
       73 DUPCLOSURE                       R11 K16 [PROTO_2]
       74 MOVE                             R12 R3
       75 MOVE                             R13 R9
       76 GETIMPORT                        R14 K19 [debug.info]
       78 MOVE                             R15 R9
       79 LOADK                            R16 K20 ["n"]
       80 CALL                             R14 2 1
       81 LOADK                            R15 K21 ["queryAll"]
       82 CALL                             R12 3 1
       83 MOVE                             R13 R8
       84 MOVE                             R14 R9
       85 MOVE                             R15 R10
       86 MOVE                             R16 R11
       87 CALL                             R13 3 5
       88 SETTABLEKS                       R13 R2 K22 ["queryByPlaceholderText"]
       90 SETTABLEKS                       R12 R2 K23 ["queryAllByPlaceholderText"]
       92 SETTABLEKS                       R15 R2 K24 ["getByPlaceholderText"]
       94 SETTABLEKS                       R14 R2 K25 ["getAllByPlaceholderText"]
       96 SETTABLEKS                       R16 R2 K26 ["findAllByPlaceholderText"]
       98 SETTABLEKS                       R17 R2 K27 ["findByPlaceholderText"]
      100 RETURN                           R2 1
