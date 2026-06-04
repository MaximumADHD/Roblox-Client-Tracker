PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["normalize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+17]
        8 MOVE                             R3 R2
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 FORGPREP                         R3
       12 GETIMPORT                        R10 K2 [game]
       14 NAMECALL                         R8 R6 K3 ["IsDescendantOf"]
       16 CALL                             R8 2 1
       17 JUMPIFNOT                        R8 ; [+5]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K4 ["reimportInstance"]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 0
       23 FORGLOOP                         R3 2 ; [-12]
       25 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R0 ; [+8]
        1 DUPTABLE                         R1 K2 [{"Watchable", "IsWatched"}]
        2 LOADB                            R2 0
        3 SETTABLEKS                       R2 R1 K0 ["Watchable"]
        5 LOADB                            R2 0
        6 SETTABLEKS                       R2 R1 K1 ["IsWatched"]
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["getConfigFromInstance"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 2
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETTABLEKS                       R3 R2 K4 ["filepath"]
       17 JUMPIF                           R3 ; [+8]
       18 DUPTABLE                         R3 K2 [{"Watchable", "IsWatched"}]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K0 ["Watchable"]
       22 LOADB                            R4 0
       23 SETTABLEKS                       R4 R3 K1 ["IsWatched"]
       25 RETURN                           R3 1
       26 GETUPVAL                         R3 1
       27 GETTABLEKS                       R3 R3 K5 ["normalize"]
       29 GETTABLEKS                       R4 R2 K4 ["filepath"]
       31 CALL                             R3 1 1
       32 GETUPVAL                         R5 2
       33 GETTABLE                         R4 R5 R3
       34 JUMPIF                           R4 ; [+10]
       35 DUPTABLE                         R5 K6 [{"Watchable", "IsWatched", "filepath"}]
       36 LOADB                            R6 1
       37 SETTABLEKS                       R6 R5 K0 ["Watchable"]
       39 LOADB                            R6 0
       40 SETTABLEKS                       R6 R5 K1 ["IsWatched"]
       42 SETTABLEKS                       R3 R5 K4 ["filepath"]
       44 RETURN                           R5 1
       45 DUPTABLE                         R5 K6 [{"Watchable", "IsWatched", "filepath"}]
       46 LOADB                            R6 1
       47 SETTABLEKS                       R6 R5 K0 ["Watchable"]
       49 GETTABLE                         R7 R4 R0
       50 ORK                              R6 R7 K7 [False]
       51 SETTABLEKS                       R6 R5 K1 ["IsWatched"]
       53 SETTABLEKS                       R3 R5 K4 ["filepath"]
       55 RETURN                           R5 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["REIMPORT"]
        4 GETTABLEKS                       R4 R4 K1 ["CPC_EVENTS"]
        6 GETTABLEKS                       R4 R4 K2 ["WATCH_STATUS_CHANGED"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 NAMECALL                         R2 R2 K3 ["Fire"]
       12 CALL                             R2 4 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSelectionIfOneInstance"]
        3 CALL                             R0 0 2
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["updateAction"]
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K2 ["REIMPORT"]
       13 GETTABLEKS                       R4 R4 K3 ["ACTION_EVENTS"]
       15 GETTABLEKS                       R4 R4 K4 ["WATCH_INSTANCE_FILE"]
       17 DUPTABLE                         R5 K7 [{"Checked", "Enabled"}]
       18 GETTABLEKS                       R6 R2 K8 ["IsWatched"]
       20 SETTABLEKS                       R6 R5 K5 ["Checked"]
       22 GETTABLEKS                       R6 R2 K9 ["Watchable"]
       24 SETTABLEKS                       R6 R5 K6 ["Enabled"]
       26 CALL                             R3 2 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIF                           R2 ; [+9]
        3 GETUPVAL                         R2 0
        4 NEWTABLE                         R3 0 0
        6 SETTABLE                         R3 R2 R1
        7 GETUPVAL                         R2 1
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K0 ["StartSingleFileWatch"]
       11 CALL                             R2 2 0
       12 GETUPVAL                         R4 0
       13 GETTABLE                         R3 R4 R1
       14 GETTABLE                         R2 R3 R0
       15 JUMPIFNOT                        R2 ; [+10]
       16 GETIMPORT                        R2 K2 [error]
       18 LOADK                            R4 K3 ["Reimport: cannot start watching file %* for instance %* which is already being watched"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R0
       21 NAMECALL                         R4 R4 K4 ["format"]
       23 CALL                             R4 3 1
       24 MOVE                             R3 R4
       25 CALL                             R2 1 0
       26 GETUPVAL                         R3 0
       27 GETTABLE                         R2 R3 R1
       28 LOADB                            R3 1
       29 SETTABLE                         R3 R2 R0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getConfigFromInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R2 ; [+10]
        6 GETTABLEKS                       R4 R2 K1 ["filepath"]
        8 JUMPIFNOT                        R4 ; [+7]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["normalize"]
       12 GETTABLEKS                       R4 R2 K1 ["filepath"]
       14 CALL                             R3 1 1
       15 JUMP                             ; [+1]
       16 LOADNIL                          R3
       17 JUMPIF                           R3 ; [+9]
       18 GETIMPORT                        R4 K4 [error]
       20 LOADK                            R6 K5 ["Reimport: cannot start watching instance %* because it does not have a valid config"]
       21 MOVE                             R8 R0
       22 NAMECALL                         R6 R6 K6 ["format"]
       24 CALL                             R6 2 1
       25 MOVE                             R5 R6
       26 CALL                             R4 1 0
       27 GETUPVAL                         R4 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R3
       30 CALL                             R4 2 0
       31 GETUPVAL                         R4 3
       32 CALL                             R4 0 1
       33 JUMPIFNOT                        R4 ; [+38]
       34 LOADK                            R6 K7 ["SurfaceAppearance"]
       35 NAMECALL                         R4 R0 K8 ["IsA"]
       37 CALL                             R4 2 1
       38 JUMPIF                           R4 ; [+5]
       39 LOADK                            R6 K9 ["Decal"]
       40 NAMECALL                         R4 R0 K8 ["IsA"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+28]
       44 GETUPVAL                         R4 4
       45 MOVE                             R6 R3
       46 NAMECALL                         R4 R4 K10 ["GetFilesInDirAsync"]
       48 CALL                             R4 2 1
       49 GETUPVAL                         R5 5
       50 GETTABLEKS                       R5 R5 K11 ["findMaps"]
       52 MOVE                             R6 R3
       53 MOVE                             R7 R4
       54 CALL                             R5 2 1
       55 MOVE                             R6 R5
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 FORGPREP                         R6
       59 JUMPIFEQ                         R10 R3 ; [+10]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K2 ["normalize"]
       64 MOVE                             R12 R10
       65 CALL                             R11 1 1
       66 GETUPVAL                         R12 2
       67 MOVE                             R13 R0
       68 MOVE                             R14 R11
       69 CALL                             R12 2 0
       70 FORGLOOP                         R6 2 ; [-12]
       72 GETUPVAL                         R4 6
       73 CALL                             R4 0 0
       74 GETUPVAL                         R4 7
       75 CALL                             R4 0 1
       76 JUMPIFNOT                        R4 ; [+17]
       77 DUPTABLE                         R4 K13 [{"isWatched"}]
       78 LOADB                            R5 1
       79 SETTABLEKS                       R5 R4 K12 ["isWatched"]
       81 GETUPVAL                         R5 8
       82 GETUPVAL                         R7 9
       83 GETTABLEKS                       R7 R7 K14 ["REIMPORT"]
       85 GETTABLEKS                       R7 R7 K15 ["CPC_EVENTS"]
       87 GETTABLEKS                       R7 R7 K16 ["WATCH_STATUS_CHANGED"]
       89 MOVE                             R8 R0
       90 MOVE                             R9 R4
       91 NAMECALL                         R5 R5 K17 ["Fire"]
       93 CALL                             R5 4 0
       94 GETUPVAL                         R4 10
       95 GETTABLEKS                       R4 R4 K18 ["reimportInstance"]
       97 MOVE                             R5 R0
       98 CALL                             R4 1 0
       99 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R0
        4 GETIMPORT                        R2 K1 [next]
        6 GETUPVAL                         R4 0
        7 GETTABLE                         R3 R4 R1
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+8]
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 SETTABLE                         R3 R2 R1
       13 GETUPVAL                         R2 1
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R2 K2 ["StopSingleFileWatch"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+9]
        4 GETIMPORT                        R2 K1 [error]
        6 LOADK                            R4 K2 ["Reimport: cannot stop watching instance %* which is not being watched"]
        7 MOVE                             R6 R0
        8 NAMECALL                         R4 R4 K3 ["format"]
       10 CALL                             R4 2 1
       11 MOVE                             R3 R4
       12 CALL                             R2 1 0
       13 GETUPVAL                         R3 0
       14 GETTABLE                         R2 R3 R1
       15 LOADNIL                          R3
       16 SETTABLE                         R3 R2 R0
       17 GETIMPORT                        R2 K5 [next]
       19 GETUPVAL                         R4 0
       20 GETTABLE                         R3 R4 R1
       21 CALL                             R2 1 1
       22 JUMPIF                           R2 ; [+8]
       23 GETUPVAL                         R2 0
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R2 R1
       26 GETUPVAL                         R2 1
       27 MOVE                             R4 R1
       28 NAMECALL                         R2 R2 K6 ["StopSingleFileWatch"]
       30 CALL                             R2 2 0
       31 GETUPVAL                         R2 2
       32 CALL                             R2 0 1
       33 JUMPIFNOT                        R2 ; [+52]
       34 LOADK                            R4 K7 ["SurfaceAppearance"]
       35 NAMECALL                         R2 R0 K8 ["IsA"]
       37 CALL                             R2 2 1
       38 JUMPIF                           R2 ; [+5]
       39 LOADK                            R4 K9 ["Decal"]
       40 NAMECALL                         R2 R0 K8 ["IsA"]
       42 CALL                             R2 2 1
       43 JUMPIFNOT                        R2 ; [+42]
       44 GETUPVAL                         R2 1
       45 MOVE                             R4 R1
       46 NAMECALL                         R2 R2 K10 ["GetFilesInDirAsync"]
       48 CALL                             R2 2 1
       49 GETUPVAL                         R3 3
       50 GETTABLEKS                       R3 R3 K11 ["findMaps"]
       52 MOVE                             R4 R1
       53 MOVE                             R5 R2
       54 CALL                             R3 2 1
       55 MOVE                             R4 R3
       56 LOADNIL                          R5
       57 LOADNIL                          R6
       58 FORGPREP                         R4
       59 JUMPIFEQ                         R8 R1 ; [+24]
       61 GETUPVAL                         R9 4
       62 GETTABLEKS                       R9 R9 K12 ["normalize"]
       64 MOVE                             R10 R8
       65 CALL                             R9 1 1
       66 GETUPVAL                         R11 0
       67 GETTABLE                         R10 R11 R9
       68 LOADNIL                          R11
       69 SETTABLE                         R11 R10 R0
       70 GETIMPORT                        R10 K5 [next]
       72 GETUPVAL                         R12 0
       73 GETTABLE                         R11 R12 R9
       74 CALL                             R10 1 1
       75 JUMPIF                           R10 ; [+8]
       76 GETUPVAL                         R10 0
       77 LOADNIL                          R11
       78 SETTABLE                         R11 R10 R9
       79 GETUPVAL                         R10 1
       80 MOVE                             R12 R9
       81 NAMECALL                         R10 R10 K6 ["StopSingleFileWatch"]
       83 CALL                             R10 2 0
       84 FORGLOOP                         R4 2 ; [-26]
       86 GETUPVAL                         R2 5
       87 CALL                             R2 0 1
       88 JUMPIFNOT                        R2 ; [+17]
       89 DUPTABLE                         R2 K14 [{"isWatched"}]
       90 LOADB                            R3 0
       91 SETTABLEKS                       R3 R2 K13 ["isWatched"]
       93 GETUPVAL                         R3 6
       94 GETUPVAL                         R5 7
       95 GETTABLEKS                       R5 R5 K15 ["REIMPORT"]
       97 GETTABLEKS                       R5 R5 K16 ["CPC_EVENTS"]
       99 GETTABLEKS                       R5 R5 K17 ["WATCH_STATUS_CHANGED"]
      101 MOVE                             R6 R0
      102 MOVE                             R7 R2
      103 NAMECALL                         R3 R3 K18 ["Fire"]
      105 CALL                             R3 4 0
      106 GETUPVAL                         R2 8
      107 CALL                             R2 0 0
      108 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOT                        R1 ; [+10]
        1 GETTABLEKS                       R4 R1 K0 ["filepath"]
        3 JUMPIFNOT                        R4 ; [+7]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["normalize"]
        7 GETTABLEKS                       R4 R1 K0 ["filepath"]
        9 CALL                             R3 1 1
       10 JUMP                             ; [+1]
       11 LOADNIL                          R3
       12 JUMPIFNOT                        R2 ; [+10]
       13 GETTABLEKS                       R5 R2 K0 ["filepath"]
       15 JUMPIFNOT                        R5 ; [+7]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K1 ["normalize"]
       19 GETTABLEKS                       R5 R2 K0 ["filepath"]
       21 CALL                             R4 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R4
       24 JUMPIFNOT                        R3 ; [+7]
       25 GETUPVAL                         R6 1
       26 GETTABLE                         R5 R6 R3
       27 JUMPIFNOT                        R5 ; [+4]
       28 GETUPVAL                         R7 1
       29 GETTABLE                         R6 R7 R3
       30 GETTABLE                         R5 R6 R0
       31 JUMPIF                           R5 ; [+3]
       32 GETUPVAL                         R5 2
       33 CALL                             R5 0 0
       34 RETURN                           R0 0
       35 JUMPIFNOTEQ                      R3 R4 ; [+2]
       37 LOADB                            R5 0 +1
       38 LOADB                            R5 1
       39 JUMPIFNOT                        R3 ; [+7]
       40 JUMPIFEQKS                       R3 K2 [""] ; [+6]
       42 JUMPIFNOT                        R5 ; [+4]
       43 GETUPVAL                         R6 3
       44 MOVE                             R7 R0
       45 MOVE                             R8 R3
       46 CALL                             R6 2 0
       47 JUMPIFNOT                        R4 ; [+6]
       48 JUMPIFEQKS                       R4 K2 [""] ; [+5]
       50 JUMPIFNOT                        R5 ; [+3]
       51 GETUPVAL                         R6 4
       52 MOVE                             R7 R0
       53 CALL                             R6 1 0
       54 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R5 1
        5 MOVE                             R7 R3
        6 NAMECALL                         R5 R5 K0 ["StopSingleFileWatch"]
        8 CALL                             R5 2 0
        9 GETUPVAL                         R5 0
       10 LOADNIL                          R6
       11 SETTABLE                         R6 R5 R3
       12 FORGLOOP                         R0 2 ; [-9]
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SingleFileChanged"]
        3 GETUPVAL                         R3 1
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 0
        7 NEWTABLE                         R1 0 0
        9 SETUPVAL                         R1 2
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K2 ["SelectionChanged"]
       13 GETUPVAL                         R3 4
       14 NAMECALL                         R1 R1 K1 ["Connect"]
       16 CALL                             R1 2 0
       17 GETUPVAL                         R1 5
       18 GETTABLEKS                       R1 R1 K3 ["registerConfigUpdateCallback"]
       20 GETUPVAL                         R2 6
       21 CALL                             R1 1 0
       22 GETUPVAL                         R1 4
       23 CALL                             R1 0 0
       24 GETTABLEKS                       R1 R0 K4 ["Unloading"]
       26 GETUPVAL                         R3 7
       27 NAMECALL                         R1 R1 K1 ["Connect"]
       29 CALL                             R1 2 0
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K0 ["IsWatched"]
        5 RETURN                           R1 1

PROTO_12:
        0 DUPTABLE                         R1 K1 [{"isWatched"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["isWatching"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 1
        6 SETTABLEKS                       R2 R1 K0 ["isWatched"]
        8 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETTABLEKS                       R4 R1 K0 ["filepath"]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReimportPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Reimport"]
       15 GETTABLEKS                       R2 R2 K8 ["MaterialUtils"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K9 ["Lib"]
       22 GETTABLEKS                       R3 R3 K10 ["External"]
       24 GETTABLEKS                       R3 R3 K11 ["AssetImportService"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K9 ["Lib"]
       31 GETTABLEKS                       R4 R4 K10 ["External"]
       33 GETTABLEKS                       R4 R4 K12 ["SelectionService"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K9 ["Lib"]
       40 GETTABLEKS                       R5 R5 K7 ["Reimport"]
       42 GETTABLEKS                       R5 R5 K13 ["SelectionHelper"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K9 ["Lib"]
       49 GETTABLEKS                       R6 R6 K7 ["Reimport"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K14 ["Packages"]
       56 GETTABLEKS                       R7 R7 K15 ["SharedPluginConstants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Lib"]
       63 GETTABLEKS                       R8 R8 K16 ["Actions"]
       65 GETTABLEKS                       R8 R8 K17 ["ActionUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K9 ["Lib"]
       72 GETTABLEKS                       R9 R9 K7 ["Reimport"]
       74 GETTABLEKS                       R9 R9 K18 ["ReimportConfigs"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K9 ["Lib"]
       81 GETTABLEKS                       R10 R10 K7 ["Reimport"]
       83 GETTABLEKS                       R10 R10 K19 ["Path"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K9 ["Lib"]
       90 GETTABLEKS                       R11 R11 K10 ["External"]
       92 GETTABLEKS                       R11 R11 K20 ["CrossPluginCommunication"]
       94 CALL                             R10 1 1
       95 GETTABLEKS                       R11 R10 K21 ["new"]
       97 GETTABLEKS                       R12 R6 K22 ["REIMPORT"]
       99 GETTABLEKS                       R12 R12 K23 ["CPC_ID"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R6 K22 ["REIMPORT"]
      104 GETTABLEKS                       R12 R12 K24 ["getFFlagReimportFileWatchIcon"]
      106 GETIMPORT                        R13 K5 [require]
      108 GETTABLEKS                       R14 R0 K25 ["Flags"]
      110 GETTABLEKS                       R14 R14 K26 ["GetFFlagReimportWatchOtherMaps"]
      112 CALL                             R13 1 1
      113 NEWTABLE                         R14 0 0
      115 NEWTABLE                         R15 4 0
      117 NEWCLOSURE                       R16 P0
      118 CAPTURE                          VAL R9
      119 CAPTURE                          REF R14
      120 CAPTURE                          VAL R5
      121 NEWCLOSURE                       R17 P1
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R9
      124 CAPTURE                          REF R14
      125 DUPCLOSURE                       R18 K27 [PROTO_2]
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R6
      128 DUPCLOSURE                       R19 K28 [PROTO_3]
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R6
      133 NEWCLOSURE                       R20 P4
      134 CAPTURE                          REF R14
      135 CAPTURE                          VAL R2
      136 DUPCLOSURE                       R21 K29 [PROTO_5]
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R20
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R1
      143 CAPTURE                          VAL R19
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R11
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R5
      148 NEWCLOSURE                       R22 P6
      149 CAPTURE                          REF R14
      150 CAPTURE                          VAL R2
      151 NEWCLOSURE                       R23 P7
      152 CAPTURE                          REF R14
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R1
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R12
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R19
      161 NEWCLOSURE                       R24 P8
      162 CAPTURE                          VAL R9
      163 CAPTURE                          REF R14
      164 CAPTURE                          VAL R19
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R21
      167 NEWCLOSURE                       R25 P9
      168 CAPTURE                          REF R14
      169 CAPTURE                          VAL R2
      170 NEWCLOSURE                       R26 P10
      171 CAPTURE                          VAL R2
      172 CAPTURE                          VAL R16
      173 CAPTURE                          REF R14
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R19
      176 CAPTURE                          VAL R8
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R25
      179 SETTABLEKS                       R26 R15 K30 ["init"]
      181 DUPCLOSURE                       R26 K31 [PROTO_11]
      182 CAPTURE                          VAL R17
      183 SETTABLEKS                       R26 R15 K32 ["isWatching"]
      185 GETTABLEKS                       R28 R6 K22 ["REIMPORT"]
      187 GETTABLEKS                       R28 R28 K33 ["CPC_CALLBACKS"]
      189 GETTABLEKS                       R28 R28 K34 ["GET_WATCH_STATUS"]
      191 DUPCLOSURE                       R29 K35 [PROTO_12]
      192 CAPTURE                          VAL R15
      193 NAMECALL                         R26 R11 K36 ["OnInvoke"]
      195 CALL                             R26 3 0
      196 DUPCLOSURE                       R26 K37 [PROTO_13]
      197 CAPTURE                          VAL R21
      198 SETTABLEKS                       R26 R15 K38 ["start"]
      200 DUPCLOSURE                       R26 K39 [PROTO_14]
      201 CAPTURE                          VAL R17
      202 CAPTURE                          VAL R23
      203 SETTABLEKS                       R26 R15 K40 ["stop"]
      205 CLOSEUPVALS                      R14
      206 RETURN                           R15 1
