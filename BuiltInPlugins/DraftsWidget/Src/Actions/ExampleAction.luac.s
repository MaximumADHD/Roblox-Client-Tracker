PROTO_0:
        0 JUMPIFNOT                        R0 ; [+22]
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFEQKS                       R3 K2 ["string"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 GETIMPORT                        R3 K4 [string.format]
       12 LOADK                            R4 K5 ["Expected aString to be a string, received %s"]
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R6 R0
       15 GETIMPORT                        R5 K7 [tostring]
       17 CALL                             R5 1 1
       18 CALL                             R3 2 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R1 K9 [assert]
       22 CALL                             R1 -1 0
       23 DUPTABLE                         R1 K11 [{"message"}]
       24 SETTABLEKS                       R0 R1 K10 ["message"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Action"]
        9 CALL                             R0 1 1
       10 MOVE                             R1 R0
       11 GETIMPORT                        R3 K3 [script]
       13 GETTABLEKS                       R2 R3 K6 ["Name"]
       15 DUPCLOSURE                       R3 K7 [PROTO_0]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1
