PROTO_0:
        0 GETIMPORT                        R1 K2 [Enum.CollisionFidelity]
        2 GETUPVAL                         R2 1
        3 GETTABLE                         R0 R1 R2
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETIMPORT                        R3 K4 [Enum.CollisionFidelity.Default]
        4 GETIMPORT                        R4 K6 [pcall]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          REF R3
        8 CAPTURE                          UPVAL U0
        9 CALL                             R4 1 0
       10 NAMECALL                         R4 R2 K7 ["GetDescendants"]
       12 CALL                             R4 1 1
       13 LOADN                            R7 1
       14 FASTCALL3                        TABLE_INSERT R4 R7 R2
       16 MOVE                             R6 R4
       17 MOVE                             R8 R2
       18 GETIMPORT                        R5 K10 [table.insert]
       20 CALL                             R5 3 0
       21 MOVE                             R5 R4
       22 LOADNIL                          R6
       23 LOADNIL                          R7
       24 FORGPREP                         R5
       25 LOADK                            R12 K11 ["MeshPart"]
       26 NAMECALL                         R10 R9 K12 ["IsA"]
       28 CALL                             R10 2 1
       29 JUMPIFNOT                        R10 ; [+22]
       30 GETTABLEKS                       R10 R9 K2 ["CollisionFidelity"]
       32 JUMPIFEQ                         R10 R3 ; [+19]
       34 GETUPVAL                         R12 1
       35 GETTABLEKS                       R12 R12 K13 ["Keys"]
       37 GETTABLEKS                       R12 R12 K14 ["CollisionFidelityWrong"]
       39 DUPTABLE                         R13 K17 [{"InstancePath", "ExpectedFidelity"}]
       40 NAMECALL                         R14 R9 K18 ["GetFullName"]
       42 CALL                             R14 1 1
       43 SETTABLEKS                       R14 R13 K15 ["InstancePath"]
       45 GETTABLEKS                       R14 R3 K19 ["Name"]
       47 SETTABLEKS                       R14 R13 K16 ["ExpectedFidelity"]
       49 NAMECALL                         R10 R0 K20 ["fail"]
       51 CALL                             R10 3 0
       52 FORGLOOP                         R5 2 ; [-28]
       54 CLOSEUPVALS                      R3
       55 RETURN                           R0 0

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
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagUGCValidateMigrateSchemaProperties"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K13 [game]
       39 LOADK                            R7 K14 ["UGCValidationBodyPartCollisionFidelity"]
       40 LOADK                            R8 K15 ["Default"]
       41 NAMECALL                         R5 R5 K16 ["DefineFastString"]
       43 CALL                             R5 3 1
       44 NEWTABLE                         R6 8 0
       46 NEWTABLE                         R7 0 2
       48 GETTABLEKS                       R8 R2 K17 ["UploadCategory"]
       50 GETTABLEKS                       R8 R8 K18 ["TORSO_AND_LIMBS"]
       52 GETTABLEKS                       R9 R2 K17 ["UploadCategory"]
       54 GETTABLEKS                       R9 R9 K19 ["DYNAMIC_HEAD"]
       56 SETLIST                          R7 R8 2 [1]
       58 SETTABLEKS                       R7 R6 K20 ["categories"]
       60 NEWTABLE                         R7 0 1
       62 GETTABLEKS                       R8 R2 K21 ["SharedDataMember"]
       64 GETTABLEKS                       R8 R8 K22 ["rootInstance"]
       66 SETLIST                          R7 R8 1 [1]
       68 SETTABLEKS                       R7 R6 K23 ["requiredData"]
       70 SETTABLEKS                       R4 R6 K24 ["fflag"]
       72 NEWTABLE                         R7 0 0
       74 SETTABLEKS                       R7 R6 K25 ["expectedFailures"]
       76 DUPCLOSURE                       R7 K26 [PROTO_1]
       77 CAPTURE                          VAL R5
       78 CAPTURE                          VAL R3
       79 SETTABLEKS                       R7 R6 K27 ["run"]
       81 RETURN                           R6 1
