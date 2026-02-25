PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETUPVAL                         R8 0
        7 GETTABLE                         R10 R1 R6
        8 GETTABLEKS                       R9 R10 K0 ["AssetType"]
       10 CALL                             R8 1 1
       11 JUMPIFNOT                        R8 ; [+2]
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R2 R6
       14 FORGLOOP                         R3 2 ; [-9]
       16 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETUPVAL                         R9 0
        7 GETTABLE                         R10 R1 R7
        8 CALL                             R9 1 1
        9 JUMPIFNOT                        R9 ; [+2]
       10 GETTABLE                         R9 R2 R7
       11 SETTABLE                         R9 R3 R8
       12 FORGLOOP                         R4 2 ; [-7]
       14 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 JUMPIFNOT                        R5 ; [+4]
        3 NAMECALL                         R4 R0 K0 ["getSelection"]
        5 CALL                             R4 1 1
        6 JUMP                             ; [+3]
        7 NAMECALL                         R4 R0 K1 ["getSelection_DEPRECATED"]
        9 CALL                             R4 1 1
       10 LOADNIL                          R5
       11 NEWTABLE                         R6 0 0
       13 NEWTABLE                         R7 0 0
       15 GETUPVAL                         R8 0
       16 CALL                             R8 0 1
       17 JUMPIFNOT                        R8 ; [+38]
       18 NAMECALL                         R8 R0 K2 ["getItemsCache"]
       20 CALL                             R8 1 1
       21 MOVE                             R5 R8
       22 GETUPVAL                         R9 1
       23 GETTABLEKS                       R8 R9 K3 ["keys"]
       25 MOVE                             R9 R4
       26 CALL                             R8 1 1
       27 GETTABLEKS                       R11 R1 K4 ["Uid"]
       29 MOVE                             R12 R8
       30 GETUPVAL                         R15 2
       31 GETTABLEKS                       R14 R15 K5 ["AssetInfoField"]
       33 GETTABLEKS                       R13 R14 K6 ["AssetId"]
       35 NAMECALL                         R9 R5 K7 ["getData"]
       37 CALL                             R9 4 1
       38 GETTABLEKS                       R12 R1 K4 ["Uid"]
       40 MOVE                             R13 R8
       41 GETUPVAL                         R16 2
       42 GETTABLEKS                       R15 R16 K5 ["AssetInfoField"]
       44 GETTABLEKS                       R14 R15 K8 ["AssetType"]
       46 NAMECALL                         R10 R5 K7 ["getData"]
       48 CALL                             R10 4 1
       49 GETUPVAL                         R11 3
       50 MOVE                             R12 R9
       51 MOVE                             R13 R10
       52 MOVE                             R14 R8
       53 CALL                             R11 3 1
       54 MOVE                             R6 R11
       55 JUMP                             ; [+9]
       56 NAMECALL                         R8 R0 K9 ["getItems"]
       58 CALL                             R8 1 1
       59 MOVE                             R7 R8
       60 GETUPVAL                         R8 4
       61 MOVE                             R9 R4
       62 MOVE                             R10 R7
       63 CALL                             R8 2 1
       64 MOVE                             R6 R8
       65 GETUPVAL                         R8 5
       66 CALL                             R8 0 1
       67 JUMPIF                           R8 ; [+56]
       68 NAMECALL                         R9 R0 K11 ["getPlugin"]
       70 CALL                             R9 1 1
       71 LOADK                            R11 K12 ["GameId"]
       72 NAMECALL                         R9 R9 K13 ["GetItem"]
       74 CALL                             R9 2 1
       75 ORK                              R8 R9 K10 [0]
       76 JUMPIFEQKN                       R8 K10 [0] ; [+47]
       78 NEWTABLE                         R9 0 0
       80 MOVE                             R10 R6
       81 LOADNIL                          R11
       82 LOADNIL                          R12
       83 FORGPREP                         R10
       84 FASTCALL2                        TABLE_INSERT R9 R13 ; [+5]
       86 MOVE                             R16 R9
       87 MOVE                             R17 R13
       88 GETIMPORT                        R15 K16 [table.insert]
       90 CALL                             R15 2 0
       91 LENGTH                           R15 R9
       92 JUMPIFNOTEQKN                    R15 K17 [50] ; [+14]
       94 MOVE                             R17 R9
       95 MOVE                             R18 R8
       96 NAMECALL                         R15 R2 K18 ["grantUniverseUseAssetsPermissions"]
       98 CALL                             R15 3 2
       99 JUMPIF                           R15 ; [+5]
      100 GETUPVAL                         R17 6
      101 MOVE                             R18 R6
      102 MOVE                             R19 R16
      103 MOVE                             R20 R9
      104 CALL                             R17 3 0
      105 NEWTABLE                         R9 0 0
      107 FORGLOOP                         R10 2 ; [-24]
      109 LENGTH                           R10 R9
      110 LOADN                            R11 0
      111 JUMPIFNOTLT                      R11 R10 ; [+12]
      113 MOVE                             R12 R9
      114 MOVE                             R13 R8
      115 NAMECALL                         R10 R2 K18 ["grantUniverseUseAssetsPermissions"]
      117 CALL                             R10 3 2
      118 JUMPIF                           R10 ; [+5]
      119 GETUPVAL                         R12 6
      120 MOVE                             R13 R6
      121 MOVE                             R14 R11
      122 MOVE                             R15 R9
      123 CALL                             R12 3 0
      124 NEWTABLE                         R8 0 0
      126 MOVE                             R9 R6
      127 LOADNIL                          R10
      128 LOADNIL                          R11
      129 FORGPREP                         R9
      130 GETUPVAL                         R14 0
      131 CALL                             R14 0 1
      132 JUMPIF                           R14 ; [+1]
      133 JUMPIFNOT                        R13 ; [+27]
      134 GETUPVAL                         R14 0
      135 CALL                             R14 0 1
      136 JUMPIFNOT                        R14 ; [+15]
      137 GETTABLEKS                       R16 R1 K4 ["Uid"]
      139 MOVE                             R17 R13
      140 NAMECALL                         R14 R5 K19 ["getItem"]
      142 CALL                             R14 3 1
      143 JUMPIFNOT                        R14 ; [+17]
      144 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
      146 MOVE                             R16 R8
      147 MOVE                             R17 R14
      148 GETIMPORT                        R15 K16 [table.insert]
      150 CALL                             R15 2 0
      151 JUMP                             ; [+9]
      152 GETTABLE                         R14 R7 R12
      153 JUMPIFNOT                        R14 ; [+7]
      154 FASTCALL2                        TABLE_INSERT R8 R14 ; [+5]
      156 MOVE                             R16 R8
      157 MOVE                             R17 R14
      158 GETIMPORT                        R15 K16 [table.insert]
      160 CALL                             R15 2 0
      161 FORGLOOP                         R9 2 ; [-32]
      163 GETUPVAL                         R9 7
      164 MOVE                             R11 R8
      165 NAMECALL                         R9 R9 K20 ["JSONEncode"]
      167 CALL                             R9 2 1
      168 GETUPVAL                         R10 5
      169 CALL                             R10 0 1
      170 JUMPIFNOT                        R10 ; [+10]
      171 NAMECALL                         R10 R0 K11 ["getPlugin"]
      173 CALL                             R10 1 1
      174 LOADK                            R12 K21 ["OnInsertAndGrantItems"]
      175 MOVE                             R13 R9
      176 MOVE                             R14 R3
      177 NAMECALL                         R10 R10 K22 ["Invoke"]
      179 CALL                             R10 4 0
      180 JUMP                             ; [+9]
      181 NAMECALL                         R10 R0 K11 ["getPlugin"]
      183 CALL                             R10 1 1
      184 LOADK                            R12 K23 ["OnInsertItems"]
      185 MOVE                             R13 R9
      186 MOVE                             R14 R3
      187 NAMECALL                         R10 R10 K22 ["Invoke"]
      189 CALL                             R10 4 0
      190 NAMECALL                         R10 R0 K24 ["sendInsertToAnalytics"]
      192 CALL                             R10 1 0
      193 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssetManager"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R5 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R7 R1 K12 ["Src"]
       31 GETTABLEKS                       R6 R7 K14 ["Util"]
       33 GETTABLEKS                       R5 R6 K15 ["handlePermissionsGrantErrors"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R8 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R8 K14 ["Util"]
       42 GETTABLEKS                       R6 R7 K16 ["isInsertable"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R9 R1 K12 ["Src"]
       49 GETTABLEKS                       R8 R9 K17 ["Flags"]
       51 GETTABLEKS                       R7 R8 K18 ["getFFlagAmrUpdatedItemsCache"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R10 R1 K12 ["Src"]
       58 GETTABLEKS                       R9 R10 K17 ["Flags"]
       60 GETTABLEKS                       R8 R9 K19 ["getFFlagAmrUseAssetAccessController"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K20 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R9 K21 [PROTO_1]
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R10 K22 [PROTO_2]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R0
       76 RETURN                           R10 1
