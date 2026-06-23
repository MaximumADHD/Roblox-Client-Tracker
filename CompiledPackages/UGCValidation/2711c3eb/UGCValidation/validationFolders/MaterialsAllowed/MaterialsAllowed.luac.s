PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K1 [pairs]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["MATERIAL_WHITELIST"]
        7 CALL                             R1 1 3
        8 FORGPREP_NEXT                    R1
        9 GETTABLEKS                       R8 R4 K3 ["Name"]
       11 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       13 MOVE                             R7 R0
       14 GETIMPORT                        R6 K6 [table.insert]
       16 CALL                             R6 2 0
       17 FORGLOOP                         R1 1 ; [-9]
       19 GETIMPORT                        R1 K8 [table.concat]
       21 MOVE                             R2 R0
       22 LOADK                            R3 K9 [", "]
       23 CALL                             R1 2 -1
       24 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 NAMECALL                         R3 R2 K1 ["GetDescendants"]
        4 CALL                             R3 1 1
        5 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 GETIMPORT                        R4 K4 [table.insert]
       11 CALL                             R4 2 0
       12 LOADNIL                          R4
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 LOADK                            R12 K5 ["BasePart"]
       18 NAMECALL                         R10 R9 K6 ["IsA"]
       20 CALL                             R10 2 1
       21 JUMPIFNOT                        R10 ; [+28]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R11 R11 K7 ["MATERIAL_WHITELIST"]
       25 GETTABLEKS                       R12 R9 K8 ["Material"]
       27 GETTABLE                         R10 R11 R12
       28 JUMPIF                           R10 ; [+21]
       29 MOVE                             R10 R4
       30 JUMPIF                           R10 ; [+2]
       31 GETUPVAL                         R10 1
       32 CALL                             R10 0 1
       33 MOVE                             R4 R10
       34 GETUPVAL                         R12 2
       35 GETTABLEKS                       R12 R12 K9 ["Keys"]
       37 GETTABLEKS                       R12 R12 K10 ["MaterialNotAllowed"]
       39 DUPTABLE                         R13 K13 [{"InstanceNameList", "AllowedMaterials"}]
       40 NAMECALL                         R14 R9 K14 ["GetFullName"]
       42 CALL                             R14 1 1
       43 SETTABLEKS                       R14 R13 K11 ["InstanceNameList"]
       45 SETTABLEKS                       R4 R13 K12 ["AllowedMaterials"]
       47 NAMECALL                         R10 R0 K15 ["fail"]
       49 CALL                             R10 3 0
       50 FORGLOOP                         R5 2 ; [-34]
       52 RETURN                           R0 0

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
       84 DUPCLOSURE                       R8 K25 [PROTO_1]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 SETTABLEKS                       R8 R6 K26 ["run"]
       90 RETURN                           R6 1
