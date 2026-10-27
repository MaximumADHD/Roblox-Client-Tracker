PROTO_0:
        0 GETTABLEKS                       R6 R0 K0 ["getMockName"]
        2 CALL                             R6 0 1
        3 LOADK                            R7 K1 [""]
        4 JUMPIFNOTEQKS                    R6 K2 ["jest.fn()"] ; [+3]
        6 LOADK                            R7 K1 [""]
        7 JUMP                             ; [+3]
        8 LOADK                            R8 K3 [" "]
        9 MOVE                             R9 R6
       10 CONCAT                           R7 R8 R9
       11 LOADK                            R8 K1 [""]
       12 GETTABLEKS                       R10 R0 K4 ["mock"]
       14 GETTABLEKS                       R10 R10 K5 ["calls"]
       16 LENGTH                           R9 R10
       17 JUMPIFEQKN                       R9 K6 [0] ; [+59]
       19 MOVE                             R10 R2
       20 GETTABLEKS                       R11 R1 K7 ["indent"]
       22 CONCAT                           R9 R10 R11
       23 LOADK                            R10 K8 [" {"]
       24 GETTABLEKS                       R11 R1 K9 ["spacingOuter"]
       26 MOVE                             R12 R9
       27 LOADK                            R13 K10 ["\"calls\": "]
       28 MOVE                             R14 R5
       29 GETTABLEKS                       R15 R0 K4 ["mock"]
       31 GETTABLEKS                       R15 R15 K5 ["calls"]
       33 MOVE                             R16 R1
       34 MOVE                             R17 R9
       35 MOVE                             R18 R3
       36 MOVE                             R19 R4
       37 CALL                             R14 5 1
       38 CONCAT                           R8 R10 R14
       39 GETTABLEKS                       R10 R1 K11 ["min"]
       41 JUMPIFNOT                        R10 ; [+4]
       42 MOVE                             R10 R8
       43 LOADK                            R11 K12 [", "]
       44 CONCAT                           R8 R10 R11
       45 JUMP                             ; [+3]
       46 MOVE                             R10 R8
       47 LOADK                            R11 K13 [","]
       48 CONCAT                           R8 R10 R11
       49 MOVE                             R10 R8
       50 GETTABLEKS                       R11 R1 K9 ["spacingOuter"]
       52 MOVE                             R12 R9
       53 LOADK                            R13 K14 ["\"results\": "]
       54 MOVE                             R14 R5
       55 GETTABLEKS                       R15 R0 K4 ["mock"]
       57 GETTABLEKS                       R15 R15 K15 ["results"]
       59 MOVE                             R16 R1
       60 MOVE                             R17 R9
       61 MOVE                             R18 R3
       62 MOVE                             R19 R4
       63 CALL                             R14 5 1
       64 CONCAT                           R8 R10 R14
       65 GETTABLEKS                       R10 R1 K11 ["min"]
       67 JUMPIF                           R10 ; [+3]
       68 MOVE                             R10 R8
       69 LOADK                            R11 K13 [","]
       70 CONCAT                           R8 R10 R11
       71 MOVE                             R10 R8
       72 GETTABLEKS                       R11 R1 K9 ["spacingOuter"]
       74 MOVE                             R12 R2
       75 LOADK                            R13 K16 ["}"]
       76 CONCAT                           R8 R10 R13
       77 LOADK                            R10 K17 ["[MockFunction"]
       78 MOVE                             R11 R7
       79 LOADK                            R12 K18 ["]"]
       80 MOVE                             R13 R8
       81 CONCAT                           R9 R10 R13
       82 RETURN                           R9 1

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIFNOT                        R1 ; [+10]
        2 LOADB                            R1 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+3]
       10 GETTABLEKS                       R1 R0 K3 ["_isMockFunction"]
       12 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["PrettyFormat"]
       11 CALL                             R2 1 1
       12 DUPCLOSURE                       R3 K6 [PROTO_0]
       13 DUPCLOSURE                       R4 K7 [PROTO_1]
       14 DUPTABLE                         R5 K10 [{"serialize", "test"}]
       15 SETTABLEKS                       R3 R5 K8 ["serialize"]
       17 SETTABLEKS                       R4 R5 K9 ["test"]
       19 RETURN                           R5 1
