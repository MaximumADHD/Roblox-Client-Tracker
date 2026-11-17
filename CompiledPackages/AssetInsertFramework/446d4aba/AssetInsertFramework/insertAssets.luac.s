PROTO_0:
        0 LOADB                            R3 0
        1 GETTABLEKS                       R4 R0 K0 ["LoadAsUserInUnsavedPlaces"]
        3 JUMPIFNOTEQKB                    R4 TRUE ; [+16]
        5 LOADB                            R3 0
        6 GETTABLEKS                       R4 R0 K1 ["GameId"]
        8 JUMPIFNOTEQKN                    R4 K2 [0] ; [+11]
       10 GETIMPORT                        R4 K6 [Enum.AssetType.Model]
       12 JUMPIFEQ                         R1 R4 ; [+6]
       14 LOADB                            R3 0
       15 GETIMPORT                        R4 K8 [Enum.AssetType.MeshPart]
       17 JUMPIFNOTEQ                      R1 R4 ; [+2]
       19 NOT                              R3 R2
       20 RETURN                           R3 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["StudioComponents"]
        5 GETTABLEKS                       R2 R2 K1 ["CapabilitiesHandler"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R2
        4 FASTPCALL                        pcall 1 ; [+2]
        5 GETIMPORT                        R3 K1 [pcall]
        7 CALL                             R3 1 2
        8 JUMPIF                           R3 ; [+24]
        9 GETUPVAL                         R5 1
       10 LOADK                            R6 K2 ["Failed to sandbox asset %*: %*"]
       11 MOVE                             R8 R1
       12 MOVE                             R9 R4
       13 NAMECALL                         R6 R6 K3 ["format"]
       15 CALL                             R6 3 1
       16 CALL                             R5 1 0
       17 MOVE                             R5 R0
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 NAMECALL                         R10 R9 K4 ["Destroy"]
       23 CALL                             R10 1 0
       24 FORGLOOP                         R5 2 ; [-4]
       26 LOADB                            R5 0
       27 FASTCALL1                        TOSTRING R4 ; [+3]
       28 MOVE                             R7 R4
       29 GETIMPORT                        R6 K6 [tostring]
       31 CALL                             R6 1 1
       32 RETURN                           R5 2
       33 LOADB                            R5 1
       34 LOADNIL                          R6
       35 RETURN                           R5 2

PROTO_4:
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
       87 JUMPIF                           R19 ; [+85]
       88 GETTABLE                         R19 R2 R17
       89 GETTABLE                         R20 R3 R17
       90 GETTABLE                         R21 R4 R17
       91 GETTABLE                         R22 R1 R17
       92 GETUPVAL                         R24 4
       93 CALL                             R24 0 1
       94 JUMPIFNOT                        R24 ; [+26]
       95 LOADB                            R24 0
       96 GETTABLEKS                       R25 R6 K18 ["LoadAsUserInUnsavedPlaces"]
       98 JUMPIFNOTEQKB                    R25 TRUE ; [+16]
      100 LOADB                            R24 0
      101 GETTABLEKS                       R25 R6 K10 ["GameId"]
      103 JUMPIFNOTEQKN                    R25 K11 [0] ; [+11]
      105 GETIMPORT                        R25 K22 [Enum.AssetType.Model]
      107 JUMPIFEQ                         R19 R25 ; [+6]
      109 LOADB                            R24 0
      110 GETIMPORT                        R25 K24 [Enum.AssetType.MeshPart]
      112 JUMPIFNOTEQ                      R19 R25 ; [+2]
      114 NOT                              R24 R21
      115 JUMPIFNOT                        R24 ; [+5]
      116 GETUPVAL                         R23 5
      117 MOVE                             R24 R18
      118 MOVE                             R25 R19
      119 CALL                             R23 2 1
      120 JUMP                             ; [+9]
      121 GETUPVAL                         R23 6
      122 MOVE                             R24 R18
      123 MOVE                             R25 R22
      124 MOVE                             R26 R19
      125 MOVE                             R27 R20
      126 MOVE                             R28 R21
      127 GETTABLEKS                       R29 R6 K25 ["UseAnimationInstance"]
      129 CALL                             R23 6 1
      130 JUMPIF                           R23 ; [+4]
      131 LOADB                            R8 0
      132 LOADK                            R24 K26 ["Failed to get asset instances"]
      133 SETTABLE                         R24 R9 R18
      134 JUMP                             ; [+38]
      135 GETUPVAL                         R24 7
      136 MOVE                             R25 R23
      137 MOVE                             R26 R18
      138 MOVE                             R27 R19
      139 MOVE                             R28 R6
      140 MOVE                             R29 R12
      141 CALL                             R24 5 0
      142 GETUPVAL                         R24 1
      143 CALL                             R24 0 1
      144 JUMPIFNOT                        R24 ; [+22]
      145 GETTABLEKS                       R24 R6 K5 ["SandboxAssetIds"]
      147 JUMPIFEQKNIL                     R24 ; [+19]
      149 GETTABLEKS                       R25 R6 K5 ["SandboxAssetIds"]
      151 GETTABLE                         R24 R25 R18
      152 JUMPIFNOT                        R24 ; [+14]
      153 GETUPVAL                         R24 8
      154 MOVE                             R25 R23
      155 MOVE                             R26 R18
      156 MOVE                             R27 R6
      157 CALL                             R24 3 2
      158 JUMPIF                           R24 ; [+8]
      159 LOADB                            R8 0
      160 LOADK                            R26 K27 ["Failed to sandbox asset: %*"]
      161 MOVE                             R28 R25
      162 NAMECALL                         R26 R26 K14 ["format"]
      164 CALL                             R26 2 1
      165 SETTABLE                         R26 R9 R18
      166 JUMP                             ; [+6]
      167 GETUPVAL                         R24 3
      168 GETTABLEKS                       R24 R24 K28 ["append"]
      170 MOVE                             R25 R13
      171 MOVE                             R26 R23
      172 CALL                             R24 2 0
      173 FORGLOOP                         R14 2 ; [-92]
      175 GETUPVAL                         R14 9
      176 CALL                             R14 0 1
      177 JUMPIFNOT                        R14 ; [+11]
      178 MOVE                             R14 R13
      179 LOADNIL                          R15
      180 LOADNIL                          R16
      181 FORGPREP                         R14
      182 GETUPVAL                         R19 10
      183 MOVE                             R20 R18
      184 GETTABLEKS                       R21 R6 K29 ["Parent"]
      186 CALL                             R19 2 0
      187 FORGLOOP                         R14 2 ; [-6]
      189 GETTABLEKS                       R14 R6 K30 ["SkipCameraMove"]
      191 JUMPIF                           R14 ; [+24]
      192 LENGTH                           R14 R13
      193 JUMPIFEQKN                       R14 K11 [0] ; [+22]
      195 GETUPVAL                         R14 11
      196 MOVE                             R16 R13
      197 NAMECALL                         R14 R14 K31 ["Set"]
      199 CALL                             R14 2 0
      200 GETUPVAL                         R14 12
      201 LOADK                            R16 K32 ["Insert assets"]
      202 NAMECALL                         R14 R14 K33 ["SetWaypoint"]
      204 CALL                             R14 2 0
      205 GETIMPORT                        R14 K35 [game]
      207 GETTABLEKS                       R14 R14 K36 ["Workspace"]
      209 GETTABLEKS                       R14 R14 K37 ["CurrentCamera"]
      211 JUMPIFNOT                        R14 ; [+4]
      212 GETUPVAL                         R15 13
      213 MOVE                             R16 R14
      214 MOVE                             R17 R13
      215 CALL                             R15 2 0
      216 DUPTABLE                         R14 K42 [{"Success", "Instances", "Errors", "Analytics"}]
      217 SETTABLEKS                       R8 R14 K38 ["Success"]
      219 SETTABLEKS                       R13 R14 K39 ["Instances"]
      221 SETTABLEKS                       R9 R14 K40 ["Errors"]
      223 SETTABLEKS                       R12 R14 K41 ["Analytics"]
      225 RETURN                           R14 1

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
       46 GETTABLEKS                       R9 R2 K15 ["getAssetInstancesAsUser"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K9 [require]
       51 GETTABLEKS                       R10 R2 K16 ["getCameraInsertPosition"]
       53 CALL                             R9 1 1
       54 GETIMPORT                        R10 K9 [require]
       56 GETTABLEKS                       R11 R2 K17 ["Utils"]
       58 GETTABLEKS                       R11 R11 K18 ["getFullConfig"]
       60 CALL                             R10 1 1
       61 GETIMPORT                        R11 K9 [require]
       63 GETTABLEKS                       R12 R2 K19 ["grantUniversePermissions"]
       65 CALL                             R11 1 1
       66 GETIMPORT                        R12 K9 [require]
       68 GETTABLEKS                       R13 R2 K17 ["Utils"]
       70 GETTABLEKS                       R13 R13 K20 ["logIfDebug"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K9 [require]
       75 GETTABLEKS                       R14 R2 K21 ["sandboxAssetInstances"]
       77 CALL                             R13 1 1
       78 GETIMPORT                        R14 K9 [require]
       80 GETTABLEKS                       R15 R2 K22 ["sanitizeAssetInstance"]
       82 CALL                             R14 1 1
       83 GETIMPORT                        R15 K9 [require]
       85 GETTABLEKS                       R16 R2 K23 ["setAssetInstanceParent"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K9 [require]
       90 GETTABLEKS                       R17 R2 K24 ["setAssetInstancePosition"]
       92 CALL                             R16 1 1
       93 GETIMPORT                        R17 K9 [require]
       95 GETTABLEKS                       R18 R2 K25 ["Flags"]
       97 GETTABLEKS                       R18 R18 K26 ["getFFlagAinLoadAsUserInUnsavedPlaces"]
       99 CALL                             R17 1 1
      100 GETIMPORT                        R18 K9 [require]
      102 GETTABLEKS                       R19 R2 K25 ["Flags"]
      104 GETTABLEKS                       R19 R19 K27 ["getFFlagAinSandboxInsertedAssets"]
      106 CALL                             R18 1 1
      107 GETIMPORT                        R19 K9 [require]
      109 GETTABLEKS                       R20 R2 K25 ["Flags"]
      111 GETTABLEKS                       R20 R20 K28 ["getFFlagAssetInsertionDeferParenting"]
      113 CALL                             R19 1 1
      114 GETIMPORT                        R20 K9 [require]
      116 GETTABLEKS                       R21 R2 K25 ["Flags"]
      118 GETTABLEKS                       R21 R21 K29 ["getFFlagCinUseClosestInsertPosition"]
      120 CALL                             R20 1 1
      121 DUPCLOSURE                       R21 K30 [PROTO_0]
      122 DUPCLOSURE                       R22 K31 [PROTO_1]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R4
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R20
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R16
      129 CAPTURE                          VAL R19
      130 CAPTURE                          VAL R15
      131 DUPCLOSURE                       R23 K32 [PROTO_3]
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 DUPCLOSURE                       R24 K33 [PROTO_4]
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R18
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R3
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R22
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R19
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R1
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R6
      149 RETURN                           R24 1
