PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["getValue"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 SUB                              R2 R3 R1
        6 FASTCALL1                        MATH_ABS R2 ; [+3]
        7 MOVE                             R4 R2
        8 GETIMPORT                        R3 K3 [math.abs]
       10 CALL                             R3 1 1
       11 LOADK                            R4 K4 [0.1]
       12 JUMPIFNOTLT                      R3 R4 ; [+9]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 3
       18 NAMECALL                         R3 R3 K5 ["Disconnect"]
       20 CALL                             R3 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R3 2
       23 MINUS                            R9 R0
       24 MULK                             R8 R9 K7 [5]
       25 FASTCALL1                        MATH_EXP R8 ; [+2]
       26 GETIMPORT                        R7 K9 [math.exp]
       28 CALL                             R7 1 1
       29 SUBRK                            R6 K6 [1] R7
       30 MUL                              R5 R2 R6
       31 ADD                              R4 R1 R5
       32 CALL                             R3 1 0
       33 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Heartbeat"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          REF R0
        9 NAMECALL                         R1 R1 K1 ["Connect"]
       11 CALL                             R1 2 1
       12 MOVE                             R0 R1
       13 NEWCLOSURE                       R1 P1
       14 CAPTURE                          REF R0
       15 CLOSEUPVALS                      R0
       16 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBinding"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R0
       16 SETLIST                          R5 R6 1 [1]
       18 CALL                             R3 2 0
       19 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetExport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["RunService"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K12 [PROTO_3]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
