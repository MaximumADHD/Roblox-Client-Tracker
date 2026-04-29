PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["instances required in validationContext for validateDynamicHeadMeshPartFormat"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K0 ["instances"]
       14 GETUPVAL                         R2 0
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 CALL                             R2 2 2
       18 JUMPIF                           R2 ; [+1]
       19 RETURN                           R2 2
       20 GETTABLEN                        R4 R1 1
       21 GETUPVAL                         R5 1
       22 MOVE                             R6 R4
       23 GETUPVAL                         R7 2
       24 MOVE                             R8 R0
       25 CALL                             R7 1 1
       26 MOVE                             R8 R0
       27 CALL                             R5 3 2
       28 MOVE                             R2 R5
       29 MOVE                             R3 R6
       30 JUMPIF                           R2 ; [+3]
       31 LOADB                            R5 0
       32 MOVE                             R6 R3
       33 RETURN                           R5 2
       34 GETUPVAL                         R5 3
       35 MOVE                             R6 R4
       36 MOVE                             R7 R0
       37 CALL                             R5 2 -1
       38 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["validation"]
       11 GETTABLEKS                       R2 R3 K6 ["validateSingleInstance"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["validation"]
       18 GETTABLEKS                       R3 R4 K7 ["validateMeshPartBodyPart"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["validation"]
       25 GETTABLEKS                       R4 R5 K8 ["validateDynamicHeadData"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K9 ["util"]
       32 GETTABLEKS                       R5 R6 K10 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R7 R0 K9 ["util"]
       39 GETTABLEKS                       R6 R7 K11 ["createDynamicHeadMeshPartSchema"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K12 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 RETURN                           R6 1
