PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETUPVAL                         R4 3
        4 NAMECALL                         R0 R0 K0 ["renameItemAndUpdateRender"]
        6 CALL                             R0 4 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Failed to rename place"]
        2 LOADK                            R2 K1 ["WARN"]
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R2 K0 ["ItemsController"]
        2 GETTABLEKS                       R4 R2 K1 ["Networking"]
        4 LOADNIL                          R7
        5 NAMECALL                         R5 R3 K2 ["setStagedEditItemPath"]
        7 CALL                             R5 2 0
        8 NAMECALL                         R5 R3 K3 ["getCurrentShownScope"]
       10 CALL                             R5 1 1
       11 GETTABLEKS                       R5 R5 K4 ["Uid"]
       13 NAMECALL                         R6 R3 K5 ["getItemsCache"]
       15 CALL                             R6 1 1
       16 MOVE                             R8 R5
       17 MOVE                             R9 R1
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K6 ["AssetInfoField"]
       21 GETTABLEKS                       R10 R10 K7 ["AssetId"]
       23 NAMECALL                         R6 R6 K8 ["getItemField"]
       25 CALL                             R6 4 1
       26 JUMPIF                           R6 ; [+23]
       27 GETUPVAL                         R7 1
       28 LOADK                            R8 K9 ["Couldn't find asset ID for place path %* in cache, falling back to using path"]
       29 MOVE                             R10 R1
       30 NAMECALL                         R8 R8 K10 ["format"]
       32 CALL                             R8 2 1
       33 CALL                             R7 1 0
       34 GETIMPORT                        R8 K13 [string.match]
       36 MOVE                             R9 R1
       37 LOADK                            R10 K14 ["-(%d+)$"]
       38 CALL                             R8 2 -1
       39 FASTCALL                         TONUMBER ; [+2]
       40 GETIMPORT                        R7 K16 [tonumber]
       42 CALL                             R7 -1 1
       43 MOVE                             R6 R7
       44 JUMPIF                           R6 ; [+5]
       45 GETUPVAL                         R7 1
       46 LOADK                            R8 K17 ["Couldn't extract asset ID for this place, cannot rename place"]
       47 LOADK                            R9 K18 ["WARN"]
       48 CALL                             R7 2 0
       49 RETURN                           R0 0
       50 MOVE                             R7 R6
       51 GETUPVAL                         R9 2
       52 CALL                             R9 0 1
       53 JUMPIFNOT                        R9 ; [+9]
       54 GETUPVAL                         R8 3
       55 GETTABLEKS                       R8 R8 K1 ["Networking"]
       57 GETTABLEKS                       R8 R8 K19 ["renamePlaceAsync"]
       59 MOVE                             R9 R7
       60 MOVE                             R10 R0
       61 CALL                             R8 2 1
       62 JUMP                             ; [+5]
       63 MOVE                             R10 R7
       64 MOVE                             R11 R0
       65 NAMECALL                         R8 R4 K19 ["renamePlaceAsync"]
       67 CALL                             R8 3 1
       68 NEWCLOSURE                       R11 P0
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R1
       72 CAPTURE                          VAL R0
       73 NAMECALL                         R9 R8 K20 ["andThen"]
       75 CALL                             R9 2 1
       76 DUPCLOSURE                       R11 K21 [PROTO_1]
       77 CAPTURE                          UPVAL U1
       78 NAMECALL                         R9 R9 K22 ["catch"]
       80 CALL                             R9 2 0
       81 RETURN                           R0 0

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
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["PlaceManagement"]
       22 GETTABLEKS                       R3 R3 K11 ["PlaceManagementTypes"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K13 ["logIfDebug"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Flags"]
       47 GETTABLEKS                       R6 R6 K15 ["getFFlagAmrUseAssetManagementNetworking"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K16 [PROTO_2]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R5
       54 CAPTURE                          VAL R1
       55 RETURN                           R6 1
