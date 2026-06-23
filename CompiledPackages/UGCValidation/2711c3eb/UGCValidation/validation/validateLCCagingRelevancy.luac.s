PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["editableMesh"]
        7 GETUPVAL                         R4 3
        8 GETTABLEKS                       R4 R4 K0 ["editableMesh"]
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
       11 GETUPVAL                         R9 2
       12 GETTABLEKS                       R9 R9 K0 ["reportFailure"]
       14 GETUPVAL                         R10 2
       15 GETTABLEKS                       R10 R10 K1 ["ErrorType"]
       17 GETTABLEKS                       R10 R10 K2 ["validateCagingRelevancy_FailedToExecute"]
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
       47 JUMPIFNOTLT                      R9 R10 ; [+27]
       49 GETUPVAL                         R10 2
       50 GETTABLEKS                       R10 R10 K0 ["reportFailure"]
       52 GETUPVAL                         R11 2
       53 GETTABLEKS                       R11 R11 K1 ["ErrorType"]
       55 GETTABLEKS                       R11 R11 K12 ["validateCagingRelevancy_IrrelevantCaging"]
       57 LOADNIL                          R12
       58 MOVE                             R13 R5
       59 CALL                             R10 3 0
       60 LOADK                            R10 K13 ["Validation detected %d%% of the outer cage edits do not cover the accessory. Make sure you are moving the outer cage only where needed."]
       61 MOVE                             R11 R10
       62 LOADK                            R12 K14 ["[Read more](https://create.roblox.com/docs/art/validation-errors#cageRelevancy)"]
       63 CONCAT                           R10 R11 R12
       64 LOADB                            R11 0
       65 NEWTABLE                         R12 0 1
       67 GETIMPORT                        R13 K5 [string.format]
       69 MOVE                             R14 R10
       70 SUBRK                            R15 R15 K9 ["math"]
       71 CALL                             R13 2 -1
       72 SETLIST                          R12 R13 -1 [1]
       74 RETURN                           R11 2
       75 LOADB                            R10 1
       76 RETURN                           R10 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["Analytics"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K8 [require]
       20 GETTABLEKS                       R4 R1 K10 ["util"]
       22 GETTABLEKS                       R4 R4 K11 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K8 [require]
       27 GETTABLEKS                       R5 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R5 K12 ["pcallDeferred"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K8 [require]
       34 GETTABLEKS                       R6 R1 K13 ["flags"]
       36 GETTABLEKS                       R6 R6 K14 ["getFIntUGCLCCagingRelevancyMinimum"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
