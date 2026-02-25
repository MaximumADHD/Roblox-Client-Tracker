PROTO_0:
        0 GETIMPORT                        R2 K2 [string.gsub]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K3 ["%."]
        4 MOVE                             R5 R1
        5 CALL                             R2 3 -1
        6 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["StudioLocaleId"]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R1
        5 ORK                              R2 R3 K1 ["."]
        6 GETUPVAL                         R3 2
        7 MOVE                             R4 R0
        8 MOVE                             R5 R2
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["round"]
        3 MOVE                             R3 R0
        4 LOADN                            R4 3
        5 CALL                             R2 2 -1
        6 FASTCALL                         TOSTRING ; [+2]
        7 GETIMPORT                        R1 K2 [tostring]
        9 CALL                             R1 -1 1
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R5 R0 K5 ["Packages"]
       15 GETTABLEKS                       R4 R5 K6 ["Framework"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R2 R3 K7 ["Util"]
       20 GETTABLEKS                       R1 R2 K8 ["Math"]
       22 GETIMPORT                        R3 K4 [require]
       24 GETIMPORT                        R6 K1 [script]
       26 GETTABLEKS                       R5 R6 K2 ["Parent"]
       28 GETTABLEKS                       R4 R5 K9 ["delimitersByLocaleId"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R2 R3 K10 ["decimalDelimiterByLocale"]
       33 GETIMPORT                        R3 K12 [game]
       35 LOADK                            R5 K13 ["StudioService"]
       36 NAMECALL                         R3 R3 K14 ["GetService"]
       38 CALL                             R3 2 1
       39 DUPCLOSURE                       R4 K15 [PROTO_0]
       40 DUPCLOSURE                       R5 K16 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R4
       44 DUPCLOSURE                       R6 K17 [PROTO_2]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
