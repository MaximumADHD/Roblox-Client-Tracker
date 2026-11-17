PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 DUPTABLE                         R2 K4 [{["key"] = "Common.UGCValidation.ErrorLabel.FailureWithoutReason", ["params"]}]
        4 NEWTABLE                         R3 0 0
        6 SETTABLEKS                       R3 R2 K3 ["params"]
        8 MOVE                             R3 R0
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETIMPORT                        R3 K2 [string.find]
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 LOADN                            R6 1
        9 LOADB                            R7 1
       10 CALL                             R3 4 2
       11 JUMPIFEQKNIL                     R4 ; [+11]
       13 LENGTH                           R8 R2
       14 MINUS                            R7 R8
       15 FASTCALL2                        STRING_SUB R0 R7 ; [+4]
       17 MOVE                             R6 R0
       18 GETIMPORT                        R5 K4 [string.sub]
       20 CALL                             R5 2 1
       21 JUMPIFEQ                         R5 R2 ; [+4]
       23 LOADNIL                          R5
       24 LOADB                            R6 0
       25 RETURN                           R5 2
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K5 ["JSONDecode"]
       29 GETUPVAL                         R7 2
       30 ADDK                             R10 R4 K6 [1]
       31 LENGTH                           R12 R0
       32 LENGTH                           R13 R2
       33 SUB                              R11 R12 R13
       34 FASTCALL3                        STRING_SUB R0 R10 R11
       36 MOVE                             R9 R0
       37 GETIMPORT                        R8 K4 [string.sub]
       39 CALL                             R8 3 1
       40 FASTPCALL                        pcall 3 ; [+2]
       41 GETIMPORT                        R5 K8 [pcall]
       43 CALL                             R5 3 2
       44 JUMPIFNOT                        R5 ; [+7]
       45 FASTCALL1                        TYPEOF R6 ; [+3]
       46 MOVE                             R8 R6
       47 GETIMPORT                        R7 K10 [typeof]
       49 CALL                             R7 1 1
       50 JUMPIFEQKS                       R7 K11 ["table"] ; [+4]
       52 LOADNIL                          R7
       53 LOADB                            R8 1
       54 RETURN                           R7 2
       55 GETTABLEKS                       R8 R6 K12 ["validationResults"]
       57 OR                               R7 R8 R6
       58 FASTCALL1                        TYPEOF R7 ; [+3]
       59 MOVE                             R10 R7
       60 GETIMPORT                        R9 K10 [typeof]
       62 CALL                             R9 1 1
       63 JUMPIFNOTEQKS                    R9 K11 ["table"] ; [+3]
       65 MOVE                             R8 R7
       66 JUMP                             ; [+1]
       67 LOADNIL                          R8
       68 LOADB                            R9 1
       69 RETURN                           R8 2

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getValidationErrorText"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 LOADB                            R0 1
        1 NEWTABLE                         R1 0 0
        3 GETUPVAL                         R2 0
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R7 R7 K0 ["combineResultsIntoLegacy"]
       10 MOVE                             R8 R0
       11 MOVE                             R9 R1
       12 MOVE                             R10 R6
       13 NEWCLOSURE                       R11 P0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R7 4 2
       17 MOVE                             R0 R7
       18 MOVE                             R1 R8
       19 FORGLOOP                         R2 2 ; [-13]
       21 JUMPIF                           R0 ; [+5]
       22 JUMPIFEQKNIL                     R1 ; [+4]
       24 LENGTH                           R2 R1
       25 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
       27 GETUPVAL                         R2 4
       28 GETUPVAL                         R3 3
       29 CALL                             R2 1 -1
       30 RETURN                           R2 -1
       31 GETIMPORT                        R2 K4 [table.concat]
       33 MOVE                             R3 R1
       34 LOADK                            R4 K5 ["\n"]
       35 CALL                             R2 2 -1
       36 RETURN                           R2 -1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+3]
        7 LOADNIL                          R2
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R0
       11 CALL                             R2 1 2
       12 JUMPIF                           R3 ; [+2]
       13 LOADNIL                          R4
       14 RETURN                           R4 1
       15 JUMPIFNOTEQKNIL                  R2 ; [+5]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R1
       19 CALL                             R4 1 -1
       20 RETURN                           R4 -1
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U1
       27 FASTPCALL                        pcall 1 ; [+2]
       28 GETIMPORT                        R4 K4 [pcall]
       30 CALL                             R4 1 2
       31 JUMPIFNOT                        R4 ; [+4]
       32 JUMPIFEQKNIL                     R5 ; [+3]
       34 MOVE                             R6 R5
       35 RETURN                           R6 1
       36 GETUPVAL                         R6 3
       37 GETTABLEKS                       R6 R6 K5 ["getValidationErrorText"]
       39 DUPTABLE                         R7 K9 [{["key"] = "Common.UGCValidation.ErrorLabel.FailureWithoutReason", ["params"]}]
       40 NEWTABLE                         R8 0 0
       42 SETTABLEKS                       R8 R7 K8 ["params"]
       44 MOVE                             R8 R1
       45 CALL                             R6 2 1
       46 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetConfigUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["UGCValidation"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Flags"]
       29 GETTABLEKS                       R4 R4 K12 ["getFStringToolboxPublishValidationErrorPrefix"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Flags"]
       38 GETTABLEKS                       R5 R5 K13 ["getFStringToolboxPublishValidationErrorSuffix"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K15 [game]
       43 LOADK                            R7 K16 ["HttpService"]
       44 NAMECALL                         R5 R5 K17 ["GetService"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K18 [PROTO_0]
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R7 K19 [PROTO_1]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R8 K20 [PROTO_4]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 RETURN                           R8 1
