PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["uploadEnum"]
        2 GETTABLEKS                       R2 R2 K1 ["assetType"]
        4 GETIMPORT                        R3 K5 [Enum.AssetType.IdleAnimation]
        6 JUMPIFEQ                         R2 R3 ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R1 K6 ["rootInstance"]
       11 NAMECALL                         R4 R3 K7 ["GetDescendants"]
       13 CALL                             R4 1 3
       14 FORGPREP                         R4
       15 LOADK                            R11 K8 ["NumberValue"]
       16 NAMECALL                         R9 R8 K9 ["IsA"]
       18 CALL                             R9 2 1
       19 JUMPIFNOT                        R9 ; [+37]
       20 GETTABLEKS                       R9 R8 K10 ["Name"]
       22 JUMPIFNOTEQKS                    R9 K11 ["Weight"] ; [+34]
       24 GETTABLEKS                       R9 R8 K12 ["Value"]
       26 LOADN                            R10 0
       27 JUMPIFNOTLE                      R9 R10 ; [+29]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R12 R12 K13 ["Keys"]
       32 GETTABLEKS                       R12 R12 K14 ["Animation_WeightNotPositive"]
       34 DUPTABLE                         R13 K17 [{"animationName", "weight"}]
       35 GETTABLEKS                       R15 R8 K18 ["Parent"]
       37 JUMPIFNOT                        R15 ; [+6]
       38 GETTABLEKS                       R14 R8 K18 ["Parent"]
       40 NAMECALL                         R14 R14 K19 ["GetFullName"]
       42 CALL                             R14 1 1
       43 JUMP                             ; [+1]
       44 LOADK                            R14 K20 ["Unknown"]
       45 SETTABLEKS                       R14 R13 K15 ["animationName"]
       47 FASTCALL1                        TOSTRING R9 ; [+3]
       48 MOVE                             R15 R9
       49 GETIMPORT                        R14 K22 [tostring]
       51 CALL                             R14 1 1
       52 SETTABLEKS                       R14 R13 K16 ["weight"]
       54 NAMECALL                         R10 R0 K23 ["fail"]
       56 CALL                             R10 3 0
       57 FORGLOOP                         R4 2 ; [-43]
       59 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidationAnimationPackSupport"]
       36 CALL                             R4 1 1
       37 NEWTABLE                         R5 8 0
       39 NEWTABLE                         R6 0 1
       41 GETTABLEKS                       R7 R2 K12 ["UploadCategory"]
       43 GETTABLEKS                       R7 R7 K13 ["ANIMATION"]
       45 SETLIST                          R6 R7 1 [1]
       47 SETTABLEKS                       R6 R5 K14 ["categories"]
       49 NEWTABLE                         R6 0 2
       51 GETTABLEKS                       R7 R2 K15 ["SharedDataMember"]
       53 GETTABLEKS                       R7 R7 K16 ["rootInstance"]
       55 GETTABLEKS                       R8 R2 K15 ["SharedDataMember"]
       57 GETTABLEKS                       R8 R8 K17 ["uploadEnum"]
       59 SETLIST                          R6 R7 2 [1]
       61 SETTABLEKS                       R6 R5 K18 ["requiredData"]
       63 SETTABLEKS                       R4 R5 K19 ["fflag"]
       65 NEWTABLE                         R6 0 0
       67 SETTABLEKS                       R6 R5 K20 ["expectedFailures"]
       69 NEWTABLE                         R6 0 1
       71 GETTABLEKS                       R7 R2 K21 ["ValidationModule"]
       73 GETTABLEKS                       R7 R7 K22 ["ExpectedRootSchema"]
       75 SETLIST                          R6 R7 1 [1]
       77 SETTABLEKS                       R6 R5 K23 ["prereqTests"]
       79 DUPCLOSURE                       R6 K24 [PROTO_0]
       80 CAPTURE                          VAL R3
       81 SETTABLEKS                       R6 R5 K25 ["run"]
       83 RETURN                           R5 1
