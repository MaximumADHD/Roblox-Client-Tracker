PROTO_0:
        0 DUPTABLE                         R4 K4 [{"a", "b", "c", "area"}]
        1 SETTABLEKS                       R0 R4 K0 ["a"]
        3 SETTABLEKS                       R1 R4 K1 ["b"]
        5 SETTABLEKS                       R2 R4 K2 ["c"]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K3 ["area"]
       10 GETUPVAL                         R5 0
       11 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       13 GETIMPORT                        R3 K6 [setmetatable]
       15 CALL                             R3 2 1
       16 NAMECALL                         R4 R3 K7 ["updateArea"]
       18 CALL                             R4 1 0
       19 RETURN                           R3 1

PROTO_1:
        0 LOADN                            R2 0
        1 LOADN                            R5 1
        2 LENGTH                           R3 R0
        3 LOADN                            R4 1
        4 FORNPREP                         R3
        5 GETTABLE                         R8 R0 R5
        6 GETTABLE                         R9 R1 R5
        7 SUB                              R7 R8 R9
        8 GETTABLE                         R9 R0 R5
        9 GETTABLE                         R10 R1 R5
       10 SUB                              R8 R9 R10
       11 MUL                              R6 R7 R8
       12 ADD                              R2 R2 R6
       13 FORNLOOP                         R3
       14 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["a"]
        3 GETTABLEKS                       R3 R0 K1 ["b"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R3 R0 K0 ["a"]
        9 GETTABLEKS                       R4 R0 K2 ["c"]
       11 CALL                             R2 2 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R4 R0 K1 ["b"]
       15 GETTABLEKS                       R5 R0 K2 ["c"]
       17 CALL                             R3 2 1
       18 ADD                              R5 R1 R2
       19 SUB                              R4 R5 R3
       20 MULK                             R7 R1 K3 [4]
       21 MUL                              R6 R7 R2
       22 MUL                              R7 R4 R4
       23 SUB                              R5 R6 R7
       24 SETTABLEKS                       R5 R0 K4 ["area"]
       26 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 NEWTABLE                         R2 4 0
       12 SETTABLEKS                       R2 R2 K6 ["__index"]
       14 DUPCLOSURE                       R3 K7 [PROTO_0]
       15 CAPTURE                          VAL R2
       16 SETTABLEKS                       R3 R2 K8 ["new"]
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 DUPCLOSURE                       R4 K10 [PROTO_2]
       20 CAPTURE                          VAL R3
       21 SETTABLEKS                       R4 R2 K11 ["updateArea"]
       23 RETURN                           R2 1
