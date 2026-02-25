PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["REFERENCE_VALUE_NAME"]
        3 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        5 CALL                             R1 2 1
        6 JUMPIFEQKNIL                     R1 ; [+6]
        8 LOADK                            R4 K2 ["ObjectValue"]
        9 NAMECALL                         R2 R1 K3 ["IsA"]
       11 CALL                             R2 2 1
       12 JUMPIF                           R2 ; [+2]
       13 LOADNIL                          R2
       14 RETURN                           R2 1
       15 LOADK                            R5 K2 ["ObjectValue"]
       16 NAMECALL                         R3 R1 K3 ["IsA"]
       18 CALL                             R3 2 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K4 ["LUAU_ANALYZE_ERROR"]
       22 FASTCALL2                        ASSERT R3 R4 ; [+3]
       24 GETIMPORT                        R2 K6 [assert]
       26 CALL                             R2 2 0
       27 GETTABLEKS                       R2 R1 K7 ["Value"]
       29 JUMPIFNOT                        R2 ; [+4]
       30 GETTABLEKS                       R3 R1 K7 ["Value"]
       32 GETTABLEKS                       R2 R3 K8 ["Name"]
       34 RETURN                           R2 1

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
       29 GETTABLEKS                       R7 R0 K0 ["assetType"]
       31 GETTABLEKS                       R6 R7 K4 ["Name"]
       33 NAMECALL                         R3 R3 K5 ["getText"]
       35 CALL                             R3 3 1
       36 GETUPVAL                         R4 1
       37 LOADK                            R6 K3 ["AssetType"]
       38 GETTABLEKS                       R8 R1 K0 ["assetType"]
       40 GETTABLEKS                       R7 R8 K4 ["Name"]
       42 NAMECALL                         R4 R4 K5 ["getText"]
       44 CALL                             R4 3 1
       45 JUMPIFLT                         R3 R4 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["WorldModel"]
        5 NAMECALL                         R1 R1 K1 ["Clone"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["List"]
       13 GETTABLEKS                       R4 R5 K3 ["join"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["LIMBS"]
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
       37 GETUPVAL                         R5 4
       38 GETTABLEKS                       R2 R5 K13 ["equippedItems"]
       40 LOADNIL                          R3
       41 LOADNIL                          R4
       42 FORGPREP                         R2
       43 GETTABLEKS                       R8 R6 K14 ["item"]
       45 GETTABLEKS                       R7 R8 K15 ["source"]
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R8 R9 K16 ["SOURCE_INSTANCE"]
       50 JUMPIFNOTEQ                      R7 R8 ; [+161]
       52 GETTABLEKS                       R10 R6 K14 ["item"]
       54 GETTABLEKS                       R9 R10 K15 ["source"]
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R10 R11 K16 ["SOURCE_INSTANCE"]
       59 JUMPIFEQ                         R9 R10 ; [+2]
       61 LOADB                            R8 0 +1
       62 LOADB                            R8 1
       63 GETUPVAL                         R10 3
       64 GETTABLEKS                       R9 R10 K17 ["LUAU_ANALYZE_ERROR"]
       66 FASTCALL2                        ASSERT R8 R9 ; [+3]
       68 GETIMPORT                        R7 K19 [assert]
       70 CALL                             R7 2 0
       71 GETUPVAL                         R7 5
       72 CALL                             R7 0 1
       73 JUMPIFNOT                        R7 ; [+26]
       74 GETTABLEKS                       R8 R6 K20 ["palette"]
       76 GETTABLEKS                       R7 R8 K21 ["Key"]
       78 JUMPIFNOTEQKS                    R7 K22 ["Shoes"] ; [+21]
       80 GETUPVAL                         R7 6
       81 GETTABLEKS                       R9 R6 K14 ["item"]
       83 GETTABLEKS                       R8 R9 K6 ["instance"]
       85 CALL                             R7 1 1
       86 JUMPIFEQKNIL                     R7 ; [+125]
       88 DUPTABLE                         R10 K8 [{"instance", "assetType"}]
       89 SETTABLEKS                       R7 R10 K6 ["instance"]
       91 LOADK                            R11 K22 ["Shoes"]
       92 SETTABLEKS                       R11 R10 K7 ["assetType"]
       94 FASTCALL2                        TABLE_INSERT R0 R10 ; [+4]
       96 MOVE                             R9 R0
       97 GETIMPORT                        R8 K12 [table.insert]
       99 CALL                             R8 2 0
      100 GETTABLEKS                       R8 R6 K20 ["palette"]
      102 GETTABLEKS                       R7 R8 K23 ["PublishAssetType"]
      104 JUMPIFEQKNIL                     R7 ; [+107]
      106 GETTABLEKS                       R10 R6 K20 ["palette"]
      108 GETTABLEKS                       R9 R10 K23 ["PublishAssetType"]
      110 JUMPIFNOTEQKNIL                  R9 ; [+2]
      112 LOADB                            R8 0 +1
      113 LOADB                            R8 1
      114 GETUPVAL                         R10 3
      115 GETTABLEKS                       R9 R10 K17 ["LUAU_ANALYZE_ERROR"]
      117 FASTCALL2                        ASSERT R8 R9 ; [+3]
      119 GETIMPORT                        R7 K19 [assert]
      121 CALL                             R7 2 0
      122 GETTABLEKS                       R8 R6 K14 ["item"]
      124 GETTABLEKS                       R7 R8 K6 ["instance"]
      126 NAMECALL                         R7 R7 K1 ["Clone"]
      128 CALL                             R7 1 1
      129 GETUPVAL                         R8 1
      130 MOVE                             R9 R7
      131 NEWTABLE                         R10 0 1
      133 LOADK                            R11 K24 ["Handle"]
      134 SETLIST                          R10 R11 1 [1]
      136 CALL                             R8 2 0
      137 GETUPVAL                         R12 3
      138 GETTABLEKS                       R11 R12 K25 ["REFERENCE_VALUE_NAME"]
      140 NAMECALL                         R9 R7 K26 ["FindFirstChild"]
      142 CALL                             R9 2 1
      143 JUMPIFEQKNIL                     R9 ; [+6]
      145 LOADK                            R12 K27 ["ObjectValue"]
      146 NAMECALL                         R10 R9 K28 ["IsA"]
      148 CALL                             R10 2 1
      149 JUMPIF                           R10 ; [+2]
      150 LOADNIL                          R8
      151 JUMP                             ; [+19]
      152 LOADK                            R13 K27 ["ObjectValue"]
      153 NAMECALL                         R11 R9 K28 ["IsA"]
      155 CALL                             R11 2 1
      156 GETUPVAL                         R13 3
      157 GETTABLEKS                       R12 R13 K17 ["LUAU_ANALYZE_ERROR"]
      159 FASTCALL2                        ASSERT R11 R12 ; [+3]
      161 GETIMPORT                        R10 K19 [assert]
      163 CALL                             R10 2 0
      164 GETTABLEKS                       R8 R9 K29 ["Value"]
      166 JUMPIFNOT                        R8 ; [+4]
      167 GETTABLEKS                       R10 R9 K29 ["Value"]
      169 GETTABLEKS                       R8 R10 K30 ["Name"]
      171 JUMPIFEQKNIL                     R8 ; [+3]
      173 SETTABLEKS                       R8 R7 K30 ["Name"]
      175 LOADK                            R11 K31 ["ValueBase"]
      176 LOADB                            R12 1
      177 NAMECALL                         R9 R7 K32 ["FindFirstChildWhichIsA"]
      179 CALL                             R9 3 1
      180 JUMPIFEQKNIL                     R9 ; [+5]
      182 NAMECALL                         R10 R9 K33 ["Destroy"]
      184 CALL                             R10 1 0
      185 JUMPBACK                         ; [-11]
      186 NAMECALL                         R9 R7 K34 ["GetAttributes"]
      188 CALL                             R9 1 3
      189 FORGPREP                         R9
      190 MOVE                             R16 R12
      191 LOADNIL                          R17
      192 NAMECALL                         R14 R7 K35 ["SetAttribute"]
      194 CALL                             R14 3 0
      195 FORGLOOP                         R9 1 ; [-6]
      197 DUPTABLE                         R11 K8 [{"instance", "assetType"}]
      198 SETTABLEKS                       R7 R11 K6 ["instance"]
      200 GETTABLEKS                       R13 R6 K20 ["palette"]
      202 GETTABLEKS                       R12 R13 K23 ["PublishAssetType"]
      204 SETTABLEKS                       R12 R11 K7 ["assetType"]
      206 FASTCALL2                        TABLE_INSERT R0 R11 ; [+4]
      208 MOVE                             R10 R0
      209 GETIMPORT                        R9 K12 [table.insert]
      211 CALL                             R9 2 0
      212 FORGLOOP                         R2 2 ; [-170]
      214 GETIMPORT                        R2 K37 [table.sort]
      216 MOVE                             R3 R0
      217 NEWCLOSURE                       R4 P0
      218 CAPTURE                          UPVAL U5
      219 CAPTURE                          UPVAL U7
      220 CALL                             R2 2 0
      221 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 CALL                             R2 1 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["useMemo"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Util"]
       43 GETTABLEKS                       R6 R7 K13 ["EquipmentStateContext"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R10 R0 K10 ["Src"]
       50 GETTABLEKS                       R9 R10 K14 ["Components"]
       52 GETTABLEKS                       R8 R9 K15 ["SubmitDialog"]
       54 GETTABLEKS                       R7 R8 K16 ["createModelForShoes"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R10 K11 ["Util"]
       63 GETTABLEKS                       R8 R9 K17 ["filterDescendants"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K10 ["Src"]
       70 GETTABLEKS                       R10 R11 K18 ["Flags"]
       72 GETTABLEKS                       R9 R10 K19 ["getFFlagAvatarPreviewerSortClothingUI"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R11 R0 K10 ["Src"]
       79 GETTABLEKS                       R10 R11 K20 ["Types"]
       81 CALL                             R9 1 1
       82 GETTABLEKS                       R11 R2 K21 ["ContextServices"]
       84 GETTABLEKS                       R10 R11 K22 ["Localization"]
       86 DUPCLOSURE                       R11 K23 [PROTO_0]
       87 CAPTURE                          VAL R4
       88 DUPCLOSURE                       R12 K24 [PROTO_3]
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R6
       97 RETURN                           R12 1
