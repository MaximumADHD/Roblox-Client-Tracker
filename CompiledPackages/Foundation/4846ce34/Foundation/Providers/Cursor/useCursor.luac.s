PROTO_0:
        0 GETUPVAL                         R1 0
        1 FASTCALL1                        TYPEOF R1 ; [+2]
        2 GETIMPORT                        R0 K1 [typeof]
        4 CALL                             R0 1 1
        5 JUMPIFNOTEQKS                    R0 K2 ["table"] ; [+16]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K3 ["encodeKey"]
       10 GETUPVAL                         R1 2
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K4 ["radius"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K5 ["offset"]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K6 ["borderWidth"]
       20 CALL                             R0 4 -1
       21 RETURN                           R0 -1
       22 GETUPVAL                         R0 0
       23 JUMPIFNOTEQKNIL                  R0 ; [+7]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R0 R1 K3 ["encodeKey"]
       28 GETUPVAL                         R1 2
       29 CALL                             R0 1 -1
       30 RETURN                           R0 -1
       31 GETUPVAL                         R0 0
       32 RETURN                           R0 1

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
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useContext"]
        5 GETUPVAL                         R3 2
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R2 K1 ["refCache"]
        9 GETTABLEKS                       R4 R2 K2 ["setMountedCursors"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R1
       18 NEWTABLE                         R7 0 2
       20 MOVE                             R8 R0
       21 MOVE                             R9 R1
       22 SETLIST                          R7 R8 2 [1]
       24 CALL                             R5 2 1
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R6 R7 K4 ["useEffect"]
       28 NEWCLOSURE                       R7 P1
       29 CAPTURE                          VAL R4
       30 CAPTURE                          VAL R5
       31 CAPTURE                          UPVAL U4
       32 NEWTABLE                         R8 0 1
       34 MOVE                             R9 R5
       35 SETLIST                          R8 R9 1 [1]
       37 CALL                             R6 2 0
       38 GETTABLE                         R6 R3 R5
       39 RETURN                           R6 1

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
       21 GETIMPORT                        R7 K1 [script]
       23 GETTABLEKS                       R6 R7 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K9 ["CursorContext"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R8 K1 [script]
       32 GETTABLEKS                       R7 R8 K4 ["Parent"]
       34 GETTABLEKS                       R6 R7 K10 ["KeyUtilities"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Components"]
       41 GETTABLEKS                       R7 R8 K12 ["Types"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R10 R0 K13 ["Providers"]
       48 GETTABLEKS                       R9 R10 K14 ["Style"]
       50 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       52 CALL                             R7 1 1
       53 DUPCLOSURE                       R8 K16 [PROTO_3]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R2
       59 RETURN                           R8 1
