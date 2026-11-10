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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["StudioComponents"]
        5 GETTABLEKS                       R2 R2 K1 ["CapabilitiesHandler"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R2
        6 CALL                             R3 1 2
        7 JUMPIF                           R3 ; [+24]
        8 GETUPVAL                         R5 1
        9 LOADK                            R6 K2 ["Failed to sandbox asset %*: %*"]
       10 MOVE                             R8 R1
       11 MOVE                             R9 R4
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 3 1
       15 CALL                             R5 1 0
       16 MOVE                             R5 R0
       17 LOADNIL                          R6
       18 LOADNIL                          R7
       19 FORGPREP                         R5
       20 NAMECALL                         R10 R9 K4 ["Destroy"]
       22 CALL                             R10 1 0
       23 FORGLOOP                         R5 2 ; [-4]
       25 LOADB                            R5 0
       26 FASTCALL1                        TOSTRING R4 ; [+3]
       27 MOVE                             R7 R4
       28 GETIMPORT                        R6 K6 [tostring]
       30 CALL                             R6 1 1
       31 RETURN                           R5 2
       32 LOADB                            R5 1
       33 LOADNIL                          R6
       34 RETURN                           R5 2

PROTO_3:
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
       14 GETUPVAL                         R8 1
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+21]
       17 GETTABLEKS                       R8 R6 K5 ["SandboxAssetIds"]
       19 JUMPIFEQKNIL                     R8 ; [+18]
       21 GETIMPORT                        R8 K7 [next]
       23 GETTABLEKS                       R9 R6 K5 ["SandboxAssetIds"]
       25 CALL                             R8 1 1
       26 JUMPIFEQKNIL                     R8 ; [+11]
       28 GETTABLEKS                       R9 R6 K0 ["StudioComponents"]
       30 GETTABLEKS                       R9 R9 K8 ["CapabilitiesHandler"]
       32 FASTCALL2K                       ASSERT R9 K9 ; [+4]
       34 LOADK                            R10 K9 ["CapabilitiesHandler Studio component is required to sandbox inserted assets"]
       35 GETIMPORT                        R8 K4 [assert]
       37 CALL                             R8 2 0
       38 LOADB                            R8 1
       39 NEWTABLE                         R9 0 0
       41 NEWTABLE                         R10 0 0
       43 GETTABLEKS                       R11 R6 K10 ["GameId"]
       45 JUMPIFNOT                        R7 ; [+8]
       46 JUMPIFEQKN                       R11 K11 [0] ; [+7]
       48 GETUPVAL                         R12 2
       49 MOVE                             R13 R0
       50 MOVE                             R14 R2
       51 MOVE                             R15 R7
       52 CALL                             R12 3 1
       53 MOVE                             R10 R12
       54 GETUPVAL                         R12 3
       55 GETTABLEKS                       R12 R12 K12 ["count"]
       57 MOVE                             R13 R10
       58 CALL                             R12 1 1
       59 LOADN                            R13 0
       60 JUMPIFNOTLT                      R13 R12 ; [+14]
       62 LOADB                            R8 0
       63 MOVE                             R12 R10
       64 LOADNIL                          R13
       65 LOADNIL                          R14
       66 FORGPREP                         R12
       67 LOADK                            R17 K13 ["Failed to grant permissions for asset %*. See Output for details."]
       68 MOVE                             R19 R15
       69 NAMECALL                         R17 R17 K14 ["format"]
       71 CALL                             R17 2 1
       72 SETTABLE                         R17 R9 R15
       73 FORGLOOP                         R12 2 ; [-7]
       75 DUPTABLE                         R12 K16 [{["Sanitized"] = 0}]
       76 NEWTABLE                         R13 0 0
       78 MOVE                             R14 R0
       79 LOADNIL                          R15
       80 LOADNIL                          R16
       81 FORGPREP                         R14
       82 GETTABLEKS                       R19 R6 K17 ["OnProgress"]
       84 MOVE                             R20 R18
       85 CALL                             R19 1 0
       86 GETTABLE                         R19 R10 R18
       87 JUMPIF                           R19 ; [+56]
       88 GETTABLE                         R19 R2 R17
       89 GETTABLE                         R20 R3 R17
       90 GETTABLE                         R21 R4 R17
       91 GETTABLE                         R22 R1 R17
       92 GETUPVAL                         R23 4
       93 MOVE                             R24 R18
       94 MOVE                             R25 R22
       95 MOVE                             R26 R19
       96 MOVE                             R27 R20
       97 MOVE                             R28 R21
       98 GETTABLEKS                       R29 R6 K18 ["UseAnimationInstance"]
      100 CALL                             R23 6 1
      101 JUMPIF                           R23 ; [+4]
      102 LOADB                            R8 0
      103 LOADK                            R24 K19 ["Failed to get asset instances"]
      104 SETTABLE                         R24 R9 R18
      105 JUMP                             ; [+38]
      106 GETUPVAL                         R24 5
      107 MOVE                             R25 R23
      108 MOVE                             R26 R18
      109 MOVE                             R27 R19
      110 MOVE                             R28 R6
      111 MOVE                             R29 R12
      112 CALL                             R24 5 0
      113 GETUPVAL                         R24 1
      114 CALL                             R24 0 1
      115 JUMPIFNOT                        R24 ; [+22]
      116 GETTABLEKS                       R24 R6 K5 ["SandboxAssetIds"]
      118 JUMPIFEQKNIL                     R24 ; [+19]
      120 GETTABLEKS                       R25 R6 K5 ["SandboxAssetIds"]
      122 GETTABLE                         R24 R25 R18
      123 JUMPIFNOT                        R24 ; [+14]
      124 GETUPVAL                         R24 6
      125 MOVE                             R25 R23
      126 MOVE                             R26 R18
      127 MOVE                             R27 R6
      128 CALL                             R24 3 2
      129 JUMPIF                           R24 ; [+8]
      130 LOADB                            R8 0
      131 LOADK                            R26 K20 ["Failed to sandbox asset: %*"]
      132 MOVE                             R28 R25
      133 NAMECALL                         R26 R26 K14 ["format"]
      135 CALL                             R26 2 1
      136 SETTABLE                         R26 R9 R18
      137 JUMP                             ; [+6]
      138 GETUPVAL                         R24 3
      139 GETTABLEKS                       R24 R24 K21 ["append"]
      141 MOVE                             R25 R13
      142 MOVE                             R26 R23
      143 CALL                             R24 2 0
      144 FORGLOOP                         R14 2 ; [-63]
      146 GETUPVAL                         R14 7
      147 CALL                             R14 0 1
      148 JUMPIFNOT                        R14 ; [+11]
      149 MOVE                             R14 R13
      150 LOADNIL                          R15
      151 LOADNIL                          R16
      152 FORGPREP                         R14
      153 GETUPVAL                         R19 8
      154 MOVE                             R20 R18
      155 GETTABLEKS                       R21 R6 K22 ["Parent"]
      157 CALL                             R19 2 0
      158 FORGLOOP                         R14 2 ; [-6]
      160 GETTABLEKS                       R14 R6 K23 ["SkipCameraMove"]
      162 JUMPIF                           R14 ; [+24]
      163 LENGTH                           R14 R13
      164 JUMPIFEQKN                       R14 K11 [0] ; [+22]
      166 GETUPVAL                         R14 9
      167 MOVE                             R16 R13
      168 NAMECALL                         R14 R14 K24 ["Set"]
      170 CALL                             R14 2 0
      171 GETUPVAL                         R14 10
      172 LOADK                            R16 K25 ["Insert assets"]
      173 NAMECALL                         R14 R14 K26 ["SetWaypoint"]
      175 CALL                             R14 2 0
      176 GETIMPORT                        R14 K28 [game]
      178 GETTABLEKS                       R14 R14 K29 ["Workspace"]
      180 GETTABLEKS                       R14 R14 K30 ["CurrentCamera"]
      182 JUMPIFNOT                        R14 ; [+4]
      183 GETUPVAL                         R15 11
      184 MOVE                             R16 R14
      185 MOVE                             R17 R13
      186 CALL                             R15 2 0
      187 DUPTABLE                         R14 K35 [{"Success", "Instances", "Errors", "Analytics"}]
      188 SETTABLEKS                       R8 R14 K31 ["Success"]
      190 SETTABLEKS                       R13 R14 K32 ["Instances"]
      192 SETTABLEKS                       R9 R14 K33 ["Errors"]
      194 SETTABLEKS                       R12 R14 K34 ["Analytics"]
      196 RETURN                           R14 1

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
       63 GETTABLEKS                       R12 R2 K16 ["Utils"]
       65 GETTABLEKS                       R12 R12 K19 ["logIfDebug"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K9 [require]
       70 GETTABLEKS                       R13 R2 K20 ["sandboxAssetInstances"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K9 [require]
       75 GETTABLEKS                       R14 R2 K21 ["sanitizeAssetInstance"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K9 [require]
       80 GETTABLEKS                       R15 R2 K22 ["setAssetInstanceParent"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K9 [require]
       85 GETTABLEKS                       R16 R2 K23 ["setAssetInstancePosition"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K9 [require]
       90 GETTABLEKS                       R17 R2 K24 ["Flags"]
       92 GETTABLEKS                       R17 R17 K25 ["getFFlagAinSandboxInsertedAssets"]
       94 CALL                             R16 1 1
       95 GETIMPORT                        R17 K9 [require]
       97 GETTABLEKS                       R18 R2 K24 ["Flags"]
       99 GETTABLEKS                       R18 R18 K26 ["getFFlagAssetInsertionDeferParenting"]
      101 CALL                             R17 1 1
      102 GETIMPORT                        R18 K9 [require]
      104 GETTABLEKS                       R19 R2 K24 ["Flags"]
      106 GETTABLEKS                       R19 R19 K27 ["getFFlagCinUseClosestInsertPosition"]
      108 CALL                             R18 1 1
      109 DUPCLOSURE                       R19 K28 [PROTO_0]
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R18
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R17
      117 CAPTURE                          VAL R14
      118 DUPCLOSURE                       R20 K29 [PROTO_2]
      119 CAPTURE                          VAL R12
      120 CAPTURE                          VAL R11
      121 DUPCLOSURE                       R21 K30 [PROTO_3]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R16
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R1
      132 CAPTURE                          VAL R0
      133 CAPTURE                          VAL R6
      134 RETURN                           R21 1
