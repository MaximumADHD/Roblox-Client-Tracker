PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADN                            R4 0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K0 ["equippedItems"]
        6 LOADNIL                          R6
        7 LOADNIL                          R7
        8 FORGPREP                         R5
        9 GETUPVAL                         R10 1
       10 CALL                             R10 0 1
       11 JUMPIFNOT                        R10 ; [+9]
       12 GETUPVAL                         R10 2
       13 MOVE                             R11 R9
       14 CALL                             R10 1 1
       15 GETUPVAL                         R11 3
       16 GETTABLEKS                       R11 R11 K1 ["layerType"]
       18 JUMPIFNOTEQ                      R10 R11 ; [+19]
       20 JUMP                             ; [+5]
       21 GETUPVAL                         R10 2
       22 MOVE                             R11 R9
       23 CALL                             R10 1 1
       24 JUMPIFNOTEQKS                    R10 K2 ["layered"] ; [+13]
       26 ADDK                             R4 R4 K3 [1]
       27 JUMPIFNOTEQ                      R4 R0 ; [+3]
       29 MOVE                             R2 R8
       30 JUMP                             ; [+3]
       31 JUMPIFNOTEQ                      R4 R1 ; [+2]
       33 MOVE                             R3 R8
       34 JUMPIFEQKNIL                     R2 ; [+3]
       36 JUMPIFNOTEQKNIL                  R3 ; [+3]
       38 FORGLOOP                         R5 2 ; [-30]
       40 JUMPIFEQKNIL                     R2 ; [+3]
       42 JUMPIFNOTEQKNIL                  R3 ; [+72]
       44 NEWTABLE                         R5 0 4
       46 LOADK                            R6 K4 ["Couldn't resolve true indices of layered clothing"]
       47 LOADK                            R8 K5 ["Swapping %* with %*"]
       48 MOVE                             R10 R0
       49 MOVE                             R11 R1
       50 NAMECALL                         R8 R8 K6 ["format"]
       52 CALL                             R8 3 1
       53 MOVE                             R7 R8
       54 LOADK                            R9 K7 ["trueLayeredClothingIndex = %*"]
       55 MOVE                             R11 R2
       56 NAMECALL                         R9 R9 K6 ["format"]
       58 CALL                             R9 2 1
       59 MOVE                             R8 R9
       60 LOADK                            R10 K8 ["#equipmentState.equippedItems = %*"]
       61 GETUPVAL                         R13 0
       62 GETTABLEKS                       R13 R13 K0 ["equippedItems"]
       64 LENGTH                           R12 R13
       65 NAMECALL                         R10 R10 K6 ["format"]
       67 CALL                             R10 2 1
       68 MOVE                             R9 R10
       69 SETLIST                          R5 R6 4 [1]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K0 ["equippedItems"]
       74 LOADNIL                          R7
       75 LOADNIL                          R8
       76 FORGPREP                         R6
       77 LOADK                            R14 K9 ["\t%*. %* (Layered clothing = %*)"]
       78 MOVE                             R16 R9
       79 GETTABLEKS                       R17 R10 K10 ["palette"]
       81 GETTABLEKS                       R17 R17 K11 ["Key"]
       83 GETIMPORT                        R19 K14 [table.find]
       85 GETUPVAL                         R20 4
       86 GETTABLEKS                       R20 R20 K15 ["clothing"]
       88 GETTABLEKS                       R21 R10 K10 ["palette"]
       90 CALL                             R19 2 1
       91 JUMPIFNOTEQKNIL                  R19 ; [+2]
       93 LOADB                            R18 0 +1
       94 LOADB                            R18 1
       95 NAMECALL                         R14 R14 K6 ["format"]
       97 CALL                             R14 4 1
       98 MOVE                             R13 R14
       99 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
      101 MOVE                             R12 R5
      102 GETIMPORT                        R11 K17 [table.insert]
      104 CALL                             R11 2 0
      105 FORGLOOP                         R6 2 ; [-29]
      107 GETIMPORT                        R6 K19 [error]
      109 GETIMPORT                        R7 K21 [table.concat]
      111 MOVE                             R8 R5
      112 LOADK                            R9 K22 ["\n"]
      113 CALL                             R7 2 -1
      114 CALL                             R6 -1 0
      115 GETUPVAL                         R5 0
      116 GETTABLEKS                       R5 R5 K23 ["moveEquippedItemsToIndex"]
      118 MOVE                             R6 R2
      119 MOVE                             R7 R3
      120 CALL                             R5 2 0
      121 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["useCallback"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U4
       14 NEWTABLE                         R4 0 1
       16 GETTABLEKS                       R5 R1 K2 ["equippedItems"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Resources"]
       20 GETTABLEKS                       R3 R3 K10 ["CatalogItems"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["EquipmentStateContext"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Types"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K8 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Flags"]
       45 GETTABLEKS                       R6 R6 K15 ["getFFlagAvatarPreviewerMakeup"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K11 ["Util"]
       54 GETTABLEKS                       R7 R7 K16 ["getItemAccessoryType"]
       56 CALL                             R6 1 1
       57 DUPCLOSURE                       R7 K17 [PROTO_1]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R2
       63 RETURN                           R7 1
