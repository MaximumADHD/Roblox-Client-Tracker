PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["BANNED_NAMES"]
        5 GETTABLEKS                       R5 R2 K2 ["Name"]
        7 GETTABLE                         R3 R4 R5
        8 JUMPIFNOT                        R3 ; [+14]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K3 ["Keys"]
       12 GETTABLEKS                       R5 R5 K4 ["InstanceTreeBannedName"]
       14 DUPTABLE                         R6 K6 [{"InstancePath"}]
       15 NAMECALL                         R7 R2 K7 ["GetFullName"]
       17 CALL                             R7 1 1
       18 SETTABLEKS                       R7 R6 K5 ["InstancePath"]
       20 NAMECALL                         R3 R0 K8 ["fail"]
       22 CALL                             R3 3 0
       23 NAMECALL                         R3 R2 K9 ["GetDescendants"]
       25 CALL                             R3 1 3
       26 FORGPREP                         R3
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K10 ["BANNED_CLASS_NAMES"]
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 FORGPREP                         R8
       33 MOVE                             R15 R12
       34 NAMECALL                         R13 R7 K11 ["IsA"]
       36 CALL                             R13 2 1
       37 JUMPIFNOT                        R13 ; [+16]
       38 GETUPVAL                         R15 1
       39 GETTABLEKS                       R15 R15 K3 ["Keys"]
       41 GETTABLEKS                       R15 R15 K12 ["InstanceTreeBannedClass"]
       43 DUPTABLE                         R16 K14 [{"InstancePath", "ClassName"}]
       44 NAMECALL                         R17 R7 K7 ["GetFullName"]
       46 CALL                             R17 1 1
       47 SETTABLEKS                       R17 R16 K5 ["InstancePath"]
       49 SETTABLEKS                       R12 R16 K13 ["ClassName"]
       51 NAMECALL                         R13 R0 K8 ["fail"]
       53 CALL                             R13 3 0
       54 FORGLOOP                         R8 2 ; [-22]
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R9 R9 K1 ["BANNED_NAMES"]
       59 GETTABLEKS                       R10 R7 K2 ["Name"]
       61 GETTABLE                         R8 R9 R10
       62 JUMPIFNOT                        R8 ; [+14]
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R10 R10 K3 ["Keys"]
       66 GETTABLEKS                       R10 R10 K4 ["InstanceTreeBannedName"]
       68 DUPTABLE                         R11 K6 [{"InstancePath"}]
       69 NAMECALL                         R12 R7 K7 ["GetFullName"]
       71 CALL                             R12 1 1
       72 SETTABLEKS                       R12 R11 K5 ["InstancePath"]
       74 NAMECALL                         R8 R0 K8 ["fail"]
       76 CALL                             R8 3 0
       77 FORGLOOP                         R3 2 ; [-51]
       79 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R3 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R4 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       32 GETTABLEKS                       R5 R5 K10 ["ErrorSourceStrings"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["flags"]
       39 GETTABLEKS                       R6 R6 K12 ["getFFlagUGCValidateMigrateSchemaProperties"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 8 0
       44 NEWTABLE                         R7 0 4
       46 GETTABLEKS                       R8 R3 K13 ["UploadCategory"]
       48 GETTABLEKS                       R8 R8 K14 ["LAYERED_CLOTHING"]
       50 GETTABLEKS                       R9 R3 K13 ["UploadCategory"]
       52 GETTABLEKS                       R9 R9 K15 ["RIGID_ACCESSORY"]
       54 GETTABLEKS                       R10 R3 K13 ["UploadCategory"]
       56 GETTABLEKS                       R10 R10 K16 ["EMOTE_ANIMATION"]
       58 GETTABLEKS                       R11 R3 K13 ["UploadCategory"]
       60 GETTABLEKS                       R11 R11 K17 ["MAKEUP"]
       62 SETLIST                          R7 R8 4 [1]
       64 SETTABLEKS                       R7 R6 K18 ["categories"]
       66 NEWTABLE                         R7 0 1
       68 GETTABLEKS                       R8 R3 K19 ["SharedDataMember"]
       70 GETTABLEKS                       R8 R8 K20 ["rootInstance"]
       72 SETLIST                          R7 R8 1 [1]
       74 SETTABLEKS                       R7 R6 K21 ["requiredData"]
       76 SETTABLEKS                       R5 R6 K22 ["fflag"]
       78 NEWTABLE                         R7 0 0
       80 SETTABLEKS                       R7 R6 K23 ["expectedFailures"]
       82 DUPCLOSURE                       R7 K24 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R7 R6 K25 ["run"]
       87 RETURN                           R6 1
