PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K2 ["string"]
        7 LOADK                            R4 K3 ["Attempted to call Dash.isLowercase with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R1 3 0
        9 GETUPVAL                         R1 0
       10 LENGTH                           R3 R0
       11 LOADN                            R4 0
       12 JUMPIFLT                         R4 R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 LOADB                            R3 1
       17 LOADK                            R4 K4 ["Attempted to call Dash.isLowercase with an empty string"]
       18 CALL                             R1 3 0
       19 LOADN                            R3 1
       20 LOADN                            R4 1
       21 NAMECALL                         R1 R0 K5 ["sub"]
       23 CALL                             R1 3 1
       24 NAMECALL                         R3 R1 K6 ["lower"]
       26 CALL                             R3 1 1
       27 JUMPIFEQ                         R1 R3 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

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
