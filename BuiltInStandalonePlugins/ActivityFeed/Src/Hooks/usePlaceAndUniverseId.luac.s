PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Fire"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["placeid"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["universeid"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["placeid"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["universeid"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["placeid"]
        2 NAMECALL                         R0 R0 K1 ["GetItem"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 LOADK                            R3 K2 ["universeid"]
        7 NAMECALL                         R1 R1 K1 ["GetItem"]
        9 CALL                             R1 2 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R0
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R0 R1 K3 ["Event"]
       19 NEWCLOSURE                       R2 P0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 NAMECALL                         R0 R0 K4 ["Connect"]
       25 CALL                             R0 2 1
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+18]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K3 ["BindableEvent"]
        7 CALL                             R1 1 1
        8 SETUPVAL                         R1 1
        9 GETUPVAL                         R2 1
       10 FASTCALL1                        ASSERT R2 ; [+2]
       11 GETIMPORT                        R1 K5 [assert]
       13 CALL                             R1 1 0
       14 LOADK                            R3 K6 ["idsupdated"]
       15 NEWCLOSURE                       R4 P0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R1 R0 K7 ["OnInvoke"]
       19 CALL                             R1 3 0
       20 GETUPVAL                         R2 1
       21 FASTCALL1                        ASSERT R2 ; [+2]
       22 GETIMPORT                        R1 K5 [assert]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K8 ["useState"]
       28 LOADN                            R2 0
       29 CALL                             R1 1 2
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R3 R4 K8 ["useState"]
       33 LOADN                            R4 0
       34 CALL                             R3 1 2
       35 NEWCLOSURE                       R5 P1
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R4
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K9 ["useEffect"]
       42 NEWCLOSURE                       R7 P2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R4
       46 CAPTURE                          UPVAL U1
       47 NEWTABLE                         R8 0 0
       49 CALL                             R6 2 0
       50 MOVE                             R6 R1
       51 MOVE                             R7 R3
       52 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 LOADB                            R2 0
       17 LOADNIL                          R3
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          REF R2
       20 CAPTURE                          REF R3
       21 CAPTURE                          VAL R1
       22 CLOSEUPVALS                      R2
       23 RETURN                           R4 1
