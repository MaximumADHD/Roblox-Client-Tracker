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
       12 GETTABLEKS                       R2 R0 K0 ["assetType"]
       14 JUMPIFNOTEQKS                    R2 K2 ["Shoes"] ; [+3]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 GETTABLEKS                       R2 R1 K0 ["assetType"]
       20 JUMPIFNOTEQKS                    R2 K2 ["Shoes"] ; [+3]
       22 LOADB                            R2 0
       23 RETURN                           R2 1
       24 GETUPVAL                         R3 0
       25 LOADK                            R5 K3 ["AssetType"]
       26 GETTABLEKS                       R6 R0 K0 ["assetType"]
       28 GETTABLEKS                       R6 R6 K4 ["Name"]
       30 NAMECALL                         R3 R3 K5 ["getText"]
       32 CALL                             R3 3 1
       33 GETUPVAL                         R4 0
       34 LOADK                            R6 K3 ["AssetType"]
       35 GETTABLEKS                       R7 R1 K0 ["assetType"]
       37 GETTABLEKS                       R7 R7 K4 ["Name"]
       39 NAMECALL                         R4 R4 K5 ["getText"]
       41 CALL                             R4 3 1
       42 JUMPIFLT                         R3 R4 ; [+2]
       44 LOADB                            R2 0 +1
       45 LOADB                            R2 1
       46 RETURN                           R2 1

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
       25 DUPTABLE                         R4 K9 [{["instance"], ["assetType"] = "Body"}]
       26 SETTABLEKS                       R1 R4 K6 ["instance"]
       28 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       30 MOVE                             R3 R0
       31 GETIMPORT                        R2 K12 [table.insert]
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K13 ["equippedItems"]
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 GETTABLEKS                       R7 R6 K14 ["item"]
       42 GETTABLEKS                       R7 R7 K15 ["source"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R8 R8 K16 ["SOURCE_INSTANCE"]
       47 JUMPIFNOTEQ                      R7 R8 ; [+124]
       49 GETTABLEKS                       R9 R6 K14 ["item"]
       51 GETTABLEKS                       R9 R9 K15 ["source"]
       53 GETUPVAL                         R10 3
       54 GETTABLEKS                       R10 R10 K16 ["SOURCE_INSTANCE"]
       56 JUMPIFEQ                         R9 R10 ; [+2]
       58 LOADB                            R8 0 +1
       59 LOADB                            R8 1
       60 GETUPVAL                         R9 3
       61 GETTABLEKS                       R9 R9 K17 ["LUAU_ANALYZE_ERROR"]
       63 FASTCALL2                        ASSERT R8 R9 ; [+3]
       65 GETIMPORT                        R7 K19 [assert]
       67 CALL                             R7 2 0
       68 GETTABLEKS                       R7 R6 K20 ["palette"]
       70 GETTABLEKS                       R7 R7 K21 ["Key"]
       72 JUMPIFNOTEQKS                    R7 K22 ["Shoes"] ; [+18]
       74 GETUPVAL                         R7 5
       75 GETTABLEKS                       R8 R6 K14 ["item"]
       77 GETTABLEKS                       R8 R8 K6 ["instance"]
       79 CALL                             R7 1 1
       80 JUMPIFEQKNIL                     R7 ; [+91]
       82 DUPTABLE                         R10 K23 [{["instance"], ["assetType"] = "Shoes"}]
       83 SETTABLEKS                       R7 R10 K6 ["instance"]
       85 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       87 MOVE                             R9 R0
       88 GETIMPORT                        R8 K12 [table.insert]
       90 CALL                             R8 2 0
       91 GETTABLEKS                       R7 R6 K20 ["palette"]
       93 GETTABLEKS                       R7 R7 K24 ["PublishAssetType"]
       95 JUMPIFEQKNIL                     R7 ; [+76]
       97 GETTABLEKS                       R9 R6 K20 ["palette"]
       99 GETTABLEKS                       R9 R9 K24 ["PublishAssetType"]
      101 JUMPIFNOTEQKNIL                  R9 ; [+2]
      103 LOADB                            R8 0 +1
      104 LOADB                            R8 1
      105 GETUPVAL                         R9 3
      106 GETTABLEKS                       R9 R9 K17 ["LUAU_ANALYZE_ERROR"]
      108 FASTCALL2                        ASSERT R8 R9 ; [+3]
      110 GETIMPORT                        R7 K19 [assert]
      112 CALL                             R7 2 0
      113 GETTABLEKS                       R7 R6 K14 ["item"]
      115 GETTABLEKS                       R7 R7 K6 ["instance"]
      117 NAMECALL                         R7 R7 K1 ["Clone"]
      119 CALL                             R7 1 1
      120 GETUPVAL                         R8 1
      121 MOVE                             R9 R7
      122 NEWTABLE                         R10 0 1
      124 LOADK                            R11 K25 ["Handle"]
      125 SETLIST                          R10 R11 1 [1]
      127 CALL                             R8 2 0
      128 GETUPVAL                         R8 6
      129 MOVE                             R9 R7
      130 CALL                             R8 1 1
      131 JUMPIFEQKNIL                     R8 ; [+3]
      133 SETTABLEKS                       R8 R7 K26 ["Name"]
      135 LOADK                            R11 K27 ["ValueBase"]
      136 LOADB                            R12 1
      137 NAMECALL                         R9 R7 K28 ["FindFirstChildWhichIsA"]
      139 CALL                             R9 3 1
      140 JUMPIFEQKNIL                     R9 ; [+5]
      142 NAMECALL                         R10 R9 K29 ["Destroy"]
      144 CALL                             R10 1 0
      145 JUMPBACK                         ; [-11]
      146 NAMECALL                         R9 R7 K30 ["GetAttributes"]
      148 CALL                             R9 1 3
      149 FORGPREP                         R9
      150 MOVE                             R16 R12
      151 LOADNIL                          R17
      152 NAMECALL                         R14 R7 K31 ["SetAttribute"]
      154 CALL                             R14 3 0
      155 FORGLOOP                         R9 1 ; [-6]
      157 DUPTABLE                         R11 K32 [{"instance", "assetType"}]
      158 SETTABLEKS                       R7 R11 K6 ["instance"]
      160 GETTABLEKS                       R12 R6 K20 ["palette"]
      162 GETTABLEKS                       R12 R12 K24 ["PublishAssetType"]
      164 SETTABLEKS                       R12 R11 K7 ["assetType"]
      166 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
      168 MOVE                             R10 R0
      169 GETIMPORT                        R9 K12 [table.insert]
      171 CALL                             R9 2 0
      172 FORGLOOP                         R2 2 ; [-133]
      174 GETIMPORT                        R2 K34 [table.sort]
      176 MOVE                             R3 R0
      177 NEWCLOSURE                       R4 P0
      178 CAPTURE                          UPVAL U7
      179 CALL                             R2 2 0
      180 RETURN                           R0 1

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
       20 CAPTURE                          VAL R1
       21 NEWTABLE                         R5 0 1
       23 GETTABLEKS                       R6 R2 K3 ["equippedItems"]
       25 SETLIST                          R5 R6 1 [1]
       27 CALL                             R3 2 -1
       28 RETURN                           R3 -1

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
       81 GETTABLEKS                       R10 R10 K20 ["getFFlagAvatarPreviewerLookComposer"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K10 ["Src"]
       88 GETTABLEKS                       R11 R11 K21 ["Types"]
       90 CALL                             R10 1 1
       91 GETTABLEKS                       R11 R2 K22 ["ContextServices"]
       93 GETTABLEKS                       R11 R11 K23 ["Localization"]
       95 DUPCLOSURE                       R12 K24 [PROTO_0]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R6
       99 DUPCLOSURE                       R13 K25 [PROTO_3]
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R12
      108 RETURN                           R13 1
