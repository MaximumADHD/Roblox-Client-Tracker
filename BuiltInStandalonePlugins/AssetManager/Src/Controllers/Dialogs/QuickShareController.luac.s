PROTO_0:
        0 DUPTABLE                         R0 K3 [{"Items", "Selection", "Set"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["Items"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["Selection"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["Set"]
       13 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R1 K6 [{[1], ["_universes"], ["_destroyed"] = False, ["OnCollabItemsChanged"], ["OnUniverseItemsChanged"]}]
        1 GETUPVAL                         R2 0
        2 CALL                             R2 0 1
        3 SETTABLEKS                       R2 R1 K0 ["_collab"]
        5 GETUPVAL                         R2 0
        6 CALL                             R2 0 1
        7 SETTABLEKS                       R2 R1 K1 ["_universes"]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K7 ["new"]
       12 CALL                             R2 0 1
       13 SETTABLEKS                       R2 R1 K4 ["OnCollabItemsChanged"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K7 ["new"]
       18 CALL                             R2 0 1
       19 SETTABLEKS                       R2 R1 K5 ["OnUniverseItemsChanged"]
       21 GETUPVAL                         R4 2
       22 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       24 MOVE                             R3 R1
       25 GETIMPORT                        R2 K9 [setmetatable]
       27 CALL                             R2 2 0
       28 MOVE                             R4 R0
       29 NAMECALL                         R2 R1 K10 ["_loadCollaboratorItems"]
       31 CALL                             R2 2 0
       32 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_collab"]
        2 GETTABLEKS                       R4 R2 K1 ["Set"]
        4 GETTABLEKS                       R5 R1 K2 ["Id"]
        6 GETTABLE                         R3 R4 R5
        7 JUMPIFNOT                        R3 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R1 K3 ["Action"]
       11 JUMPIF                           R3 ; [+3]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K4 ["Use"]
       15 SETTABLEKS                       R3 R1 K3 ["Action"]
       17 GETTABLEKS                       R3 R2 K1 ["Set"]
       19 GETTABLEKS                       R4 R1 K2 ["Id"]
       21 LOADB                            R5 1
       22 SETTABLE                         R5 R3 R4
       23 GETTABLEKS                       R4 R2 K5 ["Selection"]
       25 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       27 MOVE                             R5 R1
       28 GETIMPORT                        R3 K8 [table.insert]
       30 CALL                             R3 2 0
       31 NAMECALL                         R3 R0 K9 ["_collaboratorsUpdated"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_collab"]
        2 GETTABLEKS                       R5 R3 K1 ["Set"]
        4 GETTABLEKS                       R6 R1 K2 ["Id"]
        6 GETTABLE                         R4 R5 R6
        7 JUMPIF                           R4 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R3 K1 ["Set"]
       11 GETTABLEKS                       R5 R1 K2 ["Id"]
       13 LOADNIL                          R6
       14 SETTABLE                         R6 R4 R5
       15 GETIMPORT                        R4 K5 [table.remove]
       17 GETTABLEKS                       R5 R3 K6 ["Selection"]
       19 MOVE                             R6 R2
       20 CALL                             R4 2 0
       21 NAMECALL                         R4 R0 K7 ["_collaboratorsUpdated"]
       23 CALL                             R4 1 0
       24 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R2
        2 SETTABLEKS                       R3 R1 K0 ["Action"]
        4 NAMECALL                         R3 R0 K1 ["_collaboratorsUpdated"]
        6 CALL                             R3 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R2 K3 [{"Id", "Name", "Subject"}]
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 SETTABLEKS                       R3 R2 K0 ["Id"]
        5 GETTABLEKS                       R3 R0 K4 ["Username"]
        7 SETTABLEKS                       R3 R2 K1 ["Name"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["User"]
       12 SETTABLEKS                       R3 R2 K2 ["Subject"]
       14 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIF                           R1 ; [+1]
        4 JUMPIF                           R0 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K1 ["map"]
       10 MOVE                             R4 R0
       11 DUPCLOSURE                       R5 K2 [PROTO_6]
       12 CAPTURE                          UPVAL U2
       13 CALL                             R3 2 -1
       14 NAMECALL                         R1 R1 K3 ["_addCollaboratorItems"]
       16 CALL                             R1 -1 0
       17 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 NEWTABLE                         R3 0 1
        8 DUPTABLE                         R4 K5 [{"Id", "Name", "Uri", "Subject"}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["Id"]
       12 SETTABLEKS                       R5 R4 K1 ["Id"]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K2 ["Name"]
       17 SETTABLEKS                       R5 R4 K2 ["Name"]
       19 SETTABLEKS                       R0 R4 K3 ["Uri"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K6 ["Group"]
       24 SETTABLEKS                       R5 R4 K4 ["Subject"]
       26 SETLIST                          R3 R4 1 [1]
       28 NAMECALL                         R1 R1 K7 ["_addCollaboratorItems"]
       30 CALL                             R1 2 0
       31 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_destroyed"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 1
       10 MOVE                             R8 R5
       11 NEWCLOSURE                       R9 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R5
       14 CAPTURE                          UPVAL U2
       15 NAMECALL                         R6 R6 K1 ["getThumbnailForScopeAsync"]
       17 CALL                             R6 3 0
       18 FORGLOOP                         R1 2 ; [-10]
       20 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["Error fetching groups: %*"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K1 ["pretty"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 NAMECALL                         R2 R2 K2 ["format"]
        9 CALL                             R2 2 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Fetching QuickShare items"]
        2 CALL                             R2 1 0
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CALL                             R2 1 0
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U3
       13 GETUPVAL                         R3 4
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+17]
       16 GETUPVAL                         R3 5
       17 GETTABLEKS                       R3 R3 K1 ["Networking"]
       19 GETTABLEKS                       R3 R3 K2 ["fetchGroupsAsync"]
       21 CALL                             R3 0 1
       22 MOVE                             R5 R2
       23 NAMECALL                         R3 R3 K3 ["andThen"]
       25 CALL                             R3 2 1
       26 DUPCLOSURE                       R5 K4 [PROTO_10]
       27 CAPTURE                          UPVAL U0
       28 CAPTURE                          UPVAL U2
       29 NAMECALL                         R3 R3 K5 ["catch"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0
       33 MOVE                             R5 R2
       34 NAMECALL                         R3 R1 K2 ["fetchGroupsAsync"]
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_13:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K3 ["append"]
        5 GETTABLEKS                       R4 R0 K4 ["_collab"]
        7 GETTABLEKS                       R4 R4 K5 ["Items"]
        9 MOVE                             R5 R1
       10 CALL                             R3 2 1
       11 DUPCLOSURE                       R4 K6 [PROTO_12]
       12 CALL                             R2 2 0
       13 NAMECALL                         R2 R0 K7 ["_collaboratorsUpdated"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_collab"]
        2 GETTABLEKS                       R1 R1 K1 ["Set"]
        4 GETTABLEKS                       R2 R0 K0 ["_collab"]
        6 GETTABLEKS                       R2 R2 K2 ["Items"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["count"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 JUMPIFNOTEQKN                    R3 K4 [0] ; [+2]
       15 RETURN                           R2 1
       16 NEWTABLE                         R3 0 0
       18 MOVE                             R4 R2
       19 LOADNIL                          R5
       20 LOADNIL                          R6
       21 FORGPREP                         R4
       22 GETTABLEKS                       R10 R8 K5 ["Id"]
       24 GETTABLE                         R9 R1 R10
       25 JUMPIF                           R9 ; [+7]
       26 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       28 MOVE                             R10 R3
       29 MOVE                             R11 R8
       30 GETIMPORT                        R9 K8 [table.insert]
       32 CALL                             R9 2 0
       33 FORGLOOP                         R4 2 ; [-12]
       35 RETURN                           R3 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["_universes"]
        2 GETTABLEKS                       R4 R3 K1 ["Selection"]
        4 GETTABLEKS                       R5 R3 K2 ["Set"]
        6 GETIMPORT                        R6 K5 [string.split]
        8 MOVE                             R7 R1
        9 LOADK                            R8 K6 [","]
       10 CALL                             R6 2 1
       11 NEWTABLE                         R7 0 0
       13 MOVE                             R8 R6
       14 LOADNIL                          R9
       15 LOADNIL                          R10
       16 FORGPREP                         R8
       17 GETIMPORT                        R13 K8 [string.gsub]
       19 GETTABLE                         R14 R6 R11
       20 LOADK                            R15 K9 ["%s+"]
       21 LOADK                            R16 K10 [""]
       22 CALL                             R13 3 1
       23 SETTABLE                         R13 R6 R11
       24 GETTABLE                         R14 R6 R11
       25 FASTCALL1                        TONUMBER R14 ; [+2]
       26 GETIMPORT                        R13 K12 [tonumber]
       28 CALL                             R13 1 1
       29 JUMPIFNOT                        R13 ; [+5]
       30 LOADN                            R14 0
       31 JUMPIFLE                         R13 R14 ; [+3]
       33 GETTABLE                         R14 R5 R13
       34 JUMPIFNOT                        R14 ; [+3]
       35 LOADB                            R14 0
       36 LOADNIL                          R15
       37 RETURN                           R14 2
       38 LENGTH                           R14 R7
       39 JUMPIFNOTLT                      R14 R2 ; [+8]
       41 FASTCALL2                        TABLE_INSERT R7 R13 ; [+5]
       43 MOVE                             R15 R7
       44 MOVE                             R16 R13
       45 GETIMPORT                        R14 K15 [table.insert]
       47 CALL                             R14 2 0
       48 FORGLOOP                         R8 2 ; [-32]
       50 MOVE                             R8 R7
       51 LOADNIL                          R9
       52 LOADNIL                          R10
       53 FORGPREP                         R8
       54 GETTABLE                         R13 R5 R12
       55 JUMPIF                           R13 ; [+35]
       56 DUPTABLE                         R15 K21 [{"Id", "Name", "Uri", "Subject", "Action"}]
       57 SETTABLEKS                       R12 R15 K16 ["Id"]
       59 FASTCALL1                        TOSTRING R12 ; [+3]
       60 MOVE                             R17 R12
       61 GETIMPORT                        R16 K23 [tostring]
       63 CALL                             R16 1 1
       64 SETTABLEKS                       R16 R15 K17 ["Name"]
       66 LOADK                            R16 K24 ["rbxthumb://type=GameIcon&id=%*&w=128&h=128"]
       67 MOVE                             R18 R12
       68 NAMECALL                         R16 R16 K25 ["format"]
       70 CALL                             R16 2 1
       71 SETTABLEKS                       R16 R15 K18 ["Uri"]
       73 GETUPVAL                         R16 0
       74 GETTABLEKS                       R16 R16 K26 ["Universe"]
       76 SETTABLEKS                       R16 R15 K19 ["Subject"]
       78 GETUPVAL                         R16 1
       79 GETTABLEKS                       R16 R16 K27 ["Use"]
       81 SETTABLEKS                       R16 R15 K20 ["Action"]
       83 FASTCALL2                        TABLE_INSERT R4 R15 ; [+4]
       85 MOVE                             R14 R4
       86 GETIMPORT                        R13 K15 [table.insert]
       88 CALL                             R13 2 0
       89 LOADB                            R13 1
       90 SETTABLE                         R13 R5 R12
       91 FORGLOOP                         R8 2 ; [-38]
       93 NAMECALL                         R8 R0 K28 ["_universesUpdated"]
       95 CALL                             R8 1 0
       96 GETIMPORT                        R8 K30 [table.concat]
       98 MOVE                             R9 R6
       99 LOADK                            R10 K6 [","]
      100 LENGTH                           R12 R7
      101 ADDK                             R11 R12 K31 [1]
      102 CALL                             R8 3 1
      103 LOADB                            R9 1
      104 MOVE                             R10 R8
      105 RETURN                           R9 2

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_universes"]
        2 GETTABLEKS                       R5 R3 K1 ["Set"]
        4 GETTABLEKS                       R6 R1 K2 ["Id"]
        6 GETTABLE                         R4 R5 R6
        7 JUMPIF                           R4 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R4 R3 K1 ["Set"]
       11 GETTABLEKS                       R5 R1 K2 ["Id"]
       13 LOADNIL                          R6
       14 SETTABLE                         R6 R4 R5
       15 GETIMPORT                        R4 K5 [table.remove]
       17 GETTABLEKS                       R5 R3 K6 ["Selection"]
       19 MOVE                             R6 R2
       20 CALL                             R4 2 0
       21 NAMECALL                         R4 R0 K7 ["_universesUpdated"]
       23 CALL                             R4 1 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_collab"]
        2 RETURN                           R1 1

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_universes"]
        2 RETURN                           R1 1

PROTO_19:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_collab"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K3 ["_collab"]
        7 GETTABLEKS                       R1 R0 K4 ["OnCollabItemsChanged"]
        9 GETTABLEKS                       R3 R0 K3 ["_collab"]
       11 NAMECALL                         R1 R1 K5 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_20:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETTABLEKS                       R2 R0 K3 ["_universes"]
        4 CALL                             R1 1 1
        5 SETTABLEKS                       R1 R0 K3 ["_universes"]
        7 GETTABLEKS                       R1 R0 K4 ["OnUniverseItemsChanged"]
        9 GETTABLEKS                       R3 R0 K3 ["_universes"]
       11 NAMECALL                         R1 R1 K5 ["Fire"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["AssetManagement"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Types"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K12 ["Util"]
       37 GETTABLEKS                       R6 R5 K13 ["Signal"]
       39 GETIMPORT                        R7 K5 [require]
       41 GETTABLEKS                       R8 R0 K8 ["Src"]
       43 GETTABLEKS                       R8 R8 K14 ["Networking"]
       45 GETTABLEKS                       R8 R8 K15 ["getFriendsAsync"]
       47 CALL                             R7 1 1
       48 GETIMPORT                        R8 K5 [require]
       50 GETTABLEKS                       R9 R0 K8 ["Src"]
       52 GETTABLEKS                       R9 R9 K12 ["Util"]
       54 GETTABLEKS                       R9 R9 K16 ["logIfDebug"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K5 [require]
       59 GETTABLEKS                       R10 R0 K8 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Flags"]
       63 GETTABLEKS                       R10 R10 K18 ["getFFlagAmrUseAssetManagementNetworking"]
       65 CALL                             R9 1 1
       66 GETTABLEKS                       R10 R1 K19 ["Enums"]
       68 GETTABLEKS                       R10 R10 K20 ["PermissionsAction"]
       70 GETTABLEKS                       R11 R1 K19 ["Enums"]
       72 GETTABLEKS                       R11 R11 K21 ["PermissionsSubject"]
       74 NEWTABLE                         R12 16 0
       76 SETTABLEKS                       R12 R12 K22 ["__index"]
       78 DUPCLOSURE                       R13 K23 [PROTO_0]
       79 DUPCLOSURE                       R14 K24 [PROTO_1]
       80 CAPTURE                          VAL R13
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R12
       83 SETTABLEKS                       R14 R12 K25 ["new"]
       85 DUPCLOSURE                       R14 K26 [PROTO_2]
       86 SETTABLEKS                       R14 R12 K27 ["destroy"]
       88 DUPCLOSURE                       R14 K28 [PROTO_3]
       89 CAPTURE                          VAL R10
       90 SETTABLEKS                       R14 R12 K29 ["addCollaborator"]
       92 DUPCLOSURE                       R14 K30 [PROTO_4]
       93 SETTABLEKS                       R14 R12 K31 ["removeCollaborator"]
       95 DUPCLOSURE                       R14 K32 [PROTO_5]
       96 CAPTURE                          VAL R10
       97 SETTABLEKS                       R14 R12 K33 ["updateCollaborator"]
       99 DUPCLOSURE                       R14 K34 [PROTO_11]
      100 CAPTURE                          VAL R8
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R1
      106 SETTABLEKS                       R14 R12 K35 ["_loadCollaboratorItems"]
      108 DUPCLOSURE                       R14 K36 [PROTO_13]
      109 CAPTURE                          VAL R4
      110 SETTABLEKS                       R14 R12 K37 ["_addCollaboratorItems"]
      112 DUPCLOSURE                       R14 K38 [PROTO_14]
      113 CAPTURE                          VAL R4
      114 SETTABLEKS                       R14 R12 K39 ["getCollaboratorItems"]
      116 DUPCLOSURE                       R14 K40 [PROTO_15]
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R10
      119 SETTABLEKS                       R14 R12 K41 ["addUniverseIds"]
      121 DUPCLOSURE                       R14 K42 [PROTO_16]
      122 SETTABLEKS                       R14 R12 K43 ["removeUniverse"]
      124 DUPCLOSURE                       R14 K44 [PROTO_17]
      125 SETTABLEKS                       R14 R12 K45 ["getCollaborators"]
      127 DUPCLOSURE                       R14 K46 [PROTO_18]
      128 SETTABLEKS                       R14 R12 K47 ["getUniverses"]
      130 DUPCLOSURE                       R14 K48 [PROTO_19]
      131 SETTABLEKS                       R14 R12 K49 ["_collaboratorsUpdated"]
      133 DUPCLOSURE                       R14 K50 [PROTO_20]
      134 SETTABLEKS                       R14 R12 K51 ["_universesUpdated"]
      136 RETURN                           R12 1
