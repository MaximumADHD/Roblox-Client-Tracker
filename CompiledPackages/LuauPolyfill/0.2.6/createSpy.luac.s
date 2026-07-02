PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["callCount"]
        5 ADDK                             R1 R2 K0 [1]
        6 SETTABLEKS                       R1 R0 K1 ["callCount"]
        8 GETUPVAL                         R0 0
        9 NEWTABLE                         R1 0 0
       11 GETVARARGS                       R2 -1
       12 SETLIST                          R1 R2 -1 [1]
       14 SETTABLEKS                       R1 R0 K2 ["values"]
       16 GETUPVAL                         R0 0
       17 LOADK                            R2 K3 ["#"]
       18 FASTCALL1                        SELECT_VARARG R2 ; [+3]
       19 GETIMPORT                        R1 K5 [select]
       21 GETVARARGS                       R3 -1
       22 CALL                             R1 -1 1
       23 SETTABLEKS                       R1 R0 K6 ["valuesLength"]
       25 GETUPVAL                         R0 1
       26 JUMPIFEQKNIL                     R0 ; [+5]
       28 GETUPVAL                         R0 1
       29 GETVARARGS                       R1 -1
       30 CALL                             R0 -1 -1
       31 RETURN                           R0 -1
       32 LOADNIL                          R0
       33 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K3 ["valuesLength"]
       10 JUMPIFEQ                         R2 R1 ; [+13]
       12 GETIMPORT                        R2 K5 [error]
       14 LOADK                            R3 K6 ["Expected %d arguments, but was called with %d arguments"]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["valuesLength"]
       18 MOVE                             R6 R1
       19 NAMECALL                         R3 R3 K7 ["format"]
       21 CALL                             R3 3 1
       22 LOADN                            R4 2
       23 CALL                             R2 2 0
       24 LOADN                            R4 1
       25 MOVE                             R2 R1
       26 LOADN                            R3 1
       27 FORNPREP                         R2
       28 FASTCALL1                        SELECT_VARARG R4 ; [+4]
       29 GETIMPORT                        R5 K2 [select]
       31 MOVE                             R6 R4
       32 GETVARARGS                       R7 -1
       33 CALL                             R5 -1 1
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K8 ["values"]
       37 GETTABLE                         R8 R9 R4
       38 JUMPIFEQ                         R8 R5 ; [+2]
       40 LOADB                            R7 0 +1
       41 LOADB                            R7 1
       42 FASTCALL2K                       ASSERT R7 K9 ; [+4]
       44 LOADK                            R8 K9 ["value differs"]
       45 GETIMPORT                        R6 K11 [assert]
       47 CALL                             R6 2 0
       48 FORNLOOP                         R2
       49 RETURN                           R0 0

PROTO_2:
        0 PREPVARARGS                      1
        1 LOADK                            R2 K0 ["#"]
        2 FASTCALL1                        SELECT_VARARG R2 ; [+3]
        3 GETIMPORT                        R1 K2 [select]
        5 GETVARARGS                       R3 -1
        6 CALL                             R1 -1 1
        7 NEWTABLE                         R2 0 0
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K3 ["valuesLength"]
       12 JUMPIFEQ                         R5 R1 ; [+2]
       14 LOADB                            R4 0 +1
       15 LOADB                            R4 1
       16 FASTCALL2K                       ASSERT R4 K4 ; [+4]
       18 LOADK                            R5 K4 ["length of expected values differs from stored values"]
       19 GETIMPORT                        R3 K6 [assert]
       21 CALL                             R3 2 0
       22 LOADN                            R5 1
       23 MOVE                             R3 R1
       24 LOADN                            R4 1
       25 FORNPREP                         R3
       26 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       27 GETIMPORT                        R6 K2 [select]
       29 MOVE                             R7 R5
       30 GETVARARGS                       R8 -1
       31 CALL                             R6 -1 1
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K7 ["values"]
       35 GETTABLE                         R7 R8 R5
       36 SETTABLE                         R7 R2 R6
       37 FORNLOOP                         R3
       38 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R2 K1 [error]
        2 LOADK                            R3 K2 ["%q is not a valid member of spy"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R3 K3 ["format"]
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K4 [{[1] = 0, ["values"], ["valuesLength"] = 0}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K2 ["values"]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R1 K5 ["value"]
       10 NEWCLOSURE                       R2 P1
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R2 R1 K6 ["assertCalledWith"]
       14 NEWCLOSURE                       R2 P2
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R1 K7 ["captureValues"]
       18 DUPTABLE                         R4 K9 [{"__index"}]
       19 DUPCLOSURE                       R5 K10 [PROTO_3]
       20 SETTABLEKS                       R5 R4 K8 ["__index"]
       22 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K12 [setmetatable]
       27 CALL                             R2 2 0
       28 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_4]
        2 RETURN                           R0 1
