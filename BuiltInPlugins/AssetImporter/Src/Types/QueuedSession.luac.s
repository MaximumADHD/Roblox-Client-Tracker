PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 MOVE                             R0 R1
        5 GETIMPORT                        R1 K2 [table.clone]
        7 GETUPVAL                         R2 0
        8 CALL                             R1 1 1
        9 GETIMPORT                        R2 K4 [table.freeze]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R1
       13 MOVE                             R5 R0
       14 CALL                             R3 2 -1
       15 CALL                             R2 -1 -1
       16 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R2 K2 [table.freeze]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 -1
        6 CALL                             R2 -1 -1
        7 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["sortOrder"]
        2 GETTABLEKS                       R4 R1 K0 ["sortOrder"]
        4 JUMPIFLT                         R4 R3 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["joinDeep"]
       16 GETTABLEKS                       R3 R1 K9 ["None"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K14 [table.freeze]
       27 DUPTABLE                         R6 K37 [{["assetName"] = "", ["fileType"], ["creatorId"] = 0, ["currentPreset"] = , ["enabled"] = False, ["errors"] = 0, ["filepath"] = "", ["importDataError"] = False, ["progressValue"] = 0, ["settingsChanged"] = False, ["session"] = , ["sortOrder"] = -1, ["state"], ["uploaded"] = False, ["uploadResults"], ["validSession"] = False, ["warnings"] = 0}]
       28 GETTABLEKS                       R7 R4 K38 ["FileType"]
       30 GETTABLEKS                       R7 R7 K9 ["None"]
       32 SETTABLEKS                       R7 R6 K17 ["fileType"]
       34 GETTABLEKS                       R7 R4 K39 ["SessionState"]
       36 GETTABLEKS                       R7 R7 K40 ["Invalid"]
       38 SETTABLEKS                       R7 R6 K32 ["state"]
       40 SETTABLEKS                       R3 R6 K34 ["uploadResults"]
       42 CALL                             R5 1 1
       43 NEWTABLE                         R6 4 0
       45 DUPCLOSURE                       R7 K41 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R2
       48 SETTABLEKS                       R7 R6 K42 ["new"]
       50 DUPCLOSURE                       R7 K43 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R7 R6 K44 ["update"]
       54 DUPCLOSURE                       R7 K45 [PROTO_2]
       55 SETTABLEKS                       R7 R6 K46 ["compare"]
       57 RETURN                           R6 1
