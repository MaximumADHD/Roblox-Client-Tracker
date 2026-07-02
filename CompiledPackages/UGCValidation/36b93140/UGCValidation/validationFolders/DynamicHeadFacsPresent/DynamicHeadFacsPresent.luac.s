PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editable"]
        4 NAMECALL                         R0 R0 K1 ["ValidateDynamicHeadEditableMesh"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        2 GETTABLEKS                       R2 R3 K0 ["Head"]
        4 GETIMPORT                        R3 K3 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 2
       10 JUMPIF                           R3 ; [+11]
       11 GETIMPORT                        R7 K6 [string.format]
       13 LOADK                            R8 K7 ["Failed to load model for dynamic head '%s'. Make sure model exists and try again."]
       14 GETTABLEKS                       R9 R1 K8 ["rootInstance"]
       16 GETTABLEKS                       R9 R9 K9 ["Name"]
       18 CALL                             R7 2 -1
       19 NAMECALL                         R5 R0 K10 ["fetchError"]
       21 CALL                             R5 -1 0
       22 JUMPIF                           R4 ; [+15]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K11 ["Keys"]
       26 GETTABLEKS                       R7 R7 K12 ["DynHead_FacsMissing"]
       28 DUPTABLE                         R8 K14 [{"headName"}]
       29 GETTABLEKS                       R9 R1 K8 ["rootInstance"]
       31 GETTABLEKS                       R9 R9 K9 ["Name"]
       33 SETTABLEKS                       R9 R8 K13 ["headName"]
       35 NAMECALL                         R5 R0 K15 ["fail"]
       37 CALL                             R5 3 0
       38 RETURN                           R0 0

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
       31 GETTABLEKS                       R5 R1 K11 ["validationSystem"]
       33 GETTABLEKS                       R5 R5 K13 ["ErrorSourceStrings"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K8 [require]
       38 GETTABLEKS                       R6 R1 K14 ["flags"]
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateDynamicHeadData"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 8 0
       45 SETTABLEKS                       R5 R6 K16 ["fflag"]
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R8 R3 K17 ["UploadCategory"]
       51 GETTABLEKS                       R8 R8 K18 ["DYNAMIC_HEAD"]
       53 SETLIST                          R7 R8 1 [1]
       55 SETTABLEKS                       R7 R6 K19 ["categories"]
       57 NEWTABLE                         R7 0 1
       59 GETTABLEKS                       R8 R3 K20 ["SharedDataMember"]
       61 GETTABLEKS                       R8 R8 K21 ["renderMeshesData"]
       63 SETLIST                          R7 R8 1 [1]
       65 SETTABLEKS                       R7 R6 K22 ["requiredData"]
       67 NEWTABLE                         R7 0 0
       69 SETTABLEKS                       R7 R6 K23 ["expectedFailures"]
       71 DUPCLOSURE                       R7 K24 [PROTO_1]
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R4
       74 SETTABLEKS                       R7 R6 K25 ["run"]
       76 RETURN                           R6 1
