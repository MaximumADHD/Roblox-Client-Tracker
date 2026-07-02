PROTO_0:
        0 GETUPVAL                         R0 0
        1 ADDK                             R0 R0 K0 [1]
        2 SETUPVAL                         R0 0
        3 GETUPVAL                         R0 0
        4 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          REF R0
        3 CLOSEUPVALS                      R0
        4 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["createBinding"]
        3 GETIMPORT                        R5 K3 [UDim2.fromOffset]
        5 LOADN                            R6 0
        6 LOADN                            R7 0
        7 CALL                             R5 2 -1
        8 CALL                             R4 -1 2
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K0 ["createBinding"]
       12 GETIMPORT                        R7 K3 [UDim2.fromOffset]
       14 LOADN                            R8 0
       15 LOADN                            R9 0
       16 CALL                             R7 2 -1
       17 CALL                             R6 -1 2
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K0 ["createBinding"]
       21 LOADN                            R9 0
       22 CALL                             R8 1 2
       23 DUPTABLE                         R10 K16 [{"id", "buttonId", "color", "position", "updatePosition", "size", "updateSize", "transparency", "image", "zIndex", "updateTransparency", "motor"}]
       24 GETUPVAL                         R11 1
       25 CALL                             R11 0 1
       26 SETTABLEKS                       R11 R10 K4 ["id"]
       28 SETTABLEKS                       R0 R10 K5 ["buttonId"]
       30 GETUPVAL                         R12 2
       31 GETTABLE                         R11 R12 R0
       32 SETTABLEKS                       R11 R10 K6 ["color"]
       34 SETTABLEKS                       R4 R10 K7 ["position"]
       36 SETTABLEKS                       R5 R10 K8 ["updatePosition"]
       38 SETTABLEKS                       R6 R10 K9 ["size"]
       40 SETTABLEKS                       R7 R10 K10 ["updateSize"]
       42 SETTABLEKS                       R8 R10 K11 ["transparency"]
       44 SETTABLEKS                       R1 R10 K12 ["image"]
       46 ORK                              R11 R2 K17 [1]
       47 SETTABLEKS                       R11 R10 K13 ["zIndex"]
       49 SETTABLEKS                       R9 R10 K14 ["updateTransparency"]
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R11 R11 K18 ["createGroupMotor"]
       54 DUPTABLE                         R12 K20 [{["size"] = 0, ["transparency"]}]
       55 ORK                              R13 R3 K19 [0]
       56 SETTABLEKS                       R13 R12 K11 ["transparency"]
       58 CALL                             R11 1 1
       59 SETTABLEKS                       R11 R10 K15 ["motor"]
       61 RETURN                           R10 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createBinding"]
        3 GETIMPORT                        R3 K3 [UDim2.fromOffset]
        5 MOVE                             R4 R0
        6 LOADN                            R5 50
        7 CALL                             R3 2 -1
        8 CALL                             R2 -1 2
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createBinding"]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 2
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K0 ["createBinding"]
       17 MOVE                             R7 R1
       18 CALL                             R6 1 2
       19 DUPTABLE                         R8 K11 [{"size", "updateSize", "backgroundTransparency", "updateBackgroundTransparency", "foregroundTransparency", "updateForegroundTransparency", "motor"}]
       20 SETTABLEKS                       R2 R8 K4 ["size"]
       22 SETTABLEKS                       R3 R8 K5 ["updateSize"]
       24 SETTABLEKS                       R4 R8 K6 ["backgroundTransparency"]
       26 SETTABLEKS                       R5 R8 K7 ["updateBackgroundTransparency"]
       28 SETTABLEKS                       R6 R8 K8 ["foregroundTransparency"]
       30 SETTABLEKS                       R7 R8 K9 ["updateForegroundTransparency"]
       32 GETUPVAL                         R9 1
       33 GETTABLEKS                       R9 R9 K12 ["createGroupMotor"]
       35 DUPTABLE                         R10 K14 [{"size", "transparency"}]
       36 MOVE                             R11 R0
       37 JUMPIF                           R11 ; [+3]
       38 GETIMPORT                        R11 K16 [UDim2.new]
       40 CALL                             R11 0 1
       41 SETTABLEKS                       R11 R10 K4 ["size"]
       43 ORK                              R11 R1 K17 [0]
       44 SETTABLEKS                       R11 R10 K13 ["transparency"]
       46 CALL                             R9 1 1
       47 SETTABLEKS                       R9 R8 K10 ["motor"]
       49 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSize"]
        3 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        5 GETTABLEKS                       R3 R0 K4 ["size"]
        7 GETTABLEKS                       R4 R0 K4 ["size"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["updateTransparency"]
       14 GETTABLEKS                       R2 R0 K6 ["transparency"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["currentCursorRingsByButtonId"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R1
        8 LOADK                            R4 K1 ["rbxasset://textures/UserInputPlaybackPlugin/Ring.png"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["cursorRings"]
       13 FASTCALL2                        TABLE_INSERT R4 R2 ; [+4]
       15 MOVE                             R5 R2
       16 GETIMPORT                        R3 K5 [table.insert]
       18 CALL                             R3 2 0
       19 GETTABLEKS                       R3 R2 K6 ["updatePosition"]
       21 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       23 GETTABLEKS                       R5 R0 K10 ["X"]
       25 GETTABLEKS                       R6 R0 K11 ["Y"]
       27 CALL                             R4 2 -1
       28 CALL                             R3 -1 0
       29 GETTABLEKS                       R3 R2 K12 ["updateSize"]
       31 GETIMPORT                        R4 K9 [UDim2.fromOffset]
       33 LOADN                            R5 1
       34 LOADN                            R6 1
       35 CALL                             R4 2 -1
       36 CALL                             R3 -1 0
       37 GETTABLEKS                       R3 R2 K13 ["updateTransparency"]
       39 LOADN                            R4 0
       40 CALL                             R3 1 0
       41 GETTABLEKS                       R3 R2 K14 ["motor"]
       43 NEWCLOSURE                       R5 P0
       44 CAPTURE                          VAL R2
       45 NAMECALL                         R3 R3 K15 ["onStep"]
       47 CALL                             R3 2 0
       48 GETTABLEKS                       R3 R2 K14 ["motor"]
       50 DUPTABLE                         R5 K18 [{"size", "transparency"}]
       51 GETUPVAL                         R6 2
       52 GETTABLEKS                       R6 R6 K19 ["spring"]
       54 LOADN                            R7 50
       55 DUPTABLE                         R8 K22 [{["frequency"] = 1}]
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K16 ["size"]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K23 ["instant"]
       62 LOADN                            R7 0
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K17 ["transparency"]
       66 NAMECALL                         R3 R3 K24 ["setGoal"]
       68 CALL                             R3 2 0
       69 GETUPVAL                         R3 0
       70 DUPTABLE                         R5 K26 [{"visibleCursorRingIds"}]
       71 GETUPVAL                         R6 3
       72 GETTABLEKS                       R6 R6 K27 ["Dictionary"]
       74 GETTABLEKS                       R6 R6 K28 ["join"]
       76 GETUPVAL                         R7 0
       77 GETTABLEKS                       R7 R7 K29 ["state"]
       79 GETTABLEKS                       R7 R7 K25 ["visibleCursorRingIds"]
       81 NEWTABLE                         R8 1 0
       83 GETTABLEKS                       R9 R2 K30 ["id"]
       85 LOADB                            R10 1
       86 SETTABLE                         R10 R8 R9
       87 CALL                             R6 2 1
       88 SETTABLEKS                       R6 R5 K25 ["visibleCursorRingIds"]
       90 NAMECALL                         R3 R3 K31 ["setState"]
       92 CALL                             R3 2 0
       93 GETUPVAL                         R3 0
       94 GETTABLEKS                       R3 R3 K0 ["currentCursorRingsByButtonId"]
       96 SETTABLE                         R2 R3 R1
       97 GETUPVAL                         R3 0
       98 GETTABLEKS                       R3 R3 K32 ["mouseButtonIsDown"]
      100 LOADB                            R4 1
      101 SETTABLE                         R4 R3 R1
      102 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateFakeCursorPosition"]
        3 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        5 GETTABLEKS                       R3 R0 K4 ["X"]
        7 GETTABLEKS                       R4 R0 K5 ["Y"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 LOADN                            R3 1
       12 LOADN                            R1 2
       13 LOADN                            R2 1
       14 FORNPREP                         R1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K6 ["currentCursorRingsByButtonId"]
       18 GETTABLE                         R4 R5 R3
       19 JUMPIFNOT                        R4 ; [+19]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["mouseButtonIsDown"]
       23 GETTABLE                         R4 R5 R3
       24 JUMPIFNOT                        R4 ; [+14]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K6 ["currentCursorRingsByButtonId"]
       28 GETTABLE                         R4 R5 R3
       29 GETTABLEKS                       R4 R4 K8 ["updatePosition"]
       31 GETIMPORT                        R5 K3 [UDim2.fromOffset]
       33 GETTABLEKS                       R6 R0 K4 ["X"]
       35 GETTABLEKS                       R7 R0 K5 ["Y"]
       37 CALL                             R5 2 -1
       38 CALL                             R4 -1 0
       39 FORNLOOP                         R1
       40 GETUPVAL                         R1 1
       41 GETIMPORT                        R2 K12 [Enum.OverrideMouseIconBehavior.ForceHide]
       43 SETTABLEKS                       R2 R1 K10 ["OverrideMouseIconBehavior"]
       45 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R3 K2 [{"visibleCursorRingIds"}]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K3 ["Dictionary"]
       10 GETTABLEKS                       R4 R4 K4 ["join"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["state"]
       15 GETTABLEKS                       R5 R5 K1 ["visibleCursorRingIds"]
       17 NEWTABLE                         R6 1 0
       19 GETTABLEKS                       R7 R0 K6 ["id"]
       21 LOADB                            R8 0
       22 SETTABLE                         R8 R6 R7
       23 CALL                             R4 2 1
       24 SETTABLEKS                       R4 R3 K1 ["visibleCursorRingIds"]
       26 NAMECALL                         R1 R1 K7 ["setState"]
       28 CALL                             R1 2 0
       29 GETIMPORT                        R1 K10 [table.find]
       31 GETUPVAL                         R2 0
       32 GETTABLEKS                       R2 R2 K11 ["cursorRings"]
       34 MOVE                             R3 R0
       35 CALL                             R1 2 1
       36 JUMPIFNOTEQKNIL                  R1 ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 FASTCALL2K                       ASSERT R3 K12 ; [+4]
       42 LOADK                            R4 K12 ["Couldn't find ring"]
       43 GETIMPORT                        R2 K14 [assert]
       45 CALL                             R2 2 0
       46 GETIMPORT                        R2 K16 [table.remove]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K11 ["cursorRings"]
       51 MOVE                             R4 R1
       52 CALL                             R2 2 0
       53 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeCursorRing"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["currentCursorRingsByButtonId"]
        3 GETTABLE                         R2 R3 R1
        4 JUMPIFNOT                        R2 ; [+40]
        5 GETTABLEKS                       R3 R2 K1 ["updatePosition"]
        7 GETIMPORT                        R4 K4 [UDim2.fromOffset]
        9 GETTABLEKS                       R5 R0 K5 ["X"]
       11 GETTABLEKS                       R6 R0 K6 ["Y"]
       13 CALL                             R4 2 -1
       14 CALL                             R3 -1 0
       15 GETTABLEKS                       R3 R2 K7 ["motor"]
       17 DUPTABLE                         R5 K10 [{"size", "transparency"}]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K11 ["spring"]
       21 LOADN                            R7 100
       22 DUPTABLE                         R8 K14 [{["frequency"] = 1}]
       23 CALL                             R6 2 1
       24 SETTABLEKS                       R6 R5 K8 ["size"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K11 ["spring"]
       29 LOADN                            R7 1
       30 DUPTABLE                         R8 K14 [{["frequency"] = 1}]
       31 CALL                             R6 2 1
       32 SETTABLEKS                       R6 R5 K9 ["transparency"]
       34 NAMECALL                         R3 R3 K15 ["setGoal"]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R2 K7 ["motor"]
       39 NEWCLOSURE                       R5 P0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          VAL R2
       42 NAMECALL                         R3 R3 K16 ["onComplete"]
       44 CALL                             R3 2 0
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K0 ["currentCursorRingsByButtonId"]
       48 LOADNIL                          R4
       49 SETTABLE                         R4 R3 R1
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K17 ["mouseButtonIsDown"]
       53 LOADB                            R4 0
       54 SETTABLE                         R4 R3 R1
       55 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSize"]
        3 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        5 GETTABLEKS                       R3 R0 K4 ["size"]
        7 GETTABLEKS                       R4 R0 K4 ["size"]
        9 CALL                             R2 2 -1
       10 CALL                             R1 -1 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["updateTransparency"]
       14 GETTABLEKS                       R2 R0 K6 ["transparency"]
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateTransparency"]
        3 GETTABLEKS                       R2 R0 K1 ["transparency"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        4 GETTABLEKS                       R3 R1 K4 ["X"]
        6 GETTABLEKS                       R4 R1 K5 ["Y"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 0
       10 LOADN                            R4 0
       11 LOADK                            R5 K6 ["rbxasset://textures/UserInputPlaybackPlugin/Ring.png"]
       12 LOADN                            R6 2
       13 LOADN                            R7 0
       14 CALL                             R3 4 1
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K7 ["cursorRings"]
       18 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       20 MOVE                             R6 R3
       21 GETIMPORT                        R4 K10 [table.insert]
       23 CALL                             R4 2 0
       24 GETTABLEKS                       R4 R3 K11 ["updatePosition"]
       26 MOVE                             R5 R2
       27 CALL                             R4 1 0
       28 GETTABLEKS                       R4 R3 K12 ["motor"]
       30 NEWCLOSURE                       R6 P0
       31 CAPTURE                          VAL R3
       32 NAMECALL                         R4 R4 K13 ["onStep"]
       34 CALL                             R4 2 0
       35 GETTABLEKS                       R4 R3 K12 ["motor"]
       37 DUPTABLE                         R6 K16 [{"size", "transparency"}]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R7 R7 K17 ["spring"]
       41 LOADN                            R8 50
       42 DUPTABLE                         R9 K20 [{["frequency"] = 1}]
       43 CALL                             R7 2 1
       44 SETTABLEKS                       R7 R6 K14 ["size"]
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R7 R7 K21 ["instant"]
       49 LOADN                            R8 0
       50 CALL                             R7 1 1
       51 SETTABLEKS                       R7 R6 K15 ["transparency"]
       53 NAMECALL                         R4 R4 K22 ["setGoal"]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 0
       57 LOADN                            R5 0
       58 LOADK                            R6 K23 ["rbxasset://textures/UserInputPlaybackPlugin/TapCursor.png"]
       59 LOADN                            R7 1
       60 LOADN                            R8 1
       61 CALL                             R4 4 1
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K7 ["cursorRings"]
       65 FASTCALL2                        TABLE_INSERT R6 R4 ; [+4]
       67 MOVE                             R7 R4
       68 GETIMPORT                        R5 K10 [table.insert]
       70 CALL                             R5 2 0
       71 GETUPVAL                         R5 3
       72 SETTABLEKS                       R5 R4 K24 ["color"]
       74 GETTABLEKS                       R5 R4 K11 ["updatePosition"]
       76 MOVE                             R6 R2
       77 CALL                             R5 1 0
       78 GETTABLEKS                       R5 R4 K25 ["updateTransparency"]
       80 LOADN                            R6 1
       81 CALL                             R5 1 0
       82 GETTABLEKS                       R5 R4 K26 ["updateSize"]
       84 GETIMPORT                        R6 K3 [UDim2.fromOffset]
       86 LOADN                            R7 64
       87 LOADN                            R8 64
       88 CALL                             R6 2 -1
       89 CALL                             R5 -1 0
       90 GETTABLEKS                       R5 R4 K12 ["motor"]
       92 NEWCLOSURE                       R7 P1
       93 CAPTURE                          VAL R4
       94 NAMECALL                         R5 R5 K13 ["onStep"]
       96 CALL                             R5 2 0
       97 GETTABLEKS                       R5 R4 K12 ["motor"]
       99 DUPTABLE                         R7 K27 [{"transparency"}]
      100 GETUPVAL                         R8 2
      101 GETTABLEKS                       R8 R8 K17 ["spring"]
      103 LOADN                            R9 0
      104 DUPTABLE                         R10 K29 [{["frequency"] = 2.5}]
      105 CALL                             R8 2 1
      106 SETTABLEKS                       R8 R7 K15 ["transparency"]
      108 NAMECALL                         R5 R5 K22 ["setGoal"]
      110 CALL                             R5 2 0
      111 GETUPVAL                         R5 1
      112 GETTABLEKS                       R5 R5 K30 ["state"]
      114 GETTABLEKS                       R5 R5 K31 ["visibleCursorRingIds"]
      116 GETTABLEKS                       R6 R3 K32 ["id"]
      118 LOADB                            R7 1
      119 SETTABLE                         R7 R5 R6
      120 GETTABLEKS                       R6 R4 K32 ["id"]
      122 LOADB                            R7 1
      123 SETTABLE                         R7 R5 R6
      124 GETUPVAL                         R6 1
      125 DUPTABLE                         R8 K33 [{"visibleCursorRingIds"}]
      126 SETTABLEKS                       R5 R8 K31 ["visibleCursorRingIds"]
      128 NAMECALL                         R6 R6 K34 ["setState"]
      130 CALL                             R6 2 0
      131 GETUPVAL                         R6 1
      132 GETTABLEKS                       R6 R6 K35 ["touchMap"]
      134 DUPTABLE                         R7 K38 [{"tapImage", "ring"}]
      135 SETTABLEKS                       R4 R7 K36 ["tapImage"]
      137 SETTABLEKS                       R3 R7 K37 ["ring"]
      139 SETTABLE                         R7 R6 R0
      140 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["touchMap"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+21]
        5 GETTABLEKS                       R2 R0 K1 ["Position"]
        7 GETIMPORT                        R3 K4 [UDim2.fromOffset]
        9 GETTABLEKS                       R4 R2 K5 ["X"]
       11 GETTABLEKS                       R5 R2 K6 ["Y"]
       13 CALL                             R3 2 1
       14 GETTABLEKS                       R4 R1 K7 ["tapImage"]
       16 GETTABLEKS                       R4 R4 K8 ["updatePosition"]
       18 MOVE                             R5 R3
       19 CALL                             R4 1 0
       20 GETTABLEKS                       R4 R1 K9 ["ring"]
       22 GETTABLEKS                       R4 R4 K8 ["updatePosition"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 0
       26 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeCursorRing"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["ring"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["removeCursorRing"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["tapImage"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["touchMap"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+65]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["onTouchMoved"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K2 ["ring"]
       12 GETTABLEKS                       R2 R2 K3 ["motor"]
       14 DUPTABLE                         R4 K6 [{"size", "transparency"}]
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K7 ["spring"]
       18 LOADN                            R6 100
       19 DUPTABLE                         R7 K10 [{["frequency"] = 1}]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K4 ["size"]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R5 R5 K7 ["spring"]
       26 LOADN                            R6 1
       27 DUPTABLE                         R7 K10 [{["frequency"] = 1}]
       28 CALL                             R5 2 1
       29 SETTABLEKS                       R5 R4 K5 ["transparency"]
       31 NAMECALL                         R2 R2 K11 ["setGoal"]
       33 CALL                             R2 2 0
       34 GETTABLEKS                       R2 R1 K2 ["ring"]
       36 GETTABLEKS                       R2 R2 K3 ["motor"]
       38 NEWCLOSURE                       R4 P0
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          VAL R1
       41 NAMECALL                         R2 R2 K12 ["onComplete"]
       43 CALL                             R2 2 0
       44 GETTABLEKS                       R2 R1 K13 ["tapImage"]
       46 GETTABLEKS                       R2 R2 K3 ["motor"]
       48 DUPTABLE                         R4 K14 [{"transparency"}]
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K7 ["spring"]
       52 LOADN                            R6 1
       53 DUPTABLE                         R7 K10 [{["frequency"] = 1}]
       54 CALL                             R5 2 1
       55 SETTABLEKS                       R5 R4 K5 ["transparency"]
       57 NAMECALL                         R2 R2 K11 ["setGoal"]
       59 CALL                             R2 2 0
       60 GETTABLEKS                       R2 R1 K13 ["tapImage"]
       62 GETTABLEKS                       R2 R2 K3 ["motor"]
       64 NEWCLOSURE                       R4 P1
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          VAL R1
       67 NAMECALL                         R2 R2 K12 ["onComplete"]
       69 CALL                             R2 2 0
       70 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSize"]
        3 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        5 LOADN                            R3 50
        6 GETTABLEKS                       R4 R0 K4 ["size"]
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["updateSize"]
        3 GETIMPORT                        R2 K3 [UDim2.fromOffset]
        5 GETTABLEKS                       R3 R0 K4 ["size"]
        7 LOADN                            R4 50
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["updateForegroundTransparency"]
       13 GETTABLEKS                       R2 R0 K6 ["transparency"]
       15 CALL                             R1 1 0
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K7 ["updateBackgroundTransparency"]
       19 GETTABLEKS                       R5 R0 K6 ["transparency"]
       21 SUBRK                            R4 K8 [1] R5
       22 MULK                             R3 R4 K9 [0.6]
       23 SUBRK                            R2 K8 [1] R3
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["keyRows"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 GETTABLEN                        R4 R3 1
       10 JUMPIFNOT                        R4 ; [+5]
       11 GETTABLEKS                       R5 R4 K3 ["numberOfKeys"]
       13 LOADN                            R6 6
       14 JUMPIFNOTLE                      R6 R5 ; [+63]
       16 DUPTABLE                         R5 K8 [{["lastUpdateTime"], ["numberOfKeys"] = 0, ["keys"], ["dataId"]}]
       17 GETIMPORT                        R6 K10 [tick]
       19 CALL                             R6 0 1
       20 SETTABLEKS                       R6 R5 K4 ["lastUpdateTime"]
       22 NEWTABLE                         R6 0 0
       24 SETTABLEKS                       R6 R5 K6 ["keys"]
       26 GETUPVAL                         R6 1
       27 CALL                             R6 0 1
       28 SETTABLEKS                       R6 R5 K7 ["dataId"]
       30 MOVE                             R4 R5
       31 LOADN                            R7 1
       32 FASTCALL3                        TABLE_INSERT R3 R7 R4
       34 MOVE                             R6 R3
       35 MOVE                             R8 R4
       36 GETIMPORT                        R5 K13 [table.insert]
       38 CALL                             R5 3 0
       39 GETUPVAL                         R5 2
       40 LOADN                            R6 0
       41 LOADN                            R7 1
       42 CALL                             R5 2 1
       43 GETUPVAL                         R6 3
       44 GETTABLEKS                       R6 R6 K14 ["keyTileData"]
       46 GETTABLEKS                       R7 R4 K7 ["dataId"]
       48 SETTABLE                         R5 R6 R7
       49 GETTABLEKS                       R6 R5 K15 ["updateSize"]
       51 GETIMPORT                        R7 K18 [UDim2.fromOffset]
       53 LOADN                            R8 50
       54 LOADN                            R9 0
       55 CALL                             R7 2 -1
       56 CALL                             R6 -1 0
       57 GETTABLEKS                       R6 R5 K19 ["motor"]
       59 NEWCLOSURE                       R8 P0
       60 CAPTURE                          VAL R5
       61 NAMECALL                         R6 R6 K20 ["onStep"]
       63 CALL                             R6 2 0
       64 GETTABLEKS                       R6 R5 K19 ["motor"]
       66 DUPTABLE                         R8 K22 [{"size"}]
       67 GETUPVAL                         R9 4
       68 GETTABLEKS                       R9 R9 K23 ["spring"]
       70 LOADN                            R10 50
       71 DUPTABLE                         R11 K26 [{["frequency"] = 2.5}]
       72 CALL                             R9 2 1
       73 SETTABLEKS                       R9 R8 K21 ["size"]
       75 NAMECALL                         R6 R6 K27 ["setGoal"]
       77 CALL                             R6 2 0
       78 GETUPVAL                         R5 2
       79 LOADN                            R6 0
       80 LOADN                            R7 1
       81 CALL                             R5 2 1
       82 GETUPVAL                         R6 1
       83 CALL                             R6 0 1
       84 GETUPVAL                         R7 3
       85 GETTABLEKS                       R7 R7 K14 ["keyTileData"]
       87 SETTABLE                         R5 R7 R6
       88 GETTABLEKS                       R7 R5 K19 ["motor"]
       90 NEWCLOSURE                       R9 P1
       91 CAPTURE                          VAL R5
       92 NAMECALL                         R7 R7 K20 ["onStep"]
       94 CALL                             R7 2 0
       95 GETTABLEKS                       R7 R5 K19 ["motor"]
       97 DUPTABLE                         R9 K29 [{"size", "transparency"}]
       98 GETUPVAL                         R10 4
       99 GETTABLEKS                       R10 R10 K23 ["spring"]
      101 LOADN                            R11 50
      102 DUPTABLE                         R12 K26 [{["frequency"] = 2.5}]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K21 ["size"]
      106 GETUPVAL                         R10 4
      107 GETTABLEKS                       R10 R10 K23 ["spring"]
      109 LOADN                            R11 0
      110 DUPTABLE                         R12 K26 [{["frequency"] = 2.5}]
      111 CALL                             R10 2 1
      112 SETTABLEKS                       R10 R9 K28 ["transparency"]
      114 NAMECALL                         R7 R7 K27 ["setGoal"]
      116 CALL                             R7 2 0
      117 GETIMPORT                        R7 K10 [tick]
      119 CALL                             R7 0 1
      120 SETTABLEKS                       R7 R4 K4 ["lastUpdateTime"]
      122 GETTABLEKS                       R7 R4 K3 ["numberOfKeys"]
      124 ADDK                             R7 R7 K30 [1]
      125 SETTABLEKS                       R7 R4 K3 ["numberOfKeys"]
      127 GETTABLEKS                       R8 R4 K6 ["keys"]
      129 DUPTABLE                         R9 K32 [{"keyCode", "dataId"}]
      130 GETUPVAL                         R10 5
      131 SETTABLEKS                       R10 R9 K31 ["keyCode"]
      133 SETTABLEKS                       R6 R9 K7 ["dataId"]
      135 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
      137 GETIMPORT                        R7 K13 [table.insert]
      139 CALL                             R7 2 0
      140 DUPTABLE                         R7 K33 [{"keyRows"}]
      141 SETTABLEKS                       R3 R7 K0 ["keyRows"]
      143 RETURN                           R7 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U5
       11 CAPTURE                          VAL R0
       12 NAMECALL                         R1 R1 K0 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["keyRows"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["Dictionary"]
        5 GETTABLEKS                       R3 R3 K2 ["join"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 LOADNIL                          R4
       10 LOADNIL                          R5
       11 GETIMPORT                        R6 K4 [ipairs]
       13 MOVE                             R7 R3
       14 CALL                             R6 1 3
       15 FORGPREP_INEXT                   R6
       16 GETTABLEKS                       R11 R10 K5 ["dataId"]
       18 GETUPVAL                         R12 1
       19 JUMPIFNOTEQ                      R11 R12 ; [+4]
       21 MOVE                             R4 R10
       22 MOVE                             R5 R9
       23 JUMP                             ; [+2]
       24 FORGLOOP                         R6 2 [inext] ; [-9]
       26 JUMPIF                           R4 ; [+1]
       27 RETURN                           R0 0
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R6 R6 K6 ["keyTileData"]
       31 GETTABLEKS                       R7 R4 K5 ["dataId"]
       33 LOADNIL                          R8
       34 SETTABLE                         R8 R6 R7
       35 GETIMPORT                        R6 K4 [ipairs]
       37 GETTABLEKS                       R7 R4 K7 ["keys"]
       39 CALL                             R6 1 3
       40 FORGPREP_INEXT                   R6
       41 GETUPVAL                         R11 2
       42 GETTABLEKS                       R11 R11 K6 ["keyTileData"]
       44 GETTABLEKS                       R12 R10 K5 ["dataId"]
       46 LOADNIL                          R13
       47 SETTABLE                         R13 R11 R12
       48 FORGLOOP                         R6 2 [inext] ; [-8]
       50 LOADNIL                          R6
       51 SETTABLEKS                       R6 R4 K7 ["keys"]
       53 GETIMPORT                        R6 K10 [table.remove]
       55 MOVE                             R7 R3
       56 MOVE                             R8 R5
       57 CALL                             R6 2 0
       58 DUPTABLE                         R6 K11 [{"keyRows"}]
       59 SETTABLEKS                       R3 R6 K0 ["keyRows"]
       61 RETURN                           R6 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isMounted"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K1 ["setState"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["dataId"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["isMounted"]
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 NAMECALL                         R1 R1 K2 ["setState"]
       15 CALL                             R1 2 0
       16 RETURN                           R0 0

PROTO_24:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["keys"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K3 ["keyTileData"]
        9 GETTABLEKS                       R8 R5 K4 ["dataId"]
       11 GETTABLE                         R6 R7 R8
       12 GETTABLEKS                       R7 R6 K5 ["motor"]
       14 DUPTABLE                         R9 K7 [{"transparency"}]
       15 GETUPVAL                         R10 1
       16 GETTABLEKS                       R10 R10 K8 ["spring"]
       18 LOADN                            R11 1
       19 DUPTABLE                         R12 K11 [{["frequency"] = 2}]
       20 CALL                             R10 2 1
       21 SETTABLEKS                       R10 R9 K6 ["transparency"]
       23 NAMECALL                         R7 R7 K12 ["setGoal"]
       25 CALL                             R7 2 0
       26 JUMPIFNOTEQKN                    R4 K13 [1] ; [+10]
       28 GETTABLEKS                       R7 R6 K5 ["motor"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U2
       34 NAMECALL                         R7 R7 K14 ["onComplete"]
       36 CALL                             R7 2 0
       37 FORGLOOP                         R1 2 [inext] ; [-32]
       39 RETURN                           R0 0

PROTO_25:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWCLOSURE                       R1 P1
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["isMounted"]
       10 JUMPIF                           R2 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K1 ["state"]
       15 GETTABLEKS                       R2 R2 K2 ["keyRows"]
       17 GETIMPORT                        R3 K4 [ipairs]
       19 MOVE                             R4 R2
       20 CALL                             R3 1 3
       21 FORGPREP_INEXT                   R3
       22 GETTABLEKS                       R8 R7 K5 ["lastUpdateTime"]
       24 GETIMPORT                        R10 K7 [tick]
       26 CALL                             R10 0 1
       27 SUB                              R9 R10 R8
       28 LOADK                            R10 K8 [1.5]
       29 JUMPIFNOTLT                      R10 R9 ; [+4]
       31 MOVE                             R9 R1
       32 MOVE                             R10 R7
       33 CALL                             R9 1 0
       34 FORGLOOP                         R3 2 [inext] ; [-13]
       36 GETIMPORT                        R3 K10 [wait]
       38 LOADK                            R4 K11 [0.5]
       39 CALL                             R3 1 0
       40 JUMPBACK                         ; [-34]
       41 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K2 [{"visibleCursorRingIds", "keyRows"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["visibleCursorRingIds"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["keyRows"]
        9 SETTABLEKS                       R1 R0 K3 ["state"]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K4 ["cursorRings"]
       15 NEWTABLE                         R1 0 0
       17 SETTABLEKS                       R1 R0 K5 ["currentCursorRingsByButtonId"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K6 ["mouseButtonIsDown"]
       23 NEWTABLE                         R1 0 0
       25 SETTABLEKS                       R1 R0 K7 ["connections"]
       27 NEWTABLE                         R1 0 0
       29 SETTABLEKS                       R1 R0 K8 ["touchMap"]
       31 NEWTABLE                         R1 0 0
       33 SETTABLEKS                       R1 R0 K9 ["keyTileData"]
       35 GETUPVAL                         R1 0
       36 GETTABLEKS                       R1 R1 K10 ["createBinding"]
       38 GETIMPORT                        R2 K13 [UDim2.fromOffset]
       40 LOADN                            R3 0
       41 LOADN                            R4 0
       42 CALL                             R2 2 -1
       43 CALL                             R1 -1 2
       44 SETTABLEKS                       R1 R0 K14 ["fakeCursorPosition"]
       46 SETTABLEKS                       R2 R0 K15 ["updateFakeCursorPosition"]
       48 NEWCLOSURE                       R1 P0
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U1
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          UPVAL U3
       53 SETTABLEKS                       R1 R0 K16 ["onMouseDown"]
       55 NEWCLOSURE                       R1 P1
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U4
       58 SETTABLEKS                       R1 R0 K17 ["onMouseMove"]
       60 NEWCLOSURE                       R1 P2
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U3
       63 SETTABLEKS                       R1 R0 K18 ["removeCursorRing"]
       65 NEWCLOSURE                       R1 P3
       66 CAPTURE                          VAL R0
       67 CAPTURE                          UPVAL U2
       68 SETTABLEKS                       R1 R0 K19 ["onMouseUp"]
       70 NEWCLOSURE                       R1 P4
       71 CAPTURE                          UPVAL U1
       72 CAPTURE                          VAL R0
       73 CAPTURE                          UPVAL U2
       74 CAPTURE                          UPVAL U5
       75 SETTABLEKS                       R1 R0 K20 ["onTouchStarted"]
       77 NEWCLOSURE                       R1 P5
       78 CAPTURE                          VAL R0
       79 SETTABLEKS                       R1 R0 K21 ["onTouchMoved"]
       81 NEWCLOSURE                       R1 P6
       82 CAPTURE                          VAL R0
       83 CAPTURE                          UPVAL U2
       84 SETTABLEKS                       R1 R0 K22 ["onTouchEnded"]
       86 NEWCLOSURE                       R1 P7
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R0
       89 CAPTURE                          UPVAL U3
       90 CAPTURE                          UPVAL U7
       91 CAPTURE                          UPVAL U8
       92 CAPTURE                          UPVAL U2
       93 SETTABLEKS                       R1 R0 K23 ["onKeyDown"]
       95 NEWCLOSURE                       R1 P8
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U3
       98 CAPTURE                          UPVAL U2
       99 SETTABLEKS                       R1 R0 K24 ["deleteKeyRowThread"]
      101 RETURN                           R0 0

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        4 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+14]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["onMouseDown"]
       11 GETIMPORT                        R3 K8 [Vector2.new]
       13 GETTABLEKS                       R4 R1 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K10 ["Y"]
       17 CALL                             R3 2 1
       18 LOADN                            R4 1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
       23 GETIMPORT                        R3 K12 [Enum.UserInputType.MouseButton2]
       25 JUMPIFNOTEQ                      R2 R3 ; [+14]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K5 ["onMouseDown"]
       30 GETIMPORT                        R3 K8 [Vector2.new]
       32 GETTABLEKS                       R4 R1 K9 ["X"]
       34 GETTABLEKS                       R5 R1 K10 ["Y"]
       36 CALL                             R3 2 1
       37 LOADN                            R4 2
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
       42 GETIMPORT                        R3 K14 [Enum.UserInputType.Touch]
       44 JUMPIFNOTEQ                      R2 R3 ; [+7]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K15 ["onTouchStarted"]
       49 MOVE                             R3 R0
       50 CALL                             R2 1 0
       51 RETURN                           R0 0
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R4 R0 K1 ["UserInputType"]
       55 GETTABLE                         R2 R3 R4
       56 JUMPIFNOT                        R2 ; [+6]
       57 GETUPVAL                         R2 0
       58 GETTABLEKS                       R2 R2 K16 ["onKeyDown"]
       60 GETTABLEKS                       R3 R0 K17 ["KeyCode"]
       62 CALL                             R2 1 0
       63 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        4 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+14]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["onMouseUp"]
       11 GETIMPORT                        R3 K8 [Vector2.new]
       13 GETTABLEKS                       R4 R1 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K10 ["Y"]
       17 CALL                             R3 2 1
       18 LOADN                            R4 1
       19 CALL                             R2 2 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
       23 GETIMPORT                        R3 K12 [Enum.UserInputType.MouseButton2]
       25 JUMPIFNOTEQ                      R2 R3 ; [+14]
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K5 ["onMouseUp"]
       30 GETIMPORT                        R3 K8 [Vector2.new]
       32 GETTABLEKS                       R4 R1 K9 ["X"]
       34 GETTABLEKS                       R5 R1 K10 ["Y"]
       36 CALL                             R3 2 1
       37 LOADN                            R4 2
       38 CALL                             R2 2 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
       42 GETIMPORT                        R3 K14 [Enum.UserInputType.Touch]
       44 JUMPIFNOTEQ                      R2 R3 ; [+6]
       46 GETUPVAL                         R2 0
       47 GETTABLEKS                       R2 R2 K15 ["onTouchEnded"]
       49 MOVE                             R3 R0
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R1 R0 K0 ["Position"]
        2 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        4 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        6 JUMPIFNOTEQ                      R2 R3 ; [+13]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K5 ["onMouseMove"]
       11 GETIMPORT                        R3 K8 [Vector2.new]
       13 GETTABLEKS                       R4 R1 K9 ["X"]
       15 GETTABLEKS                       R5 R1 K10 ["Y"]
       17 CALL                             R3 2 -1
       18 CALL                             R2 -1 0
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
       22 GETIMPORT                        R3 K12 [Enum.UserInputType.Touch]
       24 JUMPIFNOTEQ                      R2 R3 ; [+6]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K13 ["onTouchMoved"]
       29 MOVE                             R3 R0
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R0 K0 ["connections"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["InputBegan"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R3 R3 K2 ["connect"]
       10 CALL                             R3 2 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R1 K5 [table.insert]
       14 CALL                             R1 -1 0
       15 GETTABLEKS                       R2 R0 K0 ["connections"]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K6 ["InputEnded"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K2 ["connect"]
       24 CALL                             R3 2 -1
       25 FASTCALL                         TABLE_INSERT ; [+2]
       26 GETIMPORT                        R1 K5 [table.insert]
       28 CALL                             R1 -1 0
       29 GETTABLEKS                       R2 R0 K0 ["connections"]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K7 ["InputChanged"]
       34 NEWCLOSURE                       R5 P2
       35 CAPTURE                          VAL R0
       36 NAMECALL                         R3 R3 K2 ["connect"]
       38 CALL                             R3 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R1 K5 [table.insert]
       42 CALL                             R1 -1 0
       43 LOADB                            R1 1
       44 SETTABLEKS                       R1 R0 K8 ["isMounted"]
       46 GETIMPORT                        R1 K11 [task.defer]
       48 GETTABLEKS                       R2 R0 K12 ["deleteKeyRowThread"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_31:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["connections"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["Disconnect"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["connections"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K4 ["isMounted"]
       18 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 NEWTABLE                         R4 0 0
        8 GETIMPORT                        R5 K4 [ipairs]
       10 GETTABLEKS                       R6 R2 K5 ["keyRows"]
       12 CALL                             R5 1 3
       13 FORGPREP_INEXT                   R5
       14 NEWTABLE                         R10 0 0
       16 GETIMPORT                        R11 K4 [ipairs]
       18 GETTABLEKS                       R12 R9 K6 ["keys"]
       20 CALL                             R11 1 3
       21 FORGPREP_INEXT                   R11
       22 GETTABLEKS                       R17 R0 K7 ["keyTileData"]
       24 GETTABLEKS                       R18 R15 K8 ["dataId"]
       26 GETTABLE                         R16 R17 R18
       27 JUMPIFNOT                        R16 ; [+25]
       28 GETUPVAL                         R17 0
       29 GETTABLEKS                       R17 R17 K9 ["createElement"]
       31 GETUPVAL                         R18 1
       32 DUPTABLE                         R19 K15 [{"KeyCode", "LayoutOrder", "Size", "ForegroundTransparency", "BackgroundTransparency"}]
       33 GETTABLEKS                       R20 R15 K16 ["keyCode"]
       35 SETTABLEKS                       R20 R19 K10 ["KeyCode"]
       37 SETTABLEKS                       R14 R19 K11 ["LayoutOrder"]
       39 GETTABLEKS                       R20 R16 K17 ["size"]
       41 SETTABLEKS                       R20 R19 K12 ["Size"]
       43 GETTABLEKS                       R20 R16 K18 ["foregroundTransparency"]
       45 SETTABLEKS                       R20 R19 K13 ["ForegroundTransparency"]
       47 GETTABLEKS                       R20 R16 K19 ["backgroundTransparency"]
       49 SETTABLEKS                       R20 R19 K14 ["BackgroundTransparency"]
       51 CALL                             R17 2 1
       52 SETTABLE                         R17 R10 R14
       53 FORGLOOP                         R11 2 [inext] ; [-32]
       55 GETTABLEKS                       R12 R0 K7 ["keyTileData"]
       57 GETTABLEKS                       R13 R9 K8 ["dataId"]
       59 GETTABLE                         R11 R12 R13
       60 JUMPIFNOT                        R11 ; [+31]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K9 ["createElement"]
       64 GETUPVAL                         R13 2
       65 DUPTABLE                         R14 K24 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Size", "LayoutOrder"}]
       66 GETIMPORT                        R15 K28 [Enum.FillDirection.Horizontal]
       68 SETTABLEKS                       R15 R14 K20 ["Layout"]
       70 GETIMPORT                        R15 K30 [Enum.HorizontalAlignment.Left]
       72 SETTABLEKS                       R15 R14 K21 ["HorizontalAlignment"]
       74 GETIMPORT                        R15 K32 [Enum.VerticalAlignment.Bottom]
       76 SETTABLEKS                       R15 R14 K22 ["VerticalAlignment"]
       78 GETTABLEKS                       R15 R3 K33 ["KeyBarRowSpacingPx"]
       80 SETTABLEKS                       R15 R14 K23 ["Spacing"]
       82 GETTABLEKS                       R15 R11 K17 ["size"]
       84 SETTABLEKS                       R15 R14 K12 ["Size"]
       86 MINUS                            R15 R8
       87 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       89 MOVE                             R15 R10
       90 CALL                             R12 3 1
       91 SETTABLE                         R12 R4 R8
       92 FORGLOOP                         R5 2 [inext] ; [-79]
       94 DUPTABLE                         R5 K36 [{"FakeCursorImage", "KeyBar"}]
       95 GETUPVAL                         R6 0
       96 GETTABLEKS                       R6 R6 K9 ["createElement"]
       98 LOADK                            R7 K37 ["ImageLabel"]
       99 DUPTABLE                         R8 K49 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"] = "rbxasset://textures/UserInputPlaybackPlugin/ArrowCursor.png", ["Position"], ["Size"], ["AnchorPoint"], ["Visible"] = True, ["ImageColor3"], ["ZIndex"] = 1}]
      100 GETTABLEKS                       R9 R0 K50 ["fakeCursorPosition"]
      102 SETTABLEKS                       R9 R8 K43 ["Position"]
      104 GETIMPORT                        R9 K53 [UDim2.fromOffset]
      106 LOADN                            R10 64
      107 LOADN                            R11 64
      108 CALL                             R9 2 1
      109 SETTABLEKS                       R9 R8 K12 ["Size"]
      111 GETIMPORT                        R9 K56 [Vector2.new]
      113 LOADK                            R10 K57 [0.5]
      114 LOADK                            R11 K57 [0.5]
      115 CALL                             R9 2 1
      116 SETTABLEKS                       R9 R8 K44 ["AnchorPoint"]
      118 GETUPVAL                         R9 3
      119 SETTABLEKS                       R9 R8 K47 ["ImageColor3"]
      121 CALL                             R6 2 1
      122 SETTABLEKS                       R6 R5 K34 ["FakeCursorImage"]
      124 GETUPVAL                         R6 0
      125 GETTABLEKS                       R6 R6 K9 ["createElement"]
      127 GETUPVAL                         R7 2
      128 DUPTABLE                         R8 K58 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "Size", "Position", "AnchorPoint"}]
      129 GETIMPORT                        R9 K60 [Enum.FillDirection.Vertical]
      131 SETTABLEKS                       R9 R8 K20 ["Layout"]
      133 GETTABLEKS                       R9 R3 K33 ["KeyBarRowSpacingPx"]
      135 SETTABLEKS                       R9 R8 K23 ["Spacing"]
      137 GETIMPORT                        R9 K30 [Enum.HorizontalAlignment.Left]
      139 SETTABLEKS                       R9 R8 K21 ["HorizontalAlignment"]
      141 GETIMPORT                        R9 K32 [Enum.VerticalAlignment.Bottom]
      143 SETTABLEKS                       R9 R8 K22 ["VerticalAlignment"]
      145 GETTABLEKS                       R9 R3 K61 ["KeyBarSize"]
      147 SETTABLEKS                       R9 R8 K12 ["Size"]
      149 GETIMPORT                        R9 K63 [UDim2.fromScale]
      151 LOADN                            R10 0
      152 LOADN                            R11 1
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K43 ["Position"]
      156 GETIMPORT                        R9 K56 [Vector2.new]
      158 LOADN                            R10 0
      159 LOADN                            R11 1
      160 CALL                             R9 2 1
      161 SETTABLEKS                       R9 R8 K44 ["AnchorPoint"]
      163 MOVE                             R9 R4
      164 CALL                             R6 3 1
      165 SETTABLEKS                       R6 R5 K35 ["KeyBar"]
      167 GETIMPORT                        R6 K4 [ipairs]
      169 GETTABLEKS                       R7 R0 K64 ["cursorRings"]
      171 CALL                             R6 1 3
      172 FORGPREP_INEXT                   R6
      173 GETTABLEKS                       R12 R2 K65 ["visibleCursorRingIds"]
      175 GETTABLEKS                       R13 R10 K66 ["id"]
      177 GETTABLE                         R11 R12 R13
      178 JUMPIFNOT                        R11 ; [+40]
      179 GETTABLEKS                       R11 R10 K66 ["id"]
      181 GETUPVAL                         R12 0
      182 GETTABLEKS                       R12 R12 K9 ["createElement"]
      184 LOADK                            R13 K37 ["ImageLabel"]
      185 DUPTABLE                         R14 K68 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Image"], ["ZIndex"], ["AnchorPoint"], ["Size"], ["Position"], ["ImageTransparency"], ["ImageColor3"], ["Visible"] = True}]
      186 GETTABLEKS                       R15 R10 K69 ["image"]
      188 SETTABLEKS                       R15 R14 K41 ["Image"]
      190 GETTABLEKS                       R15 R10 K70 ["zIndex"]
      192 SETTABLEKS                       R15 R14 K48 ["ZIndex"]
      194 GETIMPORT                        R15 K56 [Vector2.new]
      196 LOADK                            R16 K57 [0.5]
      197 LOADK                            R17 K57 [0.5]
      198 CALL                             R15 2 1
      199 SETTABLEKS                       R15 R14 K44 ["AnchorPoint"]
      201 GETTABLEKS                       R15 R10 K17 ["size"]
      203 SETTABLEKS                       R15 R14 K12 ["Size"]
      205 GETTABLEKS                       R15 R10 K71 ["position"]
      207 SETTABLEKS                       R15 R14 K43 ["Position"]
      209 GETTABLEKS                       R15 R10 K72 ["transparency"]
      211 SETTABLEKS                       R15 R14 K67 ["ImageTransparency"]
      213 GETTABLEKS                       R15 R10 K73 ["color"]
      215 SETTABLEKS                       R15 R14 K47 ["ImageColor3"]
      217 CALL                             R12 2 1
      218 SETTABLE                         R12 R5 R11
      219 FORGLOOP                         R6 2 [inext] ; [-47]
      221 GETUPVAL                         R6 0
      222 GETTABLEKS                       R6 R6 K74 ["createFragment"]
      224 MOVE                             R7 R5
      225 CALL                             R6 1 -1
      226 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Otter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R4 K11 ["UI"]
       41 GETTABLEKS                       R7 R6 K12 ["Pane"]
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K14 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["KeyBarTile"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K17 [game]
       54 LOADK                            R11 K18 ["UserInputService"]
       55 NAMECALL                         R9 R9 K19 ["GetService"]
       57 CALL                             R9 2 1
       58 GETIMPORT                        R10 K22 [Color3.new]
       60 LOADN                            R11 0
       61 LOADN                            R12 1
       62 LOADN                            R13 0
       63 CALL                             R10 3 1
       64 GETIMPORT                        R11 K22 [Color3.new]
       66 LOADN                            R12 1
       67 LOADN                            R13 1
       68 LOADN                            R14 1
       69 CALL                             R11 3 1
       70 GETIMPORT                        R12 K22 [Color3.new]
       72 LOADN                            R13 1
       73 LOADN                            R14 1
       74 LOADN                            R15 0
       75 CALL                             R12 3 1
       76 NEWTABLE                         R13 0 2
       78 SETTABLEN                        R11 R13 1
       79 SETTABLEN                        R12 R13 2
       80 NEWTABLE                         R14 16 0
       82 GETIMPORT                        R15 K26 [Enum.UserInputType.Keyboard]
       84 LOADN                            R16 1
       85 SETTABLE                         R16 R14 R15
       86 GETIMPORT                        R15 K28 [Enum.UserInputType.Gamepad1]
       88 LOADN                            R16 2
       89 SETTABLE                         R16 R14 R15
       90 GETIMPORT                        R15 K30 [Enum.UserInputType.Gamepad2]
       92 LOADN                            R16 2
       93 SETTABLE                         R16 R14 R15
       94 GETIMPORT                        R15 K32 [Enum.UserInputType.Gamepad3]
       96 LOADN                            R16 2
       97 SETTABLE                         R16 R14 R15
       98 GETIMPORT                        R15 K34 [Enum.UserInputType.Gamepad4]
      100 LOADN                            R16 2
      101 SETTABLE                         R16 R14 R15
      102 GETIMPORT                        R15 K36 [Enum.UserInputType.Gamepad5]
      104 LOADN                            R16 2
      105 SETTABLE                         R16 R14 R15
      106 GETIMPORT                        R15 K38 [Enum.UserInputType.Gamepad6]
      108 LOADN                            R16 2
      109 SETTABLE                         R16 R14 R15
      110 GETIMPORT                        R15 K40 [Enum.UserInputType.Gamepad7]
      112 LOADN                            R16 2
      113 SETTABLE                         R16 R14 R15
      114 GETIMPORT                        R15 K42 [Enum.UserInputType.Gamepad8]
      116 LOADN                            R16 2
      117 SETTABLE                         R16 R14 R15
      118 NEWTABLE                         R15 2 0
      120 GETIMPORT                        R16 K45 [Enum.KeyCode.Thumbstick1]
      122 LOADN                            R17 1
      123 SETTABLE                         R17 R15 R16
      124 GETIMPORT                        R16 K47 [Enum.KeyCode.Thumbstick2]
      126 LOADN                            R17 1
      127 SETTABLE                         R17 R15 R16
      128 GETTABLEKS                       R16 R1 K48 ["PureComponent"]
      130 LOADK                            R18 K49 ["InputVisualizer"]
      131 NAMECALL                         R16 R16 K50 ["extend"]
      133 CALL                             R16 2 1
      134 LOADN                            R18 0
      135 NEWCLOSURE                       R17 P0
      136 CAPTURE                          REF R18
      137 CLOSEUPVALS                      R18
      138 DUPCLOSURE                       R18 K51 [PROTO_2]
      139 CAPTURE                          VAL R1
      140 CAPTURE                          VAL R17
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R2
      143 DUPCLOSURE                       R19 K52 [PROTO_3]
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R2
      146 DUPCLOSURE                       R20 K53 [PROTO_26]
      147 CAPTURE                          VAL R1
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R9
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R19
      156 SETTABLEKS                       R20 R16 K54 ["init"]
      158 DUPCLOSURE                       R20 K55 [PROTO_30]
      159 CAPTURE                          VAL R9
      160 CAPTURE                          VAL R14
      161 SETTABLEKS                       R20 R16 K56 ["didMount"]
      163 DUPCLOSURE                       R20 K57 [PROTO_31]
      164 SETTABLEKS                       R20 R16 K58 ["willUnmount"]
      166 DUPCLOSURE                       R20 K59 [PROTO_32]
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R8
      169 CAPTURE                          VAL R7
      170 CAPTURE                          VAL R10
      171 SETTABLEKS                       R20 R16 K60 ["render"]
      173 GETTABLEKS                       R20 R5 K61 ["withContext"]
      175 DUPTABLE                         R21 K63 [{"Stylizer"}]
      176 GETTABLEKS                       R22 R5 K62 ["Stylizer"]
      178 SETTABLEKS                       R22 R21 K62 ["Stylizer"]
      180 CALL                             R20 1 1
      181 MOVE                             R21 R16
      182 CALL                             R20 1 1
      183 MOVE                             R16 R20
      184 RETURN                           R16 1
