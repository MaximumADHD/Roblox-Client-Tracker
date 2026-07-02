PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Vertex_Similarity"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+11]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["Keys"]
        9 GETTABLEKS                       R5 R5 K3 ["AQSWarn_MissingData"]
       11 DUPTABLE                         R6 K5 [{["measureName"] = "Measure_Vertex_Similarity"}]
       12 NAMECALL                         R3 R0 K6 ["warn"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0
       16 MOVE                             R3 R2
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 JUMPIFEQKS                       R6 K7 ["measurement_score"] ; [+67]
       22 JUMPIFEQKNIL                     R7 ; [+5]
       24 GETTABLEKS                       R8 R7 K8 ["score"]
       26 JUMPIFNOTEQKNIL                  R8 ; [+11]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R10 R10 K2 ["Keys"]
       31 GETTABLEKS                       R10 R10 K3 ["AQSWarn_MissingData"]
       33 DUPTABLE                         R11 K5 [{["measureName"] = "Measure_Vertex_Similarity"}]
       34 NAMECALL                         R8 R0 K6 ["warn"]
       36 CALL                             R8 3 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R9 R7 K8 ["score"]
       40 FASTCALL1                        TONUMBER R9 ; [+2]
       41 GETIMPORT                        R8 K10 [tonumber]
       43 CALL                             R8 1 1
       44 JUMPIFEQKN                       R8 K11 [100] ; [+43]
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R10 R10 K2 ["Keys"]
       49 GETTABLEKS                       R10 R10 K12 ["AQSWarn_VertexSimilarity"]
       51 DUPTABLE                         R11 K15 [{"partName", "similar_vertex_percent", "score"}]
       52 SETTABLEKS                       R6 R11 K13 ["partName"]
       54 GETIMPORT                        R12 K18 [string.format]
       56 LOADK                            R13 K19 ["%.2f"]
       57 GETTABLEKS                       R17 R7 K14 ["similar_vertex_percent"]
       59 FASTCALL1                        TONUMBER R17 ; [+2]
       60 GETIMPORT                        R16 K10 [tonumber]
       62 CALL                             R16 1 1
       63 ORK                              R15 R16 K20 [0]
       64 MULK                             R14 R15 K11 [100]
       65 CALL                             R12 2 1
       66 SETTABLEKS                       R12 R11 K14 ["similar_vertex_percent"]
       68 GETTABLEKS                       R16 R7 K8 ["score"]
       70 FASTCALL1                        TONUMBER R16 ; [+2]
       71 GETIMPORT                        R15 K10 [tonumber]
       73 CALL                             R15 1 1
       74 ORK                              R14 R15 K20 [0]
       75 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       76 GETIMPORT                        R13 K23 [math.floor]
       78 CALL                             R13 1 1
       79 FASTCALL1                        TOSTRING R13 ; [+2]
       80 GETIMPORT                        R12 K25 [tostring]
       82 CALL                             R12 1 1
       83 SETTABLEKS                       R12 R11 K8 ["score"]
       85 NAMECALL                         R8 R0 K6 ["warn"]
       87 CALL                             R8 3 0
       88 FORGLOOP                         R3 2 ; [-69]
       90 RETURN                           R0 0

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
       32 NEWTABLE                         R5 0 4
       34 GETTABLEKS                       R6 R2 K10 ["UploadCategory"]
       36 GETTABLEKS                       R6 R6 K11 ["LAYERED_CLOTHING"]
       38 GETTABLEKS                       R7 R2 K10 ["UploadCategory"]
       40 GETTABLEKS                       R7 R7 K12 ["FULL_BODY"]
       42 GETTABLEKS                       R8 R2 K10 ["UploadCategory"]
       44 GETTABLEKS                       R8 R8 K13 ["RIGID_ACCESSORY"]
       46 GETTABLEKS                       R9 R2 K10 ["UploadCategory"]
       48 GETTABLEKS                       R9 R9 K14 ["DYNAMIC_HEAD"]
       50 SETLIST                          R5 R6 4 [1]
       52 SETTABLEKS                       R5 R4 K15 ["categories"]
       54 GETIMPORT                        R5 K4 [require]
       56 GETTABLEKS                       R6 R0 K16 ["flags"]
       58 GETTABLEKS                       R6 R6 K17 ["getFFlagUGCValidateAQMeshQuality"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K18 ["fflag"]
       63 DUPCLOSURE                       R5 K19 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R5 R4 K20 ["run"]
       67 RETURN                           R4 1
