PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["current"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+3]
        4 LOADB                            R4 0
        5 RETURN                           R4 1
        6 MOVE                             R4 R2
        7 JUMPIF                           R4 ; [+1]
        8 GETUPVAL                         R4 0
        9 GETIMPORT                        R5 K3 [table.find]
       11 MOVE                             R6 R4
       12 GETTABLEKS                       R7 R1 K4 ["UserInputType"]
       14 CALL                             R5 2 1
       15 JUMPIF                           R5 ; [+2]
       16 LOADB                            R5 0
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R1 K5 ["Position"]
       20 GETTABLEKS                       R8 R3 K6 ["AbsolutePosition"]
       22 GETTABLEKS                       R6 R8 K7 ["X"]
       24 GETTABLEKS                       R8 R3 K6 ["AbsolutePosition"]
       26 GETTABLEKS                       R7 R8 K8 ["Y"]
       28 GETTABLEKS                       R11 R3 K9 ["AbsoluteSize"]
       30 GETTABLEKS                       R10 R11 K7 ["X"]
       32 ADD                              R8 R10 R6
       33 GETTABLEKS                       R11 R3 K9 ["AbsoluteSize"]
       35 GETTABLEKS                       R10 R11 K8 ["Y"]
       37 ADD                              R9 R10 R7
       38 LOADB                            R10 0
       39 GETTABLEKS                       R11 R5 K7 ["X"]
       41 JUMPIFNOTLE                      R6 R11 ; [+17]
       43 LOADB                            R10 0
       44 GETTABLEKS                       R11 R5 K7 ["X"]
       46 JUMPIFNOTLE                      R11 R8 ; [+12]
       48 LOADB                            R10 0
       49 GETTABLEKS                       R11 R5 K8 ["Y"]
       51 JUMPIFNOTLE                      R7 R11 ; [+7]
       53 GETTABLEKS                       R11 R5 K8 ["Y"]
       55 JUMPIFLE                         R11 R9 ; [+2]
       57 LOADB                            R10 0 +1
       58 LOADB                            R10 1
       59 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 2
        3 GETIMPORT                        R1 K3 [Enum.UserInputType.MouseButton1]
        5 GETIMPORT                        R2 K5 [Enum.UserInputType.Touch]
        7 SETLIST                          R0 R1 2 [1]
        9 DUPCLOSURE                       R1 K6 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 RETURN                           R1 1
