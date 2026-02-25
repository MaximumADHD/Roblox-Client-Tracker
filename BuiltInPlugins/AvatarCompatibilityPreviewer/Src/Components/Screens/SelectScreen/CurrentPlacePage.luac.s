PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETIMPORT                        R1 K2 [debug.profilebegin]
        4 LOADK                            R2 K3 ["Find avatars"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 0
        7 NAMECALL                         R1 R1 K4 ["GetDescendants"]
        9 CALL                             R1 1 3
       10 FORGPREP                         R1
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+14]
       15 DUPTABLE                         R8 K7 [{"Key", "Avatar"}]
       16 NAMECALL                         R9 R5 K8 ["GetDebugId"]
       18 CALL                             R9 1 1
       19 SETTABLEKS                       R9 R8 K5 ["Key"]
       21 SETTABLEKS                       R5 R8 K6 ["Avatar"]
       23 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       25 MOVE                             R7 R0
       26 GETIMPORT                        R6 K11 [table.insert]
       28 CALL                             R6 2 0
       29 FORGLOOP                         R1 2 ; [-19]
       31 GETIMPORT                        R1 K13 [debug.profileend]
       33 CALL                             R1 0 0
       34 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["([.%%^$()%[%]+*-?])"]
        1 LOADK                            R4 K1 ["%%%1"]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Avatar"]
        2 GETTABLEKS                       R1 R2 K1 ["Name"]
        4 GETUPVAL                         R3 0
        5 GETUPVAL                         R4 1
        6 CALL                             R3 1 -1
        7 NAMECALL                         R1 R1 K2 ["match"]
        9 CALL                             R1 -1 -1
       10 RETURN                           R1 -1

PROTO_3:
        0 LENGTH                           R2 R1
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+2]
        3 RETURN                           R0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K1 ["filter"]
        7 MOVE                             R3 R0
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R1
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ImportPage"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 NAMECALL                         R2 R2 K1 ["use"]
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["useMemo"]
       12 GETUPVAL                         R4 3
       13 CALL                             R3 1 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["useState"]
       17 LOADK                            R5 K4 [""]
       18 CALL                             R4 1 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K5 ["createElement"]
       22 GETUPVAL                         R7 4
       23 DUPTABLE                         R8 K10 [{"Title", "GoBack", "Search", "SetSearch"}]
       24 LOADK                            R11 K11 ["SelectScreen"]
       25 LOADK                            R12 K12 ["CurrentPlace"]
       26 NAMECALL                         R9 R2 K13 ["getText"]
       28 CALL                             R9 3 1
       29 SETTABLEKS                       R9 R8 K6 ["Title"]
       31 GETTABLEKS                       R9 R0 K7 ["GoBack"]
       33 SETTABLEKS                       R9 R8 K7 ["GoBack"]
       35 SETTABLEKS                       R4 R8 K8 ["Search"]
       37 SETTABLEKS                       R5 R8 K9 ["SetSearch"]
       39 DUPTABLE                         R9 K15 [{"Grid"}]
       40 GETUPVAL                         R11 2
       41 GETTABLEKS                       R10 R11 K5 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K20 [{"Cells", "CellComponent", "CellPadding", "CellSize"}]
       45 LENGTH                           R14 R4
       46 JUMPIFNOTEQKN                    R14 K21 [0] ; [+3]
       48 MOVE                             R13 R3
       49 JUMP                             ; [+8]
       50 GETUPVAL                         R14 6
       51 GETTABLEKS                       R13 R14 K22 ["filter"]
       53 MOVE                             R14 R3
       54 NEWCLOSURE                       R15 P0
       55 CAPTURE                          UPVAL U7
       56 CAPTURE                          VAL R4
       57 CALL                             R13 2 1
       58 SETTABLEKS                       R13 R12 K16 ["Cells"]
       60 GETUPVAL                         R13 8
       61 SETTABLEKS                       R13 R12 K17 ["CellComponent"]
       63 GETTABLEKS                       R13 R1 K23 ["GridPadding"]
       65 SETTABLEKS                       R13 R12 K18 ["CellPadding"]
       67 GETIMPORT                        R13 K26 [UDim2.fromOffset]
       69 GETTABLEKS                       R15 R1 K27 ["Avatar"]
       71 GETTABLEKS                       R14 R15 K28 ["IconSize"]
       73 GETTABLEKS                       R19 R1 K27 ["Avatar"]
       75 GETTABLEKS                       R18 R19 K28 ["IconSize"]
       77 GETTABLEKS                       R20 R1 K27 ["Avatar"]
       79 GETTABLEKS                       R19 R20 K29 ["NameFontSize"]
       81 ADD                              R17 R18 R19
       82 GETTABLEKS                       R19 R1 K27 ["Avatar"]
       84 GETTABLEKS                       R18 R19 K30 ["NameLines"]
       86 ADD                              R16 R17 R18
       87 GETTABLEKS                       R18 R1 K27 ["Avatar"]
       89 GETTABLEKS                       R17 R18 K31 ["Padding"]
       91 ADD                              R15 R16 R17
       92 CALL                             R13 2 1
       93 SETTABLEKS                       R13 R12 K19 ["CellSize"]
       95 CALL                             R10 2 1
       96 SETTABLEKS                       R10 R9 K14 ["Grid"]
       98 CALL                             R6 3 -1
       99 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R8 R1 K14 ["Src"]
       38 GETTABLEKS                       R7 R8 K15 ["Util"]
       40 GETTABLEKS                       R6 R7 K16 ["isAvatar"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R9 R1 K14 ["Src"]
       47 GETTABLEKS                       R8 R9 K17 ["Resources"]
       49 GETTABLEKS                       R7 R8 K18 ["Theme"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETIMPORT                        R10 K5 [script]
       56 GETTABLEKS                       R9 R10 K19 ["Parent"]
       58 GETTABLEKS                       R8 R9 K20 ["AvatarCell"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETIMPORT                        R11 K5 [script]
       65 GETTABLEKS                       R10 R11 K19 ["Parent"]
       67 GETTABLEKS                       R9 R10 K21 ["ImportPage"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R3 K22 ["UI"]
       72 GETTABLEKS                       R10 R9 K23 ["Grid"]
       74 GETTABLEKS                       R12 R3 K24 ["ContextServices"]
       76 GETTABLEKS                       R11 R12 K25 ["Localization"]
       78 GETTABLEKS                       R13 R3 K24 ["ContextServices"]
       80 GETTABLEKS                       R12 R13 K26 ["Stylizer"]
       82 DUPCLOSURE                       R13 K27 [PROTO_0]
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R5
       85 DUPCLOSURE                       R14 K28 [PROTO_1]
       86 DUPCLOSURE                       R15 K29 [PROTO_3]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R14
       89 DUPCLOSURE                       R16 K30 [PROTO_4]
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R7
       99 RETURN                           R16 1
