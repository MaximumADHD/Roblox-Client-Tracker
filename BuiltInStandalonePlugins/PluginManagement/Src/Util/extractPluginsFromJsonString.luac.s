PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["extractPluginsFromJsonString is deprecated with FFlagStudioCacheExtractedInstalledPlugins"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 JUMPIFEQKNIL                     R0 ; [+3]
       11 JUMPIFNOTEQKS                    R0 K3 [""] ; [+4]
       13 NEWTABLE                         R1 0 0
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 1
       17 MOVE                             R3 R0
       18 NAMECALL                         R1 R1 K4 ["JSONDecode"]
       20 CALL                             R1 2 1
       21 NEWTABLE                         R2 0 0
       23 GETIMPORT                        R3 K6 [pairs]
       25 MOVE                             R4 R1
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 NEWTABLE                         R8 8 0
       30 SETTABLEKS                       R6 R8 K7 ["assetId"]
       32 GETTABLEKS                       R9 R7 K8 ["Enabled"]
       34 SETTABLEKS                       R9 R8 K9 ["enabled"]
       36 GETTABLEKS                       R9 R7 K10 ["AssetVersion"]
       38 SETTABLEKS                       R9 R8 K11 ["installedVersion"]
       40 GETTABLEKS                       R9 R7 K12 ["Moderated"]
       42 SETTABLEKS                       R9 R8 K13 ["isModerated"]
       44 GETTABLEKS                       R9 R7 K14 ["AutoUpdate"]
       46 SETTABLEKS                       R9 R8 K15 ["autoUpdateEnabled"]
       48 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       50 MOVE                             R10 R2
       51 MOVE                             R11 R8
       52 GETIMPORT                        R9 K18 [table.insert]
       54 CALL                             R9 2 0
       55 FORGLOOP                         R3 2 ; [-28]
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioCacheExtractedInstalledPlugins"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K9 [game]
       20 LOADK                            R4 K10 ["HttpService"]
       21 NAMECALL                         R2 R2 K11 ["GetService"]
       23 CALL                             R2 2 1
       24 DUPCLOSURE                       R3 K12 [PROTO_0]
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R2
       27 RETURN                           R3 1
