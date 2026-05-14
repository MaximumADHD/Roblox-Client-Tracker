PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["."] ; [+2]
        2 LOADK                            R1 K1 ["%."]
        3 LOADK                            R6 K2 ["(.*)"]
        4 MOVE                             R7 R1
        5 LOADK                            R8 K2 ["(.*)"]
        6 CONCAT                           R5 R6 R8
        7 LOADK                            R7 K3 ["%1"]
        8 MOVE                             R8 R2
        9 LOADK                            R9 K4 ["%2"]
       10 CONCAT                           R6 R7 R9
       11 NAMECALL                         R3 R0 K5 ["gsub"]
       13 CALL                             R3 3 -1
       14 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["StudioLocaleId"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R1
        5 ORK                              R2 R3 K1 ["."]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 LOADK                            R6 K1 ["."]
       10 CALL                             R3 3 -1
       11 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["delimitersByLocaleId"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R0 R0 K6 ["decimalDelimiterByLocale"]
       12 GETIMPORT                        R1 K8 [game]
       14 LOADK                            R3 K9 ["StudioService"]
       15 NAMECALL                         R1 R1 K10 ["GetService"]
       17 CALL                             R1 2 1
       18 DUPCLOSURE                       R2 K11 [PROTO_0]
       19 DUPCLOSURE                       R3 K12 [PROTO_1]
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 DUPCLOSURE                       R4 K13 [PROTO_2]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
