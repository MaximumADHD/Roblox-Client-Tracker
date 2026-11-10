PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["publishService"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["PublishDescendantAssetsAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETIMPORT                        R2 K2 [task.wait]
        5 CALL                             R2 0 0
        6 JUMPBACK                         ; [-7]
        7 GETUPVAL                         R2 0
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R0
       10 GETIMPORT                        R2 K5 [Instance.new]
       12 LOADK                            R3 K6 ["Folder"]
       13 CALL                             R2 1 1
       14 LOADK                            R3 K7 ["TemporaryInstances"]
       15 SETTABLEKS                       R3 R2 K8 ["Name"]
       17 GETTABLEKS                       R3 R1 K9 ["pluginGuiService"]
       19 SETTABLEKS                       R3 R2 K10 ["Parent"]
       21 SETTABLEKS                       R2 R0 K10 ["Parent"]
       23 GETIMPORT                        R3 K12 [pcall]
       25 NEWCLOSURE                       R4 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 CALL                             R3 1 2
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R0 K10 ["Parent"]
       32 NAMECALL                         R5 R2 K13 ["Destroy"]
       34 CALL                             R5 1 0
       35 GETUPVAL                         R5 0
       36 LOADNIL                          R6
       37 SETTABLE                         R6 R5 R0
       38 JUMPIF                           R3 ; [+5]
       39 GETIMPORT                        R5 K15 [error]
       41 MOVE                             R6 R4
       42 LOADN                            R7 0
       43 CALL                             R5 2 0
       44 JUMPIFNOTEQKB                    R4 FALSE ; [+3]
       46 LOADNIL                          R5
       47 RETURN                           R5 1
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K16 ["getAssetIdsFromInstance"]
       51 MOVE                             R6 R0
       52 GETTABLEKS                       R7 R1 K17 ["contentProvider"]
       54 CALL                             R5 2 -1
       55 RETURN                           R5 -1

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R0 1
        1 GETUPVAL                         R1 2
        2 GETUPVAL                         R2 3
        3 CALL                             R0 2 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 0
        6 JUMPIFNOTEQKNIL                  R0 ; [+3]
        8 LOADNIL                          R0
        9 RETURN                           R0 1
       10 GETUPVAL                         R0 4
       11 GETTABLEKS                       R0 R0 K0 ["check"]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R1 R1 K1 ["assetAccessController"]
       16 GETUPVAL                         R2 0
       17 CALL                             R0 2 -1
       18 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 NAMECALL                         R0 R0 K0 ["await"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 -1
        2 NAMECALL                         R1 R0 K0 ["dispatch"]
        4 CALL                             R1 -1 0
        5 NAMECALL                         R1 R0 K1 ["getState"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K2 ["avatarItemDependencyCheckId"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R1
       14 LOADNIL                          R3
       15 GETIMPORT                        R4 K4 [pcall]
       17 NEWCLOSURE                       R5 P1
       18 CAPTURE                          REF R3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          UPVAL U5
       23 CALL                             R4 1 2
       24 NAMECALL                         R7 R0 K1 ["getState"]
       26 CALL                             R7 1 1
       27 LOADB                            R6 0
       28 GETTABLEKS                       R8 R7 K5 ["avatarItemDependencyStatus"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K6 ["Checking"]
       33 JUMPIFNOTEQ                      R8 R9 ; [+7]
       35 GETTABLEKS                       R8 R7 K2 ["avatarItemDependencyCheckId"]
       37 JUMPIFEQ                         R8 R1 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 JUMPIF                           R6 ; [+2]
       42 CLOSEUPVALS                      R3
       43 RETURN                           R0 0
       44 JUMPIFNOT                        R4 ; [+16]
       45 JUMPIFNOTEQKNIL                  R3 ; [+15]
       47 GETIMPORT                        R6 K8 [warn]
       49 LOADK                            R7 K9 ["Failed to publish the assets in this avatar item that haven't been uploaded yet."]
       50 CALL                             R6 1 0
       51 GETUPVAL                         R8 6
       52 GETUPVAL                         R9 7
       53 GETTABLEKS                       R9 R9 K10 ["Publish"]
       55 CALL                             R8 1 -1
       56 NAMECALL                         R6 R0 K0 ["dispatch"]
       58 CALL                             R6 -1 0
       59 CLOSEUPVALS                      R3
       60 RETURN                           R0 0
       61 JUMPIF                           R4 ; [+17]
       62 GETIMPORT                        R6 K8 [warn]
       64 LOADK                            R7 K11 ["Failed to check the dependencies of this avatar item: %*"]
       65 MOVE                             R9 R5
       66 NAMECALL                         R7 R7 K12 ["format"]
       68 CALL                             R7 2 1
       69 CALL                             R6 1 0
       70 GETUPVAL                         R8 8
       71 LOADNIL                          R9
       72 LOADB                            R10 0
       73 CALL                             R8 2 -1
       74 NAMECALL                         R6 R0 K0 ["dispatch"]
       76 CALL                             R6 -1 0
       77 CLOSEUPVALS                      R3
       78 RETURN                           R0 0
       79 GETTABLEKS                       R7 R5 K13 ["blockedAssetIds"]
       81 LENGTH                           R6 R7
       82 LOADN                            R7 0
       83 JUMPIFNOTLT                      R7 R6 ; [+11]
       85 GETUPVAL                         R8 6
       86 GETUPVAL                         R9 7
       87 GETTABLEKS                       R9 R9 K10 ["Publish"]
       89 CALL                             R8 1 -1
       90 NAMECALL                         R6 R0 K0 ["dispatch"]
       92 CALL                             R6 -1 0
       93 CLOSEUPVALS                      R3
       94 RETURN                           R0 0
       95 GETIMPORT                        R6 K4 [pcall]
       97 NEWCLOSURE                       R7 P2
       98 CAPTURE                          UPVAL U9
       99 CAPTURE                          UPVAL U10
      100 CAPTURE                          REF R3
      101 CALL                             R6 1 4
      102 NAMECALL                         R11 R0 K1 ["getState"]
      104 CALL                             R11 1 1
      105 LOADB                            R10 0
      106 GETTABLEKS                       R12 R11 K5 ["avatarItemDependencyStatus"]
      108 GETUPVAL                         R13 1
      109 GETTABLEKS                       R13 R13 K6 ["Checking"]
      111 JUMPIFNOTEQ                      R12 R13 ; [+7]
      113 GETTABLEKS                       R12 R11 K2 ["avatarItemDependencyCheckId"]
      115 JUMPIFEQ                         R12 R1 ; [+2]
      117 LOADB                            R10 0 +1
      118 LOADB                            R10 1
      119 JUMPIF                           R10 ; [+2]
      120 CLOSEUPVALS                      R3
      121 RETURN                           R0 0
      122 JUMPIF                           R6 ; [+18]
      123 GETIMPORT                        R10 K8 [warn]
      125 LOADK                            R11 K14 ["Failed to check whether the dependencies of this avatar item are open use: %*"]
      126 MOVE                             R13 R7
      127 NAMECALL                         R11 R11 K12 ["format"]
      129 CALL                             R11 2 1
      130 CALL                             R10 1 0
      131 GETUPVAL                         R12 6
      132 GETUPVAL                         R13 7
      133 GETTABLEKS                       R13 R13 K15 ["OpenUse"]
      135 CALL                             R12 1 -1
      136 NAMECALL                         R10 R0 K0 ["dispatch"]
      138 CALL                             R10 -1 0
      139 CLOSEUPVALS                      R3
      140 RETURN                           R0 0
      141 LENGTH                           R10 R9
      142 LOADN                            R11 0
      143 JUMPIFNOTLT                      R11 R10 ; [+25]
      145 MOVE                             R10 R9
      146 LOADNIL                          R11
      147 LOADNIL                          R12
      148 FORGPREP                         R10
      149 GETIMPORT                        R15 K8 [warn]
      151 LOADK                            R16 K16 ["Could not check whether asset %* is open use."]
      152 MOVE                             R18 R14
      153 NAMECALL                         R16 R16 K12 ["format"]
      155 CALL                             R16 2 1
      156 CALL                             R15 1 0
      157 FORGLOOP                         R10 2 ; [-9]
      159 GETUPVAL                         R12 6
      160 GETUPVAL                         R13 7
      161 GETTABLEKS                       R13 R13 K15 ["OpenUse"]
      163 CALL                             R12 1 -1
      164 NAMECALL                         R10 R0 K0 ["dispatch"]
      166 CALL                             R10 -1 0
      167 CLOSEUPVALS                      R3
      168 RETURN                           R0 0
      169 GETTABLEKS                       R11 R5 K17 ["drafts"]
      171 LENGTH                           R10 R11
      172 LOADN                            R11 0
      173 JUMPIFLT                         R11 R10 ; [+5]
      175 LENGTH                           R10 R7
      176 LOADN                            R11 0
      177 JUMPIFNOTLT                      R11 R10 ; [+12]
      179 GETUPVAL                         R12 11
      180 GETTABLEKS                       R13 R5 K17 ["drafts"]
      182 MOVE                             R14 R7
      183 MOVE                             R15 R3
      184 CALL                             R12 3 -1
      185 NAMECALL                         R10 R0 K0 ["dispatch"]
      187 CALL                             R10 -1 0
      188 CLOSEUPVALS                      R3
      189 RETURN                           R0 0
      190 GETUPVAL                         R12 8
      191 NEWTABLE                         R13 0 0
      193 LOADB                            R14 1
      194 CALL                             R12 2 -1
      195 NAMECALL                         R10 R0 K0 ["dispatch"]
      197 CALL                             R10 -1 0
      198 CLOSEUPVALS                      R3
      199 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U8
       13 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Actions"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarItemDependencyCheckStarted"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Actions"]
       22 GETTABLEKS                       R3 R3 K9 ["AvatarItemDependencyActionsReceived"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Actions"]
       31 GETTABLEKS                       R4 R4 K10 ["AvatarAssetPrivacyCheckReceived"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K7 ["Actions"]
       40 GETTABLEKS                       R5 R5 K11 ["AvatarItemDependencyActionFailed"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K6 ["Src"]
       47 GETTABLEKS                       R6 R6 K12 ["Types"]
       49 GETTABLEKS                       R6 R6 K13 ["AvatarItemDependencyFailure"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K12 ["Types"]
       58 GETTABLEKS                       R7 R7 K14 ["AvatarItemDependencyStatus"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K15 ["Util"]
       67 GETTABLEKS                       R8 R8 K16 ["AssetConfigUtil"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K6 ["Src"]
       74 GETTABLEKS                       R9 R9 K15 ["Util"]
       76 GETTABLEKS                       R9 R9 K17 ["Publishing"]
       78 GETTABLEKS                       R9 R9 K18 ["publishAvatarItemDependencies"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K6 ["Src"]
       85 GETTABLEKS                       R10 R10 K15 ["Util"]
       87 GETTABLEKS                       R10 R10 K17 ["Publishing"]
       89 GETTABLEKS                       R10 R10 K19 ["getPrivateAvatarAssetIds"]
       91 CALL                             R9 1 1
       92 NEWTABLE                         R11 0 0
       94 DUPTABLE                         R12 K22 [{["__mode"] = "k"}]
       95 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
       97 GETIMPORT                        R10 K24 [setmetatable]
       99 CALL                             R10 2 1
      100 DUPCLOSURE                       R11 K25 [PROTO_1]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R7
      103 DUPCLOSURE                       R12 K26 [PROTO_6]
      104 CAPTURE                          VAL R1
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R4
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R2
      113 RETURN                           R12 1
