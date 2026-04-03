PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["rootInstance"]
        2 NAMECALL                         R3 R2 K1 ["GetDescendants"]
        4 CALL                             R3 1 1
        5 FASTCALL2                        TABLE_INSERT R3 R2 ; [+5]
        7 MOVE                             R5 R3
        8 MOVE                             R6 R2
        9 GETIMPORT                        R4 K4 [table.insert]
       11 CALL                             R4 2 0
       12 NEWTABLE                         R4 0 0
       14 MOVE                             R5 R3
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 GETUPVAL                         R11 0
       19 MOVE                             R13 R9
       20 NAMECALL                         R11 R11 K5 ["GetTags"]
       22 CALL                             R11 2 1
       23 LENGTH                           R10 R11
       24 LOADN                            R11 0
       25 JUMPIFNOTLT                      R11 R10 ; [+9]
       27 MOVE                             R11 R4
       28 NAMECALL                         R12 R9 K6 ["GetFullName"]
       30 CALL                             R12 1 -1
       31 FASTCALL                         TABLE_INSERT ; [+2]
       32 GETIMPORT                        R10 K4 [table.insert]
       34 CALL                             R10 -1 0
       35 FORGLOOP                         R5 2 ; [-18]
       37 LENGTH                           R5 R4
       38 LOADN                            R6 0
       39 JUMPIFNOTLT                      R6 R5 ; [+17]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K7 ["Keys"]
       44 GETTABLEKS                       R7 R8 K8 ["InstanceTagsFound"]
       46 DUPTABLE                         R8 K10 [{"ProblematicDescendantPaths"}]
       47 GETIMPORT                        R9 K12 [table.concat]
       49 MOVE                             R10 R4
       50 LOADK                            R11 K13 [", "]
       51 CALL                             R9 2 1
       52 SETTABLEKS                       R9 R8 K9 ["ProblematicDescendantPaths"]
       54 NAMECALL                         R5 R0 K14 ["fail"]
       56 CALL                             R5 3 0
       57 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K8 ["validationSystem"]
       25 GETTABLEKS                       R4 R5 K9 ["ValidationEnums"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K11 [game]
       30 LOADK                            R6 K12 ["CollectionService"]
       31 NAMECALL                         R4 R4 K13 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R7 R0 K8 ["validationSystem"]
       38 GETTABLEKS                       R6 R7 K14 ["ErrorSourceStrings"]
       40 CALL                             R5 1 1
       41 NEWTABLE                         R6 4 0
       43 GETTABLEKS                       R7 R1 K15 ["AllAssetUploadCategories"]
       45 SETTABLEKS                       R7 R6 K16 ["categories"]
       47 NEWTABLE                         R7 0 1
       49 GETTABLEKS                       R9 R3 K17 ["SharedDataMember"]
       51 GETTABLEKS                       R8 R9 K18 ["rootInstance"]
       53 SETLIST                          R7 R8 1 [1]
       55 SETTABLEKS                       R7 R6 K19 ["requiredData"]
       57 NEWTABLE                         R7 0 2
       59 LOADK                            R8 K20 ["Asset_EF_TaggedJacket"]
       60 LOADK                            R9 K21 ["Bundle_EF_BodyWithLLLTagged.LeftLeg"]
       61 SETLIST                          R7 R8 2 [1]
       63 SETTABLEKS                       R7 R6 K22 ["expectedFailures"]
       65 DUPCLOSURE                       R7 K23 [PROTO_0]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 SETTABLEKS                       R7 R6 K24 ["run"]
       70 RETURN                           R6 1
