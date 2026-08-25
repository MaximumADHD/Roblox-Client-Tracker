PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+19]
        3 NAMECALL                         R4 R0 K0 ["getInsertData"]
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R6 R4 K1 ["Ids"]
        8 LENGTH                           R5 R6
        9 LOADN                            R6 0
       10 JUMPIFNOTLT                      R6 R5 ; [+166]
       12 NAMECALL                         R5 R0 K2 ["getPlugin"]
       14 CALL                             R5 1 1
       15 LOADK                            R7 K3 ["RequestInsert"]
       16 MOVE                             R8 R4
       17 MOVE                             R9 R3
       18 NAMECALL                         R5 R5 K4 ["Invoke"]
       20 CALL                             R5 4 0
       21 JUMP                             ; [+155]
       22 NAMECALL                         R4 R0 K5 ["getSelection"]
       24 CALL                             R4 1 1
       25 NAMECALL                         R5 R0 K6 ["getItemsCache"]
       27 CALL                             R5 1 1
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K7 ["keys"]
       31 MOVE                             R7 R4
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R9 R1 K8 ["Uid"]
       35 MOVE                             R10 R6
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K9 ["AssetInfoField"]
       39 GETTABLEKS                       R11 R11 K10 ["AssetId"]
       41 NAMECALL                         R7 R5 K11 ["getData"]
       43 CALL                             R7 4 1
       44 GETTABLEKS                       R10 R1 K8 ["Uid"]
       46 MOVE                             R11 R6
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R12 R12 K9 ["AssetInfoField"]
       50 GETTABLEKS                       R12 R12 K12 ["AssetType"]
       52 NAMECALL                         R8 R5 K11 ["getData"]
       54 CALL                             R8 4 1
       55 GETUPVAL                         R9 3
       56 MOVE                             R10 R7
       57 MOVE                             R11 R8
       58 MOVE                             R12 R6
       59 CALL                             R9 3 1
       60 GETUPVAL                         R10 4
       61 CALL                             R10 0 1
       62 JUMPIF                           R10 ; [+56]
       63 NAMECALL                         R11 R0 K2 ["getPlugin"]
       65 CALL                             R11 1 1
       66 LOADK                            R13 K14 ["GameId"]
       67 NAMECALL                         R11 R11 K15 ["GetItem"]
       69 CALL                             R11 2 1
       70 ORK                              R10 R11 K13 [0]
       71 JUMPIFEQKN                       R10 K13 [0] ; [+47]
       73 NEWTABLE                         R11 0 0
       75 MOVE                             R12 R9
       76 LOADNIL                          R13
       77 LOADNIL                          R14
       78 FORGPREP                         R12
       79 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       81 MOVE                             R18 R11
       82 MOVE                             R19 R15
       83 GETIMPORT                        R17 K18 [table.insert]
       85 CALL                             R17 2 0
       86 LENGTH                           R17 R11
       87 JUMPIFNOTEQKN                    R17 K19 [50] ; [+14]
       89 MOVE                             R19 R11
       90 MOVE                             R20 R10
       91 NAMECALL                         R17 R2 K20 ["grantUniverseUseAssetsPermissions"]
       93 CALL                             R17 3 2
       94 JUMPIF                           R17 ; [+5]
       95 GETUPVAL                         R19 5
       96 MOVE                             R20 R9
       97 MOVE                             R21 R18
       98 MOVE                             R22 R11
       99 CALL                             R19 3 0
      100 NEWTABLE                         R11 0 0
      102 FORGLOOP                         R12 2 ; [-24]
      104 LENGTH                           R12 R11
      105 LOADN                            R13 0
      106 JUMPIFNOTLT                      R13 R12 ; [+12]
      108 MOVE                             R14 R11
      109 MOVE                             R15 R10
      110 NAMECALL                         R12 R2 K20 ["grantUniverseUseAssetsPermissions"]
      112 CALL                             R12 3 2
      113 JUMPIF                           R12 ; [+5]
      114 GETUPVAL                         R14 5
      115 MOVE                             R15 R9
      116 MOVE                             R16 R13
      117 MOVE                             R17 R11
      118 CALL                             R14 3 0
      119 NEWTABLE                         R10 0 0
      121 MOVE                             R11 R9
      122 LOADNIL                          R12
      123 LOADNIL                          R13
      124 FORGPREP                         R11
      125 GETTABLEKS                       R18 R1 K8 ["Uid"]
      127 MOVE                             R19 R15
      128 NAMECALL                         R16 R5 K21 ["getItem"]
      130 CALL                             R16 3 1
      131 JUMPIFNOT                        R16 ; [+7]
      132 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      134 MOVE                             R18 R10
      135 MOVE                             R19 R16
      136 GETIMPORT                        R17 K18 [table.insert]
      138 CALL                             R17 2 0
      139 FORGLOOP                         R11 2 ; [-15]
      141 GETUPVAL                         R11 6
      142 MOVE                             R13 R10
      143 NAMECALL                         R11 R11 K22 ["JSONEncode"]
      145 CALL                             R11 2 1
      146 JUMPIFEQKNIL                     R3 ; [+7]
      148 GETUPVAL                         R12 6
      149 MOVE                             R14 R3
      150 NAMECALL                         R12 R12 K22 ["JSONEncode"]
      152 CALL                             R12 2 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R12
      155 GETUPVAL                         R13 4
      156 CALL                             R13 0 1
      157 JUMPIFNOT                        R13 ; [+10]
      158 NAMECALL                         R13 R0 K2 ["getPlugin"]
      160 CALL                             R13 1 1
      161 LOADK                            R15 K23 ["OnInsertAndGrantItems"]
      162 MOVE                             R16 R11
      163 MOVE                             R17 R12
      164 NAMECALL                         R13 R13 K4 ["Invoke"]
      166 CALL                             R13 4 0
      167 JUMP                             ; [+9]
      168 NAMECALL                         R13 R0 K2 ["getPlugin"]
      170 CALL                             R13 1 1
      171 LOADK                            R15 K24 ["OnInsertItems"]
      172 MOVE                             R16 R11
      173 MOVE                             R17 R12
      174 NAMECALL                         R13 R13 K4 ["Invoke"]
      176 CALL                             R13 4 0
      177 NAMECALL                         R4 R0 K25 ["sendInsertToAnalytics"]
      179 CALL                             R4 1 0
      180 RETURN                           R0 0

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
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K12 ["Src"]
       24 GETTABLEKS                       R4 R4 K13 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K12 ["Src"]
       31 GETTABLEKS                       R5 R5 K14 ["Util"]
       33 GETTABLEKS                       R5 R5 K15 ["handlePermissionsGrantErrors"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R6 R1 K12 ["Src"]
       40 GETTABLEKS                       R6 R6 K14 ["Util"]
       42 GETTABLEKS                       R6 R6 K16 ["isInsertable"]
       44 CALL                             R5 1 1
       45 GETIMPORT                        R6 K9 [require]
       47 GETTABLEKS                       R7 R1 K12 ["Src"]
       49 GETTABLEKS                       R7 R7 K17 ["Flags"]
       51 GETTABLEKS                       R7 R7 K18 ["getFFlagAmrUseAssetAccessController"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K9 [require]
       56 GETTABLEKS                       R8 R1 K12 ["Src"]
       58 GETTABLEKS                       R8 R8 K17 ["Flags"]
       60 GETTABLEKS                       R8 R8 K19 ["getFFlagAmrInsertUsesInsertFramework"]
       62 CALL                             R7 1 1
       63 DUPCLOSURE                       R8 K20 [PROTO_0]
       64 CAPTURE                          VAL R5
       65 DUPCLOSURE                       R9 K21 [PROTO_1]
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R0
       73 RETURN                           R9 1
