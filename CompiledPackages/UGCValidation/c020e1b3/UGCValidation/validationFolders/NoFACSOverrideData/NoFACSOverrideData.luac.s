PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 LOADK                            R5 K1 ["FaceControls"]
        3 NAMECALL                         R3 R2 K2 ["FindFirstChildOfClass"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+12]
        7 NAMECALL                         R4 R3 K3 ["HasOverrideFACSData"]
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+8]
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K4 ["Keys"]
       14 GETTABLEKS                       R6 R6 K5 ["FaceControlsOverrideFACSNotEmpty"]
       16 NAMECALL                         R4 R0 K6 ["fail"]
       18 CALL                             R4 2 0
       19 RETURN                           R0 0

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
       30 NEWTABLE                         R4 4 0
       32 NEWTABLE                         R5 0 1
       34 GETTABLEKS                       R6 R2 K10 ["UploadCategory"]
       36 GETTABLEKS                       R6 R6 K11 ["DYNAMIC_HEAD"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K12 ["categories"]
       42 NEWTABLE                         R5 0 1
       44 GETTABLEKS                       R6 R2 K13 ["SharedDataMember"]
       46 GETTABLEKS                       R6 R6 K14 ["rootInstance"]
       48 SETLIST                          R5 R6 1 [1]
       50 SETTABLEKS                       R5 R4 K15 ["requiredData"]
       52 GETIMPORT                        R5 K4 [require]
       54 GETTABLEKS                       R6 R0 K16 ["flags"]
       56 GETTABLEKS                       R6 R6 K17 ["getEngineFeatureUGCValidateCheckFacsDisableOverride"]
       58 CALL                             R5 1 1
       59 SETTABLEKS                       R5 R4 K18 ["fflag"]
       61 DUPCLOSURE                       R5 K19 [PROTO_0]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R5 R4 K20 ["run"]
       65 RETURN                           R4 1
