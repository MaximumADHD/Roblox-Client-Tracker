PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQKNIL                  R1 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 0
        5 NAMECALL                         R1 R1 K0 ["GetChildren"]
        7 CALL                             R1 1 3
        8 FORGPREP                         R1
        9 LOADK                            R8 K1 ["Accessory"]
       10 NAMECALL                         R6 R5 K2 ["IsA"]
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+37]
       14 LOADK                            R8 K3 ["Handle"]
       15 NAMECALL                         R6 R5 K4 ["FindFirstChild"]
       17 CALL                             R6 2 1
       18 JUMPIFEQKNIL                     R6 ; [+32]
       20 GETTABLEKS                       R9 R0 K5 ["Name"]
       22 NAMECALL                         R7 R6 K4 ["FindFirstChild"]
       24 CALL                             R7 2 1
       25 JUMPIFEQKNIL                     R7 ; [+25]
       27 LOADK                            R10 K6 ["Attachment"]
       28 NAMECALL                         R8 R7 K2 ["IsA"]
       30 CALL                             R8 2 1
       31 JUMPIFNOT                        R8 ; [+19]
       32 LOADK                            R10 K7 ["AccessoryWeld"]
       33 NAMECALL                         R8 R6 K4 ["FindFirstChild"]
       35 CALL                             R8 2 1
       36 JUMPIFEQKNIL                     R8 ; [+14]
       38 LOADK                            R11 K8 ["Weld"]
       39 NAMECALL                         R9 R8 K2 ["IsA"]
       41 CALL                             R9 2 1
       42 JUMPIFNOT                        R9 ; [+8]
       43 GETTABLEKS                       R9 R7 K9 ["CFrame"]
       45 SETTABLEKS                       R9 R8 K10 ["C0"]
       47 GETTABLEKS                       R9 R0 K9 ["CFrame"]
       49 SETTABLEKS                       R9 R8 K11 ["C1"]
       51 FORGLOOP                         R1 2 ; [-43]
       53 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 NAMECALL                         R5 R4 K0 ["Disconnect"]
        6 CALL                             R5 1 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 NEWTABLE                         R0 0 0
        7 GETUPVAL                         R1 0
        8 NAMECALL                         R1 R1 K0 ["GetDescendants"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K1 ["Attachment"]
       13 NAMECALL                         R6 R5 K2 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIFNOT                        R6 ; [+33]
       17 LOADK                            R9 K1 ["Attachment"]
       18 NAMECALL                         R7 R5 K2 ["IsA"]
       20 CALL                             R7 2 1
       21 GETUPVAL                         R9 1
       22 GETTABLEKS                       R8 R9 K3 ["LUAU_ANALYZE_ERROR"]
       24 FASTCALL2                        ASSERT R7 R8 ; [+3]
       26 GETIMPORT                        R6 K5 [assert]
       28 CALL                             R6 2 0
       29 LOADK                            R8 K6 ["Accessory"]
       30 NAMECALL                         R6 R5 K7 ["FindFirstAncestorWhichIsA"]
       32 CALL                             R6 2 1
       33 JUMPIFNOTEQKNIL                  R6 ; [+16]
       35 MOVE                             R7 R0
       36 LOADK                            R10 K8 ["CFrame"]
       37 NAMECALL                         R8 R5 K9 ["GetPropertyChangedSignal"]
       39 CALL                             R8 2 1
       40 NEWCLOSURE                       R10 P0
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R5
       43 NAMECALL                         R8 R8 K10 ["Connect"]
       45 CALL                             R8 2 -1
       46 FASTCALL                         TABLE_INSERT ; [+2]
       47 GETIMPORT                        R6 K13 [table.insert]
       49 CALL                             R6 -1 0
       50 FORGLOOP                         R1 2 ; [-39]
       52 NEWCLOSURE                       R1 P1
       53 CAPTURE                          VAL R0
       54 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAvatarPreviewerEditingTools not enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["useCallback"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R3 0 1
       15 MOVE                             R4 R0
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R2 R3 K4 ["useEffect"]
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R4 0 2
       28 MOVE                             R5 R0
       29 MOVE                             R6 R1
       30 SETLIST                          R4 R5 2 [1]
       32 CALL                             R2 2 0
       33 DUPTABLE                         R2 K6 [{"update"}]
       34 NEWCLOSURE                       R3 P2
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R3 R2 K5 ["update"]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R5 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Flags"]
       36 GETTABLEKS                       R5 R6 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K14 [PROTO_5]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
