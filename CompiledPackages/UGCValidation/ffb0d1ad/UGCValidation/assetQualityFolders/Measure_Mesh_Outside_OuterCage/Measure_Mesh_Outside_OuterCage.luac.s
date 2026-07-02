PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Mesh_Outside_OuterCage"]
        4 GETTABLEKS                       R2 R2 K2 ["Handle"]
        6 MOVE                             R3 R2
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETTABLEKS                       R4 R2 K3 ["mesh_outside_outer_cage_percent"]
       10 FASTCALL1                        TONUMBER R4 ; [+2]
       11 GETIMPORT                        R3 K5 [tonumber]
       13 CALL                             R3 1 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+10]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["Keys"]
       19 GETTABLEKS                       R6 R6 K7 ["AQSInputDataError"]
       21 NAMECALL                         R4 R0 K8 ["fail"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0
       25 MULK                             R4 R3 K9 [100]
       26 GETUPVAL                         R5 1
       27 JUMPIFNOTLT                      R5 R4 ; [+17]
       29 GETUPVAL                         R6 0
       30 GETTABLEKS                       R6 R6 K6 ["Keys"]
       32 GETTABLEKS                       R6 R6 K10 ["MeasureMeshOutsideOuterCage"]
       34 DUPTABLE                         R7 K11 [{"mesh_outside_outer_cage_percent"}]
       35 GETIMPORT                        R8 K14 [string.format]
       37 LOADK                            R9 K15 ["%.2f"]
       38 MULK                             R10 R3 K9 [100]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K3 ["mesh_outside_outer_cage_percent"]
       42 NAMECALL                         R4 R0 K8 ["fail"]
       44 CALL                             R4 3 0
       45 GETUPVAL                         R4 2
       46 CALL                             R4 0 1
       47 JUMPIFNOT                        R4 ; [+52]
       48 GETTABLEKS                       R4 R2 K16 ["score"]
       50 JUMPIFEQKNIL                     R4 ; [+49]
       52 GETTABLEKS                       R5 R2 K16 ["score"]
       54 FASTCALL1                        TONUMBER R5 ; [+2]
       55 GETIMPORT                        R4 K5 [tonumber]
       57 CALL                             R4 1 1
       58 JUMPIFEQKN                       R4 K9 [100] ; [+41]
       60 GETUPVAL                         R6 0
       61 GETTABLEKS                       R6 R6 K6 ["Keys"]
       63 GETTABLEKS                       R6 R6 K17 ["AQSWarn_MeshOutsideOuterCage"]
       65 DUPTABLE                         R7 K18 [{"score", "mesh_outside_outer_cage_percent"}]
       66 GETTABLEKS                       R12 R2 K16 ["score"]
       68 FASTCALL1                        TONUMBER R12 ; [+2]
       69 GETIMPORT                        R11 K5 [tonumber]
       71 CALL                             R11 1 1
       72 ORK                              R10 R11 K19 [0]
       73 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       74 GETIMPORT                        R9 K22 [math.floor]
       76 CALL                             R9 1 1
       77 FASTCALL1                        TOSTRING R9 ; [+2]
       78 GETIMPORT                        R8 K24 [tostring]
       80 CALL                             R8 1 1
       81 SETTABLEKS                       R8 R7 K16 ["score"]
       83 GETIMPORT                        R8 K14 [string.format]
       85 LOADK                            R9 K15 ["%.2f"]
       86 GETTABLEKS                       R13 R2 K3 ["mesh_outside_outer_cage_percent"]
       88 FASTCALL1                        TONUMBER R13 ; [+2]
       89 GETIMPORT                        R12 K5 [tonumber]
       91 CALL                             R12 1 1
       92 ORK                              R11 R12 K19 [0]
       93 MULK                             R10 R11 K9 [100]
       94 CALL                             R8 2 1
       95 SETTABLEKS                       R8 R7 K3 ["mesh_outside_outer_cage_percent"]
       97 NAMECALL                         R4 R0 K25 ["warn"]
       99 CALL                             R4 3 0
      100 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateAQScoreWarnings"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K13 [game]
       39 LOADK                            R7 K14 ["UGCValidateRenderMeshOutsideOuterCageMeshThreshold"]
       40 LOADN                            R8 65
       41 NAMECALL                         R5 R5 K15 ["DefineFastInt"]
       43 CALL                             R5 3 1
       44 NEWTABLE                         R6 4 0
       46 NEWTABLE                         R7 0 1
       48 GETTABLEKS                       R8 R2 K16 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K17 ["LAYERED_CLOTHING"]
       52 SETLIST                          R7 R8 1 [1]
       54 SETTABLEKS                       R7 R6 K18 ["categories"]
       56 GETIMPORT                        R7 K4 [require]
       58 GETTABLEKS                       R8 R0 K10 ["flags"]
       60 GETTABLEKS                       R8 R8 K19 ["getFFlagUGCValidateAQCageQualityLC"]
       62 CALL                             R7 1 1
       63 SETTABLEKS                       R7 R6 K20 ["fflag"]
       65 DUPCLOSURE                       R7 K21 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R4
       69 SETTABLEKS                       R7 R6 K22 ["run"]
       71 RETURN                           R6 1
