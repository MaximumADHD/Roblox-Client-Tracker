PROTO_0:
        0 SUB                              R5 R1 R2
        1 FASTCALL1                        MATH_ABS R5 ; [+2]
        2 GETIMPORT                        R4 K2 [math.abs]
        4 CALL                             R4 1 1
        5 LOADK                            R5 K3 [0.001]
        6 JUMPIFLT                         R4 R5 ; [+2]
        8 LOADB                            R3 0 +1
        9 LOADB                            R3 1
       10 RETURN                           R3 1

PROTO_1:
        0 NAMECALL                         R3 R1 K0 ["ToEulerAnglesXYZ"]
        2 CALL                             R3 1 3
        3 NAMECALL                         R6 R2 K0 ["ToEulerAnglesXYZ"]
        5 CALL                             R6 1 3
        6 GETTABLEKS                       R9 R1 K1 ["p"]
        8 GETTABLEKS                       R11 R2 K1 ["p"]
       10 NAMECALL                         R9 R9 K2 ["FuzzyEq"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+20]
       14 GETUPVAL                         R9 0
       15 MOVE                             R11 R3
       16 MOVE                             R12 R6
       17 NAMECALL                         R9 R9 K3 ["fuzzyEq"]
       19 CALL                             R9 3 1
       20 JUMPIFNOT                        R9 ; [+13]
       21 GETUPVAL                         R9 0
       22 MOVE                             R11 R4
       23 MOVE                             R12 R7
       24 NAMECALL                         R9 R9 K3 ["fuzzyEq"]
       26 CALL                             R9 3 1
       27 JUMPIFNOT                        R9 ; [+6]
       28 GETUPVAL                         R9 0
       29 MOVE                             R11 R5
       30 MOVE                             R12 R8
       31 NAMECALL                         R9 R9 K3 ["fuzzyEq"]
       33 CALL                             R9 3 1
       34 RETURN                           R9 1

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["CFrame"]
        2 NAMECALL                         R4 R4 K1 ["inverse"]
        4 CALL                             R4 1 1
        5 GETIMPORT                        R5 K3 [CFrame.new]
        7 MOVE                             R6 R2
        8 CALL                             R5 1 1
        9 MUL                              R3 R4 R5
       10 RETURN                           R3 1

PROTO_3:
        0 GETTABLEKS                       R6 R1 K0 ["X"]
        2 GETTABLEKS                       R7 R2 K0 ["X"]
        4 JUMPIFNOTLE                      R7 R6 ; [+23]
        6 GETTABLEKS                       R6 R1 K0 ["X"]
        8 GETTABLEKS                       R8 R2 K0 ["X"]
       10 ADD                              R7 R8 R4
       11 JUMPIFNOTLE                      R6 R7 ; [+16]
       13 GETTABLEKS                       R6 R1 K1 ["Y"]
       15 GETTABLEKS                       R7 R3 K1 ["Y"]
       17 JUMPIFNOTLE                      R7 R6 ; [+10]
       19 GETTABLEKS                       R6 R1 K1 ["Y"]
       21 GETTABLEKS                       R8 R3 K1 ["Y"]
       23 ADD                              R7 R8 R5
       24 JUMPIFNOTLE                      R6 R7 ; [+3]
       26 LOADB                            R6 1
       27 RETURN                           R6 1
       28 LOADB                            R6 0
       29 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["fuzzyEq"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["fuzzyEq_CFrame"]
       10 DUPCLOSURE                       R1 K4 [PROTO_2]
       11 SETTABLEKS                       R1 R0 K5 ["adornLocalSpace"]
       13 DUPCLOSURE                       R1 K6 [PROTO_3]
       14 SETTABLEKS                       R1 R0 K7 ["pointInRect"]
       16 RETURN                           R0 1
