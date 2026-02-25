PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["createEquippedItemsSerializer"]
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 2
       10 CALL                             R0 2 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 0
        9 JUMPIFEQKNIL                     R7 ; [+8]
       11 GETIMPORT                        R7 K4 [table.find]
       13 GETUPVAL                         R8 0
       14 MOVE                             R9 R6
       15 CALL                             R7 2 1
       16 JUMPIFNOTEQKNIL                  R7 ; [+9]
       18 GETIMPORT                        R7 K2 [table.clone]
       20 MOVE                             R8 R6
       21 CALL                             R7 1 1
       22 GETUPVAL                         R8 1
       23 SETTABLEKS                       R8 R7 K5 ["isHidden"]
       25 SETTABLE                         R7 R1 R5
       26 FORGLOOP                         R2 2 ; [-19]
       28 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R0
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 LOADN                            R4 0
        3 JUMPIFNOTLT                      R4 R3 ; [+7]
        5 GETUPVAL                         R3 0
        6 LENGTH                           R4 R0
        7 JUMPIFLE                         R3 R4 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 FASTCALL2K                       ASSERT R2 K0 ; [+4]
       13 LOADK                            R3 K0 ["Starting index out of range"]
       14 GETIMPORT                        R1 K2 [assert]
       16 CALL                             R1 2 0
       17 LOADB                            R2 0
       18 GETUPVAL                         R3 1
       19 LOADN                            R4 0
       20 JUMPIFNOTLT                      R4 R3 ; [+7]
       22 GETUPVAL                         R3 1
       23 LENGTH                           R4 R0
       24 JUMPIFLE                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       30 LOADK                            R3 K3 ["New index out of range"]
       31 GETIMPORT                        R1 K2 [assert]
       33 CALL                             R1 2 0
       34 GETIMPORT                        R1 K6 [table.clone]
       36 MOVE                             R2 R0
       37 CALL                             R1 1 1
       38 MOVE                             R0 R1
       39 GETIMPORT                        R1 K8 [table.remove]
       41 MOVE                             R2 R0
       42 GETUPVAL                         R3 0
       43 CALL                             R1 2 1
       44 JUMPIFNOTEQKNIL                  R1 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 FASTCALL2K                       ASSERT R3 K9 ; [+4]
       50 LOADK                            R4 K9 ["Removed item is invalid even though we checked bounds"]
       51 GETIMPORT                        R2 K2 [assert]
       53 CALL                             R2 2 0
       54 GETUPVAL                         R4 1
       55 FASTCALL3                        TABLE_INSERT R0 R4 R1
       57 MOVE                             R3 R0
       58 MOVE                             R5 R1
       59 GETIMPORT                        R2 K11 [table.insert]
       61 CALL                             R2 3 0
       62 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["decrement"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["increment"]
        3 CALL                             R0 0 0
        4 NEWCLOSURE                       R0 P0
        5 CAPTURE                          UPVAL U0
        6 RETURN                           R0 1

PROTO_8:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R8 R6 K0 ["item"]
        8 GETTABLEKS                       R7 R8 K1 ["source"]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R8 R9 K2 ["SOURCE_INSTANCE"]
       13 JUMPIFNOTEQ                      R7 R8 ; [+11]
       15 GETTABLEKS                       R8 R6 K0 ["item"]
       17 GETTABLEKS                       R7 R8 K3 ["instance"]
       19 GETIMPORT                        R9 K5 [game]
       21 NAMECALL                         R7 R7 K6 ["IsDescendantOf"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+7]
       25 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       27 MOVE                             R8 R1
       28 MOVE                             R9 R6
       29 GETIMPORT                        R7 K9 [table.insert]
       31 CALL                             R7 2 0
       32 FORGLOOP                         R2 2 ; [-27]
       34 LENGTH                           R2 R0
       35 LENGTH                           R3 R1
       36 JUMPIFNOTEQ                      R2 R3 ; [+2]
       38 RETURN                           R0 1
       39 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_8]
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R1 R2 K2 ["userCatalogFolder"]
        9 GETUPVAL                         R3 2
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+10]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["useContext"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K1 ["Context"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R2 R3 K3 ["marketplaceCatalogFolder"]
       21 JUMP                             ; [+1]
       22 LOADNIL                          R2
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R3 R4 K4 ["useMemo"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R5 0 2
       32 MOVE                             R6 R1
       33 GETUPVAL                         R8 2
       34 CALL                             R8 0 1
       35 JUMPIFNOT                        R8 ; [+2]
       36 MOVE                             R7 R2
       37 JUMP                             ; [+1]
       38 LOADNIL                          R7
       39 SETLIST                          R5 R6 2 [1]
       41 CALL                             R3 2 1
       42 GETUPVAL                         R4 5
       43 GETTABLEKS                       R5 R0 K5 ["root"]
       45 LOADK                            R6 K6 ["equippedItems"]
       46 NEWTABLE                         R7 0 0
       48 MOVE                             R8 R3
       49 CALL                             R4 4 2
       50 GETUPVAL                         R6 6
       51 MOVE                             R7 R5
       52 LOADB                            R8 0
       53 CALL                             R6 2 1
       54 GETUPVAL                         R7 6
       55 MOVE                             R8 R5
       56 LOADB                            R9 1
       57 CALL                             R7 2 1
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       61 NEWCLOSURE                       R9 P1
       62 CAPTURE                          VAL R5
       63 NEWTABLE                         R10 0 2
       65 MOVE                             R11 R4
       66 MOVE                             R12 R5
       67 SETLIST                          R10 R11 2 [1]
       69 CALL                             R8 2 1
       70 GETUPVAL                         R9 7
       71 MOVE                             R10 R5
       72 CALL                             R9 1 1
       73 GETUPVAL                         R10 8
       74 MOVE                             R11 R5
       75 CALL                             R10 1 1
       76 GETUPVAL                         R12 0
       77 GETTABLEKS                       R11 R12 K7 ["useCallback"]
       79 NEWCLOSURE                       R12 P2
       80 CAPTURE                          VAL R5
       81 NEWTABLE                         R13 0 1
       83 MOVE                             R14 R5
       84 SETLIST                          R13 R14 1 [1]
       86 CALL                             R11 2 1
       87 GETUPVAL                         R13 0
       88 GETTABLEKS                       R12 R13 K7 ["useCallback"]
       90 NEWCLOSURE                       R13 P3
       91 CAPTURE                          VAL R5
       92 NEWTABLE                         R14 0 1
       94 MOVE                             R15 R5
       95 SETLIST                          R14 R15 1 [1]
       97 CALL                             R12 2 1
       98 GETUPVAL                         R13 9
       99 MOVE                             R14 R4
      100 CALL                             R13 1 1
      101 GETUPVAL                         R14 10
      102 CALL                             R14 0 1
      103 GETUPVAL                         R16 0
      104 GETTABLEKS                       R15 R16 K7 ["useCallback"]
      106 NEWCLOSURE                       R16 P4
      107 CAPTURE                          VAL R14
      108 NEWTABLE                         R17 0 0
      110 CALL                             R15 2 1
      111 GETUPVAL                         R17 0
      112 GETTABLEKS                       R16 R17 K7 ["useCallback"]
      114 NEWCLOSURE                       R17 P5
      115 CAPTURE                          VAL R5
      116 CAPTURE                          UPVAL U11
      117 NEWTABLE                         R18 0 2
      119 MOVE                             R19 R5
      120 GETTABLEKS                       R20 R0 K5 ["root"]
      122 SETLIST                          R18 R19 2 [1]
      124 CALL                             R16 2 1
      125 DUPTABLE                         R17 K19 [{"equippedItems", "addEquippedItem", "removeEquippedItem", "removeAllEquippedItems", "moveEquippedItemsToIndex", "cleanAllEquippedItems", "hideEquippedItem", "showEquippedItem", "setHideAllEquippedItems", "avatarAssets", "startIgnoringChildren", "isIgnoringChildren"}]
      126 SETTABLEKS                       R4 R17 K6 ["equippedItems"]
      128 SETTABLEKS                       R9 R17 K8 ["addEquippedItem"]
      130 SETTABLEKS                       R10 R17 K9 ["removeEquippedItem"]
      132 SETTABLEKS                       R11 R17 K10 ["removeAllEquippedItems"]
      134 SETTABLEKS                       R12 R17 K11 ["moveEquippedItemsToIndex"]
      136 SETTABLEKS                       R16 R17 K12 ["cleanAllEquippedItems"]
      138 SETTABLEKS                       R7 R17 K13 ["hideEquippedItem"]
      140 SETTABLEKS                       R6 R17 K14 ["showEquippedItem"]
      142 SETTABLEKS                       R8 R17 K15 ["setHideAllEquippedItems"]
      144 SETTABLEKS                       R13 R17 K16 ["avatarAssets"]
      146 SETTABLEKS                       R15 R17 K17 ["startIgnoringChildren"]
      148 GETTABLEKS                       R19 R14 K20 ["amount"]
      150 LOADN                            R20 0
      151 JUMPIFLT                         R20 R19 ; [+2]
      153 LOADB                            R18 0 +1
      154 LOADB                            R18 1
      155 SETTABLEKS                       R18 R17 K18 ["isIgnoringChildren"]
      157 GETUPVAL                         R19 0
      158 GETTABLEKS                       R18 R19 K21 ["createElement"]
      160 GETUPVAL                         R20 12
      161 GETTABLEKS                       R19 R20 K22 ["Provider"]
      163 DUPTABLE                         R20 K24 [{"value"}]
      164 SETTABLEKS                       R17 R20 K23 ["value"]
      166 GETTABLEKS                       R21 R0 K25 ["children"]
      168 CALL                             R18 3 -1
      169 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K7 ["Src"]
       29 GETTABLEKS                       R5 R6 K8 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["EquipmentStateContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K7 ["Src"]
       38 GETTABLEKS                       R6 R7 K8 ["Util"]
       40 GETTABLEKS                       R5 R6 K11 ["Serializers"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K4 [require]
       45 GETTABLEKS                       R7 R0 K7 ["Src"]
       47 GETTABLEKS                       R6 R7 K12 ["Types"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K4 [require]
       52 GETTABLEKS                       R9 R0 K7 ["Src"]
       54 GETTABLEKS                       R8 R9 K13 ["Components"]
       56 GETTABLEKS                       R7 R8 K14 ["UserCatalogFolderContext"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K4 [require]
       61 GETTABLEKS                       R10 R0 K7 ["Src"]
       63 GETTABLEKS                       R9 R10 K13 ["Components"]
       65 GETTABLEKS                       R8 R9 K15 ["MarketplaceCatalogFolderContext"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K4 [require]
       70 GETTABLEKS                       R11 R0 K7 ["Src"]
       72 GETTABLEKS                       R10 R11 K16 ["Hooks"]
       74 GETTABLEKS                       R9 R10 K17 ["useAvatarAssets"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K4 [require]
       79 GETTABLEKS                       R12 R0 K7 ["Src"]
       81 GETTABLEKS                       R11 R12 K16 ["Hooks"]
       83 GETTABLEKS                       R10 R11 K18 ["useAddEquippedItem"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K4 [require]
       88 GETTABLEKS                       R13 R0 K7 ["Src"]
       90 GETTABLEKS                       R12 R13 K16 ["Hooks"]
       92 GETTABLEKS                       R11 R12 K19 ["useRemoveEquippedItem"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K4 [require]
       97 GETTABLEKS                       R14 R0 K7 ["Src"]
       99 GETTABLEKS                       R13 R14 K16 ["Hooks"]
      101 GETTABLEKS                       R12 R13 K20 ["useSerializedState"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K4 [require]
      106 GETTABLEKS                       R15 R0 K7 ["Src"]
      108 GETTABLEKS                       R14 R15 K16 ["Hooks"]
      110 GETTABLEKS                       R13 R14 K21 ["useSetEquippedItemIsHidden"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K4 [require]
      115 GETTABLEKS                       R16 R0 K7 ["Src"]
      117 GETTABLEKS                       R15 R16 K16 ["Hooks"]
      119 GETTABLEKS                       R14 R15 K22 ["useIncrementedState"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K4 [require]
      124 GETTABLEKS                       R17 R0 K7 ["Src"]
      126 GETTABLEKS                       R16 R17 K23 ["Flags"]
      128 GETTABLEKS                       R15 R16 K24 ["getFFlagAvatarPreviewerLookComposer"]
      130 CALL                             R14 1 1
      131 DUPCLOSURE                       R15 K25 [PROTO_10]
      132 CAPTURE                          VAL R1
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R7
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R8
      142 CAPTURE                          VAL R13
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R3
      145 RETURN                           R15 1
