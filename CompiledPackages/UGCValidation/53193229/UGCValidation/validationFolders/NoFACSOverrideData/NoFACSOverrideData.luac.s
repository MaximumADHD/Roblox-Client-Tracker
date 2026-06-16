PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R5 K1 ["FaceControls"]
        3 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+19]
        7 NAMECALL                         R4 R3 K3 ["HasOverrideFACSData"]
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+15]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["Keys"]
       14 GETTABLEKS                       R6 R6 K5 ["FaceControlsOverrideFACSNotEmpty"]
       16 LOADNIL                          R7
       17 GETUPVAL                         R9 1
       18 CALL                             R9 0 1
       19 JUMPIFNOT                        R9 ; [+2]
       20 MOVE                             R8 R3
       21 JUMP                             ; [+1]
       22 LOADNIL                          R8
       23 NAMECALL                         R4 R0 K6 ["fail"]
       25 CALL                             R4 4 0
       26 RETURN                           R0 0

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
       39 NEWTABLE                         R6 0 1
       41 GETTABLEKS                       R7 R2 K12 ["UploadCategory"]
       43 GETTABLEKS                       R7 R7 K13 ["DYNAMIC_HEAD"]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K14 ["categories"]
       49 NEWTABLE                         R6 0 1
       51 GETTABLEKS                       R7 R2 K15 ["SharedDataMember"]
       53 GETTABLEKS                       R7 R7 K16 ["rootInstance"]
       55 SETLIST                          R6 R7 1 [1]
       57 SETTABLEKS                       R6 R5 K17 ["requiredData"]
       59 GETIMPORT                        R6 K4 [require]
       61 GETTABLEKS                       R7 R0 K10 ["flags"]
       63 GETTABLEKS                       R7 R7 K18 ["getEngineFeatureUGCValidateCheckFacsDisableOverride"]
       65 CALL                             R6 1 1
       66 SETTABLEKS                       R6 R5 K19 ["fflag"]
       68 DUPCLOSURE                       R6 K20 [PROTO_0]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R4
       71 SETTABLEKS                       R6 R5 K21 ["run"]
       73 RETURN                           R5 1
