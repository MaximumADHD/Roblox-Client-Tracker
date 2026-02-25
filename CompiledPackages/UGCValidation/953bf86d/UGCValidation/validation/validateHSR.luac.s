PROTO_0:
        0 GETIMPORT                        R2 K1 [tick]
        2 CALL                             R2 0 1
        3 GETTABLEKS                       R3 R1 K2 ["bypassFlags"]
        5 JUMPIFNOT                        R3 ; [+7]
        6 GETTABLEKS                       R4 R1 K2 ["bypassFlags"]
        8 GETTABLEKS                       R3 R4 K3 ["skipValidateHSR"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADB                            R3 1
       12 RETURN                           R3 1
       13 NAMECALL                         R3 R0 K4 ["GetDescendants"]
       15 CALL                             R3 1 1
       16 FASTCALL2                        TABLE_INSERT R3 R0 ; [+5]
       18 MOVE                             R5 R3
       19 MOVE                             R6 R0
       20 GETIMPORT                        R4 K7 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K8 ["new"]
       26 CALL                             R4 0 1
       27 MOVE                             R5 R3
       28 LOADNIL                          R6
       29 LOADNIL                          R7
       30 FORGPREP                         R5
       31 LOADK                            R12 K9 ["BaseWrap"]
       32 NAMECALL                         R10 R9 K10 ["IsA"]
       34 CALL                             R10 2 1
       35 JUMPIFNOT                        R10 ; [+31]
       36 NAMECALL                         R10 R9 K11 ["IsHSRReady"]
       38 CALL                             R10 1 1
       39 JUMPIF                           R10 ; [+27]
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R10 R11 K12 ["reportFailure"]
       43 GETUPVAL                         R13 1
       44 GETTABLEKS                       R12 R13 K13 ["ErrorType"]
       46 GETTABLEKS                       R11 R12 K14 ["validateHSR_HSRDataNotReady"]
       48 LOADNIL                          R12
       49 MOVE                             R13 R1
       50 CALL                             R10 3 0
       51 LOADB                            R12 0
       52 NEWTABLE                         R13 0 1
       54 LOADK                            R15 K15 ["Missing HSR data for %*. Please, try again."]
       55 NAMECALL                         R17 R9 K16 ["GetFullName"]
       57 CALL                             R17 1 1
       58 NAMECALL                         R15 R15 K17 ["format"]
       60 CALL                             R15 2 1
       61 MOVE                             R14 R15
       62 SETLIST                          R13 R14 1 [1]
       64 NAMECALL                         R10 R4 K18 ["updateReasons"]
       66 CALL                             R10 3 0
       67 FORGLOOP                         R5 2 ; [-37]
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R5 R6 K19 ["recordScriptTime"]
       72 GETIMPORT                        R7 K21 [script]
       74 GETTABLEKS                       R6 R7 K22 ["Name"]
       76 MOVE                             R7 R2
       77 MOVE                             R8 R1
       78 CALL                             R5 3 0
       79 NAMECALL                         R5 R4 K23 ["getFinalResults"]
       81 CALL                             R5 1 -1
       82 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R4 K7 ["FailureReasonsAccumulator"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K9 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
