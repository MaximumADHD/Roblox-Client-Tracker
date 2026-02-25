PROTO_0:
        0 GETIMPORT                        R5 K3 [Enum.Material.Air]
        2 NEWTABLE                         R6 0 0
        4 LOADN                            R9 255
        5 LOADN                            R7 1
        6 LOADN                            R8 1
        7 FORNPREP                         R7
        8 LOADN                            R12 255
        9 LOADN                            R10 1
       10 LOADN                            R11 1
       11 FORNPREP                         R10
       12 LOADN                            R15 255
       13 LOADN                            R13 1
       14 LOADN                            R14 1
       15 FORNPREP                         R13
       16 ADD                              R16 R0 R9
       17 ADD                              R17 R1 R12
       18 ADD                              R18 R2 R15
       19 LOADN                            R19 0
       20 JUMPIFNOTLT                      R19 R16 ; [+35]
       22 GETTABLEKS                       R19 R4 K4 ["X"]
       24 JUMPIFNOTLE                      R16 R19 ; [+31]
       26 LOADN                            R19 0
       27 JUMPIFNOTLT                      R19 R17 ; [+28]
       29 GETTABLEKS                       R19 R4 K5 ["Y"]
       31 JUMPIFNOTLE                      R17 R19 ; [+24]
       33 LOADN                            R19 0
       34 JUMPIFNOTLT                      R19 R18 ; [+21]
       36 GETTABLEKS                       R19 R4 K6 ["Z"]
       38 JUMPIFNOTLE                      R18 R19 ; [+17]
       40 GETTABLE                         R21 R3 R16
       41 GETTABLE                         R20 R21 R17
       42 GETTABLE                         R19 R20 R18
       43 GETIMPORT                        R20 K3 [Enum.Material.Air]
       45 JUMPIFEQ                         R19 R20 ; [+10]
       47 GETTABLE                         R22 R6 R19
       48 ORK                              R21 R22 K8 [0]
       49 ADDK                             R20 R21 K7 [1]
       50 SETTABLE                         R20 R6 R19
       51 GETTABLE                         R20 R6 R19
       52 LOADN                            R21 0
       53 JUMPIFNOTLT                      R21 R20 ; [+2]
       55 MOVE                             R5 R19
       56 FORNLOOP                         R13
       57 FORNLOOP                         R10
       58 FORNLOOP                         R7
       59 GETIMPORT                        R7 K3 [Enum.Material.Air]
       61 JUMPIFEQ                         R5 R7 ; [+2]
       63 RETURN                           R5 1
       64 LOADNIL                          R7
       65 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
