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
       13 JUMPIFNOT                        R6 ; [+23]
       14 DUPTABLE                         R6 K8 [{["TextKey"] = "AssetProperty", ["TextSubKey"], ["OnItemClicked"], ["GetIcon"], ["ShouldRender"]}]
       15 SETTABLEKS                       R5 R6 K4 ["TextSubKey"]
       17 NEWCLOSURE                       R7 P0
       18 CAPTURE                          VAL R5
       19 SETTABLEKS                       R7 R6 K5 ["OnItemClicked"]
       21 NEWCLOSURE                       R7 P1
       22 CAPTURE                          VAL R5
       23 CAPTURE                          UPVAL U2
       24 SETTABLEKS                       R7 R6 K6 ["GetIcon"]
       26 DUPCLOSURE                       R7 K9 [PROTO_3]
       27 CAPTURE                          UPVAL U0
       28 SETTABLEKS                       R7 R6 K7 ["ShouldRender"]
       30 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
       32 MOVE                             R8 R0
       33 MOVE                             R9 R6
       34 GETIMPORT                        R7 K12 [table.insert]
       36 CALL                             R7 2 0
       37 FORGLOOP                         R1 2 ; [-28]
       39 RETURN                           R0 1

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
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K10 ["Flags"]
       29 GETTABLEKS                       R4 R4 K11 ["getFFlagAmrEnableVersioning"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 8 0
       34 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       36 GETTABLEKS                       R5 R5 K13 ["DisplayName"]
       38 LOADB                            R6 1
       39 SETTABLE                         R6 R4 R5
       40 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       42 GETTABLEKS                       R5 R5 K14 ["ModerationStatus"]
       44 LOADB                            R6 1
       45 SETTABLE                         R6 R4 R5
       46 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       48 GETTABLEKS                       R5 R5 K15 ["IsPackage"]
       50 LOADB                            R6 1
       51 SETTABLE                         R6 R4 R5
       52 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       54 GETTABLEKS                       R5 R5 K16 ["Archived"]
       56 LOADB                            R6 1
       57 SETTABLE                         R6 R4 R5
       58 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       60 GETTABLEKS                       R5 R5 K17 ["Path"]
       62 LOADB                            R6 1
       63 SETTABLE                         R6 R4 R5
       64 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       66 GETTABLEKS                       R5 R5 K18 ["SearchRank"]
       68 LOADB                            R6 1
       69 SETTABLE                         R6 R4 R5
       70 MOVE                             R5 R3
       71 CALL                             R5 0 1
       72 JUMPIF                           R5 ; [+6]
       73 GETTABLEKS                       R5 R1 K12 ["AssetInfoField"]
       75 GETTABLEKS                       R5 R5 K19 ["VersionNumber"]
       77 LOADB                            R6 1
       78 SETTABLE                         R6 R4 R5
       79 DUPCLOSURE                       R5 K20 [PROTO_0]
       80 CAPTURE                          VAL R4
       81 DUPCLOSURE                       R6 K21 [PROTO_4]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R2
       85 RETURN                           R6 1
