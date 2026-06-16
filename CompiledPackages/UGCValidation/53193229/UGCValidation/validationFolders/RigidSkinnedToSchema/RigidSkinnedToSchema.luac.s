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
       17 JUMPIFNOTLT                      R4 R3 ; [+21]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K7 ["Keys"]
       22 GETTABLEKS                       R5 R5 K8 ["AccessorySkinning_RigidIsSkinned"]
       24 LOADNIL                          R6
       25 GETUPVAL                         R8 1
       26 CALL                             R8 0 1
       27 JUMPIFNOT                        R8 ; [+7]
       28 GETTABLEKS                       R7 R1 K9 ["rootInstance"]
       30 LOADK                            R9 K0 ["Handle"]
       31 NAMECALL                         R7 R7 K10 ["FindFirstChild"]
       33 CALL                             R7 2 1
       34 JUMP                             ; [+1]
       35 LOADNIL                          R7
       36 NAMECALL                         R3 R0 K11 ["fail"]
       38 CALL                             R3 4 0
       39 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getEngineFeatureEngineUGCValidationExpandReturnSchema"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 4 0
       39 GETIMPORT                        R6 K4 [require]
       41 GETTABLEKS                       R7 R0 K10 ["flags"]
       43 GETTABLEKS                       R7 R7 K12 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K13 ["fflag"]
       48 NEWTABLE                         R6 0 1
       50 GETTABLEKS                       R7 R2 K14 ["UploadCategory"]
       52 GETTABLEKS                       R7 R7 K15 ["RIGID_ACCESSORY"]
       54 SETLIST                          R6 R7 1 [1]
       56 SETTABLEKS                       R6 R5 K16 ["categories"]
       58 NEWTABLE                         R6 0 1
       60 GETTABLEKS                       R7 R2 K17 ["SharedDataMember"]
       62 GETTABLEKS                       R7 R7 K18 ["renderMeshesData"]
       64 SETLIST                          R6 R7 1 [1]
       66 SETTABLEKS                       R6 R5 K19 ["requiredData"]
       68 DUPCLOSURE                       R6 K20 [PROTO_0]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R6 R5 K21 ["run"]
       73 RETURN                           R5 1
