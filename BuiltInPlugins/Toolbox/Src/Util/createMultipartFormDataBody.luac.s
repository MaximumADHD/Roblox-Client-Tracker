PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 LOADK                            R1 K0 [""]
        6 GETIMPORT                        R2 K2 [ipairs]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 3
       10 FORGPREP_INEXT                   R2
       11 MOVE                             R7 R1
       12 LOADK                            R8 K3 ["--"]
       13 GETUPVAL                         R9 1
       14 GETTABLEKS                       R9 R9 K4 ["MULTIPART_FORM_BOUNDARY"]
       16 LOADK                            R10 K5 ["\r\n"]
       17 CONCAT                           R1 R7 R10
       18 GETTABLEKS                       R7 R6 K6 ["type"]
       20 JUMPIFNOT                        R7 ; [+6]
       21 MOVE                             R7 R1
       22 LOADK                            R8 K7 ["Content-Type: "]
       23 GETTABLEKS                       R9 R6 K6 ["type"]
       25 LOADK                            R10 K5 ["\r\n"]
       26 CONCAT                           R1 R7 R10
       27 GETTABLEKS                       R7 R6 K8 ["disposition"]
       29 JUMPIFNOT                        R7 ; [+26]
       30 MOVE                             R7 R1
       31 LOADK                            R8 K9 ["Content-Disposition: form-data; "]
       32 CONCAT                           R1 R7 R8
       33 LOADB                            R7 1
       34 GETIMPORT                        R8 K11 [pairs]
       36 GETTABLEKS                       R9 R6 K8 ["disposition"]
       38 CALL                             R8 1 3
       39 FORGPREP_NEXT                    R8
       40 JUMPIF                           R7 ; [+3]
       41 MOVE                             R13 R1
       42 LOADK                            R14 K12 ["; "]
       43 CONCAT                           R1 R13 R14
       44 LOADB                            R7 0
       45 MOVE                             R13 R1
       46 MOVE                             R14 R11
       47 LOADK                            R15 K13 ["=\""]
       48 MOVE                             R16 R12
       49 LOADK                            R17 K14 ["\""]
       50 CONCAT                           R1 R13 R17
       51 FORGLOOP                         R8 2 ; [-12]
       53 MOVE                             R8 R1
       54 LOADK                            R9 K5 ["\r\n"]
       55 CONCAT                           R1 R8 R9
       56 MOVE                             R7 R1
       57 LOADK                            R8 K5 ["\r\n"]
       58 CONCAT                           R1 R7 R8
       59 MOVE                             R7 R1
       60 GETTABLEKS                       R8 R6 K15 ["value"]
       62 LOADK                            R9 K5 ["\r\n"]
       63 CONCAT                           R1 R7 R9
       64 FORGLOOP                         R2 2 [inext] ; [-54]
       66 MOVE                             R2 R1
       67 LOADK                            R3 K3 ["--"]
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R4 R4 K4 ["MULTIPART_FORM_BOUNDARY"]
       71 LOADK                            R5 K3 ["--"]
       72 LOADK                            R6 K5 ["\r\n"]
       73 CONCAT                           R1 R2 R6
       74 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["AssetConfigConstants"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Flags"]
       24 GETTABLEKS                       R3 R3 K9 ["getFFlagToolboxRemoveLegacyCatalogUpload"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K10 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
