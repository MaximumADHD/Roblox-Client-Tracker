PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Joint_Number"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+14]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["Keys"]
        9 GETTABLEKS                       R5 R5 K3 ["AQSWarn_MissingData"]
       11 DUPTABLE                         R6 K5 [{"measureName"}]
       12 LOADK                            R7 K1 ["Measure_Joint_Number"]
       13 SETTABLEKS                       R7 R6 K4 ["measureName"]
       15 NAMECALL                         R3 R0 K6 ["warn"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0
       19 GETTABLEKS                       R3 R2 K7 ["full_body_mesh"]
       21 JUMPIFEQKNIL                     R3 ; [+5]
       23 GETTABLEKS                       R4 R3 K8 ["score"]
       25 JUMPIFNOTEQKNIL                  R4 ; [+14]
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R6 R6 K2 ["Keys"]
       30 GETTABLEKS                       R6 R6 K3 ["AQSWarn_MissingData"]
       32 DUPTABLE                         R7 K5 [{"measureName"}]
       33 LOADK                            R8 K1 ["Measure_Joint_Number"]
       34 SETTABLEKS                       R8 R7 K4 ["measureName"]
       36 NAMECALL                         R4 R0 K6 ["warn"]
       38 CALL                             R4 3 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R5 R3 K8 ["score"]
       42 FASTCALL1                        TONUMBER R5 ; [+2]
       43 GETIMPORT                        R4 K10 [tonumber]
       45 CALL                             R4 1 1
       46 JUMPIFEQKN                       R4 K11 [100] ; [+42]
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K2 ["Keys"]
       51 GETTABLEKS                       R6 R6 K12 ["AQSWarn_JointNumber"]
       53 DUPTABLE                         R7 K16 [{"score", "joint_number", "left_hand_joint_number", "right_hand_joint_number"}]
       54 GETTABLEKS                       R12 R3 K8 ["score"]
       56 FASTCALL1                        TONUMBER R12 ; [+2]
       57 GETIMPORT                        R11 K10 [tonumber]
       59 CALL                             R11 1 1
       60 ORK                              R10 R11 K17 [0]
       61 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       62 GETIMPORT                        R9 K20 [math.floor]
       64 CALL                             R9 1 1
       65 FASTCALL1                        TOSTRING R9 ; [+2]
       66 GETIMPORT                        R8 K22 [tostring]
       68 CALL                             R8 1 1
       69 SETTABLEKS                       R8 R7 K8 ["score"]
       71 GETTABLEKS                       R9 R3 K13 ["joint_number"]
       73 ORK                              R8 R9 K23 ["unknown"]
       74 SETTABLEKS                       R8 R7 K13 ["joint_number"]
       76 GETTABLEKS                       R9 R3 K14 ["left_hand_joint_number"]
       78 ORK                              R8 R9 K23 ["unknown"]
       79 SETTABLEKS                       R8 R7 K14 ["left_hand_joint_number"]
       81 GETTABLEKS                       R9 R3 K15 ["right_hand_joint_number"]
       83 ORK                              R8 R9 K23 ["unknown"]
       84 SETTABLEKS                       R8 R7 K15 ["right_hand_joint_number"]
       86 NAMECALL                         R4 R0 K6 ["warn"]
       88 CALL                             R4 3 0
       89 RETURN                           R0 0

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
       36 GETTABLEKS                       R6 R6 K11 ["FULL_BODY"]
       38 SETLIST                          R5 R6 1 [1]
       40 SETTABLEKS                       R5 R4 K12 ["categories"]
       42 GETIMPORT                        R5 K4 [require]
       44 GETTABLEKS                       R6 R0 K13 ["flags"]
       46 GETTABLEKS                       R6 R6 K14 ["getFFlagUGCValidateAQRiggingQuality"]
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K15 ["fflag"]
       51 DUPCLOSURE                       R5 K16 [PROTO_0]
       52 CAPTURE                          VAL R3
       53 SETTABLEKS                       R5 R4 K17 ["run"]
       55 RETURN                           R4 1
