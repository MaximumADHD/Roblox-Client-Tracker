PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["instances"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["instances required in validationContext for validatePackage"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K0 ["instances"]
       14 GETTABLEKS                       R2 R0 K4 ["restrictedUserIds"]
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R1
       18 MOVE                             R5 R0
       19 CALL                             R3 2 2
       20 JUMPIF                           R3 ; [+1]
       21 RETURN                           R3 2
       22 GETTABLEN                        R5 R1 1
       23 NEWTABLE                         R6 0 0
       25 NEWTABLE                         R7 0 0
       27 JUMPIFNOT                        R2 ; [+3]
       28 LENGTH                           R8 R2
       29 JUMPIFNOTEQKN                    R8 K5 [0] ; [+3]
       31 LOADB                            R8 1
       32 RETURN                           R8 1
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K6 ["parseWithErrorCheck"]
       36 MOVE                             R9 R6
       37 MOVE                             R10 R7
       38 MOVE                             R11 R5
       39 GETUPVAL                         R12 2
       40 GETTABLEKS                       R12 R12 K7 ["PACKAGE_CONTENT_ID_FIELDS"]
       42 LOADNIL                          R13
       43 MOVE                             R14 R0
       44 CALL                             R8 6 1
       45 JUMPIF                           R8 ; [+24]
       46 GETUPVAL                         R9 3
       47 GETTABLEKS                       R9 R9 K8 ["reportFailure"]
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R10 R10 K9 ["ErrorType"]
       52 GETTABLEKS                       R10 R10 K10 ["validatePackage_FailedToParse"]
       54 LOADNIL                          R11
       55 MOVE                             R12 R0
       56 CALL                             R9 3 0
       57 LOADB                            R9 0
       58 NEWTABLE                         R10 0 1
       60 GETIMPORT                        R11 K13 [string.format]
       62 LOADK                            R12 K14 ["Failed to parse package data for model '%s'. Make sure the packageId is valid and try again."]
       63 NAMECALL                         R13 R5 K15 ["GetFullName"]
       65 CALL                             R13 1 -1
       66 CALL                             R11 -1 -1
       67 SETLIST                          R10 R11 -1 [1]
       69 RETURN                           R9 2
       70 GETUPVAL                         R9 4
       71 MOVE                             R10 R7
       72 MOVE                             R11 R0
       73 CALL                             R9 2 -1
       74 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Analytics"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["Constants"]
       16 CALL                             R2 1 1
       17 GETIMPORT                        R3 K4 [require]
       19 GETTABLEKS                       R4 R0 K7 ["validation"]
       21 GETTABLEKS                       R4 R4 K8 ["validateSingleInstance"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K7 ["validation"]
       28 GETTABLEKS                       R5 R5 K9 ["validateAssetCreator"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K4 [require]
       33 GETTABLEKS                       R6 R0 K10 ["util"]
       35 GETTABLEKS                       R6 R6 K11 ["ParseContentIds"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K4 [require]
       40 GETTABLEKS                       R7 R0 K10 ["util"]
       42 GETTABLEKS                       R7 R7 K12 ["Types"]
       44 CALL                             R6 1 1
       45 DUPCLOSURE                       R7 K13 [PROTO_0]
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R4
       51 RETURN                           R7 1
