PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 2
        6 MOVE                             R7 R0
        7 MOVE                             R8 R1
        8 SETLIST                          R4 R7 2 [1]
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 MOVE                             R9 R8
       14 LOADNIL                          R10
       15 LOADNIL                          R11
       16 FORGPREP                         R9
       17 GETTABLE                         R14 R2 R13
       18 JUMPIF                           R14 ; [+9]
       19 LOADB                            R14 1
       20 SETTABLE                         R14 R2 R13
       21 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       23 MOVE                             R15 R3
       24 MOVE                             R16 R13
       25 GETIMPORT                        R14 K2 [table.insert]
       27 CALL                             R14 2 0
       28 FORGLOOP                         R9 2 ; [-12]
       30 FORGLOOP                         R4 2 ; [-18]
       32 RETURN                           R3 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R1
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 LOADB                            R8 1
        7 SETTABLE                         R8 R2 R7
        8 FORGLOOP                         R3 2 ; [-3]
       10 NEWTABLE                         R3 0 0
       12 MOVE                             R4 R0
       13 LOADNIL                          R5
       14 LOADNIL                          R6
       15 FORGPREP                         R4
       16 GETTABLE                         R9 R2 R8
       17 JUMPIFNOT                        R9 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       20 MOVE                             R10 R3
       21 MOVE                             R11 R8
       22 GETIMPORT                        R9 K2 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 ; [-10]
       27 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R0
        2 MOVE                             R7 R1
        3 CALL                             R5 2 1
        4 NAMECALL                         R5 R5 K0 ["await"]
        6 CALL                             R5 1 2
        7 GETUPVAL                         R7 1
        8 MOVE                             R8 R3
        9 MOVE                             R9 R6
       10 CALL                             R7 2 1
       11 MOVE                             R8 R7
       12 LOADNIL                          R9
       13 LOADNIL                          R10
       14 FORGPREP                         R8
       15 GETIMPORT                        R13 K2 [warn]
       17 LOADK                            R14 K3 ["Could not check whether asset %* is open use."]
       18 MOVE                             R16 R12
       19 NAMECALL                         R14 R14 K4 ["format"]
       21 CALL                             R14 2 1
       22 CALL                             R13 1 0
       23 FORGLOOP                         R8 2 ; [-9]
       25 LENGTH                           R8 R7
       26 LOADN                            R9 0
       27 JUMPIFNOTLT                      R9 R8 ; [+3]
       29 LOADK                            R8 K5 ["Failed"]
       30 RETURN                           R8 1
       31 GETUPVAL                         R8 2
       32 MOVE                             R9 R2
       33 MOVE                             R10 R5
       34 CALL                             R8 2 1
       35 LENGTH                           R9 R8
       36 JUMPIFNOTEQKN                    R9 K6 [0] ; [+3]
       38 LOADK                            R9 K7 ["Done"]
       39 RETURN                           R9 1
       40 MOVE                             R9 R4
       41 CALL                             R9 0 1
       42 JUMPIF                           R9 ; [+2]
       43 LOADK                            R9 K8 ["Cancelled"]
       44 RETURN                           R9 1
       45 MOVE                             R11 R8
       46 NAMECALL                         R9 R0 K9 ["makeAvatarAssetsOpenUse"]
       48 CALL                             R9 2 1
       49 NAMECALL                         R9 R9 K0 ["await"]
       51 CALL                             R9 1 0
       52 GETUPVAL                         R9 0
       53 MOVE                             R10 R0
       54 MOVE                             R11 R1
       55 CALL                             R9 2 1
       56 NAMECALL                         R9 R9 K0 ["await"]
       58 CALL                             R9 1 2
       59 GETUPVAL                         R11 1
       60 MOVE                             R12 R8
       61 MOVE                             R13 R10
       62 CALL                             R11 2 1
       63 GETUPVAL                         R12 2
       64 MOVE                             R13 R9
       65 MOVE                             R14 R11
       66 CALL                             R12 2 3
       67 FORGPREP                         R12
       68 GETIMPORT                        R17 K2 [warn]
       70 LOADK                            R18 K10 ["Asset %* could not be made open use."]
       71 MOVE                             R20 R16
       72 NAMECALL                         R18 R18 K4 ["format"]
       74 CALL                             R18 2 1
       75 CALL                             R17 1 0
       76 FORGLOOP                         R12 2 ; [-9]
       78 LENGTH                           R13 R9
       79 JUMPIFNOTEQKN                    R13 K6 [0] ; [+6]
       81 LENGTH                           R13 R11
       82 JUMPIFNOTEQKN                    R13 K6 [0] ; [+3]
       84 LOADK                            R12 K7 ["Done"]
       85 RETURN                           R12 1
       86 LOADK                            R12 K5 ["Failed"]
       87 RETURN                           R12 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getState"]
        3 CALL                             R0 1 1
        4 LOADB                            R1 0
        5 GETTABLEKS                       R2 R0 K1 ["avatarItemDependencyStatus"]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Checking"]
       10 JUMPIFNOTEQ                      R2 R3 ; [+8]
       12 GETTABLEKS                       R2 R0 K3 ["avatarItemDependencyCheckId"]
       14 GETUPVAL                         R3 2
       15 JUMPIFEQ                         R2 R3 ; [+2]
       17 LOADB                            R1 0 +1
       18 LOADB                            R1 1
       19 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["draftAvatarAssets"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETTABLEKS                       R3 R1 K2 ["avatarItemDependencyAssetIds"]
       10 JUMPIF                           R3 ; [+2]
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R1 K3 ["privateAvatarAssetIds"]
       15 JUMPIF                           R4 ; [+2]
       16 NEWTABLE                         R4 0 0
       18 GETTABLEKS                       R5 R1 K4 ["avatarItemDependencyCheckId"]
       20 NEWCLOSURE                       R6 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U0
       23 CAPTURE                          VAL R5
       24 GETUPVAL                         R9 1
       25 CALL                             R9 0 -1
       26 NAMECALL                         R7 R0 K5 ["dispatch"]
       28 CALL                             R7 -1 0
       29 GETIMPORT                        R7 K7 [pcall]
       31 GETUPVAL                         R8 2
       32 GETTABLEKS                       R8 R8 K8 ["publish"]
       34 GETUPVAL                         R9 3
       35 GETTABLEKS                       R9 R9 K9 ["assetAccessController"]
       37 MOVE                             R10 R2
       38 MOVE                             R11 R6
       39 CALL                             R7 4 2
       40 NAMECALL                         R10 R0 K0 ["getState"]
       42 CALL                             R10 1 1
       43 LOADB                            R9 0
       44 GETTABLEKS                       R11 R10 K10 ["avatarItemDependencyStatus"]
       46 GETUPVAL                         R12 0
       47 GETTABLEKS                       R12 R12 K11 ["Checking"]
       49 JUMPIFNOTEQ                      R11 R12 ; [+7]
       51 GETTABLEKS                       R11 R10 K4 ["avatarItemDependencyCheckId"]
       53 JUMPIFEQ                         R11 R5 ; [+2]
       55 LOADB                            R9 0 +1
       56 LOADB                            R9 1
       57 JUMPIF                           R9 ; [+1]
       58 RETURN                           R0 0
       59 JUMPIFNOT                        R7 ; [+4]
       60 LENGTH                           R9 R8
       61 LOADN                            R10 0
       62 JUMPIFNOTLT                      R10 R9 ; [+19]
       64 JUMPIF                           R7 ; [+8]
       65 GETIMPORT                        R9 K13 [warn]
       67 LOADK                            R10 K14 ["Failed to publish the draft dependencies of this avatar item: %*"]
       68 MOVE                             R12 R8
       69 NAMECALL                         R10 R10 K15 ["format"]
       71 CALL                             R10 2 1
       72 CALL                             R9 1 0
       73 GETUPVAL                         R11 4
       74 GETUPVAL                         R12 5
       75 GETTABLEKS                       R12 R12 K16 ["Publish"]
       77 CALL                             R11 1 -1
       78 NAMECALL                         R9 R0 K5 ["dispatch"]
       80 CALL                             R9 -1 0
       81 RETURN                           R0 0
       82 NEWTABLE                         R9 0 0
       84 MOVE                             R10 R2
       85 LOADNIL                          R11
       86 LOADNIL                          R12
       87 FORGPREP                         R10
       88 GETTABLEKS                       R17 R14 K17 ["AssetId"]
       90 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       92 MOVE                             R16 R9
       93 GETIMPORT                        R15 K20 [table.insert]
       95 CALL                             R15 2 0
       96 FORGLOOP                         R10 2 ; [-9]
       98 GETIMPORT                        R10 K7 [pcall]
      100 GETUPVAL                         R11 6
      101 GETUPVAL                         R12 7
      102 MOVE                             R13 R3
      103 MOVE                             R14 R4
      104 GETUPVAL                         R15 8
      105 MOVE                             R16 R4
      106 MOVE                             R17 R9
      107 CALL                             R15 2 1
      108 MOVE                             R16 R6
      109 CALL                             R10 6 2
      110 NAMECALL                         R13 R0 K0 ["getState"]
      112 CALL                             R13 1 1
      113 LOADB                            R12 0
      114 GETTABLEKS                       R14 R13 K10 ["avatarItemDependencyStatus"]
      116 GETUPVAL                         R15 0
      117 GETTABLEKS                       R15 R15 K11 ["Checking"]
      119 JUMPIFNOTEQ                      R14 R15 ; [+7]
      121 GETTABLEKS                       R14 R13 K4 ["avatarItemDependencyCheckId"]
      123 JUMPIFEQ                         R14 R5 ; [+2]
      125 LOADB                            R12 0 +1
      126 LOADB                            R12 1
      127 JUMPIF                           R12 ; [+1]
      128 RETURN                           R0 0
      129 JUMPIFNOT                        R10 ; [+2]
      130 JUMPIFEQKS                       R11 K21 ["Done"] ; [+19]
      132 JUMPIF                           R10 ; [+8]
      133 GETIMPORT                        R12 K13 [warn]
      135 LOADK                            R13 K22 ["Failed to make the dependencies of this avatar item open use: %*"]
      136 MOVE                             R15 R11
      137 NAMECALL                         R13 R13 K15 ["format"]
      139 CALL                             R13 2 1
      140 CALL                             R12 1 0
      141 GETUPVAL                         R14 4
      142 GETUPVAL                         R15 5
      143 GETTABLEKS                       R15 R15 K23 ["OpenUse"]
      145 CALL                             R14 1 -1
      146 NAMECALL                         R12 R0 K5 ["dispatch"]
      148 CALL                             R12 -1 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R14 9
      151 NEWTABLE                         R15 0 0
      153 LOADB                            R16 1
      154 CALL                             R14 2 -1
      155 NAMECALL                         R12 R0 K5 ["dispatch"]
      157 CALL                             R12 -1 0
      158 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarItemDependencyActionsStarted"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarItemDependencyActionFailed"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["AvatarAssetPrivacyCheckReceived"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K11 ["Types"]
       40 GETTABLEKS                       R5 R5 K12 ["AvatarItemDependencyFailure"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K11 ["Types"]
       49 GETTABLEKS                       R6 R6 K13 ["AvatarItemDependencyStatus"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K14 ["Util"]
       58 GETTABLEKS                       R7 R7 K15 ["Publishing"]
       60 GETTABLEKS                       R7 R7 K16 ["publishAvatarItemDependencies"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K14 ["Util"]
       69 GETTABLEKS                       R8 R8 K15 ["Publishing"]
       71 GETTABLEKS                       R8 R8 K17 ["getPrivateAvatarAssetIds"]
       73 CALL                             R7 1 1
       74 DUPCLOSURE                       R8 K18 [PROTO_0]
       75 DUPCLOSURE                       R9 K19 [PROTO_1]
       76 DUPCLOSURE                       R10 K20 [PROTO_2]
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 DUPCLOSURE                       R11 K21 [PROTO_5]
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R3
       89 RETURN                           R11 1
