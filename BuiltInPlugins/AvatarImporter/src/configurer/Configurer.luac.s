PROTO_0:
        0 NEWTABLE                         R2 16 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 LOADB                            R2 0
        9 SETTABLEKS                       R2 R1 K2 ["_enabled"]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K3 ["_configureFrame"]
       14 LOADNIL                          R2
       15 SETTABLEKS                       R2 R1 K4 ["_r15Avatar"]
       17 LOADNIL                          R2
       18 SETTABLEKS                       R2 R1 K5 ["_r15Fixed"]
       20 LOADNIL                          R2
       21 SETTABLEKS                       R2 R1 K6 ["_r6Avatar"]
       23 NEWTABLE                         R2 0 0
       25 SETTABLEKS                       R2 R1 K7 ["_r15TexturesMap"]
       27 NEWTABLE                         R2 0 0
       29 SETTABLEKS                       R2 R1 K8 ["_r6TexturesMap"]
       31 NEWTABLE                         R2 0 0
       33 SETTABLEKS                       R2 R1 K9 ["_r6MeshesMap"]
       35 LOADNIL                          R2
       36 SETTABLEKS                       R2 R1 K10 ["_faceTextureId"]
       38 GETIMPORT                        R2 K13 [Instance.new]
       40 LOADK                            R3 K14 ["BindableEvent"]
       41 CALL                             R2 1 1
       42 SETTABLEKS                       R2 R1 K15 ["_onConfigureStarted"]
       44 MOVE                             R4 R0
       45 NAMECALL                         R2 R1 K16 ["_constructUI"]
       47 CALL                             R2 2 0
       48 NAMECALL                         R2 R1 K17 ["_setupExistingRigs"]
       50 CALL                             R2 1 0
       51 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["CreateImportedFbxModel"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 1
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K1 ["R15_ARTIST_INTENT_FOLDER_NAME"]
        8 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       10 CALL                             R3 2 1
       11 SETTABLEKS                       R3 R0 K3 ["_r15Avatar"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K4 ["R15_FIXED_FOLDER_NAME"]
       16 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       18 CALL                             R3 2 1
       19 SETTABLEKS                       R3 R0 K5 ["_r15Fixed"]
       21 GETUPVAL                         R6 1
       22 GETTABLEKS                       R5 R6 K6 ["R6_FOLDER_NAME"]
       24 NAMECALL                         R3 R2 K2 ["FindFirstChild"]
       26 CALL                             R3 2 1
       27 SETTABLEKS                       R3 R0 K7 ["_r6Avatar"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K8 ["MakeExportVersion"]
       32 MOVE                             R4 R2
       33 CALL                             R3 1 0
       34 GETTABLEKS                       R3 R0 K9 ["_onConfigureStarted"]
       36 GETTABLEKS                       R5 R0 K3 ["_r15Avatar"]
       38 GETTABLEKS                       R6 R0 K7 ["_r6Avatar"]
       40 NAMECALL                         R3 R3 K10 ["Fire"]
       42 CALL                             R3 3 0
       43 LOADB                            R5 1
       44 NAMECALL                         R3 R0 K11 ["setEnabled"]
       46 CALL                             R3 2 0
       47 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["R15_ARTIST_INTENT_FOLDER_NAME"]
        3 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R0 K2 ["_r15Avatar"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K3 ["R15_FIXED_FOLDER_NAME"]
       11 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R0 K4 ["_r15Fixed"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K5 ["R6_FOLDER_NAME"]
       19 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
       21 CALL                             R2 2 1
       22 SETTABLEKS                       R2 R0 K6 ["_r6Avatar"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K7 ["MakeExportVersion"]
       27 MOVE                             R3 R1
       28 CALL                             R2 1 0
       29 GETTABLEKS                       R2 R0 K8 ["_onConfigureStarted"]
       31 GETTABLEKS                       R4 R0 K2 ["_r15Avatar"]
       33 GETTABLEKS                       R5 R0 K6 ["_r6Avatar"]
       35 NAMECALL                         R2 R2 K9 ["Fire"]
       37 CALL                             R2 3 0
       38 LOADB                            R4 1
       39 NAMECALL                         R2 R0 K10 ["setEnabled"]
       41 CALL                             R2 2 0
       42 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FindExistingImportedFbx"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["R15_ARTIST_INTENT_FOLDER_NAME"]
        8 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R0 K3 ["_r15Avatar"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["R6_FOLDER_NAME"]
       16 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K5 ["_r6Avatar"]
       21 GETTABLEKS                       R2 R0 K6 ["_onConfigureStarted"]
       23 GETTABLEKS                       R4 R0 K3 ["_r15Avatar"]
       25 GETTABLEKS                       R5 R0 K5 ["_r6Avatar"]
       27 NAMECALL                         R2 R2 K7 ["Fire"]
       29 CALL                             R2 3 0
       30 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["_enabled"]
        2 GETTABLEKS                       R2 R0 K1 ["_configureFrame"]
        4 GETTABLEKS                       R3 R0 K0 ["_enabled"]
        6 SETTABLEKS                       R3 R2 K2 ["Visible"]
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["CopyTexturesToRig"]
        3 GETTABLEKS                       R2 R0 K1 ["_r15TexturesMap"]
        5 GETTABLEKS                       R3 R0 K2 ["_r15Avatar"]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["AddFaceToRig"]
       11 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       13 GETTABLEKS                       R3 R0 K2 ["_r15Avatar"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K0 ["CopyTexturesToRig"]
       19 GETTABLEKS                       R2 R0 K1 ["_r15TexturesMap"]
       21 GETTABLEKS                       R3 R0 K5 ["_r15Fixed"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R1 R2 K3 ["AddFaceToRig"]
       27 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       29 GETTABLEKS                       R3 R0 K5 ["_r15Fixed"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R1 R2 K6 ["CopyCharacterMeshesToRig"]
       35 GETTABLEKS                       R2 R0 K7 ["_r6MeshesMap"]
       37 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       39 CALL                             R1 2 0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R1 R2 K0 ["CopyTexturesToRig"]
       43 GETTABLEKS                       R2 R0 K9 ["_r6TexturesMap"]
       45 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       47 CALL                             R1 2 0
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K3 ["AddFaceToRig"]
       51 GETTABLEKS                       R2 R0 K4 ["_faceTextureId"]
       53 GETTABLEKS                       R3 R0 K8 ["_r6Avatar"]
       55 CALL                             R1 2 0
       56 LOADB                            R3 0
       57 NAMECALL                         R1 R0 K10 ["setEnabled"]
       59 CALL                             R1 2 0
       60 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["setEnabled"]
        3 CALL                             R1 2 0
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIFEQKS                       R2 K0 [""] ; [+21]
        2 GETIMPORT                        R3 K3 [string.find]
        4 MOVE                             R4 R2
        5 LOADK                            R5 K4 ["<"]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+14]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["RemoveAssetUrlFromText"]
       12 MOVE                             R4 R2
       13 CALL                             R3 1 1
       14 SETTABLEKS                       R3 R1 K6 ["Text"]
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R4 R0 K7 ["Name"]
       19 GETTABLEKS                       R5 R1 K6 ["Text"]
       21 SETTABLE                         R5 R3 R4
       22 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["Text"]
        5 JUMPIFEQKS                       R2 K1 [""] ; [+21]
        7 GETIMPORT                        R3 K4 [string.find]
        9 MOVE                             R4 R2
       10 LOADK                            R5 K5 ["<"]
       11 CALL                             R3 2 1
       12 JUMPIFNOTEQKNIL                  R3 ; [+14]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K6 ["RemoveAssetUrlFromText"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R1 K0 ["Text"]
       21 GETUPVAL                         R3 3
       22 GETTABLEKS                       R4 R0 K7 ["Name"]
       24 GETTABLEKS                       R5 R1 K0 ["Text"]
       26 SETTABLE                         R5 R3 R4
       27 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETIMPORT                        R4 K1 [pairs]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 3
        7 FORGPREP_NEXT                    R4
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
       48 GETUPVAL                         R12 0
       49 GETTABLEKS                       R11 R12 K19 ["RemoveAssetUrlFromText"]
       51 MOVE                             R12 R10
       52 CALL                             R11 1 1
       53 SETTABLEKS                       R11 R9 K11 ["Text"]
       55 GETTABLEKS                       R11 R8 K20 ["Name"]
       57 GETTABLEKS                       R12 R9 K11 ["Text"]
       59 SETTABLE                         R12 R0 R11
       60 FORGLOOP                         R4 2 ; [-53]
       62 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [string.find]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["Text"]
        5 LOADK                            R2 K4 ["<"]
        6 CALL                             R0 2 1
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETUPVAL                         R0 0
       10 LOADK                            R1 K5 [""]
       11 SETTABLEKS                       R1 R0 K3 ["Text"]
       13 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Focused"]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 NAMECALL                         R1 R1 K1 ["Connect"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 DUPCLOSURE                       R1 K0 [PROTO_11]
        1 GETIMPORT                        R2 K2 [pairs]
        3 NAMECALL                         R3 R0 K3 ["GetChildren"]
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 3
        7 FORGPREP_NEXT                    R2
        8 LOADK                            R9 K4 ["TextBox"]
        9 NAMECALL                         R7 R6 K5 ["IsA"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+7]
       13 GETTABLEKS                       R7 R6 K6 ["Focused"]
       15 NEWCLOSURE                       R9 P1
       16 CAPTURE                          VAL R6
       17 NAMECALL                         R7 R7 K7 ["Connect"]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 ; [-13]
       22 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K2 [table.sort]
        4 MOVE                             R6 R3
        5 CALL                             R5 1 0
        6 GETIMPORT                        R5 K4 [pairs]
        8 MOVE                             R6 R3
        9 CALL                             R5 1 3
       10 FORGPREP_NEXT                    R5
       11 NAMECALL                         R10 R2 K5 ["Clone"]
       13 CALL                             R10 1 1
       14 SUBK                             R12 R8 K6 [1]
       15 GETTABLEKS                       R15 R10 K7 ["Size"]
       17 GETTABLEKS                       R14 R15 K8 ["Y"]
       19 GETTABLEKS                       R13 R14 K9 ["Offset"]
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
       48 FORGLOOP                         R5 2 ; [-38]
       50 RETURN                           R4 1

PROTO_14:
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
       16 LOADN                            R4 246
       17 LOADN                            R5 0
       18 LOADN                            R6 25
       19 CALL                             R2 4 1
       20 SETTABLEKS                       R2 R1 K10 ["Size"]
       22 SETTABLEKS                       R0 R1 K11 ["Position"]
       24 RETURN                           R1 1

PROTO_15:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["TextBox"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R1 R3 K4 ["Name"]
        6 LOADK                            R5 K5 ["<"]
        7 MOVE                             R6 R1
        8 LOADK                            R7 K6 [">"]
        9 CONCAT                           R4 R5 R7
       10 SETTABLEKS                       R4 R3 K7 ["Text"]
       12 GETIMPORT                        R4 K10 [Color3.fromRGB]
       14 LOADN                            R5 70
       15 LOADN                            R6 70
       16 LOADN                            R7 70
       17 CALL                             R4 3 1
       18 SETTABLEKS                       R4 R3 K11 ["BackgroundColor3"]
       20 GETIMPORT                        R4 K10 [Color3.fromRGB]
       22 LOADN                            R5 49
       23 LOADN                            R6 49
       24 LOADN                            R7 49
       25 CALL                             R4 3 1
       26 SETTABLEKS                       R4 R3 K12 ["BorderColor3"]
       28 SETTABLEKS                       R2 R3 K13 ["Position"]
       30 GETIMPORT                        R4 K15 [UDim2.new]
       32 LOADK                            R5 K16 [0.5]
       33 LOADN                            R6 0
       34 LOADN                            R7 0
       35 LOADN                            R8 25
       36 CALL                             R4 4 1
       37 SETTABLEKS                       R4 R3 K17 ["Size"]
       39 GETIMPORT                        R4 K21 [Enum.Font.SourceSans]
       41 SETTABLEKS                       R4 R3 K19 ["Font"]
       43 GETIMPORT                        R4 K10 [Color3.fromRGB]
       45 LOADN                            R5 255
       46 LOADN                            R6 255
       47 LOADN                            R7 255
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K22 ["TextColor3"]
       51 LOADN                            R4 14
       52 SETTABLEKS                       R4 R3 K23 ["TextSize"]
       54 LOADN                            R4 1
       55 SETTABLEKS                       R4 R3 K24 ["TextStrokeTransparency"]
       57 SETTABLEKS                       R0 R3 K25 ["Parent"]
       59 RETURN                           R3 1

PROTO_16:
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
       23 LOADN                            R6 246
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
       57 LOADN                            R5 251
       58 LOADN                            R6 0
       59 LOADN                            R7 25
       60 CALL                             R3 4 1
       61 SETTABLEKS                       R3 R2 K10 ["Size"]
       63 GETIMPORT                        R3 K18 [Enum.Font.SourceSansBold]
       65 SETTABLEKS                       R3 R2 K16 ["Font"]
       67 LOADN                            R3 14
       68 SETTABLEKS                       R3 R2 K19 ["TextSize"]
       70 GETIMPORT                        R3 K22 [Color3.fromRGB]
       72 LOADN                            R4 255
       73 LOADN                            R5 255
       74 LOADN                            R6 255
       75 CALL                             R3 3 1
       76 SETTABLEKS                       R3 R2 K23 ["TextColor3"]
       78 LOADN                            R3 1
       79 SETTABLEKS                       R3 R2 K24 ["TextStrokeTransparency"]
       81 SETTABLEKS                       R1 R2 K25 ["Parent"]
       83 GETUPVAL                         R3 0
       84 MOVE                             R4 R1
       85 MOVE                             R5 R0
       86 GETIMPORT                        R6 K2 [UDim2.new]
       88 LOADK                            R7 K14 [0.5]
       89 LOADN                            R8 0
       90 LOADN                            R9 0
       91 LOADN                            R10 0
       92 CALL                             R6 4 -1
       93 CALL                             R3 -1 0
       94 RETURN                           R1 1

PROTO_17:
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
       32 GETIMPORT                        R3 K17 [Color3.fromRGB]
       34 LOADN                            R4 255
       35 LOADN                            R5 165
       36 LOADN                            R6 10
       37 CALL                             R3 3 1
       38 SETTABLEKS                       R3 R2 K18 ["TextColor3"]
       40 LOADN                            R3 18
       41 SETTABLEKS                       R3 R2 K19 ["TextSize"]
       43 LOADN                            R3 1
       44 SETTABLEKS                       R3 R2 K20 ["TextStrokeTransparency"]
       46 SETTABLEKS                       R1 R2 K21 ["Text"]
       48 LOADN                            R3 0
       49 SETTABLEKS                       R3 R2 K22 ["BorderSizePixel"]
       51 SETTABLEKS                       R0 R2 K23 ["Parent"]
       53 RETURN                           R0 0

PROTO_18:
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
       30 GETIMPORT                        R4 K19 [Color3.fromRGB]
       32 LOADN                            R5 255
       33 LOADN                            R6 255
       34 LOADN                            R7 255
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K20 ["TextColor3"]
       38 LOADN                            R4 1
       39 SETTABLEKS                       R4 R3 K21 ["TextStrokeTransparency"]
       41 LOADN                            R4 14
       42 SETTABLEKS                       R4 R3 K22 ["TextSize"]
       44 SETTABLEKS                       R0 R3 K23 ["Parent"]
       46 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        4 GETIMPORT                        R2 K4 [string.find]
        6 MOVE                             R3 R1
        7 LOADK                            R4 K5 ["<"]
        8 CALL                             R2 2 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+16]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K6 ["RemoveAssetUrlFromText"]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R0 K0 ["Text"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K7 ["_r6TexturesMap"]
       21 GETTABLEKS                       R3 R0 K8 ["Name"]
       23 GETTABLEKS                       R4 R0 K0 ["Text"]
       25 SETTABLE                         R4 R2 R3
       26 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Text"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        5 GETIMPORT                        R2 K4 [string.find]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K5 ["<"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+16]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R0 K0 ["Text"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K7 ["_r6TexturesMap"]
       22 GETTABLEKS                       R3 R0 K8 ["Name"]
       24 GETTABLEKS                       R4 R0 K0 ["Text"]
       26 SETTABLE                         R4 R2 R3
       27 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["Text"]
        3 JUMPIFEQKS                       R1 K1 [""] ; [+23]
        5 GETIMPORT                        R2 K4 [string.find]
        7 MOVE                             R3 R1
        8 LOADK                            R4 K5 ["<"]
        9 CALL                             R2 2 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+16]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R0 K0 ["Text"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K7 ["_r6TexturesMap"]
       22 GETTABLEKS                       R3 R0 K8 ["Name"]
       24 GETTABLEKS                       R4 R0 K0 ["Text"]
       26 SETTABLE                         R4 R2 R3
       27 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_r6TexturesMap"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R2 R3 K1 ["GetCharacterMeshPropertyFromRig"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R4 R5 K2 ["Name"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+8]
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R4 R5 K3 ["RemoveAssetUrlFromText"]
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R3 K4 ["Text"]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K1 ["GetCharacterMeshPropertyFromRig"]
       25 MOVE                             R4 R1
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K2 ["Name"]
       29 CALL                             R3 2 1
       30 JUMPIFNOT                        R3 ; [+8]
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R5 R6 K3 ["RemoveAssetUrlFromText"]
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
       51 GETUPVAL                         R7 1
       52 GETTABLEKS                       R6 R7 K3 ["RemoveAssetUrlFromText"]
       54 MOVE                             R7 R5
       55 CALL                             R6 1 1
       56 SETTABLEKS                       R6 R4 K4 ["Text"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K0 ["_r6TexturesMap"]
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
       78 GETUPVAL                         R7 1
       79 GETTABLEKS                       R6 R7 K3 ["RemoveAssetUrlFromText"]
       81 MOVE                             R7 R5
       82 CALL                             R6 1 1
       83 SETTABLEKS                       R6 R4 K4 ["Text"]
       85 GETUPVAL                         R7 0
       86 GETTABLEKS                       R6 R7 K0 ["_r6TexturesMap"]
       88 GETTABLEKS                       R7 R4 K2 ["Name"]
       90 GETTABLEKS                       R8 R4 K4 ["Text"]
       92 SETTABLE                         R8 R6 R7
       93 RETURN                           R0 0

PROTO_23:
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
       23 LOADN                            R7 246
       24 LOADN                            R8 0
       25 LOADN                            R9 25
       26 CALL                             R5 4 1
       27 SETTABLEKS                       R5 R4 K10 ["Size"]
       29 SETTABLEKS                       R3 R4 K11 ["Position"]
       31 MOVE                             R2 R4
       32 GETUPVAL                         R3 0
       33 MOVE                             R4 R2
       34 LOADK                            R5 K12 ["BaseTextureId"]
       35 GETIMPORT                        R6 K2 [UDim2.new]
       37 LOADN                            R7 0
       38 LOADN                            R8 0
       39 LOADN                            R9 0
       40 LOADN                            R10 0
       41 CALL                             R6 4 -1
       42 CALL                             R3 -1 1
       43 GETUPVAL                         R4 0
       44 MOVE                             R5 R2
       45 LOADK                            R6 K13 ["OverlayTextureId"]
       46 GETIMPORT                        R7 K2 [UDim2.new]
       48 LOADK                            R8 K14 [0.5]
       49 LOADN                            R9 0
       50 LOADN                            R10 0
       51 LOADN                            R11 0
       52 CALL                             R7 4 -1
       53 CALL                             R4 -1 1
       54 GETUPVAL                         R5 1
       55 MOVE                             R6 R2
       56 CALL                             R5 1 0
       57 NEWCLOSURE                       R5 P0
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          VAL R0
       60 LOADK                            R8 K15 ["Text"]
       61 NAMECALL                         R6 R3 K16 ["GetPropertyChangedSignal"]
       63 CALL                             R6 2 1
       64 NEWCLOSURE                       R8 P1
       65 CAPTURE                          VAL R3
       66 CAPTURE                          UPVAL U2
       67 CAPTURE                          VAL R0
       68 NAMECALL                         R6 R6 K17 ["Connect"]
       70 CALL                             R6 2 0
       71 LOADK                            R8 K15 ["Text"]
       72 NAMECALL                         R6 R4 K16 ["GetPropertyChangedSignal"]
       74 CALL                             R6 2 1
       75 NEWCLOSURE                       R8 P2
       76 CAPTURE                          VAL R4
       77 CAPTURE                          UPVAL U2
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R6 R6 K17 ["Connect"]
       81 CALL                             R6 2 0
       82 GETTABLEKS                       R7 R0 K18 ["_onConfigureStarted"]
       84 GETTABLEKS                       R6 R7 K19 ["Event"]
       86 NEWCLOSURE                       R8 P3
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U2
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R4
       91 NAMECALL                         R6 R6 K17 ["Connect"]
       93 CALL                             R6 2 0
       94 SETTABLEKS                       R1 R2 K20 ["Parent"]
       96 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["ClearAllChildren"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["GetBodyPartNames"]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R5 0
       10 GETUPVAL                         R6 3
       11 MOVE                             R7 R2
       12 NAMECALL                         R3 R3 K2 ["_entryBoxListSetup"]
       14 CALL                             R3 4 1
       15 GETIMPORT                        R4 K4 [pairs]
       17 MOVE                             R5 R3
       18 CALL                             R4 1 3
       19 FORGPREP_NEXT                    R4
       20 GETUPVAL                         R10 1
       21 GETTABLEKS                       R9 R10 K5 ["GetCurrentCharacterMeshIdFromRig"]
       23 MOVE                             R10 R1
       24 GETTABLEKS                       R11 R8 K6 ["Name"]
       26 CALL                             R9 2 1
       27 JUMPIFNOT                        R9 ; [+4]
       28 GETTABLEKS                       R10 R8 K7 ["MeshId"]
       30 SETTABLEKS                       R9 R10 K8 ["Text"]
       32 FORGLOOP                         R4 2 ; [-13]
       34 GETUPVAL                         R4 2
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K9 ["_r6MeshesMap"]
       39 GETUPVAL                         R4 4
       40 GETUPVAL                         R6 2
       41 GETTABLEKS                       R5 R6 K9 ["_r6MeshesMap"]
       43 MOVE                             R6 R3
       44 LOADK                            R7 K7 ["MeshId"]
       45 CALL                             R4 3 0
       46 RETURN                           R0 0

PROTO_25:
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
       34 GETTABLEKS                       R5 R0 K13 ["_onConfigureStarted"]
       36 GETTABLEKS                       R4 R5 K14 ["Event"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R4 R4 K15 ["Connect"]
       46 CALL                             R4 2 0
       47 SETTABLEKS                       R1 R2 K16 ["Parent"]
       49 RETURN                           R0 0

PROTO_26:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+26]
        2 GETIMPORT                        R1 K3 [string.find]
        4 MOVE                             R2 R0
        5 LOADK                            R3 K4 ["<"]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKNIL                  R1 ; [+19]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K5 ["TextureId"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K6 ["RemoveAssetUrlFromText"]
       15 MOVE                             R3 R0
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K7 ["Text"]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K5 ["TextureId"]
       23 GETTABLEKS                       R2 R3 K7 ["Text"]
       25 SETTABLEKS                       R2 R1 K8 ["_faceTextureId"]
       27 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["TextureId"]
        3 GETTABLEKS                       R0 R1 K1 ["Text"]
        5 JUMPIFEQKS                       R0 K2 [""] ; [+26]
        7 GETIMPORT                        R1 K5 [string.find]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K6 ["<"]
       11 CALL                             R1 2 1
       12 JUMPIFNOTEQKNIL                  R1 ; [+19]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R1 R2 K0 ["TextureId"]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R2 R3 K7 ["RemoveAssetUrlFromText"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K1 ["Text"]
       24 GETUPVAL                         R1 2
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K0 ["TextureId"]
       28 GETTABLEKS                       R2 R3 K1 ["Text"]
       30 SETTABLEKS                       R2 R1 K8 ["_faceTextureId"]
       32 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["FindFaceTexture"]
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
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K6 ["TextureId"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K7 ["RemoveAssetUrlFromText"]
       22 MOVE                             R5 R2
       23 CALL                             R4 1 1
       24 SETTABLEKS                       R4 R3 K8 ["Text"]
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R5 R6 K6 ["TextureId"]
       30 GETTABLEKS                       R4 R5 K8 ["Text"]
       32 SETTABLEKS                       R4 R3 K9 ["_faceTextureId"]
       34 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["TextureId"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K3 [UDim2.new]
        5 LOADN                            R4 0
        6 LOADN                            R5 5
        7 LOADN                            R6 0
        8 LOADN                            R7 59
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
       34 GETTABLEKS                       R5 R0 K10 ["_onConfigureStarted"]
       36 GETTABLEKS                       R4 R5 K11 ["Event"]
       38 NEWCLOSURE                       R6 P2
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R0
       42 NAMECALL                         R4 R4 K9 ["Connect"]
       44 CALL                             R4 2 0
       45 SETTABLEKS                       R1 R2 K12 ["Parent"]
       47 RETURN                           R0 0

PROTO_30:
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
       27 LOADN                            R7 231
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
       76 LOADN                            R10 34
       77 CALL                             R6 4 -1
       78 CALL                             R3 -1 0
       79 MOVE                             R5 R2
       80 NAMECALL                         R3 R0 K19 ["_constructFaceTextureEntry"]
       82 CALL                             R3 2 0
       83 SETTABLEKS                       R1 R2 K20 ["Parent"]
       85 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["ClearAllChildren"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["GetLimbNames"]
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R4 0
       10 GETUPVAL                         R5 3
       11 MOVE                             R6 R1
       12 NAMECALL                         R2 R2 K2 ["_entryBoxListSetup"]
       14 CALL                             R2 4 1
       15 GETIMPORT                        R3 K4 [pairs]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K5 ["GetCurrentTextureIdFromRig"]
       23 MOVE                             R9 R0
       24 GETTABLEKS                       R10 R7 K6 ["Name"]
       26 CALL                             R8 2 1
       27 JUMPIFNOT                        R8 ; [+4]
       28 GETTABLEKS                       R9 R7 K7 ["TextureID"]
       30 SETTABLEKS                       R8 R9 K8 ["Text"]
       32 FORGLOOP                         R3 2 ; [-13]
       34 GETUPVAL                         R3 2
       35 NEWTABLE                         R4 0 0
       37 SETTABLEKS                       R4 R3 K9 ["_r15TexturesMap"]
       39 GETUPVAL                         R3 4
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R4 R5 K9 ["_r15TexturesMap"]
       43 MOVE                             R5 R2
       44 LOADK                            R6 K7 ["TextureID"]
       45 CALL                             R3 3 0
       46 RETURN                           R0 0

PROTO_32:
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
       18 LOADN                            R7 236
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
       34 GETTABLEKS                       R5 R0 K13 ["_onConfigureStarted"]
       36 GETTABLEKS                       R4 R5 K14 ["Event"]
       38 NEWCLOSURE                       R6 P0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          UPVAL U1
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R3
       43 CAPTURE                          UPVAL U2
       44 NAMECALL                         R4 R4 K15 ["Connect"]
       46 CALL                             R4 2 0
       47 SETTABLEKS                       R1 R2 K16 ["Parent"]
       49 RETURN                           R0 0

PROTO_33:
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
       25 LOADN                            R5 251
       26 LOADN                            R6 1
       27 LOADN                            R7 156
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

PROTO_34:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onCancel"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_onFinished"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["RigConfiguration"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K6 ["Visible"]
       10 GETIMPORT                        R3 K9 [Color3.fromRGB]
       12 LOADN                            R4 16
       13 LOADN                            R5 16
       14 LOADN                            R6 16
       15 CALL                             R3 3 1
       16 SETTABLEKS                       R3 R2 K10 ["BackgroundColor3"]
       18 LOADK                            R3 K11 [0.5]
       19 SETTABLEKS                       R3 R2 K12 ["BackgroundTransparency"]
       21 LOADN                            R3 0
       22 SETTABLEKS                       R3 R2 K13 ["BorderSizePixel"]
       24 GETIMPORT                        R3 K15 [UDim2.new]
       26 LOADK                            R4 K11 [0.5]
       27 LOADN                            R5 212
       28 LOADK                            R6 K11 [0.5]
       29 LOADN                            R7 6
       30 CALL                             R3 4 1
       31 SETTABLEKS                       R3 R2 K16 ["Position"]
       33 GETIMPORT                        R3 K15 [UDim2.new]
       35 LOADN                            R4 0
       36 LOADN                            R5 88
       37 LOADN                            R6 0
       38 LOADN                            R7 144
       39 CALL                             R3 4 1
       40 SETTABLEKS                       R3 R2 K17 ["Size"]
       42 GETIMPORT                        R3 K2 [Instance.new]
       44 LOADK                            R4 K3 ["Frame"]
       45 CALL                             R3 1 1
       46 LOADK                            R4 K18 ["Divide"]
       47 SETTABLEKS                       R4 R3 K5 ["Name"]
       49 GETIMPORT                        R4 K9 [Color3.fromRGB]
       51 LOADN                            R5 255
       52 LOADN                            R6 165
       53 LOADN                            R7 10
       54 CALL                             R4 3 1
       55 SETTABLEKS                       R4 R3 K10 ["BackgroundColor3"]
       57 LOADN                            R4 0
       58 SETTABLEKS                       R4 R3 K12 ["BackgroundTransparency"]
       60 GETIMPORT                        R4 K9 [Color3.fromRGB]
       62 LOADN                            R5 27
       63 LOADN                            R6 42
       64 LOADN                            R7 53
       65 CALL                             R4 3 1
       66 SETTABLEKS                       R4 R3 K19 ["BorderColor3"]
       68 GETIMPORT                        R4 K15 [UDim2.new]
       70 LOADK                            R5 K11 [0.5]
       71 LOADN                            R6 2
       72 LOADN                            R7 0
       73 LOADN                            R8 60
       74 CALL                             R4 4 1
       75 SETTABLEKS                       R4 R3 K16 ["Position"]
       77 GETIMPORT                        R4 K15 [UDim2.new]
       79 LOADN                            R5 0
       80 LOADN                            R6 2
       81 LOADN                            R7 1
       82 LOADN                            R8 190
       83 CALL                             R4 4 1
       84 SETTABLEKS                       R4 R3 K17 ["Size"]
       86 SETTABLEKS                       R2 R3 K20 ["Parent"]
       88 GETIMPORT                        R4 K2 [Instance.new]
       90 LOADK                            R5 K21 ["TextLabel"]
       91 CALL                             R4 1 1
       92 LOADK                            R5 K22 ["Title"]
       93 SETTABLEKS                       R5 R4 K5 ["Name"]
       95 LOADK                            R5 K23 ["Configure Imported Rig"]
       96 SETTABLEKS                       R5 R4 K24 ["Text"]
       98 GETIMPORT                        R5 K9 [Color3.fromRGB]
      100 LOADN                            R6 49
      101 LOADN                            R7 49
      102 LOADN                            R8 49
      103 CALL                             R5 3 1
      104 SETTABLEKS                       R5 R4 K10 ["BackgroundColor3"]
      106 LOADN                            R5 1
      107 SETTABLEKS                       R5 R4 K12 ["BackgroundTransparency"]
      109 LOADN                            R5 0
      110 SETTABLEKS                       R5 R4 K13 ["BorderSizePixel"]
      112 GETIMPORT                        R5 K15 [UDim2.new]
      114 LOADN                            R6 0
      115 LOADN                            R7 15
      116 LOADN                            R8 0
      117 LOADN                            R9 5
      118 CALL                             R5 4 1
      119 SETTABLEKS                       R5 R4 K16 ["Position"]
      121 GETIMPORT                        R5 K15 [UDim2.new]
      123 LOADN                            R6 1
      124 LOADN                            R7 0
      125 LOADN                            R8 0
      126 LOADN                            R9 40
      127 CALL                             R5 4 1
      128 SETTABLEKS                       R5 R4 K17 ["Size"]
      130 LOADN                            R5 18
      131 SETTABLEKS                       R5 R4 K25 ["TextSize"]
      133 GETIMPORT                        R5 K29 [Enum.Font.SourceSansBold]
      135 SETTABLEKS                       R5 R4 K27 ["Font"]
      137 LOADN                            R5 1
      138 SETTABLEKS                       R5 R4 K30 ["TextStrokeTransparency"]
      140 GETIMPORT                        R5 K9 [Color3.fromRGB]
      142 LOADN                            R6 255
      143 LOADN                            R7 255
      144 LOADN                            R8 255
      145 CALL                             R5 3 1
      146 SETTABLEKS                       R5 R4 K31 ["TextColor3"]
      148 SETTABLEKS                       R2 R4 K20 ["Parent"]
      150 GETIMPORT                        R5 K2 [Instance.new]
      152 LOADK                            R6 K21 ["TextLabel"]
      153 CALL                             R5 1 1
      154 LOADK                            R6 K32 ["Topbar"]
      155 SETTABLEKS                       R6 R5 K5 ["Name"]
      157 GETIMPORT                        R6 K9 [Color3.fromRGB]
      159 LOADN                            R7 49
      160 LOADN                            R8 49
      161 LOADN                            R9 49
      162 CALL                             R6 3 1
      163 SETTABLEKS                       R6 R5 K10 ["BackgroundColor3"]
      165 LOADN                            R6 0
      166 SETTABLEKS                       R6 R5 K12 ["BackgroundTransparency"]
      168 GETIMPORT                        R6 K9 [Color3.fromRGB]
      170 LOADN                            R7 27
      171 LOADN                            R8 42
      172 LOADN                            R9 53
      173 CALL                             R6 3 1
      174 SETTABLEKS                       R6 R5 K19 ["BorderColor3"]
      176 GETIMPORT                        R6 K15 [UDim2.new]
      178 LOADN                            R7 0
      179 LOADN                            R8 0
      180 LOADN                            R9 0
      181 LOADN                            R10 0
      182 CALL                             R6 4 1
      183 SETTABLEKS                       R6 R5 K16 ["Position"]
      185 GETIMPORT                        R6 K15 [UDim2.new]
      187 LOADN                            R7 1
      188 LOADN                            R8 0
      189 LOADN                            R9 0
      190 LOADN                            R10 5
      191 CALL                             R6 4 1
      192 SETTABLEKS                       R6 R5 K17 ["Size"]
      194 LOADK                            R6 K33 [""]
      195 SETTABLEKS                       R6 R5 K24 ["Text"]
      197 SETTABLEKS                       R2 R5 K20 ["Parent"]
      199 GETIMPORT                        R6 K2 [Instance.new]
      201 LOADK                            R7 K34 ["TextButton"]
      202 CALL                             R6 1 1
      203 LOADK                            R7 K35 ["Cancel"]
      204 SETTABLEKS                       R7 R6 K5 ["Name"]
      206 GETIMPORT                        R7 K9 [Color3.fromRGB]
      208 LOADN                            R8 132
      209 LOADN                            R9 132
      210 LOADN                            R10 132
      211 CALL                             R7 3 1
      212 SETTABLEKS                       R7 R6 K10 ["BackgroundColor3"]
      214 LOADN                            R7 0
      215 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
      217 GETIMPORT                        R7 K9 [Color3.fromRGB]
      219 LOADN                            R8 49
      220 LOADN                            R9 49
      221 LOADN                            R10 49
      222 CALL                             R7 3 1
      223 SETTABLEKS                       R7 R6 K19 ["BorderColor3"]
      225 GETIMPORT                        R7 K15 [UDim2.new]
      227 LOADN                            R8 1
      228 LOADN                            R9 242
      229 LOADN                            R10 1
      230 LOADN                            R11 216
      231 CALL                             R7 4 1
      232 SETTABLEKS                       R7 R6 K16 ["Position"]
      234 GETIMPORT                        R7 K15 [UDim2.new]
      236 LOADN                            R8 0
      237 LOADN                            R9 120
      238 LOADN                            R10 0
      239 LOADN                            R11 30
      240 CALL                             R7 4 1
      241 SETTABLEKS                       R7 R6 K17 ["Size"]
      243 LOADK                            R7 K35 ["Cancel"]
      244 SETTABLEKS                       R7 R6 K24 ["Text"]
      246 GETIMPORT                        R7 K29 [Enum.Font.SourceSansBold]
      248 SETTABLEKS                       R7 R6 K27 ["Font"]
      250 GETIMPORT                        R7 K9 [Color3.fromRGB]
      252 LOADN                            R8 255
      253 LOADN                            R9 255
      254 LOADN                            R10 255
      255 CALL                             R7 3 1
      256 SETTABLEKS                       R7 R6 K31 ["TextColor3"]
      258 LOADN                            R7 14
      259 SETTABLEKS                       R7 R6 K25 ["TextSize"]
      261 GETIMPORT                        R7 K9 [Color3.fromRGB]
      263 LOADN                            R8 0
      264 LOADN                            R9 0
      265 LOADN                            R10 0
      266 CALL                             R7 3 1
      267 SETTABLEKS                       R7 R6 K36 ["TextStrokeColor3"]
      269 LOADK                            R7 K37 [0.75]
      270 SETTABLEKS                       R7 R6 K30 ["TextStrokeTransparency"]
      272 GETTABLEKS                       R7 R6 K38 ["MouseButton1Down"]
      274 NEWCLOSURE                       R9 P0
      275 CAPTURE                          VAL R0
      276 NAMECALL                         R7 R7 K39 ["Connect"]
      278 CALL                             R7 2 0
      279 SETTABLEKS                       R2 R6 K20 ["Parent"]
      281 GETIMPORT                        R7 K2 [Instance.new]
      283 LOADK                            R8 K34 ["TextButton"]
      284 CALL                             R7 1 1
      285 LOADK                            R8 K40 ["Done"]
      286 SETTABLEKS                       R8 R7 K5 ["Name"]
      288 GETIMPORT                        R8 K9 [Color3.fromRGB]
      290 LOADN                            R9 255
      291 LOADN                            R10 165
      292 LOADN                            R11 10
      293 CALL                             R8 3 1
      294 SETTABLEKS                       R8 R7 K10 ["BackgroundColor3"]
      296 LOADN                            R8 0
      297 SETTABLEKS                       R8 R7 K12 ["BackgroundTransparency"]
      299 GETIMPORT                        R8 K9 [Color3.fromRGB]
      301 LOADN                            R9 49
      302 LOADN                            R10 49
      303 LOADN                            R11 49
      304 CALL                             R8 3 1
      305 SETTABLEKS                       R8 R7 K19 ["BorderColor3"]
      307 GETIMPORT                        R8 K15 [UDim2.new]
      309 LOADN                            R9 1
      310 LOADN                            R10 116
      311 LOADN                            R11 1
      312 LOADN                            R12 216
      313 CALL                             R8 4 1
      314 SETTABLEKS                       R8 R7 K16 ["Position"]
      316 GETIMPORT                        R8 K15 [UDim2.new]
      318 LOADN                            R9 0
      319 LOADN                            R10 120
      320 LOADN                            R11 0
      321 LOADN                            R12 30
      322 CALL                             R8 4 1
      323 SETTABLEKS                       R8 R7 K17 ["Size"]
      325 LOADK                            R8 K40 ["Done"]
      326 SETTABLEKS                       R8 R7 K24 ["Text"]
      328 GETIMPORT                        R8 K29 [Enum.Font.SourceSansBold]
      330 SETTABLEKS                       R8 R7 K27 ["Font"]
      332 GETIMPORT                        R8 K9 [Color3.fromRGB]
      334 LOADN                            R9 255
      335 LOADN                            R10 255
      336 LOADN                            R11 255
      337 CALL                             R8 3 1
      338 SETTABLEKS                       R8 R7 K31 ["TextColor3"]
      340 LOADN                            R8 14
      341 SETTABLEKS                       R8 R7 K25 ["TextSize"]
      343 GETIMPORT                        R8 K9 [Color3.fromRGB]
      345 LOADN                            R9 0
      346 LOADN                            R10 0
      347 LOADN                            R11 0
      348 CALL                             R8 3 1
      349 SETTABLEKS                       R8 R7 K36 ["TextStrokeColor3"]
      351 LOADK                            R8 K37 [0.75]
      352 SETTABLEKS                       R8 R7 K30 ["TextStrokeTransparency"]
      354 GETTABLEKS                       R8 R7 K38 ["MouseButton1Down"]
      356 NEWCLOSURE                       R10 P1
      357 CAPTURE                          VAL R0
      358 NAMECALL                         R8 R8 K39 ["Connect"]
      360 CALL                             R8 2 0
      361 SETTABLEKS                       R2 R7 K20 ["Parent"]
      363 MOVE                             R10 R2
      364 NAMECALL                         R8 R0 K41 ["_constructConfigureR6"]
      366 CALL                             R8 2 0
      367 MOVE                             R10 R2
      368 NAMECALL                         R8 R0 K42 ["_constructConfigureR15"]
      370 CALL                             R8 2 0
      371 SETTABLEKS                       R1 R2 K20 ["Parent"]
      373 SETTABLEKS                       R2 R0 K43 ["_configureFrame"]
      375 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["FindExistingImportedFbx"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+36]
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R4 R5 K1 ["R15_ARTIST_INTENT_FOLDER_NAME"]
        8 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R0 K3 ["_r15Avatar"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R4 R5 K4 ["R6_FOLDER_NAME"]
       16 NAMECALL                         R2 R1 K2 ["FindFirstChild"]
       18 CALL                             R2 2 1
       19 SETTABLEKS                       R2 R0 K5 ["_r6Avatar"]
       21 GETTABLEKS                       R2 R0 K3 ["_r15Avatar"]
       23 JUMPIFNOT                        R2 ; [+17]
       24 GETTABLEKS                       R2 R0 K5 ["_r6Avatar"]
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETTABLEKS                       R2 R0 K6 ["_onConfigureStarted"]
       29 GETTABLEKS                       R4 R0 K3 ["_r15Avatar"]
       31 GETTABLEKS                       R5 R0 K5 ["_r6Avatar"]
       33 NAMECALL                         R2 R2 K7 ["Fire"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R2 R3 K8 ["MakeExportVersion"]
       39 MOVE                             R3 R1
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["FindExistingImportedFbx"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETUPVAL                         R1 1
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R1 K1 ["ConfigureExistingAvatar"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Export"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetupCharacterForTesting"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["_r15Avatar"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_41:
        0 LOADK                            R5 K0 ["Configure Avatar"]
        1 LOADK                            R6 K1 ["Configure FBX imported avatar"]
        2 LOADK                            R7 K2 ["rbxasset://textures/AvatarImporter/fbximportlogo.png"]
        3 NAMECALL                         R3 R2 K3 ["CreateButton"]
        5 CALL                             R3 4 1
        6 GETTABLEKS                       R4 R3 K4 ["Click"]
        8 NEWCLOSURE                       R6 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R4 R4 K5 ["Connect"]
       13 CALL                             R4 2 0
       14 LOADK                            R6 K6 ["Export Avatar"]
       15 LOADK                            R7 K7 ["Export .rbxm files for imported avatar"]
       16 LOADK                            R8 K2 ["rbxasset://textures/AvatarImporter/fbximportlogo.png"]
       17 NAMECALL                         R4 R2 K3 ["CreateButton"]
       19 CALL                             R4 4 1
       20 GETTABLEKS                       R5 R4 K4 ["Click"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R1
       25 NAMECALL                         R5 R5 K5 ["Connect"]
       27 CALL                             R5 2 0
       28 LOADK                            R7 K8 ["Test Avatar"]
       29 LOADK                            R8 K9 ["Click to make imported FBX avatar into StarterCharacter"]
       30 LOADK                            R9 K10 [""]
       31 NAMECALL                         R5 R2 K3 ["CreateButton"]
       33 CALL                             R5 4 1
       34 GETTABLEKS                       R6 R5 K4 ["Click"]
       36 NEWCLOSURE                       R8 P2
       37 CAPTURE                          UPVAL U1
       38 CAPTURE                          VAL R0
       39 NAMECALL                         R6 R6 K5 ["Connect"]
       41 CALL                             R6 2 0
       42 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [require]
        7 GETIMPORT                        R4 K4 [script]
        9 GETTABLEKS                       R3 R4 K5 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["RigFunctions"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K2 [require]
       16 GETIMPORT                        R5 K4 [script]
       18 GETTABLEKS                       R4 R5 K5 ["Parent"]
       20 GETTABLEKS                       R3 R4 K7 ["CharacterTester"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K2 [require]
       25 GETIMPORT                        R6 K4 [script]
       27 GETTABLEKS                       R5 R6 K5 ["Parent"]
       29 GETTABLEKS                       R4 R5 K8 ["Constants"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K9 [PROTO_0]
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R0 K10 ["new"]
       36 DUPCLOSURE                       R4 K11 [PROTO_1]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 SETTABLEKS                       R4 R0 K12 ["ConfigureImportedAvatar"]
       41 DUPCLOSURE                       R4 K13 [PROTO_2]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R4 R0 K14 ["ConfigureExistingAvatar"]
       46 DUPCLOSURE                       R4 K15 [PROTO_3]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R4 R0 K16 ["_setupExistingRigs"]
       51 DUPCLOSURE                       R4 K17 [PROTO_4]
       52 SETTABLEKS                       R4 R0 K18 ["setEnabled"]
       54 DUPCLOSURE                       R4 K19 [PROTO_5]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R4 R0 K20 ["_onFinished"]
       58 DUPCLOSURE                       R4 K21 [PROTO_6]
       59 SETTABLEKS                       R4 R0 K22 ["_onCancel"]
       61 DUPCLOSURE                       R4 K23 [PROTO_9]
       62 CAPTURE                          VAL R1
       63 DUPCLOSURE                       R5 K24 [PROTO_12]
       64 DUPCLOSURE                       R6 K25 [PROTO_13]
       65 CAPTURE                          VAL R5
       66 SETTABLEKS                       R6 R0 K26 ["_entryBoxListSetup"]
       68 DUPCLOSURE                       R6 K27 [PROTO_14]
       69 DUPCLOSURE                       R7 K28 [PROTO_15]
       70 DUPCLOSURE                       R8 K29 [PROTO_16]
       71 CAPTURE                          VAL R7
       72 DUPCLOSURE                       R9 K30 [PROTO_17]
       73 DUPCLOSURE                       R10 K31 [PROTO_18]
       74 DUPCLOSURE                       R11 K32 [PROTO_23]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R11 R0 K33 ["_constructR6TextureBoxes"]
       80 DUPCLOSURE                       R11 K34 [PROTO_25]
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R11 R0 K35 ["_constructR6MeshBoxes"]
       86 DUPCLOSURE                       R11 K36 [PROTO_29]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R11 R0 K37 ["_constructFaceTextureEntry"]
       91 DUPCLOSURE                       R11 K38 [PROTO_30]
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R11 R0 K39 ["_constructConfigureR6"]
       96 DUPCLOSURE                       R11 K40 [PROTO_32]
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R4
      100 SETTABLEKS                       R11 R0 K41 ["_constructConfigureTextures"]
      102 DUPCLOSURE                       R11 K42 [PROTO_33]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R10
      105 SETTABLEKS                       R11 R0 K43 ["_constructConfigureR15"]
      107 DUPCLOSURE                       R11 K44 [PROTO_36]
      108 SETTABLEKS                       R11 R0 K45 ["_constructUI"]
      110 DUPCLOSURE                       R11 K46 [PROTO_37]
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R3
      113 SETTABLEKS                       R11 R0 K47 ["_setupExistingRig"]
      115 DUPCLOSURE                       R11 K48 [PROTO_41]
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R11 R0 K49 ["createButtons"]
      120 RETURN                           R0 1
