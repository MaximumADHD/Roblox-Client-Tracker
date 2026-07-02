PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editable"]
        4 GETUPVAL                         R3 2
        5 NAMECALL                         R0 R0 K1 ["GetDynamicHeadEditableMeshInactiveControls"]
        7 CALL                             R0 3 -1
        8 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K1 ["renderMeshesData"]
        2 GETTABLEKS                       R2 R3 K0 ["Head"]
        4 GETIMPORT                        R3 K3 [pcall]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U1
       10 CALL                             R3 1 3
       11 JUMPIF                           R3 ; [+25]
       12 GETIMPORT                        R6 K6 [string.find]
       14 MOVE                             R7 R4
       15 LOADK                            R8 K7 ["Download Error"]
       16 CALL                             R6 2 1
       17 JUMPIFNOTEQKN                    R6 K8 [1] ; [+12]
       19 GETIMPORT                        R8 K10 [string.format]
       21 LOADK                            R9 K11 ["Failed to load model for dynamic head '%s'. Make sure model exists and try again."]
       22 GETTABLEKS                       R10 R1 K12 ["rootInstance"]
       24 GETTABLEKS                       R10 R10 K13 ["Name"]
       26 CALL                             R8 2 -1
       27 NAMECALL                         R6 R0 K14 ["fetchError"]
       29 CALL                             R6 -1 0
       30 LOADB                            R7 0
       31 FASTCALL2                        ASSERT R7 R4 ; [+4]
       33 MOVE                             R8 R4
       34 GETIMPORT                        R6 K16 [assert]
       36 CALL                             R6 2 0
       37 GETTABLEKS                       R6 R1 K12 ["rootInstance"]
       39 GETTABLEKS                       R6 R6 K17 ["MeshId"]
       41 LENGTH                           R7 R4
       42 LOADN                            R8 0
       43 JUMPIFNOTLT                      R8 R7 ; [+25]
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R9 R9 K18 ["Keys"]
       48 GETTABLEKS                       R9 R9 K19 ["DynHead_ControlsMissing"]
       50 DUPTABLE                         R10 K23 [{"headName", "meshId", "controlList"}]
       51 GETTABLEKS                       R11 R1 K12 ["rootInstance"]
       53 GETTABLEKS                       R11 R11 K13 ["Name"]
       55 SETTABLEKS                       R11 R10 K20 ["headName"]
       57 SETTABLEKS                       R6 R10 K21 ["meshId"]
       59 GETIMPORT                        R11 K26 [table.concat]
       61 MOVE                             R12 R4
       62 LOADK                            R13 K27 [", "]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K22 ["controlList"]
       66 NAMECALL                         R7 R0 K28 ["fail"]
       68 CALL                             R7 3 0
       69 LENGTH                           R7 R5
       70 LOADN                            R8 0
       71 JUMPIFNOTLT                      R8 R7 ; [+25]
       73 GETUPVAL                         R9 2
       74 GETTABLEKS                       R9 R9 K18 ["Keys"]
       76 GETTABLEKS                       R9 R9 K29 ["DynHead_ControlsInactive"]
       78 DUPTABLE                         R10 K23 [{"headName", "meshId", "controlList"}]
       79 GETTABLEKS                       R11 R1 K12 ["rootInstance"]
       81 GETTABLEKS                       R11 R11 K13 ["Name"]
       83 SETTABLEKS                       R11 R10 K20 ["headName"]
       85 SETTABLEKS                       R6 R10 K21 ["meshId"]
       87 GETIMPORT                        R11 K26 [table.concat]
       89 MOVE                             R12 R5
       90 LOADK                            R13 K27 [", "]
       91 CALL                             R11 2 1
       92 SETTABLEKS                       R11 R10 K22 ["controlList"]
       94 NAMECALL                         R7 R0 K28 ["fail"]
       96 CALL                             R7 3 0
       97 RETURN                           R0 0

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
       43 NEWTABLE                         R6 0 17
       45 LOADK                            R7 K16 ["LeftEyeClosed"]
       46 LOADK                            R8 K17 ["EyesLookDown"]
       47 LOADK                            R9 K18 ["RightEyeClosed"]
       48 LOADK                            R10 K19 ["JawDrop"]
       49 LOADK                            R11 K20 ["Pucker"]
       50 LOADK                            R12 K21 ["LeftLipCornerPuller"]
       51 LOADK                            R13 K22 ["RightLipCornerPuller"]
       52 LOADK                            R14 K23 ["ChinRaiser"]
       53 LOADK                            R15 K24 ["ChinRaiserUpperLip"]
       54 LOADK                            R16 K25 ["LeftCheekRaiser"]
       55 LOADK                            R17 K26 ["RightCheekRaiser"]
       56 LOADK                            R18 K27 ["LeftInnerBrowRaiser"]
       57 LOADK                            R19 K28 ["RightInnerBrowRaiser"]
       58 LOADK                            R20 K29 ["LeftLipCornerDown"]
       59 LOADK                            R21 K30 ["RightLipCornerDown"]
       60 LOADK                            R22 K31 ["LeftLowerLipDepressor"]
       61 SETLIST                          R6 R7 16 [1]
       63 LOADK                            R7 K32 ["RightLowerLipDepressor"]
       64 SETLIST                          R6 R7 1 [17]
       66 NEWTABLE                         R7 8 0
       68 SETTABLEKS                       R5 R7 K33 ["fflag"]
       70 NEWTABLE                         R8 0 1
       72 GETTABLEKS                       R9 R3 K34 ["UploadCategory"]
       74 GETTABLEKS                       R9 R9 K35 ["DYNAMIC_HEAD"]
       76 SETLIST                          R8 R9 1 [1]
       78 SETTABLEKS                       R8 R7 K36 ["categories"]
       80 NEWTABLE                         R8 0 1
       82 GETTABLEKS                       R9 R3 K37 ["ValidationModule"]
       84 GETTABLEKS                       R9 R9 K38 ["DynamicHeadFacsPresent"]
       86 SETLIST                          R8 R9 1 [1]
       88 SETTABLEKS                       R8 R7 K39 ["prereqTests"]
       90 NEWTABLE                         R8 0 1
       92 GETTABLEKS                       R9 R3 K40 ["SharedDataMember"]
       94 GETTABLEKS                       R9 R9 K41 ["renderMeshesData"]
       96 SETLIST                          R8 R9 1 [1]
       98 SETTABLEKS                       R8 R7 K42 ["requiredData"]
      100 NEWTABLE                         R8 0 0
      102 SETTABLEKS                       R8 R7 K43 ["expectedFailures"]
      104 DUPCLOSURE                       R8 K44 [PROTO_1]
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R4
      108 SETTABLEKS                       R8 R7 K45 ["run"]
      110 RETURN                           R7 1
