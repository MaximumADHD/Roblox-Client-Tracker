PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R5 0
        3 CALL                             R5 0 1
        4 JUMPIFNOT                        R5 ; [+3]
        5 NEWTABLE                         R4 0 0
        7 JUMP                             ; [+1]
        8 LOADNIL                          R4
        9 MOVE                             R5 R1
       10 JUMPIFNOTEQKNIL                  R5 ; [+2]
       12 LOADB                            R7 0 +1
       13 LOADB                            R7 1
       14 FASTCALL2K                       ASSERT R7 K0 ; [+4]
       16 LOADK                            R8 K0 ["Iterating reference is nil"]
       17 GETIMPORT                        R6 K2 [assert]
       19 CALL                             R6 2 0
       20 GETTABLEKS                       R8 R5 K3 ["Name"]
       22 FASTCALL2                        TABLE_INSERT R3 R8 ; [+4]
       24 MOVE                             R7 R3
       25 GETIMPORT                        R6 K6 [table.insert]
       27 CALL                             R6 2 0
       28 JUMPIFNOT                        R4 ; [+8]
       29 LOADK                            R8 K7 ["Bone"]
       30 NAMECALL                         R6 R5 K8 ["IsA"]
       32 CALL                             R6 2 1
       33 JUMPIFNOT                        R6 ; [+3]
       34 LENGTH                           R6 R3
       35 LOADB                            R7 1
       36 SETTABLE                         R7 R4 R6
       37 GETTABLEKS                       R5 R5 K9 ["Parent"]
       39 JUMPIFNOTEQKNIL                  R5 ; [+12]
       41 GETIMPORT                        R6 K11 [error]
       43 LOADK                            R8 K12 ["Reference child wasn't a part of reference. Was looking for %*"]
       44 NAMECALL                         R10 R1 K13 ["GetFullName"]
       46 CALL                             R10 1 1
       47 NAMECALL                         R8 R8 K14 ["format"]
       49 CALL                             R8 2 1
       50 MOVE                             R7 R8
       51 CALL                             R6 1 0
       52 JUMPIFEQ                         R5 R0 ; [+2]
       54 JUMPBACK                         ; [-45]
       55 MOVE                             R6 R2
       56 LENGTH                           R9 R3
       57 LOADN                            R7 1
       58 LOADN                            R8 -1
       59 FORNPREP                         R7
       60 GETTABLE                         R12 R3 R9
       61 NAMECALL                         R10 R6 K15 ["FindFirstChild"]
       63 CALL                             R10 2 1
       64 JUMPIFNOTEQKNIL                  R10 ; [+6]
       66 JUMPIFNOT                        R4 ; [+2]
       67 GETTABLE                         R11 R4 R9
       68 JUMPIF                           R11 ; [+15]
       69 LOADNIL                          R11
       70 RETURN                           R11 1
       71 JUMPIFNOTEQKNIL                  R10 ; [+2]
       73 LOADB                            R12 0 +1
       74 LOADB                            R12 1
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K16 ["LUAU_ANALYZE_ERROR"]
       78 FASTCALL2                        ASSERT R12 R13 ; [+3]
       80 GETIMPORT                        R11 K2 [assert]
       82 CALL                             R11 2 0
       83 MOVE                             R6 R10
       84 FORNLOOP                         R7
       85 GETTABLEKS                       R7 R6 K17 ["ClassName"]
       87 GETTABLEKS                       R8 R1 K17 ["ClassName"]
       89 JUMPIFEQ                         R7 R8 ; [+3]
       91 LOADNIL                          R7
       92 RETURN                           R7 1
       93 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 1
        5 JUMPIFEQKNIL                     R3 ; [+6]
        7 LOADK                            R6 K0 ["Attachment"]
        8 NAMECALL                         R4 R3 K1 ["IsA"]
       10 CALL                             R4 2 1
       11 JUMPIF                           R4 ; [+1]
       12 RETURN                           R0 0
       13 LOADK                            R6 K2 ["BasePart"]
       14 NAMECALL                         R4 R3 K3 ["FindFirstAncestorWhichIsA"]
       16 CALL                             R4 2 1
       17 JUMPIFNOTEQKNIL                  R4 ; [+6]
       19 GETTABLEKS                       R5 R1 K4 ["CFrame"]
       21 SETTABLEKS                       R5 R3 K4 ["CFrame"]
       23 RETURN                           R0 0
       24 GETTABLEKS                       R5 R4 K4 ["CFrame"]
       26 GETUPVAL                         R7 1
       27 MOVE                             R8 R1
       28 CALL                             R7 1 -1
       29 NAMECALL                         R5 R5 K5 ["ToWorldSpace"]
       31 CALL                             R5 -1 1
       32 SETTABLEKS                       R5 R3 K6 ["WorldCFrame"]
       34 RETURN                           R0 0

PROTO_2:
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
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K0 ["LUAU_ANALYZE_ERROR"]
       15 FASTCALL2                        ASSERT R4 R5 ; [+3]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 GETTABLE                         R3 R0 R1
       21 SETTABLE                         R3 R2 R1
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K1 [game]
        3 NAMECALL                         R0 R0 K2 ["IsDescendantOf"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 CALL                             R0 0 1
       10 JUMPIFNOT                        R0 ; [+35]
       11 GETUPVAL                         R0 0
       12 LOADK                            R2 K3 ["Bone"]
       13 NAMECALL                         R0 R0 K4 ["IsA"]
       15 CALL                             R0 2 1
       16 JUMPIFNOT                        R0 ; [+23]
       17 GETUPVAL                         R0 0
       18 NAMECALL                         R0 R0 K5 ["GetDescendants"]
       20 CALL                             R0 1 3
       21 FORGPREP                         R0
       22 LOADK                            R7 K6 ["Attachment"]
       23 NAMECALL                         R5 R4 K4 ["IsA"]
       25 CALL                             R5 2 1
       26 JUMPIFNOT                        R5 ; [+10]
       27 LOADK                            R7 K3 ["Bone"]
       28 NAMECALL                         R5 R4 K4 ["IsA"]
       30 CALL                             R5 2 1
       31 JUMPIF                           R5 ; [+5]
       32 GETUPVAL                         R5 2
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R4
       35 GETUPVAL                         R8 4
       36 CALL                             R5 3 0
       37 FORGLOOP                         R0 2 ; [-16]
       39 JUMP                             ; [+31]
       40 GETUPVAL                         R0 2
       41 GETUPVAL                         R1 3
       42 GETUPVAL                         R2 0
       43 GETUPVAL                         R3 4
       44 CALL                             R0 3 0
       45 JUMP                             ; [+25]
       46 GETUPVAL                         R0 0
       47 GETUPVAL                         R1 5
       48 GETUPVAL                         R2 3
       49 MOVE                             R3 R0
       50 GETUPVAL                         R4 4
       51 CALL                             R1 3 1
       52 JUMPIFNOTEQKNIL                  R1 ; [+2]
       54 JUMP                             ; [+16]
       55 JUMPIFNOTEQKNIL                  R1 ; [+2]
       57 LOADB                            R3 0 +1
       58 LOADB                            R3 1
       59 GETUPVAL                         R4 6
       60 GETTABLEKS                       R4 R4 K7 ["LUAU_ANALYZE_ERROR"]
       62 FASTCALL2                        ASSERT R3 R4 ; [+3]
       64 GETIMPORT                        R2 K9 [assert]
       66 CALL                             R2 2 0
       67 GETTABLEKS                       R2 R0 K10 ["CFrame"]
       69 SETTABLEKS                       R2 R1 K10 ["CFrame"]
       71 GETUPVAL                         R0 7
       72 CALL                             R0 0 1
       73 JUMPIF                           R0 ; [+93]
       74 GETUPVAL                         R0 4
       75 NAMECALL                         R0 R0 K11 ["GetChildren"]
       77 CALL                             R0 1 3
       78 FORGPREP                         R0
       79 LOADK                            R7 K12 ["Accessory"]
       80 NAMECALL                         R5 R4 K4 ["IsA"]
       82 CALL                             R5 2 1
       83 JUMPIFNOT                        R5 ; [+81]
       84 LOADK                            R7 K13 ["Handle"]
       85 NAMECALL                         R5 R4 K14 ["FindFirstChild"]
       87 CALL                             R5 2 1
       88 JUMPIFEQKNIL                     R5 ; [+76]
       90 JUMPIFNOTEQKNIL                  R5 ; [+2]
       92 LOADB                            R7 0 +1
       93 LOADB                            R7 1
       94 GETUPVAL                         R8 6
       95 GETTABLEKS                       R8 R8 K7 ["LUAU_ANALYZE_ERROR"]
       97 FASTCALL2                        ASSERT R7 R8 ; [+3]
       99 GETIMPORT                        R6 K9 [assert]
      101 CALL                             R6 2 0
      102 GETUPVAL                         R8 0
      103 GETTABLEKS                       R8 R8 K15 ["Name"]
      105 NAMECALL                         R6 R5 K14 ["FindFirstChild"]
      107 CALL                             R6 2 1
      108 JUMPIFEQKNIL                     R6 ; [+56]
      110 LOADK                            R9 K6 ["Attachment"]
      111 NAMECALL                         R7 R6 K4 ["IsA"]
      113 CALL                             R7 2 1
      114 JUMPIFNOT                        R7 ; [+50]
      115 LOADB                            R8 0
      116 JUMPIFEQKNIL                     R6 ; [+5]
      118 LOADK                            R10 K6 ["Attachment"]
      119 NAMECALL                         R8 R6 K4 ["IsA"]
      121 CALL                             R8 2 1
      122 GETUPVAL                         R9 6
      123 GETTABLEKS                       R9 R9 K7 ["LUAU_ANALYZE_ERROR"]
      125 FASTCALL2                        ASSERT R8 R9 ; [+3]
      127 GETIMPORT                        R7 K9 [assert]
      129 CALL                             R7 2 0
      130 LOADK                            R9 K16 ["AccessoryWeld"]
      131 NAMECALL                         R7 R5 K14 ["FindFirstChild"]
      133 CALL                             R7 2 1
      134 JUMPIFEQKNIL                     R7 ; [+30]
      136 LOADK                            R10 K17 ["Weld"]
      137 NAMECALL                         R8 R7 K4 ["IsA"]
      139 CALL                             R8 2 1
      140 JUMPIFNOT                        R8 ; [+24]
      141 LOADB                            R9 0
      142 JUMPIFEQKNIL                     R7 ; [+5]
      144 LOADK                            R11 K17 ["Weld"]
      145 NAMECALL                         R9 R7 K4 ["IsA"]
      147 CALL                             R9 2 1
      148 GETUPVAL                         R10 6
      149 GETTABLEKS                       R10 R10 K7 ["LUAU_ANALYZE_ERROR"]
      151 FASTCALL2                        ASSERT R9 R10 ; [+3]
      153 GETIMPORT                        R8 K9 [assert]
      155 CALL                             R8 2 0
      156 GETTABLEKS                       R8 R6 K10 ["CFrame"]
      158 SETTABLEKS                       R8 R7 K18 ["C0"]
      160 GETUPVAL                         R8 0
      161 GETTABLEKS                       R8 R8 K10 ["CFrame"]
      163 SETTABLEKS                       R8 R7 K19 ["C1"]
      165 FORGLOOP                         R0 2 ; [-87]
      167 RETURN                           R0 0

PROTO_4:
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
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K0 ["LUAU_ANALYZE_ERROR"]
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
       31 GETUPVAL                         R0 0
       32 GETTABLEKS                       R0 R0 K4 ["Name"]
       34 GETUPVAL                         R1 4
       35 GETTABLEKS                       R1 R1 K5 ["ORIGINAL_POSITION_VALUE"]
       37 JUMPIFEQ                         R0 R1 ; [+3]
       39 GETUPVAL                         R0 5
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_5:
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

PROTO_6:
        0 LOADK                            R3 K0 ["Attachment"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+27]
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
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 NAMECALL                         R3 R3 K4 ["Connect"]
       26 CALL                             R3 2 -1
       27 FASTCALL                         TABLE_INSERT ; [+2]
       28 GETIMPORT                        R1 K7 [table.insert]
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0
       32 LOADK                            R3 K8 ["ValueBase"]
       33 NAMECALL                         R1 R0 K1 ["IsA"]
       35 CALL                             R1 2 1
       36 JUMPIFNOT                        R1 ; [+22]
       37 GETUPVAL                         R1 0
       38 NEWTABLE                         R2 0 1
       40 LOADK                            R5 K9 ["Value"]
       41 NAMECALL                         R3 R0 K3 ["GetPropertyChangedSignal"]
       43 CALL                             R3 2 1
       44 NEWCLOSURE                       R5 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          UPVAL U7
       52 NAMECALL                         R3 R3 K4 ["Connect"]
       54 CALL                             R3 2 -1
       55 SETLIST                          R2 R3 -1 [1]
       57 SETTABLE                         R2 R1 R0
       58 RETURN                           R0 0
       59 GETUPVAL                         R1 9
       60 CALL                             R1 0 1
       61 JUMPIFNOT                        R1 ; [+21]
       62 LOADK                            R3 K10 ["BaseWrap"]
       63 NAMECALL                         R1 R0 K1 ["IsA"]
       65 CALL                             R1 2 1
       66 JUMPIFNOT                        R1 ; [+16]
       67 GETUPVAL                         R1 0
       68 NEWTABLE                         R2 0 1
       70 GETTABLEKS                       R3 R0 K11 ["VerticesModified"]
       72 NEWCLOSURE                       R5 P2
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          UPVAL U3
       75 CAPTURE                          VAL R0
       76 CAPTURE                          UPVAL U4
       77 NAMECALL                         R3 R3 K4 ["Connect"]
       79 CALL                             R3 2 -1
       80 SETLIST                          R2 R3 -1 [1]
       82 SETTABLE                         R2 R1 R0
       83 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K0 ["LUAU_ANALYZE_ERROR"]
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
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          UPVAL U6
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U7
       55 CAPTURE                          UPVAL U8
       56 CAPTURE                          UPVAL U2
       57 GETUPVAL                         R3 3
       58 NAMECALL                         R3 R3 K3 ["GetDescendants"]
       60 CALL                             R3 1 3
       61 FORGPREP                         R3
       62 MOVE                             R8 R2
       63 MOVE                             R9 R7
       64 CALL                             R8 1 0
       65 FORGLOOP                         R3 2 ; [-4]
       67 GETUPVAL                         R3 3
       68 GETTABLEKS                       R3 R3 K4 ["DescendantAdded"]
       70 MOVE                             R5 R2
       71 NAMECALL                         R3 R3 K5 ["Connect"]
       73 CALL                             R3 2 1
       74 GETUPVAL                         R4 3
       75 GETTABLEKS                       R4 R4 K6 ["DescendantRemoving"]
       77 NEWCLOSURE                       R6 P2
       78 CAPTURE                          VAL R0
       79 NAMECALL                         R4 R4 K5 ["Connect"]
       81 CALL                             R4 2 1
       82 NEWCLOSURE                       R5 P3
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R0
       86 RETURN                           R5 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useEffect"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 2
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 SETLIST                          R5 R6 2 [1]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["getCFrameRelativeToBasePart"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Flags"]
       45 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerCageEditingTools"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["Flags"]
       54 GETTABLEKS                       R7 R7 K14 ["getFFlagAvatarPreviewerCageEditingTools"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K13 ["Flags"]
       63 GETTABLEKS                       R8 R8 K15 ["getFFlagAvatarPreviewerBoneNestedAttachmentFix"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K16 [PROTO_0]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R2
       69 DUPCLOSURE                       R9 K17 [PROTO_1]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 DUPCLOSURE                       R10 K18 [PROTO_10]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R6
       80 RETURN                           R10 1
