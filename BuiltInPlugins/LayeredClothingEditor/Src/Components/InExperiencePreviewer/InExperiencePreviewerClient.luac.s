PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Character"]
        3 JUMPIF                           R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["CharacterAdded"]
        7 NAMECALL                         R1 R1 K2 ["Wait"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K3 ["CurrentCamera"]
       15 GETIMPORT                        R3 K7 [Enum.CameraType.Custom]
       17 SETTABLEKS                       R3 R2 K5 ["CameraType"]
       19 SETTABLEKS                       R1 R2 K8 ["CameraSubject"]
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["previewContext"]
        4 NAMECALL                         R2 R2 K1 ["getCurrentPreviewAvatarIndex"]
        6 CALL                             R2 1 -1
        7 NAMECALL                         R0 R0 K2 ["FireServer"]
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["focusCamera"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["connections"]
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["PREVIEW_REMOTE_EVENT_NAME"]
        8 NAMECALL                         R1 R1 K2 ["WaitForChild"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R3 R0 K0 ["connections"]
       13 GETTABLEKS                       R4 R0 K3 ["previewContext"]
       15 NAMECALL                         R4 R4 K4 ["getPreviewModelChangedSignal"]
       17 CALL                             R4 1 1
       18 NEWCLOSURE                       R6 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R4 R4 K5 ["Connect"]
       23 CALL                             R4 2 -1
       24 FASTCALL                         TABLE_INSERT ; [+2]
       25 GETIMPORT                        R2 K8 [table.insert]
       27 CALL                             R2 -1 0
       28 GETTABLEKS                       R3 R0 K0 ["connections"]
       30 GETTABLEKS                       R4 R1 K9 ["OnClientEvent"]
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          VAL R0
       34 NAMECALL                         R4 R4 K5 ["Connect"]
       36 CALL                             R4 2 -1
       37 FASTCALL                         TABLE_INSERT ; [+2]
       38 GETIMPORT                        R2 K8 [table.insert]
       40 CALL                             R2 -1 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["provide"]
        3 NEWTABLE                         R2 0 2
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["makePluginTheme"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R4 R0 K2 ["previewContext"]
       11 SETLIST                          R2 R3 2 [1]
       13 DUPTABLE                         R3 K4 [{"InExperiencePreviewFrame"}]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K5 ["createElement"]
       17 GETUPVAL                         R5 3
       18 CALL                             R4 1 1
       19 SETTABLEKS                       R4 R3 K3 ["InExperiencePreviewFrame"]
       21 CALL                             R1 2 1
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K6 ["mount"]
       25 MOVE                             R3 R1
       26 GETUPVAL                         R4 4
       27 CALL                             R2 2 1
       28 SETTABLEKS                       R2 R0 K7 ["roactHandle"]
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["PREVIEW_FOLDER_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R2
       10 GETIMPORT                        R3 K3 [ipairs]
       12 NAMECALL                         R4 R1 K4 ["GetChildren"]
       14 CALL                             R4 1 -1
       15 CALL                             R3 -1 3
       16 FORGPREP_INEXT                   R3
       17 GETTABLEKS                       R9 R7 K5 ["Name"]
       19 FASTCALL1                        TONUMBER R9 ; [+2]
       20 GETIMPORT                        R8 K7 [tonumber]
       22 CALL                             R8 1 1
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K8 ["UserId"]
       26 JUMPIFNOTEQ                      R8 R9 ; [+2]
       28 MOVE                             R2 R7
       29 FORGLOOP                         R3 2 [inext] ; [-13]
       31 JUMPIF                           R2 ; [+1]
       32 RETURN                           R0 0
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K9 ["new"]
       36 CALL                             R3 0 1
       37 SETTABLEKS                       R3 R0 K10 ["previewContext"]
       39 NEWTABLE                         R3 0 0
       41 GETIMPORT                        R4 K3 [ipairs]
       43 NAMECALL                         R5 R2 K11 ["Clone"]
       45 CALL                             R5 1 1
       46 NAMECALL                         R5 R5 K4 ["GetChildren"]
       48 CALL                             R5 1 -1
       49 CALL                             R4 -1 3
       50 FORGPREP_INEXT                   R4
       51 GETTABLEKS                       R10 R8 K5 ["Name"]
       53 FASTCALL1                        TONUMBER R10 ; [+2]
       54 GETIMPORT                        R9 K7 [tonumber]
       56 CALL                             R9 1 1
       57 SETTABLE                         R8 R3 R9
       58 FORGLOOP                         R4 2 [inext] ; [-8]
       60 GETTABLEKS                       R4 R0 K10 ["previewContext"]
       62 MOVE                             R6 R3
       63 NAMECALL                         R4 R4 K12 ["setAvatars"]
       65 CALL                             R4 2 0
       66 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetPlayers"]
        3 CALL                             R2 1 1
        4 LENGTH                           R1 R2
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R2 R1 ; [+2]
        8 RETURN                           R0 0
        9 NAMECALL                         R1 R0 K1 ["initPreviewContext"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K2 ["previewContext"]
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 NAMECALL                         R1 R0 K3 ["initRemoteConnections"]
       18 CALL                             R1 1 0
       19 NAMECALL                         R1 R0 K4 ["initUI"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["connections"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [ipairs]
        6 GETTABLEKS                       R2 R0 K0 ["connections"]
        8 CALL                             R1 1 3
        9 FORGPREP_INEXT                   R1
       10 NAMECALL                         R6 R5 K3 ["Disconnect"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 [inext] ; [-4]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K0 ["connections"]
       19 GETTABLEKS                       R1 R0 K4 ["roactHandle"]
       21 JUMPIFNOT                        R1 ; [+9]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K5 ["unmount"]
       25 GETTABLEKS                       R2 R0 K4 ["roactHandle"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETTABLEKS                       R1 R0 K4 ["roactHandle"]
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Players"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K5 ["LocalPlayer"]
       15 GETIMPORT                        R3 K1 [game]
       17 LOADK                            R5 K6 ["ReplicatedStorage"]
       18 NAMECALL                         R3 R3 K3 ["GetService"]
       20 CALL                             R3 2 1
       21 GETIMPORT                        R4 K1 [game]
       23 GETTABLEKS                       R4 R4 K7 ["Workspace"]
       25 GETIMPORT                        R5 K9 [script]
       27 GETTABLEKS                       R5 R5 K10 ["Parent"]
       29 GETTABLEKS                       R5 R5 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K10 ["Parent"]
       33 GETTABLEKS                       R5 R5 K10 ["Parent"]
       35 GETIMPORT                        R6 K12 [require]
       37 GETTABLEKS                       R7 R5 K13 ["Packages"]
       39 GETTABLEKS                       R7 R7 K14 ["Roact"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K12 [require]
       44 GETTABLEKS                       R8 R5 K13 ["Packages"]
       46 GETTABLEKS                       R8 R8 K15 ["AvatarToolsShared"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R7 K16 ["Contexts"]
       51 GETTABLEKS                       R9 R8 K17 ["PreviewContext"]
       53 GETIMPORT                        R10 K12 [require]
       55 GETTABLEKS                       R11 R5 K18 ["Src"]
       57 GETTABLEKS                       R11 R11 K19 ["Resources"]
       59 GETTABLEKS                       R11 R11 K20 ["PluginTheme"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K12 [require]
       64 GETTABLEKS                       R12 R5 K13 ["Packages"]
       66 GETTABLEKS                       R12 R12 K21 ["Framework"]
       68 CALL                             R11 1 1
       69 GETTABLEKS                       R12 R11 K22 ["ContextServices"]
       71 GETIMPORT                        R13 K12 [require]
       73 GETIMPORT                        R14 K9 [script]
       75 GETTABLEKS                       R14 R14 K10 ["Parent"]
       77 GETTABLEKS                       R14 R14 K23 ["InExperiencePreviewFrame"]
       79 CALL                             R13 1 1
       80 GETIMPORT                        R14 K12 [require]
       82 GETTABLEKS                       R15 R5 K18 ["Src"]
       84 GETTABLEKS                       R15 R15 K24 ["Util"]
       86 GETTABLEKS                       R15 R15 K25 ["Constants"]
       88 CALL                             R14 1 1
       89 NEWTABLE                         R15 8 0
       91 DUPCLOSURE                       R16 K26 [PROTO_0]
       92 CAPTURE                          VAL R2
       93 CAPTURE                          VAL R4
       94 SETTABLEKS                       R16 R15 K27 ["focusCamera"]
       96 DUPCLOSURE                       R16 K28 [PROTO_3]
       97 CAPTURE                          VAL R3
       98 CAPTURE                          VAL R14
       99 SETTABLEKS                       R16 R15 K29 ["initRemoteConnections"]
      101 DUPCLOSURE                       R16 K30 [PROTO_4]
      102 CAPTURE                          VAL R12
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R16 R15 K31 ["initUI"]
      109 DUPCLOSURE                       R16 K32 [PROTO_5]
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R9
      114 SETTABLEKS                       R16 R15 K33 ["initPreviewContext"]
      116 DUPCLOSURE                       R16 K34 [PROTO_6]
      117 CAPTURE                          VAL R1
      118 SETTABLEKS                       R16 R15 K35 ["init"]
      120 DUPCLOSURE                       R16 K36 [PROTO_7]
      121 CAPTURE                          VAL R6
      122 SETTABLEKS                       R16 R15 K37 ["shutdown"]
      124 RETURN                           R15 1
