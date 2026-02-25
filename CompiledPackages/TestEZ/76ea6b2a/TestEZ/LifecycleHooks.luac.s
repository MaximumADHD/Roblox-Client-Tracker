PROTO_0:
        0 DUPTABLE                         R0 K1 [{"_stack"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["_stack"]
        5 GETUPVAL                         R3 0
        6 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K3 [setmetatable]
       11 CALL                             R1 2 1
       12 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NodeType"]
        3 GETTABLEKS                       R1 R2 K1 ["BeforeEach"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [ipairs]
        9 GETTABLEKS                       R4 R0 K4 ["_stack"]
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 GETIMPORT                        R8 K3 [ipairs]
       15 GETTABLE                         R9 R7 R1
       16 CALL                             R8 1 3
       17 FORGPREP_INEXT                   R8
       18 FASTCALL2                        TABLE_INSERT R2 R12 ; [+5]
       20 MOVE                             R14 R2
       21 MOVE                             R15 R12
       22 GETIMPORT                        R13 K7 [table.insert]
       24 CALL                             R13 2 0
       25 FORGLOOP                         R8 2 [inext] ; [-8]
       27 FORGLOOP                         R3 2 [inext] ; [-15]
       29 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["NodeType"]
        3 GETTABLEKS                       R1 R2 K1 ["AfterEach"]
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K3 [ipairs]
        9 GETTABLEKS                       R4 R0 K4 ["_stack"]
       11 CALL                             R3 1 3
       12 FORGPREP_INEXT                   R3
       13 GETIMPORT                        R8 K3 [ipairs]
       15 GETTABLE                         R9 R7 R1
       16 CALL                             R8 1 3
       17 FORGPREP_INEXT                   R8
       18 LOADN                            R15 1
       19 FASTCALL3                        TABLE_INSERT R2 R15 R12
       21 MOVE                             R14 R2
       22 MOVE                             R16 R12
       23 GETIMPORT                        R13 K7 [table.insert]
       25 CALL                             R13 3 0
       26 FORGLOOP                         R8 2 [inext] ; [-9]
       28 FORGLOOP                         R3 2 [inext] ; [-16]
       30 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.remove]
        2 GETTABLEKS                       R2 R0 K3 ["_stack"]
        4 GETTABLEKS                       R4 R0 K3 ["_stack"]
        6 LENGTH                           R3 R4
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R1 ; [+2]
        2 LOADB                            R3 0 +1
        3 LOADB                            R3 1
        4 FASTCALL1                        ASSERT R3 ; [+2]
        5 GETIMPORT                        R2 K1 [assert]
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R3 R0 K2 ["_stack"]
       10 NEWTABLE                         R4 4 0
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R6 R7 K3 ["NodeType"]
       15 GETTABLEKS                       R5 R6 K4 ["BeforeAll"]
       17 GETTABLEKS                       R8 R1 K5 ["children"]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R10 R11 K3 ["NodeType"]
       22 GETTABLEKS                       R9 R10 K4 ["BeforeAll"]
       24 NAMECALL                         R6 R0 K6 ["_getHooksOfType"]
       26 CALL                             R6 3 1
       27 SETTABLE                         R6 R4 R5
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K3 ["NodeType"]
       31 GETTABLEKS                       R5 R6 K7 ["AfterAll"]
       33 GETTABLEKS                       R8 R1 K5 ["children"]
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R10 R11 K3 ["NodeType"]
       38 GETTABLEKS                       R9 R10 K7 ["AfterAll"]
       40 NAMECALL                         R6 R0 K6 ["_getHooksOfType"]
       42 CALL                             R6 3 1
       43 SETTABLE                         R6 R4 R5
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R6 R7 K3 ["NodeType"]
       47 GETTABLEKS                       R5 R6 K8 ["BeforeEach"]
       49 GETTABLEKS                       R8 R1 K5 ["children"]
       51 GETUPVAL                         R11 0
       52 GETTABLEKS                       R10 R11 K3 ["NodeType"]
       54 GETTABLEKS                       R9 R10 K8 ["BeforeEach"]
       56 NAMECALL                         R6 R0 K6 ["_getHooksOfType"]
       58 CALL                             R6 3 1
       59 SETTABLE                         R6 R4 R5
       60 GETUPVAL                         R7 0
       61 GETTABLEKS                       R6 R7 K3 ["NodeType"]
       63 GETTABLEKS                       R5 R6 K9 ["AfterEach"]
       65 GETTABLEKS                       R8 R1 K5 ["children"]
       67 GETUPVAL                         R11 0
       68 GETTABLEKS                       R10 R11 K3 ["NodeType"]
       70 GETTABLEKS                       R9 R10 K9 ["AfterEach"]
       72 NAMECALL                         R6 R0 K6 ["_getHooksOfType"]
       74 CALL                             R6 3 1
       75 SETTABLE                         R6 R4 R5
       76 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       78 GETIMPORT                        R2 K12 [table.insert]
       80 CALL                             R2 2 0
       81 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["_stack"]
        2 GETTABLEKS                       R5 R0 K0 ["_stack"]
        4 LENGTH                           R4 R5
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["NodeType"]
        9 GETTABLEKS                       R3 R4 K2 ["BeforeAll"]
       11 GETTABLE                         R1 R2 R3
       12 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["_stack"]
        2 GETTABLEKS                       R5 R0 K0 ["_stack"]
        4 LENGTH                           R4 R5
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["NodeType"]
        9 GETTABLEKS                       R3 R4 K2 ["AfterAll"]
       11 GETTABLE                         R1 R2 R3
       12 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [ipairs]
        4 MOVE                             R5 R1
        5 CALL                             R4 1 3
        6 FORGPREP_INEXT                   R4
        7 GETTABLEKS                       R9 R8 K2 ["type"]
        9 JUMPIFNOTEQ                      R9 R2 ; [+9]
       11 GETTABLEKS                       R11 R8 K3 ["callback"]
       13 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       15 MOVE                             R10 R3
       16 GETIMPORT                        R9 K6 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 2 [inext] ; [-13]
       21 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["TestEnum"]
        9 CALL                             R0 1 1
       10 NEWTABLE                         R1 16 0
       12 SETTABLEKS                       R1 R1 K6 ["__index"]
       14 DUPCLOSURE                       R2 K7 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K8 ["new"]
       18 DUPCLOSURE                       R2 K9 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K10 ["getBeforeEachHooks"]
       22 DUPCLOSURE                       R2 K11 [PROTO_2]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R1 K12 ["getAfterEachHooks"]
       26 DUPCLOSURE                       R2 K13 [PROTO_3]
       27 SETTABLEKS                       R2 R1 K14 ["popHooks"]
       29 DUPCLOSURE                       R2 K15 [PROTO_4]
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R2 R1 K16 ["pushHooksFrom"]
       33 DUPCLOSURE                       R2 K17 [PROTO_5]
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R2 R1 K18 ["getBeforeAllHooks"]
       37 DUPCLOSURE                       R2 K19 [PROTO_6]
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R2 R1 K20 ["getAfterAllHooks"]
       41 DUPCLOSURE                       R2 K21 [PROTO_7]
       42 SETTABLEKS                       R2 R1 K22 ["_getHooksOfType"]
       44 RETURN                           R1 1
