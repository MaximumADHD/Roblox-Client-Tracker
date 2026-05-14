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
        0 NAMECALL                         R4 R0 K0 ["getSelection"]
        2 CALL                             R4 1 1
        3 NAMECALL                         R5 R0 K1 ["getItemsCache"]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K2 ["keys"]
        9 MOVE                             R7 R4
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R9 R1 K3 ["Uid"]
       13 MOVE                             R10 R6
       14 GETUPVAL                         R11 1
       15 GETTABLEKS                       R11 R11 K4 ["AssetInfoField"]
       17 GETTABLEKS                       R11 R11 K5 ["AssetId"]
       19 NAMECALL                         R7 R5 K6 ["getData"]
       21 CALL                             R7 4 1
       22 GETTABLEKS                       R10 R1 K3 ["Uid"]
       24 MOVE                             R11 R6
       25 GETUPVAL                         R12 1
       26 GETTABLEKS                       R12 R12 K4 ["AssetInfoField"]
       28 GETTABLEKS                       R12 R12 K7 ["AssetType"]
       30 NAMECALL                         R8 R5 K6 ["getData"]
       32 CALL                             R8 4 1
       33 GETUPVAL                         R9 2
       34 MOVE                             R10 R7
       35 MOVE                             R11 R8
       36 MOVE                             R12 R6
       37 CALL                             R9 3 1
       38 GETUPVAL                         R10 3
       39 CALL                             R10 0 1
       40 JUMPIF                           R10 ; [+56]
       41 NAMECALL                         R11 R0 K9 ["getPlugin"]
       43 CALL                             R11 1 1
       44 LOADK                            R13 K10 ["GameId"]
       45 NAMECALL                         R11 R11 K11 ["GetItem"]
       47 CALL                             R11 2 1
       48 ORK                              R10 R11 K8 [0]
       49 JUMPIFEQKN                       R10 K8 [0] ; [+47]
       51 NEWTABLE                         R11 0 0
       53 MOVE                             R12 R9
       54 LOADNIL                          R13
       55 LOADNIL                          R14
       56 FORGPREP                         R12
       57 FASTCALL2                        TABLE_INSERT R11 R15 ; [+5]
       59 MOVE                             R18 R11
       60 MOVE                             R19 R15
       61 GETIMPORT                        R17 K14 [table.insert]
       63 CALL                             R17 2 0
       64 LENGTH                           R17 R11
       65 JUMPIFNOTEQKN                    R17 K15 [50] ; [+14]
       67 MOVE                             R19 R11
       68 MOVE                             R20 R10
       69 NAMECALL                         R17 R2 K16 ["grantUniverseUseAssetsPermissions"]
       71 CALL                             R17 3 2
       72 JUMPIF                           R17 ; [+5]
       73 GETUPVAL                         R19 4
       74 MOVE                             R20 R9
       75 MOVE                             R21 R18
       76 MOVE                             R22 R11
       77 CALL                             R19 3 0
       78 NEWTABLE                         R11 0 0
       80 FORGLOOP                         R12 2 ; [-24]
       82 LENGTH                           R12 R11
       83 LOADN                            R13 0
       84 JUMPIFNOTLT                      R13 R12 ; [+12]
       86 MOVE                             R14 R11
       87 MOVE                             R15 R10
       88 NAMECALL                         R12 R2 K16 ["grantUniverseUseAssetsPermissions"]
       90 CALL                             R12 3 2
       91 JUMPIF                           R12 ; [+5]
       92 GETUPVAL                         R14 4
       93 MOVE                             R15 R9
       94 MOVE                             R16 R13
       95 MOVE                             R17 R11
       96 CALL                             R14 3 0
       97 NEWTABLE                         R10 0 0
       99 MOVE                             R11 R9
      100 LOADNIL                          R12
      101 LOADNIL                          R13
      102 FORGPREP                         R11
      103 GETTABLEKS                       R18 R1 K3 ["Uid"]
      105 MOVE                             R19 R15
      106 NAMECALL                         R16 R5 K17 ["getItem"]
      108 CALL                             R16 3 1
      109 JUMPIFNOT                        R16 ; [+7]
      110 FASTCALL2                        TABLE_INSERT R10 R16 ; [+5]
      112 MOVE                             R18 R10
      113 MOVE                             R19 R16
      114 GETIMPORT                        R17 K14 [table.insert]
      116 CALL                             R17 2 0
      117 FORGLOOP                         R11 2 ; [-15]
      119 GETUPVAL                         R11 5
      120 MOVE                             R13 R10
      121 NAMECALL                         R11 R11 K18 ["JSONEncode"]
      123 CALL                             R11 2 1
      124 JUMPIFEQKNIL                     R3 ; [+7]
      126 GETUPVAL                         R12 5
      127 MOVE                             R14 R3
      128 NAMECALL                         R12 R12 K18 ["JSONEncode"]
      130 CALL                             R12 2 1
      131 JUMP                             ; [+1]
      132 LOADNIL                          R12
      133 GETUPVAL                         R13 3
      134 CALL                             R13 0 1
      135 JUMPIFNOT                        R13 ; [+10]
      136 NAMECALL                         R13 R0 K9 ["getPlugin"]
      138 CALL                             R13 1 1
      139 LOADK                            R15 K19 ["OnInsertAndGrantItems"]
      140 MOVE                             R16 R11
      141 MOVE                             R17 R12
      142 NAMECALL                         R13 R13 K20 ["Invoke"]
      144 CALL                             R13 4 0
      145 JUMP                             ; [+9]
      146 NAMECALL                         R13 R0 K9 ["getPlugin"]
      148 CALL                             R13 1 1
      149 LOADK                            R15 K21 ["OnInsertItems"]
      150 MOVE                             R16 R11
      151 MOVE                             R17 R12
      152 NAMECALL                         R13 R13 K20 ["Invoke"]
      154 CALL                             R13 4 0
      155 NAMECALL                         R13 R0 K22 ["sendInsertToAnalytics"]
      157 CALL                             R13 1 0
      158 RETURN                           R0 0

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
       54 DUPCLOSURE                       R7 K19 [PROTO_0]
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R8 K20 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R0
       63 RETURN                           R8 1
