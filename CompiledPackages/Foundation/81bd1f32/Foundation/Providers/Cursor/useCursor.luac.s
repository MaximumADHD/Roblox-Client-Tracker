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
       36 GETUPVAL                         R2 4
       37 GETTABLEKS                       R1 R2 K7 ["FoundationSupportPresentationContextInSelectionCursor"]
       39 JUMPIFNOT                        R1 ; [+7]
       40 GETUPVAL                         R1 1
       41 GETTABLEKS                       R0 R1 K8 ["encodeCursorTypeKey"]
       43 GETUPVAL                         R1 0
       44 GETUPVAL                         R2 3
       45 CALL                             R0 2 1
       46 RETURN                           R0 1
       47 GETUPVAL                         R0 0
       48 RETURN                           R0 1

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
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["FoundationSupportPresentationContextInSelectionCursor"]
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETUPVAL                         R2 2
        7 CALL                             R2 0 1
        8 JUMP                             ; [+1]
        9 LOADNIL                          R2
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K0 ["FoundationSupportPresentationContextInSelectionCursor"]
       13 JUMPIFNOT                        R4 ; [+10]
       14 GETTABLEKS                       R4 R2 K1 ["colorMode"]
       16 JUMPIFNOT                        R4 ; [+3]
       17 GETTABLEKS                       R3 R2 K1 ["colorMode"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R3 R4 K2 ["Color"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R3
       25 GETUPVAL                         R5 4
       26 GETTABLEKS                       R4 R5 K3 ["useContext"]
       28 GETUPVAL                         R5 5
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K4 ["refCache"]
       32 GETTABLEKS                       R6 R4 K5 ["setMountedCursors"]
       34 GETUPVAL                         R8 4
       35 GETTABLEKS                       R7 R8 K6 ["useMemo"]
       37 NEWCLOSURE                       R8 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U1
       43 NEWTABLE                         R9 0 3
       45 MOVE                             R10 R0
       46 MOVE                             R11 R1
       47 MOVE                             R12 R3
       48 SETLIST                          R9 R10 3 [1]
       50 CALL                             R7 2 1
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R8 R9 K7 ["useEffect"]
       54 NEWCLOSURE                       R9 P1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R7
       57 CAPTURE                          UPVAL U7
       58 NEWTABLE                         R10 0 1
       60 MOVE                             R11 R7
       61 SETLIST                          R10 R11 1 [1]
       63 CALL                             R8 2 0
       64 GETTABLE                         R8 R5 R7
       65 RETURN                           R8 1

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
       37 GETTABLEKS                       R8 R0 K12 ["Utility"]
       39 GETTABLEKS                       R7 R8 K13 ["Flags"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETIMPORT                        R10 K1 [script]
       46 GETTABLEKS                       R9 R10 K4 ["Parent"]
       48 GETTABLEKS                       R8 R9 K14 ["KeyUtilities"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R11 R0 K15 ["Providers"]
       55 GETTABLEKS                       R10 R11 K16 ["Style"]
       57 GETTABLEKS                       R9 R10 K17 ["PresentationContext"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R11 R0 K18 ["Components"]
       64 GETTABLEKS                       R10 R11 K19 ["Types"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R13 R0 K15 ["Providers"]
       71 GETTABLEKS                       R12 R13 K16 ["Style"]
       73 GETTABLEKS                       R11 R12 K20 ["useTokens"]
       75 CALL                             R10 1 1
       76 GETTABLEKS                       R11 R8 K21 ["usePresentationContext"]
       78 DUPCLOSURE                       R12 K22 [PROTO_3]
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R2
       87 RETURN                           R12 1
