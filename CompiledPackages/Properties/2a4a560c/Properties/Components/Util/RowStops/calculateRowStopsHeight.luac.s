PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["RowStops"]
        2 FASTCALL2                        MATH_MIN R1 R2 ; [+5]
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 GETIMPORT                        R4 K3 [math.min]
        8 CALL                             R4 2 1
        9 GETTABLEKS                       R6 R3 K4 ["HeaderContentHeight"]
       11 GETTABLEKS                       R7 R3 K5 ["HeaderBottomPadding"]
       13 ADD                              R5 R6 R7
       14 GETTABLEKS                       R7 R3 K6 ["CellContentHeight"]
       16 GETTABLEKS                       R9 R3 K8 ["RowSlotYPadding"]
       18 MULK                             R8 R9 K7 [2]
       19 ADD                              R6 R7 R8
       20 MUL                              R8 R6 R4
       21 GETTABLEKS                       R10 R3 K9 ["RowsGap"]
       23 SUBK                             R11 R4 K10 [1]
       24 MUL                              R9 R10 R11
       25 ADD                              R7 R8 R9
       26 ADD                              R8 R5 R7
       27 RETURN                           R8 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["VisualValuesContext"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 RETURN                           R2 1
