PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["editableMesh"]
        7 GETUPVAL                         R5 3
        8 GETTABLEKS                       R4 R5 K0 ["editableMesh"]
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R6 5
       12 NAMECALL                         R0 R0 K1 ["GetEditableCagingRelevancyMetrics"]
       14 CALL                             R0 6 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 NEWCLOSURE                       R7 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CAPTURE                          VAL R4
        8 MOVE                             R8 R5
        9 CALL                             R6 2 3
       10 JUMPIF                           R6 ; [+23]
       11 GETUPVAL                         R10 2
       12 GETTABLEKS                       R9 R10 K0 ["reportFailure"]
       14 GETUPVAL                         R12 2
       15 GETTABLEKS                       R11 R12 K1 ["ErrorType"]
       17 GETTABLEKS                       R10 R11 K2 ["validateCagingRelevancy_FailedToExecute"]
       19 LOADNIL                          R11
       20 MOVE                             R12 R5
       21 CALL                             R9 3 0
       22 LOADB                            R9 0
       23 NEWTABLE                         R10 0 1
       25 GETIMPORT                        R11 K5 [string.format]
       27 LOADK                            R12 K6 ["Failed to execute cage relevancy detection for '%s'. Make sure the cage mesh exists and try again."]
       28 GETTABLEKS                       R13 R2 K7 ["fullName"]
       30 CALL                             R11 2 -1
       31 SETLIST                          R10 R11 -1 [1]
       33 RETURN                           R9 2
       34 JUMPIFNOTEQKN                    R8 K8 [0] ; [+3]
       36 LOADB                            R9 1
       37 RETURN                           R9 1
       38 LOADN                            R12 100
       39 MUL                              R11 R12 R7
       40 DIV                              R10 R11 R8
       41 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       42 GETIMPORT                        R9 K11 [math.floor]
       44 CALL                             R9 1 1
       45 GETUPVAL                         R10 3
       46 CALL                             R10 0 1
       47 JUMPIFNOTLT                      R9 R10 ; [+30]
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R10 R11 K0 ["reportFailure"]
       52 GETUPVAL                         R13 2
       53 GETTABLEKS                       R12 R13 K1 ["ErrorType"]
       55 GETTABLEKS                       R11 R12 K12 ["validateCagingRelevancy_IrrelevantCaging"]
       57 LOADNIL                          R12
       58 MOVE                             R13 R5
       59 CALL                             R10 3 0
       60 LOADK                            R10 K13 ["Validation detected %d%% of the outer cage edits do not cover the accessory. Make sure you are moving the outer cage only where needed."]
       61 GETUPVAL                         R11 4
       62 CALL                             R11 0 1
       63 JUMPIFNOT                        R11 ; [+3]
       64 MOVE                             R11 R10
       65 LOADK                            R12 K14 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageRelevancy)"]
       66 CONCAT                           R10 R11 R12
       67 LOADB                            R11 0
       68 NEWTABLE                         R12 0 1
       70 GETIMPORT                        R13 K5 [string.format]
       72 MOVE                             R14 R10
       73 SUBRK                            R15 R15 K9 ["math"]
       74 CALL                             R13 2 -1
       75 SETLIST                          R12 R13 -1 [1]
       77 RETURN                           R11 2
       78 LOADB                            R10 1
       79 RETURN                           R10 1

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
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R6 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R6 K12 ["pcallDeferred"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R7 R1 K13 ["flags"]
       36 GETTABLEKS                       R6 R7 K14 ["getFIntUGCLCCagingRelevancyMinimum"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K8 [require]
       41 GETTABLEKS                       R8 R1 K13 ["flags"]
       43 GETTABLEKS                       R7 R8 K15 ["getFFlagUGCValidationHyperlinksInCageQuality"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K16 [PROTO_1]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R6
       52 RETURN                           R7 1
