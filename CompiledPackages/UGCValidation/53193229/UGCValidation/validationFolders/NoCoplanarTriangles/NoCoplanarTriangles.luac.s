PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["uploadCategory"]
        2 LOADB                            R3 1
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["UploadCategory"]
        6 GETTABLEKS                       R4 R4 K2 ["TORSO_AND_LIMBS"]
        8 JUMPIFEQ                         R2 R4 ; [+10]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K1 ["UploadCategory"]
       13 GETTABLEKS                       R4 R4 K3 ["DYNAMIC_HEAD"]
       15 JUMPIFEQ                         R2 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 JUMPIFNOT                        R3 ; [+4]
       20 GETUPVAL                         R4 1
       21 CALL                             R4 0 1
       22 JUMPIF                           R4 ; [+1]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R4 R1 K4 ["renderMeshesData"]
       26 LOADNIL                          R5
       27 LOADNIL                          R6
       28 FORGPREP                         R4
       29 GETTABLEKS                       R9 R8 K5 ["editable"]
       31 GETTABLEKS                       R10 R8 K6 ["scale"]
       33 GETTABLEKS                       R11 R8 K7 ["originalSize"]
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R13 R11 K8 ["X"]
       38 LOADN                            R14 0
       39 CALL                             R12 2 1
       40 JUMPIF                           R12 ; [+59]
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R13 R11 K9 ["Y"]
       44 LOADN                            R14 0
       45 CALL                             R12 2 1
       46 JUMPIF                           R12 ; [+53]
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R13 R11 K10 ["Z"]
       50 LOADN                            R14 0
       51 CALL                             R12 2 1
       52 JUMPIF                           R12 ; [+47]
       53 GETUPVAL                         R12 3
       54 MOVE                             R14 R9
       55 NAMECALL                         R12 R12 K11 ["GetEditableMeshTriCount"]
       57 CALL                             R12 2 1
       58 GETUPVAL                         R16 4
       59 CALL                             R16 0 1
       60 DIVK                             R15 R16 K12 [100]
       61 MUL                              R14 R15 R12
       62 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       63 GETIMPORT                        R13 K15 [math.floor]
       65 CALL                             R13 1 1
       66 GETUPVAL                         R14 3
       67 MOVE                             R16 R9
       68 MOVE                             R17 R13
       69 MOVE                             R18 R10
       70 LOADB                            R19 1
       71 NAMECALL                         R14 R14 K16 ["IsEditableMeshNumCoplanarIntersectionsOverLimit"]
       73 CALL                             R14 5 1
       74 JUMPIFNOT                        R14 ; [+25]
       75 GETUPVAL                         R17 5
       76 GETTABLEKS                       R17 R17 K17 ["Keys"]
       78 GETTABLEKS                       R17 R17 K18 ["CoplanarTri_TooMany"]
       80 DUPTABLE                         R18 K22 [{"MeshName", "MaxIntersections", "TriangleCount"}]
       81 SETTABLEKS                       R7 R18 K19 ["MeshName"]
       83 FASTCALL1                        TOSTRING R13 ; [+3]
       84 MOVE                             R20 R13
       85 GETIMPORT                        R19 K24 [tostring]
       87 CALL                             R19 1 1
       88 SETTABLEKS                       R19 R18 K20 ["MaxIntersections"]
       90 FASTCALL1                        TOSTRING R12 ; [+3]
       91 MOVE                             R20 R12
       92 GETIMPORT                        R19 K24 [tostring]
       94 CALL                             R19 1 1
       95 SETTABLEKS                       R19 R18 K21 ["TriangleCount"]
       97 NAMECALL                         R15 R0 K25 ["fail"]
       99 CALL                             R15 3 0
      100 FORGLOOP                         R4 2 ; [-72]
      102 RETURN                           R0 0

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
       38 GETTABLEKS                       R6 R1 K9 ["util"]
       40 GETTABLEKS                       R6 R6 K14 ["floatEquals"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K15 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K15 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFIntMaxCoplanarIntersectionsPercentage"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K8 [require]
       59 GETTABLEKS                       R9 R1 K15 ["flags"]
       61 GETTABLEKS                       R9 R9 K18 ["getFFlagUGCValidateCoplanarTriTestBody"]
       63 CALL                             R8 1 1
       64 NEWTABLE                         R9 8 0
       66 SETTABLEKS                       R6 R9 K19 ["fflag"]
       68 NEWTABLE                         R10 0 4
       70 GETTABLEKS                       R11 R3 K20 ["UploadCategory"]
       72 GETTABLEKS                       R11 R11 K21 ["TORSO_AND_LIMBS"]
       74 GETTABLEKS                       R12 R3 K20 ["UploadCategory"]
       76 GETTABLEKS                       R12 R12 K22 ["DYNAMIC_HEAD"]
       78 GETTABLEKS                       R13 R3 K20 ["UploadCategory"]
       80 GETTABLEKS                       R13 R13 K23 ["LAYERED_CLOTHING"]
       82 GETTABLEKS                       R14 R3 K20 ["UploadCategory"]
       84 GETTABLEKS                       R14 R14 K24 ["RIGID_ACCESSORY"]
       86 SETLIST                          R10 R11 4 [1]
       88 SETTABLEKS                       R10 R9 K25 ["categories"]
       90 NEWTABLE                         R10 0 1
       92 GETTABLEKS                       R11 R3 K26 ["SharedDataMember"]
       94 GETTABLEKS                       R11 R11 K27 ["renderMeshesData"]
       96 SETLIST                          R10 R11 1 [1]
       98 SETTABLEKS                       R10 R9 K28 ["requiredData"]
      100 NEWTABLE                         R10 0 0
      102 SETTABLEKS                       R10 R9 K29 ["expectedFailures"]
      104 DUPCLOSURE                       R10 K30 [PROTO_0]
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R4
      111 SETTABLEKS                       R10 R9 K31 ["run"]
      113 RETURN                           R9 1
