PROTO_0:
        0 GETIMPORT                        R2 K1 [game]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetFastFlag"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R0 ; [+2]
        7 NOT                              R3 R2
        8 RETURN                           R3 1
        9 MOVE                             R3 R2
       10 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 GETUPVAL                         R2 0
        3 NAMECALL                         R0 R0 K2 ["GetFastFlag"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 DUPCLOSURE                       R1 K0 [PROTO_0]
        1 LOADN                            R5 1
        2 LOADN                            R6 1
        3 NAMECALL                         R3 R0 K1 ["sub"]
        5 CALL                             R3 3 1
        6 JUMPIFEQKS                       R3 K2 ["!"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 LOADN                            R5 2
       12 NAMECALL                         R3 R0 K1 ["sub"]
       14 CALL                             R3 2 1
       15 JUMP                             ; [+1]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R3
       19 JUMPIFEQKNIL                     R4 ; [+16]
       21 GETUPVAL                         R5 0
       22 GETTABLE                         R4 R5 R3
       23 JUMPIFNOT                        R4 ; [+11]
       24 GETIMPORT                        R5 K4 [game]
       26 MOVE                             R7 R3
       27 NAMECALL                         R5 R5 K5 ["GetFastFlag"]
       29 CALL                             R5 2 1
       30 JUMPIFNOT                        R2 ; [+2]
       31 NOT                              R4 R5
       32 RETURN                           R4 1
       33 MOVE                             R4 R5
       34 RETURN                           R4 1
       35 RETURN                           R2 1
       36 NEWCLOSURE                       R5 P1
       37 CAPTURE                          VAL R3
       38 FASTPCALL                        pcall 1 ; [+2]
       39 GETIMPORT                        R4 K7 [pcall]
       41 CALL                             R4 1 1
       42 GETUPVAL                         R5 0
       43 SETTABLE                         R4 R5 R3
       44 JUMPIF                           R4 ; [+1]
       45 RETURN                           R2 1
       46 GETIMPORT                        R6 K4 [game]
       48 MOVE                             R8 R3
       49 NAMECALL                         R6 R6 K5 ["GetFastFlag"]
       51 CALL                             R6 2 1
       52 JUMPIFNOT                        R2 ; [+2]
       53 NOT                              R5 R6
       54 RETURN                           R5 1
       55 MOVE                             R5 R6
       56 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 NOT                              R1 R2
        4 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["FastFlag"]
        2 JUMPIFNOT                        R1 ; [+46]
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+36]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R3 R1 K4 ["EnableIfAll"]
       13 JUMPIF                           R3 ; [+1]
       14 GETUPVAL                         R3 1
       15 DUPCLOSURE                       R4 K5 [PROTO_3]
       16 CAPTURE                          UPVAL U2
       17 CALL                             R2 2 1
       18 LOADB                            R3 0
       19 GETTABLEKS                       R4 R1 K6 ["DisableIfAll"]
       21 JUMPIFEQKNIL                     R4 ; [+8]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R5 R1 K6 ["DisableIfAll"]
       26 DUPCLOSURE                       R6 K7 [PROTO_4]
       27 CAPTURE                          UPVAL U2
       28 CALL                             R4 2 1
       29 NOT                              R3 R4
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R5 R1 K8 ["DisableIfAny"]
       33 JUMPIF                           R5 ; [+1]
       34 GETUPVAL                         R5 1
       35 DUPCLOSURE                       R6 K9 [PROTO_5]
       36 CAPTURE                          UPVAL U2
       37 CALL                             R4 2 1
       38 MOVE                             R6 R2
       39 JUMPIF                           R6 ; [+3]
       40 MOVE                             R6 R3
       41 JUMPIF                           R6 ; [+1]
       42 MOVE                             R6 R4
       43 NOT                              R5 R6
       44 RETURN                           R5 1
       45 GETUPVAL                         R2 2
       46 MOVE                             R3 R1
       47 CALL                             R2 1 1
       48 RETURN                           R2 1
       49 LOADB                            R2 1
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Packages"]
       20 GETTABLEKS                       R4 R4 K9 ["Dash"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K10 ["some"]
       25 NEWTABLE                         R5 0 0
       27 DUPCLOSURE                       R6 K11 [PROTO_2]
       28 CAPTURE                          VAL R5
       29 DUPCLOSURE                       R7 K12 [PROTO_6]
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R6
       33 RETURN                           R7 1
