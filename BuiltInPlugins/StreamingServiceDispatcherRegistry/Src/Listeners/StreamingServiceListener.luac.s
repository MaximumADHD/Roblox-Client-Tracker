PROTO_0:
        0 GETIMPORT                        R3 K1 [require]
        2 GETIMPORT                        R8 K3 [script]
        4 GETTABLEKS                       R7 R8 K4 ["Parent"]
        6 GETTABLEKS                       R6 R7 K4 ["Parent"]
        8 GETTABLEKS                       R5 R6 K5 ["Cache"]
       10 GETTABLEKS                       R4 R5 K6 ["StreamCache"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R3 K7 ["activeStreamId"]
       15 CALL                             R4 0 1
       16 JUMPIFNOTEQ                      R1 R4 ; [+88]
       18 GETUPVAL                         R4 0
       19 CALL                             R4 0 1
       20 JUMPIFNOT                        R4 ; [+8]
       21 GETUPVAL                         R4 1
       22 JUMPIFNOT                        R4 ; [+4]
       23 ORK                              R4 R2 K8 [1]
       24 JUMPIFNOTEQKN                    R4 K8 [1] ; [+2]
       26 RETURN                           R0 0
       27 LOADB                            R4 1
       28 SETUPVAL                         R4 1
       29 GETTABLEKS                       R4 R3 K9 ["packetExists"]
       31 MOVE                             R5 R0
       32 MOVE                             R6 R1
       33 CALL                             R4 2 1
       34 JUMPIFNOT                        R4 ; [+38]
       35 GETTABLEKS                       R5 R3 K10 ["handleEarliestPacketForStream"]
       37 MOVE                             R6 R0
       38 MOVE                             R7 R1
       39 CALL                             R5 2 1
       40 GETTABLEKS                       R6 R3 K9 ["packetExists"]
       42 MOVE                             R7 R0
       43 MOVE                             R8 R1
       44 CALL                             R6 2 1
       45 MOVE                             R4 R6
       46 GETTABLEKS                       R6 R5 K11 ["isFinal"]
       48 JUMPIFNOTEQKB                    R6 TRUE ; [+23]
       50 GETTABLEKS                       R6 R3 K12 ["activeStreamEnded"]
       52 MOVE                             R7 R0
       53 MOVE                             R8 R1
       54 CALL                             R6 2 1
       55 JUMPIFNOT                        R6 ; [+16]
       56 GETUPVAL                         R7 0
       57 CALL                             R7 0 1
       58 JUMPIFNOT                        R7 ; [+8]
       59 GETGLOBAL                        R7 K13 ["handleCachedPacketsForStream"]
       61 MOVE                             R8 R0
       62 MOVE                             R9 R6
       63 ORK                              R11 R2 K8 [1]
       64 ADDK                             R10 R11 K8 [1]
       65 CALL                             R7 3 0
       66 JUMP                             ; [+6]
       67 GETGLOBAL                        R7 K13 ["handleCachedPacketsForStream"]
       69 MOVE                             R8 R0
       70 MOVE                             R9 R6
       71 CALL                             R7 2 0
       72 JUMPBACK                         ; [-39]
       73 GETUPVAL                         R5 2
       74 CALL                             R5 0 1
       75 JUMPIFNOT                        R5 ; [+24]
       76 GETTABLEKS                       R5 R3 K14 ["isRequestEnded"]
       78 MOVE                             R6 R0
       79 CALL                             R5 1 1
       80 JUMPIFNOT                        R5 ; [+19]
       81 GETTABLEKS                       R5 R3 K7 ["activeStreamId"]
       83 CALL                             R5 0 1
       84 JUMPIFNOTEQ                      R5 R1 ; [+15]
       86 GETTABLEKS                       R5 R3 K12 ["activeStreamEnded"]
       88 MOVE                             R6 R0
       89 MOVE                             R7 R1
       90 CALL                             R5 2 1
       91 JUMPIFNOT                        R5 ; [+8]
       92 GETGLOBAL                        R6 K13 ["handleCachedPacketsForStream"]
       94 MOVE                             R7 R0
       95 MOVE                             R8 R5
       96 ORK                              R10 R2 K8 [1]
       97 ADDK                             R9 R10 K8 [1]
       98 CALL                             R6 3 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R5 0
      101 CALL                             R5 0 1
      102 JUMPIFNOT                        R5 ; [+2]
      103 LOADB                            R5 0
      104 SETUPVAL                         R5 1
      105 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getPositionAndSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 2
        5 JUMPIFNOT                        R1 ; [+125]
        6 GETIMPORT                        R4 K2 [workspace]
        8 GETTABLEKS                       R3 R4 K3 ["CurrentCamera"]
       10 GETTABLEKS                       R5 R3 K5 ["ViewportSize"]
       12 MULK                             R4 R5 K4 [0.5]
       13 GETTABLEKS                       R7 R4 K6 ["X"]
       15 GETTABLEKS                       R8 R4 K7 ["Y"]
       17 NAMECALL                         R5 R3 K8 ["ViewportPointToRay"]
       19 CALL                             R5 3 1
       20 GETTABLEKS                       R8 R4 K6 ["X"]
       22 LOADN                            R9 0
       23 NAMECALL                         R6 R3 K8 ["ViewportPointToRay"]
       25 CALL                             R6 3 1
       26 LOADN                            R9 0
       27 GETTABLEKS                       R10 R4 K7 ["Y"]
       29 NAMECALL                         R7 R3 K8 ["ViewportPointToRay"]
       31 CALL                             R7 3 1
       32 GETTABLEKS                       R10 R5 K9 ["Direction"]
       34 GETTABLEKS                       R9 R10 K10 ["Unit"]
       36 GETTABLEKS                       R12 R6 K9 ["Direction"]
       38 GETTABLEKS                       R11 R12 K10 ["Unit"]
       40 NAMECALL                         R9 R9 K11 ["Dot"]
       42 CALL                             R9 2 1
       43 FASTCALL1                        MATH_ACOS R9 ; [+2]
       44 GETIMPORT                        R8 K14 [math.acos]
       46 CALL                             R8 1 1
       47 GETTABLEKS                       R11 R5 K9 ["Direction"]
       49 GETTABLEKS                       R10 R11 K10 ["Unit"]
       51 GETTABLEKS                       R13 R7 K9 ["Direction"]
       53 GETTABLEKS                       R12 R13 K10 ["Unit"]
       55 NAMECALL                         R10 R10 K11 ["Dot"]
       57 CALL                             R10 2 1
       58 FASTCALL1                        MATH_ACOS R10 ; [+2]
       59 GETIMPORT                        R9 K14 [math.acos]
       61 CALL                             R9 1 1
       62 FASTCALL2                        MATH_MIN R8 R9 ; [+5]
       64 MOVE                             R11 R8
       65 MOVE                             R12 R9
       66 GETIMPORT                        R10 K16 [math.min]
       68 CALL                             R10 2 1
       69 GETTABLEKS                       R13 R2 K6 ["X"]
       71 GETTABLEKS                       R14 R2 K7 ["Y"]
       73 GETTABLEKS                       R15 R2 K18 ["Z"]
       75 FASTCALL                         MATH_MAX ; [+2]
       76 GETIMPORT                        R12 K20 [math.max]
       78 CALL                             R12 3 1
       79 MULK                             R11 R12 K17 [1]
       80 MULK                             R14 R11 K4 [0.5]
       81 DIVK                             R16 R10 K21 [2]
       82 FASTCALL1                        MATH_TAN R16 ; [+2]
       83 GETIMPORT                        R15 K23 [math.tan]
       85 CALL                             R15 1 1
       86 DIV                              R13 R14 R15
       87 FASTCALL2K                       MATH_MAX R13 K24 ; [+4]
       89 LOADK                            R14 K24 [20]
       90 GETIMPORT                        R12 K20 [math.max]
       92 CALL                             R12 2 1
       93 GETTABLEKS                       R13 R3 K25 ["CFrame"]
       95 GETTABLEKS                       R16 R13 K26 ["LookVector"]
       97 MUL                              R15 R16 R12
       98 SUB                              R14 R1 R15
       99 GETIMPORT                        R16 K28 [CFrame.new]
      101 MOVE                             R17 R14
      102 CALL                             R16 1 1
      103 GETTABLEKS                       R17 R13 K29 ["Rotation"]
      105 MUL                              R15 R16 R17
      106 GETUPVAL                         R16 1
      107 MOVE                             R18 R3
      108 GETIMPORT                        R19 K31 [TweenInfo.new]
      110 LOADK                            R20 K32 [0.22]
      111 GETIMPORT                        R21 K36 [Enum.EasingStyle.Cubic]
      113 GETIMPORT                        R22 K39 [Enum.EasingDirection.Out]
      115 CALL                             R19 3 1
      116 DUPTABLE                         R20 K41 [{"CFrame", "Focus"}]
      117 SETTABLEKS                       R15 R20 K25 ["CFrame"]
      119 GETIMPORT                        R21 K28 [CFrame.new]
      121 MOVE                             R22 R1
      122 CALL                             R21 1 1
      123 SETTABLEKS                       R21 R20 K40 ["Focus"]
      125 NAMECALL                         R16 R16 K42 ["Create"]
      127 CALL                             R16 4 1
      128 NAMECALL                         R17 R16 K43 ["Play"]
      130 CALL                             R17 1 0
      131 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K2 [string.find]
        2 MOVE                             R4 R1
        3 LOADK                            R5 K3 ["studio://instance/(.+)"]
        4 CALL                             R3 2 3
        5 JUMPIFNOT                        R5 ; [+12]
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K4 ["activeDraftGuids"]
        9 JUMPIFNOT                        R6 ; [+8]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K4 ["activeDraftGuids"]
       13 GETTABLE                         R6 R7 R5
       14 JUMPIFNOT                        R6 ; [+3]
       15 NEWTABLE                         R6 0 0
       17 RETURN                           R6 1
       18 JUMPIF                           R5 ; [+40]
       19 GETIMPORT                        R6 K2 [string.find]
       21 MOVE                             R7 R1
       22 LOADK                            R8 K5 ["studio://instanceid/(.+)"]
       23 CALL                             R6 2 3
       24 JUMPIFNOT                        R8 ; [+34]
       25 GETUPVAL                         R10 0
       26 GETTABLEKS                       R9 R10 K6 ["get"]
       28 MOVE                             R10 R8
       29 CALL                             R9 1 1
       30 JUMPIF                           R9 ; [+15]
       31 GETIMPORT                        R10 K2 [string.find]
       33 MOVE                             R11 R8
       34 LOADK                            R12 K7 ["Instance_(.+)"]
       35 CALL                             R10 2 3
       36 JUMPIFNOT                        R12 ; [+9]
       37 GETUPVAL                         R15 0
       38 GETTABLEKS                       R14 R15 K8 ["g2g"]
       40 GETTABLE                         R13 R14 R12
       41 OR                               R5 R13 R12
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R13 R14 K9 ["guid2instance"]
       45 GETTABLE                         R9 R13 R5
       46 JUMPIFNOT                        R9 ; [+12]
       47 NEWTABLE                         R10 0 1
       49 MOVE                             R11 R9
       50 SETLIST                          R10 R11 1 [1]
       52 MOVE                             R11 R5
       53 NEWTABLE                         R12 0 1
       55 MOVE                             R13 R5
       56 SETLIST                          R12 R13 1 [1]
       58 RETURN                           R10 3
       59 MOVE                             R8 R5
       60 MOVE                             R9 R2
       61 NAMECALL                         R6 R0 K10 ["getActionInstanceFromGuid"]
       63 CALL                             R6 3 -1
       64 RETURN                           R6 -1

PROTO_3:
        0 JUMPIF                           R1 ; [+3]
        1 NEWTABLE                         R3 0 0
        3 RETURN                           R3 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K0 ["guidToInfo"]
        7 GETTABLE                         R3 R4 R1
        8 JUMPIF                           R3 ; [+3]
        9 NEWTABLE                         R4 0 0
       11 RETURN                           R4 1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 NEWTABLE                         R5 0 1
       19 GETTABLEKS                       R6 R3 K1 ["instance"]
       21 SETLIST                          R5 R6 1 [1]
       23 GETTABLEKS                       R6 R3 K2 ["chatBulletGroupId"]
       25 JUMPIFNOT                        R6 ; [+73]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R8 R9 K3 ["chatBulletMap"]
       29 GETTABLE                         R7 R8 R6
       30 JUMPIFNOT                        R7 ; [+68]
       31 GETUPVAL                         R7 1
       32 CALL                             R7 0 1
       33 JUMPIF                           R7 ; [+8]
       34 GETUPVAL                         R10 0
       35 GETTABLEKS                       R9 R10 K3 ["chatBulletMap"]
       37 GETTABLE                         R8 R9 R6
       38 LENGTH                           R7 R8
       39 LOADN                            R8 0
       40 JUMPIFNOTLT                      R8 R7 ; [+58]
       42 GETIMPORT                        R7 K6 [table.clear]
       44 MOVE                             R8 R5
       45 CALL                             R7 1 0
       46 GETIMPORT                        R7 K6 [table.clear]
       48 MOVE                             R8 R4
       49 CALL                             R7 1 0
       50 GETUPVAL                         R11 0
       51 GETTABLEKS                       R10 R11 K3 ["chatBulletMap"]
       53 GETTABLE                         R7 R10 R6
       54 LOADNIL                          R8
       55 LOADNIL                          R9
       56 FORGPREP                         R7
       57 GETUPVAL                         R14 0
       58 GETTABLEKS                       R13 R14 K0 ["guidToInfo"]
       60 GETTABLE                         R12 R13 R11
       61 JUMPIFNOT                        R12 ; [+35]
       62 GETUPVAL                         R14 1
       63 CALL                             R14 0 1
       64 JUMPIFNOT                        R14 ; [+9]
       65 GETTABLEKS                       R15 R12 K1 ["instance"]
       67 GETTABLEKS                       R14 R15 K7 ["Parent"]
       69 JUMPIFNOTEQKNIL                  R14 ; [+2]
       71 LOADB                            R13 0 +1
       72 LOADB                            R13 1
       73 JUMP                             ; [+7]
       74 GETTABLEKS                       R13 R12 K1 ["instance"]
       76 GETIMPORT                        R15 K9 [workspace]
       78 NAMECALL                         R13 R13 K10 ["IsDescendantOf"]
       80 CALL                             R13 2 1
       81 JUMPIFNOT                        R13 ; [+15]
       82 GETTABLEKS                       R15 R12 K1 ["instance"]
       84 FASTCALL2                        TABLE_INSERT R5 R15 ; [+4]
       86 MOVE                             R14 R5
       87 GETIMPORT                        R13 K12 [table.insert]
       89 CALL                             R13 2 0
       90 FASTCALL2                        TABLE_INSERT R4 R11 ; [+5]
       92 MOVE                             R14 R4
       93 MOVE                             R15 R11
       94 GETIMPORT                        R13 K12 [table.insert]
       96 CALL                             R13 2 0
       97 FORGLOOP                         R7 2 ; [-41]
       99 LENGTH                           R7 R5
      100 JUMPIFNOTEQKN                    R7 K13 [0] ; [+4]
      102 NEWTABLE                         R7 0 0
      104 RETURN                           R7 1
      105 GETTABLEKS                       R7 R0 K14 ["actionClickCursor"]
      107 JUMPIFNOT                        R7 ; [+4]
      108 GETTABLEKS                       R7 R0 K15 ["lastGroupSelected"]
      110 JUMPIFEQ                         R1 R7 ; [+5]
      112 LOADN                            R7 0
      113 SETTABLEKS                       R7 R0 K14 ["actionClickCursor"]
      115 JUMP                             ; [+9]
      116 JUMPIFNOT                        R2 ; [+8]
      117 GETTABLEKS                       R9 R0 K14 ["actionClickCursor"]
      119 ADD                              R8 R9 R2
      120 LENGTH                           R10 R5
      121 ADDK                             R9 R10 K16 [1]
      122 MOD                              R7 R8 R9
      123 SETTABLEKS                       R7 R0 K14 ["actionClickCursor"]
      125 GETTABLEKS                       R7 R0 K14 ["actionClickCursor"]
      127 JUMPIFEQKN                       R7 K13 [0] ; [+17]
      129 NEWTABLE                         R7 0 1
      131 GETTABLEKS                       R9 R0 K14 ["actionClickCursor"]
      133 GETTABLE                         R8 R5 R9
      134 SETLIST                          R7 R8 1 [1]
      136 MOVE                             R8 R1
      137 NEWTABLE                         R9 0 1
      139 GETTABLEKS                       R11 R0 K14 ["actionClickCursor"]
      141 GETTABLE                         R10 R4 R11
      142 SETLIST                          R9 R10 1 [1]
      144 RETURN                           R7 3
      145 MOVE                             R7 R5
      146 MOVE                             R8 R1
      147 MOVE                             R9 R4
      148 RETURN                           R7 3

PROTO_4:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 MOVE                             R5 R1
        4 LOADNIL                          R6
        5 MOVE                             R7 R2
        6 NAMECALL                         R3 R0 K0 ["onShiftAssetVariant"]
        8 CALL                             R3 4 0
        9 RETURN                           R0 0
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K2 [tostring]
       14 CALL                             R3 1 1
       15 MOVE                             R6 R1
       16 NAMECALL                         R4 R0 K3 ["getActionInstance"]
       18 CALL                             R4 2 3
       19 LENGTH                           R7 R4
       20 LOADN                            R8 0
       21 JUMPIFNOTLT                      R8 R7 ; [+63]
       23 GETUPVAL                         R9 1
       24 GETTABLEKS                       R8 R9 K4 ["altDataMap"]
       26 GETTABLE                         R7 R8 R5
       27 LENGTH                           R8 R6
       28 JUMPIFNOTEQKN                    R8 K5 [1] ; [+6]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R8 R9 K4 ["altDataMap"]
       33 GETTABLEN                        R9 R6 1
       34 GETTABLE                         R7 R8 R9
       35 GETTABLEKS                       R8 R7 K6 ["altAssets"]
       37 JUMPIFNOT                        R8 ; [+47]
       38 GETTABLEKS                       R9 R7 K6 ["altAssets"]
       40 LENGTH                           R8 R9
       41 LOADN                            R9 0
       42 JUMPIFNOTLT                      R9 R8 ; [+42]
       44 LOADN                            R8 255
       45 LOADN                            R9 255
       46 GETTABLEKS                       R10 R7 K6 ["altAssets"]
       48 LOADNIL                          R11
       49 LOADNIL                          R12
       50 FORGPREP                         R10
       51 GETTABLEKS                       R15 R7 K7 ["assetId"]
       53 JUMPIFNOTEQ                      R14 R15 ; [+3]
       55 MOVE                             R8 R13
       56 JUMP                             ; [+3]
       57 JUMPIFNOTEQ                      R14 R3 ; [+2]
       59 MOVE                             R9 R13
       60 FORGLOOP                         R10 2 ; [-10]
       62 JUMPIFNOTEQKN                    R8 K8 [-1] ; [+13]
       64 GETTABLEKS                       R11 R7 K6 ["altAssets"]
       66 GETTABLEKS                       R12 R7 K7 ["assetId"]
       68 FASTCALL2                        TABLE_INSERT R11 R12 ; [+3]
       70 GETIMPORT                        R10 K11 [table.insert]
       72 CALL                             R10 2 0
       73 GETTABLEKS                       R10 R7 K6 ["altAssets"]
       75 LENGTH                           R8 R10
       76 JUMPIFEQKN                       R8 K8 [-1] ; [+8]
       78 JUMPIFEQKN                       R9 K8 [-1] ; [+6]
       80 MOVE                             R12 R1
       81 SUB                              R13 R9 R8
       82 NAMECALL                         R10 R0 K0 ["onShiftAssetVariant"]
       84 CALL                             R10 3 0
       85 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["request"]
        3 GETTABLEKS                       R1 R0 K1 ["arguments"]
        5 JUMPIFNOT                        R1 ; [+85]
        6 GETTABLEKS                       R2 R1 K2 ["properties"]
        8 JUMPIF                           R2 ; [+4]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["properties"]
       13 GETUPVAL                         R3 1
       14 CALL                             R3 0 1
       15 JUMPIFNOT                        R3 ; [+6]
       16 GETUPVAL                         R3 2
       17 LOADK                            R5 K3 ["PVInstance"]
       18 NAMECALL                         R3 R3 K4 ["IsA"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+58]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K5 ["getWorldBoundingBox"]
       25 GETUPVAL                         R4 2
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 4
       28 CALL                             R4 0 1
       29 JUMPIFNOT                        R4 ; [+28]
       30 LOADK                            R4 K6 ["absolute"]
       31 SETTABLEKS                       R4 R2 K7 ["positionOrigin"]
       33 DUPTABLE                         R4 K10 [{"x", "z"}]
       34 GETTABLEKS                       R6 R3 K11 ["Position"]
       36 GETTABLEKS                       R5 R6 K12 ["X"]
       38 SETTABLEKS                       R5 R4 K8 ["x"]
       40 GETTABLEKS                       R6 R3 K11 ["Position"]
       42 GETTABLEKS                       R5 R6 K13 ["Z"]
       44 SETTABLEKS                       R5 R4 K9 ["z"]
       46 SETTABLEKS                       R4 R2 K14 ["position"]
       48 GETUPVAL                         R4 2
       49 NAMECALL                         R4 R4 K15 ["GetPivot"]
       51 CALL                             R4 1 1
       52 GETTABLEKS                       R6 R4 K11 ["Position"]
       54 SUB                              R5 R4 R6
       55 SETTABLEKS                       R5 R2 K16 ["offsetCFrame"]
       57 JUMP                             ; [+22]
       58 GETUPVAL                         R5 3
       59 GETTABLEKS                       R4 R5 K17 ["getRequestCFrame"]
       61 GETTABLEKS                       R5 R0 K18 ["requestId"]
       63 CALL                             R4 1 1
       64 GETTABLEKS                       R7 R3 K11 ["Position"]
       66 NAMECALL                         R5 R4 K19 ["PointToObjectSpace"]
       68 CALL                             R5 2 1
       69 DUPTABLE                         R6 K10 [{"x", "z"}]
       70 GETTABLEKS                       R7 R5 K12 ["X"]
       72 SETTABLEKS                       R7 R6 K8 ["x"]
       74 GETTABLEKS                       R7 R5 K13 ["Z"]
       76 SETTABLEKS                       R7 R6 K9 ["z"]
       78 SETTABLEKS                       R6 R2 K14 ["position"]
       80 GETUPVAL                         R3 1
       81 CALL                             R3 0 1
       82 JUMPIFNOT                        R3 ; [+5]
       83 GETUPVAL                         R4 2
       84 GETTABLEKS                       R3 R4 K20 ["Parent"]
       86 SETTABLEKS                       R3 R2 K21 ["parentInstance"]
       88 GETUPVAL                         R3 5
       89 SETTABLEKS                       R3 R1 K22 ["altDataId"]
       91 GETUPVAL                         R2 0
       92 GETUPVAL                         R3 6
       93 SETTABLEKS                       R3 R2 K23 ["assetId"]
       95 GETUPVAL                         R2 7
       96 LOADB                            R3 1
       97 SETTABLEKS                       R3 R2 K24 ["deferedSelection"]
       99 GETUPVAL                         R2 1
      100 CALL                             R2 0 1
      101 JUMPIF                           R2 ; [+11]
      102 GETUPVAL                         R3 3
      103 GETTABLEKS                       R2 R3 K25 ["isAssetCached"]
      105 GETUPVAL                         R3 6
      106 CALL                             R2 1 1
      107 JUMPIF                           R2 ; [+5]
      108 GETUPVAL                         R3 3
      109 GETTABLEKS                       R2 R3 K26 ["loadAssetAsync"]
      111 GETUPVAL                         R3 6
      112 CALL                             R2 1 0
      113 GETUPVAL                         R2 8
      114 GETTABLEKS                       R4 R0 K18 ["requestId"]
      116 LOADK                            R5 K27 ["InsertAsset"]
      117 GETTABLEKS                       R6 R0 K1 ["arguments"]
      119 NAMECALL                         R2 R2 K28 ["ExecuteCommandAsync"]
      121 CALL                             R2 4 0
      122 GETUPVAL                         R5 9
      123 GETTABLEKS                       R4 R5 K29 ["guidToInfo"]
      125 GETUPVAL                         R5 5
      126 GETTABLE                         R3 R4 R5
      127 GETTABLEKS                       R2 R3 K30 ["instance"]
      129 GETUPVAL                         R3 10
      130 NAMECALL                         R3 R3 K31 ["Get"]
      132 CALL                             R3 1 1
      133 LOADB                            R4 0
      134 LOADN                            R7 1
      135 LENGTH                           R5 R3
      136 LOADN                            R6 1
      137 FORNPREP                         R5
      138 GETTABLE                         R8 R3 R7
      139 GETUPVAL                         R9 2
      140 JUMPIFNOTEQ                      R8 R9 ; [+3]
      142 LOADB                            R4 1
      143 SETTABLE                         R2 R3 R7
      144 FORNLOOP                         R5
      145 JUMPIFNOT                        R4 ; [+5]
      146 GETUPVAL                         R5 10
      147 MOVE                             R7 R3
      148 NAMECALL                         R5 R5 K32 ["Set"]
      150 CALL                             R5 2 0
      151 GETUPVAL                         R5 2
      152 LOADK                            R7 K33 ["AssetId"]
      153 NAMECALL                         R5 R5 K34 ["GetAttribute"]
      155 CALL                             R5 2 1
      156 LOADK                            R8 K33 ["AssetId"]
      157 NAMECALL                         R6 R2 K34 ["GetAttribute"]
      159 CALL                             R6 2 1
      160 GETUPVAL                         R7 11
      161 GETTABLEKS                       R9 R0 K18 ["requestId"]
      163 MOVE                             R10 R5
      164 MOVE                             R11 R6
      165 NAMECALL                         R7 R7 K35 ["AlternativeAssetSelected"]
      167 CALL                             R7 4 0
      168 GETUPVAL                         R7 2
      169 LOADNIL                          R8
      170 SETTABLEKS                       R8 R7 K20 ["Parent"]
      172 GETUPVAL                         R7 7
      173 LOADB                            R8 0
      174 SETTABLEKS                       R8 R7 K24 ["deferedSelection"]
      176 GETUPVAL                         R7 12
      177 SUBK                             R7 R7 K36 [1]
      178 SETUPVAL                         R7 12
      179 GETUPVAL                         R7 13
      180 NAMECALL                         R7 R7 K37 ["Fire"]
      182 CALL                             R7 1 0
      183 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFNOTLT                      R1 R0 ; [+8]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K0 ["Event"]
        7 NAMECALL                         R0 R0 K1 ["Wait"]
        9 CALL                             R0 1 0
       10 JUMPBACK                         ; [-11]
       11 GETUPVAL                         R0 1
       12 NAMECALL                         R0 R0 K2 ["Destroy"]
       14 CALL                             R0 1 0
       15 GETUPVAL                         R0 2
       16 JUMPIFNOT                        R0 ; [+7]
       17 GETUPVAL                         R0 3
       18 GETUPVAL                         R2 2
       19 GETIMPORT                        R3 K6 [Enum.FinishRecordingOperation.Commit]
       21 NAMECALL                         R0 R0 K7 ["FinishRecording"]
       23 CALL                             R0 3 0
       24 NEWTABLE                         R0 0 0
       26 GETUPVAL                         R1 4
       27 LOADNIL                          R2
       28 LOADNIL                          R3
       29 FORGPREP                         R1
       30 GETUPVAL                         R11 5
       31 GETTABLEKS                       R10 R11 K8 ["guidToInfo"]
       33 GETTABLE                         R9 R10 R5
       34 GETTABLEKS                       R8 R9 K9 ["instance"]
       36 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       38 MOVE                             R7 R0
       39 GETIMPORT                        R6 K12 [table.insert]
       41 CALL                             R6 2 0
       42 FORGLOOP                         R1 2 ; [-13]
       44 GETUPVAL                         R1 6
       45 MOVE                             R2 R0
       46 CALL                             R1 1 0
       47 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R6 R1
        1 NAMECALL                         R4 R0 K0 ["getActionInstance"]
        3 CALL                             R4 2 3
        4 LENGTH                           R7 R4
        5 LOADN                            R8 0
        6 JUMPIFNOTLT                      R8 R7 ; [+137]
        8 GETUPVAL                         R7 0
        9 CALL                             R7 0 1
       10 JUMPIFNOT                        R7 ; [+1]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 GETUPVAL                         R7 0
       14 CALL                             R7 0 1
       15 JUMPIFNOT                        R7 ; [+2]
       16 JUMPIF                           R3 ; [+57]
       17 JUMPIFNOT                        R2 ; [+56]
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K1 ["altDataMap"]
       21 GETTABLE                         R7 R8 R5
       22 LENGTH                           R8 R6
       23 JUMPIFNOTEQKN                    R8 K2 [1] ; [+6]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R8 R9 K1 ["altDataMap"]
       28 GETTABLEN                        R9 R6 1
       29 GETTABLE                         R7 R8 R9
       30 GETTABLEKS                       R8 R7 K3 ["altAssets"]
       32 JUMPIFNOT                        R8 ; [+41]
       33 GETTABLEKS                       R9 R7 K3 ["altAssets"]
       35 LENGTH                           R8 R9
       36 LOADN                            R9 0
       37 JUMPIFNOTLT                      R9 R8 ; [+36]
       39 GETTABLEKS                       R8 R7 K3 ["altAssets"]
       41 LOADNIL                          R9
       42 LOADNIL                          R10
       43 FORGPREP                         R8
       44 GETTABLEKS                       R13 R7 K4 ["assetId"]
       46 JUMPIFNOTEQ                      R12 R13 ; [+12]
       48 GETTABLEKS                       R13 R7 K3 ["altAssets"]
       50 SUBK                             R17 R11 K2 [1]
       51 ADD                              R16 R17 R2
       52 GETTABLEKS                       R18 R7 K3 ["altAssets"]
       54 LENGTH                           R17 R18
       55 MOD                              R15 R16 R17
       56 ADDK                             R14 R15 K2 [1]
       57 GETTABLE                         R3 R13 R14
       58 JUMP                             ; [+2]
       59 FORGLOOP                         R8 2 ; [-16]
       61 JUMPIF                           R3 ; [+12]
       62 GETTABLEKS                       R9 R7 K3 ["altAssets"]
       64 GETTABLEKS                       R10 R7 K4 ["assetId"]
       66 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       68 GETIMPORT                        R8 K7 [table.insert]
       70 CALL                             R8 2 0
       71 GETTABLEKS                       R8 R7 K3 ["altAssets"]
       73 GETTABLEN                        R3 R8 1
       74 JUMPIF                           R3 ; [+2]
       75 CLOSEUPVALS                      R3
       76 RETURN                           R0 0
       77 GETUPVAL                         R8 2
       78 GETTABLEKS                       R7 R8 K8 ["isAssetCached"]
       80 MOVE                             R8 R3
       81 CALL                             R7 1 1
       82 JUMPIF                           R7 ; [+5]
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R7 R8 K9 ["loadAssetAsync"]
       86 MOVE                             R8 R3
       87 CALL                             R7 1 0
       88 LOADN                            R7 0
       89 GETIMPORT                        R8 K12 [Instance.new]
       91 LOADK                            R9 K13 ["BindableEvent"]
       92 CALL                             R8 1 1
       93 GETUPVAL                         R9 3
       94 LOADK                            R11 K14 ["Assistant Variation Swap"]
       95 NAMECALL                         R9 R9 K15 ["TryBeginRecording"]
       97 CALL                             R9 2 1
       98 MOVE                             R10 R4
       99 LOADNIL                          R11
      100 LOADNIL                          R12
      101 FORGPREP                         R10
      102 GETTABLE                         R15 R6 R13
      103 GETUPVAL                         R18 1
      104 GETTABLEKS                       R17 R18 K1 ["altDataMap"]
      106 GETTABLE                         R16 R17 R15
      107 JUMPIFNOT                        R16 ; [+19]
      108 ADDK                             R7 R7 K2 [1]
      109 GETIMPORT                        R17 K18 [task.defer]
      111 NEWCLOSURE                       R18 P0
      112 CAPTURE                          VAL R16
      113 CAPTURE                          UPVAL U4
      114 CAPTURE                          VAL R14
      115 CAPTURE                          UPVAL U2
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R15
      118 CAPTURE                          REF R3
      119 CAPTURE                          VAL R0
      120 CAPTURE                          UPVAL U6
      121 CAPTURE                          UPVAL U1
      122 CAPTURE                          UPVAL U7
      123 CAPTURE                          UPVAL U8
      124 CAPTURE                          REF R7
      125 CAPTURE                          VAL R8
      126 CALL                             R17 1 0
      127 FORGLOOP                         R10 2 ; [-26]
      129 LOADN                            R10 0
      130 JUMPIFNOTLT                      R10 R7 ; [+12]
      132 GETIMPORT                        R10 K20 [task.spawn]
      134 NEWCLOSURE                       R11 P1
      135 CAPTURE                          REF R7
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R9
      138 CAPTURE                          UPVAL U3
      139 CAPTURE                          VAL R6
      140 CAPTURE                          UPVAL U1
      141 CAPTURE                          UPVAL U9
      142 CALL                             R10 1 0
      143 CLOSEUPVALS                      R7
      144 CLOSEUPVALS                      R3
      145 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+7]
        5 GETUPVAL                         R2 0
        6 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R1 K4 [table.insert]
       11 CALL                             R1 2 0
       12 NAMECALL                         R1 R0 K5 ["GetDescendants"]
       14 CALL                             R1 1 3
       15 FORGPREP                         R1
       16 LOADK                            R8 K0 ["BasePart"]
       17 NAMECALL                         R6 R5 K1 ["IsA"]
       19 CALL                             R6 2 1
       20 JUMPIFNOT                        R6 ; [+7]
       21 GETUPVAL                         R7 0
       22 FASTCALL2                        TABLE_INSERT R7 R5 ; [+4]
       24 MOVE                             R8 R5
       25 GETIMPORT                        R6 K4 [table.insert]
       27 CALL                             R6 2 0
       28 FORGLOOP                         R1 2 ; [-13]
       30 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 MOVE                             R3 R0
        5 LOADNIL                          R4
        6 LOADNIL                          R5
        7 FORGPREP                         R3
        8 MOVE                             R8 R2
        9 MOVE                             R9 R7
       10 CALL                             R8 1 0
       11 FORGLOOP                         R3 2 ; [-4]
       13 RETURN                           R1 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getActionInstanceFromGuid"]
        4 CALL                             R1 2 1
        5 GETTABLEN                        R2 R1 1
        6 JUMPIFNOT                        R2 ; [+5]
        7 LOADK                            R5 K1 ["MaterialVariant"]
        8 NAMECALL                         R3 R2 K2 ["IsA"]
       10 CALL                             R3 2 1
       11 JUMPIF                           R3 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K3 ["Get"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 2
       18 MOVE                             R5 R3
       19 CALL                             R4 1 1
       20 GETTABLEN                        R5 R3 1
       21 JUMPIFNOTEQ                      R5 R2 ; [+8]
       23 GETUPVAL                         R5 1
       24 NEWTABLE                         R7 0 0
       26 NAMECALL                         R5 R5 K4 ["Set"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0
       30 LENGTH                           R5 R4
       31 JUMPIFNOTEQKN                    R5 K5 [0] ; [+7]
       33 GETUPVAL                         R5 1
       34 MOVE                             R7 R1
       35 NAMECALL                         R5 R5 K4 ["Set"]
       37 CALL                             R5 2 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R5 3
       40 LOADK                            R7 K6 ["AssistantSetMaterials"]
       41 NAMECALL                         R5 R5 K7 ["TryBeginRecording"]
       43 CALL                             R5 2 1
       44 MOVE                             R6 R4
       45 LOADNIL                          R7
       46 LOADNIL                          R8
       47 FORGPREP                         R6
       48 GETTABLEKS                       R11 R2 K8 ["BaseMaterial"]
       50 SETTABLEKS                       R11 R10 K9 ["Material"]
       52 GETTABLEKS                       R11 R2 K10 ["Name"]
       54 SETTABLEKS                       R11 R10 K1 ["MaterialVariant"]
       56 FORGLOOP                         R6 2 ; [-9]
       58 JUMPIFNOT                        R5 ; [+7]
       59 GETUPVAL                         R6 3
       60 MOVE                             R8 R5
       61 GETIMPORT                        R9 K14 [Enum.FinishRecordingOperation.Commit]
       63 NAMECALL                         R6 R6 K15 ["FinishRecording"]
       65 CALL                             R6 3 0
       66 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["deferedSelection"]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Get"]
        7 CALL                             R0 1 1
        8 LENGTH                           R1 R0
        9 JUMPIFNOTEQKN                    R1 K2 [0] ; [+29]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K3 ["lastSelectedInstances"]
       14 LENGTH                           R1 R2
       15 JUMPIFNOTEQKN                    R1 K4 [1] ; [+23]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K3 ["lastSelectedInstances"]
       20 GETTABLEN                        R1 R2 1
       21 GETIMPORT                        R3 K6 [workspace]
       23 NAMECALL                         R1 R1 K7 ["IsDescendantOf"]
       25 CALL                             R1 2 1
       26 JUMPIF                           R1 ; [+12]
       27 GETUPVAL                         R1 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K8 ["actionClickCursor"]
       31 SUBK                             R3 R4 K4 [1]
       32 GETUPVAL                         R6 2
       33 LENGTH                           R5 R6
       34 ADDK                             R4 R5 K4 [1]
       35 MOD                              R2 R3 R4
       36 SETTABLEKS                       R2 R1 K8 ["actionClickCursor"]
       38 RETURN                           R0 0
       39 GETUPVAL                         R2 3
       40 GETTABLEKS                       R1 R2 K9 ["shallowEqual"]
       42 MOVE                             R2 R0
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R3 R4 K3 ["lastSelectedInstances"]
       46 CALL                             R1 2 1
       47 JUMPIF                           R1 ; [+24]
       48 GETUPVAL                         R2 0
       49 GETTABLEKS                       R1 R2 K10 ["_selectionListener"]
       51 NAMECALL                         R1 R1 K11 ["Disconnect"]
       53 CALL                             R1 1 0
       54 GETUPVAL                         R1 0
       55 LOADNIL                          R2
       56 SETTABLEKS                       R2 R1 K10 ["_selectionListener"]
       58 GETIMPORT                        R1 K14 [table.clear]
       60 GETUPVAL                         R3 0
       61 GETTABLEKS                       R2 R3 K3 ["lastSelectedInstances"]
       63 CALL                             R1 1 0
       64 GETUPVAL                         R1 0
       65 LOADNIL                          R2
       66 SETTABLEKS                       R2 R1 K3 ["lastSelectedInstances"]
       68 GETUPVAL                         R1 0
       69 LOADNIL                          R2
       70 SETTABLEKS                       R2 R1 K8 ["actionClickCursor"]
       72 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["deferedSelection"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K0 ["deferedSelection"]
        9 GETIMPORT                        R0 K3 [task.defer]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_14:
        0 MOVE                             R4 R1
        1 LOADN                            R5 1
        2 NAMECALL                         R2 R0 K0 ["getActionInstance"]
        4 CALL                             R2 3 2
        5 LENGTH                           R4 R2
        6 LOADN                            R5 0
        7 JUMPIFNOTLT                      R5 R4 ; [+30]
        9 SETTABLEKS                       R2 R0 K1 ["lastSelectedInstances"]
       11 SETTABLEKS                       R3 R0 K2 ["lastGroupSelected"]
       13 GETUPVAL                         R4 0
       14 MOVE                             R6 R2
       15 NAMECALL                         R4 R4 K3 ["Set"]
       17 CALL                             R4 2 0
       18 GETTABLEKS                       R4 R0 K4 ["_selectionListener"]
       20 JUMPIF                           R4 ; [+13]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K5 ["SelectionChanged"]
       24 NEWCLOSURE                       R6 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          UPVAL U1
       29 NAMECALL                         R4 R4 K6 ["Connect"]
       31 CALL                             R4 2 1
       32 SETTABLEKS                       R4 R0 K4 ["_selectionListener"]
       34 GETUPVAL                         R4 2
       35 MOVE                             R5 R2
       36 CALL                             R4 1 0
       37 RETURN                           R0 0
       38 GETIMPORT                        R4 K9 [string.match]
       40 MOVE                             R5 R1
       41 LOADK                            R6 K10 ["^studio://apply_material_variant/.+"]
       42 CALL                             R4 2 1
       43 JUMPIFNOT                        R4 ; [+11]
       44 GETIMPORT                        R4 K9 [string.match]
       46 MOVE                             R5 R1
       47 LOADK                            R6 K11 ["^studio://apply_material_variant/(.+)"]
       48 CALL                             R4 2 1
       49 JUMPIF                           R4 ; [+1]
       50 RETURN                           R0 0
       51 GETUPVAL                         R5 3
       52 MOVE                             R6 R4
       53 CALL                             R5 1 0
       54 RETURN                           R0 0
       55 GETIMPORT                        R4 K9 [string.match]
       57 MOVE                             R5 R1
       58 LOADK                            R6 K12 ["^https://"]
       59 CALL                             R4 2 1
       60 JUMPIFNOT                        R4 ; [+9]
       61 GETUPVAL                         R4 4
       62 LOADK                            R6 K13 ["ExternalURL"]
       63 NEWTABLE                         R7 1 0
       65 SETTABLEKS                       R1 R7 K14 ["url"]
       67 NAMECALL                         R4 R4 K15 ["DisplayContent"]
       69 CALL                             R4 3 0
       70 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOTEQKS                    R1 K0 ["attribution"] ; [+54]
        2 MOVE                             R5 R2
        3 NAMECALL                         R3 R0 K1 ["getActionInstance"]
        5 CALL                             R3 2 3
        6 LENGTH                           R6 R3
        7 LOADN                            R7 0
        8 JUMPIFNOTLT                      R7 R6 ; [+75]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K2 ["altDataMap"]
       13 GETTABLE                         R6 R7 R4
       14 LENGTH                           R7 R5
       15 JUMPIFNOTEQKN                    R7 K3 [1] ; [+6]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R7 R8 K2 ["altDataMap"]
       20 GETTABLEN                        R8 R5 1
       21 GETTABLE                         R6 R7 R8
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K4 ["getAssetAttributionInfo"]
       25 MOVE                             R8 R6
       26 JUMPIFNOT                        R8 ; [+2]
       27 GETTABLEKS                       R8 R6 K5 ["assetId"]
       29 CALL                             R7 1 1
       30 JUMPIFNOT                        R7 ; [+53]
       31 GETTABLEKS                       R8 R7 K6 ["Name"]
       33 GETTABLEKS                       R9 R7 K7 ["Creator"]
       35 JUMPIFNOT                        R9 ; [+4]
       36 GETTABLEKS                       R10 R7 K7 ["Creator"]
       38 GETTABLEKS                       R9 R10 K6 ["Name"]
       40 JUMPIFNOT                        R8 ; [+43]
       41 JUMPIFNOT                        R9 ; [+42]
       42 GETUPVAL                         R10 2
       43 LOADK                            R12 K8 ["Message"]
       44 LOADK                            R13 K9 ["AuthoredBy"]
       45 DUPTABLE                         R14 K12 [{"asset", "creator"}]
       46 SETTABLEKS                       R8 R14 K10 ["asset"]
       48 SETTABLEKS                       R9 R14 K11 ["creator"]
       50 NAMECALL                         R10 R10 K13 ["getText"]
       52 CALL                             R10 4 -1
       53 RETURN                           R10 -1
       54 JUMP                             ; [+29]
       55 JUMPIFNOTEQKS                    R1 K5 ["assetId"] ; [+28]
       57 MOVE                             R5 R2
       58 NAMECALL                         R3 R0 K1 ["getActionInstance"]
       60 CALL                             R3 2 3
       61 LENGTH                           R6 R3
       62 LOADN                            R7 0
       63 JUMPIFNOTLT                      R7 R6 ; [+20]
       65 GETUPVAL                         R8 0
       66 GETTABLEKS                       R7 R8 K2 ["altDataMap"]
       68 GETTABLE                         R6 R7 R4
       69 LENGTH                           R7 R5
       70 JUMPIFNOTEQKN                    R7 K3 [1] ; [+6]
       72 GETUPVAL                         R8 0
       73 GETTABLEKS                       R7 R8 K2 ["altDataMap"]
       75 GETTABLEN                        R8 R5 1
       76 GETTABLE                         R6 R7 R8
       77 JUMPIFNOT                        R6 ; [+6]
       78 GETTABLEKS                       R7 R6 K5 ["assetId"]
       80 JUMPIFNOT                        R7 ; [+3]
       81 GETTABLEKS                       R7 R6 K5 ["assetId"]
       83 RETURN                           R7 1
       84 LOADNIL                          R3
       85 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R2
        2 NAMECALL                         R3 R3 K0 ["JSONDecode"]
        4 CALL                             R3 2 1
        5 GETTABLEKS                       R4 R3 K1 ["streamId"]
        7 JUMPIF                           R4 ; [+7]
        8 GETTABLEKS                       R4 R3 K2 ["arguments"]
       10 JUMPIFNOT                        R4 ; [+4]
       11 GETTABLEKS                       R5 R3 K2 ["arguments"]
       13 GETTABLEKS                       R4 R5 K3 ["syncStreamId"]
       15 SETTABLEKS                       R1 R3 K4 ["command"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R5 R6 K5 ["storeStreamPacket"]
       20 MOVE                             R6 R0
       21 MOVE                             R7 R4
       22 MOVE                             R8 R3
       23 CALL                             R5 3 0
       24 GETGLOBAL                        R5 K6 ["handleCachedPacketsForStream"]
       26 MOVE                             R6 R0
       27 MOVE                             R7 R4
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["newRequest"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["requestEnded"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["clear"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["EndRequest"]
        2 NEWTABLE                         R4 1 0
        4 SETTABLEKS                       R0 R4 K1 ["requestId"]
        6 NAMECALL                         R1 R1 K2 ["DisplayContent"]
        8 CALL                             R1 3 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["getActionInstance"]
        4 CALL                             R1 2 1
        5 LENGTH                           R2 R1
        6 LOADN                            R3 0
        7 JUMPIFNOTLT                      R3 R2 ; [+13]
        9 GETTABLEN                        R3 R1 1
       10 GETTABLEKS                       R2 R3 K1 ["Name"]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K2 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
       16 MOVE                             R6 R2
       17 NAMECALL                         R3 R3 K3 ["Fire"]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K5 [print]
       23 LOADK                            R3 K6 ["Find Variations called:"]
       24 MOVE                             R4 R0
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["getActionInstanceFromGuid"]
        4 CALL                             R3 2 1
        5 LENGTH                           R4 R3
        6 LOADN                            R5 0
        7 JUMPIFNOTLT                      R5 R4 ; [+12]
        9 GETTABLEN                        R4 R3 1
       10 SETTABLEKS                       R1 R4 K1 ["StudsPerTile"]
       12 JUMPIFNOT                        R2 ; [+3]
       13 GETIMPORT                        R5 K5 [Enum.MaterialPattern.Organic]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R5 K7 [Enum.MaterialPattern.Regular]
       18 SETTABLEKS                       R5 R4 K3 ["MaterialPattern"]
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onAction"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onShiftAssetVariant"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_25:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onShiftAssetToId"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R2 K2 [table.clear]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["assetCacheMap"]
        5 CALL                             R2 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["SetRequestMetadata"]
        9 MOVE                             R3 R0
       10 LOADK                            R4 K5 ["Query"]
       11 MOVE                             R5 R1
       12 CALL                             R2 3 0
       13 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R3 K2 [{"requestId", "arguments"}]
        1 SETTABLEKS                       R0 R3 K0 ["requestId"]
        3 DUPTABLE                         R4 K6 [{"errorId", "errorType", "errorMessage"}]
        4 LOADK                            R5 K7 ["StreamingServiceError"]
        5 SETTABLEKS                       R5 R4 K3 ["errorId"]
        7 SETTABLEKS                       R1 R4 K4 ["errorType"]
        9 SETTABLEKS                       R2 R4 K5 ["errorMessage"]
       11 SETTABLEKS                       R4 R3 K1 ["arguments"]
       13 GETUPVAL                         R4 0
       14 MOVE                             R5 R3
       15 CALL                             R4 1 0
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R4 R5 K8 ["SetRequestMetadata"]
       19 MOVE                             R5 R0
       20 LOADK                            R6 K9 ["ErrorMessage"]
       21 MOVE                             R7 R2
       22 CALL                             R4 3 0
       23 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["GetRequestMetadata"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["Time_Start"]
        5 CALL                             R1 2 1
        6 GETIMPORT                        R2 K4 [os.clock]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["SetRequestMetadata"]
       12 MOVE                             R4 R0
       13 LOADK                            R5 K6 ["Time_End"]
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K5 ["SetRequestMetadata"]
       19 MOVE                             R4 R0
       20 LOADK                            R5 K7 ["Time_Run"]
       21 SUB                              R6 R2 R1
       22 CALL                             R3 3 0
       23 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["assetCacheMap"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 JUMPIFNOT                        R5 ; [+6]
        7 GETTABLEKS                       R6 R5 K1 ["Parent"]
        9 JUMPIFNOT                        R6 ; [+3]
       10 NAMECALL                         R6 R5 K2 ["Destroy"]
       12 CALL                             R6 1 0
       13 FORGLOOP                         R1 2 ; [-8]
       15 GETIMPORT                        R1 K5 [table.clear]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R2 R3 K0 ["assetCacheMap"]
       20 CALL                             R1 1 0
       21 GETUPVAL                         R2 1
       22 GETTABLEKS                       R1 R2 K6 ["endConstraintVisualization"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R1 R2 K7 ["disableDraftMode"]
       29 MOVE                             R2 R0
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

PROTO_30:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["getPluginInfo"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_31:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+1]
        2 GETUPVAL                         R4 0
        3 MOVE                             R1 R4
        4 MOVE                             R4 R3
        5 JUMPIF                           R4 ; [+1]
        6 GETUPVAL                         R4 1
        7 MOVE                             R3 R4
        8 MOVE                             R4 R2
        9 JUMPIF                           R4 ; [+1]
       10 GETUPVAL                         R4 2
       11 MOVE                             R2 R4
       12 GETIMPORT                        R4 K1 [require]
       14 GETIMPORT                        R9 K3 [script]
       16 GETTABLEKS                       R8 R9 K4 ["Parent"]
       18 GETTABLEKS                       R7 R8 K4 ["Parent"]
       20 GETTABLEKS                       R6 R7 K5 ["Cache"]
       22 GETTABLEKS                       R5 R6 K6 ["StreamCache"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R1 K7 ["Stream"]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          REF R3
       29 CAPTURE                          VAL R4
       30 NAMECALL                         R5 R5 K8 ["Connect"]
       32 CALL                             R5 2 1
       33 SETTABLEKS                       R5 R0 K9 ["_streamConn"]
       35 GETTABLEKS                       R5 R1 K10 ["RequestStarted"]
       37 NEWCLOSURE                       R7 P1
       38 CAPTURE                          VAL R4
       39 NAMECALL                         R5 R5 K8 ["Connect"]
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R5 R0 K11 ["_requestStartedConn"]
       44 GETTABLEKS                       R5 R1 K12 ["RequestEnded"]
       46 NEWCLOSURE                       R7 P2
       47 CAPTURE                          VAL R4
       48 NAMECALL                         R5 R5 K8 ["Connect"]
       50 CALL                             R5 2 1
       51 SETTABLEKS                       R5 R0 K13 ["_requestEndedConn"]
       53 GETTABLEKS                       R5 R1 K14 ["ConversationCleared"]
       55 DUPCLOSURE                       R7 K15 [PROTO_19]
       56 CAPTURE                          UPVAL U3
       57 NAMECALL                         R5 R5 K8 ["Connect"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R0 K16 ["_conversationClearedConn"]
       62 GETTABLEKS                       R5 R1 K17 ["SequentialCommandsFinished"]
       64 NEWCLOSURE                       R7 P4
       65 CAPTURE                          REF R2
       66 NAMECALL                         R5 R5 K8 ["Connect"]
       68 CALL                             R5 2 1
       69 SETTABLEKS                       R5 R0 K18 ["_commandsFinished"]
       71 GETTABLEKS                       R5 R2 K19 ["FindVariationsSignal"]
       73 NEWCLOSURE                       R7 P5
       74 CAPTURE                          VAL R0
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          UPVAL U5
       77 NAMECALL                         R5 R5 K8 ["Connect"]
       79 CALL                             R5 2 1
       80 SETTABLEKS                       R5 R0 K20 ["_findVariations"]
       82 GETTABLEKS                       R5 R2 K21 ["SetMaterialSettingsSignal"]
       84 NEWCLOSURE                       R7 P6
       85 CAPTURE                          VAL R0
       86 NAMECALL                         R5 R5 K8 ["Connect"]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R0 K22 ["_setMaterialSettings"]
       91 GETTABLEKS                       R5 R2 K23 ["ActionActivatedSignal"]
       93 NEWCLOSURE                       R7 P7
       94 CAPTURE                          VAL R0
       95 NAMECALL                         R5 R5 K8 ["Connect"]
       97 CALL                             R5 2 1
       98 SETTABLEKS                       R5 R0 K24 ["_onActionConnection"]
      100 GETTABLEKS                       R5 R2 K25 ["ShiftVariationSignal"]
      102 NEWCLOSURE                       R7 P8
      103 CAPTURE                          VAL R0
      104 NAMECALL                         R5 R5 K8 ["Connect"]
      106 CALL                             R5 2 1
      107 SETTABLEKS                       R5 R0 K26 ["_onShiftAssetVariation"]
      109 GETTABLEKS                       R5 R2 K27 ["ShiftToAssetIdSignal"]
      111 NEWCLOSURE                       R7 P9
      112 CAPTURE                          VAL R0
      113 NAMECALL                         R5 R5 K8 ["Connect"]
      115 CALL                             R5 2 1
      116 SETTABLEKS                       R5 R0 K28 ["_onShiftAssetToId"]
      118 GETTABLEKS                       R5 R1 K10 ["RequestStarted"]
      120 DUPCLOSURE                       R7 K29 [PROTO_26]
      121 CAPTURE                          UPVAL U6
      122 NAMECALL                         R5 R5 K8 ["Connect"]
      124 CALL                             R5 2 1
      125 SETTABLEKS                       R5 R0 K30 ["_requestStartedConnection"]
      127 GETTABLEKS                       R5 R1 K31 ["RequestError"]
      129 DUPCLOSURE                       R7 K32 [PROTO_27]
      130 CAPTURE                          UPVAL U7
      131 CAPTURE                          UPVAL U6
      132 NAMECALL                         R5 R5 K8 ["Connect"]
      134 CALL                             R5 2 1
      135 SETTABLEKS                       R5 R0 K33 ["_requestErrorConnection"]
      137 GETTABLEKS                       R5 R1 K12 ["RequestEnded"]
      139 DUPCLOSURE                       R7 K34 [PROTO_28]
      140 CAPTURE                          UPVAL U6
      141 NAMECALL                         R5 R5 K8 ["Connect"]
      143 CALL                             R5 2 1
      144 SETTABLEKS                       R5 R0 K35 ["_requestEndedConnection"]
      146 GETTABLEKS                       R5 R1 K17 ["SequentialCommandsFinished"]
      148 DUPCLOSURE                       R7 K36 [PROTO_29]
      149 CAPTURE                          UPVAL U6
      150 CAPTURE                          UPVAL U8
      151 NAMECALL                         R5 R5 K8 ["Connect"]
      153 CALL                             R5 2 1
      154 SETTABLEKS                       R5 R0 K37 ["_sequentialCommandsFinishedConnection"]
      156 NEWCLOSURE                       R7 P14
      157 CAPTURE                          VAL R0
      158 NAMECALL                         R5 R1 K38 ["SetPluginInfoCallback"]
      160 CALL                             R5 2 0
      161 CLOSEUPVALS                      R2
      162 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["_streamConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_streamConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_streamConn"]
       11 GETTABLEKS                       R1 R0 K2 ["_requestStartedConn"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["_requestStartedConn"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["_requestStartedConn"]
       22 GETTABLEKS                       R1 R0 K3 ["_requestEndedConn"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["_requestEndedConn"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["_requestEndedConn"]
       33 GETTABLEKS                       R1 R0 K4 ["_conversationClearedConn"]
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETTABLEKS                       R1 R0 K4 ["_conversationClearedConn"]
       38 NAMECALL                         R1 R1 K1 ["Disconnect"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K4 ["_conversationClearedConn"]
       44 GETTABLEKS                       R1 R0 K5 ["_commandsFinished"]
       46 JUMPIFNOT                        R1 ; [+8]
       47 GETTABLEKS                       R1 R0 K5 ["_commandsFinished"]
       49 NAMECALL                         R1 R1 K1 ["Disconnect"]
       51 CALL                             R1 1 0
       52 LOADNIL                          R1
       53 SETTABLEKS                       R1 R0 K5 ["_commandsFinished"]
       55 GETTABLEKS                       R1 R0 K6 ["_findVariations"]
       57 JUMPIFNOT                        R1 ; [+8]
       58 GETTABLEKS                       R1 R0 K6 ["_findVariations"]
       60 NAMECALL                         R1 R1 K1 ["Disconnect"]
       62 CALL                             R1 1 0
       63 LOADNIL                          R1
       64 SETTABLEKS                       R1 R0 K6 ["_findVariations"]
       66 GETTABLEKS                       R1 R0 K7 ["_setMaterialSettings"]
       68 JUMPIFNOT                        R1 ; [+8]
       69 GETTABLEKS                       R1 R0 K7 ["_setMaterialSettings"]
       71 NAMECALL                         R1 R1 K1 ["Disconnect"]
       73 CALL                             R1 1 0
       74 LOADNIL                          R1
       75 SETTABLEKS                       R1 R0 K7 ["_setMaterialSettings"]
       77 GETTABLEKS                       R1 R0 K8 ["_onActionConnection"]
       79 JUMPIFNOT                        R1 ; [+8]
       80 GETTABLEKS                       R1 R0 K8 ["_onActionConnection"]
       82 NAMECALL                         R1 R1 K1 ["Disconnect"]
       84 CALL                             R1 1 0
       85 LOADNIL                          R1
       86 SETTABLEKS                       R1 R0 K8 ["_onActionConnection"]
       88 GETTABLEKS                       R1 R0 K9 ["_onShiftAssetVariation"]
       90 JUMPIFNOT                        R1 ; [+8]
       91 GETTABLEKS                       R1 R0 K9 ["_onShiftAssetVariation"]
       93 NAMECALL                         R1 R1 K1 ["Disconnect"]
       95 CALL                             R1 1 0
       96 LOADNIL                          R1
       97 SETTABLEKS                       R1 R0 K9 ["_onShiftAssetVariation"]
       99 GETTABLEKS                       R1 R0 K10 ["_onShiftAssetToId"]
      101 JUMPIFNOT                        R1 ; [+8]
      102 GETTABLEKS                       R1 R0 K10 ["_onShiftAssetToId"]
      104 NAMECALL                         R1 R1 K1 ["Disconnect"]
      106 CALL                             R1 1 0
      107 LOADNIL                          R1
      108 SETTABLEKS                       R1 R0 K10 ["_onShiftAssetToId"]
      110 GETTABLEKS                       R1 R0 K11 ["_selectionListener"]
      112 JUMPIFNOT                        R1 ; [+8]
      113 GETTABLEKS                       R1 R0 K11 ["_selectionListener"]
      115 NAMECALL                         R1 R1 K1 ["Disconnect"]
      117 CALL                             R1 1 0
      118 LOADNIL                          R1
      119 SETTABLEKS                       R1 R0 K11 ["_selectionListener"]
      121 GETTABLEKS                       R1 R0 K12 ["_requestStartedConnection"]
      123 JUMPIFNOT                        R1 ; [+8]
      124 GETTABLEKS                       R1 R0 K12 ["_requestStartedConnection"]
      126 NAMECALL                         R1 R1 K1 ["Disconnect"]
      128 CALL                             R1 1 0
      129 LOADNIL                          R1
      130 SETTABLEKS                       R1 R0 K12 ["_requestStartedConnection"]
      132 GETTABLEKS                       R1 R0 K13 ["_requestErrorConnection"]
      134 JUMPIFNOT                        R1 ; [+8]
      135 GETTABLEKS                       R1 R0 K13 ["_requestErrorConnection"]
      137 NAMECALL                         R1 R1 K1 ["Disconnect"]
      139 CALL                             R1 1 0
      140 LOADNIL                          R1
      141 SETTABLEKS                       R1 R0 K13 ["_requestErrorConnection"]
      143 GETTABLEKS                       R1 R0 K14 ["_requestEndedConnection"]
      145 JUMPIFNOT                        R1 ; [+8]
      146 GETTABLEKS                       R1 R0 K14 ["_requestEndedConnection"]
      148 NAMECALL                         R1 R1 K1 ["Disconnect"]
      150 CALL                             R1 1 0
      151 LOADNIL                          R1
      152 SETTABLEKS                       R1 R0 K14 ["_requestEndedConnection"]
      154 GETTABLEKS                       R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
      156 JUMPIFNOT                        R1 ; [+8]
      157 GETTABLEKS                       R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
      159 NAMECALL                         R1 R1 K1 ["Disconnect"]
      161 CALL                             R1 1 0
      162 LOADNIL                          R1
      163 SETTABLEKS                       R1 R0 K15 ["_sequentialCommandsFinishedConnection"]
      165 GETUPVAL                         R1 0
      166 NAMECALL                         R1 R1 K16 ["SetPluginInfoCallback"]
      168 CALL                             R1 1 0
      169 RETURN                           R0 0

PROTO_33:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R3
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 CALL                             R4 4 0
        8 GETUPVAL                         R6 1
        9 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K1 [setmetatable]
       14 CALL                             R4 2 0
       15 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [script]
        7 LOADK                            R3 K3 ["StreamingServiceDispatcherRegistry"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R6 R1 K7 ["Src"]
       15 GETTABLEKS                       R5 R6 K8 ["Commands"]
       17 GETTABLEKS                       R4 R5 K9 ["BuilderCommands"]
       19 GETTABLEKS                       R3 R4 K10 ["BuilderNameMap"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K6 [require]
       24 GETTABLEKS                       R6 R1 K7 ["Src"]
       26 GETTABLEKS                       R5 R6 K11 ["Utils"]
       28 GETTABLEKS                       R4 R5 K12 ["CliAdapter"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K6 [require]
       33 GETTABLEKS                       R6 R1 K13 ["Packages"]
       35 GETTABLEKS                       R5 R6 K14 ["Dash"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K6 [require]
       40 GETTABLEKS                       R8 R1 K7 ["Src"]
       42 GETTABLEKS                       R7 R8 K8 ["Commands"]
       44 GETTABLEKS                       R6 R7 K15 ["DisplayError"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K6 [require]
       49 GETTABLEKS                       R9 R1 K7 ["Src"]
       51 GETTABLEKS                       R8 R9 K16 ["Localization"]
       53 GETTABLEKS                       R7 R8 K16 ["Localization"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K6 [require]
       58 GETTABLEKS                       R10 R1 K7 ["Src"]
       60 GETTABLEKS                       R9 R10 K17 ["ContextCollectors"]
       62 GETTABLEKS                       R8 R9 K18 ["RecentInstancesContext"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K6 [require]
       67 GETTABLEKS                       R10 R1 K13 ["Packages"]
       69 GETTABLEKS                       R9 R10 K19 ["SharedPluginConstants"]
       71 CALL                             R8 1 1
       72 GETIMPORT                        R9 K6 [require]
       74 GETTABLEKS                       R11 R1 K7 ["Src"]
       76 GETTABLEKS                       R10 R11 K20 ["Types"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K6 [require]
       81 GETTABLEKS                       R13 R1 K7 ["Src"]
       83 GETTABLEKS                       R12 R13 K11 ["Utils"]
       85 GETTABLEKS                       R11 R12 K11 ["Utils"]
       87 CALL                             R10 1 1
       88 GETTABLEKS                       R11 R3 K21 ["GetService"]
       90 LOADK                            R12 K22 ["ChangeHistoryService"]
       91 CALL                             R11 1 1
       92 GETTABLEKS                       R12 R3 K21 ["GetService"]
       94 LOADK                            R13 K23 ["MemStorageService"]
       95 CALL                             R12 1 1
       96 GETTABLEKS                       R13 R3 K21 ["GetService"]
       98 LOADK                            R14 K24 ["StreamingService"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R3 K21 ["GetService"]
      102 LOADK                            R15 K25 ["ChatbotUIService"]
      103 CALL                             R14 1 1
      104 GETTABLEKS                       R15 R3 K21 ["GetService"]
      106 LOADK                            R16 K26 ["TweenService"]
      107 CALL                             R15 1 1
      108 GETTABLEKS                       R16 R3 K21 ["GetService"]
      110 LOADK                            R17 K27 ["HttpService"]
      111 CALL                             R16 1 1
      112 GETTABLEKS                       R17 R3 K21 ["GetService"]
      114 LOADK                            R18 K28 ["Selection"]
      115 CALL                             R17 1 1
      116 GETTABLEKS                       R18 R3 K21 ["GetService"]
      118 LOADK                            R19 K29 ["ConversationalAIAcceptanceService"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R20 K6 [require]
      122 GETTABLEKS                       R23 R1 K7 ["Src"]
      124 GETTABLEKS                       R22 R23 K30 ["Flags"]
      126 GETTABLEKS                       R21 R22 K31 ["FFlagConvAIAddCommandSearchInsertAsset"]
      128 CALL                             R20 1 1
      129 GETTABLEKS                       R19 R20 K32 ["Get"]
      131 GETIMPORT                        R21 K6 [require]
      133 GETTABLEKS                       R24 R1 K7 ["Src"]
      135 GETTABLEKS                       R23 R24 K30 ["Flags"]
      137 GETTABLEKS                       R22 R23 K33 ["FFlagConvAIFirstVariationFix"]
      139 CALL                             R21 1 1
      140 GETTABLEKS                       R20 R21 K32 ["Get"]
      142 GETIMPORT                        R22 K6 [require]
      144 GETTABLEKS                       R25 R1 K7 ["Src"]
      146 GETTABLEKS                       R24 R25 K30 ["Flags"]
      148 GETTABLEKS                       R23 R24 K34 ["FFlagConvAIFixEmptyBubbleBug"]
      150 CALL                             R22 1 1
      151 GETTABLEKS                       R21 R22 K32 ["Get"]
      153 GETIMPORT                        R23 K6 [require]
      155 GETTABLEKS                       R26 R1 K7 ["Src"]
      157 GETTABLEKS                       R25 R26 K30 ["Flags"]
      159 GETTABLEKS                       R24 R25 K35 ["FFlagConvAIFixStreamCreationTiming"]
      161 CALL                             R23 1 1
      162 GETTABLEKS                       R22 R23 K32 ["Get"]
      164 GETIMPORT                        R24 K6 [require]
      166 GETTABLEKS                       R27 R1 K7 ["Src"]
      168 GETTABLEKS                       R26 R27 K30 ["Flags"]
      170 GETTABLEKS                       R25 R26 K36 ["FFlagConvAI_ConditionalDropdown"]
      172 CALL                             R24 1 1
      173 GETTABLEKS                       R23 R24 K32 ["Get"]
      175 GETIMPORT                        R25 K6 [require]
      177 GETTABLEKS                       R28 R1 K7 ["Src"]
      179 GETTABLEKS                       R27 R28 K30 ["Flags"]
      181 GETTABLEKS                       R26 R27 K37 ["FFlagFixCurrentCameraPlacement"]
      183 CALL                             R25 1 1
      184 GETTABLEKS                       R24 R25 K32 ["Get"]
      186 LOADB                            R25 0
      187 NEWCLOSURE                       R26 P0
      188 CAPTURE                          VAL R22
      189 CAPTURE                          REF R25
      190 CAPTURE                          VAL R21
      191 SETGLOBAL                        R26 K38 ["handleCachedPacketsForStream"]
      193 DUPCLOSURE                       R26 K39 [PROTO_1]
      194 CAPTURE                          VAL R10
      195 CAPTURE                          VAL R15
      196 DUPCLOSURE                       R27 K40 [PROTO_2]
      197 CAPTURE                          VAL R2
      198 SETTABLEKS                       R27 R0 K41 ["getActionInstance"]
      200 DUPCLOSURE                       R27 K42 [PROTO_3]
      201 CAPTURE                          VAL R2
      202 CAPTURE                          VAL R23
      203 SETTABLEKS                       R27 R0 K43 ["getActionInstanceFromGuid"]
      205 DUPCLOSURE                       R27 K44 [PROTO_4]
      206 CAPTURE                          VAL R20
      207 CAPTURE                          VAL R2
      208 SETTABLEKS                       R27 R0 K45 ["onShiftAssetToId"]
      210 DUPCLOSURE                       R27 K46 [PROTO_7]
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R2
      213 CAPTURE                          VAL R10
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R19
      216 CAPTURE                          VAL R24
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R17
      219 CAPTURE                          VAL R18
      220 CAPTURE                          VAL R26
      221 SETTABLEKS                       R27 R0 K47 ["onShiftAssetVariant"]
      223 DUPCLOSURE                       R27 K48 [PROTO_8]
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R8
      226 DUPCLOSURE                       R28 K49 [PROTO_10]
      227 DUPCLOSURE                       R29 K50 [PROTO_11]
      228 CAPTURE                          VAL R0
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R28
      231 CAPTURE                          VAL R11
      232 DUPCLOSURE                       R30 K51 [PROTO_14]
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R4
      235 CAPTURE                          VAL R26
      236 CAPTURE                          VAL R29
      237 CAPTURE                          VAL R14
      238 SETTABLEKS                       R30 R0 K52 ["onAction"]
      240 DUPCLOSURE                       R30 K53 [PROTO_15]
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R6
      244 SETTABLEKS                       R30 R0 K54 ["getPluginInfo"]
      246 DUPCLOSURE                       R30 K55 [PROTO_31]
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R16
      249 CAPTURE                          VAL R14
      250 CAPTURE                          VAL R7
      251 CAPTURE                          VAL R12
      252 CAPTURE                          VAL R8
      253 CAPTURE                          VAL R2
      254 CAPTURE                          VAL R5
      255 CAPTURE                          VAL R10
      256 DUPCLOSURE                       R31 K56 [PROTO_32]
      257 CAPTURE                          VAL R13
      258 SETTABLEKS                       R31 R0 K57 ["destroy"]
      260 DUPCLOSURE                       R31 K58 [PROTO_33]
      261 CAPTURE                          VAL R30
      262 CAPTURE                          VAL R0
      263 SETTABLEKS                       R31 R0 K59 ["new"]
      265 CLOSEUPVALS                      R25
      266 RETURN                           R0 1
