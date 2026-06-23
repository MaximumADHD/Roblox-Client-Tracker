PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editable"]
        4 NAMECALL                         R0 R0 K1 ["GetMaximalJointDistancesWithinFacs"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIF                           R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        6 GETTABLEKS                       R2 R3 K0 ["Head"]
        8 GETIMPORT                        R3 K3 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 2
       14 JUMPIF                           R3 ; [+9]
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K4 ["Keys"]
       18 GETTABLEKS                       R7 R7 K5 ["DynHead_JointBoundsCheckFailed"]
       20 NAMECALL                         R5 R0 K6 ["fail"]
       22 CALL                             R5 2 0
       23 RETURN                           R0 0
       24 FASTCALL1                        TABLE_UNPACK R4 ; [+3]
       25 MOVE                             R6 R4
       26 GETIMPORT                        R5 K8 [unpack]
       28 CALL                             R5 1 4
       29 GETUPVAL                         R10 3
       30 CALL                             R10 0 1
       31 DIVK                             R9 R10 K9 [100]
       32 JUMPIFNOTLT                      R9 R5 ; [+12]
       34 GETUPVAL                         R11 2
       35 GETTABLEKS                       R11 R11 K4 ["Keys"]
       37 GETTABLEKS                       R11 R11 K10 ["DynHead_JointDirectExceeded"]
       39 DUPTABLE                         R12 K12 [{"actionName"}]
       40 SETTABLEKS                       R6 R12 K11 ["actionName"]
       42 NAMECALL                         R9 R0 K6 ["fail"]
       44 CALL                             R9 3 0
       45 GETUPVAL                         R10 4
       46 CALL                             R10 0 1
       47 DIVK                             R9 R10 K9 [100]
       48 JUMPIFNOTLT                      R9 R7 ; [+12]
       50 GETUPVAL                         R11 2
       51 GETTABLEKS                       R11 R11 K4 ["Keys"]
       53 GETTABLEKS                       R11 R11 K13 ["DynHead_JointAccumulatedExceeded"]
       55 DUPTABLE                         R12 K15 [{"jointName"}]
       56 SETTABLEKS                       R8 R12 K14 ["jointName"]
       58 NAMECALL                         R9 R0 K6 ["fail"]
       60 CALL                             R9 3 0
       61 RETURN                           R0 0

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
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFIntFacsJointMaximumDistRatioDirect"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K14 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFIntFacsJointMaximumDistRatioAccumulated"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K14 ["flags"]
       61 GETTABLEKS                       R9 R9 K18 ["getEngineFeatureEngineUGCValidateFACSJointTransformsWithinBounds"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 8 0
       66 SETTABLEKS                       R5 R9 K19 ["fflag"]
       68 NEWTABLE                         R10 0 1
       70 GETTABLEKS                       R11 R3 K20 ["UploadCategory"]
       72 GETTABLEKS                       R11 R11 K21 ["DYNAMIC_HEAD"]
       74 SETLIST                          R10 R11 1 [1]
       76 SETTABLEKS                       R10 R9 K22 ["categories"]
       78 NEWTABLE                         R10 0 1
       80 GETTABLEKS                       R11 R3 K23 ["ValidationModule"]
       82 GETTABLEKS                       R11 R11 K24 ["DynamicHeadFacsPresent"]
       84 SETLIST                          R10 R11 1 [1]
       86 SETTABLEKS                       R10 R9 K25 ["prereqTests"]
       88 NEWTABLE                         R10 0 1
       90 GETTABLEKS                       R11 R3 K26 ["SharedDataMember"]
       92 GETTABLEKS                       R11 R11 K27 ["renderMeshesData"]
       94 SETLIST                          R10 R11 1 [1]
       96 SETTABLEKS                       R10 R9 K28 ["requiredData"]
       98 NEWTABLE                         R10 0 0
      100 SETTABLEKS                       R10 R9 K29 ["expectedFailures"]
      102 DUPCLOSURE                       R10 K30 [PROTO_1]
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R0
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R7
      108 SETTABLEKS                       R10 R9 K31 ["run"]
      110 RETURN                           R9 1
