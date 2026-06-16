PROTO_0:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 LOADK                            R4 K2 ["string"]
        7 LOADK                            R5 K3 ["Attempted to call Dash.endsWith with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R2 3 0
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 LOADK                            R4 K2 ["string"]
       16 LOADK                            R5 K4 ["Attempted to call Dash.endsWith with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R2 3 0
       18 NAMECALL                         R6 R1 K5 ["len"]
       20 CALL                             R6 1 1
       21 MINUS                            R5 R6
       22 NAMECALL                         R3 R0 K6 ["sub"]
       24 CALL                             R3 2 1
       25 JUMPIFEQ                         R3 R1 ; [+2]
       27 LOADB                            R2 0 +1
       28 LOADB                            R2 1
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["assertEqual"]
        9 CALL                             R1 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1
