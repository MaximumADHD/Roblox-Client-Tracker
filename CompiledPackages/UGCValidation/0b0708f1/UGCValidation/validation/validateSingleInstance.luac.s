PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["assetTypeEnum"]
        2 LENGTH                           R3 R0
        3 JUMPIFNOTEQKN                    R3 K1 [0] ; [+24]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["reportFailure"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K3 ["ErrorType"]
       11 GETTABLEKS                       R4 R5 K4 ["validateSingleInstance_ZeroInstances"]
       13 LOADNIL                          R5
       14 MOVE                             R6 R1
       15 CALL                             R3 3 0
       16 LOADB                            R3 0
       17 NEWTABLE                         R4 0 1
       19 GETIMPORT                        R5 K7 [string.format]
       21 LOADK                            R6 K8 ["Failed to find an instance of the asset type '%s'. Make sure one exists and try again."]
       22 GETTABLEKS                       R7 R2 K9 ["Name"]
       24 CALL                             R5 2 -1
       25 SETLIST                          R4 R5 -1 [1]
       27 RETURN                           R3 2
       28 LENGTH                           R3 R0
       29 LOADN                            R4 1
       30 JUMPIFNOTLT                      R4 R3 ; [+24]
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R3 R4 K2 ["reportFailure"]
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K3 ["ErrorType"]
       38 GETTABLEKS                       R4 R5 K10 ["validateSingleInstance_MultipleInstances"]
       40 LOADNIL                          R5
       41 MOVE                             R6 R1
       42 CALL                             R3 3 0
       43 LOADB                            R3 0
       44 NEWTABLE                         R4 0 1
       46 GETIMPORT                        R5 K7 [string.format]
       48 LOADK                            R6 K11 ["Selected more than one instance of type '%s'. Please, select a single instance of this type and try again."]
       49 GETTABLEKS                       R7 R2 K9 ["Name"]
       51 CALL                             R5 2 -1
       52 SETLIST                          R4 R5 -1 [1]
       54 RETURN                           R3 2
       55 LOADB                            R3 1
       56 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K8 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
