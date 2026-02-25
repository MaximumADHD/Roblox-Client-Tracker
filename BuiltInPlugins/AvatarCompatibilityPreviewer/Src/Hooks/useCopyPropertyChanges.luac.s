PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R1
        3 JUMPIFNOTEQKNIL                  R4 ; [+2]
        5 LOADB                            R6 0 +1
        6 LOADB                            R6 1
        7 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        9 LOADK                            R7 K0 ["Iterating reference is nil"]
       10 GETIMPORT                        R5 K2 [assert]
       12 CALL                             R5 2 0
       13 GETTABLEKS                       R7 R4 K3 ["Name"]
       15 FASTCALL2                        TABLE_INSERT R3 R7 ; [+4]
       17 MOVE                             R6 R3
       18 GETIMPORT                        R5 K6 [table.insert]
       20 CALL                             R5 2 0
       21 GETTABLEKS                       R4 R4 K7 ["Parent"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+12]
       25 GETIMPORT                        R5 K9 [error]
       27 LOADK                            R7 K10 ["Reference child wasn't a part of reference. Was looking for %*"]
       28 NAMECALL                         R9 R1 K11 ["GetFullName"]
       30 CALL                             R9 1 1
       31 NAMECALL                         R7 R7 K12 ["format"]
       33 CALL                             R7 2 1
       34 MOVE                             R6 R7
       35 CALL                             R5 1 0
       36 JUMPIFEQ                         R4 R0 ; [+2]
       38 JUMPBACK                         ; [-36]
       39 MOVE                             R5 R2
       40 LENGTH                           R8 R3
       41 LOADN                            R6 1
       42 LOADN                            R7 255
       43 FORNPREP                         R6
       44 GETTABLE                         R11 R3 R8
       45 NAMECALL                         R9 R5 K13 ["FindFirstChild"]
       47 CALL                             R9 2 1
       48 JUMPIFNOTEQKNIL                  R9 ; [+3]
       50 LOADNIL                          R10
       51 RETURN                           R10 1
       52 JUMPIFNOTEQKNIL                  R9 ; [+2]
       54 LOADB                            R11 0 +1
       55 LOADB                            R11 1
       56 GETUPVAL                         R13 0
       57 GETTABLEKS                       R12 R13 K14 ["LUAU_ANALYZE_ERROR"]
       59 FASTCALL2                        ASSERT R11 R12 ; [+3]
       61 GETIMPORT                        R10 K2 [assert]
       63 CALL                             R10 2 0
       64 MOVE                             R5 R9
       65 FORNLOOP                         R6
       66 GETTABLEKS                       R6 R5 K15 ["ClassName"]
       68 GETTABLEKS                       R7 R1 K15 ["ClassName"]
       70 JUMPIFEQ                         R6 R7 ; [+3]
       72 LOADNIL                          R6
       73 RETURN                           R6 1
       74 RETURN                           R5 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R5 2
        4 CALL                             R2 3 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 JUMPIFNOTEQKNIL                  R2 ; [+2]
       10 LOADB                            R4 0 +1
       11 LOADB                            R4 1
       12 GETUPVAL                         R6 3
       13 GETTABLEKS                       R5 R6 K0 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 GETTABLE                         R3 R0 R1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 0
        9 GETUPVAL                         R1 1
       10 GETUPVAL                         R2 2
       11 MOVE                             R3 R0
       12 GETUPVAL                         R4 3
       13 CALL                             R1 3 1
       14 JUMPIFNOTEQKNIL                  R1 ; [+2]
       16 JUMP                             ; [+16]
       17 JUMPIFNOTEQKNIL                  R1 ; [+2]
       19 LOADB                            R3 0 +1
       20 LOADB                            R3 1
       21 GETUPVAL                         R5 4
       22 GETTABLEKS                       R4 R5 K3 ["LUAU_ANALYZE_ERROR"]
       24 FASTCALL2                        ASSERT R3 R4 ; [+3]
       26 GETIMPORT                        R2 K5 [assert]
       28 CALL                             R2 2 0
       29 GETTABLEKS                       R2 R0 K6 ["CFrame"]
       31 SETTABLEKS                       R2 R1 K6 ["CFrame"]
       33 GETUPVAL                         R0 5
       34 CALL                             R0 0 1
       35 JUMPIF                           R0 ; [+93]
       36 GETUPVAL                         R0 3
       37 NAMECALL                         R0 R0 K7 ["GetChildren"]
       39 CALL                             R0 1 3
       40 FORGPREP                         R0
       41 LOADK                            R7 K8 ["Accessory"]
       42 NAMECALL                         R5 R4 K9 ["IsA"]
       44 CALL                             R5 2 1
       45 JUMPIFNOT                        R5 ; [+81]
       46 LOADK                            R7 K10 ["Handle"]
       47 NAMECALL                         R5 R4 K11 ["FindFirstChild"]
       49 CALL                             R5 2 1
       50 JUMPIFEQKNIL                     R5 ; [+76]
       52 JUMPIFNOTEQKNIL                  R5 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 GETUPVAL                         R9 4
       57 GETTABLEKS                       R8 R9 K3 ["LUAU_ANALYZE_ERROR"]
       59 FASTCALL2                        ASSERT R7 R8 ; [+3]
       61 GETIMPORT                        R6 K5 [assert]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R9 0
       65 GETTABLEKS                       R8 R9 K12 ["Name"]
       67 NAMECALL                         R6 R5 K11 ["FindFirstChild"]
       69 CALL                             R6 2 1
       70 JUMPIFEQKNIL                     R6 ; [+56]
       72 LOADK                            R9 K13 ["Attachment"]
       73 NAMECALL                         R7 R6 K9 ["IsA"]
       75 CALL                             R7 2 1
       76 JUMPIFNOT                        R7 ; [+50]
       77 LOADB                            R8 0
       78 JUMPIFEQKNIL                     R6 ; [+5]
       80 LOADK                            R10 K13 ["Attachment"]
       81 NAMECALL                         R8 R6 K9 ["IsA"]
       83 CALL                             R8 2 1
       84 GETUPVAL                         R10 4
       85 GETTABLEKS                       R9 R10 K3 ["LUAU_ANALYZE_ERROR"]
       87 FASTCALL2                        ASSERT R8 R9 ; [+3]
       89 GETIMPORT                        R7 K5 [assert]
       91 CALL                             R7 2 0
       92 LOADK                            R9 K14 ["AccessoryWeld"]
       93 NAMECALL                         R7 R5 K11 ["FindFirstChild"]
       95 CALL                             R7 2 1
       96 JUMPIFEQKNIL                     R7 ; [+30]
       98 LOADK                            R10 K15 ["Weld"]
       99 NAMECALL                         R8 R7 K9 ["IsA"]
      101 CALL                             R8 2 1
      102 JUMPIFNOT                        R8 ; [+24]
      103 LOADB                            R9 0
      104 JUMPIFEQKNIL                     R7 ; [+5]
      106 LOADK                            R11 K15 ["Weld"]
      107 NAMECALL                         R9 R7 K9 ["IsA"]
      109 CALL                             R9 2 1
      110 GETUPVAL                         R11 4
      111 GETTABLEKS                       R10 R11 K3 ["LUAU_ANALYZE_ERROR"]
      113 FASTCALL2                        ASSERT R9 R10 ; [+3]
      115 GETIMPORT                        R8 K5 [assert]
      117 CALL                             R8 2 0
      118 GETTABLEKS                       R8 R6 K6 ["CFrame"]
      120 SETTABLEKS                       R8 R7 K16 ["C0"]
      122 GETUPVAL                         R9 0
      123 GETTABLEKS                       R8 R9 K6 ["CFrame"]
      125 SETTABLEKS                       R8 R7 K17 ["C1"]
      127 FORGLOOP                         R0 2 ; [-87]
      129 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 MOVE                             R3 R0
        4 GETUPVAL                         R4 3
        5 CALL                             R1 3 1
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 JUMP                             ; [+16]
        9 JUMPIFNOTEQKNIL                  R1 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 GETUPVAL                         R5 4
       14 GETTABLEKS                       R4 R5 K0 ["LUAU_ANALYZE_ERROR"]
       16 FASTCALL2                        ASSERT R3 R4 ; [+3]
       18 GETIMPORT                        R2 K2 [assert]
       20 CALL                             R2 2 0
       21 GETTABLEKS                       R2 R0 K3 ["Value"]
       23 SETTABLEKS                       R2 R1 K3 ["Value"]
       25 GETUPVAL                         R0 5
       26 JUMPIFEQKNIL                     R0 ; [+14]
       28 GETUPVAL                         R0 6
       29 CALL                             R0 0 1
       30 JUMPIFNOT                        R0 ; [+8]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R0 R1 K4 ["Name"]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R1 R2 K5 ["ORIGINAL_POSITION_VALUE"]
       37 JUMPIFEQ                         R0 R1 ; [+3]
       39 GETUPVAL                         R0 5
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 CALL                             R1 3 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 LOADK                            R5 K0 ["BaseWrap"]
        9 NAMECALL                         R3 R1 K1 ["IsA"]
       11 CALL                             R3 2 1
       12 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       14 LOADK                            R4 K2 ["Corresponding instance does not match class name"]
       15 GETIMPORT                        R2 K4 [assert]
       17 CALL                             R2 2 0
       18 GETIMPORT                        R4 K8 [Enum.CageType.Outer]
       20 MOVE                             R5 R0
       21 NAMECALL                         R2 R1 K9 ["ModifyVertices"]
       23 CALL                             R2 3 0
       24 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R3 K0 ["Attachment"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+25]
        5 GETUPVAL                         R1 0
        6 NEWTABLE                         R2 0 0
        8 SETTABLE                         R2 R1 R0
        9 GETUPVAL                         R3 0
       10 GETTABLE                         R2 R3 R0
       11 LOADK                            R5 K2 ["CFrame"]
       12 NAMECALL                         R3 R0 K3 ["GetPropertyChangedSignal"]
       14 CALL                             R3 2 1
       15 NEWCLOSURE                       R5 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 NAMECALL                         R3 R3 K4 ["Connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K7 [table.insert]
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0
       30 LOADK                            R3 K8 ["ValueBase"]
       31 NAMECALL                         R1 R0 K1 ["IsA"]
       33 CALL                             R1 2 1
       34 JUMPIFNOT                        R1 ; [+22]
       35 GETUPVAL                         R1 0
       36 NEWTABLE                         R2 0 1
       38 LOADK                            R5 K9 ["Value"]
       39 NAMECALL                         R3 R0 K3 ["GetPropertyChangedSignal"]
       41 CALL                             R3 2 1
       42 NEWCLOSURE                       R5 P1
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          UPVAL U6
       49 CAPTURE                          UPVAL U5
       50 NAMECALL                         R3 R3 K4 ["Connect"]
       52 CALL                             R3 2 -1
       53 SETLIST                          R2 R3 -1 [1]
       55 SETTABLE                         R2 R1 R0
       56 RETURN                           R0 0
       57 GETUPVAL                         R1 7
       58 CALL                             R1 0 1
       59 JUMPIFNOT                        R1 ; [+21]
       60 LOADK                            R3 K10 ["BaseWrap"]
       61 NAMECALL                         R1 R0 K1 ["IsA"]
       63 CALL                             R1 2 1
       64 JUMPIFNOT                        R1 ; [+16]
       65 GETUPVAL                         R1 0
       66 NEWTABLE                         R2 0 1
       68 GETTABLEKS                       R3 R0 K11 ["VerticesModified"]
       70 NEWCLOSURE                       R5 P2
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          UPVAL U2
       73 CAPTURE                          VAL R0
       74 CAPTURE                          UPVAL U3
       75 NAMECALL                         R3 R3 K4 ["Connect"]
       77 CALL                             R3 2 -1
       78 SETLIST                          R2 R3 -1 [1]
       80 SETTABLE                         R2 R1 R0
       81 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K0 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 LOADNIL                          R6
       14 LOADNIL                          R7
       15 FORGPREP                         R5
       16 NAMECALL                         R10 R9 K0 ["Disconnect"]
       18 CALL                             R10 1 0
       19 FORGLOOP                         R5 2 ; [-4]
       21 FORGLOOP                         R0 2 ; [-10]
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R2 0
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
       13 FASTCALL2                        ASSERT R1 R2 ; [+3]
       15 GETIMPORT                        R0 K2 [assert]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 2
       19 CALL                             R0 0 1
       20 JUMPIFNOT                        R0 ; [+5]
       21 GETUPVAL                         R0 3
       22 JUMPIFNOTEQKNIL                  R0 ; [+3]
       24 LOADNIL                          R0
       25 RETURN                           R0 1
       26 GETUPVAL                         R2 3
       27 JUMPIFNOTEQKNIL                  R2 ; [+2]
       29 LOADB                            R1 0 +1
       30 LOADB                            R1 1
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K0 ["LUAU_ANALYZE_ERROR"]
       34 FASTCALL2                        ASSERT R1 R2 ; [+3]
       36 GETIMPORT                        R0 K2 [assert]
       38 CALL                             R0 2 0
       39 NEWTABLE                         R0 0 0
       41 NEWCLOSURE                       R1 P0
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          UPVAL U0
       45 CAPTURE                          UPVAL U1
       46 NEWCLOSURE                       R2 P1
       47 CAPTURE                          VAL R0
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U3
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          UPVAL U5
       53 CAPTURE                          UPVAL U6
       54 CAPTURE                          UPVAL U2
       55 GETUPVAL                         R3 3
       56 NAMECALL                         R3 R3 K3 ["GetDescendants"]
       58 CALL                             R3 1 3
       59 FORGPREP                         R3
       60 MOVE                             R8 R2
       61 MOVE                             R9 R7
       62 CALL                             R8 1 0
       63 FORGLOOP                         R3 2 ; [-4]
       65 GETUPVAL                         R4 3
       66 GETTABLEKS                       R3 R4 K4 ["DescendantAdded"]
       68 MOVE                             R5 R2
       69 NAMECALL                         R3 R3 K5 ["Connect"]
       71 CALL                             R3 2 1
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R4 R5 K6 ["DescendantRemoving"]
       75 NEWCLOSURE                       R6 P2
       76 CAPTURE                          VAL R0
       77 NAMECALL                         R4 R4 K5 ["Connect"]
       79 CALL                             R4 2 1
       80 NEWCLOSURE                       R5 P3
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R0
       84 RETURN                           R5 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R2
       11 NEWTABLE                         R5 0 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 SETLIST                          R5 R6 2 [1]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

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
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R8 K12 ["Flags"]
       45 GETTABLEKS                       R6 R7 K13 ["getFFlagAvatarPreviewerCageEditingTools"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K14 [PROTO_0]
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R7 K15 [PROTO_9]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R5
       56 RETURN                           R7 1
