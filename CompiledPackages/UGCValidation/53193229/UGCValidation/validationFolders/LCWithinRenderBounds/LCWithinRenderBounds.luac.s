PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["consumerConfig"]
        2 GETTABLEKS                       R2 R2 K1 ["consumerEnv"]
        4 JUMPIFNOTEQKS                    R2 K2 ["IEC"] ; [+2]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K3 ["rootInstance"]
        9 GETUPVAL                         R3 0
       10 CALL                             R3 0 1
       11 JUMPIF                           R3 ; [+14]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K4 ["Keys"]
       15 GETTABLEKS                       R5 R5 K5 ["LCWithinRenderBounds_EngineFeatureDisabled"]
       17 DUPTABLE                         R6 K7 [{"accessoryName"}]
       18 GETTABLEKS                       R7 R2 K8 ["Name"]
       20 SETTABLEKS                       R7 R6 K6 ["accessoryName"]
       22 NAMECALL                         R3 R0 K9 ["fail"]
       24 CALL                             R3 3 0
       25 RETURN                           R0 0
       26 LOADK                            R5 K10 ["Handle"]
       27 NAMECALL                         R3 R2 K11 ["FindFirstChild"]
       29 CALL                             R3 2 1
       30 JUMPIF                           R3 ; [+14]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R6 R6 K4 ["Keys"]
       34 GETTABLEKS                       R6 R6 K12 ["LCWithinRenderBounds_NoHandle"]
       36 DUPTABLE                         R7 K7 [{"accessoryName"}]
       37 GETTABLEKS                       R8 R2 K8 ["Name"]
       39 SETTABLEKS                       R8 R7 K6 ["accessoryName"]
       41 NAMECALL                         R4 R0 K9 ["fail"]
       43 CALL                             R4 3 0
       44 RETURN                           R0 0
       45 LOADK                            R6 K13 ["WrapLayer"]
       46 NAMECALL                         R4 R3 K14 ["FindFirstChildWhichIsA"]
       48 CALL                             R4 2 1
       49 JUMPIF                           R4 ; [+14]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R7 R7 K4 ["Keys"]
       53 GETTABLEKS                       R7 R7 K15 ["LCWithinRenderBounds_NoWrapLayer"]
       55 DUPTABLE                         R8 K7 [{"accessoryName"}]
       56 GETTABLEKS                       R9 R2 K8 ["Name"]
       58 SETTABLEKS                       R9 R8 K6 ["accessoryName"]
       60 NAMECALL                         R5 R0 K9 ["fail"]
       62 CALL                             R5 3 0
       63 RETURN                           R0 0
       64 GETUPVAL                         R5 2
       65 CALL                             R5 0 1
       66 JUMPIFNOT                        R5 ; [+33]
       67 GETTABLEKS                       R5 R4 K16 ["MaxSize"]
       69 LOADK                            R6 K17 [{0, 0, 0}]
       70 JUMPIFEQ                         R5 R6 ; [+12]
       72 GETUPVAL                         R7 1
       73 GETTABLEKS                       R7 R7 K4 ["Keys"]
       75 GETTABLEKS                       R7 R7 K18 ["LCWithinRenderBounds_NonZeroMaxSize"]
       77 NEWTABLE                         R8 0 0
       79 NAMECALL                         R5 R0 K9 ["fail"]
       81 CALL                             R5 3 0
       82 RETURN                           R0 0
       83 GETTABLEKS                       R5 R4 K19 ["Offset"]
       85 LOADK                            R6 K17 [{0, 0, 0}]
       86 JUMPIFEQ                         R5 R6 ; [+19]
       88 GETUPVAL                         R7 1
       89 GETTABLEKS                       R7 R7 K4 ["Keys"]
       91 GETTABLEKS                       R7 R7 K20 ["LCWithinRenderBounds_NonZeroOffset"]
       93 NEWTABLE                         R8 0 0
       95 NAMECALL                         R5 R0 K9 ["fail"]
       97 CALL                             R5 3 0
       98 RETURN                           R0 0
       99 JUMP                             ; [+6]
      100 LOADK                            R5 K17 [{0, 0, 0}]
      101 SETTABLEKS                       R5 R4 K16 ["MaxSize"]
      103 LOADK                            R5 K17 [{0, 0, 0}]
      104 SETTABLEKS                       R5 R4 K19 ["Offset"]
      106 GETUPVAL                         R5 3
      107 MOVE                             R7 R2
      108 NAMECALL                         R5 R5 K21 ["IsDeformedLayeredClothingOutOfRenderBounds"]
      110 CALL                             R5 2 1
      111 JUMPIFNOT                        R5 ; [+13]
      112 GETUPVAL                         R8 1
      113 GETTABLEKS                       R8 R8 K4 ["Keys"]
      115 GETTABLEKS                       R8 R8 K22 ["LCWithinRenderBounds_OutOfBounds"]
      117 DUPTABLE                         R9 K7 [{"accessoryName"}]
      118 GETTABLEKS                       R10 R2 K8 ["Name"]
      120 SETTABLEKS                       R10 R9 K6 ["accessoryName"]
      122 NAMECALL                         R6 R0 K9 ["fail"]
      124 CALL                             R6 3 0
      125 RETURN                           R0 0

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
       40 GETTABLEKS                       R6 R6 K15 ["getFFlagUGCValidateMigrateCageGeometry"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K8 [require]
       45 GETTABLEKS                       R7 R1 K14 ["flags"]
       47 GETTABLEKS                       R7 R7 K16 ["getEngineFeatureEngineUGCValidationLCOOB"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K8 [require]
       52 GETTABLEKS                       R8 R1 K14 ["flags"]
       54 GETTABLEKS                       R8 R8 K17 ["getFFlagEnforceMaxSizeOffsetForLC"]
       56 CALL                             R7 1 1
       57 NEWTABLE                         R8 8 0
       59 SETTABLEKS                       R5 R8 K18 ["fflag"]
       61 NEWTABLE                         R9 0 1
       63 GETTABLEKS                       R10 R3 K19 ["UploadCategory"]
       65 GETTABLEKS                       R10 R10 K20 ["LAYERED_CLOTHING"]
       67 SETLIST                          R9 R10 1 [1]
       69 SETTABLEKS                       R9 R8 K21 ["categories"]
       71 NEWTABLE                         R9 0 0
       73 SETTABLEKS                       R9 R8 K22 ["requiredData"]
       75 NEWTABLE                         R9 0 0
       77 SETTABLEKS                       R9 R8 K23 ["expectedFailures"]
       79 DUPCLOSURE                       R9 K24 [PROTO_0]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R9 R8 K25 ["run"]
       86 RETURN                           R8 1
