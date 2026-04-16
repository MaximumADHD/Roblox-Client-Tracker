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
       23 JUMPIFNOT                        R10 ; [+11]
       24 GETUPVAL                         R14 2
       25 GETTABLEKS                       R13 R14 K5 ["Keys"]
       27 GETTABLEKS                       R12 R13 K6 ["UnallowedFacsJoints"]
       29 DUPTABLE                         R13 K8 [{"jointName"}]
       30 SETTABLEKS                       R9 R13 K7 ["jointName"]
       32 NAMECALL                         R10 R0 K9 ["fail"]
       34 CALL                             R10 3 0
       35 FORGLOOP                         R5 2 ; [-14]
       37 RETURN                           R0 0

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
       43 NEWTABLE                         R6 4 0
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R9 R1 K15 ["flags"]
       49 GETTABLEKS                       R8 R9 K16 ["getFFlagUGCValidationEnableR15plusSkinning"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K17 ["fflag"]
       54 NEWTABLE                         R7 0 1
       56 GETTABLEKS                       R9 R3 K18 ["UploadCategory"]
       58 GETTABLEKS                       R8 R9 K19 ["DYNAMIC_HEAD"]
       60 SETLIST                          R7 R8 1 [1]
       62 SETTABLEKS                       R7 R6 K20 ["categories"]
       64 NEWTABLE                         R7 0 1
       66 GETTABLEKS                       R9 R3 K21 ["SharedDataMember"]
       68 GETTABLEKS                       R8 R9 K22 ["renderMeshesData"]
       70 SETLIST                          R7 R8 1 [1]
       72 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       74 DUPCLOSURE                       R7 K24 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R7 R6 K25 ["run"]
       80 RETURN                           R6 1
