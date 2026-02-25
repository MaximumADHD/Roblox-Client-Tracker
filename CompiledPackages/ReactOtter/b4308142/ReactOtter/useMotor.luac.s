PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setGoal"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+2]
        6 GETUPVAL                         R0 1
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["current"]
        5 JUMPIFNOT                        R2 ; [+18]
        6 GETUPVAL                         R2 1
        7 JUMPIFNOT                        R2 ; [+8]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K0 ["current"]
       11 GETUPVAL                         R4 1
       12 NAMECALL                         R2 R2 K1 ["onComplete"]
       14 CALL                             R2 2 1
       15 MOVE                             R0 R2
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K0 ["current"]
       19 GETUPVAL                         R4 2
       20 NAMECALL                         R2 R2 K2 ["onStep"]
       22 CALL                             R2 2 1
       23 MOVE                             R1 R2
       24 NEWCLOSURE                       R2 P0
       25 CAPTURE                          REF R0
       26 CAPTURE                          REF R1
       27 CLOSEUPVALS                      R0
       28 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["current"]
        7 NAMECALL                         R0 R0 K1 ["destroy"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useRef"]
        3 LOADNIL                          R4
        4 CALL                             R3 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["useRef"]
        8 LOADNIL                          R5
        9 CALL                             R4 1 1
       10 GETTABLEKS                       R5 R3 K1 ["current"]
       12 JUMPIF                           R5 ; [+28]
       13 LOADNIL                          R5
       14 FASTCALL1                        TYPEOF R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K3 [typeof]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKS                    R6 K4 ["number"] ; [+8]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K5 ["createSingleMotor"]
       24 MOVE                             R7 R0
       25 CALL                             R6 1 1
       26 MOVE                             R5 R6
       27 JUMP                             ; [+6]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K6 ["createGroupMotor"]
       31 MOVE                             R7 R0
       32 CALL                             R6 1 1
       33 MOVE                             R5 R6
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          REF R5
       36 SETTABLEKS                       R6 R4 K1 ["current"]
       38 SETTABLEKS                       R5 R3 K1 ["current"]
       40 CLOSEUPVALS                      R5
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K7 ["useEffect"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 NEWTABLE                         R7 0 2
       50 MOVE                             R8 R1
       51 MOVE                             R9 R2
       52 SETLIST                          R7 R8 2 [1]
       54 CALL                             R5 2 0
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R5 R6 K7 ["useEffect"]
       58 NEWCLOSURE                       R6 P2
       59 CAPTURE                          VAL R3
       60 NEWTABLE                         R7 0 1
       62 GETTABLEKS                       R8 R3 K1 ["current"]
       64 SETLIST                          R7 R8 1 [1]
       66 CALL                             R5 2 0
       67 GETTABLEKS                       R5 R4 K1 ["current"]
       69 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["React"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Otter"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_5]
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
