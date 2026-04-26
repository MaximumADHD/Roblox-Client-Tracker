PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["GetEditableMeshVerticesSimilarityRate"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R4 K1 [tick]
        2 CALL                             R4 0 1
        3 GETTABLEKS                       R5 R1 K2 ["isServer"]
        5 GETUPVAL                         R6 0
        6 NEWCLOSURE                       R7 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          VAL R2
       10 MOVE                             R8 R1
       11 CALL                             R6 2 2
       12 JUMPIF                           R6 ; [+35]
       13 JUMPIFEQKNIL                     R5 ; [+11]
       15 JUMPIFNOT                        R5 ; [+9]
       16 GETIMPORT                        R8 K4 [error]
       18 GETIMPORT                        R9 K7 [string.format]
       20 LOADK                            R10 K8 ["Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again."]
       21 GETTABLEKS                       R11 R0 K9 ["fullName"]
       23 CALL                             R9 2 -1
       24 CALL                             R8 -1 0
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K10 ["reportFailure"]
       28 GETUPVAL                         R11 2
       29 GETTABLEKS                       R10 R11 K11 ["ErrorType"]
       31 GETTABLEKS                       R9 R10 K12 ["validateVerticesSimilarity_FailedToExecute"]
       33 LOADNIL                          R10
       34 MOVE                             R11 R1
       35 CALL                             R8 3 0
       36 LOADB                            R8 0
       37 NEWTABLE                         R9 0 1
       39 GETIMPORT                        R10 K7 [string.format]
       41 LOADK                            R11 K8 ["Failed to execute similarity mesh vertex check for '%s'. Make sure mesh exists and try again."]
       42 GETTABLEKS                       R12 R0 K9 ["fullName"]
       44 CALL                             R10 2 -1
       45 SETLIST                          R9 R10 -1 [1]
       47 RETURN                           R8 2
       48 MULK                             R9 R7 K13 [100]
       49 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       50 GETIMPORT                        R8 K16 [math.floor]
       52 CALL                             R8 1 1
       53 MOVE                             R7 R8
       54 GETUPVAL                         R8 3
       55 CALL                             R8 0 1
       56 JUMPIFNOTLT                      R8 R7 ; [+30]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R8 R9 K10 ["reportFailure"]
       61 GETUPVAL                         R11 2
       62 GETTABLEKS                       R10 R11 K11 ["ErrorType"]
       64 GETTABLEKS                       R9 R10 K17 ["validateVerticesSimilarity_MaxSimilarityExceeded"]
       66 LOADNIL                          R10
       67 MOVE                             R11 R1
       68 CALL                             R8 3 0
       69 GETIMPORT                        R8 K7 [string.format]
       71 LOADK                            R9 K18 ["%s has %d%% of vertices too close to each other. Please edit the vertices to have at most %d%% coincident or close to one another."]
       72 MOVE                             R10 R3
       73 MOVE                             R11 R7
       74 GETUPVAL                         R12 3
       75 CALL                             R12 0 -1
       76 CALL                             R8 -1 1
       77 MOVE                             R9 R8
       78 LOADK                            R10 K19 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageDensity)"]
       79 CONCAT                           R8 R9 R10
       80 LOADB                            R9 0
       81 NEWTABLE                         R10 0 1
       83 MOVE                             R11 R8
       84 SETLIST                          R10 R11 1 [1]
       86 RETURN                           R9 2
       87 GETUPVAL                         R9 2
       88 GETTABLEKS                       R8 R9 K20 ["recordScriptTime"]
       90 GETIMPORT                        R10 K22 [script]
       92 GETTABLEKS                       R9 R10 K23 ["Name"]
       94 MOVE                             R10 R4
       95 MOVE                             R11 R1
       96 CALL                             R8 3 0
       97 LOADB                            R8 1
       98 RETURN                           R8 1

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
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R5 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R6 R1 K12 ["flags"]
       31 GETTABLEKS                       R5 R6 K13 ["getFIntUGCLCCageVerticesSimilarityMaximum"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Analytics"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R4
       44 RETURN                           R6 1
