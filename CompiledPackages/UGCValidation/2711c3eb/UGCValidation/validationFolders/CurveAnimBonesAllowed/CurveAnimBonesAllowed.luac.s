PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONDecode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [string.format]
        2 LOADK                            R1 K3 ["https://itemconfiguration.%s/v1/permissions/action-allowed-for-item-type?trustedCreatorCheck=true&action=1&assetType=61"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K4 ["getBaseDomain"]
        6 CALL                             R2 0 -1
        7 CALL                             R0 -1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K5 ["requestAndRetryGet"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 2
       13 JUMPIF                           R1 ; [+9]
       14 LOADB                            R3 0
       15 LOADK                            R5 K6 ["Failed to check trusted creator permission: "]
       16 FASTCALL1                        TOSTRING R2 ; [+3]
       17 MOVE                             R7 R2
       18 GETIMPORT                        R6 K8 [tostring]
       20 CALL                             R6 1 1
       21 CONCAT                           R4 R5 R6
       22 RETURN                           R3 2
       23 GETIMPORT                        R3 K10 [pcall]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R2
       28 CALL                             R3 1 2
       29 JUMPIF                           R3 ; [+3]
       30 LOADB                            R5 0
       31 LOADK                            R6 K11 ["Failed to decode permission response"]
       32 RETURN                           R5 2
       33 GETTABLEKS                       R6 R4 K12 ["isActionAllowed"]
       35 JUMPIFEQKB                       R6 TRUE ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 LOADNIL                          R6
       40 RETURN                           R5 2

PROTO_2:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
        6 GETTABLEKS                       R2 R2 K1 ["consumerEnv"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["ConsumerEnv"]
       11 GETTABLEKS                       R3 R3 K3 ["IEC"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+10]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K4 ["Keys"]
       18 GETTABLEKS                       R5 R5 K5 ["CurveAnim_BonesNotAllowed"]
       20 NAMECALL                         R3 R0 K6 ["fail"]
       22 CALL                             R3 2 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K2 ["ConsumerEnv"]
       27 GETTABLEKS                       R3 R3 K7 ["Backend"]
       29 JUMPIFNOTEQ                      R2 R3 ; [+17]
       31 GETTABLEKS                       R3 R1 K0 ["consumerConfig"]
       33 GETTABLEKS                       R3 R3 K8 ["backendConfigs"]
       35 GETTABLEKS                       R3 R3 K9 ["isUserInTrustedCreatorProgram"]
       37 JUMPIF                           R3 ; [+8]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K4 ["Keys"]
       41 GETTABLEKS                       R6 R6 K5 ["CurveAnim_BonesNotAllowed"]
       43 NAMECALL                         R4 R0 K6 ["fail"]
       45 CALL                             R4 2 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R3 3
       48 CALL                             R3 0 2
       49 JUMPIFNOT                        R4 ; [+4]
       50 MOVE                             R7 R4
       51 NAMECALL                         R5 R0 K10 ["forceError"]
       53 CALL                             R5 2 0
       54 JUMPIF                           R3 ; [+8]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R7 R7 K4 ["Keys"]
       58 GETTABLEKS                       R7 R7 K5 ["CurveAnim_BonesNotAllowed"]
       60 NAMECALL                         R5 R0 K6 ["fail"]
       62 CALL                             R5 2 0
       63 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [game]
       11 LOADK                            R3 K5 ["HttpService"]
       12 NAMECALL                         R1 R1 K6 ["GetService"]
       14 CALL                             R1 2 1
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R0 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R0 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R0 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R0 K9 ["util"]
       40 GETTABLEKS                       R6 R6 K14 ["APIUtil"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R0 K15 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateEmotesBonesAllowed"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R0 K15 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagUGCValidateEmotesBoneUserVerification"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 NEWTABLE                         R9 0 1
       61 GETTABLEKS                       R10 R3 K18 ["UploadCategory"]
       63 GETTABLEKS                       R10 R10 K19 ["EMOTE_ANIMATION"]
       65 SETLIST                          R9 R10 1 [1]
       67 SETTABLEKS                       R9 R8 K20 ["categories"]
       69 NEWTABLE                         R9 0 1
       71 GETTABLEKS                       R10 R3 K21 ["SharedDataMember"]
       73 GETTABLEKS                       R10 R10 K22 ["consumerConfig"]
       75 SETLIST                          R9 R10 1 [1]
       77 SETTABLEKS                       R9 R8 K23 ["requiredData"]
       79 NEWTABLE                         R9 0 1
       81 GETTABLEKS                       R10 R3 K21 ["SharedDataMember"]
       83 GETTABLEKS                       R10 R10 K24 ["curveAnimBoneData"]
       85 SETLIST                          R9 R10 1 [1]
       87 SETTABLEKS                       R9 R8 K25 ["conditionalData"]
       89 SETTABLEKS                       R6 R8 K26 ["fflag"]
       91 NEWTABLE                         R9 0 0
       93 SETTABLEKS                       R9 R8 K27 ["expectedFailures"]
       95 NEWTABLE                         R9 0 1
       97 GETTABLEKS                       R10 R3 K28 ["ValidationModule"]
       99 GETTABLEKS                       R10 R10 K29 ["CurveAnimDataAvailable"]
      101 SETLIST                          R9 R10 1 [1]
      103 SETTABLEKS                       R9 R8 K30 ["prereqTests"]
      105 DUPCLOSURE                       R9 K31 [PROTO_1]
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R1
      108 DUPCLOSURE                       R10 K32 [PROTO_2]
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R9
      113 SETTABLEKS                       R10 R8 K33 ["run"]
      115 RETURN                           R8 1
