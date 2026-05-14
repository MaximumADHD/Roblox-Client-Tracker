PROTO_0:
        0 LOADN                            R1 1
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K0 ["Get"]
        4 CALL                             R3 0 1
        5 NAMECALL                         R3 R3 K1 ["GetGroups"]
        7 CALL                             R3 1 1
        8 MOVE                             R5 R0
        9 LOADK                            R6 K2 [" "]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R8 R1
       12 GETIMPORT                        R7 K4 [tostring]
       14 CALL                             R7 1 1
       15 CONCAT                           R4 R5 R7
       16 GETTABLE                         R2 R3 R4
       17 JUMPIFNOT                        R2 ; [+2]
       18 ADDK                             R1 R1 K5 [1]
       19 JUMPBACK                         ; [-19]
       20 MOVE                             R3 R0
       21 LOADK                            R4 K2 [" "]
       22 FASTCALL1                        TOSTRING R1 ; [+3]
       23 MOVE                             R6 R1
       24 GETIMPORT                        R5 K4 [tostring]
       26 CALL                             R5 1 1
       27 CONCAT                           R2 R3 R5
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["TagManager"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Types"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K8 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 RETURN                           R3 1
