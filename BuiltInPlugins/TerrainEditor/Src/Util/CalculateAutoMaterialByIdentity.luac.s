PROTO_0:
        0 MOVE                             R6 R5
        1 NEWTABLE                         R7 0 0
        3 LOADN                            R10 -1
        4 LOADN                            R8 1
        5 LOADN                            R9 1
        6 FORNPREP                         R8
        7 LOADN                            R13 -1
        8 LOADN                            R11 1
        9 LOADN                            R12 1
       10 FORNPREP                         R11
       11 LOADN                            R16 -1
       12 LOADN                            R14 1
       13 LOADN                            R15 1
       14 FORNPREP                         R14
       15 ADD                              R17 R0 R10
       16 ADD                              R18 R1 R13
       17 ADD                              R19 R2 R16
       18 LOADN                            R20 0
       19 JUMPIFNOTLT                      R20 R17 ; [+33]
       21 GETTABLEKS                       R20 R4 K0 ["X"]
       23 JUMPIFNOTLE                      R17 R20 ; [+29]
       25 LOADN                            R20 0
       26 JUMPIFNOTLT                      R20 R18 ; [+26]
       28 GETTABLEKS                       R20 R4 K1 ["Y"]
       30 JUMPIFNOTLE                      R18 R20 ; [+22]
       32 LOADN                            R20 0
       33 JUMPIFNOTLT                      R20 R19 ; [+19]
       35 GETTABLEKS                       R20 R4 K2 ["Z"]
       37 JUMPIFNOTLE                      R19 R20 ; [+15]
       39 GETTABLE                         R22 R3 R17
       40 GETTABLE                         R21 R22 R18
       41 GETTABLE                         R20 R21 R19
       42 JUMPIFEQ                         R20 R5 ; [+10]
       44 GETTABLE                         R23 R7 R20
       45 ORK                              R22 R23 K4 [0]
       46 ADDK                             R21 R22 K3 [1]
       47 SETTABLE                         R21 R7 R20
       48 GETTABLE                         R21 R7 R20
       49 LOADN                            R22 0
       50 JUMPIFNOTLT                      R22 R21 ; [+2]
       52 MOVE                             R6 R20
       53 FORNLOOP                         R14
       54 FORNLOOP                         R11
       55 FORNLOOP                         R8
       56 JUMPIFEQ                         R6 R5 ; [+2]
       58 RETURN                           R6 1
       59 LOADNIL                          R8
       60 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
