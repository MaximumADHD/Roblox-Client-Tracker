PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K2 ["string"]
        7 LOADK                            R4 K3 ["Attempted to call Dash.trim with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R1 3 0
        9 LOADK                            R3 K4 ["^%s*(.-)%s*$"]
       10 NAMECALL                         R1 R0 K5 ["match"]
       12 CALL                             R1 2 -1
       13 RETURN                           R1 -1

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
