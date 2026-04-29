PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["getJointNameWhitelist"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R4 R1 K2 ["renderMeshesData"]
        6 GETTABLEKS                       R3 R4 K1 ["Head"]
        8 NEWTABLE                         R4 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R7 R3 K3 ["editable"]
       13 NAMECALL                         R5 R5 K4 ["GetFacsDrivenJointNamesFromEditableMesh"]
       15 CALL                             R5 2 -1
       16 SETLIST                          R4 R5 -1 [1]
       18 MOVE                             R5 R4
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 GETTABLE                         R10 R2 R9
       23 JUMPIF                           R10 ; [+5]
       24 GETUPVAL                         R12 2
       25 GETTABLEKS                       R11 R12 K5 ["ALLOWED_SKINNING_TRANSFER_JOINT_NAMES"]
       27 GETTABLE                         R10 R11 R9
       28 JUMPIFNOT                        R10 ; [+11]
       29 GETUPVAL                         R14 3
       30 GETTABLEKS                       R13 R14 K6 ["Keys"]
       32 GETTABLEKS                       R12 R13 K7 ["UnallowedFacsJoints"]
       34 DUPTABLE                         R13 K9 [{"jointName"}]
       35 SETTABLEKS                       R9 R13 K8 ["jointName"]
       37 NAMECALL                         R10 R0 K10 ["fail"]
       39 CALL                             R10 3 0
       40 FORGLOOP                         R5 2 ; [-19]
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R4 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R5 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["util"]
       33 GETTABLEKS                       R5 R6 K13 ["R15plusUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R7 R1 K11 ["validationSystem"]
       40 GETTABLEKS                       R6 R7 K14 ["ErrorSourceStrings"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K15 ["Constants"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 GETIMPORT                        R8 K8 [require]
       52 GETTABLEKS                       R10 R1 K16 ["flags"]
       54 GETTABLEKS                       R9 R10 K17 ["getFFlagUGCValidationEnableR15plusSkinning"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K18 ["fflag"]
       59 NEWTABLE                         R8 0 1
       61 GETTABLEKS                       R10 R3 K19 ["UploadCategory"]
       63 GETTABLEKS                       R9 R10 K20 ["DYNAMIC_HEAD"]
       65 SETLIST                          R8 R9 1 [1]
       67 SETTABLEKS                       R8 R7 K21 ["categories"]
       69 NEWTABLE                         R8 0 1
       71 GETTABLEKS                       R10 R3 K22 ["SharedDataMember"]
       73 GETTABLEKS                       R9 R10 K23 ["renderMeshesData"]
       75 SETLIST                          R8 R9 1 [1]
       77 SETTABLEKS                       R8 R7 K24 ["requiredData"]
       79 DUPCLOSURE                       R8 K25 [PROTO_0]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R8 R7 K26 ["run"]
       86 RETURN                           R7 1
