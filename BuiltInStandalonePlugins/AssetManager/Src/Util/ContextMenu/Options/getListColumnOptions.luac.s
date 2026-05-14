PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 NOT                              R1 R2
        3 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["LayoutController"]
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K1 ["toggleColumn"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["LayoutController"]
        2 GETUPVAL                         R4 0
        3 NAMECALL                         R2 R2 K1 ["getColumnIndex"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+10]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["get"]
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["AvailableImages"]
       13 GETTABLEKS                       R2 R2 K4 ["Checkmark"]
       15 CALL                             R1 1 1
       16 RETURN                           R1 1
       17 LOADNIL                          R1
       18 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["MenuContext"]
        3 GETTABLEKS                       R3 R3 K1 ["Column"]
        5 JUMPIFEQ                         R0 R3 ; [+2]
        7 LOADB                            R2 0 +1
        8 LOADB                            R2 1
        9 RETURN                           R2 1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["asSortedList"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["AssetInfoField"]
        8 CALL                             R1 1 3
        9 FORGPREP                         R1
       10 GETUPVAL                         R8 1
       11 GETTABLE                         R7 R8 R5
       12 NOT                              R6 R7
       13 JUMPIFNOT                        R6 ; [+26]
       14 DUPTABLE                         R6 K7 [{"TextKey", "TextSubKey", "OnItemClicked", "GetIcon", "ShouldRender"}]
       15 LOADK                            R7 K8 ["AssetProperty"]
       16 SETTABLEKS                       R7 R6 K2 ["TextKey"]
       18 SETTABLEKS                       R5 R6 K3 ["TextSubKey"]
       20 NEWCLOSURE                       R7 P0
       21 CAPTURE                          VAL R5
       22 SETTABLEKS                       R7 R6 K4 ["OnItemClicked"]
       24 NEWCLOSURE                       R7 P1
       25 CAPTURE                          VAL R5
       26 CAPTURE                          UPVAL U2
       27 SETTABLEKS                       R7 R6 K5 ["GetIcon"]
       29 DUPCLOSURE                       R7 K9 [PROTO_3]
       30 CAPTURE                          UPVAL U0
       31 SETTABLEKS                       R7 R6 K6 ["ShouldRender"]
       33 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       35 MOVE                             R8 R0
       36 MOVE                             R9 R6
       37 GETIMPORT                        R7 K12 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R1 2 ; [-31]
       42 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Src"]
       18 GETTABLEKS                       R3 R3 K8 ["Util"]
       20 GETTABLEKS                       R3 R3 K9 ["Images"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 8 0
       25 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       27 GETTABLEKS                       R4 R4 K11 ["DisplayName"]
       29 LOADB                            R5 1
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       33 GETTABLEKS                       R4 R4 K12 ["ModerationStatus"]
       35 LOADB                            R5 1
       36 SETTABLE                         R5 R3 R4
       37 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       39 GETTABLEKS                       R4 R4 K13 ["VersionNumber"]
       41 LOADB                            R5 1
       42 SETTABLE                         R5 R3 R4
       43 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       45 GETTABLEKS                       R4 R4 K14 ["IsPackage"]
       47 LOADB                            R5 1
       48 SETTABLE                         R5 R3 R4
       49 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       51 GETTABLEKS                       R4 R4 K15 ["Archived"]
       53 LOADB                            R5 1
       54 SETTABLE                         R5 R3 R4
       55 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       57 GETTABLEKS                       R4 R4 K16 ["Path"]
       59 LOADB                            R5 1
       60 SETTABLE                         R5 R3 R4
       61 GETTABLEKS                       R4 R1 K10 ["AssetInfoField"]
       63 GETTABLEKS                       R4 R4 K17 ["SearchRank"]
       65 LOADB                            R5 1
       66 SETTABLE                         R5 R3 R4
       67 DUPCLOSURE                       R4 K18 [PROTO_0]
       68 CAPTURE                          VAL R3
       69 DUPCLOSURE                       R5 K19 [PROTO_4]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R2
       73 RETURN                           R5 1
