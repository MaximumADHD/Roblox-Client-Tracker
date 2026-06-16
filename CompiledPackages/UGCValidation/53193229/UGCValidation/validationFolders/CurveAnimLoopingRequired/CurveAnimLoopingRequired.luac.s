PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R2 K1 ["assetType"]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.JumpAnimation]
        6 JUMPIFNOTEQ                      R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R1 K6 ["curveAnimations"]
       11 LOADNIL                          R3
       12 LOADNIL                          R4
       13 FORGPREP                         R2
       14 GETTABLEKS                       R7 R6 K7 ["Loop"]
       16 JUMPIF                           R7 ; [+14]
       17 GETUPVAL                         R9 0
       18 GETTABLEKS                       R9 R9 K8 ["Keys"]
       20 GETTABLEKS                       R9 R9 K9 ["CurveAnim_LoopingNotEnabled"]
       22 DUPTABLE                         R10 K11 [{"animationName"}]
       23 NAMECALL                         R11 R6 K12 ["GetFullName"]
       25 CALL                             R11 1 1
       26 SETTABLEKS                       R11 R10 K10 ["animationName"]
       28 NAMECALL                         R7 R0 K13 ["fail"]
       30 CALL                             R7 3 0
       31 FORGLOOP                         R2 2 ; [-18]
       33 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateCurveAnimLoopingRequired"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 8 0
       39 NEWTABLE                         R6 0 1
       41 GETTABLEKS                       R7 R2 K12 ["UploadCategory"]
       43 GETTABLEKS                       R7 R7 K13 ["ANIMATION"]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K14 ["categories"]
       49 NEWTABLE                         R6 0 2
       51 GETTABLEKS                       R7 R2 K15 ["SharedDataMember"]
       53 GETTABLEKS                       R7 R7 K16 ["curveAnimations"]
       55 GETTABLEKS                       R8 R2 K15 ["SharedDataMember"]
       57 GETTABLEKS                       R8 R8 K17 ["uploadEnum"]
       59 SETLIST                          R6 R7 2 [1]
       61 SETTABLEKS                       R6 R5 K18 ["requiredData"]
       63 SETTABLEKS                       R4 R5 K19 ["fflag"]
       65 NEWTABLE                         R6 0 0
       67 SETTABLEKS                       R6 R5 K20 ["expectedFailures"]
       69 NEWTABLE                         R6 0 1
       71 GETTABLEKS                       R7 R2 K21 ["ValidationModule"]
       73 GETTABLEKS                       R7 R7 K22 ["CurveAnimDataAvailable"]
       75 SETLIST                          R6 R7 1 [1]
       77 SETTABLEKS                       R6 R5 K23 ["prereqTests"]
       79 DUPCLOSURE                       R6 K24 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R6 R5 K25 ["run"]
       83 RETURN                           R5 1
