PROTO_0:
        0 GETUPVAL                         R3 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R5 R0
        3 GETIMPORT                        R4 K1 [typeof]
        5 CALL                             R4 1 1
        6 LOADK                            R5 K2 ["string"]
        7 LOADK                            R6 K3 ["Attempted to call Dash.rightPad with argument #1 of type {left:?} not {right:?}"]
        8 CALL                             R3 3 0
        9 GETUPVAL                         R3 0
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R5 R1
       12 GETIMPORT                        R4 K1 [typeof]
       14 CALL                             R4 1 1
       15 LOADK                            R5 K4 ["number"]
       16 LOADK                            R6 K5 ["Attempted to call Dash.rightPad with argument #2 of type {left:?} not {right:?}"]
       17 CALL                             R3 3 0
       18 ORK                              R3 R2 K6 [" "]
       19 GETUPVAL                         R4 0
       20 FASTCALL1                        TYPEOF R3 ; [+3]
       21 MOVE                             R6 R3
       22 GETIMPORT                        R5 K1 [typeof]
       24 CALL                             R5 1 1
       25 LOADK                            R6 K2 ["string"]
       26 LOADK                            R7 K7 ["Attempted to call Dash.rightPad with argument #3 of type {left:?} not {right:?}"]
       27 CALL                             R4 3 0
       28 NAMECALL                         R5 R0 K8 ["len"]
       30 CALL                             R5 1 1
       31 SUB                              R4 R1 R5
       32 NAMECALL                         R6 R3 K8 ["len"]
       34 CALL                             R6 1 1
       35 MOD                              R5 R4 R6
       36 SUB                              R7 R4 R5
       37 NAMECALL                         R8 R3 K8 ["len"]
       39 CALL                             R8 1 1
       40 DIV                              R6 R7 R8
       41 MOVE                             R8 R0
       42 GETIMPORT                        R11 K10 [string.rep]
       44 ORK                              R12 R2 K6 [" "]
       45 MOVE                             R13 R6
       46 CALL                             R11 2 1
       47 MOVE                             R9 R11
       48 LOADN                            R12 1
       49 MOVE                             R13 R5
       50 NAMECALL                         R10 R3 K11 ["sub"]
       52 CALL                             R10 3 1
       53 CONCAT                           R7 R8 R10
       54 RETURN                           R7 1

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
