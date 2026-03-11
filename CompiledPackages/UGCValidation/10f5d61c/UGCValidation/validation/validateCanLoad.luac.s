PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["CanLoadAsset"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CALL                             R2 1 2
        6 JUMPIFNOT                        R2 ; [+1]
        7 JUMPIF                           R3 ; [+18]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K2 ["reportFailure"]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R6 R7 K3 ["ErrorType"]
       14 GETTABLEKS                       R5 R6 K4 ["validateCanLoad"]
       16 LOADNIL                          R6
       17 MOVE                             R7 R1
       18 CALL                             R4 3 0
       19 LOADB                            R4 0
       20 NEWTABLE                         R5 0 1
       22 LOADK                            R6 K5 ["Asset could not be loaded"]
       23 SETLIST                          R5 R6 1 [1]
       25 RETURN                           R4 2
       26 LOADB                            R4 1
       27 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R5 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R5 K11 ["Types"]
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K12 [PROTO_1]
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 RETURN                           R4 1
