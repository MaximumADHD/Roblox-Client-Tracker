PROTO_0:
        0 SUBK                             R4 R0 K0 [1]
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K1 ["DEFAULT_PAGE_SIZE"]
        4 DIV                              R3 R4 R5
        5 FASTCALL1                        MATH_FLOOR R3 ; [+2]
        6 GETIMPORT                        R2 K4 [math.floor]
        8 CALL                             R2 1 1
        9 ADDK                             R1 R2 K0 [1]
       10 RETURN                           R1 1

PROTO_1:
        0 SUBK                             R2 R0 K0 [1]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K1 ["DEFAULT_PAGE_SIZE"]
        4 MUL                              R1 R2 R3
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["DEFAULT_PAGE_SIZE"]
        3 DIV                              R2 R0 R3
        4 FASTCALL1                        MATH_CEIL R2 ; [+2]
        5 GETIMPORT                        R1 K3 [math.ceil]
        7 CALL                             R1 1 1
        8 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["startResultIndexFromPage"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K2 ["DEFAULT_PAGE_SIZE"]
        8 ADD                              R3 R1 R4
        9 SUBK                             R2 R3 K1 [1]
       10 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["FindReplaceAll"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 4 0
       18 DUPCLOSURE                       R3 K9 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 SETTABLEKS                       R3 R2 K10 ["getPageNumberForIndex"]
       22 DUPCLOSURE                       R3 K11 [PROTO_1]
       23 CAPTURE                          VAL R1
       24 SETTABLEKS                       R3 R2 K12 ["startResultIndexFromPage"]
       26 DUPCLOSURE                       R3 K13 [PROTO_2]
       27 CAPTURE                          VAL R1
       28 SETTABLEKS                       R3 R2 K14 ["getTotalPages"]
       30 DUPCLOSURE                       R3 K15 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R3 R2 K16 ["getPageRange"]
       35 RETURN                           R2 1
