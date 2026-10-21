PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["FFlag"] ; [+8]
        2 MODK                             R3 R1 K1 [2]
        3 JUMPIFNOTEQKN                    R3 K2 [0] ; [+3]
        5 LOADK                            R2 K3 ["true"]
        6 RETURN                           R2 1
        7 LOADK                            R2 K4 ["false"]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R0 K5 ["FInt"] ; [+7]
       11 MODK                             R3 R1 K6 [500]
       12 FASTCALL1                        TOSTRING R3 ; [+2]
       13 GETIMPORT                        R2 K8 [tostring]
       15 CALL                             R2 1 1
       16 RETURN                           R2 1
       17 JUMPIFNOTEQKS                    R0 K9 ["FLog"] ; [+19]
       19 NEWTABLE                         R2 0 4
       21 LOADK                            R3 K10 ["Warning"]
       22 LOADK                            R4 K11 ["Info"]
       23 LOADK                            R5 K12 ["Error"]
       24 LOADK                            R6 K13 ["Debug"]
       25 SETLIST                          R2 R3 4 [1]
       27 LOADK                            R3 K14 ["%*,%*"]
       28 LENGTH                           R8 R2
       29 MOD                              R7 R1 R8
       30 ADDK                             R6 R7 K15 [1]
       31 GETTABLE                         R5 R2 R6
       32 MODK                             R6 R1 K16 [8]
       33 NAMECALL                         R3 R3 K17 ["format"]
       35 CALL                             R3 3 1
       36 RETURN                           R3 1
       37 LOADK                            R2 K18 ["value%*"]
       38 MODK                             R4 R1 K19 [100]
       39 NAMECALL                         R2 R2 K17 ["format"]
       41 CALL                             R2 2 1
       42 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.create]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 LOADN                            R4 1
        5 MOVE                             R2 R0
        6 LOADN                            R3 1
        7 FORNPREP                         R2
        8 GETUPVAL                         R6 0
        9 GETUPVAL                         R10 0
       10 LENGTH                           R9 R10
       11 MOD                              R8 R4 R9
       12 ADDK                             R7 R8 K3 [1]
       13 GETTABLE                         R5 R6 R7
       14 DUPTABLE                         R6 K8 [{"name", "type", "valueType", "default"}]
       15 LOADK                            R7 K9 ["%*%*%*"]
       16 GETUPVAL                         R10 1
       17 SUBK                             R13 R4 K3 [1]
       18 GETUPVAL                         R15 1
       19 LENGTH                           R14 R15
       20 MOD                              R12 R13 R14
       21 ADDK                             R11 R12 K3 [1]
       22 GETTABLE                         R9 R10 R11
       23 GETUPVAL                         R11 1
       24 MULK                             R14 R4 K10 [3]
       25 GETUPVAL                         R16 1
       26 LENGTH                           R15 R16
       27 MOD                              R13 R14 R15
       28 ADDK                             R12 R13 K3 [1]
       29 GETTABLE                         R10 R11 R12
       30 MOVE                             R11 R4
       31 NAMECALL                         R7 R7 K11 ["format"]
       33 CALL                             R7 4 1
       34 SETTABLEKS                       R7 R6 K4 ["name"]
       36 GETUPVAL                         R8 2
       37 GETUPVAL                         R12 2
       38 LENGTH                           R11 R12
       39 MOD                              R10 R4 R11
       40 ADDK                             R9 R10 K3 [1]
       41 GETTABLE                         R7 R8 R9
       42 SETTABLEKS                       R7 R6 K5 ["type"]
       44 SETTABLEKS                       R5 R6 K6 ["valueType"]
       46 GETUPVAL                         R7 3
       47 MOVE                             R8 R5
       48 MOVE                             R9 R4
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K7 ["default"]
       52 SETTABLE                         R6 R1 R4
       53 FORNLOOP                         R2
       54 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["largeList"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 LOADN                            R1 20000
        6 CALL                             R0 1 1
        7 RETURN                           R0 1
        8 GETUPVAL                         R0 2
        9 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["JSONEncode"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["useState"]
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["useMemo"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NEWTABLE                         R6 0 1
       16 GETTABLEKS                       R7 R1 K3 ["largeList"]
       18 SETLIST                          R6 R7 1 [1]
       20 CALL                             R4 2 1
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R3
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K2 ["useMemo"]
       26 NEWCLOSURE                       R7 P2
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          VAL R2
       29 NEWTABLE                         R8 0 1
       31 MOVE                             R9 R2
       32 SETLIST                          R8 R9 1 [1]
       34 CALL                             R6 2 1
       35 GETUPVAL                         R7 0
       36 GETTABLEKS                       R7 R7 K4 ["createElement"]
       38 GETUPVAL                         R8 5
       39 DUPTABLE                         R9 K7 [{["tag"] = "auto-y size-full-0 bg-surface-0 radius-medium col gap-medium"}]
       40 DUPTABLE                         R10 K10 [{"FlagEditor", "Overrides"}]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R11 R11 K4 ["createElement"]
       44 GETUPVAL                         R12 6
       45 DUPTABLE                         R13 K15 [{"flags", "overrides", "saveOverrides", "Size"}]
       46 SETTABLEKS                       R4 R13 K11 ["flags"]
       48 SETTABLEKS                       R2 R13 K12 ["overrides"]
       50 SETTABLEKS                       R5 R13 K13 ["saveOverrides"]
       52 GETIMPORT                        R14 K18 [UDim2.new]
       54 LOADN                            R15 1
       55 LOADN                            R16 0
       56 LOADN                            R17 0
       57 LOADN                            R18 300
       58 CALL                             R14 4 1
       59 SETTABLEKS                       R14 R13 K14 ["Size"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K8 ["FlagEditor"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K4 ["createElement"]
       67 GETUPVAL                         R12 5
       68 DUPTABLE                         R13 K20 [{["tag"] = "auto-y size-full-0 col gap-small padding-medium"}]
       69 DUPTABLE                         R14 K23 [{"Header", "Text"}]
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K4 ["createElement"]
       73 GETUPVAL                         R16 7
       74 DUPTABLE                         R17 K25 [{["tag"] = "auto-y size-full-0 text-align-x-left content-emphasis text-heading-small", ["Text"] = "Overrides"}]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K21 ["Header"]
       78 GETUPVAL                         R15 0
       79 GETTABLEKS                       R15 R15 K4 ["createElement"]
       81 GETUPVAL                         R16 7
       82 DUPTABLE                         R17 K27 [{["tag"] = "auto-y size-full-0 text-align-x-left content-default text-body-medium text-wrap", ["Text"]}]
       83 SETTABLEKS                       R6 R17 K22 ["Text"]
       85 CALL                             R15 2 1
       86 SETTABLEKS                       R15 R14 K22 ["Text"]
       88 CALL                             R11 3 1
       89 SETTABLEKS                       R11 R10 K9 ["Overrides"]
       91 CALL                             R7 3 -1
       92 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["FlagEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["React"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R2 K12 ["Foundation"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K13 ["Text"]
       27 GETTABLEKS                       R6 R4 K14 ["View"]
       29 GETIMPORT                        R7 K10 [require]
       31 GETTABLEKS                       R8 R1 K15 ["FlagEditorView"]
       33 CALL                             R7 1 1
       34 LOADK                            R10 K16 ["[{\"name\":\"BunnyHopSpeedMultiplier\",\"default\":\"2\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"FoxTailWaggingEnabled\",\"default\":\"true\",\"type\":\"Static\",\"valueType\":\"FFlag\"},\n{\"name\":\"OwlNightVisionDistance\",\"default\":\"200\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"SquirrelNutCollectionLimit\",\"default\":\"50\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"HedgehogSpikesProtectionLevel\",\"default\":\"3\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"DeerAntlerGrowthRate\",\"default\":\"1\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"BeaverDamWaterproofing\",\"default\":\"true\",\"type\":\"Static\",\"valueType\":\"FFlag\"},\n{\"name\":\"RaccoonNighttimeForagingBonus\",\"default\":\"false\",\"type\":\"Dynamic\",\"valueType\":\"FFlag\"},\n{\"name\":\"MouseCheeseSensitivityFactor\",\"default\":\"3\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"BearHibernationEnergyConservation\",\"default\":\"80\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"FrogJumpHeightMultiplier\",\"default\":\"2\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"WolfPackFormationEnabled\",\"default\":\"true\",\"type\":\"Static\",\"valueType\":\"FFlag\"},\n{\"name\":\"BadgerBurrowingSpeed\",\"default\":\"1\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"OwlHootingVolume\",\"default\":\"Warning,3\",\"type\":\"Dynamic\",\"valueType\":\"FLog\"},\n{\"name\":\"RabbitWarrenMaxCapacity\",\"default\":\"12\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"WoodpeckerTreeDamagePerPeck\",\"default\":\"5\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"OtterWaterSlideAcceleration\",\"default\":\"1\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"SkunkSprayEffectRadius\",\"default\":\"15\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"ChipmunkCheekStorageCapacity\",\"default\":\"8\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"MoleDiggingDepthLimit\",\"default\":\"25\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"PorcupineQuillRegenerationTime\",\"default\":\"120\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"FoxStealthModeVisibility\",\"default\":\"1\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"SquirrelMemoryMapEnabled\",\"default\":\"false\",\"type\":\"Static\",\"valueType\":\"FFlag\"},\n{\"name\":\"WeaselSneakSpeedBoost\",\"default\":\"1\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"DeerAlertSignalDistance\",\"default\":\"100\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"BeeFriendlyForestEnabled\",\"default\":\"true\",\"type\":\"Dynamic\",\"valueType\":\"FFlag\"},\n{\"name\":\"MapleTreeSapProductionRate\",\"default\":\"1\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"WoodlandSongbirdsEnabled\",\"default\":\"true\",\"type\":\"Dynamic\",\"valueType\":\"FFlag\"},\n{\"name\":\"TurtleShellDefenseRating\",\"default\":\"90\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"MosquitoBiteFrequency\",\"default\":\"Warning,4\",\"type\":\"Dynamic\",\"valueType\":\"FLog\"},\n{\"name\":\"ButterflyWingFlutterRate\",\"default\":\"8\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"LadybugSpotRandomization\",\"default\":\"true\",\"type\":\"Dynamic\",\"valueType\":\"FFlag\"},\n{\"name\":\"FireflyLightIntensity\",\"default\":\"1\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"AcornGrowthDaysRequired\",\"default\":\"25\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"PineTreeConeDropRate\",\"default\":\"1\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"BlueberryBushHarvestYield\",\"default\":\"12\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"MossCushionComfortRating\",\"default\":\"7\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"WoodlandStreamFlowRate\",\"default\":\"3\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"MorningDewEffectDuration\",\"default\":\"120\",\"type\":\"Static\",\"valueType\":\"FInt\"},\n{\"name\":\"SunlightThroughLeavesIntensity\",\"default\":\"1\",\"type\":\"Dynamic\",\"valueType\":\"FInt\"},\n{\"name\":\"ForestFloorRustle\",\"default\":\"Warning,0\",\"type\":\"Static\",\"valueType\":\"FLog\"},\n{\"name\":\"DynamicTrailSignText\",\"default\":\"follow the creek\",\"type\":\"Dynamic\",\"valueType\":\"FString\"},\n{\"name\":\"SyncForestCanopyRefresh\",\"default\":\"true\",\"type\":\"Sync\",\"valueType\":\"FFlag\"},\n{\"name\":\"SyncPackSize\",\"default\":\"4\",\"type\":\"Sync\",\"valueType\":\"FInt\"},\n{\"name\":\"SyncWoodlandBanner\",\"default\":\"stay on the path\",\"type\":\"Sync\",\"valueType\":\"FString\"},\n{\"name\":\"CricketChirpVolume\",\"default\":\"Warning,2\",\"type\":\"Sync\",\"valueType\":\"FLog\"},\n{\"name\":\"WoodlandSignText\",\"default\":\"Welcome to the woods\",\"type\":\"Static\",\"valueType\":\"FString\"},\n{\"name\":\"UnknownCreatureBehavior\",\"default\":\"mystery\",\"type\":\"Invalid\",\"valueType\":\"FString\"}]\n"]
       35 NAMECALL                         R8 R0 K17 ["JSONDecode"]
       37 CALL                             R8 2 1
       38 NEWTABLE                         R9 0 10
       40 LOADK                            R10 K18 ["Enable"]
       41 LOADK                            R11 K19 ["Local"]
       42 LOADK                            R12 K20 ["Studio"]
       43 LOADK                            R13 K21 ["Debug"]
       44 LOADK                            R14 K22 ["Render"]
       45 LOADK                            R15 K23 ["Network"]
       46 LOADK                            R16 K24 ["Physics"]
       47 LOADK                            R17 K25 ["Audio"]
       48 LOADK                            R18 K26 ["Avatar"]
       49 LOADK                            R19 K27 ["Terrain"]
       50 SETLIST                          R9 R10 10 [1]
       52 NEWTABLE                         R10 0 3
       54 LOADK                            R11 K28 ["Static"]
       55 LOADK                            R12 K29 ["Dynamic"]
       56 LOADK                            R13 K30 ["Sync"]
       57 SETLIST                          R10 R11 3 [1]
       59 NEWTABLE                         R11 0 4
       61 LOADK                            R12 K31 ["FFlag"]
       62 LOADK                            R13 K32 ["FInt"]
       63 LOADK                            R14 K33 ["FString"]
       64 LOADK                            R15 K34 ["FLog"]
       65 SETLIST                          R11 R12 4 [1]
       67 DUPCLOSURE                       R12 K35 [PROTO_0]
       68 DUPCLOSURE                       R13 K36 [PROTO_1]
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R10
       72 CAPTURE                          VAL R12
       73 DUPTABLE                         R14 K48 [{["DFIntDeerAntlerGrowthRate"] = "0.25", ["FFlagBeaverDamWaterproofing"] = "true", ["DFIntBunnyHopSpeedMultiplier"] = "9", ["FLogForestFloorRustle"] = "Verbose,6", ["XFlagFoxTailWaggingEnabled"] = "true", ["DFIntMossyLogRollSpeed"] = "5"}]
       74 DUPTABLE                         R15 K54 [{["name"] = "FlagEditor", ["summary"] = "A component for managing feature flags and their overrides.", ["story"], ["controls"]}]
       75 DUPCLOSURE                       R16 K55 [PROTO_5]
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R13
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R16 R15 K52 ["story"]
       86 DUPTABLE                         R16 K58 [{["largeList"] = False}]
       87 SETTABLEKS                       R16 R15 K53 ["controls"]
       89 RETURN                           R15 1
