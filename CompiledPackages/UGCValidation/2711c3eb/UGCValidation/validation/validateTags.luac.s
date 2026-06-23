PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R0
        7 GETIMPORT                        R3 K3 [table.insert]
        9 CALL                             R3 2 0
       10 NEWTABLE                         R3 0 0
       12 GETIMPORT                        R4 K5 [ipairs]
       14 MOVE                             R5 R2
       15 CALL                             R4 1 3
       16 FORGPREP_INEXT                   R4
       17 GETUPVAL                         R10 0
       18 MOVE                             R12 R8
       19 NAMECALL                         R10 R10 K6 ["GetTags"]
       21 CALL                             R10 2 1
       22 LENGTH                           R9 R10
       23 LOADN                            R10 0
       24 JUMPIFNOTLT                      R10 R9 ; [+8]
       26 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       28 MOVE                             R10 R3
       29 MOVE                             R11 R8
       30 GETIMPORT                        R9 K3 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 2 [inext] ; [-17]
       35 LENGTH                           R4 R3
       36 LOADN                            R5 0
       37 JUMPIFNOTLT                      R5 R4 ; [+45]
       39 NEWTABLE                         R4 0 1
       41 LOADK                            R5 K7 ["Found the following instance tags which are not allowed:"]
       42 SETLIST                          R4 R5 1 [1]
       44 GETIMPORT                        R5 K5 [ipairs]
       46 MOVE                             R6 R3
       47 CALL                             R5 1 3
       48 FORGPREP_INEXT                   R5
       49 MOVE                             R11 R4
       50 NAMECALL                         R12 R9 K8 ["GetFullName"]
       52 CALL                             R12 1 -1
       53 FASTCALL                         TABLE_INSERT ; [+2]
       54 GETIMPORT                        R10 K3 [table.insert]
       56 CALL                             R10 -1 0
       57 FORGLOOP                         R5 2 [inext] ; [-9]
       59 GETUPVAL                         R5 1
       60 GETTABLEKS                       R5 R5 K9 ["reportFailure"]
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K10 ["ErrorType"]
       65 GETTABLEKS                       R6 R6 K11 ["validateTags"]
       67 LOADNIL                          R7
       68 MOVE                             R8 R1
       69 CALL                             R5 3 0
       70 GETUPVAL                         R5 2
       71 CALL                             R5 0 1
       72 JUMPIFNOT                        R5 ; [+7]
       73 GETUPVAL                         R5 3
       74 CALL                             R5 0 1
       75 JUMPIFNOT                        R5 ; [+4]
       76 LOADB                            R5 0
       77 NEWTABLE                         R6 0 0
       79 RETURN                           R5 2
       80 LOADB                            R5 0
       81 MOVE                             R6 R4
       82 RETURN                           R5 2
       83 LOADB                            R4 1
       84 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CollectionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["flags"]
       17 GETTABLEKS                       R3 R3 K10 ["getFFlagUGCValidationEnableFolderStructure"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["flags"]
       24 GETTABLEKS                       R4 R4 K11 ["getFFlagUGCValidationCombineEntrypointResults"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Analytics"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K13 ["util"]
       36 GETTABLEKS                       R6 R6 K14 ["Types"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_0]
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R3
       44 RETURN                           R6 1
