PROTO_0:
        0 LOADK                            R1 K0 [""]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 3
        5 FORGPREP_INEXT                   R2
        6 MOVE                             R7 R1
        7 LOADK                            R8 K3 ["--"]
        8 GETUPVAL                         R11 0
        9 GETTABLEKS                       R9 R11 K4 ["MULTIPART_FORM_BOUNDARY"]
       11 LOADK                            R10 K5 ["\r\n"]
       12 CONCAT                           R1 R7 R10
       13 GETTABLEKS                       R7 R6 K6 ["type"]
       15 JUMPIFNOT                        R7 ; [+6]
       16 MOVE                             R7 R1
       17 LOADK                            R8 K7 ["Content-Type: "]
       18 GETTABLEKS                       R9 R6 K6 ["type"]
       20 LOADK                            R10 K5 ["\r\n"]
       21 CONCAT                           R1 R7 R10
       22 GETTABLEKS                       R7 R6 K8 ["disposition"]
       24 JUMPIFNOT                        R7 ; [+26]
       25 MOVE                             R7 R1
       26 LOADK                            R8 K9 ["Content-Disposition: form-data; "]
       27 CONCAT                           R1 R7 R8
       28 LOADB                            R7 1
       29 GETIMPORT                        R8 K11 [pairs]
       31 GETTABLEKS                       R9 R6 K8 ["disposition"]
       33 CALL                             R8 1 3
       34 FORGPREP_NEXT                    R8
       35 JUMPIF                           R7 ; [+3]
       36 MOVE                             R13 R1
       37 LOADK                            R14 K12 ["; "]
       38 CONCAT                           R1 R13 R14
       39 LOADB                            R7 0
       40 MOVE                             R13 R1
       41 MOVE                             R14 R11
       42 LOADK                            R15 K13 ["=\""]
       43 MOVE                             R16 R12
       44 LOADK                            R17 K14 ["\""]
       45 CONCAT                           R1 R13 R17
       46 FORGLOOP                         R8 2 ; [-12]
       48 MOVE                             R8 R1
       49 LOADK                            R9 K5 ["\r\n"]
       50 CONCAT                           R1 R8 R9
       51 MOVE                             R7 R1
       52 LOADK                            R8 K5 ["\r\n"]
       53 CONCAT                           R1 R7 R8
       54 MOVE                             R7 R1
       55 GETTABLEKS                       R8 R6 K15 ["value"]
       57 LOADK                            R9 K5 ["\r\n"]
       58 CONCAT                           R1 R7 R9
       59 FORGLOOP                         R2 2 [inext] ; [-54]
       61 MOVE                             R2 R1
       62 LOADK                            R3 K3 ["--"]
       63 GETUPVAL                         R7 0
       64 GETTABLEKS                       R4 R7 K4 ["MULTIPART_FORM_BOUNDARY"]
       66 LOADK                            R5 K3 ["--"]
       67 LOADK                            R6 K5 ["\r\n"]
       68 CONCAT                           R1 R2 R6
       69 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["AssetConfigConstants"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
