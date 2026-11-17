PROTO_0:
        0 GETTABLEKS                       R3 R2 K0 ["PluginController"]
        2 NAMECALL                         R3 R3 K1 ["getUser"]
        4 CALL                             R3 1 1
        5 JUMPIFNOTEQKNIL                  R0 ; [+2]
        7 RETURN                           R3 1
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["ScopeType"]
       11 GETTABLE                         R4 R5 R0
       12 JUMPIFNOTEQKNIL                  R4 ; [+2]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R5 R2 K0 ["PluginController"]
       17 NAMECALL                         R5 R5 K3 ["getGameInfo"]
       19 CALL                             R5 1 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K2 ["ScopeType"]
       23 GETTABLEKS                       R6 R6 K4 ["User"]
       25 JUMPIFNOTEQ                      R4 R6 ; [+8]
       27 JUMPIFEQKNIL                     R1 ; [+5]
       29 GETTABLEKS                       R6 R3 K5 ["Id"]
       31 JUMPIFNOTEQ                      R1 R6 ; [+2]
       33 RETURN                           R3 1
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K2 ["ScopeType"]
       37 GETTABLEKS                       R6 R6 K6 ["Universe"]
       39 JUMPIFNOTEQ                      R4 R6 ; [+12]
       41 GETTABLEKS                       R6 R5 K5 ["Id"]
       43 JUMPIFEQKN                       R6 K7 [0] ; [+8]
       45 JUMPIFEQKNIL                     R1 ; [+5]
       47 GETTABLEKS                       R6 R5 K5 ["Id"]
       49 JUMPIFNOTEQ                      R1 R6 ; [+2]
       51 RETURN                           R5 1
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R6 R6 K2 ["ScopeType"]
       55 GETTABLEKS                       R6 R6 K8 ["RecentUploads"]
       57 JUMPIFNOTEQ                      R4 R6 ; [+14]
       59 JUMPIFEQKNIL                     R1 ; [+8]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K8 ["RecentUploads"]
       64 GETTABLEKS                       R6 R6 K5 ["Id"]
       66 JUMPIFNOTEQ                      R1 R6 ; [+5]
       68 GETUPVAL                         R6 1
       69 GETTABLEKS                       R6 R6 K8 ["RecentUploads"]
       71 RETURN                           R6 1
       72 JUMPIFNOTEQKNIL                  R1 ; [+2]
       74 RETURN                           R3 1
       75 GETTABLEKS                       R6 R2 K9 ["ExplorerController"]
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R8 R8 K10 ["Utils"]
       80 GETTABLEKS                       R8 R8 K11 ["createScopeUid"]
       82 MOVE                             R9 R4
       83 MOVE                             R10 R1
       84 CALL                             R8 2 -1
       85 NAMECALL                         R6 R6 K12 ["getScopeWithUid"]
       87 CALL                             R6 -1 1
       88 JUMPIFNOT                        R6 ; [+1]
       89 RETURN                           R6 1
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R7 R7 K2 ["ScopeType"]
       93 GETTABLEKS                       R7 R7 K13 ["Group"]
       95 JUMPIFNOTEQ                      R4 R7 ; [+9]
       97 GETTABLEKS                       R7 R2 K9 ["ExplorerController"]
       99 NAMECALL                         R7 R7 K14 ["hasLoadedGroups"]
      101 CALL                             R7 1 1
      102 JUMPIF                           R7 ; [+2]
      103 LOADNIL                          R7
      104 RETURN                           R7 1
      105 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["AssetType"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PluginController"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["setCurrentScope"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 DUPTABLE                         R2 K5 [{"Scope", "FilteredAssetTypes", "IsPackage"}]
        9 SETTABLEKS                       R0 R2 K2 ["Scope"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K3 ["FilteredAssetTypes"]
       14 GETUPVAL                         R3 3
       15 SETTABLEKS                       R3 R2 K4 ["IsPackage"]
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["PluginController"]
        5 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R1 R1 K2 ["Uid"]
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K2 ["Uid"]
       13 JUMPIFEQ                         R1 R2 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K0 ["PluginController"]
       19 MOVE                             R3 R0
       20 NAMECALL                         R1 R1 K3 ["setCurrentScope"]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 3
       24 DUPTABLE                         R2 K7 [{"Scope", "FilteredAssetTypes", "IsPackage"}]
       25 SETTABLEKS                       R0 R2 K4 ["Scope"]
       27 GETUPVAL                         R3 4
       28 SETTABLEKS                       R3 R2 K5 ["FilteredAssetTypes"]
       30 GETUPVAL                         R3 5
       31 SETTABLEKS                       R3 R2 K6 ["IsPackage"]
       33 CALL                             R1 1 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIF                           R1 ; [+1]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 JUMPIF                           R2 ; [+32]
        6 GETUPVAL                         R2 3
        7 GETTABLEKS                       R2 R2 K0 ["PluginController"]
        9 NAMECALL                         R2 R2 K1 ["getCurrentScope"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R2 R2 K2 ["Uid"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["Uid"]
       17 JUMPIFEQ                         R2 R3 ; [+2]
       19 RETURN                           R0 0
       20 GETUPVAL                         R2 3
       21 GETTABLEKS                       R2 R2 K0 ["PluginController"]
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R2 K3 ["setCurrentScope"]
       26 CALL                             R2 2 0
       27 GETUPVAL                         R2 4
       28 DUPTABLE                         R3 K7 [{"Scope", "FilteredAssetTypes", "IsPackage"}]
       29 SETTABLEKS                       R1 R3 K4 ["Scope"]
       31 GETUPVAL                         R4 5
       32 SETTABLEKS                       R4 R3 K5 ["FilteredAssetTypes"]
       34 GETUPVAL                         R4 6
       35 SETTABLEKS                       R4 R3 K6 ["IsPackage"]
       37 CALL                             R2 1 0
       38 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 JUMPIF                           R1 ; [+32]
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R1 R1 K0 ["PluginController"]
        6 NAMECALL                         R1 R1 K1 ["getCurrentScope"]
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R1 R1 K2 ["Uid"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["Uid"]
       14 JUMPIFEQ                         R1 R2 ; [+2]
       16 RETURN                           R0 0
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K0 ["PluginController"]
       20 MOVE                             R3 R0
       21 NAMECALL                         R1 R1 K3 ["setCurrentScope"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 3
       25 DUPTABLE                         R2 K7 [{"Scope", "FilteredAssetTypes", "IsPackage"}]
       26 SETTABLEKS                       R0 R2 K4 ["Scope"]
       28 GETUPVAL                         R3 4
       29 SETTABLEKS                       R3 R2 K5 ["FilteredAssetTypes"]
       31 GETUPVAL                         R3 5
       32 SETTABLEKS                       R3 R2 K6 ["IsPackage"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 0

PROTO_7:
        0 LOADB                            R0 1
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R3 R1 K0 ["SearchController"]
        2 NAMECALL                         R3 R3 K1 ["endSearchSession"]
        4 CALL                             R3 1 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["filter"]
        8 GETTABLEKS                       R4 R0 K3 ["ItemTypes"]
       10 JUMPIF                           R4 ; [+2]
       11 NEWTABLE                         R4 0 0
       13 DUPCLOSURE                       R5 K4 [PROTO_1]
       14 CAPTURE                          UPVAL U1
       15 CALL                             R3 2 1
       16 GETTABLEKS                       R5 R0 K5 ["ViewType"]
       18 JUMPIFNOT                        R5 ; [+5]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R6 R0 K5 ["ViewType"]
       22 GETTABLE                         R4 R5 R6
       23 JUMP                             ; [+1]
       24 LOADNIL                          R4
       25 JUMPIFNOT                        R4 ; [+7]
       26 GETTABLEKS                       R5 R1 K6 ["LayoutController"]
       28 LOADNIL                          R7
       29 MOVE                             R8 R4
       30 NAMECALL                         R5 R5 K7 ["setBrowserLayout"]
       32 CALL                             R5 3 0
       33 GETTABLEKS                       R5 R1 K8 ["ItemsController"]
       35 NAMECALL                         R5 R5 K9 ["clearFilters"]
       37 CALL                             R5 1 0
       38 MOVE                             R5 R3
       39 LOADNIL                          R6
       40 LOADNIL                          R7
       41 FORGPREP                         R5
       42 GETTABLEKS                       R10 R1 K8 ["ItemsController"]
       44 GETUPVAL                         R12 1
       45 GETTABLEKS                       R12 R12 K10 ["AssetInfoField"]
       47 GETTABLEKS                       R12 R12 K11 ["AssetType"]
       49 MOVE                             R13 R9
       50 NAMECALL                         R10 R10 K12 ["toggleFilter"]
       52 CALL                             R10 3 0
       53 FORGLOOP                         R5 2 ; [-12]
       55 GETTABLEKS                       R6 R0 K13 ["IsPackage"]
       57 JUMPIFEQKB                       R6 TRUE ; [+2]
       59 LOADB                            R5 0 +1
       60 LOADB                            R5 1
       61 JUMPIFNOT                        R5 ; [+5]
       62 GETTABLEKS                       R6 R1 K8 ["ItemsController"]
       64 NAMECALL                         R6 R6 K14 ["togglePackagesFilter"]
       66 CALL                             R6 1 0
       67 NEWCLOSURE                       R6 P1
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R5
       72 GETUPVAL                         R7 3
       73 GETTABLEKS                       R8 R0 K15 ["ScopeType"]
       75 GETTABLEKS                       R9 R0 K16 ["ScopeId"]
       77 MOVE                             R10 R1
       78 CALL                             R7 3 1
       79 JUMPIFNOT                        R7 ; [+17]
       80 GETTABLEKS                       R8 R1 K17 ["PluginController"]
       82 MOVE                             R10 R7
       83 NAMECALL                         R8 R8 K18 ["setCurrentScope"]
       85 CALL                             R8 2 0
       86 MOVE                             R8 R2
       87 DUPTABLE                         R9 K21 [{"Scope", "FilteredAssetTypes", "IsPackage"}]
       88 SETTABLEKS                       R7 R9 K19 ["Scope"]
       90 SETTABLEKS                       R3 R9 K20 ["FilteredAssetTypes"]
       92 SETTABLEKS                       R5 R9 K13 ["IsPackage"]
       94 CALL                             R8 1 0
       95 DUPCLOSURE                       R8 K22 [PROTO_3]
       96 RETURN                           R8 1
       97 GETTABLEKS                       R8 R1 K17 ["PluginController"]
       99 NAMECALL                         R8 R8 K23 ["getUser"]
      101 CALL                             R8 1 1
      102 GETTABLEKS                       R9 R1 K17 ["PluginController"]
      104 MOVE                             R11 R8
      105 NAMECALL                         R9 R9 K18 ["setCurrentScope"]
      107 CALL                             R9 2 0
      108 LOADB                            R9 0
      109 NEWCLOSURE                       R10 P3
      110 CAPTURE                          REF R9
      111 CAPTURE                          VAL R1
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R3
      115 CAPTURE                          VAL R5
      116 GETTABLEKS                       R11 R0 K16 ["ScopeId"]
      118 GETUPVAL                         R12 4
      119 GETTABLEKS                       R12 R12 K24 ["Networking"]
      121 GETTABLEKS                       R12 R12 K25 ["fetchGroupsAsync"]
      123 CALL                             R12 0 1
      124 NEWCLOSURE                       R14 P4
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R8
      127 CAPTURE                          REF R9
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R5
      132 NEWCLOSURE                       R15 P5
      133 CAPTURE                          VAL R8
      134 CAPTURE                          REF R9
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R5
      139 NAMECALL                         R12 R12 K26 ["andThen"]
      141 CALL                             R12 3 0
      142 NEWCLOSURE                       R12 P6
      143 CAPTURE                          REF R9
      144 CLOSEUPVALS                      R9
      145 RETURN                           R12 1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Dash"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Resources"]
       34 GETTABLEKS                       R5 R5 K12 ["Constants"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K13 ["Types"]
       43 CALL                             R5 1 1
       44 NEWTABLE                         R6 2 0
       46 GETTABLEKS                       R7 R3 K14 ["ASSET_MANAGER"]
       48 GETTABLEKS                       R7 R7 K15 ["ENUMS"]
       50 GETTABLEKS                       R7 R7 K16 ["VIEW_TYPE"]
       52 GETTABLEKS                       R7 R7 K17 ["List"]
       54 GETTABLEKS                       R8 R5 K18 ["ViewType"]
       56 GETTABLEKS                       R8 R8 K17 ["List"]
       58 SETTABLE                         R8 R6 R7
       59 GETTABLEKS                       R7 R3 K14 ["ASSET_MANAGER"]
       61 GETTABLEKS                       R7 R7 K15 ["ENUMS"]
       63 GETTABLEKS                       R7 R7 K16 ["VIEW_TYPE"]
       65 GETTABLEKS                       R7 R7 K19 ["Grid"]
       67 GETTABLEKS                       R8 R5 K18 ["ViewType"]
       69 GETTABLEKS                       R8 R8 K19 ["Grid"]
       71 SETTABLE                         R8 R6 R7
       72 DUPCLOSURE                       R7 K20 [PROTO_0]
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R1
       76 DUPCLOSURE                       R8 K21 [PROTO_8]
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R1
       82 RETURN                           R8 1
