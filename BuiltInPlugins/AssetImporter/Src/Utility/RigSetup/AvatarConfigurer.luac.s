PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["EntryBox"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADN                            R2 1
        8 SETTABLEKS                       R2 R1 K6 ["BackgroundTransparency"]
       10 LOADN                            R2 0
       11 SETTABLEKS                       R2 R1 K7 ["BorderSizePixel"]
       13 GETIMPORT                        R2 K9 [UDim2.new]
       15 LOADN                            R3 1
       16 LOADN                            R4 -10
       17 LOADN                            R5 0
       18 LOADN                            R6 25
       19 CALL                             R2 4 1
       20 SETTABLEKS                       R2 R1 K10 ["Size"]
       22 SETTABLEKS                       R0 R1 K11 ["Position"]
       24 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TextBox"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R1 R3 K4 ["Name"]
        6 LOADK                            R5 K5 ["<"]
        7 MOVE                             R6 R1
        8 LOADK                            R7 K6 [">"]
        9 CONCAT                           R4 R5 R7
       10 SETTABLEKS                       R4 R3 K7 ["Text"]
       12 GETUPVAL                         R4 0
       13 SETTABLEKS                       R4 R3 K8 ["BackgroundColor3"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K9 ["BorderColor3"]
       18 SETTABLEKS                       R2 R3 K10 ["Position"]
       20 GETIMPORT                        R4 K12 [UDim2.new]
       22 LOADK                            R5 K13 [0.5]
       23 LOADN                            R6 0
       24 LOADN                            R7 0
       25 LOADN                            R8 25
       26 CALL                             R4 4 1
       27 SETTABLEKS                       R4 R3 K14 ["Size"]
       29 GETIMPORT                        R4 K18 [Enum.Font.SourceSans]
       31 SETTABLEKS                       R4 R3 K16 ["Font"]
       33 GETUPVAL                         R4 2
       34 SETTABLEKS                       R4 R3 K19 ["TextColor3"]
       36 LOADN                            R4 14
       37 SETTABLEKS                       R4 R3 K20 ["TextSize"]
       39 LOADN                            R4 1
       40 SETTABLEKS                       R4 R3 K21 ["TextStrokeTransparency"]
       42 SETTABLEKS                       R0 R3 K22 ["Parent"]
       44 RETURN                           R3 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [UDim2.new]
        2 LOADN                            R3 0
        3 LOADN                            R4 5
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 CALL                             R2 4 1
        7 GETIMPORT                        R3 K4 [Instance.new]
        9 LOADK                            R4 K5 ["Frame"]
       10 CALL                             R3 1 1
       11 LOADK                            R4 K6 ["EntryBox"]
       12 SETTABLEKS                       R4 R3 K7 ["Name"]
       14 LOADN                            R4 1
       15 SETTABLEKS                       R4 R3 K8 ["BackgroundTransparency"]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K9 ["BorderSizePixel"]
       20 GETIMPORT                        R4 K2 [UDim2.new]
       22 LOADN                            R5 1
       23 LOADN                            R6 -10
       24 LOADN                            R7 0
       25 LOADN                            R8 25
       26 CALL                             R4 4 1
       27 SETTABLEKS                       R4 R3 K10 ["Size"]
       29 SETTABLEKS                       R2 R3 K11 ["Position"]
       31 MOVE                             R1 R3
       32 GETIMPORT                        R2 K4 [Instance.new]
       34 LOADK                            R3 K12 ["TextLabel"]
       35 CALL                             R2 1 1
       36 LOADK                            R3 K13 ["Description"]
       37 SETTABLEKS                       R3 R2 K7 ["Name"]
       39 LOADN                            R3 1
       40 SETTABLEKS                       R3 R2 K8 ["BackgroundTransparency"]
       42 LOADN                            R3 0
       43 SETTABLEKS                       R3 R2 K9 ["BorderSizePixel"]
       45 GETIMPORT                        R3 K2 [UDim2.new]
       47 LOADN                            R4 0
       48 LOADN                            R5 0
       49 LOADN                            R6 0
       50 LOADN                            R7 0
       51 CALL                             R3 4 1
       52 SETTABLEKS                       R3 R2 K11 ["Position"]
       54 GETIMPORT                        R3 K2 [UDim2.new]
       56 LOADK                            R4 K14 [0.5]
       57 LOADN                            R5 -5
       58 LOADN                            R6 0
       59 LOADN                            R7 25
       60 CALL                             R3 4 1
       61 SETTABLEKS                       R3 R2 K10 ["Size"]
       63 GETIMPORT                        R3 K18 [Enum.Font.SourceSansBold]
       65 SETTABLEKS                       R3 R2 K16 ["Font"]
       67 LOADN                            R3 14
       68 SETTABLEKS                       R3 R2 K19 ["TextSize"]
       70 GETUPVAL                         R3 0
       71 SETTABLEKS                       R3 R2 K20 ["TextColor3"]
       73 LOADN                            R3 1
       74 SETTABLEKS                       R3 R2 K21 ["TextStrokeTransparency"]
       76 SETTABLEKS                       R1 R2 K22 ["Parent"]
       78 GETUPVAL                         R3 1
       79 MOVE                             R4 R1
       80 MOVE                             R5 R0
       81 GETIMPORT                        R6 K2 [UDim2.new]
       83 LOADK                            R7 K14 [0.5]
       84 LOADN                            R8 0
       85 LOADN                            R9 0
       86 LOADN                            R10 0
       87 CALL                             R6 4 -1
       88 CALL                             R3 -1 0
       89 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["TextLabel"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["SubTitle"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 GETIMPORT                        R3 K8 [UDim2.new]
       12 LOADN                            R4 0
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 CALL                             R3 4 1
       17 SETTABLEKS                       R3 R2 K9 ["Position"]
       19 GETIMPORT                        R3 K8 [UDim2.new]
       21 LOADN                            R4 1
       22 LOADN                            R5 0
       23 LOADN                            R6 0
       24 LOADN                            R7 20
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R2 K10 ["Size"]
       28 GETIMPORT                        R3 K14 [Enum.Font.SourceSansBold]
       30 SETTABLEKS                       R3 R2 K12 ["Font"]
       32 GETUPVAL                         R3 0
       33 SETTABLEKS                       R3 R2 K15 ["TextColor3"]
       35 LOADN                            R3 18
       36 SETTABLEKS                       R3 R2 K16 ["TextSize"]
       38 LOADN                            R3 1
       39 SETTABLEKS                       R3 R2 K17 ["TextStrokeTransparency"]
       41 SETTABLEKS                       R1 R2 K18 ["Text"]
       43 LOADN                            R3 0
       44 SETTABLEKS                       R3 R2 K19 ["BorderSizePixel"]
       46 SETTABLEKS                       R0 R2 K20 ["Parent"]
       48 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TextLabel"]
        3 CALL                             R3 1 1
        4 LOADK                            R4 K4 ["Instructions"]
        5 SETTABLEKS                       R4 R3 K5 ["Name"]
        7 LOADN                            R4 1
        8 SETTABLEKS                       R4 R3 K6 ["BackgroundTransparency"]
       10 LOADN                            R4 0
       11 SETTABLEKS                       R4 R3 K7 ["BorderSizePixel"]
       13 SETTABLEKS                       R2 R3 K8 ["Position"]
       15 GETIMPORT                        R4 K10 [UDim2.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 LOADN                            R8 20
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K11 ["Size"]
       24 GETIMPORT                        R4 K15 [Enum.Font.SourceSansBold]
       26 SETTABLEKS                       R4 R3 K13 ["Font"]
       28 SETTABLEKS                       R1 R3 K16 ["Text"]
       30 GETUPVAL                         R4 0
       31 SETTABLEKS                       R4 R3 K17 ["TextColor3"]
       33 LOADN                            R4 1
       34 SETTABLEKS                       R4 R3 K18 ["TextStrokeTransparency"]
       36 LOADN                            R4 14
       37 SETTABLEKS                       R4 R3 K19 ["TextSize"]
       39 SETTABLEKS                       R0 R3 K20 ["Parent"]
       41 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [string.find]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["Text"]
        5 LOADK                            R2 K4 ["<"]
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETUPVAL                         R0 0
       10 LOADK                            R1 K5 [""]
       11 SETTABLEKS                       R1 R0 K3 ["Text"]
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_7:
        0 DUPCLOSURE                       R1 K0 [PROTO_6]
        1 GETIMPORT                        R2 K2 [ipairs]
        3 NAMECALL                         R3 R0 K3 ["GetChildren"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 3
        7 FORGPREP_INEXT                   R2
        8 LOADK                            R9 K4 ["TextBox"]
        9 NAMECALL                         R7 R6 K5 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+7]
       13 GETTABLEKS                       R7 R6 K6 ["Focused"]
       15 NEWCLOSURE                       R9 P1
       16 CAPTURE                          VAL R6
       17 NAMECALL                         R7 R7 K7 ["Connect"]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 [inext] ; [-13]
       22 RETURN                           R0 0

PROTO_8:
        0 NEWTABLE                         R1 16 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["_r15Avatar"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["_r15Fixed"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K4 ["_r6Avatar"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K5 ["_r15TexturesMap"]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K6 ["_r6TexturesMap"]
       25 NEWTABLE                         R1 0 0
       27 SETTABLEKS                       R1 R0 K7 ["_r6MeshesMap"]
       29 LOADNIL                          R1
       30 SETTABLEKS                       R1 R0 K8 ["_faceTextureId"]
       32 GETIMPORT                        R1 K11 [Instance.new]
       34 LOADK                            R2 K12 ["BindableEvent"]
       35 CALL                             R1 1 1
       36 SETTABLEKS                       R1 R0 K13 ["_onConfigureStarted"]
       38 NEWTABLE                         R1 0 0
       40 SETTABLEKS                       R1 R0 K14 ["_configureConnections"]
       42 GETUPVAL                         R1 1
       43 LOADK                            R3 K15 ["AssetImporterAvatarConfigurer"]
       44 NAMECALL                         R1 R1 K16 ["FindFirstChild"]
       46 CALL                             R1 2 1
       47 JUMPIFNOT                        R1 ; [+3]
       48 NAMECALL                         R2 R1 K17 ["Destroy"]
       50 CALL                             R2 1 0
       51 GETIMPORT                        R2 K11 [Instance.new]
       53 LOADK                            R3 K18 ["ScreenGui"]
       54 CALL                             R2 1 1
       55 LOADK                            R3 K15 ["AssetImporterAvatarConfigurer"]
       56 SETTABLEKS                       R3 R2 K19 ["Name"]
       58 GETUPVAL                         R3 1
       59 SETTABLEKS                       R3 R2 K20 ["Parent"]
       61 MOVE                             R5 R2
       62 NAMECALL                         R3 R0 K21 ["_constructUI"]
       64 CALL                             R3 2 0
       65 RETURN                           R0 1

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_r15Avatar"]
        2 SETTABLEKS                       R3 R0 K1 ["_r15Fixed"]
        4 SETTABLEKS                       R2 R0 K2 ["_r6Avatar"]
        6 GETTABLEKS                       R4 R0 K3 ["_onConfigureStarted"]
        8 MOVE                             R6 R1
        9 MOVE                             R7 R2
       10 NAMECALL                         R4 R4 K4 ["Fire"]
       12 CALL                             R4 3 0
       13 LOADB                            R6 1
       14 NAMECALL                         R4 R0 K5 ["_setEnabled"]
       16 CALL                             R4 2 0
       17 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CopyTexturesToRig"]
        3 GETTABLEKS                       R2 R0 K1 ["_r15TexturesMap"]
        5 GETTABLEKS                       R3 R0 K2 ["_r15Avatar"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K3 ["AddFaceToRig"]
       11 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       13 GETTABLEKS                       R3 R0 K2 ["_r15Avatar"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K0 ["CopyTexturesToRig"]
       19 GETTABLEKS                       R2 R0 K1 ["_r15TexturesMap"]
       21 GETTABLEKS                       R3 R0 K5 ["_r15Fixed"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K3 ["AddFaceToRig"]
       27 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       29 GETTABLEKS                       R3 R0 K5 ["_r15Fixed"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K6 ["CopyCharacterMeshesToRig"]
       35 GETTABLEKS                       R2 R0 K7 ["_r6MeshesMap"]
       37 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R1 0
       41 GETTABLEKS                       R1 R1 K0 ["CopyTexturesToRig"]
       43 GETTABLEKS                       R2 R0 K9 ["_r6TexturesMap"]
       45 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R1 0
       49 GETTABLEKS                       R1 R1 K3 ["AddFaceToRig"]
       51 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       53 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       55 CALL                             R1 2 0
       56 LOADB                            R3 0
       57 NAMECALL                         R1 R0 K10 ["_setEnabled"]
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

PROTO_11:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["_setEnabled"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_configureFrame"]
        2 SETTABLEKS                       R1 R2 K1 ["Visible"]
        4 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K2 [table.sort]
        4 MOVE                             R6 R3
        5 CALL                             R5 1 0
        6 GETIMPORT                        R5 K4 [ipairs]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 3
       10 FORGPREP_INEXT                   R5
       11 NAMECALL                         R10 R2 K5 ["Clone"]
       13 CALL                             R10 1 1
       14 SUBK                             R12 R8 K6 [1]
       15 GETTABLEKS                       R13 R10 K7 ["Size"]
       17 GETTABLEKS                       R13 R13 K8 ["Y"]
       19 GETTABLEKS                       R13 R13 K9 ["Offset"]
       21 MUL                              R11 R12 R13
       22 SETTABLEKS                       R9 R10 K10 ["Name"]
       24 GETTABLEKS                       R13 R2 K11 ["Position"]
       26 GETIMPORT                        R14 K14 [UDim2.new]
       28 LOADN                            R15 0
       29 LOADN                            R16 0
       30 LOADN                            R17 0
       31 MOVE                             R18 R11
       32 CALL                             R14 4 1
       33 ADD                              R12 R13 R14
       34 SETTABLEKS                       R12 R10 K11 ["Position"]
       36 GETTABLEKS                       R12 R10 K15 ["Description"]
       38 SETTABLEKS                       R9 R12 K16 ["Text"]
       40 GETUPVAL                         R12 0
       41 MOVE                             R13 R10
       42 CALL                             R12 1 0
       43 LENGTH                           R13 R4
       44 ADDK                             R12 R13 K6 [1]
       45 SETTABLE                         R10 R4 R12
       46 SETTABLEKS                       R1 R10 K17 ["Parent"]
       48 FORGLOOP                         R5 2 [inext] ; [-38]
       50 RETURN                           R4 1

PROTO_14:
        0 JUMPIFEQKS                       R2 K0 [""] ; [+21]
        2 GETIMPORT                        R3 K3 [string.find]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K4 ["<"]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+14]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["RemoveAssetUrlFromText"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R1 K6 ["Text"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R4 R0 K7 ["Name"]
       19 GETTABLEKS                       R5 R1 K6 ["Text"]
       21 SETTABLE                         R5 R3 R4
       22 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["Text"]
        5 JUMPIFEQKS                       R2 K1 [""] ; [+21]
        7 GETIMPORT                        R3 K4 [string.find]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K5 ["<"]
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+14]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R3 R3 K6 ["RemoveAssetUrlFromText"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R1 K0 ["Text"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R4 R0 K7 ["Name"]
       24 GETTABLEKS                       R5 R1 K0 ["Text"]
       26 SETTABLE                         R5 R3 R4
       27 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETIMPORT                        R4 K1 [ipairs]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 3
        7 FORGPREP_INEXT                   R4
        8 MOVE                             R11 R2
        9 NAMECALL                         R9 R8 K2 ["FindFirstChild"]
       11 CALL                             R9 2 1
       12 JUMPIF                           R9 ; [+12]
       13 GETIMPORT                        R10 K4 [warn]
       15 LOADK                            R12 K5 ["Broken entry box for field "]
       16 MOVE                             R13 R2
       17 LOADK                            R14 K6 ["\n"]
       18 LOADK                            R15 K7 ["Traceback: "]
       19 GETIMPORT                        R16 K10 [debug.traceback]
       21 CALL                             R16 0 1
       22 CONCAT                           R11 R12 R16
       23 CALL                             R10 1 0
       24 JUMP                             ; [+35]
       25 LOADK                            R12 K11 ["Text"]
       26 NAMECALL                         R10 R9 K12 ["GetPropertyChangedSignal"]
       28 CALL                             R10 2 1
       29 NEWCLOSURE                       R12 P1
       30 CAPTURE                          VAL R8
       31 CAPTURE                          VAL R9
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R10 R10 K13 ["Connect"]
       36 CALL                             R10 2 0
       37 GETTABLEKS                       R10 R9 K11 ["Text"]
       39 JUMPIFEQKS                       R10 K14 [""] ; [+20]
       41 GETIMPORT                        R11 K17 [string.find]
       43 MOVE                             R12 R10
       44 LOADK                            R13 K18 ["<"]
       45 CALL                             R11 2 1
       46 JUMPIFNOTEQKNIL                  R11 ; [+13]
       48 GETUPVAL                         R11 0
       49 GETTABLEKS                       R11 R11 K19 ["RemoveAssetUrlFromText"]
       51 MOVE                             R12 R10
       52 CALL                             R11 1 1
       53 SETTABLEKS                       R11 R9 K11 ["Text"]
       55 GETTABLEKS                       R11 R8 K20 ["Name"]
       57 GETTABLEKS                       R12 R9 K11 ["Text"]
       59 SETTABLE                         R12 R0 R11
       60 FORGLOOP                         R4 2 [inext] ; [-53]
       62 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        4 GETIMPORT                        R2 K4 [string.find]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K5 ["<"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+16]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["RemoveAssetUrlFromText"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K0 ["Text"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K7 ["_r6TexturesMap"]
       21 GETTABLEKS                       R3 R0 K8 ["Name"]
       23 GETTABLEKS                       R4 R0 K0 ["Text"]
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Text"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        5 GETIMPORT                        R2 K4 [string.find]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K5 ["<"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+16]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R0 K0 ["Text"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K7 ["_r6TexturesMap"]
       22 GETTABLEKS                       R3 R0 K8 ["Name"]
       24 GETTABLEKS                       R4 R0 K0 ["Text"]
       26 SETTABLE                         R4 R2 R3
       27 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Text"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        5 GETIMPORT                        R2 K4 [string.find]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K5 ["<"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+16]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R0 K0 ["Text"]
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K7 ["_r6TexturesMap"]
       22 GETTABLEKS                       R3 R0 K8 ["Name"]
       24 GETTABLEKS                       R4 R0 K0 ["Text"]
       26 SETTABLE                         R4 R2 R3
       27 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_r6TexturesMap"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["GetCharacterMeshPropertyFromRig"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["Name"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K3 ["RemoveAssetUrlFromText"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K4 ["Text"]
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K1 ["GetCharacterMeshPropertyFromRig"]
       25 MOVE                             R4 R1
       26 GETUPVAL                         R5 3
       27 GETTABLEKS                       R5 R5 K2 ["Name"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+8]
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R5 1
       33 GETTABLEKS                       R5 R5 K3 ["RemoveAssetUrlFromText"]
       35 MOVE                             R6 R3
       36 CALL                             R5 1 1
       37 SETTABLEKS                       R5 R4 K4 ["Text"]
       39 GETUPVAL                         R4 2
       40 GETTABLEKS                       R5 R4 K4 ["Text"]
       42 JUMPIFEQKS                       R5 K5 [""] ; [+23]
       44 GETIMPORT                        R6 K8 [string.find]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K9 ["<"]
       48 CALL                             R6 2 1
       49 JUMPIFNOTEQKNIL                  R6 ; [+16]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K3 ["RemoveAssetUrlFromText"]
       54 MOVE                             R7 R5
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R4 K4 ["Text"]
       58 GETUPVAL                         R6 0
       59 GETTABLEKS                       R6 R6 K0 ["_r6TexturesMap"]
       61 GETTABLEKS                       R7 R4 K2 ["Name"]
       63 GETTABLEKS                       R8 R4 K4 ["Text"]
       65 SETTABLE                         R8 R6 R7
       66 GETUPVAL                         R4 3
       67 GETTABLEKS                       R5 R4 K4 ["Text"]
       69 JUMPIFEQKS                       R5 K5 [""] ; [+23]
       71 GETIMPORT                        R6 K8 [string.find]
       73 MOVE                             R7 R5
       74 LOADK                            R8 K9 ["<"]
       75 CALL                             R6 2 1
       76 JUMPIFNOTEQKNIL                  R6 ; [+16]
       78 GETUPVAL                         R6 1
       79 GETTABLEKS                       R6 R6 K3 ["RemoveAssetUrlFromText"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R4 K4 ["Text"]
       85 GETUPVAL                         R6 0
       86 GETTABLEKS                       R6 R6 K0 ["_r6TexturesMap"]
       88 GETTABLEKS                       R7 R4 K2 ["Name"]
       90 GETTABLEKS                       R8 R4 K4 ["Text"]
       92 SETTABLE                         R8 R6 R7
       93 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R3 K2 [UDim2.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 5
        4 LOADN                            R6 0
        5 LOADN                            R7 45
        6 CALL                             R3 4 1
        7 GETIMPORT                        R4 K4 [Instance.new]
        9 LOADK                            R5 K5 ["Frame"]
       10 CALL                             R4 1 1
       11 LOADK                            R5 K6 ["EntryBox"]
       12 SETTABLEKS                       R5 R4 K7 ["Name"]
       14 LOADN                            R5 1
       15 SETTABLEKS                       R5 R4 K8 ["BackgroundTransparency"]
       17 LOADN                            R5 0
       18 SETTABLEKS                       R5 R4 K9 ["BorderSizePixel"]
       20 GETIMPORT                        R5 K2 [UDim2.new]
       22 LOADN                            R6 1
       23 LOADN                            R7 -10
       24 LOADN                            R8 0
       25 LOADN                            R9 25
       26 CALL                             R5 4 1
       27 SETTABLEKS                       R5 R4 K10 ["Size"]
       29 SETTABLEKS                       R3 R4 K11 ["Position"]
       31 MOVE                             R2 R4
       32 GETIMPORT                        R4 K2 [UDim2.new]
       34 LOADN                            R5 0
       35 LOADN                            R6 0
       36 LOADN                            R7 0
       37 LOADN                            R8 0
       38 CALL                             R4 4 1
       39 GETIMPORT                        R5 K4 [Instance.new]
       41 LOADK                            R6 K12 ["TextBox"]
       42 CALL                             R5 1 1
       43 LOADK                            R6 K13 ["BaseTextureId"]
       44 SETTABLEKS                       R6 R5 K7 ["Name"]
       46 LOADK                            R6 K14 ["<BaseTextureId>"]
       47 SETTABLEKS                       R6 R5 K15 ["Text"]
       49 GETUPVAL                         R6 0
       50 SETTABLEKS                       R6 R5 K16 ["BackgroundColor3"]
       52 GETUPVAL                         R6 1
       53 SETTABLEKS                       R6 R5 K17 ["BorderColor3"]
       55 SETTABLEKS                       R4 R5 K11 ["Position"]
       57 GETIMPORT                        R6 K2 [UDim2.new]
       59 LOADK                            R7 K18 [0.5]
       60 LOADN                            R8 0
       61 LOADN                            R9 0
       62 LOADN                            R10 25
       63 CALL                             R6 4 1
       64 SETTABLEKS                       R6 R5 K10 ["Size"]
       66 GETIMPORT                        R6 K22 [Enum.Font.SourceSans]
       68 SETTABLEKS                       R6 R5 K20 ["Font"]
       70 GETUPVAL                         R6 2
       71 SETTABLEKS                       R6 R5 K23 ["TextColor3"]
       73 LOADN                            R6 14
       74 SETTABLEKS                       R6 R5 K24 ["TextSize"]
       76 LOADN                            R6 1
       77 SETTABLEKS                       R6 R5 K25 ["TextStrokeTransparency"]
       79 SETTABLEKS                       R2 R5 K26 ["Parent"]
       81 MOVE                             R3 R5
       82 GETIMPORT                        R5 K2 [UDim2.new]
       84 LOADK                            R6 K18 [0.5]
       85 LOADN                            R7 0
       86 LOADN                            R8 0
       87 LOADN                            R9 0
       88 CALL                             R5 4 1
       89 GETIMPORT                        R6 K4 [Instance.new]
       91 LOADK                            R7 K12 ["TextBox"]
       92 CALL                             R6 1 1
       93 LOADK                            R7 K27 ["OverlayTextureId"]
       94 SETTABLEKS                       R7 R6 K7 ["Name"]
       96 LOADK                            R7 K28 ["<OverlayTextureId>"]
       97 SETTABLEKS                       R7 R6 K15 ["Text"]
       99 GETUPVAL                         R7 0
      100 SETTABLEKS                       R7 R6 K16 ["BackgroundColor3"]
      102 GETUPVAL                         R7 1
      103 SETTABLEKS                       R7 R6 K17 ["BorderColor3"]
      105 SETTABLEKS                       R5 R6 K11 ["Position"]
      107 GETIMPORT                        R7 K2 [UDim2.new]
      109 LOADK                            R8 K18 [0.5]
      110 LOADN                            R9 0
      111 LOADN                            R10 0
      112 LOADN                            R11 25
      113 CALL                             R7 4 1
      114 SETTABLEKS                       R7 R6 K10 ["Size"]
      116 GETIMPORT                        R7 K22 [Enum.Font.SourceSans]
      118 SETTABLEKS                       R7 R6 K20 ["Font"]
      120 GETUPVAL                         R7 2
      121 SETTABLEKS                       R7 R6 K23 ["TextColor3"]
      123 LOADN                            R7 14
      124 SETTABLEKS                       R7 R6 K24 ["TextSize"]
      126 LOADN                            R7 1
      127 SETTABLEKS                       R7 R6 K25 ["TextStrokeTransparency"]
      129 SETTABLEKS                       R2 R6 K26 ["Parent"]
      131 MOVE                             R4 R6
      132 GETUPVAL                         R5 3
      133 MOVE                             R6 R2
      134 CALL                             R5 1 0
      135 NEWCLOSURE                       R5 P0
      136 CAPTURE                          UPVAL U4
      137 CAPTURE                          VAL R0
      138 LOADK                            R8 K15 ["Text"]
      139 NAMECALL                         R6 R3 K29 ["GetPropertyChangedSignal"]
      141 CALL                             R6 2 1
      142 NEWCLOSURE                       R8 P1
      143 CAPTURE                          VAL R3
      144 CAPTURE                          UPVAL U4
      145 CAPTURE                          VAL R0
      146 NAMECALL                         R6 R6 K30 ["Connect"]
      148 CALL                             R6 2 0
      149 LOADK                            R8 K15 ["Text"]
      150 NAMECALL                         R6 R4 K29 ["GetPropertyChangedSignal"]
      152 CALL                             R6 2 1
      153 NEWCLOSURE                       R8 P2
      154 CAPTURE                          VAL R4
      155 CAPTURE                          UPVAL U4
      156 CAPTURE                          VAL R0
      157 NAMECALL                         R6 R6 K30 ["Connect"]
      159 CALL                             R6 2 0
      160 GETTABLEKS                       R7 R0 K31 ["_configureConnections"]
      162 GETTABLEKS                       R8 R0 K32 ["_onConfigureStarted"]
      164 GETTABLEKS                       R8 R8 K33 ["Event"]
      166 NEWCLOSURE                       R10 P3
      167 CAPTURE                          VAL R0
      168 CAPTURE                          UPVAL U4
      169 CAPTURE                          VAL R3
      170 CAPTURE                          VAL R4
      171 NAMECALL                         R8 R8 K30 ["Connect"]
      173 CALL                             R8 2 -1
      174 FASTCALL                         TABLE_INSERT ; [+2]
      175 GETIMPORT                        R6 K36 [table.insert]
      177 CALL                             R6 -1 0
      178 SETTABLEKS                       R1 R2 K26 ["Parent"]
      180 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["ClearAllChildren"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["GetBodyPartNames"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R5 0
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R2
       12 NAMECALL                         R3 R3 K2 ["_entryBoxListSetup"]
       14 CALL                             R3 4 1
       15 GETIMPORT                        R4 K4 [ipairs]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 3
       19 FORGPREP_INEXT                   R4
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R9 R9 K5 ["GetCurrentCharacterMeshIdFromRig"]
       23 MOVE                             R10 R1
       24 GETTABLEKS                       R11 R8 K6 ["Name"]
       26 CALL                             R9 2 1
       27 JUMPIFNOT                        R9 ; [+4]
       28 GETTABLEKS                       R10 R8 K7 ["MeshId"]
       30 SETTABLEKS                       R9 R10 K8 ["Text"]
       32 FORGLOOP                         R4 2 [inext] ; [-13]
       34 GETUPVAL                         R4 2
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K9 ["_r6MeshesMap"]
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R5 R5 K9 ["_r6MeshesMap"]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K7 ["MeshId"]
       45 CALL                             R4 3 0
       46 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["CharacterMeshIDs"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K7 ["BorderSizePixel"]
       13 GETIMPORT                        R3 K9 [UDim2.new]
       15 LOADN                            R4 1
       16 LOADN                            R5 0
       17 LOADN                            R6 0
       18 LOADN                            R7 175
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K10 ["Size"]
       22 GETIMPORT                        R3 K9 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 0
       26 LOADN                            R6 0
       27 LOADN                            R7 125
       28 CALL                             R3 4 1
       29 SETTABLEKS                       R3 R2 K11 ["Position"]
       31 GETUPVAL                         R3 0
       32 LOADK                            R4 K12 ["MeshId"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R5 R0 K13 ["_configureConnections"]
       36 GETTABLEKS                       R6 R0 K14 ["_onConfigureStarted"]
       38 GETTABLEKS                       R6 R6 K15 ["Event"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U2
       46 NAMECALL                         R6 R6 K16 ["Connect"]
       48 CALL                             R6 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R4 K19 [table.insert]
       52 CALL                             R4 -1 0
       53 SETTABLEKS                       R1 R2 K20 ["Parent"]
       55 RETURN                           R0 0

PROTO_24:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+26]
        2 GETIMPORT                        R1 K3 [string.find]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K4 ["<"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+19]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K5 ["TextureId"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K7 ["Text"]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K5 ["TextureId"]
       23 GETTABLEKS                       R2 R2 K7 ["Text"]
       25 SETTABLEKS                       R2 R1 K8 ["_faceTextureId"]
       27 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["TextureId"]
        3 GETTABLEKS                       R0 R0 K1 ["Text"]
        5 JUMPIFEQKS                       R0 K2 [""] ; [+26]
        7 GETIMPORT                        R1 K5 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K6 ["<"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+19]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["TextureId"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["RemoveAssetUrlFromText"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K1 ["Text"]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K0 ["TextureId"]
       28 GETTABLEKS                       R2 R2 K1 ["Text"]
       30 SETTABLEKS                       R2 R1 K8 ["_faceTextureId"]
       32 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["FindFaceTexture"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+27]
        7 JUMPIFEQKS                       R2 K1 [""] ; [+26]
        9 GETIMPORT                        R3 K4 [string.find]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K5 ["<"]
       13 CALL                             R3 2 1
       14 JUMPIFNOTEQKNIL                  R3 ; [+19]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K6 ["TextureId"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K7 ["RemoveAssetUrlFromText"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K8 ["Text"]
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K6 ["TextureId"]
       30 GETTABLEKS                       R4 R4 K8 ["Text"]
       32 SETTABLEKS                       R4 R3 K9 ["_faceTextureId"]
       34 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TextureId"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [UDim2.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 5
        7 LOADN                            R6 0
        8 LOADN                            R7 315
        9 CALL                             R3 4 1
       10 SETTABLEKS                       R3 R2 K4 ["Position"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R0
       16 GETTABLEKS                       R4 R2 K5 ["Description"]
       18 LOADK                            R5 K6 ["Texture ID:"]
       19 SETTABLEKS                       R5 R4 K7 ["Text"]
       21 GETTABLEKS                       R4 R2 K0 ["TextureId"]
       23 LOADK                            R6 K7 ["Text"]
       24 NAMECALL                         R4 R4 K8 ["GetPropertyChangedSignal"]
       26 CALL                             R4 2 1
       27 NEWCLOSURE                       R6 P1
       28 CAPTURE                          VAL R2
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 NAMECALL                         R4 R4 K9 ["Connect"]
       33 CALL                             R4 2 0
       34 GETTABLEKS                       R5 R0 K10 ["_configureConnections"]
       36 GETTABLEKS                       R6 R0 K11 ["_onConfigureStarted"]
       38 GETTABLEKS                       R6 R6 K12 ["Event"]
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 NAMECALL                         R6 R6 K9 ["Connect"]
       46 CALL                             R6 2 -1
       47 FASTCALL                         TABLE_INSERT ; [+2]
       48 GETIMPORT                        R4 K15 [table.insert]
       50 CALL                             R4 -1 0
       51 SETTABLEKS                       R1 R2 K16 ["Parent"]
       53 RETURN                           R0 0

PROTO_28:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["R6"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K7 ["BorderSizePixel"]
       13 GETIMPORT                        R3 K9 [UDim2.new]
       15 LOADN                            R4 0
       16 LOADN                            R5 0
       17 LOADN                            R6 0
       18 LOADN                            R7 40
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K10 ["Position"]
       22 GETIMPORT                        R3 K9 [UDim2.new]
       24 LOADK                            R4 K11 [0.5]
       25 LOADN                            R5 0
       26 LOADN                            R6 1
       27 LOADN                            R7 -25
       28 CALL                             R3 4 1
       29 SETTABLEKS                       R3 R2 K12 ["Size"]
       31 LOADN                            R3 2
       32 SETTABLEKS                       R3 R2 K13 ["ZIndex"]
       34 GETUPVAL                         R3 0
       35 MOVE                             R4 R2
       36 LOADK                            R5 K4 ["R6"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 1
       39 MOVE                             R4 R2
       40 LOADK                            R5 K14 ["Enter Texture IDs"]
       41 GETIMPORT                        R6 K9 [UDim2.new]
       43 LOADN                            R7 0
       44 LOADN                            R8 5
       45 LOADN                            R9 0
       46 LOADN                            R10 20
       47 CALL                             R6 4 -1
       48 CALL                             R3 -1 0
       49 MOVE                             R5 R2
       50 NAMECALL                         R3 R0 K15 ["_constructR6TextureBoxes"]
       52 CALL                             R3 2 0
       53 GETUPVAL                         R3 1
       54 MOVE                             R4 R2
       55 LOADK                            R5 K16 ["Enter Character Mesh IDs"]
       56 GETIMPORT                        R6 K9 [UDim2.new]
       58 LOADN                            R7 0
       59 LOADN                            R8 5
       60 LOADN                            R9 0
       61 LOADN                            R10 100
       62 CALL                             R6 4 -1
       63 CALL                             R3 -1 0
       64 MOVE                             R5 R2
       65 NAMECALL                         R3 R0 K17 ["_constructR6MeshBoxes"]
       67 CALL                             R3 2 0
       68 GETUPVAL                         R3 1
       69 MOVE                             R4 R2
       70 LOADK                            R5 K18 ["Face Texture ID"]
       71 GETIMPORT                        R6 K9 [UDim2.new]
       73 LOADN                            R7 0
       74 LOADN                            R8 5
       75 LOADN                            R9 0
       76 LOADN                            R10 290
       77 CALL                             R6 4 -1
       78 CALL                             R3 -1 0
       79 MOVE                             R5 R2
       80 NAMECALL                         R3 R0 K19 ["_constructFaceTextureEntry"]
       82 CALL                             R3 2 0
       83 SETTABLEKS                       R1 R2 K20 ["Parent"]
       85 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["ClearAllChildren"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["GetLimbNames"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 3
       11 MOVE                             R6 R1
       12 NAMECALL                         R2 R2 K2 ["_entryBoxListSetup"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K4 [ipairs]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 3
       19 FORGPREP_INEXT                   R3
       20 GETUPVAL                         R8 1
       21 GETTABLEKS                       R8 R8 K5 ["GetCurrentTextureIdFromRig"]
       23 MOVE                             R9 R0
       24 GETTABLEKS                       R10 R7 K6 ["Name"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+4]
       28 GETTABLEKS                       R9 R7 K7 ["TextureID"]
       30 SETTABLEKS                       R8 R9 K8 ["Text"]
       32 FORGLOOP                         R3 2 [inext] ; [-13]
       34 GETUPVAL                         R3 2
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K9 ["_r15TexturesMap"]
       39 GETUPVAL                         R3 4
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K9 ["_r15TexturesMap"]
       43 MOVE                             R5 R2
       44 LOADK                            R6 K7 ["TextureID"]
       45 CALL                             R3 3 0
       46 RETURN                           R0 0

PROTO_30:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["TextureIDs"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K7 ["BorderSizePixel"]
       13 GETIMPORT                        R3 K9 [UDim2.new]
       15 LOADN                            R4 1
       16 LOADN                            R5 0
       17 LOADN                            R6 1
       18 LOADN                            R7 -20
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K10 ["Size"]
       22 GETIMPORT                        R3 K9 [UDim2.new]
       24 LOADN                            R4 0
       25 LOADN                            R5 0
       26 LOADN                            R6 0
       27 LOADN                            R7 45
       28 CALL                             R3 4 1
       29 SETTABLEKS                       R3 R2 K11 ["Position"]
       31 GETUPVAL                         R3 0
       32 LOADK                            R4 K12 ["TextureID"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R5 R0 K13 ["_configureConnections"]
       36 GETTABLEKS                       R6 R0 K14 ["_onConfigureStarted"]
       38 GETTABLEKS                       R6 R6 K15 ["Event"]
       40 NEWCLOSURE                       R8 P0
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U2
       46 NAMECALL                         R6 R6 K16 ["Connect"]
       48 CALL                             R6 2 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R4 K19 [table.insert]
       52 CALL                             R4 -1 0
       53 SETTABLEKS                       R1 R2 K20 ["Parent"]
       55 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["R15"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K6 ["BackgroundTransparency"]
       10 LOADN                            R3 0
       11 SETTABLEKS                       R3 R2 K7 ["BorderSizePixel"]
       13 GETIMPORT                        R3 K9 [UDim2.new]
       15 LOADK                            R4 K10 [0.5]
       16 LOADN                            R5 5
       17 LOADN                            R6 0
       18 LOADN                            R7 40
       19 CALL                             R3 4 1
       20 SETTABLEKS                       R3 R2 K11 ["Position"]
       22 GETIMPORT                        R3 K9 [UDim2.new]
       24 LOADK                            R4 K10 [0.5]
       25 LOADN                            R5 -5
       26 LOADN                            R6 1
       27 LOADN                            R7 -100
       28 CALL                             R3 4 1
       29 SETTABLEKS                       R3 R2 K12 ["Size"]
       31 LOADN                            R3 2
       32 SETTABLEKS                       R3 R2 K13 ["ZIndex"]
       34 GETUPVAL                         R3 0
       35 MOVE                             R4 R2
       36 LOADK                            R5 K4 ["R15"]
       37 CALL                             R3 2 0
       38 GETUPVAL                         R3 1
       39 MOVE                             R4 R2
       40 LOADK                            R5 K14 ["Enter Texture IDs"]
       41 GETIMPORT                        R6 K9 [UDim2.new]
       43 LOADN                            R7 0
       44 LOADN                            R8 5
       45 LOADN                            R9 0
       46 LOADN                            R10 20
       47 CALL                             R6 4 -1
       48 CALL                             R3 -1 0
       49 MOVE                             R5 R2
       50 NAMECALL                         R3 R0 K15 ["_constructConfigureTextures"]
       52 CALL                             R3 2 0
       53 SETTABLEKS                       R1 R2 K16 ["Parent"]
       55 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onCancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onFinished"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_34:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["RigConfiguration"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K6 ["Visible"]
       10 GETUPVAL                         R3 0
       11 SETTABLEKS                       R3 R2 K7 ["BackgroundColor3"]
       13 LOADK                            R3 K8 [0.5]
       14 SETTABLEKS                       R3 R2 K9 ["BackgroundTransparency"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K10 ["BorderSizePixel"]
       19 GETIMPORT                        R3 K12 [UDim2.new]
       21 LOADK                            R4 K8 [0.5]
       22 LOADN                            R5 -300
       23 LOADK                            R6 K8 [0.5]
       24 LOADN                            R7 -250
       25 CALL                             R3 4 1
       26 SETTABLEKS                       R3 R2 K13 ["Position"]
       28 GETIMPORT                        R3 K12 [UDim2.new]
       30 LOADN                            R4 0
       31 LOADN                            R5 600
       32 LOADN                            R6 0
       33 LOADN                            R7 400
       34 CALL                             R3 4 1
       35 SETTABLEKS                       R3 R2 K14 ["Size"]
       37 GETIMPORT                        R3 K2 [Instance.new]
       39 LOADK                            R4 K15 ["TextLabel"]
       40 CALL                             R3 1 1
       41 LOADK                            R4 K16 ["Topbar"]
       42 SETTABLEKS                       R4 R3 K5 ["Name"]
       44 GETUPVAL                         R4 1
       45 SETTABLEKS                       R4 R3 K7 ["BackgroundColor3"]
       47 LOADN                            R4 0
       48 SETTABLEKS                       R4 R3 K9 ["BackgroundTransparency"]
       50 GETUPVAL                         R4 2
       51 SETTABLEKS                       R4 R3 K17 ["BorderColor3"]
       53 GETIMPORT                        R4 K12 [UDim2.new]
       55 LOADN                            R5 0
       56 LOADN                            R6 0
       57 LOADN                            R7 0
       58 LOADN                            R8 0
       59 CALL                             R4 4 1
       60 SETTABLEKS                       R4 R3 K13 ["Position"]
       62 GETIMPORT                        R4 K12 [UDim2.new]
       64 LOADN                            R5 1
       65 LOADN                            R6 0
       66 LOADN                            R7 0
       67 LOADN                            R8 5
       68 CALL                             R4 4 1
       69 SETTABLEKS                       R4 R3 K14 ["Size"]
       71 LOADK                            R4 K18 [""]
       72 SETTABLEKS                       R4 R3 K19 ["Text"]
       74 SETTABLEKS                       R2 R3 K20 ["Parent"]
       76 GETIMPORT                        R4 K2 [Instance.new]
       78 LOADK                            R5 K15 ["TextLabel"]
       79 CALL                             R4 1 1
       80 LOADK                            R5 K21 ["Title"]
       81 SETTABLEKS                       R5 R4 K5 ["Name"]
       83 LOADK                            R5 K22 ["Configure Imported Rig"]
       84 SETTABLEKS                       R5 R4 K19 ["Text"]
       86 LOADN                            R5 1
       87 SETTABLEKS                       R5 R4 K9 ["BackgroundTransparency"]
       89 LOADN                            R5 0
       90 SETTABLEKS                       R5 R4 K10 ["BorderSizePixel"]
       92 GETIMPORT                        R5 K12 [UDim2.new]
       94 LOADN                            R6 0
       95 LOADN                            R7 15
       96 LOADN                            R8 0
       97 LOADN                            R9 5
       98 CALL                             R5 4 1
       99 SETTABLEKS                       R5 R4 K13 ["Position"]
      101 GETIMPORT                        R5 K12 [UDim2.new]
      103 LOADN                            R6 1
      104 LOADN                            R7 0
      105 LOADN                            R8 0
      106 LOADN                            R9 40
      107 CALL                             R5 4 1
      108 SETTABLEKS                       R5 R4 K14 ["Size"]
      110 LOADN                            R5 18
      111 SETTABLEKS                       R5 R4 K23 ["TextSize"]
      113 GETIMPORT                        R5 K27 [Enum.Font.SourceSansBold]
      115 SETTABLEKS                       R5 R4 K25 ["Font"]
      117 LOADN                            R5 1
      118 SETTABLEKS                       R5 R4 K28 ["TextStrokeTransparency"]
      120 GETUPVAL                         R5 3
      121 SETTABLEKS                       R5 R4 K29 ["TextColor3"]
      123 SETTABLEKS                       R2 R4 K20 ["Parent"]
      125 GETIMPORT                        R5 K2 [Instance.new]
      127 LOADK                            R6 K3 ["Frame"]
      128 CALL                             R5 1 1
      129 LOADK                            R6 K30 ["Divide"]
      130 SETTABLEKS                       R6 R5 K5 ["Name"]
      132 GETUPVAL                         R6 4
      133 SETTABLEKS                       R6 R5 K7 ["BackgroundColor3"]
      135 LOADN                            R6 0
      136 SETTABLEKS                       R6 R5 K9 ["BackgroundTransparency"]
      138 GETUPVAL                         R6 2
      139 SETTABLEKS                       R6 R5 K17 ["BorderColor3"]
      141 GETIMPORT                        R6 K12 [UDim2.new]
      143 LOADK                            R7 K8 [0.5]
      144 LOADN                            R8 2
      145 LOADN                            R9 0
      146 LOADN                            R10 60
      147 CALL                             R6 4 1
      148 SETTABLEKS                       R6 R5 K13 ["Position"]
      150 GETIMPORT                        R6 K12 [UDim2.new]
      152 LOADN                            R7 0
      153 LOADN                            R8 2
      154 LOADN                            R9 1
      155 LOADN                            R10 -66
      156 CALL                             R6 4 1
      157 SETTABLEKS                       R6 R5 K14 ["Size"]
      159 SETTABLEKS                       R2 R5 K20 ["Parent"]
      161 GETIMPORT                        R6 K2 [Instance.new]
      163 LOADK                            R7 K31 ["TextButton"]
      164 CALL                             R6 1 1
      165 LOADK                            R7 K32 ["Cancel"]
      166 SETTABLEKS                       R7 R6 K5 ["Name"]
      168 GETUPVAL                         R7 5
      169 SETTABLEKS                       R7 R6 K7 ["BackgroundColor3"]
      171 GETUPVAL                         R7 6
      172 SETTABLEKS                       R7 R6 K17 ["BorderColor3"]
      174 GETIMPORT                        R7 K12 [UDim2.new]
      176 LOADN                            R8 1
      177 LOADN                            R9 -270
      178 LOADN                            R10 1
      179 LOADN                            R11 -40
      180 CALL                             R7 4 1
      181 SETTABLEKS                       R7 R6 K13 ["Position"]
      183 GETIMPORT                        R7 K12 [UDim2.new]
      185 LOADN                            R8 0
      186 LOADN                            R9 120
      187 LOADN                            R10 0
      188 LOADN                            R11 30
      189 CALL                             R7 4 1
      190 SETTABLEKS                       R7 R6 K14 ["Size"]
      192 LOADK                            R7 K32 ["Cancel"]
      193 SETTABLEKS                       R7 R6 K19 ["Text"]
      195 GETIMPORT                        R7 K27 [Enum.Font.SourceSansBold]
      197 SETTABLEKS                       R7 R6 K25 ["Font"]
      199 GETUPVAL                         R7 3
      200 SETTABLEKS                       R7 R6 K29 ["TextColor3"]
      202 LOADN                            R7 14
      203 SETTABLEKS                       R7 R6 K23 ["TextSize"]
      205 GETIMPORT                        R7 K34 [Color3.new]
      207 LOADN                            R8 0
      208 LOADN                            R9 0
      209 LOADN                            R10 0
      210 CALL                             R7 3 1
      211 SETTABLEKS                       R7 R6 K35 ["TextStrokeColor3"]
      213 LOADK                            R7 K36 [0.75]
      214 SETTABLEKS                       R7 R6 K28 ["TextStrokeTransparency"]
      216 GETTABLEKS                       R7 R6 K37 ["MouseButton1Down"]
      218 NEWCLOSURE                       R9 P0
      219 CAPTURE                          VAL R0
      220 NAMECALL                         R7 R7 K38 ["Connect"]
      222 CALL                             R7 2 0
      223 SETTABLEKS                       R2 R6 K20 ["Parent"]
      225 GETIMPORT                        R7 K2 [Instance.new]
      227 LOADK                            R8 K31 ["TextButton"]
      228 CALL                             R7 1 1
      229 LOADK                            R8 K39 ["Done"]
      230 SETTABLEKS                       R8 R7 K5 ["Name"]
      232 GETUPVAL                         R8 4
      233 SETTABLEKS                       R8 R7 K7 ["BackgroundColor3"]
      235 GETUPVAL                         R8 6
      236 SETTABLEKS                       R8 R7 K17 ["BorderColor3"]
      238 GETIMPORT                        R8 K12 [UDim2.new]
      240 LOADN                            R9 1
      241 LOADN                            R10 -140
      242 LOADN                            R11 1
      243 LOADN                            R12 -40
      244 CALL                             R8 4 1
      245 SETTABLEKS                       R8 R7 K13 ["Position"]
      247 GETIMPORT                        R8 K12 [UDim2.new]
      249 LOADN                            R9 0
      250 LOADN                            R10 120
      251 LOADN                            R11 0
      252 LOADN                            R12 30
      253 CALL                             R8 4 1
      254 SETTABLEKS                       R8 R7 K14 ["Size"]
      256 LOADK                            R8 K39 ["Done"]
      257 SETTABLEKS                       R8 R7 K19 ["Text"]
      259 GETIMPORT                        R8 K27 [Enum.Font.SourceSansBold]
      261 SETTABLEKS                       R8 R7 K25 ["Font"]
      263 GETUPVAL                         R8 3
      264 SETTABLEKS                       R8 R7 K29 ["TextColor3"]
      266 LOADN                            R8 14
      267 SETTABLEKS                       R8 R7 K23 ["TextSize"]
      269 GETIMPORT                        R8 K34 [Color3.new]
      271 LOADN                            R9 0
      272 LOADN                            R10 0
      273 LOADN                            R11 0
      274 CALL                             R8 3 1
      275 SETTABLEKS                       R8 R7 K35 ["TextStrokeColor3"]
      277 LOADK                            R8 K36 [0.75]
      278 SETTABLEKS                       R8 R7 K28 ["TextStrokeTransparency"]
      280 GETTABLEKS                       R8 R7 K37 ["MouseButton1Down"]
      282 NEWCLOSURE                       R10 P1
      283 CAPTURE                          VAL R0
      284 NAMECALL                         R8 R8 K38 ["Connect"]
      286 CALL                             R8 2 0
      287 SETTABLEKS                       R2 R7 K20 ["Parent"]
      289 MOVE                             R10 R2
      290 NAMECALL                         R8 R0 K40 ["_constructConfigureR6"]
      292 CALL                             R8 2 0
      293 MOVE                             R10 R2
      294 NAMECALL                         R8 R0 K41 ["_constructConfigureR15"]
      296 CALL                             R8 2 0
      297 SETTABLEKS                       R1 R2 K20 ["Parent"]
      299 SETTABLEKS                       R2 R0 K42 ["_configureFrame"]
      301 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["new"]
        5 CALL                             R0 0 1
        6 SETUPVAL                         R0 0
        7 GETUPVAL                         R0 0
        8 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R4 0
        1 JUMPIF                           R4 ; [+5]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["new"]
        5 CALL                             R4 0 1
        6 SETUPVAL                         R4 0
        7 GETUPVAL                         R3 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R1
       10 MOVE                             R7 R2
       11 NAMECALL                         R3 R3 K1 ["Open"]
       13 CALL                             R3 4 0
       14 RETURN                           R0 0

PROTO_37:
        0 GETIMPORT                        R0 K1 [workspace]
        2 LOADK                            R2 K2 ["ImportedFbx"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+5]
        7 GETIMPORT                        R1 K5 [warn]
        9 LOADK                            R2 K6 ["AvatarConfigurer.openExisting: no ImportedFbx model found in workspace."]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 LOADK                            R3 K7 ["R15ArtistIntent"]
       13 NAMECALL                         R1 R0 K3 ["FindFirstChild"]
       15 CALL                             R1 2 1
       16 LOADK                            R4 K8 ["R6"]
       17 NAMECALL                         R2 R0 K3 ["FindFirstChild"]
       19 CALL                             R2 2 1
       20 LOADK                            R5 K9 ["R15Fixed"]
       21 NAMECALL                         R3 R0 K3 ["FindFirstChild"]
       23 CALL                             R3 2 1
       24 JUMPIFNOT                        R1 ; [+2]
       25 JUMPIFNOT                        R2 ; [+1]
       26 JUMPIF                           R3 ; [+5]
       27 GETIMPORT                        R4 K5 [warn]
       29 LOADK                            R5 K10 ["AvatarConfigurer.openExisting: ImportedFbx is missing one or more rig variants."]
       30 CALL                             R4 1 0
       31 RETURN                           R0 0
       32 GETUPVAL                         R5 0
       33 JUMPIF                           R5 ; [+5]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K11 ["new"]
       37 CALL                             R5 0 1
       38 SETUPVAL                         R5 0
       39 GETUPVAL                         R4 0
       40 MOVE                             R6 R1
       41 MOVE                             R7 R2
       42 MOVE                             R8 R3
       43 NAMECALL                         R4 R4 K12 ["Open"]
       45 CALL                             R4 4 0
       46 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["CoreGui"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETIMPORT                        R3 K8 [script]
       15 GETTABLEKS                       R3 R3 K9 ["Parent"]
       17 GETTABLEKS                       R3 R3 K10 ["RigSetup"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K13 [Color3.fromRGB]
       22 LOADN                            R4 16
       23 LOADN                            R5 16
       24 LOADN                            R6 16
       25 CALL                             R3 3 1
       26 GETIMPORT                        R4 K13 [Color3.fromRGB]
       28 LOADN                            R5 70
       29 LOADN                            R6 70
       30 LOADN                            R7 70
       31 CALL                             R4 3 1
       32 GETIMPORT                        R5 K13 [Color3.fromRGB]
       34 LOADN                            R6 49
       35 LOADN                            R7 49
       36 LOADN                            R8 49
       37 CALL                             R5 3 1
       38 GETIMPORT                        R6 K13 [Color3.fromRGB]
       40 LOADN                            R7 49
       41 LOADN                            R8 49
       42 LOADN                            R9 49
       43 CALL                             R6 3 1
       44 GETIMPORT                        R7 K13 [Color3.fromRGB]
       46 LOADN                            R8 255
       47 LOADN                            R9 255
       48 LOADN                            R10 255
       49 CALL                             R7 3 1
       50 GETIMPORT                        R8 K13 [Color3.fromRGB]
       52 LOADN                            R9 255
       53 LOADN                            R10 165
       54 LOADN                            R11 10
       55 CALL                             R8 3 1
       56 GETIMPORT                        R9 K13 [Color3.fromRGB]
       58 LOADN                            R10 132
       59 LOADN                            R11 132
       60 LOADN                            R12 132
       61 CALL                             R9 3 1
       62 GETIMPORT                        R10 K13 [Color3.fromRGB]
       64 LOADN                            R11 27
       65 LOADN                            R12 42
       66 LOADN                            R13 53
       67 CALL                             R10 3 1
       68 DUPCLOSURE                       R11 K14 [PROTO_0]
       69 DUPCLOSURE                       R12 K15 [PROTO_1]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R7
       73 DUPCLOSURE                       R13 K16 [PROTO_2]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R12
       76 DUPCLOSURE                       R14 K17 [PROTO_3]
       77 CAPTURE                          VAL R8
       78 DUPCLOSURE                       R15 K18 [PROTO_4]
       79 CAPTURE                          VAL R7
       80 DUPCLOSURE                       R16 K19 [PROTO_7]
       81 DUPCLOSURE                       R17 K20 [PROTO_8]
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R17 R0 K21 ["new"]
       86 DUPCLOSURE                       R17 K22 [PROTO_9]
       87 SETTABLEKS                       R17 R0 K23 ["Open"]
       89 DUPCLOSURE                       R17 K24 [PROTO_10]
       90 CAPTURE                          VAL R2
       91 SETTABLEKS                       R17 R0 K25 ["_onFinished"]
       93 DUPCLOSURE                       R17 K26 [PROTO_11]
       94 SETTABLEKS                       R17 R0 K27 ["_onCancel"]
       96 DUPCLOSURE                       R17 K28 [PROTO_12]
       97 SETTABLEKS                       R17 R0 K29 ["_setEnabled"]
       99 DUPCLOSURE                       R17 K30 [PROTO_13]
      100 CAPTURE                          VAL R16
      101 SETTABLEKS                       R17 R0 K31 ["_entryBoxListSetup"]
      103 DUPCLOSURE                       R17 K32 [PROTO_16]
      104 CAPTURE                          VAL R2
      105 DUPCLOSURE                       R18 K33 [PROTO_21]
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R16
      110 CAPTURE                          VAL R2
      111 SETTABLEKS                       R18 R0 K34 ["_constructR6TextureBoxes"]
      113 DUPCLOSURE                       R18 K35 [PROTO_23]
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R2
      116 CAPTURE                          VAL R17
      117 SETTABLEKS                       R18 R0 K36 ["_constructR6MeshBoxes"]
      119 DUPCLOSURE                       R18 K37 [PROTO_27]
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R18 R0 K38 ["_constructFaceTextureEntry"]
      124 DUPCLOSURE                       R18 K39 [PROTO_28]
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R15
      127 SETTABLEKS                       R18 R0 K40 ["_constructConfigureR6"]
      129 DUPCLOSURE                       R18 K41 [PROTO_30]
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R17
      133 SETTABLEKS                       R18 R0 K42 ["_constructConfigureTextures"]
      135 DUPCLOSURE                       R18 K43 [PROTO_31]
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R15
      138 SETTABLEKS                       R18 R0 K44 ["_constructConfigureR15"]
      140 DUPCLOSURE                       R18 K45 [PROTO_34]
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R8
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R5
      148 SETTABLEKS                       R18 R0 K46 ["_constructUI"]
      150 LOADNIL                          R18
      151 NEWCLOSURE                       R19 P20
      152 CAPTURE                          REF R18
      153 CAPTURE                          VAL R0
      154 NEWCLOSURE                       R20 P21
      155 CAPTURE                          REF R18
      156 CAPTURE                          VAL R0
      157 SETTABLEKS                       R20 R0 K47 ["openWithRigs"]
      159 NEWCLOSURE                       R20 P22
      160 CAPTURE                          REF R18
      161 CAPTURE                          VAL R0
      162 SETTABLEKS                       R20 R0 K48 ["openExisting"]
      164 CLOSEUPVALS                      R18
      165 RETURN                           R0 1
