PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R9 R6 K2 ["instance"]
        8 GETTABLEKS                       R10 R6 K3 ["fieldName"]
       10 GETTABLE                         R8 R9 R10
       11 MOVE                             R9 R1
       12 CALL                             R7 2 1
       13 JUMPIF                           R7 ; [+11]
       14 GETIMPORT                        R7 K5 [error]
       16 GETIMPORT                        R8 K8 [string.format]
       18 LOADK                            R9 K9 ["Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again."]
       19 GETTABLEKS                       R10 R6 K2 ["instance"]
       21 GETTABLEKS                       R10 R10 K10 ["Name"]
       23 CALL                             R8 2 -1
       24 CALL                             R7 -1 0
       25 FORGLOOP                         R2 2 ; [-21]
       27 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TONUMBER R1 ; [+3]
        1 MOVE                             R8 R1
        2 GETIMPORT                        R7 K1 [tonumber]
        4 CALL                             R7 1 1
        5 GETTABLE                         R6 R0 R7
        6 JUMPIF                           R6 ; [+27]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["reportFailure"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["ErrorType"]
       13 GETTABLEKS                       R7 R7 K4 ["validateDependencies_IsRestrictedUserId"]
       15 LOADNIL                          R8
       16 MOVE                             R9 R5
       17 CALL                             R6 3 0
       18 LOADB                            R6 0
       19 NEWTABLE                         R7 0 1
       21 LOADK                            R9 K5 ["%*.%* ( %* ) is not owned by the current user. You can only validate assets that you or a group you belong to owns."]
       22 NAMECALL                         R11 R2 K6 ["GetFullName"]
       24 CALL                             R11 1 1
       25 MOVE                             R12 R3
       26 MOVE                             R13 R4
       27 NAMECALL                         R9 R9 K7 ["format"]
       29 CALL                             R9 4 1
       30 MOVE                             R8 R9
       31 SETLIST                          R7 R8 1 [1]
       33 RETURN                           R6 2
       34 LOADB                            R6 1
       35 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R6 R6 K0 ["MODERATION_STATE_REVIEWING"]
        3 GETTABLE                         R5 R6 R0
        4 JUMPIFNOT                        R5 ; [+15]
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R6 R6 K1 ["reportFailure"]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K2 ["ErrorType"]
       11 GETTABLEKS                       R7 R7 K3 ["validateDependencies_IsReviewing"]
       13 LOADNIL                          R8
       14 MOVE                             R9 R4
       15 CALL                             R6 3 0
       16 GETIMPORT                        R6 K5 [error]
       18 LOADK                            R7 K6 ["Failed to load asset {instance:GetFullName()}.{fieldName} ( {id} ) that is still going through the review process. Please, wait for a notification of completion from the review process and try again."]
       19 CALL                             R6 1 0
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K7 ["MODERATION_STATE_APPROVED"]
       23 GETTABLE                         R6 R7 R0
       24 JUMPIF                           R6 ; [+27]
       25 GETUPVAL                         R7 1
       26 GETTABLEKS                       R7 R7 K1 ["reportFailure"]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K2 ["ErrorType"]
       31 GETTABLEKS                       R8 R8 K8 ["validateDependencies_IsNotApproved"]
       33 LOADNIL                          R9
       34 MOVE                             R10 R4
       35 CALL                             R7 3 0
       36 LOADB                            R7 0
       37 NEWTABLE                         R8 0 1
       39 LOADK                            R10 K9 ["%*.%* ( %* ) is not owned by the current user. You can only validate assets that you or a group you belong to owns."]
       40 NAMECALL                         R12 R1 K10 ["GetFullName"]
       42 CALL                             R12 1 1
       43 MOVE                             R13 R2
       44 MOVE                             R14 R3
       45 NAMECALL                         R10 R10 K11 ["format"]
       47 CALL                             R10 4 1
       48 MOVE                             R9 R10
       49 SETLIST                          R8 R9 1 [1]
       51 RETURN                           R7 2
       52 LOADB                            R7 1
       53 RETURN                           R7 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+3]
        1 LENGTH                           R3 R0
        2 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        4 LOADB                            R3 1
        5 RETURN                           R3 1
        6 NEWTABLE                         R3 0 0
        8 GETIMPORT                        R4 K2 [ipairs]
       10 MOVE                             R5 R0
       11 CALL                             R4 1 3
       12 FORGPREP_INEXT                   R4
       13 GETTABLEKS                       R10 R8 K3 ["id"]
       15 FASTCALL1                        TONUMBER R10 ; [+2]
       16 GETIMPORT                        R9 K5 [tonumber]
       18 CALL                             R9 1 1
       19 LOADB                            R10 1
       20 SETTABLE                         R10 R3 R9
       21 FORGLOOP                         R4 2 [inext] ; [-9]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["new"]
       26 CALL                             R4 0 1
       27 GETIMPORT                        R5 K8 [pairs]
       29 MOVE                             R6 R1
       30 CALL                             R5 1 3
       31 FORGPREP_NEXT                    R5
       32 GETUPVAL                         R10 1
       33 MOVE                             R11 R8
       34 CALL                             R10 1 2
       35 JUMPIF                           R10 ; [+4]
       36 GETIMPORT                        R12 K10 [error]
       38 LOADK                            R13 K11 ["Failed to load asset"]
       39 CALL                             R12 1 0
       40 GETTABLEKS                       R12 R11 K12 ["creationContext"]
       42 GETTABLEKS                       R12 R12 K13 ["creator"]
       44 GETTABLEKS                       R14 R12 K14 ["userId"]
       46 JUMPIFNOT                        R14 ; [+3]
       47 GETTABLEKS                       R13 R12 K14 ["userId"]
       49 JUMP                             ; [+2]
       50 GETTABLEKS                       R13 R12 K15 ["groupId"]
       52 GETUPVAL                         R16 2
       53 MOVE                             R17 R3
       54 MOVE                             R18 R13
       55 GETTABLEKS                       R19 R9 K16 ["instance"]
       57 GETTABLEKS                       R20 R9 K17 ["fieldName"]
       59 MOVE                             R21 R8
       60 MOVE                             R22 R2
       61 CALL                             R16 6 -1
       62 NAMECALL                         R14 R4 K18 ["updateReasons"]
       64 CALL                             R14 -1 0
       65 GETUPVAL                         R16 3
       66 GETTABLEKS                       R17 R11 K19 ["moderationResult"]
       68 GETTABLEKS                       R17 R17 K20 ["moderationState"]
       70 GETTABLEKS                       R18 R9 K16 ["instance"]
       72 GETTABLEKS                       R19 R9 K17 ["fieldName"]
       74 MOVE                             R20 R8
       75 MOVE                             R21 R2
       76 CALL                             R16 5 -1
       77 NAMECALL                         R14 R4 K18 ["updateReasons"]
       79 CALL                             R14 -1 0
       80 FORGLOOP                         R5 2 ; [-49]
       82 NAMECALL                         R5 R4 K21 ["getFinalResults"]
       84 CALL                             R5 1 -1
       85 RETURN                           R5 -1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["isServer"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["isServer must be true for validateAssetCreatorsRCC"]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 MOVE                             R3 R0
       10 MOVE                             R4 R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_5:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 JUMPIFNOT                        R1 ; [+3]
        4 GETTABLEKS                       R4 R1 K2 ["isServer"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R4
        8 GETTABLEKS                       R5 R1 K3 ["allowEditableInstances"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R6 R1 K4 ["restrictedUserIds"]
       13 JUMP                             ; [+1]
       14 LOADNIL                          R6
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETTABLEKS                       R7 R1 K5 ["universeId"]
       18 JUMP                             ; [+1]
       19 LOADNIL                          R7
       20 JUMPIFNOT                        R2 ; [+3]
       21 GETTABLEKS                       R8 R2 K6 ["skipExistenceCheck"]
       23 JUMPIF                           R8 ; [+1]
       24 LOADB                            R8 0
       25 JUMPIFNOT                        R2 ; [+3]
       26 GETTABLEKS                       R9 R2 K7 ["skipOwnershipCheck"]
       28 JUMPIF                           R9 ; [+1]
       29 LOADB                            R9 0
       30 JUMPIFNOT                        R8 ; [+3]
       31 JUMPIFNOT                        R9 ; [+2]
       32 LOADB                            R10 1
       33 RETURN                           R10 1
       34 NEWTABLE                         R10 0 0
       36 NEWTABLE                         R11 0 0
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K8 ["parseWithErrorCheck"]
       41 MOVE                             R13 R11
       42 MOVE                             R14 R10
       43 MOVE                             R15 R0
       44 LOADNIL                          R16
       45 GETUPVAL                         R17 1
       46 GETTABLEKS                       R17 R17 K9 ["CONTENT_ID_REQUIRED_FIELDS"]
       48 MOVE                             R18 R1
       49 CALL                             R12 6 2
       50 JUMPIF                           R12 ; [+14]
       51 GETUPVAL                         R14 2
       52 GETTABLEKS                       R14 R14 K10 ["reportFailure"]
       54 GETUPVAL                         R15 2
       55 GETTABLEKS                       R15 R15 K11 ["ErrorType"]
       57 GETTABLEKS                       R15 R15 K12 ["validateDependencies_ParseFailure"]
       59 LOADNIL                          R16
       60 MOVE                             R17 R1
       61 CALL                             R14 3 0
       62 LOADB                            R14 0
       63 MOVE                             R15 R13
       64 RETURN                           R14 2
       65 JUMPIFNOT                        R4 ; [+6]
       66 JUMPIF                           R5 ; [+5]
       67 JUMPIF                           R8 ; [+4]
       68 GETUPVAL                         R14 3
       69 MOVE                             R15 R10
       70 MOVE                             R16 R1
       71 CALL                             R14 2 0
       72 GETUPVAL                         R14 4
       73 GETTABLEKS                       R14 R14 K13 ["new"]
       75 CALL                             R14 0 1
       76 JUMPIF                           R9 ; [+27]
       77 GETUPVAL                         R15 5
       78 JUMPIFNOT                        R15 ; [+7]
       79 GETUPVAL                         R15 5
       80 JUMPIFNOT                        R15 ; [+23]
       81 GETUPVAL                         R15 6
       82 NAMECALL                         R15 R15 K14 ["IsStudio"]
       84 CALL                             R15 1 1
       85 JUMPIF                           R15 ; [+18]
       86 JUMPIFNOT                        R4 ; [+17]
       87 JUMPIFNOT                        R7 ; [+8]
       88 GETUPVAL                         R17 7
       89 MOVE                             R18 R10
       90 MOVE                             R19 R1
       91 CALL                             R17 2 -1
       92 NAMECALL                         R15 R14 K15 ["updateReasons"]
       94 CALL                             R15 -1 0
       95 JUMP                             ; [+8]
       96 GETUPVAL                         R17 8
       97 MOVE                             R18 R6
       98 MOVE                             R19 R10
       99 MOVE                             R20 R1
      100 CALL                             R17 3 -1
      101 NAMECALL                         R15 R14 K15 ["updateReasons"]
      103 CALL                             R15 -1 0
      104 JUMPIFNOT                        R1 ; [+10]
      105 GETUPVAL                         R15 2
      106 GETTABLEKS                       R15 R15 K16 ["recordScriptTime"]
      108 GETIMPORT                        R16 K18 [script]
      110 GETTABLEKS                       R16 R16 K19 ["Name"]
      112 MOVE                             R17 R3
      113 MOVE                             R18 R1
      114 CALL                             R15 3 0
      115 NAMECALL                         R15 R14 K20 ["getFinalResults"]
      117 CALL                             R15 1 -1
      118 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["RunService"]
       10 NAMECALL                         R1 R1 K6 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K4 [game]
       15 LOADK                            R4 K7 ["NoStudioOwnershipCheck"]
       16 LOADB                            R5 0
       17 NAMECALL                         R2 R2 K8 ["DefineFastFlag"]
       19 CALL                             R2 3 1
       20 GETIMPORT                        R3 K10 [require]
       22 GETTABLEKS                       R4 R0 K11 ["Analytics"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K10 [require]
       27 GETTABLEKS                       R5 R0 K12 ["Constants"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K10 [require]
       32 GETTABLEKS                       R6 R0 K13 ["util"]
       34 GETTABLEKS                       R6 R6 K14 ["ParseContentIds"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K10 [require]
       39 GETTABLEKS                       R7 R0 K13 ["util"]
       41 GETTABLEKS                       R7 R7 K15 ["FailureReasonsAccumulator"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K10 [require]
       46 GETTABLEKS                       R8 R0 K13 ["util"]
       48 GETTABLEKS                       R8 R8 K16 ["getAssetCreationDetailsRCC"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K10 [require]
       53 GETTABLEKS                       R9 R0 K13 ["util"]
       55 GETTABLEKS                       R9 R9 K17 ["Types"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K10 [require]
       60 GETTABLEKS                       R10 R0 K18 ["validation"]
       62 GETTABLEKS                       R10 R10 K19 ["validateCanLoad"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K10 [require]
       67 GETTABLEKS                       R11 R0 K18 ["validation"]
       69 GETTABLEKS                       R11 R11 K20 ["validateAssetCreator"]
       71 CALL                             R10 1 1
       72 DUPCLOSURE                       R11 K21 [PROTO_0]
       73 CAPTURE                          VAL R9
       74 DUPTABLE                         R12 K24 [{"MODERATION_STATE_REVIEWING", "MODERATION_STATE_APPROVED"}]
       75 NEWTABLE                         R13 2 0
       77 LOADB                            R14 1
       78 SETTABLEKS                       R14 R13 K22 ["MODERATION_STATE_REVIEWING"]
       80 LOADB                            R14 1
       81 SETTABLEKS                       R14 R13 K25 ["Reviewing"]
       83 SETTABLEKS                       R13 R12 K22 ["MODERATION_STATE_REVIEWING"]
       85 NEWTABLE                         R13 2 0
       87 LOADB                            R14 1
       88 SETTABLEKS                       R14 R13 K23 ["MODERATION_STATE_APPROVED"]
       90 LOADB                            R14 1
       91 SETTABLEKS                       R14 R13 K26 ["Approved"]
       93 SETTABLEKS                       R13 R12 K23 ["MODERATION_STATE_APPROVED"]
       95 DUPCLOSURE                       R13 K27 [PROTO_1]
       96 CAPTURE                          VAL R3
       97 DUPCLOSURE                       R14 K28 [PROTO_2]
       98 CAPTURE                          VAL R12
       99 CAPTURE                          VAL R3
      100 DUPCLOSURE                       R15 K29 [PROTO_3]
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R13
      104 CAPTURE                          VAL R14
      105 DUPCLOSURE                       R16 K30 [PROTO_4]
      106 CAPTURE                          VAL R10
      107 DUPCLOSURE                       R17 K31 [PROTO_5]
      108 CAPTURE                          VAL R5
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R15
      117 RETURN                           R17 1
