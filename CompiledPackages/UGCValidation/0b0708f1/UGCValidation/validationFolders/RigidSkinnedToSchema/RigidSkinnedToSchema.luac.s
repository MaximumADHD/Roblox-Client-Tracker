PROTO_0:
        0 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        2 GETTABLEKS                       R2 R3 K0 ["Handle"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+5]
        6 GETIMPORT                        R3 K3 [error]
        8 LOADK                            R4 K4 ["Schema should have ensured data exists for handle"]
        9 CALL                             R3 1 0
       10 GETTABLEKS                       R4 R2 K5 ["editable"]
       12 NAMECALL                         R4 R4 K6 ["GetBones"]
       14 CALL                             R4 1 1
       15 LENGTH                           R3 R4
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+9]
       19 GETUPVAL                         R7 0
       20 GETTABLEKS                       R6 R7 K7 ["Keys"]
       22 GETTABLEKS                       R5 R6 K8 ["AccessorySkinning_RigidIsSkinned"]
       24 NAMECALL                         R3 R0 K9 ["fail"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["util"]
       13 GETTABLEKS                       R2 R3 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["validationSystem"]
       20 GETTABLEKS                       R3 R4 K8 ["ValidationEnums"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K7 ["validationSystem"]
       27 GETTABLEKS                       R4 R5 K9 ["ErrorSourceStrings"]
       29 CALL                             R3 1 1
       30 NEWTABLE                         R4 4 0
       32 GETIMPORT                        R5 K4 [require]
       34 GETTABLEKS                       R7 R0 K10 ["flags"]
       36 GETTABLEKS                       R6 R7 K11 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
       38 CALL                             R5 1 1
       39 SETTABLEKS                       R5 R4 K12 ["fflag"]
       41 NEWTABLE                         R5 0 1
       43 GETTABLEKS                       R7 R2 K13 ["UploadCategory"]
       45 GETTABLEKS                       R6 R7 K14 ["RIGID_ACCESSORY"]
       47 SETLIST                          R5 R6 1 [1]
       49 SETTABLEKS                       R5 R4 K15 ["categories"]
       51 NEWTABLE                         R5 0 1
       53 GETTABLEKS                       R7 R2 K16 ["SharedDataMember"]
       55 GETTABLEKS                       R6 R7 K17 ["renderMeshesData"]
       57 SETLIST                          R5 R6 1 [1]
       59 SETTABLEKS                       R5 R4 K18 ["requiredData"]
       61 DUPCLOSURE                       R5 K19 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R5 R4 K20 ["run"]
       65 RETURN                           R4 1
