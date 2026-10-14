PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETUPVAL                         R6 0
        6 GETTABLEKS                       R8 R5 K2 ["name"]
        8 GETIMPORT                        R9 K4 [require]
       10 NAMECALL                         R6 R6 K5 ["add"]
       12 CALL                             R6 3 0
       13 FORGLOOP                         R1 2 ; [-9]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["tableCache"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["UI"]
       18 GETTABLEKS                       R3 R3 K8 ["Components"]
       20 GETTABLEKS                       R3 R3 K9 ["UIFolderData"]
       22 CALL                             R2 1 1
       23 MOVE                             R3 R1
       24 LOADK                            R4 K10 ["ComponentSymbols"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K11 [PROTO_0]
       27 CAPTURE                          VAL R3
       28 GETIMPORT                        R5 K13 [pairs]
       30 MOVE                             R6 R2
       31 CALL                             R5 1 3
       32 FORGPREP_NEXT                    R5
       33 GETTABLEKS                       R12 R9 K14 ["name"]
       35 GETIMPORT                        R13 K4 [require]
       37 NAMECALL                         R10 R3 K15 ["add"]
       39 CALL                             R10 3 0
       40 FORGLOOP                         R5 2 ; [-8]
       42 RETURN                           R3 1
