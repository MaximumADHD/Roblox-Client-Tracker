PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 3
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R1
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETUPVAL                         R9 1
        9 MOVE                             R10 R2
       10 MOVE                             R11 R8
       11 MOVE                             R12 R8
       12 MOVE                             R13 R0
       13 CALL                             R9 4 1
       14 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       16 MOVE                             R11 R3
       17 MOVE                             R12 R9
       18 GETIMPORT                        R10 K2 [table.insert]
       20 CALL                             R10 2 0
       21 FORGLOOP                         R4 2 ; [-14]
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K5 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["TestHelpers"]
       22 GETTABLEKS                       R3 R4 K8 ["createMockSessionData"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K5 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["generatedMaterialFromColorMap"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 RETURN                           R4 1
