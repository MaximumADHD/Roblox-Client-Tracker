PROTO_0:
        0 JUMPIF                           R2 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R6 K0 ["Humanoid"]
        3 NAMECALL                         R4 R2 K1 ["FindFirstChildOfClass"]
        5 CALL                             R4 2 1
        6 LOADK                            R7 K2 ["AnimationController"]
        7 NAMECALL                         R5 R2 K1 ["FindFirstChildOfClass"]
        9 CALL                             R5 2 1
       10 JUMPIFNOT                        R4 ; [+5]
       11 LOADK                            R8 K3 ["Animator"]
       12 NAMECALL                         R6 R4 K1 ["FindFirstChildOfClass"]
       14 CALL                             R6 2 1
       15 JUMP                             ; [+1]
       16 LOADB                            R6 0
       17 JUMPIFNOT                        R5 ; [+6]
       18 LOADK                            R9 K3 ["Animator"]
       19 NAMECALL                         R7 R5 K1 ["FindFirstChildOfClass"]
       21 CALL                             R7 2 1
       22 MOVE                             R6 R7
       23 JUMP                             ; [0]
       24 GETTABLEKS                       R7 R1 K4 ["Character"]
       26 JUMPIF                           R7 ; [+5]
       27 GETTABLEKS                       R7 R1 K5 ["CharacterAdded"]
       29 NAMECALL                         R7 R7 K6 ["Wait"]
       31 CALL                             R7 1 1
       32 LOADK                            R10 K7 ["Animate"]
       33 NAMECALL                         R8 R7 K8 ["WaitForChild"]
       35 CALL                             R8 2 1
       36 NAMECALL                         R8 R8 K9 ["Clone"]
       38 CALL                             R8 1 1
       39 LOADK                            R11 K10 ["HumanoidRootPart"]
       40 NAMECALL                         R9 R7 K8 ["WaitForChild"]
       42 CALL                             R9 2 0
       43 NAMECALL                         R10 R7 K11 ["GetPrimaryPartCFrame"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R9 R10 K12 ["p"]
       48 JUMPIFNOT                        R3 ; [+11]
       49 GETUPVAL                         R10 0
       50 LOADK                            R12 K13 ["SpawnLocation"]
       51 LOADB                            R13 1
       52 NAMECALL                         R10 R10 K14 ["FindFirstChildWhichIsA"]
       54 CALL                             R10 3 1
       55 JUMPIFNOT                        R10 ; [+4]
       56 GETTABLEKS                       R11 R10 K15 ["CFrame"]
       58 GETTABLEKS                       R9 R11 K12 ["p"]
       60 NAMECALL                         R10 R2 K9 ["Clone"]
       62 CALL                             R10 1 1
       63 LOADK                            R13 K7 ["Animate"]
       64 NAMECALL                         R11 R10 K16 ["FindFirstChild"]
       66 CALL                             R11 2 1
       67 GETTABLEKS                       R12 R7 K17 ["Name"]
       69 SETTABLEKS                       R12 R10 K17 ["Name"]
       71 GETUPVAL                         R12 0
       72 SETTABLEKS                       R12 R10 K18 ["Parent"]
       74 SETTABLEKS                       R10 R1 K4 ["Character"]
       76 NAMECALL                         R12 R7 K19 ["Destroy"]
       78 CALL                             R12 1 0
       79 JUMPIF                           R6 ; [+10]
       80 GETIMPORT                        R12 K22 [Instance.new]
       82 LOADK                            R13 K3 ["Animator"]
       83 CALL                             R12 1 1
       84 LOADK                            R15 K0 ["Humanoid"]
       85 NAMECALL                         R13 R10 K16 ["FindFirstChild"]
       87 CALL                             R13 2 1
       88 SETTABLEKS                       R13 R12 K18 ["Parent"]
       90 JUMPIFNOT                        R11 ; [+3]
       91 NAMECALL                         R12 R11 K19 ["Destroy"]
       93 CALL                             R12 1 0
       94 SETTABLEKS                       R10 R8 K18 ["Parent"]
       96 MOVE                             R14 R9
       97 NAMECALL                         R12 R10 K23 ["MoveTo"]
       99 CALL                             R12 2 0
      100 GETTABLEKS                       R12 R0 K24 ["previewChangedEvent"]
      102 MOVE                             R14 R1
      103 NAMECALL                         R12 R12 K25 ["FireClient"]
      105 CALL                             R12 2 0
      106 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["RemoteEvent"]
        3 CALL                             R1 1 1
        4 SETTABLEKS                       R1 R0 K4 ["previewChangedEvent"]
        6 GETTABLEKS                       R1 R0 K4 ["previewChangedEvent"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K5 ["PREVIEW_REMOTE_EVENT_NAME"]
       11 SETTABLEKS                       R2 R1 K6 ["Name"]
       13 GETTABLEKS                       R1 R0 K4 ["previewChangedEvent"]
       15 GETUPVAL                         R2 1
       16 SETTABLEKS                       R2 R1 K7 ["Parent"]
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["previewChangedEvent"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["previewChangedEvent"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["previewChangedEvent"]
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["PREVIEW_FOLDER_NAME"]
        4 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+1]
        8 RETURN                           R0 0
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R0 K2 ["playerPreviewAvatarData"]
       13 GETIMPORT                        R2 K4 [ipairs]
       15 NAMECALL                         R3 R1 K5 ["GetChildren"]
       17 CALL                             R3 1 -1
       18 CALL                             R2 -1 3
       19 FORGPREP_INEXT                   R2
       20 GETTABLEKS                       R8 R6 K6 ["Name"]
       22 FASTCALL1                        TONUMBER R8 ; [+2]
       23 GETIMPORT                        R7 K8 [tonumber]
       25 CALL                             R7 1 1
       26 GETTABLEKS                       R8 R0 K2 ["playerPreviewAvatarData"]
       28 DUPTABLE                         R9 K12 [{"CurrentIndex", "PreviousIndex", "Avatars"}]
       29 LOADN                            R10 1
       30 SETTABLEKS                       R10 R9 K9 ["CurrentIndex"]
       32 LOADN                            R10 1
       33 SETTABLEKS                       R10 R9 K10 ["PreviousIndex"]
       35 NAMECALL                         R10 R6 K5 ["GetChildren"]
       37 CALL                             R10 1 1
       38 SETTABLEKS                       R10 R9 K11 ["Avatars"]
       40 SETTABLE                         R9 R8 R7
       41 GETIMPORT                        R8 K4 [ipairs]
       43 NAMECALL                         R9 R6 K5 ["GetChildren"]
       45 CALL                             R9 1 -1
       46 CALL                             R8 -1 3
       47 FORGPREP_INEXT                   R8
       48 SETTABLEKS                       R11 R12 K6 ["Name"]
       50 FORGLOOP                         R8 2 [inext] ; [-3]
       52 FORGLOOP                         R2 2 [inext] ; [-33]
       54 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["Avatars"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["CurrentIndex"]
        8 GETTABLE                         R3 R4 R5
        9 LOADB                            R4 1
       10 NAMECALL                         R0 R0 K2 ["switchToAvatar"]
       12 CALL                             R0 4 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R5 2
        3 GETTABLEKS                       R4 R5 K0 ["Avatars"]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K1 ["CurrentIndex"]
        8 GETTABLE                         R3 R4 R5
        9 NAMECALL                         R0 R0 K2 ["switchToAvatar"]
       11 CALL                             R0 3 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["diedHandle"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["diedHandle"]
        7 NAMECALL                         R1 R1 K1 ["Disconnect"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R5 K2 ["Humanoid"]
       12 NAMECALL                         R3 R0 K3 ["WaitForChild"]
       14 CALL                             R3 2 1
       15 GETTABLEKS                       R2 R3 K4 ["Died"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R2 R2 K5 ["Connect"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K0 ["diedHandle"]
       26 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["playerPreviewAvatarData"]
        3 GETTABLEKS                       R3 R0 K1 ["UserId"]
        5 GETTABLE                         R1 R2 R3
        6 JUMPIFNOT                        R1 ; [+38]
        7 GETTABLEKS                       R2 R1 K2 ["appearanceLoadedHandle"]
        9 JUMPIFNOT                        R2 ; [+5]
       10 GETTABLEKS                       R2 R1 K2 ["appearanceLoadedHandle"]
       12 NAMECALL                         R2 R2 K3 ["Disconnect"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K4 ["CharacterAppearanceLoaded"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 NAMECALL                         R2 R2 K5 ["Connect"]
       23 CALL                             R2 2 1
       24 SETTABLEKS                       R2 R1 K2 ["appearanceLoadedHandle"]
       26 GETTABLEKS                       R2 R1 K6 ["characterAddedHandle"]
       28 JUMPIFNOT                        R2 ; [+5]
       29 GETTABLEKS                       R2 R1 K6 ["characterAddedHandle"]
       31 NAMECALL                         R2 R2 K3 ["Disconnect"]
       33 CALL                             R2 1 0
       34 GETTABLEKS                       R2 R0 K7 ["CharacterAdded"]
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          VAL R0
       40 NAMECALL                         R2 R2 K5 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K6 ["characterAddedHandle"]
       45 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["playerPreviewAvatarData"]
        3 GETTABLEKS                       R4 R0 K1 ["UserId"]
        5 GETTABLE                         R2 R3 R4
        6 JUMPIFNOT                        R2 ; [+34]
        7 SETTABLEKS                       R1 R2 K2 ["CurrentIndex"]
        9 GETTABLEKS                       R3 R2 K3 ["PreviousIndex"]
       11 JUMPIFEQ                         R1 R3 ; [+19]
       13 GETTABLEKS                       R4 R2 K4 ["Avatars"]
       15 GETTABLEKS                       R5 R2 K3 ["PreviousIndex"]
       17 GETTABLE                         R3 R4 R5
       18 NAMECALL                         R3 R3 K5 ["Destroy"]
       20 CALL                             R3 1 0
       21 GETTABLEKS                       R3 R2 K4 ["Avatars"]
       23 GETTABLEKS                       R4 R2 K3 ["PreviousIndex"]
       25 GETTABLEKS                       R5 R0 K6 ["Character"]
       27 NAMECALL                         R5 R5 K7 ["Clone"]
       29 CALL                             R5 1 1
       30 SETTABLE                         R5 R3 R4
       31 GETUPVAL                         R3 0
       32 MOVE                             R5 R0
       33 GETTABLEKS                       R7 R2 K4 ["Avatars"]
       35 GETTABLE                         R6 R7 R1
       36 NAMECALL                         R3 R3 K8 ["switchToAvatar"]
       38 CALL                             R3 3 0
       39 SETTABLEKS                       R1 R2 K3 ["PreviousIndex"]
       41 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["connections"]
        4 GETTABLEKS                       R2 R0 K0 ["connections"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["PlayerAdded"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 NAMECALL                         R3 R3 K2 ["Connect"]
       13 CALL                             R3 2 -1
       14 FASTCALL                         TABLE_INSERT ; [+2]
       15 GETIMPORT                        R1 K5 [table.insert]
       17 CALL                             R1 -1 0
       18 GETTABLEKS                       R2 R0 K0 ["connections"]
       20 GETTABLEKS                       R4 R0 K6 ["previewChangedEvent"]
       22 GETTABLEKS                       R3 R4 K7 ["OnServerEvent"]
       24 NEWCLOSURE                       R5 P1
       25 CAPTURE                          VAL R0
       26 NAMECALL                         R3 R3 K2 ["Connect"]
       28 CALL                             R3 2 -1
       29 FASTCALL                         TABLE_INSERT ; [+2]
       30 GETIMPORT                        R1 K5 [table.insert]
       32 CALL                             R1 -1 0
       33 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["playerPreviewAvatarData"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R1 K2 [pairs]
        6 GETTABLEKS                       R2 R0 K0 ["playerPreviewAvatarData"]
        8 CALL                             R1 1 3
        9 FORGPREP_NEXT                    R1
       10 GETTABLEKS                       R6 R5 K3 ["appearanceLoadedHandle"]
       12 JUMPIFNOT                        R6 ; [+5]
       13 GETTABLEKS                       R6 R5 K3 ["appearanceLoadedHandle"]
       15 NAMECALL                         R6 R6 K4 ["Disconnect"]
       17 CALL                             R6 1 0
       18 GETTABLEKS                       R6 R5 K5 ["characterAddedHandle"]
       20 JUMPIFNOT                        R6 ; [+5]
       21 GETTABLEKS                       R6 R5 K5 ["characterAddedHandle"]
       23 NAMECALL                         R6 R6 K4 ["Disconnect"]
       25 CALL                             R6 1 0
       26 GETTABLEKS                       R6 R5 K6 ["diedHandle"]
       28 JUMPIFNOT                        R6 ; [+5]
       29 GETTABLEKS                       R6 R5 K6 ["diedHandle"]
       31 NAMECALL                         R6 R6 K4 ["Disconnect"]
       33 CALL                             R6 1 0
       34 FORGLOOP                         R1 2 ; [-25]
       36 GETIMPORT                        R1 K8 [ipairs]
       38 GETTABLEKS                       R2 R0 K9 ["connections"]
       40 CALL                             R1 1 3
       41 FORGPREP_INEXT                   R1
       42 NAMECALL                         R6 R5 K4 ["Disconnect"]
       44 CALL                             R6 1 0
       45 FORGLOOP                         R1 2 [inext] ; [-4]
       47 NEWTABLE                         R1 0 0
       49 SETTABLEKS                       R1 R0 K9 ["connections"]
       51 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetPlayers"]
        3 CALL                             R2 1 1
        4 LENGTH                           R1 R2
        5 LOADN                            R2 1
        6 JUMPIFNOTLT                      R2 R1 ; [+2]
        8 RETURN                           R0 0
        9 NAMECALL                         R1 R0 K1 ["initPlayerPreviewData"]
       11 CALL                             R1 1 0
       12 GETTABLEKS                       R1 R0 K2 ["playerPreviewAvatarData"]
       14 JUMPIF                           R1 ; [+1]
       15 RETURN                           R0 0
       16 NAMECALL                         R1 R0 K3 ["initRemoteEvents"]
       18 CALL                             R1 1 0
       19 NAMECALL                         R1 R0 K4 ["initConnections"]
       21 CALL                             R1 1 0
       22 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R1 R0 K0 ["destroyConnections"]
        2 CALL                             R1 1 0
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["playerPreviewAvatarData"]
        6 NAMECALL                         R1 R0 K2 ["destroyRemoteEvents"]
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Players"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Workspace"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R7 K7 [script]
       21 GETTABLEKS                       R6 R7 K8 ["Parent"]
       23 GETTABLEKS                       R5 R6 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K8 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["Parent"]
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R7 R3 K11 ["Src"]
       33 GETTABLEKS                       R6 R7 K12 ["Util"]
       35 GETTABLEKS                       R5 R6 K13 ["Constants"]
       37 CALL                             R4 1 1
       38 NEWTABLE                         R5 8 0
       40 DUPCLOSURE                       R6 K14 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 SETTABLEKS                       R6 R5 K15 ["switchToAvatar"]
       44 DUPCLOSURE                       R6 K16 [PROTO_1]
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R6 R5 K17 ["initRemoteEvents"]
       49 DUPCLOSURE                       R6 K18 [PROTO_2]
       50 SETTABLEKS                       R6 R5 K19 ["destroyRemoteEvents"]
       52 DUPCLOSURE                       R6 K20 [PROTO_3]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R6 R5 K21 ["initPlayerPreviewData"]
       57 DUPCLOSURE                       R6 K22 [PROTO_9]
       58 CAPTURE                          VAL R0
       59 SETTABLEKS                       R6 R5 K23 ["initConnections"]
       61 DUPCLOSURE                       R6 K24 [PROTO_10]
       62 SETTABLEKS                       R6 R5 K25 ["destroyConnections"]
       64 DUPCLOSURE                       R6 K26 [PROTO_11]
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R6 R5 K27 ["init"]
       68 DUPCLOSURE                       R6 K28 [PROTO_12]
       69 SETTABLEKS                       R6 R5 K29 ["shutdown"]
       71 RETURN                           R5 1
