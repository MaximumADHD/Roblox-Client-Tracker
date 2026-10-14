PROTO_0:
        0 LENGTH                           R7 R0
        1 LOADN                            R5 1
        2 LOADN                            R6 -1
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
       26 JUMP                             ; [+55]
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
       75 CALL                             R10 0 1
       76 JUMPIF                           R10 ; [+5]
       77 GETUPVAL                         R10 5
       78 MOVE                             R11 R8
       79 GETTABLEKS                       R12 R3 K12 ["Parent"]
       81 CALL                             R10 2 0
       82 FORNLOOP                         R5
       83 RETURN                           R0 0

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
       36 JUMPIFNOTLT                      R12 R11 ; [+14]
       38 LOADB                            R7 0
       39 MOVE                             R11 R9
       40 LOADNIL                          R12
       41 LOADNIL                          R13
       42 FORGPREP                         R11
       43 LOADK                            R16 K8 ["Failed to grant permissions for asset %*. See Output for details."]
       44 MOVE                             R18 R14
       45 NAMECALL                         R16 R16 K9 ["format"]
       47 CALL                             R16 2 1
       48 SETTABLE                         R16 R8 R14
       49 FORGLOOP                         R11 2 ; [-7]
       51 DUPTABLE                         R11 K11 [{["Sanitized"] = 0}]
       52 NEWTABLE                         R12 0 0
       54 MOVE                             R13 R0
       55 LOADNIL                          R14
       56 LOADNIL                          R15
       57 FORGPREP                         R13
       58 GETTABLEKS                       R18 R5 K12 ["OnProgress"]
       60 MOVE                             R19 R17
       61 CALL                             R18 1 0
       62 GETTABLE                         R18 R9 R17
       63 JUMPIF                           R18 ; [+29]
       64 GETTABLE                         R18 R1 R16
       65 GETTABLE                         R19 R2 R16
       66 GETTABLE                         R20 R3 R16
       67 GETUPVAL                         R21 3
       68 MOVE                             R22 R17
       69 MOVE                             R23 R18
       70 MOVE                             R24 R19
       71 MOVE                             R25 R20
       72 GETTABLEKS                       R26 R5 K13 ["UseAnimationInstance"]
       74 CALL                             R21 5 1
       75 JUMPIF                           R21 ; [+4]
       76 LOADB                            R7 0
       77 LOADK                            R22 K14 ["Failed to get asset instances"]
       78 SETTABLE                         R22 R8 R17
       79 JUMP                             ; [+13]
       80 GETUPVAL                         R22 4
       81 MOVE                             R23 R21
       82 MOVE                             R24 R17
       83 MOVE                             R25 R18
       84 MOVE                             R26 R5
       85 MOVE                             R27 R11
       86 CALL                             R22 5 0
       87 GETUPVAL                         R22 2
       88 GETTABLEKS                       R22 R22 K15 ["append"]
       90 MOVE                             R23 R12
       91 MOVE                             R24 R21
       92 CALL                             R22 2 0
       93 FORGLOOP                         R13 2 ; [-36]
       95 GETUPVAL                         R13 5
       96 CALL                             R13 0 1
       97 JUMPIFNOT                        R13 ; [+11]
       98 MOVE                             R13 R12
       99 LOADNIL                          R14
      100 LOADNIL                          R15
      101 FORGPREP                         R13
      102 GETUPVAL                         R18 6
      103 MOVE                             R19 R17
      104 GETTABLEKS                       R20 R5 K16 ["Parent"]
      106 CALL                             R18 2 0
      107 FORGLOOP                         R13 2 ; [-6]
      109 GETTABLEKS                       R13 R5 K17 ["SkipCameraMove"]
      111 JUMPIF                           R13 ; [+24]
      112 LENGTH                           R13 R12
      113 JUMPIFEQKN                       R13 K6 [0] ; [+22]
      115 GETUPVAL                         R13 7
      116 MOVE                             R15 R12
      117 NAMECALL                         R13 R13 K18 ["Set"]
      119 CALL                             R13 2 0
      120 GETUPVAL                         R13 8
      121 LOADK                            R15 K19 ["Insert assets"]
      122 NAMECALL                         R13 R13 K20 ["SetWaypoint"]
      124 CALL                             R13 2 0
      125 GETIMPORT                        R13 K22 [game]
      127 GETTABLEKS                       R13 R13 K23 ["Workspace"]
      129 GETTABLEKS                       R13 R13 K24 ["CurrentCamera"]
      131 JUMPIFNOT                        R13 ; [+4]
      132 GETUPVAL                         R14 9
      133 MOVE                             R15 R13
      134 MOVE                             R16 R12
      135 CALL                             R14 2 0
      136 DUPTABLE                         R13 K29 [{"Success", "Instances", "Errors", "Analytics"}]
      137 SETTABLEKS                       R7 R13 K25 ["Success"]
      139 SETTABLEKS                       R12 R13 K26 ["Instances"]
      141 SETTABLEKS                       R8 R13 K27 ["Errors"]
      143 SETTABLEKS                       R11 R13 K28 ["Analytics"]
      145 RETURN                           R13 1

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
       71 GETIMPORT                        R13 K9 [require]
       73 GETTABLEKS                       R14 R2 K21 ["Flags"]
       75 GETTABLEKS                       R14 R14 K22 ["getFFlagAssetInsertionDeferParenting"]
       77 CALL                             R13 1 1
       78 DUPCLOSURE                       R14 K23 [PROTO_0]
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R11
       85 DUPCLOSURE                       R15 K24 [PROTO_1]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R11
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R0
       95 CAPTURE                          VAL R6
       96 RETURN                           R15 1
