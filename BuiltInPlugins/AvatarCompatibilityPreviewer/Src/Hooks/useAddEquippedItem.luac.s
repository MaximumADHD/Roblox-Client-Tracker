PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["item"]
        2 GETTABLEKS                       R1 R1 K1 ["source"]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["SOURCE_MARKETPLACE"]
        7 JUMPIFEQ                         R1 R2 ; [+3]
        9 LOADNIL                          R1
       10 RETURN                           R1 1
       11 GETTABLEKS                       R1 R0 K3 ["palette"]
       13 GETTABLEKS                       R1 R1 K4 ["PublishAssetType"]
       15 JUMPIFNOTEQKNIL                  R1 ; [+3]
       17 LOADNIL                          R2
       18 RETURN                           R2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K5 ["MARKETPLACE_CLOTHING_SLOTS"]
       22 GETTABLE                         R2 R3 R1
       23 RETURN                           R2 1

PROTO_1:
        0 LOADN                            R2 0
        1 LOADN                            R3 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["palette"]
        8 GETTABLEKS                       R9 R9 K1 ["PreferredLayer"]
       10 JUMPIFEQKNIL                     R9 ; [+18]
       12 JUMPIFNOTEQKNIL                  R9 ; [+2]
       14 LOADB                            R11 0 +1
       15 LOADB                            R11 1
       16 GETUPVAL                         R12 0
       17 GETTABLEKS                       R12 R12 K2 ["LUAU_ANALYZE_ERROR"]
       19 FASTCALL2                        ASSERT R11 R12 ; [+3]
       21 GETIMPORT                        R10 K4 [assert]
       23 CALL                             R10 2 0
       24 JUMPIFNOTLE                      R9 R1 ; [+4]
       26 JUMPIFNOTLE                      R3 R9 ; [+2]
       28 MOVE                             R2 R7
       29 FORGLOOP                         R4 2 ; [-24]
       31 ADDK                             R4 R2 K5 [1]
       32 RETURN                           R4 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["item"]
        2 GETTABLEKS                       R3 R3 K1 ["source"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["SOURCE_MARKETPLACE"]
        7 JUMPIFEQ                         R3 R4 ; [+3]
        9 LOADNIL                          R2
       10 JUMP                             ; [+12]
       11 GETTABLEKS                       R3 R0 K3 ["palette"]
       13 GETTABLEKS                       R3 R3 K4 ["PublishAssetType"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+3]
       17 LOADNIL                          R2
       18 JUMP                             ; [+4]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K5 ["MARKETPLACE_CLOTHING_SLOTS"]
       22 GETTABLE                         R2 R4 R3
       23 GETUPVAL                         R3 1
       24 JUMPIFNOTEQ                      R2 R3 ; [+2]
       26 LOADB                            R1 0 +1
       27 LOADB                            R1 1
       28 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["palette"]
        2 GETTABLEKS                       R1 R1 K1 ["OverrideEquipKey"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["palette"]
        7 GETTABLEKS                       R1 R1 K2 ["Key"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["palette"]
       12 GETTABLEKS                       R2 R2 K1 ["OverrideEquipKey"]
       14 JUMPIF                           R2 ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["palette"]
       18 GETTABLEKS                       R2 R2 K2 ["Key"]
       20 JUMPIFEQ                         R1 R2 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["palette"]
        2 GETTABLEKS                       R1 R1 K1 ["OverrideEquipKey"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["palette"]
        7 GETTABLEKS                       R1 R1 K2 ["Key"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K0 ["palette"]
       12 GETTABLEKS                       R2 R2 K1 ["OverrideEquipKey"]
       14 JUMPIF                           R2 ; [+5]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K0 ["palette"]
       18 GETTABLEKS                       R2 R2 K2 ["Key"]
       20 JUMPIFEQ                         R1 R2 ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 RETURN                           R3 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 CALL                             R2 0 1
        6 JUMPIFNOT                        R2 ; [+35]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R4 R3 K3 ["item"]
       10 GETTABLEKS                       R4 R4 K4 ["source"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K5 ["SOURCE_MARKETPLACE"]
       15 JUMPIFEQ                         R4 R5 ; [+3]
       17 LOADNIL                          R2
       18 JUMP                             ; [+12]
       19 GETTABLEKS                       R4 R3 K6 ["palette"]
       21 GETTABLEKS                       R4 R4 K7 ["PublishAssetType"]
       23 JUMPIFNOTEQKNIL                  R4 ; [+3]
       25 LOADNIL                          R2
       26 JUMP                             ; [+4]
       27 GETUPVAL                         R5 2
       28 GETTABLEKS                       R5 R5 K8 ["MARKETPLACE_CLOTHING_SLOTS"]
       30 GETTABLE                         R2 R5 R4
       31 JUMPIFEQKNIL                     R2 ; [+10]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K9 ["filter"]
       36 MOVE                             R4 R1
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 CALL                             R3 2 1
       41 MOVE                             R1 R3
       42 GETUPVAL                         R2 3
       43 GETTABLEKS                       R2 R2 K10 ["findIndex"]
       45 MOVE                             R3 R1
       46 NEWCLOSURE                       R4 P1
       47 CAPTURE                          UPVAL U1
       48 CALL                             R2 2 1
       49 JUMPIFEQKNIL                     R2 ; [+33]
       51 GETUPVAL                         R3 1
       52 GETTABLEKS                       R3 R3 K6 ["palette"]
       54 GETTABLEKS                       R3 R3 K11 ["MaxItems"]
       56 JUMPIFNOTEQKNIL                  R3 ; [+7]
       58 GETIMPORT                        R3 K13 [table.remove]
       60 MOVE                             R4 R1
       61 MOVE                             R5 R2
       62 CALL                             R3 2 0
       63 JUMP                             ; [+19]
       64 GETUPVAL                         R3 3
       65 GETTABLEKS                       R3 R3 K14 ["count"]
       67 MOVE                             R4 R1
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          UPVAL U1
       70 CALL                             R3 2 1
       71 GETUPVAL                         R4 1
       72 GETTABLEKS                       R4 R4 K6 ["palette"]
       74 GETTABLEKS                       R4 R4 K11 ["MaxItems"]
       76 JUMPIFNOTLE                      R4 R3 ; [+6]
       78 GETIMPORT                        R4 K13 [table.remove]
       80 MOVE                             R5 R1
       81 MOVE                             R6 R2
       82 CALL                             R4 2 0
       83 GETUPVAL                         R3 1
       84 GETTABLEKS                       R3 R3 K6 ["palette"]
       86 GETTABLEKS                       R3 R3 K15 ["PreferredLayer"]
       88 JUMPIFNOTEQKNIL                  R3 ; [+9]
       90 GETUPVAL                         R5 1
       91 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       93 MOVE                             R4 R1
       94 GETIMPORT                        R3 K17 [table.insert]
       96 CALL                             R3 2 0
       97 RETURN                           R1 1
       98 GETUPVAL                         R5 4
       99 MOVE                             R6 R1
      100 GETUPVAL                         R7 1
      101 GETTABLEKS                       R7 R7 K6 ["palette"]
      103 GETTABLEKS                       R7 R7 K15 ["PreferredLayer"]
      105 CALL                             R5 2 1
      106 GETUPVAL                         R6 1
      107 FASTCALL3                        TABLE_INSERT R1 R5 R6
      109 MOVE                             R4 R1
      110 GETIMPORT                        R3 K17 [table.insert]
      112 CALL                             R3 3 0
      113 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useCallback"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 NEWTABLE                         R3 0 1
       11 MOVE                             R4 R0
       12 SETLIST                          R3 R4 1 [1]
       14 CALL                             R1 2 -1
       15 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Constants"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Types"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Flags"]
       43 GETTABLEKS                       R6 R6 K14 ["getFFlagAvatarPreviewerMarketplaceClothingSlotLimit"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K15 [PROTO_0]
       47 CAPTURE                          VAL R3
       48 DUPCLOSURE                       R7 K16 [PROTO_1]
       49 CAPTURE                          VAL R3
       50 DUPCLOSURE                       R8 K17 [PROTO_7]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 RETURN                           R8 1
