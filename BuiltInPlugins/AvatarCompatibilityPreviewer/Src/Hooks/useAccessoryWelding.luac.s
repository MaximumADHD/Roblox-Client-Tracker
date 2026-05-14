PROTO_0:
        0 LOADK                            R5 K0 ["WrapLayer"]
        1 NAMECALL                         R3 R2 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R3 2 1
        4 JUMPIFNOTEQKNIL                  R3 ; [+3]
        6 LOADNIL                          R4
        7 RETURN                           R4 1
        8 JUMPIFNOTEQKNIL                  R3 ; [+2]
       10 LOADB                            R5 0 +1
       11 LOADB                            R5 1
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K2 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R5 R6 ; [+3]
       17 GETIMPORT                        R4 K4 [assert]
       19 CALL                             R4 2 0
       20 LOADK                            R6 K5 ["WrapTarget"]
       21 LOADB                            R7 1
       22 NAMECALL                         R4 R0 K1 ["FindFirstChildWhichIsA"]
       24 CALL                             R4 3 1
       25 JUMPIFNOTEQKNIL                  R4 ; [+3]
       27 LOADNIL                          R5
       28 RETURN                           R5 1
       29 GETTABLEKS                       R5 R0 K6 ["CFrame"]
       31 GETTABLEKS                       R6 R4 K7 ["ImportOriginWorld"]
       33 GETTABLEKS                       R7 R3 K8 ["CageOrigin"]
       35 GETTABLEKS                       R8 R3 K9 ["ImportOrigin"]
       37 NAMECALL                         R9 R6 K10 ["Inverse"]
       39 CALL                             R9 1 1
       40 MUL                              R13 R7 R8
       41 MUL                              R12 R13 R9
       42 MUL                              R11 R12 R5
       43 MUL                              R10 R11 R1
       44 RETURN                           R10 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R2 R2 K0 ["findMatchingAccessoryAndAvatarAttachments"]
        5 CALL                             R2 3 2
        6 JUMPIFNOTEQKNIL                  R3 ; [+3]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+36]
       13 LOADK                            R6 K1 ["BasePart"]
       14 NAMECALL                         R4 R3 K2 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+3]
       19 LOADNIL                          R5
       20 RETURN                           R5 1
       21 GETUPVAL                         R5 3
       22 MOVE                             R6 R3
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R0 R1 K3 ["Part0"]
       26 GETUPVAL                         R6 4
       27 MOVE                             R7 R4
       28 MOVE                             R8 R5
       29 MOVE                             R9 R0
       30 CALL                             R6 3 1
       31 JUMPIF                           R6 ; [+2]
       32 GETTABLEKS                       R6 R2 K4 ["CFrame"]
       34 SETTABLEKS                       R6 R1 K5 ["C0"]
       36 SETTABLEKS                       R5 R1 K6 ["C1"]
       38 SETTABLEKS                       R4 R1 K7 ["Part1"]
       40 GETUPVAL                         R6 5
       41 CALL                             R6 0 1
       42 JUMPIFNOT                        R6 ; [+3]
       43 LOADK                            R6 K8 ["AccessoryWeld"]
       44 SETTABLEKS                       R6 R1 K9 ["Name"]
       46 SETTABLEKS                       R0 R1 K10 ["Parent"]
       48 RETURN                           R4 1
       49 SETTABLEKS                       R0 R1 K3 ["Part0"]
       51 GETUPVAL                         R4 4
       52 GETTABLEKS                       R5 R3 K10 ["Parent"]
       54 GETTABLEKS                       R6 R3 K4 ["CFrame"]
       56 MOVE                             R7 R0
       57 CALL                             R4 3 1
       58 JUMPIF                           R4 ; [+2]
       59 GETTABLEKS                       R4 R2 K4 ["CFrame"]
       61 SETTABLEKS                       R4 R1 K5 ["C0"]
       63 GETTABLEKS                       R4 R3 K4 ["CFrame"]
       65 SETTABLEKS                       R4 R1 K6 ["C1"]
       67 GETTABLEKS                       R4 R3 K10 ["Parent"]
       69 SETTABLEKS                       R4 R1 K7 ["Part1"]
       71 GETUPVAL                         R4 5
       72 CALL                             R4 0 1
       73 JUMPIFNOT                        R4 ; [+3]
       74 LOADK                            R4 K8 ["AccessoryWeld"]
       75 SETTABLEKS                       R4 R1 K9 ["Name"]
       77 SETTABLEKS                       R0 R1 K10 ["Parent"]
       79 GETTABLEKS                       R4 R3 K10 ["Parent"]
       81 RETURN                           R4 1

PROTO_2:
        0 LOADK                            R3 K0 ["Handle"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFEQKNIL                     R1 ; [+6]
        6 LOADK                            R4 K2 ["BasePart"]
        7 NAMECALL                         R2 R1 K3 ["IsA"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 LOADB                            R3 0
       13 JUMPIFEQKNIL                     R1 ; [+5]
       15 LOADK                            R5 K2 ["BasePart"]
       16 NAMECALL                         R3 R1 K3 ["IsA"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["LUAU_ANALYZE_ERROR"]
       22 FASTCALL2                        ASSERT R3 R4 ; [+3]
       24 GETIMPORT                        R2 K6 [assert]
       26 CALL                             R2 2 0
       27 LOADK                            R4 K7 ["Weld"]
       28 NAMECALL                         R2 R1 K8 ["FindFirstChildWhichIsA"]
       30 CALL                             R2 2 1
       31 JUMPIF                           R2 ; [+4]
       32 GETIMPORT                        R2 K11 [Instance.new]
       34 LOADK                            R3 K7 ["Weld"]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R3 1
       37 MOVE                             R4 R1
       38 MOVE                             R5 R2
       39 CALL                             R3 2 1
       40 GETUPVAL                         R5 2
       41 DUPTABLE                         R6 K15 [{"accessoryHandle", "limb", "weld"}]
       42 SETTABLEKS                       R1 R6 K12 ["accessoryHandle"]
       44 SETTABLEKS                       R3 R6 K13 ["limb"]
       46 SETTABLEKS                       R2 R6 K14 ["weld"]
       48 FASTCALL2                        TABLE_INSERT R5 R6 ; [+3]
       50 GETIMPORT                        R4 K18 [table.insert]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["limb"]
        6 JUMPIFNOTEQKNIL                  R5 ; [+9]
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R6 R4 K1 ["accessoryHandle"]
       11 GETTABLEKS                       R7 R4 K2 ["weld"]
       13 CALL                             R5 2 1
       14 SETTABLEKS                       R5 R4 K0 ["limb"]
       16 FORGLOOP                         R0 2 ; [-13]
       18 RETURN                           R0 0

PROTO_4:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETIMPORT                        R1 K4 [task.delay]
        7 LOADK                            R2 K5 [0.1]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R0
       10 CALL                             R1 3 0
       11 RETURN                           R0 0
       12 LOADK                            R3 K6 ["BasePart"]
       13 NAMECALL                         R1 R0 K1 ["IsA"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 GETUPVAL                         R1 1
       18 CALL                             R1 0 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["accessoryHandle"]
        2 GETTABLEKS                       R2 R2 K1 ["Parent"]
        4 GETUPVAL                         R3 0
        5 JUMPIFNOTEQ                      R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R3 K0 ["Accessory"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["filter"]
        8 GETUPVAL                         R2 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 2 1
       12 SETUPVAL                         R1 0
       13 RETURN                           R0 0
       14 LOADK                            R3 K3 ["BasePart"]
       15 NAMECALL                         R1 R0 K1 ["IsA"]
       17 CALL                             R1 2 1
       18 JUMPIFNOT                        R1 ; [+18]
       19 GETUPVAL                         R1 0
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETTABLEKS                       R6 R5 K4 ["limb"]
       25 JUMPIFNOTEQ                      R6 R0 ; [+9]
       27 GETTABLEKS                       R6 R5 K5 ["weld"]
       29 LOADNIL                          R7
       30 SETTABLEKS                       R7 R6 K6 ["Parent"]
       32 LOADNIL                          R6
       33 SETTABLEKS                       R6 R5 K4 ["limb"]
       35 FORGLOOP                         R1 2 ; [-13]
       37 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K0 ["LUAU_ANALYZE_ERROR"]
       13 FASTCALL2                        ASSERT R1 R2 ; [+3]
       15 GETIMPORT                        R0 K2 [assert]
       17 CALL                             R0 2 0
       18 NEWTABLE                         R0 0 0
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          UPVAL U6
       27 NEWCLOSURE                       R2 P1
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          VAL R1
       30 CAPTURE                          REF R0
       31 NEWCLOSURE                       R3 P2
       32 CAPTURE                          REF R0
       33 CAPTURE                          VAL R1
       34 NEWCLOSURE                       R4 P3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R5 P4
       38 CAPTURE                          REF R0
       39 CAPTURE                          UPVAL U7
       40 GETUPVAL                         R6 0
       41 NAMECALL                         R6 R6 K3 ["GetChildren"]
       43 CALL                             R6 1 3
       44 FORGPREP                         R6
       45 LOADK                            R13 K4 ["Accessory"]
       46 NAMECALL                         R11 R10 K5 ["IsA"]
       48 CALL                             R11 2 1
       49 JUMPIFNOT                        R11 ; [+7]
       50 GETIMPORT                        R11 K8 [task.delay]
       52 LOADK                            R12 K9 [0.1]
       53 MOVE                             R13 R2
       54 MOVE                             R14 R10
       55 CALL                             R11 3 0
       56 JUMP                             ; [+7]
       57 LOADK                            R13 K10 ["BasePart"]
       58 NAMECALL                         R11 R10 K5 ["IsA"]
       60 CALL                             R11 2 1
       61 JUMPIFNOT                        R11 ; [+2]
       62 MOVE                             R11 R3
       63 CALL                             R11 0 0
       64 FORGLOOP                         R6 2 ; [-20]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R6 R6 K11 ["ChildAdded"]
       69 MOVE                             R8 R4
       70 NAMECALL                         R6 R6 K12 ["Connect"]
       72 CALL                             R6 2 1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K13 ["ChildRemoved"]
       76 MOVE                             R9 R5
       77 NAMECALL                         R7 R7 K12 ["Connect"]
       79 CALL                             R7 2 1
       80 NEWCLOSURE                       R8 P5
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R7
       83 CLOSEUPVALS                      R0
       84 RETURN                           R8 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useEffect"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 NEWTABLE                         R3 0 1
       14 MOVE                             R4 R0
       15 SETLIST                          R3 R4 1 [1]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AvatarToolsShared"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Util"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K10 ["Src"]
       48 GETTABLEKS                       R7 R7 K11 ["Util"]
       50 GETTABLEKS                       R7 R7 K14 ["getCFrameRelativeToBasePart"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K5 [require]
       55 GETTABLEKS                       R8 R0 K10 ["Src"]
       57 GETTABLEKS                       R8 R8 K15 ["Flags"]
       59 GETTABLEKS                       R8 R8 K16 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K5 [require]
       64 GETTABLEKS                       R9 R0 K10 ["Src"]
       66 GETTABLEKS                       R9 R9 K15 ["Flags"]
       68 GETTABLEKS                       R9 R9 K17 ["getFFlagAvatarPreviewerEditingTools"]
       70 CALL                             R8 1 1
       71 GETTABLEKS                       R9 R1 K11 ["Util"]
       73 GETTABLEKS                       R9 R9 K18 ["AccessoryAndBodyToolShared"]
       75 GETTABLEKS                       R9 R9 K19 ["AccessoryUtil"]
       77 DUPCLOSURE                       R10 K20 [PROTO_0]
       78 CAPTURE                          VAL R4
       79 DUPCLOSURE                       R11 K21 [PROTO_9]
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R2
       88 RETURN                           R11 1
