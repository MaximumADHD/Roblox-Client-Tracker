PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R2 R2 K1 ["consumerEnv"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["ConsumerEnv"]
        7 GETTABLEKS                       R3 R3 K3 ["IEC"]
        9 JUMPIFEQ                         R2 R3 ; [+7]
       11 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
       13 GETTABLEKS                       R2 R2 K4 ["source"]
       15 JUMPIFNOTEQKS                    R2 K5 ["AutoSetup"] ; [+2]
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R1 K6 ["rootInstance"]
       20 NAMECALL                         R3 R2 K7 ["GetDescendants"]
       22 CALL                             R3 1 1
       23 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
       25 MOVE                             R5 R3
       26 MOVE                             R6 R2
       27 GETIMPORT                        R4 K10 [table.insert]
       29 CALL                             R4 2 0
       30 MOVE                             R4 R3
       31 LOADNIL                          R5
       32 LOADNIL                          R6
       33 FORGPREP                         R4
       34 LOADK                            R11 K11 ["BaseWrap"]
       35 NAMECALL                         R9 R8 K12 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+18]
       39 NAMECALL                         R9 R8 K13 ["IsHSRReady"]
       41 CALL                             R9 1 1
       42 JUMPIF                           R9 ; [+14]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K14 ["Keys"]
       46 GETTABLEKS                       R11 R11 K15 ["HSRDataNotReady"]
       48 DUPTABLE                         R12 K17 [{"InstancePath"}]
       49 NAMECALL                         R13 R8 K18 ["GetFullName"]
       51 CALL                             R13 1 1
       52 SETTABLEKS                       R13 R12 K16 ["InstancePath"]
       54 NAMECALL                         R9 R0 K19 ["fail"]
       56 CALL                             R9 3 0
       57 FORGLOOP                         R4 2 ; [-24]
       59 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R3 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R4 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateSchemaProperties"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 8 0
       39 NEWTABLE                         R6 0 3
       41 GETTABLEKS                       R7 R2 K12 ["UploadCategory"]
       43 GETTABLEKS                       R7 R7 K13 ["TORSO_AND_LIMBS"]
       45 GETTABLEKS                       R8 R2 K12 ["UploadCategory"]
       47 GETTABLEKS                       R8 R8 K14 ["DYNAMIC_HEAD"]
       49 GETTABLEKS                       R9 R2 K12 ["UploadCategory"]
       51 GETTABLEKS                       R9 R9 K15 ["LAYERED_CLOTHING"]
       53 SETLIST                          R6 R7 3 [1]
       55 SETTABLEKS                       R6 R5 K16 ["categories"]
       57 NEWTABLE                         R6 0 1
       59 GETTABLEKS                       R7 R2 K17 ["SharedDataMember"]
       61 GETTABLEKS                       R7 R7 K18 ["rootInstance"]
       63 SETLIST                          R6 R7 1 [1]
       65 SETTABLEKS                       R6 R5 K19 ["requiredData"]
       67 SETTABLEKS                       R4 R5 K20 ["fflag"]
       69 NEWTABLE                         R6 0 0
       71 SETTABLEKS                       R6 R5 K21 ["expectedFailures"]
       73 DUPCLOSURE                       R6 K22 [PROTO_0]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R6 R5 K23 ["run"]
       78 RETURN                           R5 1
