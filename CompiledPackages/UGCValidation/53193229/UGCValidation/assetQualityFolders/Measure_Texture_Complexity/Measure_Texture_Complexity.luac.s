PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Texture_Complexity"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+14]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["Keys"]
        9 GETTABLEKS                       R5 R5 K3 ["AQSWarn_MissingData"]
       11 DUPTABLE                         R6 K5 [{"measureName"}]
       12 LOADK                            R7 K1 ["Measure_Texture_Complexity"]
       13 SETTABLEKS                       R7 R6 K4 ["measureName"]
       15 NAMECALL                         R3 R0 K6 ["warn"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0
       19 MOVE                             R3 R2
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 JUMPIFEQKS                       R6 K7 ["measurement_score"] ; [+56]
       25 JUMPIFEQKNIL                     R7 ; [+5]
       27 GETTABLEKS                       R8 R7 K8 ["score"]
       29 JUMPIFNOTEQKNIL                  R8 ; [+14]
       31 GETUPVAL                         R10 0
       32 GETTABLEKS                       R10 R10 K2 ["Keys"]
       34 GETTABLEKS                       R10 R10 K3 ["AQSWarn_MissingData"]
       36 DUPTABLE                         R11 K5 [{"measureName"}]
       37 LOADK                            R12 K1 ["Measure_Texture_Complexity"]
       38 SETTABLEKS                       R12 R11 K4 ["measureName"]
       40 NAMECALL                         R8 R0 K6 ["warn"]
       42 CALL                             R8 3 0
       43 RETURN                           R0 0
       44 GETTABLEKS                       R9 R7 K8 ["score"]
       46 FASTCALL1                        TONUMBER R9 ; [+2]
       47 GETIMPORT                        R8 K10 [tonumber]
       49 CALL                             R8 1 1
       50 JUMPIFEQKN                       R8 K11 [100] ; [+29]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R10 R10 K2 ["Keys"]
       55 GETTABLEKS                       R10 R10 K12 ["AQSWarn_TextureComplexity"]
       57 DUPTABLE                         R11 K14 [{"textureName", "score"}]
       58 SETTABLEKS                       R6 R11 K13 ["textureName"]
       60 GETTABLEKS                       R16 R7 K8 ["score"]
       62 FASTCALL1                        TONUMBER R16 ; [+2]
       63 GETIMPORT                        R15 K10 [tonumber]
       65 CALL                             R15 1 1
       66 ORK                              R14 R15 K15 [0]
       67 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       68 GETIMPORT                        R13 K18 [math.floor]
       70 CALL                             R13 1 1
       71 FASTCALL1                        TOSTRING R13 ; [+2]
       72 GETIMPORT                        R12 K20 [tostring]
       74 CALL                             R12 1 1
       75 SETTABLEKS                       R12 R11 K8 ["score"]
       77 NAMECALL                         R8 R0 K6 ["warn"]
       79 CALL                             R8 3 0
       80 FORGLOOP                         R3 2 ; [-58]
       82 RETURN                           R0 0

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
       36 GETTABLEKS                       R6 R6 K11 ["FULL_BODY"]
       38 GETTABLEKS                       R7 R2 K10 ["UploadCategory"]
       40 GETTABLEKS                       R7 R7 K12 ["LAYERED_CLOTHING"]
       42 GETTABLEKS                       R8 R2 K10 ["UploadCategory"]
       44 GETTABLEKS                       R8 R8 K13 ["RIGID_ACCESSORY"]
       46 GETTABLEKS                       R9 R2 K10 ["UploadCategory"]
       48 GETTABLEKS                       R9 R9 K14 ["DYNAMIC_HEAD"]
       50 SETLIST                          R5 R6 4 [1]
       52 SETTABLEKS                       R5 R4 K15 ["categories"]
       54 GETIMPORT                        R5 K4 [require]
       56 GETTABLEKS                       R6 R0 K16 ["flags"]
       58 GETTABLEKS                       R6 R6 K17 ["getFFlagUGCValidateAQTextureQuality"]
       60 CALL                             R5 1 1
       61 SETTABLEKS                       R5 R4 K18 ["fflag"]
       63 DUPCLOSURE                       R5 K19 [PROTO_0]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R5 R4 K20 ["run"]
       67 RETURN                           R4 1
