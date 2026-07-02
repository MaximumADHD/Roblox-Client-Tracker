MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K10 [{[1], ["NonePublishTags"], ["AttributePrefix"] = "RBX_R15Migrator_", ["PreviewSpeeds"], ["StatusTableData"], ["CrossPluginCommunicationName"] = "R15Migrator", ["CrossPluginCommunicationInstructions"], ["ScriptMenuActions"]}]
        2 DUPTABLE                         R1 K15 [{"AdapterTagging", "CharacterTagging", "AnimationTagging", "ScriptTagging"}]
        3 DUPTABLE                         R2 K20 [{["Name"] = "R15MigratorHasAdapter", ["Mask"] = 1}]
        4 SETTABLEKS                       R2 R1 K11 ["AdapterTagging"]
        6 DUPTABLE                         R2 K23 [{["Name"] = "R15MigratorUnconvertedCharacter", ["Mask"] = 2}]
        7 SETTABLEKS                       R2 R1 K12 ["CharacterTagging"]
        9 DUPTABLE                         R2 K26 [{["Name"] = "R15MigratorUnconvertedAnimation", ["Mask"] = 4}]
       10 SETTABLEKS                       R2 R1 K13 ["AnimationTagging"]
       12 DUPTABLE                         R2 K29 [{["Name"] = "R15MigratorUnconvertedScript", ["Mask"] = 8}]
       13 SETTABLEKS                       R2 R1 K14 ["ScriptTagging"]
       15 SETTABLEKS                       R1 R0 K0 ["PublishTags"]
       17 DUPTABLE                         R1 K32 [{["CharactersConvertedToR15Tag"] = "R15MigratorCharactersConvertedToR15"}]
       18 SETTABLEKS                       R1 R0 K1 ["NonePublishTags"]
       20 NEWTABLE                         R1 0 8
       22 LOADK                            R2 K33 [0.25]
       23 LOADK                            R3 K34 [0.5]
       24 LOADK                            R4 K35 [0.75]
       25 LOADN                            R5 1
       26 LOADK                            R6 K36 [1.25]
       27 LOADK                            R7 K37 [1.5]
       28 LOADK                            R8 K38 [1.75]
       29 LOADN                            R9 2
       30 SETLIST                          R1 R2 8 [1]
       32 SETTABLEKS                       R1 R0 K4 ["PreviewSpeeds"]
       34 DUPTABLE                         R1 K41 [{["TEXT_COLUMN_INDEX"] = 1, ["STATUS_COLUMN_INDEX"] = 2}]
       35 SETTABLEKS                       R1 R0 K5 ["StatusTableData"]
       37 DUPTABLE                         R1 K44 [{["Open"] = "Open", ["Published"] = "Published"}]
       38 SETTABLEKS                       R1 R0 K8 ["CrossPluginCommunicationInstructions"]
       40 DUPTABLE                         R1 K49 [{["GoToScript"] = "GoToScript", ["ShowInExplorer"] = "ShowInExplorer", ["RevertScript"] = "RevertScript", ["SelectAllSimilar"] = "SelectAllSimilar"}]
       41 SETTABLEKS                       R1 R0 K9 ["ScriptMenuActions"]
       43 DUPTABLE                         R1 K53 [{"TempId", "OriginalId", "Name", "Adapted"}]
       44 GETTABLEKS                       R3 R0 K2 ["AttributePrefix"]
       46 LOADK                            R4 K54 ["R15MigratorTempId"]
       47 CONCAT                           R2 R3 R4
       48 SETTABLEKS                       R2 R1 K50 ["TempId"]
       50 GETTABLEKS                       R3 R0 K2 ["AttributePrefix"]
       52 LOADK                            R4 K51 ["OriginalId"]
       53 CONCAT                           R2 R3 R4
       54 SETTABLEKS                       R2 R1 K51 ["OriginalId"]
       56 GETTABLEKS                       R3 R0 K2 ["AttributePrefix"]
       58 LOADK                            R4 K55 ["name"]
       59 CONCAT                           R2 R3 R4
       60 SETTABLEKS                       R2 R1 K16 ["Name"]
       62 GETTABLEKS                       R3 R0 K2 ["AttributePrefix"]
       64 LOADK                            R4 K52 ["Adapted"]
       65 CONCAT                           R2 R3 R4
       66 SETTABLEKS                       R2 R1 K52 ["Adapted"]
       68 SETTABLEKS                       R1 R0 K56 ["Attributes"]
       70 RETURN                           R0 1
