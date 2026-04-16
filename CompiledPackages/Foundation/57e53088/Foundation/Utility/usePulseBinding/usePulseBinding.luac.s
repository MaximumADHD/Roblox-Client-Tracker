PROTO_0:
        0 GETIMPORT                        R1 K2 [math.map]
        2 MULK                             R5 R0 K4 [3.14159265358979]
        3 GETUPVAL                         R6 0
        4 DIV                              R4 R5 R6
        5 FASTCALL1                        MATH_SIN R4 ; [+2]
        6 GETIMPORT                        R3 K6 [math.sin]
        8 CALL                             R3 1 1
        9 POWK                             R2 R3 K3 [2]
       10 LOADN                            R3 0
       11 LOADN                            R4 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K7 ["Min"]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R6 R7 K8 ["Max"]
       18 CALL                             R1 5 -1
       19 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 NAMECALL                         R0 R0 K0 ["map"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 ORK                              R3 R0 K0 [1]
        3 JUMPIFNOT                        R1 ; [+2]
        4 MOVE                             R4 R1
        5 JUMP                             ; [+1]
        6 GETUPVAL                         R4 1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R5 R6 K1 ["useMemo"]
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R4
       14 NEWTABLE                         R7 0 2
       16 MOVE                             R8 R0
       17 MOVE                             R9 R1
       18 SETLIST                          R7 R8 2 [1]
       20 CALL                             R5 2 -1
       21 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["useClock"]
       21 GETIMPORT                        R5 K12 [NumberRange.new]
       23 LOADN                            R6 0
       24 LOADN                            R7 1
       25 CALL                             R5 2 1
       26 DUPCLOSURE                       R6 K13 [PROTO_2]
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R5
       29 CAPTURE                          VAL R2
       30 RETURN                           R6 1
