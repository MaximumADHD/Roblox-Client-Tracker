PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["table"] ; [+17]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["encodeKey"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["radius"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["offset"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K6 ["borderWidth"]
       20 GETUPVAL                         R5 3
       21 CALL                             R0 5 -1
       22 RETURN                           R0 -1
       23 GETUPVAL                         R0 0
       24 JUMPIFNOTEQKNIL                  R0 ; [+11]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R0 R1 K3 ["encodeKey"]
       29 GETUPVAL                         R1 2
       30 LOADNIL                          R2
       31 LOADNIL                          R3
       32 LOADNIL                          R4
       33 GETUPVAL                         R5 3
       34 CALL                             R0 5 -1
       35 RETURN                           R0 -1
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K7 ["encodeCursorTypeKey"]
       39 GETUPVAL                         R1 0
       40 GETUPVAL                         R2 3
       41 CALL                             R0 2 -1
       42 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOTEQKNIL                  R1 ; [+12]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K0 ["join"]
        7 MOVE                             R2 R0
        8 NEWTABLE                         R3 1 0
       10 GETUPVAL                         R4 0
       11 LOADB                            R5 1
       12 SETTABLE                         R5 R3 R4
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R2 K0 ["colorMode"]
        6 JUMPIFNOT                        R4 ; [+3]
        7 GETTABLEKS                       R3 R2 K0 ["colorMode"]
        9 JUMP                             ; [+3]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Color"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K2 ["useContext"]
       16 GETUPVAL                         R5 4
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R5 R4 K3 ["refCache"]
       20 GETTABLEKS                       R6 R4 K4 ["setMountedCursors"]
       22 GETUPVAL                         R8 3
       23 GETTABLEKS                       R7 R8 K5 ["useMemo"]
       25 NEWCLOSURE                       R8 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 NEWTABLE                         R9 0 3
       32 MOVE                             R10 R0
       33 MOVE                             R11 R1
       34 MOVE                             R12 R3
       35 SETLIST                          R9 R10 3 [1]
       37 CALL                             R7 2 1
       38 GETUPVAL                         R9 3
       39 GETTABLEKS                       R8 R9 K6 ["useEffect"]
       41 NEWCLOSURE                       R9 P1
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R7
       44 CAPTURE                          UPVAL U6
       45 NEWTABLE                         R10 0 1
       47 MOVE                             R11 R7
       48 SETLIST                          R10 R11 1 [1]
       50 CALL                             R8 2 0
       51 GETTABLE                         R8 R5 R7
       52 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Enums"]
       23 GETTABLEKS                       R5 R6 K10 ["ColorMode"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETIMPORT                        R8 K1 [script]
       30 GETTABLEKS                       R7 R8 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K11 ["CursorContext"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETIMPORT                        R9 K1 [script]
       39 GETTABLEKS                       R8 R9 K4 ["Parent"]
       41 GETTABLEKS                       R7 R8 K12 ["KeyUtilities"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K13 ["Providers"]
       48 GETTABLEKS                       R9 R10 K14 ["Style"]
       50 GETTABLEKS                       R8 R9 K15 ["PresentationContext"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R10 R0 K16 ["Components"]
       57 GETTABLEKS                       R9 R10 K17 ["Types"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R12 R0 K13 ["Providers"]
       64 GETTABLEKS                       R11 R12 K14 ["Style"]
       66 GETTABLEKS                       R10 R11 K18 ["useTokens"]
       68 CALL                             R9 1 1
       69 GETTABLEKS                       R10 R7 K19 ["usePresentationContext"]
       71 DUPCLOSURE                       R11 K20 [PROTO_3]
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R2
       79 RETURN                           R11 1
