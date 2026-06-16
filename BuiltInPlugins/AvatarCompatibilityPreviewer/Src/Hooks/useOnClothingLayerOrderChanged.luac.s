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
       10 MOVE                             R11 R9
       11 CALL                             R10 1 1
       12 GETUPVAL                         R11 2
       13 GETTABLEKS                       R11 R11 K1 ["layerType"]
       15 JUMPIFNOTEQ                      R10 R11 ; [+13]
       17 ADDK                             R4 R4 K2 [1]
       18 JUMPIFNOTEQ                      R4 R0 ; [+3]
       20 MOVE                             R2 R8
       21 JUMP                             ; [+3]
       22 JUMPIFNOTEQ                      R4 R1 ; [+2]
       24 MOVE                             R3 R8
       25 JUMPIFEQKNIL                     R2 ; [+3]
       27 JUMPIFNOTEQKNIL                  R3 ; [+3]
       29 FORGLOOP                         R5 2 ; [-21]
       31 JUMPIFEQKNIL                     R2 ; [+3]
       33 JUMPIFNOTEQKNIL                  R3 ; [+72]
       35 NEWTABLE                         R5 0 4
       37 LOADK                            R6 K3 ["Couldn't resolve true indices of layered clothing"]
       38 LOADK                            R8 K4 ["Swapping %* with %*"]
       39 MOVE                             R10 R0
       40 MOVE                             R11 R1
       41 NAMECALL                         R8 R8 K5 ["format"]
       43 CALL                             R8 3 1
       44 MOVE                             R7 R8
       45 LOADK                            R9 K6 ["trueLayeredClothingIndex = %*"]
       46 MOVE                             R11 R2
       47 NAMECALL                         R9 R9 K5 ["format"]
       49 CALL                             R9 2 1
       50 MOVE                             R8 R9
       51 LOADK                            R10 K7 ["#equipmentState.equippedItems = %*"]
       52 GETUPVAL                         R13 0
       53 GETTABLEKS                       R13 R13 K0 ["equippedItems"]
       55 LENGTH                           R12 R13
       56 NAMECALL                         R10 R10 K5 ["format"]
       58 CALL                             R10 2 1
       59 MOVE                             R9 R10
       60 SETLIST                          R5 R6 4 [1]
       62 GETUPVAL                         R6 0
       63 GETTABLEKS                       R6 R6 K0 ["equippedItems"]
       65 LOADNIL                          R7
       66 LOADNIL                          R8
       67 FORGPREP                         R6
       68 LOADK                            R14 K8 ["\t%*. %* (Layered clothing = %*)"]
       69 MOVE                             R16 R9
       70 GETTABLEKS                       R17 R10 K9 ["palette"]
       72 GETTABLEKS                       R17 R17 K10 ["Key"]
       74 GETIMPORT                        R19 K13 [table.find]
       76 GETUPVAL                         R20 3
       77 GETTABLEKS                       R20 R20 K14 ["clothing"]
       79 GETTABLEKS                       R21 R10 K9 ["palette"]
       81 CALL                             R19 2 1
       82 JUMPIFNOTEQKNIL                  R19 ; [+2]
       84 LOADB                            R18 0 +1
       85 LOADB                            R18 1
       86 NAMECALL                         R14 R14 K5 ["format"]
       88 CALL                             R14 4 1
       89 MOVE                             R13 R14
       90 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       92 MOVE                             R12 R5
       93 GETIMPORT                        R11 K16 [table.insert]
       95 CALL                             R11 2 0
       96 FORGLOOP                         R6 2 ; [-29]
       98 GETIMPORT                        R6 K18 [error]
      100 GETIMPORT                        R7 K20 [table.concat]
      102 MOVE                             R8 R5
      103 LOADK                            R9 K21 ["\n"]
      104 CALL                             R7 2 -1
      105 CALL                             R6 -1 0
      106 GETUPVAL                         R5 0
      107 GETTABLEKS                       R5 R5 K22 ["moveEquippedItemsToIndex"]
      109 MOVE                             R6 R2
      110 MOVE                             R7 R3
      111 CALL                             R5 2 0
      112 RETURN                           R0 0

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
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R1 K2 ["equippedItems"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

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
       43 GETTABLEKS                       R6 R6 K11 ["Util"]
       45 GETTABLEKS                       R6 R6 K14 ["getItemAccessoryType"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K15 [PROTO_1]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R2
       53 RETURN                           R6 1
