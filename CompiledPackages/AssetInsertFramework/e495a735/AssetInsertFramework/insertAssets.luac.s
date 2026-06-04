PROTO_0:
        0 LENGTH                           R7 R0
        1 LOADN                            R5 1
        2 LOADN                            R6 255
        3 FORNPREP                         R5
        4 GETTABLE                         R8 R0 R7
        5 GETUPVAL                         R9 0
        6 MOVE                             R10 R8
        7 MOVE                             R11 R2
        8 CALL                             R9 2 1
        9 GETUPVAL                         R10 1
       10 GETTABLEKS                       R10 R10 K0 ["SanitizedState"]
       12 GETTABLEKS                       R10 R10 K1 ["Remove"]
       14 JUMPIFNOTEQ                      R9 R10 ; [+12]
       16 GETTABLEKS                       R10 R4 K2 ["Sanitized"]
       18 ADDK                             R10 R10 K3 [1]
       19 SETTABLEKS                       R10 R4 K2 ["Sanitized"]
       21 GETIMPORT                        R10 K6 [table.remove]
       23 MOVE                             R11 R0
       24 MOVE                             R12 R7
       25 CALL                             R10 2 0
       26 JUMP                             ; [+52]
       27 GETUPVAL                         R10 1
       28 GETTABLEKS                       R10 R10 K0 ["SanitizedState"]
       30 GETTABLEKS                       R10 R10 K2 ["Sanitized"]
       32 JUMPIFNOTEQ                      R9 R10 ; [+6]
       34 GETTABLEKS                       R10 R4 K2 ["Sanitized"]
       36 ADDK                             R10 R10 K3 [1]
       37 SETTABLEKS                       R10 R4 K2 ["Sanitized"]
       39 GETUPVAL                         R10 2
       40 MOVE                             R11 R1
       41 MOVE                             R12 R8
       42 CALL                             R10 2 0
       43 GETTABLEKS                       R10 R3 K7 ["PositionMode"]
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K8 ["InsertPositionMode"]
       48 GETTABLEKS                       R11 R11 K9 ["Camera"]
       50 JUMPIFNOTEQ                      R10 R11 ; [+8]
       52 GETUPVAL                         R10 3
       53 MOVE                             R11 R8
       54 GETTABLEKS                       R12 R3 K10 ["Position"]
       56 LOADB                            R13 1
       57 CALL                             R10 3 0
       58 JUMP                             ; [+15]
       59 GETTABLEKS                       R10 R3 K7 ["PositionMode"]
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K8 ["InsertPositionMode"]
       64 GETTABLEKS                       R11 R11 K11 ["Custom"]
       66 JUMPIFNOTEQ                      R10 R11 ; [+7]
       68 GETUPVAL                         R10 3
       69 MOVE                             R11 R8
       70 GETTABLEKS                       R12 R3 K10 ["Position"]
       72 LOADB                            R13 0
       73 CALL                             R10 3 0
       74 GETUPVAL                         R10 4
       75 MOVE                             R11 R8
       76 GETTABLEKS                       R12 R3 K12 ["Parent"]
       78 CALL                             R10 2 0
       79 FORNLOOP                         R5
       80 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R4
        2 CALL                             R5 1 1
        3 GETTABLEKS                       R6 R5 K0 ["StudioComponents"]
        5 GETTABLEKS                       R6 R6 K1 ["AssetAccessController"]
        7 FASTCALL2K                       ASSERT R6 K2 ; [+5]
        9 MOVE                             R8 R6
       10 LOADK                            R9 K2 ["AssetAccessController Studio component is required for asset insertion"]
       11 GETIMPORT                        R7 K4 [assert]
       13 CALL                             R7 2 0
       14 LOADB                            R7 1
       15 NEWTABLE                         R8 0 0
       17 NEWTABLE                         R9 0 0
       19 GETTABLEKS                       R10 R5 K5 ["GameId"]
       21 JUMPIFNOT                        R6 ; [+8]
       22 JUMPIFEQKN                       R10 K6 [0] ; [+7]
       24 GETUPVAL                         R11 1
       25 MOVE                             R12 R0
       26 MOVE                             R13 R1
       27 MOVE                             R14 R6
       28 CALL                             R11 3 1
       29 MOVE                             R9 R11
       30 GETUPVAL                         R11 2
       31 GETTABLEKS                       R11 R11 K7 ["count"]
       33 MOVE                             R12 R9
       34 CALL                             R11 1 1
       35 LOADN                            R12 0
       36 JUMPIFNOTLT                      R12 R11 ; [+15]
       38 LOADB                            R7 0
       39 MOVE                             R11 R9
       40 LOADNIL                          R12
       41 LOADNIL                          R13
       42 FORGPREP                         R11
       43 LOADK                            R17 K8 ["Failed to grant permissions for asset %*. See Output for details."]
       44 MOVE                             R19 R14
       45 NAMECALL                         R17 R17 K9 ["format"]
       47 CALL                             R17 2 1
       48 MOVE                             R16 R17
       49 SETTABLE                         R16 R8 R14
       50 FORGLOOP                         R11 2 ; [-8]
       52 DUPTABLE                         R11 K11 [{"Sanitized"}]
       53 LOADN                            R12 0
       54 SETTABLEKS                       R12 R11 K10 ["Sanitized"]
       56 NEWTABLE                         R12 0 0
       58 MOVE                             R13 R0
       59 LOADNIL                          R14
       60 LOADNIL                          R15
       61 FORGPREP                         R13
       62 GETTABLEKS                       R18 R5 K12 ["OnProgress"]
       64 MOVE                             R19 R17
       65 CALL                             R18 1 0
       66 GETTABLE                         R18 R9 R17
       67 JUMPIF                           R18 ; [+27]
       68 GETTABLE                         R18 R1 R16
       69 GETTABLE                         R19 R2 R16
       70 GETTABLE                         R20 R3 R16
       71 GETUPVAL                         R21 3
       72 MOVE                             R22 R17
       73 MOVE                             R23 R18
       74 MOVE                             R24 R19
       75 MOVE                             R25 R20
       76 CALL                             R21 4 1
       77 JUMPIF                           R21 ; [+4]
       78 LOADB                            R7 0
       79 LOADK                            R22 K13 ["Failed to get asset instances"]
       80 SETTABLE                         R22 R8 R17
       81 JUMP                             ; [+13]
       82 GETUPVAL                         R22 4
       83 MOVE                             R23 R21
       84 MOVE                             R24 R17
       85 MOVE                             R25 R18
       86 MOVE                             R26 R5
       87 MOVE                             R27 R11
       88 CALL                             R22 5 0
       89 GETUPVAL                         R22 2
       90 GETTABLEKS                       R22 R22 K14 ["append"]
       92 MOVE                             R23 R12
       93 MOVE                             R24 R21
       94 CALL                             R22 2 0
       95 FORGLOOP                         R13 2 ; [-34]
       97 LENGTH                           R13 R12
       98 JUMPIFEQKN                       R13 K6 [0] ; [+22]
      100 GETUPVAL                         R13 5
      101 MOVE                             R15 R12
      102 NAMECALL                         R13 R13 K15 ["Set"]
      104 CALL                             R13 2 0
      105 GETUPVAL                         R13 6
      106 LOADK                            R15 K16 ["Insert assets"]
      107 NAMECALL                         R13 R13 K17 ["SetWaypoint"]
      109 CALL                             R13 2 0
      110 GETIMPORT                        R13 K19 [game]
      112 GETTABLEKS                       R13 R13 K20 ["Workspace"]
      114 GETTABLEKS                       R13 R13 K21 ["CurrentCamera"]
      116 JUMPIFNOT                        R13 ; [+4]
      117 GETUPVAL                         R14 7
      118 MOVE                             R15 R13
      119 MOVE                             R16 R12
      120 CALL                             R14 2 0
      121 DUPTABLE                         R13 K26 [{"Success", "Instances", "Errors", "Analytics"}]
      122 SETTABLEKS                       R7 R13 K22 ["Success"]
      124 SETTABLEKS                       R12 R13 K23 ["Instances"]
      126 SETTABLEKS                       R8 R13 K24 ["Errors"]
      128 SETTABLEKS                       R11 R13 K25 ["Analytics"]
      130 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 GETTABLEKS                       R2 R2 K7 ["Parent"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K7 ["Parent"]
       21 GETTABLEKS                       R4 R4 K10 ["Dash"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["Types"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["assignSourceAssetId"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K9 [require]
       36 GETTABLEKS                       R7 R2 K13 ["cameraZoomToExtents"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K9 [require]
       41 GETTABLEKS                       R8 R2 K14 ["getAssetInstances"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K9 [require]
       46 GETTABLEKS                       R9 R2 K15 ["Utils"]
       48 GETTABLEKS                       R9 R9 K16 ["getFullConfig"]
       50 CALL                             R8 1 1
       51 GETIMPORT                        R9 K9 [require]
       53 GETTABLEKS                       R10 R2 K17 ["grantUniversePermissions"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R2 K18 ["sanitizeAssetInstance"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K9 [require]
       63 GETTABLEKS                       R12 R2 K19 ["setAssetInstanceParent"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K9 [require]
       68 GETTABLEKS                       R13 R2 K20 ["setAssetInstancePosition"]
       70 CALL                             R12 1 1
       71 DUPCLOSURE                       R13 K21 [PROTO_0]
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R11
       77 DUPCLOSURE                       R14 K22 [PROTO_1]
       78 CAPTURE                          VAL R8
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R0
       85 CAPTURE                          VAL R6
       86 RETURN                           R14 1
