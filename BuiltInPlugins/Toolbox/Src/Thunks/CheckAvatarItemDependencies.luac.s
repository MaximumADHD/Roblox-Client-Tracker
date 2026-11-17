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
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R0
       26 FASTPCALL                        pcall 1 ; [+2]
       27 GETIMPORT                        R3 K12 [pcall]
       29 CALL                             R3 1 2
       30 LOADNIL                          R5
       31 SETTABLEKS                       R5 R0 K10 ["Parent"]
       33 NAMECALL                         R5 R2 K13 ["Destroy"]
       35 CALL                             R5 1 0
       36 GETUPVAL                         R5 0
       37 LOADNIL                          R6
       38 SETTABLE                         R6 R5 R0
       39 JUMPIF                           R3 ; [+5]
       40 GETIMPORT                        R5 K15 [error]
       42 MOVE                             R6 R4
       43 LOADN                            R7 0
       44 CALL                             R5 2 0
       45 JUMPIFNOTEQKB                    R4 FALSE ; [+3]
       47 LOADNIL                          R5
       48 RETURN                           R5 1
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K16 ["getAssetIdsFromInstance"]
       52 MOVE                             R6 R0
       53 GETTABLEKS                       R7 R1 K17 ["contentProvider"]
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1

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
       15 NEWCLOSURE                       R5 P1
       16 CAPTURE                          REF R3
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 FASTPCALL                        pcall 1 ; [+2]
       22 GETIMPORT                        R4 K4 [pcall]
       24 CALL                             R4 1 2
       25 NAMECALL                         R7 R0 K1 ["getState"]
       27 CALL                             R7 1 1
       28 LOADB                            R6 0
       29 GETTABLEKS                       R8 R7 K5 ["avatarItemDependencyStatus"]
       31 GETUPVAL                         R9 1
       32 GETTABLEKS                       R9 R9 K6 ["Checking"]
       34 JUMPIFNOTEQ                      R8 R9 ; [+7]
       36 GETTABLEKS                       R8 R7 K2 ["avatarItemDependencyCheckId"]
       38 JUMPIFEQ                         R8 R1 ; [+2]
       40 LOADB                            R6 0 +1
       41 LOADB                            R6 1
       42 JUMPIF                           R6 ; [+2]
       43 CLOSEUPVALS                      R3
       44 RETURN                           R0 0
       45 JUMPIFNOT                        R4 ; [+16]
       46 JUMPIFNOTEQKNIL                  R3 ; [+15]
       48 GETIMPORT                        R6 K8 [warn]
       50 LOADK                            R7 K9 ["Failed to publish the assets in this avatar item that haven't been uploaded yet."]
       51 CALL                             R6 1 0
       52 GETUPVAL                         R8 6
       53 GETUPVAL                         R9 7
       54 GETTABLEKS                       R9 R9 K10 ["Publish"]
       56 CALL                             R8 1 -1
       57 NAMECALL                         R6 R0 K0 ["dispatch"]
       59 CALL                             R6 -1 0
       60 CLOSEUPVALS                      R3
       61 RETURN                           R0 0
       62 JUMPIF                           R4 ; [+17]
       63 GETIMPORT                        R6 K8 [warn]
       65 LOADK                            R7 K11 ["Failed to check the dependencies of this avatar item: %*"]
       66 MOVE                             R9 R5
       67 NAMECALL                         R7 R7 K12 ["format"]
       69 CALL                             R7 2 1
       70 CALL                             R6 1 0
       71 GETUPVAL                         R8 8
       72 LOADNIL                          R9
       73 LOADB                            R10 0
       74 CALL                             R8 2 -1
       75 NAMECALL                         R6 R0 K0 ["dispatch"]
       77 CALL                             R6 -1 0
       78 CLOSEUPVALS                      R3
       79 RETURN                           R0 0
       80 GETTABLEKS                       R7 R5 K13 ["blockedAssetIds"]
       82 LENGTH                           R6 R7
       83 LOADN                            R7 0
       84 JUMPIFNOTLT                      R7 R6 ; [+11]
       86 GETUPVAL                         R8 6
       87 GETUPVAL                         R9 7
       88 GETTABLEKS                       R9 R9 K10 ["Publish"]
       90 CALL                             R8 1 -1
       91 NAMECALL                         R6 R0 K0 ["dispatch"]
       93 CALL                             R6 -1 0
       94 CLOSEUPVALS                      R3
       95 RETURN                           R0 0
       96 NEWCLOSURE                       R7 P2
       97 CAPTURE                          UPVAL U9
       98 CAPTURE                          UPVAL U10
       99 CAPTURE                          REF R3
      100 FASTPCALL                        pcall 1 ; [+2]
      101 GETIMPORT                        R6 K4 [pcall]
      103 CALL                             R6 1 4
      104 NAMECALL                         R11 R0 K1 ["getState"]
      106 CALL                             R11 1 1
      107 LOADB                            R10 0
      108 GETTABLEKS                       R12 R11 K5 ["avatarItemDependencyStatus"]
      110 GETUPVAL                         R13 1
      111 GETTABLEKS                       R13 R13 K6 ["Checking"]
      113 JUMPIFNOTEQ                      R12 R13 ; [+7]
      115 GETTABLEKS                       R12 R11 K2 ["avatarItemDependencyCheckId"]
      117 JUMPIFEQ                         R12 R1 ; [+2]
      119 LOADB                            R10 0 +1
      120 LOADB                            R10 1
      121 JUMPIF                           R10 ; [+2]
      122 CLOSEUPVALS                      R3
      123 RETURN                           R0 0
      124 JUMPIF                           R6 ; [+18]
      125 GETIMPORT                        R10 K8 [warn]
      127 LOADK                            R11 K14 ["Failed to check whether the dependencies of this avatar item are open use: %*"]
      128 MOVE                             R13 R7
      129 NAMECALL                         R11 R11 K12 ["format"]
      131 CALL                             R11 2 1
      132 CALL                             R10 1 0
      133 GETUPVAL                         R12 6
      134 GETUPVAL                         R13 7
      135 GETTABLEKS                       R13 R13 K15 ["OpenUse"]
      137 CALL                             R12 1 -1
      138 NAMECALL                         R10 R0 K0 ["dispatch"]
      140 CALL                             R10 -1 0
      141 CLOSEUPVALS                      R3
      142 RETURN                           R0 0
      143 LENGTH                           R10 R9
      144 LOADN                            R11 0
      145 JUMPIFNOTLT                      R11 R10 ; [+25]
      147 MOVE                             R10 R9
      148 LOADNIL                          R11
      149 LOADNIL                          R12
      150 FORGPREP                         R10
      151 GETIMPORT                        R15 K8 [warn]
      153 LOADK                            R16 K16 ["Could not check whether asset %* is open use."]
      154 MOVE                             R18 R14
      155 NAMECALL                         R16 R16 K12 ["format"]
      157 CALL                             R16 2 1
      158 CALL                             R15 1 0
      159 FORGLOOP                         R10 2 ; [-9]
      161 GETUPVAL                         R12 6
      162 GETUPVAL                         R13 7
      163 GETTABLEKS                       R13 R13 K15 ["OpenUse"]
      165 CALL                             R12 1 -1
      166 NAMECALL                         R10 R0 K0 ["dispatch"]
      168 CALL                             R10 -1 0
      169 CLOSEUPVALS                      R3
      170 RETURN                           R0 0
      171 GETTABLEKS                       R11 R5 K17 ["drafts"]
      173 LENGTH                           R10 R11
      174 LOADN                            R11 0
      175 JUMPIFLT                         R11 R10 ; [+5]
      177 LENGTH                           R10 R7
      178 LOADN                            R11 0
      179 JUMPIFNOTLT                      R11 R10 ; [+12]
      181 GETUPVAL                         R12 11
      182 GETTABLEKS                       R13 R5 K17 ["drafts"]
      184 MOVE                             R14 R7
      185 MOVE                             R15 R3
      186 CALL                             R12 3 -1
      187 NAMECALL                         R10 R0 K0 ["dispatch"]
      189 CALL                             R10 -1 0
      190 CLOSEUPVALS                      R3
      191 RETURN                           R0 0
      192 GETUPVAL                         R12 8
      193 NEWTABLE                         R13 0 0
      195 LOADB                            R14 1
      196 CALL                             R12 2 -1
      197 NAMECALL                         R10 R0 K0 ["dispatch"]
      199 CALL                             R10 -1 0
      200 CLOSEUPVALS                      R3
      201 RETURN                           R0 0

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
