PROTO_0:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R2 2
        2 NAMECALL                         R0 R0 K0 ["PromptImportFile"]
        4 CALL                             R0 2 1
        5 SETUPVAL                         R0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 2
        1 GETUPVAL                         R2 3
        2 NAMECALL                         R0 R0 K0 ["GetHeightmapPreviewAsync"]
        4 CALL                             R0 2 2
        5 SETUPVAL                         R0 0
        6 SETUPVAL                         R1 1
        7 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R0
        1 LOADNIL                          R1
        2 GETIMPORT                        R2 K1 [pcall]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          REF R1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U1
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K7 [{"Preview", "File", "Width", "Height", "ChannelInfo"}]
       11 DUPTABLE                         R5 K10 [{"Id", "Error"}]
       12 SETTABLEKS                       R0 R5 K8 ["Id"]
       14 SETTABLEKS                       R3 R5 K9 ["Error"]
       16 SETTABLEKS                       R5 R4 K2 ["Preview"]
       18 GETUPVAL                         R5 2
       19 SETTABLEKS                       R5 R4 K3 ["File"]
       21 GETUPVAL                         R5 3
       22 SETTABLEKS                       R5 R4 K4 ["Width"]
       24 GETUPVAL                         R5 4
       25 SETTABLEKS                       R5 R4 K5 ["Height"]
       27 DUPTABLE                         R5 K14 [{"BytesPerChannel", "Channels", "DiscardedChannels"}]
       28 GETUPVAL                         R6 5
       29 SETTABLEKS                       R6 R5 K11 ["BytesPerChannel"]
       31 GETUPVAL                         R6 6
       32 SETTABLEKS                       R6 R5 K12 ["Channels"]
       34 SETTABLEKS                       R1 R5 K13 ["DiscardedChannels"]
       36 SETTABLEKS                       R5 R4 K6 ["ChannelInfo"]
       38 GETUPVAL                         R5 7
       39 LOADK                            R6 K15 [""]
       40 MOVE                             R7 R4
       41 CALL                             R5 2 0
       42 CLOSEUPVALS                      R0
       43 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 3
        2 LOADK                            R3 K0 ["png"]
        3 LOADK                            R4 K1 ["jpg"]
        4 LOADK                            R5 K2 ["jpeg"]
        5 SETLIST                          R2 R3 3 [1]
        7 LOADNIL                          R3
        8 GETIMPORT                        R4 K4 [pcall]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          REF R3
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R2
       14 CALL                             R4 1 2
       15 JUMPIF                           R4 ; [+5]
       16 MOVE                             R6 R0
       17 MOVE                             R7 R5
       18 CALL                             R6 1 0
       19 CLOSEUPVALS                      R3
       20 RETURN                           R0 0
       21 JUMPIF                           R3 ; [+2]
       22 CLOSEUPVALS                      R3
       23 RETURN                           R0 0
       24 NAMECALL                         R6 R3 K5 ["GetTemporaryId"]
       26 CALL                             R6 1 1
       27 LOADNIL                          R7
       28 LOADNIL                          R8
       29 LOADNIL                          R9
       30 LOADNIL                          R10
       31 LOADNIL                          R11
       32 LOADNIL                          R12
       33 GETUPVAL                         R14 1
       34 GETTABLEKS                       R13 R14 K6 ["Heightmap"]
       36 JUMPIFNOTEQ                      R1 R13 ; [+13]
       38 GETUPVAL                         R13 2
       39 MOVE                             R15 R6
       40 NAMECALL                         R13 R13 K7 ["IsValidHeightmap"]
       42 CALL                             R13 2 6
       43 MOVE                             R7 R13
       44 MOVE                             R8 R14
       45 MOVE                             R9 R15
       46 MOVE                             R10 R16
       47 MOVE                             R11 R17
       48 MOVE                             R12 R18
       49 JUMP                             ; [+15]
       50 GETUPVAL                         R14 1
       51 GETTABLEKS                       R13 R14 K8 ["Colormap"]
       53 JUMPIFNOTEQ                      R1 R13 ; [+11]
       55 GETUPVAL                         R13 2
       56 MOVE                             R15 R6
       57 NAMECALL                         R13 R13 K9 ["IsValidColormap"]
       59 CALL                             R13 2 5
       60 MOVE                             R7 R13
       61 MOVE                             R8 R14
       62 MOVE                             R9 R15
       63 MOVE                             R10 R16
       64 MOVE                             R11 R17
       65 JUMPIF                           R7 ; [+5]
       66 MOVE                             R13 R0
       67 MOVE                             R14 R8
       68 CALL                             R13 1 0
       69 CLOSEUPVALS                      R3
       70 RETURN                           R0 0
       71 GETIMPORT                        R13 K12 [task.spawn]
       73 NEWCLOSURE                       R14 P1
       74 CAPTURE                          UPVAL U2
       75 CAPTURE                          VAL R6
       76 CAPTURE                          REF R3
       77 CAPTURE                          REF R9
       78 CAPTURE                          REF R10
       79 CAPTURE                          REF R12
       80 CAPTURE                          REF R11
       81 CAPTURE                          VAL R0
       82 CALL                             R13 1 0
       83 CLOSEUPVALS                      R3
       84 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["HeightmapImporterService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["StudioService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R5 K12 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["ImageType"]
       28 DUPCLOSURE                       R5 K14 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 RETURN                           R5 1
