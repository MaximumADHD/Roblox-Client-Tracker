PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getJointNameWhitelist"]
        3 CALL                             R2 0 1
        4 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 NEWTABLE                         R8 0 1
       11 GETUPVAL                         R9 1
       12 GETTABLEKS                       R11 R7 K2 ["editable"]
       14 NAMECALL                         R9 R9 K3 ["GetSkinnedJointNamesFromEditableMesh"]
       16 CALL                             R9 2 -1
       17 SETLIST                          R8 R9 -1 [1]
       19 MOVE                             R9 R8
       20 LOADNIL                          R10
       21 LOADNIL                          R11
       22 FORGPREP                         R9
       23 GETTABLE                         R14 R2 R13
       24 JUMPIF                           R14 ; [+13]
       25 GETUPVAL                         R16 2
       26 GETTABLEKS                       R16 R16 K4 ["Keys"]
       28 GETTABLEKS                       R16 R16 K5 ["UnallowedJointSkinned"]
       30 DUPTABLE                         R17 K8 [{"partName", "jointName"}]
       31 SETTABLEKS                       R6 R17 K6 ["partName"]
       33 SETTABLEKS                       R13 R17 K7 ["jointName"]
       35 NAMECALL                         R14 R0 K9 ["fail"]
       37 CALL                             R14 3 0
       38 FORGLOOP                         R9 2 ; [-16]
       40 FORGLOOP                         R3 2 ; [-32]
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["util"]
       19 GETTABLEKS                       R3 R3 K10 ["Types"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K11 ["validationSystem"]
       26 GETTABLEKS                       R4 R4 K12 ["ValidationEnums"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["util"]
       33 GETTABLEKS                       R5 R5 K13 ["R15plusUtils"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K11 ["validationSystem"]
       40 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 4 0
       45 GETIMPORT                        R7 K8 [require]
       47 GETTABLEKS                       R8 R1 K15 ["flags"]
       49 GETTABLEKS                       R8 R8 K16 ["getFFlagUGCValidationEnableR15plusSkinning"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K17 ["fflag"]
       54 NEWTABLE                         R7 0 1
       56 GETTABLEKS                       R8 R3 K18 ["UploadCategory"]
       58 GETTABLEKS                       R8 R8 K19 ["TORSO_AND_LIMBS"]
       60 SETLIST                          R7 R8 1 [1]
       62 SETTABLEKS                       R7 R6 K20 ["categories"]
       64 NEWTABLE                         R7 0 1
       66 GETTABLEKS                       R8 R3 K21 ["SharedDataMember"]
       68 GETTABLEKS                       R8 R8 K22 ["renderMeshesData"]
       70 SETLIST                          R7 R8 1 [1]
       72 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       74 DUPCLOSURE                       R7 K24 [PROTO_0]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R0
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R7 R6 K25 ["run"]
       80 RETURN                           R6 1
