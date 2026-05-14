PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+35]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["REFERENCE_VALUE_NAME"]
        6 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKNIL                     R1 ; [+6]
       11 LOADK                            R4 K2 ["ObjectValue"]
       12 NAMECALL                         R2 R1 K3 ["IsA"]
       14 CALL                             R2 2 1
       15 JUMPIF                           R2 ; [+2]
       16 LOADNIL                          R2
       17 RETURN                           R2 1
       18 LOADK                            R5 K2 ["ObjectValue"]
       19 NAMECALL                         R3 R1 K3 ["IsA"]
       21 CALL                             R3 2 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K4 ["LUAU_ANALYZE_ERROR"]
       25 FASTCALL2                        ASSERT R3 R4 ; [+3]
       27 GETIMPORT                        R2 K6 [assert]
       29 CALL                             R2 2 0
       30 GETTABLEKS                       R2 R1 K7 ["Value"]
       32 JUMPIFNOT                        R2 ; [+4]
       33 GETTABLEKS                       R2 R1 K7 ["Value"]
       35 GETTABLEKS                       R2 R2 K8 ["Name"]
       37 RETURN                           R2 1
       38 GETUPVAL                         R3 1
       39 GETTABLEKS                       R3 R3 K9 ["DISPLAY_NAME"]
       41 NAMECALL                         R1 R0 K10 ["GetAttribute"]
       43 CALL                             R1 2 1
       44 FASTCALL1                        TYPE R1 ; [+3]
       45 MOVE                             R3 R1
       46 GETIMPORT                        R2 K12 [type]
       48 CALL                             R2 1 1
       49 JUMPIFNOTEQKS                    R2 K13 ["string"] ; [+10]
       51 JUMPIFEQKS                       R1 K14 [""] ; [+8]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K15 ["isGuid"]
       56 MOVE                             R3 R1
       57 CALL                             R2 1 1
       58 JUMPIF                           R2 ; [+1]
       59 RETURN                           R1 1
       60 GETUPVAL                         R4 1
       61 GETTABLEKS                       R4 R4 K0 ["REFERENCE_VALUE_NAME"]
       63 NAMECALL                         R2 R0 K1 ["FindFirstChild"]
       65 CALL                             R2 2 1
       66 JUMPIFEQKNIL                     R2 ; [+23]
       68 LOADK                            R5 K2 ["ObjectValue"]
       69 NAMECALL                         R3 R2 K3 ["IsA"]
       71 CALL                             R3 2 1
       72 JUMPIFNOT                        R3 ; [+17]
       73 GETTABLEKS                       R3 R2 K7 ["Value"]
       75 JUMPIFEQKNIL                     R3 ; [+14]
       77 GETTABLEKS                       R3 R2 K7 ["Value"]
       79 GETTABLEKS                       R3 R3 K8 ["Name"]
       81 JUMPIFEQKS                       R3 K14 [""] ; [+8]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R4 R4 K15 ["isGuid"]
       86 MOVE                             R5 R3
       87 CALL                             R4 1 1
       88 JUMPIF                           R4 ; [+1]
       89 RETURN                           R3 1
       90 LOADNIL                          R3
       91 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["assetType"]
        2 JUMPIFNOTEQKS                    R2 K1 ["Body"] ; [+3]
        4 LOADB                            R2 1
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R1 K0 ["assetType"]
        8 JUMPIFNOTEQKS                    R2 K1 ["Body"] ; [+3]
       10 LOADB                            R2 0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+12]
       15 GETTABLEKS                       R2 R0 K0 ["assetType"]
       17 JUMPIFNOTEQKS                    R2 K2 ["Shoes"] ; [+3]
       19 LOADB                            R2 1
       20 RETURN                           R2 1
       21 GETTABLEKS                       R2 R1 K0 ["assetType"]
       23 JUMPIFNOTEQKS                    R2 K2 ["Shoes"] ; [+3]
       25 LOADB                            R2 0
       26 RETURN                           R2 1
       27 GETUPVAL                         R3 1
       28 LOADK                            R5 K3 ["AssetType"]
       29 GETTABLEKS                       R6 R0 K0 ["assetType"]
       31 GETTABLEKS                       R6 R6 K4 ["Name"]
       33 NAMECALL                         R3 R3 K5 ["getText"]
       35 CALL                             R3 3 1
       36 GETUPVAL                         R4 1
       37 LOADK                            R6 K3 ["AssetType"]
       38 GETTABLEKS                       R7 R1 K0 ["assetType"]
       40 GETTABLEKS                       R7 R7 K4 ["Name"]
       42 NAMECALL                         R4 R4 K5 ["getText"]
       44 CALL                             R4 3 1
       45 JUMPIFLT                         R3 R4 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["WorldModel"]
        5 NAMECALL                         R1 R1 K1 ["Clone"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K2 ["List"]
       13 GETTABLEKS                       R4 R4 K3 ["join"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K4 ["LIMBS"]
       18 NEWTABLE                         R6 0 1
       20 LOADK                            R7 K5 ["HumanoidRootPart"]
       21 SETLIST                          R6 R7 1 [1]
       23 CALL                             R4 2 -1
       24 CALL                             R2 -1 0
       25 DUPTABLE                         R4 K8 [{"instance", "assetType"}]
       26 SETTABLEKS                       R1 R4 K6 ["instance"]
       28 LOADK                            R5 K9 ["Body"]
       29 SETTABLEKS                       R5 R4 K7 ["assetType"]
       31 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       33 MOVE                             R3 R0
       34 GETIMPORT                        R2 K12 [table.insert]
       36 CALL                             R2 2 0
       37 GETUPVAL                         R2 4
       38 GETTABLEKS                       R2 R2 K13 ["equippedItems"]
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETTABLEKS                       R7 R6 K14 ["item"]
       45 GETTABLEKS                       R7 R7 K15 ["source"]
       47 GETUPVAL                         R8 3
       48 GETTABLEKS                       R8 R8 K16 ["SOURCE_INSTANCE"]
       50 JUMPIFNOTEQ                      R7 R8 ; [+130]
       52 GETTABLEKS                       R9 R6 K14 ["item"]
       54 GETTABLEKS                       R9 R9 K15 ["source"]
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K16 ["SOURCE_INSTANCE"]
       59 JUMPIFEQ                         R9 R10 ; [+2]
       61 LOADB                            R8 0 +1
       62 LOADB                            R8 1
       63 GETUPVAL                         R9 3
       64 GETTABLEKS                       R9 R9 K17 ["LUAU_ANALYZE_ERROR"]
       66 FASTCALL2                        ASSERT R8 R9 ; [+3]
       68 GETIMPORT                        R7 K19 [assert]
       70 CALL                             R7 2 0
       71 GETUPVAL                         R7 5
       72 CALL                             R7 0 1
       73 JUMPIFNOT                        R7 ; [+26]
       74 GETTABLEKS                       R7 R6 K20 ["palette"]
       76 GETTABLEKS                       R7 R7 K21 ["Key"]
       78 JUMPIFNOTEQKS                    R7 K22 ["Shoes"] ; [+21]
       80 GETUPVAL                         R7 6
       81 GETTABLEKS                       R8 R6 K14 ["item"]
       83 GETTABLEKS                       R8 R8 K6 ["instance"]
       85 CALL                             R7 1 1
       86 JUMPIFEQKNIL                     R7 ; [+94]
       88 DUPTABLE                         R10 K8 [{"instance", "assetType"}]
       89 SETTABLEKS                       R7 R10 K6 ["instance"]
       91 LOADK                            R11 K22 ["Shoes"]
       92 SETTABLEKS                       R11 R10 K7 ["assetType"]
       94 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       96 MOVE                             R9 R0
       97 GETIMPORT                        R8 K12 [table.insert]
       99 CALL                             R8 2 0
      100 GETTABLEKS                       R7 R6 K20 ["palette"]
      102 GETTABLEKS                       R7 R7 K23 ["PublishAssetType"]
      104 JUMPIFEQKNIL                     R7 ; [+76]
      106 GETTABLEKS                       R9 R6 K20 ["palette"]
      108 GETTABLEKS                       R9 R9 K23 ["PublishAssetType"]
      110 JUMPIFNOTEQKNIL                  R9 ; [+2]
      112 LOADB                            R8 0 +1
      113 LOADB                            R8 1
      114 GETUPVAL                         R9 3
      115 GETTABLEKS                       R9 R9 K17 ["LUAU_ANALYZE_ERROR"]
      117 FASTCALL2                        ASSERT R8 R9 ; [+3]
      119 GETIMPORT                        R7 K19 [assert]
      121 CALL                             R7 2 0
      122 GETTABLEKS                       R7 R6 K14 ["item"]
      124 GETTABLEKS                       R7 R7 K6 ["instance"]
      126 NAMECALL                         R7 R7 K1 ["Clone"]
      128 CALL                             R7 1 1
      129 GETUPVAL                         R8 1
      130 MOVE                             R9 R7
      131 NEWTABLE                         R10 0 1
      133 LOADK                            R11 K24 ["Handle"]
      134 SETLIST                          R10 R11 1 [1]
      136 CALL                             R8 2 0
      137 GETUPVAL                         R8 7
      138 MOVE                             R9 R7
      139 CALL                             R8 1 1
      140 JUMPIFEQKNIL                     R8 ; [+3]
      142 SETTABLEKS                       R8 R7 K25 ["Name"]
      144 LOADK                            R11 K26 ["ValueBase"]
      145 LOADB                            R12 1
      146 NAMECALL                         R9 R7 K27 ["FindFirstChildWhichIsA"]
      148 CALL                             R9 3 1
      149 JUMPIFEQKNIL                     R9 ; [+5]
      151 NAMECALL                         R10 R9 K28 ["Destroy"]
      153 CALL                             R10 1 0
      154 JUMPBACK                         ; [-11]
      155 NAMECALL                         R9 R7 K29 ["GetAttributes"]
      157 CALL                             R9 1 3
      158 FORGPREP                         R9
      159 MOVE                             R16 R12
      160 LOADNIL                          R17
      161 NAMECALL                         R14 R7 K30 ["SetAttribute"]
      163 CALL                             R14 3 0
      164 FORGLOOP                         R9 1 ; [-6]
      166 DUPTABLE                         R11 K8 [{"instance", "assetType"}]
      167 SETTABLEKS                       R7 R11 K6 ["instance"]
      169 GETTABLEKS                       R12 R6 K20 ["palette"]
      171 GETTABLEKS                       R12 R12 K23 ["PublishAssetType"]
      173 SETTABLEKS                       R12 R11 K7 ["assetType"]
      175 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
      177 MOVE                             R10 R0
      178 GETIMPORT                        R9 K12 [table.insert]
      180 CALL                             R9 2 0
      181 FORGLOOP                         R2 2 ; [-139]
      183 GETIMPORT                        R2 K32 [table.sort]
      185 MOVE                             R3 R0
      186 NEWCLOSURE                       R4 P0
      187 CAPTURE                          UPVAL U5
      188 CAPTURE                          UPVAL U8
      189 CALL                             R2 2 0
      190 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["useMemo"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 CAPTURE                          VAL R2
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          UPVAL U7
       20 CAPTURE                          UPVAL U8
       21 CAPTURE                          VAL R1
       22 NEWTABLE                         R5 0 1
       24 GETTABLEKS                       R6 R2 K3 ["equippedItems"]
       26 SETLIST                          R5 R6 1 [1]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
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
       41 GETTABLEKS                       R6 R6 K11 ["Util"]
       43 GETTABLEKS                       R6 R6 K13 ["EquipmentStateContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K11 ["Util"]
       52 GETTABLEKS                       R7 R7 K14 ["StringUtil"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K15 ["Components"]
       61 GETTABLEKS                       R8 R8 K16 ["SubmitDialog"]
       63 GETTABLEKS                       R8 R8 K17 ["createModelForShoes"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K10 ["Src"]
       70 GETTABLEKS                       R9 R9 K11 ["Util"]
       72 GETTABLEKS                       R9 R9 K18 ["filterDescendants"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K10 ["Src"]
       79 GETTABLEKS                       R10 R10 K19 ["Flags"]
       81 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarPreviewerSortClothingUI"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K19 ["Flags"]
       90 GETTABLEKS                       R11 R11 K21 ["getFFlagAvatarPreviewerLookComposer"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K10 ["Src"]
       97 GETTABLEKS                       R12 R12 K22 ["Types"]
       99 CALL                             R11 1 1
      100 GETTABLEKS                       R12 R2 K23 ["ContextServices"]
      102 GETTABLEKS                       R12 R12 K24 ["Localization"]
      104 DUPCLOSURE                       R13 K25 [PROTO_0]
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R6
      108 DUPCLOSURE                       R14 K26 [PROTO_3]
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R1
      114 CAPTURE                          VAL R4
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R13
      118 RETURN                           R14 1
