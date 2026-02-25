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
        2 JUMPIFNOTEQKNIL                  R1 ; [+29]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["FoundationMigrateCryoToDash"]
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R1 R2 K1 ["join"]
       11 MOVE                             R2 R0
       12 NEWTABLE                         R3 1 0
       14 GETUPVAL                         R4 0
       15 LOADB                            R5 1
       16 SETTABLE                         R5 R3 R4
       17 CALL                             R1 2 1
       18 RETURN                           R1 1
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R2 R3 K2 ["Dictionary"]
       22 GETTABLEKS                       R1 R2 K3 ["union"]
       24 MOVE                             R2 R0
       25 NEWTABLE                         R3 1 0
       27 GETUPVAL                         R4 0
       28 LOADB                            R5 1
       29 SETTABLE                         R5 R3 R4
       30 CALL                             R1 2 1
       31 RETURN                           R1 1
       32 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

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
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          UPVAL U6
       34 NEWTABLE                         R8 0 1
       36 MOVE                             R9 R5
       37 SETLIST                          R8 R9 1 [1]
       39 CALL                             R6 2 0
       40 GETTABLE                         R6 R3 R5
       41 RETURN                           R6 1

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
       16 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Dash"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R7 R0 K10 ["Components"]
       28 GETTABLEKS                       R6 R7 K11 ["Types"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K6 [require]
       33 GETTABLEKS                       R9 R0 K12 ["Providers"]
       35 GETTABLEKS                       R8 R9 K13 ["Style"]
       37 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R9 R10 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K15 ["CursorContext"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R10 R11 K4 ["Parent"]
       55 GETTABLEKS                       R9 R10 K16 ["KeyUtilities"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R11 R0 K17 ["Utility"]
       62 GETTABLEKS                       R10 R11 K18 ["Flags"]
       64 CALL                             R9 1 1
       65 DUPCLOSURE                       R10 K19 [PROTO_3]
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 RETURN                           R10 1
