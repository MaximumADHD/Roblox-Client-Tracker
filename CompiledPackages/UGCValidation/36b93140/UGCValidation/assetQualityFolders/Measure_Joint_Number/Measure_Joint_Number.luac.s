PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["aqsSummaryData"]
        2 GETTABLEKS                       R2 R2 K1 ["Measure_Joint_Number"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+11]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R5 R5 K2 ["Keys"]
        9 GETTABLEKS                       R5 R5 K3 ["AQSWarn_MissingData"]
       11 DUPTABLE                         R6 K5 [{["measureName"] = "Measure_Joint_Number"}]
       12 NAMECALL                         R3 R0 K6 ["warn"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0
       16 GETTABLEKS                       R3 R2 K7 ["full_body_mesh"]
       18 JUMPIFEQKNIL                     R3 ; [+5]
       20 GETTABLEKS                       R4 R3 K8 ["score"]
       22 JUMPIFNOTEQKNIL                  R4 ; [+11]
       24 GETUPVAL                         R6 0
       25 GETTABLEKS                       R6 R6 K2 ["Keys"]
       27 GETTABLEKS                       R6 R6 K3 ["AQSWarn_MissingData"]
       29 DUPTABLE                         R7 K5 [{["measureName"] = "Measure_Joint_Number"}]
       30 NAMECALL                         R4 R0 K6 ["warn"]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0
       34 GETTABLEKS                       R5 R3 K8 ["score"]
       36 FASTCALL1                        TONUMBER R5 ; [+2]
       37 GETIMPORT                        R4 K10 [tonumber]
       39 CALL                             R4 1 1
       40 JUMPIFEQKN                       R4 K11 [100] ; [+42]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R6 R6 K2 ["Keys"]
       45 GETTABLEKS                       R6 R6 K12 ["AQSWarn_JointNumber"]
       47 DUPTABLE                         R7 K16 [{"score", "joint_number", "left_hand_joint_number", "right_hand_joint_number"}]
       48 GETTABLEKS                       R12 R3 K8 ["score"]
       50 FASTCALL1                        TONUMBER R12 ; [+2]
       51 GETIMPORT                        R11 K10 [tonumber]
       53 CALL                             R11 1 1
       54 ORK                              R10 R11 K17 [0]
       55 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       56 GETIMPORT                        R9 K20 [math.floor]
       58 CALL                             R9 1 1
       59 FASTCALL1                        TOSTRING R9 ; [+2]
       60 GETIMPORT                        R8 K22 [tostring]
       62 CALL                             R8 1 1
       63 SETTABLEKS                       R8 R7 K8 ["score"]
       65 GETTABLEKS                       R9 R3 K13 ["joint_number"]
       67 ORK                              R8 R9 K23 ["unknown"]
       68 SETTABLEKS                       R8 R7 K13 ["joint_number"]
       70 GETTABLEKS                       R9 R3 K14 ["left_hand_joint_number"]
       72 ORK                              R8 R9 K23 ["unknown"]
       73 SETTABLEKS                       R8 R7 K14 ["left_hand_joint_number"]
       75 GETTABLEKS                       R9 R3 K15 ["right_hand_joint_number"]
       77 ORK                              R8 R9 K23 ["unknown"]
       78 SETTABLEKS                       R8 R7 K15 ["right_hand_joint_number"]
       80 NAMECALL                         R4 R0 K6 ["warn"]
       82 CALL                             R4 3 0
       83 RETURN                           R0 0

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
