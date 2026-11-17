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
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          REF R0
        4 CAPTURE                          REF R1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R2 K1 [pcall]
       10 CALL                             R2 1 2
       11 DUPTABLE                         R4 K7 [{"Preview", "File", "Width", "Height", "ChannelInfo"}]
       12 DUPTABLE                         R5 K10 [{"Id", "Error"}]
       13 SETTABLEKS                       R0 R5 K8 ["Id"]
       15 SETTABLEKS                       R3 R5 K9 ["Error"]
       17 SETTABLEKS                       R5 R4 K2 ["Preview"]
       19 GETUPVAL                         R5 2
       20 SETTABLEKS                       R5 R4 K3 ["File"]
       22 GETUPVAL                         R5 3
       23 SETTABLEKS                       R5 R4 K4 ["Width"]
       25 GETUPVAL                         R5 4
       26 SETTABLEKS                       R5 R4 K5 ["Height"]
       28 DUPTABLE                         R5 K14 [{"BytesPerChannel", "Channels", "DiscardedChannels"}]
       29 GETUPVAL                         R6 5
       30 SETTABLEKS                       R6 R5 K11 ["BytesPerChannel"]
       32 GETUPVAL                         R6 6
       33 SETTABLEKS                       R6 R5 K12 ["Channels"]
       35 SETTABLEKS                       R1 R5 K13 ["DiscardedChannels"]
       37 SETTABLEKS                       R5 R4 K6 ["ChannelInfo"]
       39 GETUPVAL                         R5 7
       40 LOADK                            R6 K15 [""]
       41 MOVE                             R7 R4
       42 CALL                             R5 2 0
       43 CLOSEUPVALS                      R0
       44 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R2 0 3
        2 LOADK                            R3 K0 ["png"]
        3 LOADK                            R4 K1 ["jpg"]
        4 LOADK                            R5 K2 ["jpeg"]
        5 SETLIST                          R2 R3 3 [1]
        7 LOADNIL                          R3
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          REF R3
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          VAL R2
       12 FASTPCALL                        pcall 1 ; [+2]
       13 GETIMPORT                        R4 K4 [pcall]
       15 CALL                             R4 1 2
       16 JUMPIF                           R4 ; [+5]
       17 MOVE                             R6 R0
       18 MOVE                             R7 R5
       19 CALL                             R6 1 0
       20 CLOSEUPVALS                      R3
       21 RETURN                           R0 0
       22 JUMPIF                           R3 ; [+2]
       23 CLOSEUPVALS                      R3
       24 RETURN                           R0 0
       25 NAMECALL                         R6 R3 K5 ["GetTemporaryId"]
       27 CALL                             R6 1 1
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 LOADNIL                          R10
       32 LOADNIL                          R11
       33 LOADNIL                          R12
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K6 ["Heightmap"]
       37 JUMPIFNOTEQ                      R1 R13 ; [+13]
       39 GETUPVAL                         R13 2
       40 MOVE                             R15 R6
       41 NAMECALL                         R13 R13 K7 ["IsValidHeightmap"]
       43 CALL                             R13 2 6
       44 MOVE                             R7 R13
       45 MOVE                             R8 R14
       46 MOVE                             R9 R15
       47 MOVE                             R10 R16
       48 MOVE                             R11 R17
       49 MOVE                             R12 R18
       50 JUMP                             ; [+15]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K8 ["Colormap"]
       54 JUMPIFNOTEQ                      R1 R13 ; [+11]
       56 GETUPVAL                         R13 2
       57 MOVE                             R15 R6
       58 NAMECALL                         R13 R13 K9 ["IsValidColormap"]
       60 CALL                             R13 2 5
       61 MOVE                             R7 R13
       62 MOVE                             R8 R14
       63 MOVE                             R9 R15
       64 MOVE                             R10 R16
       65 MOVE                             R11 R17
       66 JUMPIF                           R7 ; [+5]
       67 MOVE                             R13 R0
       68 MOVE                             R14 R8
       69 CALL                             R13 1 0
       70 CLOSEUPVALS                      R3
       71 RETURN                           R0 0
       72 GETIMPORT                        R13 K12 [task.spawn]
       74 NEWCLOSURE                       R14 P1
       75 CAPTURE                          UPVAL U2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          REF R3
       78 CAPTURE                          REF R9
       79 CAPTURE                          REF R10
       80 CAPTURE                          REF R12
       81 CAPTURE                          REF R11
       82 CAPTURE                          VAL R0
       83 CALL                             R13 1 0
       84 CLOSEUPVALS                      R3
       85 RETURN                           R0 0

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
       21 GETTABLEKS                       R4 R0 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Types"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["ImageType"]
       28 DUPCLOSURE                       R5 K14 [PROTO_3]
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R1
       32 RETURN                           R5 1
