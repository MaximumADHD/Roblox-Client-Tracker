PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["None"]
        3 JUMPIFNOTEQ                      R1 R3 ; [+3]
        5 LOADK                            R3 K1 [""]
        6 RETURN                           R3 1
        7 GETUPVAL                         R4 1
        8 GETTABLE                         R3 R4 R1
        9 JUMPIF                           R3 ; [+3]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K2 ["Unknown"]
       13 LOADK                            R6 K3 ["Label"]
       14 MOVE                             R7 R3
       15 MOVE                             R8 R2
       16 NAMECALL                         R4 R0 K4 ["getText"]
       18 CALL                             R4 4 -1
       19 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R4 R0 K5 ["Src"]
       15 GETTABLEKS                       R3 R4 K6 ["Enums"]
       17 GETTABLEKS                       R2 R3 K7 ["PropertyNameValidationError"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K5 ["Src"]
       24 GETTABLEKS                       R3 R4 K8 ["Types"]
       26 CALL                             R2 1 1
       27 NEWTABLE                         R3 4 0
       29 GETTABLEKS                       R4 R1 K9 ["DoesNotExist"]
       31 LOADK                            R5 K10 ["PropertyNameErrorDoesNotExist"]
       32 SETTABLE                         R5 R3 R4
       33 GETTABLEKS                       R4 R1 K11 ["DoesNotExistOnType"]
       35 LOADK                            R5 K12 ["PropertyNameErrorDoesNotExistOnType"]
       36 SETTABLE                         R5 R3 R4
       37 GETTABLEKS                       R4 R1 K13 ["AlreadyDefined"]
       39 LOADK                            R5 K14 ["PropertyNameErrorAlreadyDefined"]
       40 SETTABLE                         R5 R3 R4
       41 LOADK                            R4 K15 ["ErrorUnknown"]
       42 SETTABLEKS                       R4 R3 K16 ["Unknown"]
       44 DUPCLOSURE                       R4 K17 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 RETURN                           R4 1
