PROTO_0:
        0 LOADK                            R3 K0 ["RBX_Palette"]
        1 NAMECALL                         R1 R0 K1 ["GetAttribute"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+11]
        5 GETIMPORT                        R2 K3 [warn]
        7 LOADK                            R4 K4 ["%* did not have a palette set. This is a bug in the plugin, please report it."]
        8 MOVE                             R6 R0
        9 NAMECALL                         R4 R4 K5 ["format"]
       11 CALL                             R4 2 1
       12 MOVE                             R3 R4
       13 CALL                             R2 1 0
       14 LOADNIL                          R2
       15 RETURN                           R2 1
       16 GETUPVAL                         R2 0
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 JUMPIFNOTEQKNIL                  R2 ; [+13]
       21 GETIMPORT                        R3 K3 [warn]
       23 LOADK                            R5 K6 ["%* has an invalid palette \"%*\". This is a bug in the plugin, please report it."]
       24 MOVE                             R7 R0
       25 MOVE                             R8 R1
       26 NAMECALL                         R5 R5 K5 ["format"]
       28 CALL                             R5 3 1
       29 MOVE                             R4 R5
       30 CALL                             R3 1 0
       31 LOADNIL                          R3
       32 RETURN                           R3 1
       33 JUMPIFNOTEQKNIL                  R2 ; [+2]
       35 LOADB                            R4 0 +1
       36 LOADB                            R4 1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R5 R5 K7 ["LUAU_ANALYZE_ERROR"]
       40 FASTCALL2                        ASSERT R4 R5 ; [+3]
       42 GETIMPORT                        R3 K9 [assert]
       44 CALL                             R3 2 0
       45 DUPTABLE                         R3 K12 [{"palette", "item"}]
       46 SETTABLEKS                       R2 R3 K10 ["palette"]
       48 DUPTABLE                         R4 K15 [{"source", "instance"}]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K16 ["SOURCE_INSTANCE"]
       52 SETTABLEKS                       R5 R4 K13 ["source"]
       54 SETTABLEKS                       R0 R4 K14 ["instance"]
       56 SETTABLEKS                       R4 R3 K11 ["item"]
       58 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOTEQKNIL                  R2 ; [+4]
        5 NAMECALL                         R3 R1 K0 ["Destroy"]
        7 CALL                             R3 1 0
        8 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOTEQKNIL                  R3 ; [+6]
        3 GETIMPORT                        R3 K1 [warn]
        5 LOADK                            R4 K2 ["catalog folder is nil when trying to add new items"]
        6 CALL                             R3 1 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R3 0
        9 NAMECALL                         R3 R3 K3 ["GetChildren"]
       11 CALL                             R3 1 3
       12 FORGPREP                         R3
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R10 R10 K4 ["REFERENCE_VALUE_NAME"]
       16 NAMECALL                         R8 R7 K5 ["FindFirstChild"]
       18 CALL                             R8 2 1
       19 JUMPIFEQKNIL                     R8 ; [+51]
       21 LOADK                            R11 K6 ["ObjectValue"]
       22 NAMECALL                         R9 R8 K7 ["IsA"]
       24 CALL                             R9 2 1
       25 JUMPIFNOT                        R9 ; [+45]
       26 LOADK                            R12 K6 ["ObjectValue"]
       27 NAMECALL                         R10 R8 K7 ["IsA"]
       29 CALL                             R10 2 1
       30 GETUPVAL                         R11 1
       31 GETTABLEKS                       R11 R11 K8 ["LUAU_ANALYZE_ERROR"]
       33 FASTCALL2                        ASSERT R10 R11 ; [+3]
       35 GETIMPORT                        R9 K10 [assert]
       37 CALL                             R9 2 0
       38 GETTABLEKS                       R9 R8 K11 ["Value"]
       40 JUMPIFNOTEQ                      R9 R2 ; [+30]
       42 LOADK                            R11 K12 ["RBX_Palette"]
       43 NAMECALL                         R9 R7 K13 ["GetAttribute"]
       45 CALL                             R9 2 1
       46 GETTABLEKS                       R10 R1 K14 ["Key"]
       48 JUMPIFNOTEQ                      R9 R10 ; [+22]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K15 ["removeEquippedItem"]
       53 DUPTABLE                         R10 K18 [{"palette", "item"}]
       54 SETTABLEKS                       R1 R10 K16 ["palette"]
       56 DUPTABLE                         R11 K21 [{"source", "instance"}]
       57 GETUPVAL                         R12 1
       58 GETTABLEKS                       R12 R12 K22 ["SOURCE_INSTANCE"]
       60 SETTABLEKS                       R12 R11 K19 ["source"]
       62 SETTABLEKS                       R7 R11 K20 ["instance"]
       64 SETTABLEKS                       R11 R10 K17 ["item"]
       66 CALL                             R9 1 0
       67 NAMECALL                         R9 R7 K23 ["Destroy"]
       69 CALL                             R9 1 0
       70 JUMP                             ; [+2]
       71 FORGLOOP                         R3 2 ; [-59]
       73 GETIMPORT                        R3 K26 [Instance.new]
       75 LOADK                            R4 K6 ["ObjectValue"]
       76 CALL                             R3 1 1
       77 GETUPVAL                         R4 1
       78 GETTABLEKS                       R4 R4 K4 ["REFERENCE_VALUE_NAME"]
       80 SETTABLEKS                       R4 R3 K27 ["Name"]
       82 SETTABLEKS                       R2 R3 K11 ["Value"]
       84 SETTABLEKS                       R0 R3 K28 ["Parent"]
       86 GETUPVAL                         R4 3
       87 CALL                             R4 0 1
       88 JUMPIFNOT                        R4 ; [+8]
       89 GETUPVAL                         R6 1
       90 GETTABLEKS                       R6 R6 K29 ["DISPLAY_NAME"]
       92 GETTABLEKS                       R7 R2 K27 ["Name"]
       94 NAMECALL                         R4 R0 K30 ["SetAttribute"]
       96 CALL                             R4 3 0
       97 LOADK                            R6 K12 ["RBX_Palette"]
       98 GETTABLEKS                       R7 R1 K14 ["Key"]
      100 NAMECALL                         R4 R0 K30 ["SetAttribute"]
      102 CALL                             R4 3 0
      103 GETUPVAL                         R4 4
      104 NAMECALL                         R4 R4 K31 ["GenerateGUID"]
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R4 R0 K27 ["Name"]
      109 GETUPVAL                         R4 0
      110 SETTABLEKS                       R4 R0 K28 ["Parent"]
      112 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["removeEquippedItem"]
        3 DUPTABLE                         R3 K3 [{"palette", "item"}]
        4 SETTABLEKS                       R0 R3 K1 ["palette"]
        6 DUPTABLE                         R4 K6 [{"source", "instance"}]
        7 GETUPVAL                         R5 1
        8 GETTABLEKS                       R5 R5 K7 ["SOURCE_INSTANCE"]
       10 SETTABLEKS                       R5 R4 K4 ["source"]
       12 SETTABLEKS                       R1 R4 K5 ["instance"]
       14 SETTABLEKS                       R4 R3 K2 ["item"]
       16 CALL                             R2 1 0
       17 NAMECALL                         R2 R1 K8 ["Destroy"]
       19 CALL                             R2 1 0
       20 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R3 1
        6 CALL                             R2 1 1
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       13 LOADK                            R5 K3 ["Newly added child to the catalog couldn't be turned into a catalog item"]
       14 GETIMPORT                        R3 K5 [assert]
       16 CALL                             R3 2 0
       17 FASTCALL2                        TABLE_INSERT R1 R2 ; [+5]
       19 MOVE                             R4 R1
       20 MOVE                             R5 R2
       21 GETIMPORT                        R3 K7 [table.insert]
       23 CALL                             R3 2 0
       24 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["item"]
        3 GETTABLEKS                       R2 R2 K1 ["source"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["SOURCE_INSTANCE"]
        8 JUMPIFNOTEQ                      R2 R3 ; [+10]
       10 GETTABLEKS                       R2 R0 K0 ["item"]
       12 GETTABLEKS                       R2 R2 K3 ["instance"]
       14 GETUPVAL                         R3 1
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["findIndex"]
        3 MOVE                             R2 R0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 1
        8 JUMPIFNOTEQKNIL                  R1 ; [+3]
       10 MOVE                             R2 R0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K1 ["List"]
       15 GETTABLEKS                       R2 R2 K2 ["removeIndex"]
       17 MOVE                             R3 R0
       18 MOVE                             R4 R1
       19 CALL                             R2 2 1
       20 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U3
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 4
        8 GETTABLEKS                       R1 R1 K0 ["cleanAllEquippedItems"]
       10 CALL                             R1 0 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        9 LOADK                            R4 K0 ["Newly added child to the catalog couldn't be turned into a catalog item"]
       10 GETIMPORT                        R2 K2 [assert]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["cleanAllEquippedItems"]
        7 CALL                             R0 0 0
        8 NEWCLOSURE                       R0 P0
        9 CAPTURE                          UPVAL U2
       10 CAPTURE                          UPVAL U3
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K1 ["ChildAdded"]
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K2 ["Connect"]
       17 CALL                             R1 2 1
       18 NEWCLOSURE                       R2 P1
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U1
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R3 R3 K3 ["ChildRemoved"]
       27 MOVE                             R5 R2
       28 NAMECALL                         R3 R3 K2 ["Connect"]
       30 CALL                             R3 2 1
       31 GETUPVAL                         R4 2
       32 GETUPVAL                         R5 4
       33 GETTABLEKS                       R5 R5 K4 ["map"]
       35 GETUPVAL                         R6 0
       36 NAMECALL                         R6 R6 K5 ["GetChildren"]
       38 CALL                             R6 1 1
       39 DUPCLOSURE                       R7 K6 [PROTO_9]
       40 CAPTURE                          UPVAL U3
       41 CALL                             R5 2 -1
       42 CALL                             R4 -1 0
       43 NEWCLOSURE                       R4 P3
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 RETURN                           R4 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R1 R1 K2 ["userCatalogFolder"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["useContext"]
       12 GETUPVAL                         R3 2
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K3 ["useState"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K4 ["collectArray"]
       20 JUMPIFEQKNIL                     R1 ; [+5]
       22 NAMECALL                         R5 R1 K5 ["GetChildren"]
       24 CALL                             R5 1 1
       25 JUMP                             ; [+2]
       26 NEWTABLE                         R5 0 0
       28 DUPCLOSURE                       R6 K6 [PROTO_1]
       29 CAPTURE                          UPVAL U4
       30 CALL                             R4 2 -1
       31 CALL                             R3 -1 2
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["useCallback"]
       35 NEWCLOSURE                       R6 P1
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U5
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          UPVAL U7
       41 NEWTABLE                         R7 0 2
       43 GETTABLEKS                       R8 R2 K8 ["removeEquippedItem"]
       45 MOVE                             R9 R1
       46 SETLIST                          R7 R8 2 [1]
       48 CALL                             R5 2 1
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R6 R6 K7 ["useCallback"]
       52 NEWCLOSURE                       R7 P2
       53 CAPTURE                          VAL R2
       54 CAPTURE                          UPVAL U5
       55 NEWTABLE                         R8 0 1
       57 GETTABLEKS                       R9 R2 K8 ["removeEquippedItem"]
       59 SETLIST                          R8 R9 1 [1]
       61 CALL                             R6 2 1
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K9 ["useEffect"]
       65 NEWCLOSURE                       R8 P3
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U8
       73 NEWTABLE                         R9 0 1
       75 MOVE                             R10 R1
       76 SETLIST                          R9 R10 1 [1]
       78 CALL                             R7 2 0
       79 DUPTABLE                         R7 K13 [{"equippableItems", "addNewItem", "removeItem"}]
       80 SETTABLEKS                       R3 R7 K10 ["equippableItems"]
       82 SETTABLEKS                       R5 R7 K11 ["addNewItem"]
       84 SETTABLEKS                       R6 R7 K12 ["removeItem"]
       86 GETUPVAL                         R8 0
       87 GETTABLEKS                       R8 R8 K14 ["createElement"]
       89 GETUPVAL                         R9 9
       90 GETTABLEKS                       R9 R9 K15 ["Provider"]
       92 DUPTABLE                         R10 K17 [{"value"}]
       93 SETTABLEKS                       R7 R10 K16 ["value"]
       95 GETTABLEKS                       R11 R0 K18 ["children"]
       97 CALL                             R8 3 -1
       98 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Dash"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Src"]
       38 GETTABLEKS                       R6 R6 K15 ["Util"]
       40 GETTABLEKS                       R6 R6 K16 ["Constants"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K9 [require]
       45 GETTABLEKS                       R7 R1 K14 ["Src"]
       47 GETTABLEKS                       R7 R7 K15 ["Util"]
       49 GETTABLEKS                       R7 R7 K17 ["EquipmentStateContext"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K9 [require]
       54 GETTABLEKS                       R8 R1 K14 ["Src"]
       56 GETTABLEKS                       R8 R8 K15 ["Util"]
       58 GETTABLEKS                       R8 R8 K18 ["UserCatalogContext"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K9 [require]
       63 GETTABLEKS                       R9 R1 K14 ["Src"]
       65 GETTABLEKS                       R9 R9 K19 ["Components"]
       67 GETTABLEKS                       R9 R9 K20 ["UserCatalogFolderContext"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K9 [require]
       72 GETTABLEKS                       R10 R1 K14 ["Src"]
       74 GETTABLEKS                       R10 R10 K15 ["Util"]
       76 GETTABLEKS                       R10 R10 K21 ["getPaletteFromKey"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K9 [require]
       81 GETTABLEKS                       R11 R1 K14 ["Src"]
       83 GETTABLEKS                       R11 R11 K22 ["Types"]
       85 CALL                             R10 1 1
       86 GETIMPORT                        R11 K9 [require]
       88 GETTABLEKS                       R12 R1 K14 ["Src"]
       90 GETTABLEKS                       R12 R12 K23 ["Flags"]
       92 GETTABLEKS                       R12 R12 K24 ["getFFlagAvatarPreviewerLookComposer"]
       94 CALL                             R11 1 1
       95 DUPCLOSURE                       R12 K25 [PROTO_0]
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R5
       98 DUPCLOSURE                       R13 K26 [PROTO_12]
       99 CAPTURE                          VAL R4
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R11
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R7
      109 RETURN                           R13 1
