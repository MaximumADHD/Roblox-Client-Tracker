PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 NAMECALL                         R3 R2 K1 ["GetDescendants"]
        4 CALL                             R3 1 1
        5 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 GETIMPORT                        R4 K4 [table.insert]
       11 CALL                             R4 2 0
       12 MOVE                             R4 R3
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 LOADK                            R11 K5 ["StringValue"]
       17 NAMECALL                         R9 R8 K6 ["IsA"]
       19 CALL                             R9 2 1
       20 JUMPIFNOT                        R9 ; [+32]
       21 GETTABLEKS                       R9 R8 K7 ["Name"]
       23 JUMPIFNOTEQKS                    R9 K8 ["AvatarPartScaleType"] ; [+29]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R10 R10 K9 ["AvatarPartScaleTypes"]
       28 GETTABLEKS                       R11 R8 K10 ["Value"]
       30 GETTABLE                         R9 R10 R11
       31 JUMPIF                           R9 ; [+21]
       32 GETUPVAL                         R11 1
       33 GETTABLEKS                       R11 R11 K11 ["Keys"]
       35 GETTABLEKS                       R11 R11 K12 ["ScaleTypeInvalid"]
       37 DUPTABLE                         R12 K14 [{"ParentName"}]
       38 GETTABLEKS                       R14 R8 K15 ["Parent"]
       40 JUMPIFNOT                        R14 ; [+5]
       41 GETTABLEKS                       R13 R8 K15 ["Parent"]
       43 GETTABLEKS                       R13 R13 K7 ["Name"]
       45 JUMP                             ; [+2]
       46 GETTABLEKS                       R13 R8 K7 ["Name"]
       48 SETTABLEKS                       R13 R12 K13 ["ParentName"]
       50 NAMECALL                         R9 R0 K16 ["fail"]
       52 CALL                             R9 3 0
       53 FORGLOOP                         R4 2 ; [-38]
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateSchemaProperties"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 NEWTABLE                         R7 0 4
       46 GETTABLEKS                       R8 R3 K13 ["UploadCategory"]
       48 GETTABLEKS                       R8 R8 K14 ["TORSO_AND_LIMBS"]
       50 GETTABLEKS                       R9 R3 K13 ["UploadCategory"]
       52 GETTABLEKS                       R9 R9 K15 ["DYNAMIC_HEAD"]
       54 GETTABLEKS                       R10 R3 K13 ["UploadCategory"]
       56 GETTABLEKS                       R10 R10 K16 ["LAYERED_CLOTHING"]
       58 GETTABLEKS                       R11 R3 K13 ["UploadCategory"]
       60 GETTABLEKS                       R11 R11 K17 ["RIGID_ACCESSORY"]
       62 SETLIST                          R7 R8 4 [1]
       64 SETTABLEKS                       R7 R6 K18 ["categories"]
       66 NEWTABLE                         R7 0 1
       68 GETTABLEKS                       R8 R3 K19 ["SharedDataMember"]
       70 GETTABLEKS                       R8 R8 K20 ["rootInstance"]
       72 SETLIST                          R7 R8 1 [1]
       74 SETTABLEKS                       R7 R6 K21 ["requiredData"]
       76 SETTABLEKS                       R5 R6 K22 ["fflag"]
       78 NEWTABLE                         R7 0 0
       80 SETTABLEKS                       R7 R6 K23 ["expectedFailures"]
       82 DUPCLOSURE                       R7 K24 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R7 R6 K25 ["run"]
       87 RETURN                           R6 1
