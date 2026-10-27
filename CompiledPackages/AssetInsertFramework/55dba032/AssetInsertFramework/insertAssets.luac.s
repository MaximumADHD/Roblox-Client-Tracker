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
       26 JUMP                             ; [+67]
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
       50 JUMPIFNOTEQ                      R10 R11 ; [+20]
       52 GETUPVAL                         R10 3
       53 CALL                             R10 0 1
       54 JUMPIFNOT                        R10 ; [+9]
       55 GETUPVAL                         R10 4
       56 MOVE                             R11 R8
       57 CALL                             R10 1 1
       58 GETUPVAL                         R11 5
       59 MOVE                             R12 R8
       60 MOVE                             R13 R10
       61 LOADB                            R14 1
       62 CALL                             R11 3 0
       63 JUMP                             ; [+22]
       64 GETUPVAL                         R10 5
       65 MOVE                             R11 R8
       66 GETTABLEKS                       R12 R3 K10 ["Position"]
       68 LOADB                            R13 1
       69 CALL                             R10 3 0
       70 JUMP                             ; [+15]
       71 GETTABLEKS                       R10 R3 K7 ["PositionMode"]
       73 GETUPVAL                         R11 1
       74 GETTABLEKS                       R11 R11 K8 ["InsertPositionMode"]
       76 GETTABLEKS                       R11 R11 K11 ["Custom"]
       78 JUMPIFNOTEQ                      R10 R11 ; [+7]
       80 GETUPVAL                         R10 5
       81 MOVE                             R11 R8
       82 GETTABLEKS                       R12 R3 K10 ["Position"]
       84 LOADB                            R13 0
       85 CALL                             R10 3 0
       86 GETUPVAL                         R10 6
       87 CALL                             R10 0 1
       88 JUMPIF                           R10 ; [+5]
       89 GETUPVAL                         R10 7
       90 MOVE                             R11 R8
       91 GETTABLEKS                       R12 R3 K12 ["Parent"]
       93 CALL                             R10 2 0
       94 FORNLOOP                         R5
       95 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R6 0
        1 MOVE                             R7 R5
        2 CALL                             R6 1 1
        3 GETTABLEKS                       R7 R6 K0 ["StudioComponents"]
        5 GETTABLEKS                       R7 R7 K1 ["AssetAccessController"]
        7 FASTCALL2K                       ASSERT R7 K2 ; [+5]
        9 MOVE                             R9 R7
       10 LOADK                            R10 K2 ["AssetAccessController Studio component is required for asset insertion"]
       11 GETIMPORT                        R8 K4 [assert]
       13 CALL                             R8 2 0
       14 LOADB                            R8 1
       15 NEWTABLE                         R9 0 0
       17 NEWTABLE                         R10 0 0
       19 GETTABLEKS                       R11 R6 K5 ["GameId"]
       21 JUMPIFNOT                        R7 ; [+8]
       22 JUMPIFEQKN                       R11 K6 [0] ; [+7]
       24 GETUPVAL                         R12 1
       25 MOVE                             R13 R0
       26 MOVE                             R14 R2
       27 MOVE                             R15 R7
       28 CALL                             R12 3 1
       29 MOVE                             R10 R12
       30 GETUPVAL                         R12 2
       31 GETTABLEKS                       R12 R12 K7 ["count"]
       33 MOVE                             R13 R10
       34 CALL                             R12 1 1
       35 LOADN                            R13 0
       36 JUMPIFNOTLT                      R13 R12 ; [+14]
       38 LOADB                            R8 0
       39 MOVE                             R12 R10
       40 LOADNIL                          R13
       41 LOADNIL                          R14
       42 FORGPREP                         R12
       43 LOADK                            R17 K8 ["Failed to grant permissions for asset %*. See Output for details."]
       44 MOVE                             R19 R15
       45 NAMECALL                         R17 R17 K9 ["format"]
       47 CALL                             R17 2 1
       48 SETTABLE                         R17 R9 R15
       49 FORGLOOP                         R12 2 ; [-7]
       51 DUPTABLE                         R12 K11 [{["Sanitized"] = 0}]
       52 NEWTABLE                         R13 0 0
       54 MOVE                             R14 R0
       55 LOADNIL                          R15
       56 LOADNIL                          R16
       57 FORGPREP                         R14
       58 GETTABLEKS                       R19 R6 K12 ["OnProgress"]
       60 MOVE                             R20 R18
       61 CALL                             R19 1 0
       62 GETTABLE                         R19 R10 R18
       63 JUMPIF                           R19 ; [+31]
       64 GETTABLE                         R19 R2 R17
       65 GETTABLE                         R20 R3 R17
       66 GETTABLE                         R21 R4 R17
       67 GETTABLE                         R22 R1 R17
       68 GETUPVAL                         R23 3
       69 MOVE                             R24 R18
       70 MOVE                             R25 R22
       71 MOVE                             R26 R19
       72 MOVE                             R27 R20
       73 MOVE                             R28 R21
       74 GETTABLEKS                       R29 R6 K13 ["UseAnimationInstance"]
       76 CALL                             R23 6 1
       77 JUMPIF                           R23 ; [+4]
       78 LOADB                            R8 0
       79 LOADK                            R24 K14 ["Failed to get asset instances"]
       80 SETTABLE                         R24 R9 R18
       81 JUMP                             ; [+13]
       82 GETUPVAL                         R24 4
       83 MOVE                             R25 R23
       84 MOVE                             R26 R18
       85 MOVE                             R27 R19
       86 MOVE                             R28 R6
       87 MOVE                             R29 R12
       88 CALL                             R24 5 0
       89 GETUPVAL                         R24 2
       90 GETTABLEKS                       R24 R24 K15 ["append"]
       92 MOVE                             R25 R13
       93 MOVE                             R26 R23
       94 CALL                             R24 2 0
       95 FORGLOOP                         R14 2 ; [-38]
       97 GETUPVAL                         R14 5
       98 CALL                             R14 0 1
       99 JUMPIFNOT                        R14 ; [+11]
      100 MOVE                             R14 R13
      101 LOADNIL                          R15
      102 LOADNIL                          R16
      103 FORGPREP                         R14
      104 GETUPVAL                         R19 6
      105 MOVE                             R20 R18
      106 GETTABLEKS                       R21 R6 K16 ["Parent"]
      108 CALL                             R19 2 0
      109 FORGLOOP                         R14 2 ; [-6]
      111 GETTABLEKS                       R14 R6 K17 ["SkipCameraMove"]
      113 JUMPIF                           R14 ; [+24]
      114 LENGTH                           R14 R13
      115 JUMPIFEQKN                       R14 K6 [0] ; [+22]
      117 GETUPVAL                         R14 7
      118 MOVE                             R16 R13
      119 NAMECALL                         R14 R14 K18 ["Set"]
      121 CALL                             R14 2 0
      122 GETUPVAL                         R14 8
      123 LOADK                            R16 K19 ["Insert assets"]
      124 NAMECALL                         R14 R14 K20 ["SetWaypoint"]
      126 CALL                             R14 2 0
      127 GETIMPORT                        R14 K22 [game]
      129 GETTABLEKS                       R14 R14 K23 ["Workspace"]
      131 GETTABLEKS                       R14 R14 K24 ["CurrentCamera"]
      133 JUMPIFNOT                        R14 ; [+4]
      134 GETUPVAL                         R15 9
      135 MOVE                             R16 R14
      136 MOVE                             R17 R13
      137 CALL                             R15 2 0
      138 DUPTABLE                         R14 K29 [{"Success", "Instances", "Errors", "Analytics"}]
      139 SETTABLEKS                       R8 R14 K25 ["Success"]
      141 SETTABLEKS                       R13 R14 K26 ["Instances"]
      143 SETTABLEKS                       R9 R14 K27 ["Errors"]
      145 SETTABLEKS                       R12 R14 K28 ["Analytics"]
      147 RETURN                           R14 1

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
       46 GETTABLEKS                       R9 R2 K15 ["getCameraInsertPosition"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K9 [require]
       51 GETTABLEKS                       R10 R2 K16 ["Utils"]
       53 GETTABLEKS                       R10 R10 K17 ["getFullConfig"]
       55 CALL                             R9 1 1
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R2 K18 ["grantUniversePermissions"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K9 [require]
       63 GETTABLEKS                       R12 R2 K19 ["sanitizeAssetInstance"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K9 [require]
       68 GETTABLEKS                       R13 R2 K20 ["setAssetInstanceParent"]
       70 CALL                             R12 1 1
       71 GETIMPORT                        R13 K9 [require]
       73 GETTABLEKS                       R14 R2 K21 ["setAssetInstancePosition"]
       75 CALL                             R13 1 1
       76 GETIMPORT                        R14 K9 [require]
       78 GETTABLEKS                       R15 R2 K22 ["Flags"]
       80 GETTABLEKS                       R15 R15 K23 ["getFFlagAssetInsertionDeferParenting"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K9 [require]
       85 GETTABLEKS                       R16 R2 K22 ["Flags"]
       87 GETTABLEKS                       R16 R16 K24 ["getFFlagCinUseClosestInsertPosition"]
       89 CALL                             R15 1 1
       90 DUPCLOSURE                       R16 K25 [PROTO_0]
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R8
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R14
       98 CAPTURE                          VAL R12
       99 DUPCLOSURE                       R17 K26 [PROTO_1]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R16
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R6
      110 RETURN                           R17 1
