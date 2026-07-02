PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 1
        3 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
        5 MOVE                             R4 R2
        6 MOVE                             R5 R0
        7 GETIMPORT                        R3 K3 [table.insert]
        9 CALL                             R3 2 0
       10 MOVE                             R3 R2
       11 LOADNIL                          R4
       12 LOADNIL                          R5
       13 FORGPREP                         R3
       14 GETUPVAL                         R9 0
       15 MOVE                             R11 R7
       16 NAMECALL                         R9 R9 K4 ["GetTags"]
       18 CALL                             R9 2 1
       19 LENGTH                           R8 R9
       20 LOADN                            R9 0
       21 JUMPIFNOTLT                      R9 R8 ; [+9]
       23 MOVE                             R9 R1
       24 NAMECALL                         R10 R7 K5 ["GetFullName"]
       26 CALL                             R10 1 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R8 K3 [table.insert]
       30 CALL                             R8 -1 0
       31 FORGLOOP                         R3 2 ; [-18]
       33 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R1 K0 ["rootInstance"]
        5 MOVE                             R5 R2
        6 CALL                             R3 2 0
        7 GETUPVAL                         R3 1
        8 CALL                             R3 0 1
        9 JUMPIFNOT                        R3 ; [+32]
       10 GETTABLEKS                       R3 R1 K1 ["hsrAssets"]
       12 FASTCALL1                        TYPE R3 ; [+3]
       13 MOVE                             R5 R3
       14 GETIMPORT                        R4 K3 [type]
       16 CALL                             R4 1 1
       17 JUMPIFNOTEQKS                    R4 K4 ["table"] ; [+24]
       19 MOVE                             R4 R3
       20 LOADNIL                          R5
       21 LOADNIL                          R6
       22 FORGPREP                         R4
       23 FASTCALL1                        TYPE R8 ; [+3]
       24 MOVE                             R10 R8
       25 GETIMPORT                        R9 K3 [type]
       27 CALL                             R9 1 1
       28 JUMPIFNOTEQKS                    R9 K4 ["table"] ; [+11]
       30 MOVE                             R9 R8
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 FORGPREP                         R9
       34 GETUPVAL                         R14 0
       35 MOVE                             R15 R13
       36 MOVE                             R16 R2
       37 CALL                             R14 2 0
       38 FORGLOOP                         R9 2 ; [-5]
       40 FORGLOOP                         R4 2 ; [-18]
       42 LENGTH                           R3 R2
       43 LOADN                            R4 0
       44 JUMPIFNOTLT                      R4 R3 ; [+17]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R5 R5 K5 ["Keys"]
       49 GETTABLEKS                       R5 R5 K6 ["InstanceTagsFound"]
       51 DUPTABLE                         R6 K8 [{"ProblematicDescendantPaths"}]
       52 GETIMPORT                        R7 K10 [table.concat]
       54 MOVE                             R8 R2
       55 LOADK                            R9 K11 [", "]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K7 ["ProblematicDescendantPaths"]
       59 NAMECALL                         R3 R0 K12 ["fail"]
       61 CALL                             R3 3 0
       62 RETURN                           R0 0

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
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["CollectionService"]
       31 NAMECALL                         R4 R4 K13 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K8 ["validationSystem"]
       38 GETTABLEKS                       R6 R6 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K4 [require]
       43 GETTABLEKS                       R7 R0 K15 ["flags"]
       45 GETTABLEKS                       R7 R7 K16 ["getFFlagUGCValidateMigrateSchemaProperties"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 GETTABLEKS                       R8 R1 K17 ["AllAssetUploadCategories"]
       52 SETTABLEKS                       R8 R7 K18 ["categories"]
       54 NEWTABLE                         R8 0 1
       56 GETTABLEKS                       R9 R3 K19 ["SharedDataMember"]
       58 GETTABLEKS                       R9 R9 K20 ["rootInstance"]
       60 SETLIST                          R8 R9 1 [1]
       62 SETTABLEKS                       R8 R7 K21 ["requiredData"]
       64 NEWTABLE                         R8 0 2
       66 LOADK                            R9 K22 ["Asset_EF_TaggedJacket"]
       67 LOADK                            R10 K23 ["Bundle_EF_BodyWithLLLTagged.LeftLeg"]
       68 SETLIST                          R8 R9 2 [1]
       70 SETTABLEKS                       R8 R7 K24 ["expectedFailures"]
       72 DUPCLOSURE                       R8 K25 [PROTO_0]
       73 CAPTURE                          VAL R4
       74 DUPCLOSURE                       R9 K26 [PROTO_1]
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R5
       78 SETTABLEKS                       R9 R7 K27 ["run"]
       80 RETURN                           R7 1
