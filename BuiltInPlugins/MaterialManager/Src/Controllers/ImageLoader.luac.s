PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ImageLabel"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K5 [UDim2.new]
        6 LOADN                            R3 0
        7 LOADN                            R4 0
        8 LOADN                            R5 0
        9 LOADN                            R6 0
       10 CALL                             R2 4 1
       11 SETTABLEKS                       R2 R1 K6 ["Size"]
       13 LOADN                            R2 1
       14 SETTABLEKS                       R2 R1 K7 ["BackgroundTransparency"]
       16 SETTABLEKS                       R0 R1 K8 ["Parent"]
       18 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_pollImageLoop"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R3 K9 [{[1], ["_loadedImagesCache"], ["_imageLabelPool"], ["_loadingImageLabels"], ["_loadingImageIds"], ["_alive"] = True, ["_createImageLabel"], ["_contentProvider"]}]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K10 ["new"]
        4 CALL                             R4 0 1
        5 SETTABLEKS                       R4 R3 K0 ["ImageLoaded"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K1 ["_loadedImagesCache"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K2 ["_imageLabelPool"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K3 ["_loadingImageLabels"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K4 ["_loadingImageIds"]
       23 JUMPIFNOT                        R0 ; [+3]
       24 GETTABLEKS                       R4 R0 K11 ["createImageLabel"]
       26 JUMPIF                           R4 ; [+1]
       27 GETUPVAL                         R4 1
       28 SETTABLEKS                       R4 R3 K7 ["_createImageLabel"]
       30 JUMPIFNOT                        R0 ; [+3]
       31 GETTABLEKS                       R4 R0 K12 ["contentProvider"]
       33 JUMPIF                           R4 ; [+1]
       34 GETUPVAL                         R4 2
       35 SETTABLEKS                       R4 R3 K8 ["_contentProvider"]
       37 GETUPVAL                         R4 3
       38 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       40 GETIMPORT                        R2 K14 [setmetatable]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R3 4
       44 GETTABLEKS                       R3 R3 K10 ["new"]
       46 LOADK                            R4 K15 ["CoreGui"]
       47 MOVE                             R5 R1
       48 CALL                             R3 2 1
       49 GETIMPORT                        R4 K17 [Instance.new]
       51 LOADK                            R5 K18 ["ScreenGui"]
       52 CALL                             R4 1 1
       53 SETTABLEKS                       R4 R2 K19 ["_hostGui"]
       55 GETTABLEKS                       R4 R2 K19 ["_hostGui"]
       57 LOADK                            R5 K20 ["ImageLoader"]
       58 SETTABLEKS                       R5 R4 K21 ["Name"]
       60 GETTABLEKS                       R4 R2 K19 ["_hostGui"]
       62 LOADB                            R5 1
       63 SETTABLEKS                       R5 R4 K22 ["Enabled"]
       65 GETTABLEKS                       R4 R2 K19 ["_hostGui"]
       67 NAMECALL                         R5 R3 K23 ["asInstance"]
       69 CALL                             R5 1 1
       70 SETTABLEKS                       R5 R4 K24 ["Parent"]
       72 GETUPVAL                         R4 5
       73 CALL                             R4 0 1
       74 JUMPIF                           R4 ; [+9]
       75 JUMPIFNOT                        R0 ; [+3]
       76 GETTABLEKS                       R4 R0 K25 ["_dontPoll"]
       78 JUMPIF                           R4 ; [+5]
       79 GETIMPORT                        R4 K27 [spawn]
       81 NEWCLOSURE                       R5 P0
       82 CAPTURE                          VAL R2
       83 CALL                             R4 1 0
       84 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 DUPTABLE                         R2 K4 [{["dontPoll"] = True, ["createImageLabel"]}]
        4 SETTABLEKS                       R0 R2 K3 ["createImageLabel"]
        6 LOADB                            R3 1
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_4:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 JUMPIFNOTEQKS                    R1 K0 [""] ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K1 ["_loadedImagesCache"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETTABLEKS                       R2 R0 K2 ["ImageLoaded"]
       12 MOVE                             R4 R1
       13 NAMECALL                         R2 R2 K3 ["Fire"]
       15 CALL                             R2 2 0
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETTABLEKS                       R3 R0 K4 ["_loadingImageIds"]
       20 GETTABLE                         R2 R3 R1
       21 JUMPIFNOT                        R2 ; [+2]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 GETUPVAL                         R2 0
       25 CALL                             R2 0 1
       26 JUMPIFNOT                        R2 ; [+10]
       27 GETTABLEKS                       R2 R0 K4 ["_loadingImageIds"]
       29 LOADB                            R3 1
       30 SETTABLE                         R3 R2 R1
       31 MOVE                             R4 R1
       32 NAMECALL                         R2 R0 K5 ["_loadImageAsync"]
       34 CALL                             R2 2 0
       35 LOADB                            R2 0
       36 RETURN                           R2 1
       37 LOADNIL                          R2
       38 GETTABLEKS                       R4 R0 K6 ["_imageLabelPool"]
       40 LENGTH                           R3 R4
       41 LOADN                            R4 0
       42 JUMPIFNOTLT                      R4 R3 ; [+8]
       44 GETIMPORT                        R3 K9 [table.remove]
       46 GETTABLEKS                       R4 R0 K6 ["_imageLabelPool"]
       48 CALL                             R3 1 1
       49 MOVE                             R2 R3
       50 JUMP                             ; [+6]
       51 GETTABLEKS                       R3 R0 K10 ["_createImageLabel"]
       53 GETTABLEKS                       R4 R0 K11 ["_hostGui"]
       55 CALL                             R3 1 1
       56 MOVE                             R2 R3
       57 SETTABLEKS                       R1 R2 K12 ["Image"]
       59 GETTABLEKS                       R3 R0 K4 ["_loadingImageIds"]
       61 LOADB                            R4 1
       62 SETTABLE                         R4 R3 R1
       63 GETTABLEKS                       R4 R0 K13 ["_loadingImageLabels"]
       65 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       67 MOVE                             R5 R2
       68 GETIMPORT                        R3 K15 [table.insert]
       70 CALL                             R3 2 0
       71 LOADB                            R3 0
       72 RETURN                           R3 1

PROTO_5:
        0 GETTABLEKS                       R4 R0 K1 ["_loadedImagesCache"]
        2 GETTABLE                         R3 R4 R1
        3 ORK                              R2 R3 K0 [False]
        4 RETURN                           R2 1

PROTO_6:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_alive"]
        3 GETIMPORT                        R1 K2 [ipairs]
        5 GETTABLEKS                       R2 R0 K3 ["_imageLabelPool"]
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 NAMECALL                         R6 R5 K4 ["Destroy"]
       11 CALL                             R6 1 0
       12 FORGLOOP                         R1 2 [inext] ; [-4]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K3 ["_imageLabelPool"]
       17 GETIMPORT                        R1 K2 [ipairs]
       19 GETTABLEKS                       R2 R0 K5 ["_loadingImageLabels"]
       21 CALL                             R1 1 3
       22 FORGPREP_INEXT                   R1
       23 NAMECALL                         R6 R5 K4 ["Destroy"]
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 [inext] ; [-4]
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K5 ["_loadingImageLabels"]
       31 GETTABLEKS                       R1 R0 K6 ["_hostGui"]
       33 NAMECALL                         R1 R1 K4 ["Destroy"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K6 ["_hostGui"]
       39 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_alive"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 NAMECALL                         R1 R0 K1 ["_checkImages"]
        5 CALL                             R1 1 0
        6 GETIMPORT                        R1 K3 [wait]
        8 LOADK                            R2 K4 [0.1]
        9 CALL                             R1 1 0
       10 JUMPBACK                         ; [-11]
       11 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 1
        1 GETTABLEKS                       R3 R0 K0 ["_loadingImageLabels"]
        3 LENGTH                           R2 R3
        4 JUMPIFNOTLE                      R1 R2 ; [+43]
        6 GETTABLEKS                       R3 R0 K0 ["_loadingImageLabels"]
        8 GETTABLE                         R2 R3 R1
        9 GETTABLEKS                       R3 R2 K1 ["IsLoaded"]
       11 JUMPIFNOT                        R3 ; [+34]
       12 GETTABLEKS                       R3 R2 K2 ["Image"]
       14 GETTABLEKS                       R4 R0 K3 ["_loadedImagesCache"]
       16 LOADB                            R5 1
       17 SETTABLE                         R5 R4 R3
       18 GETTABLEKS                       R4 R0 K4 ["ImageLoaded"]
       20 MOVE                             R6 R3
       21 NAMECALL                         R4 R4 K5 ["Fire"]
       23 CALL                             R4 2 0
       24 LOADK                            R4 K6 [""]
       25 SETTABLEKS                       R4 R2 K2 ["Image"]
       27 GETTABLEKS                       R4 R0 K7 ["_loadingImageIds"]
       29 LOADNIL                          R5
       30 SETTABLE                         R5 R4 R3
       31 GETIMPORT                        R4 K10 [table.remove]
       33 GETTABLEKS                       R5 R0 K0 ["_loadingImageLabels"]
       35 MOVE                             R6 R1
       36 CALL                             R4 2 0
       37 GETTABLEKS                       R5 R0 K11 ["_imageLabelPool"]
       39 FASTCALL2                        TABLE_INSERT R5 R2 ; [+4]
       41 MOVE                             R6 R2
       42 GETIMPORT                        R4 K13 [table.insert]
       44 CALL                             R4 2 0
       45 JUMP                             ; [+1]
       46 ADDK                             R1 R1 K14 [1]
       47 JUMPBACK                         ; [-47]
       48 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_alive"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["_loadingImageIds"]
        8 GETTABLE                         R2 R3 R0
        9 JUMPIFNOT                        R2 ; [+17]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["_loadedImagesCache"]
       13 LOADB                            R3 1
       14 SETTABLE                         R3 R2 R0
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K1 ["_loadingImageIds"]
       18 LOADNIL                          R3
       19 SETTABLE                         R3 R2 R0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K3 ["ImageLoaded"]
       23 MOVE                             R4 R0
       24 NAMECALL                         R2 R2 K4 ["Fire"]
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_contentProvider"]
        3 NEWTABLE                         R2 0 1
        5 GETUPVAL                         R3 1
        6 SETLIST                          R2 R3 1 [1]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R0 R0 K1 ["PreloadAsync"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K2 [coroutine.wrap]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 1
        6 CALL                             R2 0 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["ContextServices"]
       18 GETTABLEKS                       R2 R2 K8 ["ContextItem"]
       20 GETTABLEKS                       R3 R1 K9 ["Util"]
       22 GETTABLEKS                       R4 R3 K10 ["Signal"]
       24 GETTABLEKS                       R5 R1 K11 ["TestHelpers"]
       26 GETTABLEKS                       R5 R5 K12 ["ServiceWrapper"]
       28 GETIMPORT                        R6 K4 [require]
       30 GETTABLEKS                       R7 R0 K13 ["Src"]
       32 GETTABLEKS                       R7 R7 K14 ["Flags"]
       34 GETTABLEKS                       R7 R7 K15 ["getFFlagMaterialManagerImageLoaderUseAsync"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K17 [game]
       39 LOADK                            R9 K18 ["ContentProvider"]
       40 NAMECALL                         R7 R7 K19 ["GetService"]
       42 CALL                             R7 2 1
       43 DUPCLOSURE                       R8 K20 [PROTO_0]
       44 LOADK                            R11 K21 ["ImageLoader"]
       45 NAMECALL                         R9 R2 K22 ["extend"]
       47 CALL                             R9 2 1
       48 DUPCLOSURE                       R10 K23 [PROTO_2]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R10 R9 K24 ["new"]
       57 DUPCLOSURE                       R10 K25 [PROTO_3]
       58 CAPTURE                          VAL R9
       59 SETTABLEKS                       R10 R9 K26 ["mock"]
       61 DUPCLOSURE                       R10 K27 [PROTO_4]
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R10 R9 K28 ["loadImage"]
       65 DUPCLOSURE                       R10 K29 [PROTO_5]
       66 SETTABLEKS                       R10 R9 K30 ["hasImageLoaded"]
       68 DUPCLOSURE                       R10 K31 [PROTO_6]
       69 SETTABLEKS                       R10 R9 K32 ["destroy"]
       71 DUPCLOSURE                       R10 K33 [PROTO_7]
       72 SETTABLEKS                       R10 R9 K34 ["_pollImageLoop"]
       74 DUPCLOSURE                       R10 K35 [PROTO_8]
       75 SETTABLEKS                       R10 R9 K36 ["_checkImages"]
       77 DUPCLOSURE                       R10 K37 [PROTO_11]
       78 SETTABLEKS                       R10 R9 K38 ["_loadImageAsync"]
       80 RETURN                           R9 1
