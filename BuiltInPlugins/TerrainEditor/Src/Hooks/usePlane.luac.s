PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Selection"]
        3 GETTABLEKS                       R0 R0 K1 ["new"]
        5 GETUPVAL                         R3 1
        6 GETUPVAL                         R4 2
        7 GETTABLEKS                       R4 R4 K2 ["BrushSettings"]
        9 GETTABLE                         R2 R3 R4
       10 GETUPVAL                         R3 3
       11 GETTABLEKS                       R3 R3 K3 ["PlaneTransform"]
       13 GETTABLE                         R1 R2 R3
       14 CALL                             R0 1 -1
       15 RETURN                           R0 -1

PROTO_1:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["BrushSettings"]
        5 NEWTABLE                         R3 1 0
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R4 R4 K1 ["PlaneTransform"]
       10 SETTABLE                         R0 R3 R4
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R2 2
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 GETUPVAL                         R2 3
       16 MOVE                             R3 R0
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["SetTransform"]
        4 CALL                             R1 2 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["isMocking"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+9]
        5 DUPTABLE                         R0 K3 [{"DraggerContext", "Mock"}]
        6 NEWTABLE                         R1 0 0
        8 SETTABLEKS                       R1 R0 K1 ["DraggerContext"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K2 ["Mock"]
       13 RETURN                           R0 1
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K4 ["new"]
       17 GETUPVAL                         R1 2
       18 GETTABLEKS                       R1 R1 K5 ["Parent"]
       20 GETIMPORT                        R2 K7 [game]
       22 GETIMPORT                        R3 K9 [settings]
       24 CALL                             R3 0 1
       25 GETUPVAL                         R4 3
       26 CALL                             R0 4 1
       27 GETUPVAL                         R1 4
       28 SETTABLEKS                       R1 R0 K10 ["updatePlane"]
       30 LOADB                            R1 0
       31 SETTABLEKS                       R1 R0 K2 ["Mock"]
       33 DUPCLOSURE                       R1 K11 [PROTO_3]
       34 SETTABLEKS                       R1 R0 K12 ["shouldExtendSelection"]
       36 DUPTABLE                         R1 K16 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       37 GETUPVAL                         R2 5
       38 NAMECALL                         R2 R2 K17 ["getMouse"]
       40 CALL                             R2 1 1
       41 SETTABLEKS                       R2 R1 K13 ["Mouse"]
       43 SETTABLEKS                       R0 R1 K1 ["DraggerContext"]
       45 GETUPVAL                         R2 6
       46 SETTABLEKS                       R2 R1 K14 ["DraggerSchema"]
       48 DUPTABLE                         R2 K24 [{"AnalyticsName", "AllowDragSelect", "AllowFreeformDrag", "ShowLocalSpaceIndicator", "ShowPivotIndicator", "HandlesList"}]
       49 LOADK                            R3 K25 ["AdjustablePlaneLock"]
       50 SETTABLEKS                       R3 R2 K18 ["AnalyticsName"]
       52 LOADB                            R3 1
       53 SETTABLEKS                       R3 R2 K19 ["AllowDragSelect"]
       55 LOADB                            R3 1
       56 SETTABLEKS                       R3 R2 K20 ["AllowFreeformDrag"]
       58 LOADB                            R3 1
       59 SETTABLEKS                       R3 R2 K21 ["ShowLocalSpaceIndicator"]
       61 LOADB                            R3 1
       62 SETTABLEKS                       R3 R2 K22 ["ShowPivotIndicator"]
       64 NEWTABLE                         R3 0 2
       66 GETUPVAL                         R4 7
       67 GETTABLEKS                       R4 R4 K4 ["new"]
       69 MOVE                             R5 R0
       70 DUPTABLE                         R6 K29 [{"ShowBoundingBox", "Summonable", "Outset"}]
       71 LOADB                            R7 0
       72 SETTABLEKS                       R7 R6 K26 ["ShowBoundingBox"]
       74 LOADB                            R7 0
       75 SETTABLEKS                       R7 R6 K27 ["Summonable"]
       77 LOADN                            R7 1
       78 SETTABLEKS                       R7 R6 K28 ["Outset"]
       80 GETUPVAL                         R7 6
       81 GETTABLEKS                       R7 R7 K30 ["TransformHandlesImplementation"]
       83 GETTABLEKS                       R7 R7 K4 ["new"]
       85 MOVE                             R8 R0
       86 CALL                             R7 1 -1
       87 CALL                             R4 -1 1
       88 GETUPVAL                         R5 8
       89 GETTABLEKS                       R5 R5 K4 ["new"]
       91 MOVE                             R6 R0
       92 DUPTABLE                         R7 K29 [{"ShowBoundingBox", "Summonable", "Outset"}]
       93 LOADB                            R8 0
       94 SETTABLEKS                       R8 R7 K26 ["ShowBoundingBox"]
       96 LOADB                            R8 0
       97 SETTABLEKS                       R8 R7 K27 ["Summonable"]
       99 LOADN                            R8 1
      100 SETTABLEKS                       R8 R7 K28 ["Outset"]
      102 GETUPVAL                         R8 6
      103 GETTABLEKS                       R8 R8 K30 ["TransformHandlesImplementation"]
      105 GETTABLEKS                       R8 R8 K4 ["new"]
      107 MOVE                             R9 R0
      108 CALL                             R8 1 -1
      109 CALL                             R5 -1 -1
      110 SETLIST                          R3 R4 -1 [1]
      112 SETTABLEKS                       R3 R2 K23 ["HandlesList"]
      114 SETTABLEKS                       R2 R1 K15 ["DraggerSettings"]
      116 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DraggerContext"]
        3 GETUPVAL                         R1 1
        4 SETTABLEKS                       R1 R0 K1 ["updatePlane"]
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["BrushSettings"]
        4 GETTABLE                         R1 R2 R3
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R2 R2 K1 ["PlaneTransform"]
        8 GETTABLE                         R0 R1 R2
        9 GETUPVAL                         R1 3
       10 JUMPIF                           R1 ; [+8]
       11 GETUPVAL                         R1 4
       12 MOVE                             R3 R0
       13 NAMECALL                         R1 R1 K2 ["SetTransformSignal"]
       15 CALL                             R1 2 0
       16 GETUPVAL                         R1 5
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R4 R4 K0 ["use"]
        3 CALL                             R4 1 1
        4 GETUPVAL                         R5 1
        5 NAMECALL                         R5 R5 K0 ["use"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 2
        9 NEWCLOSURE                       R7 P0
       10 CAPTURE                          UPVAL U3
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 NEWTABLE                         R8 0 1
       16 MOVE                             R9 R0
       17 SETLIST                          R8 R9 1 [1]
       19 CALL                             R6 2 1
       20 GETUPVAL                         R7 6
       21 GETUPVAL                         R10 4
       22 GETTABLEKS                       R10 R10 K1 ["BrushSettings"]
       24 GETTABLE                         R9 R1 R10
       25 GETUPVAL                         R10 5
       26 GETTABLEKS                       R10 R10 K2 ["PlaneTransform"]
       28 GETTABLE                         R8 R9 R10
       29 CALL                             R7 1 2
       30 GETUPVAL                         R9 7
       31 NEWCLOSURE                       R10 P1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R8
       36 NEWTABLE                         R11 0 1
       38 MOVE                             R12 R1
       39 SETLIST                          R11 R12 1 [1]
       41 CALL                             R9 2 1
       42 GETUPVAL                         R10 7
       43 NEWCLOSURE                       R11 P2
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R9
       46 NEWTABLE                         R12 0 2
       48 MOVE                             R13 R6
       49 MOVE                             R14 R9
       50 SETLIST                          R12 R13 2 [1]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 2
       54 NEWCLOSURE                       R12 P3
       55 CAPTURE                          VAL R4
       56 CAPTURE                          UPVAL U8
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R5
       61 CAPTURE                          UPVAL U3
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          UPVAL U11
       64 NEWTABLE                         R13 0 1
       66 MOVE                             R14 R0
       67 SETLIST                          R13 R14 1 [1]
       69 CALL                             R11 2 1
       70 GETUPVAL                         R12 12
       71 NEWCLOSURE                       R13 P4
       72 CAPTURE                          VAL R11
       73 CAPTURE                          VAL R10
       74 NEWTABLE                         R14 0 1
       76 MOVE                             R15 R10
       77 SETLIST                          R14 R15 1 [1]
       79 CALL                             R12 2 0
       80 GETUPVAL                         R12 12
       81 NEWCLOSURE                       R13 P5
       82 CAPTURE                          VAL R1
       83 CAPTURE                          UPVAL U4
       84 CAPTURE                          UPVAL U5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R8
       88 NEWTABLE                         R14 0 2
       90 MOVE                             R15 R0
       91 GETUPVAL                         R18 4
       92 GETTABLEKS                       R18 R18 K1 ["BrushSettings"]
       94 GETTABLE                         R17 R1 R18
       95 GETUPVAL                         R18 5
       96 GETTABLEKS                       R18 R18 K2 ["PlaneTransform"]
       98 GETTABLE                         R16 R17 R18
       99 SETLIST                          R14 R15 2 [1]
      101 CALL                             R12 2 0
      102 MOVE                             R12 R11
      103 MOVE                             R13 R7
      104 RETURN                           R12 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETTABLEKS                       R1 R1 K5 ["DraggerFramework"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R0 K4 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       22 GETTABLEKS                       R5 R2 K11 ["useMemo"]
       24 GETTABLEKS                       R6 R2 K12 ["useState"]
       26 GETIMPORT                        R7 K7 [require]
       28 GETTABLEKS                       R8 R0 K13 ["Src"]
       30 GETTABLEKS                       R8 R8 K14 ["Controllers"]
       32 GETTABLEKS                       R8 R8 K15 ["PluginController"]
       34 CALL                             R7 1 1
       35 GETIMPORT                        R8 K7 [require]
       37 GETTABLEKS                       R9 R0 K13 ["Src"]
       39 GETTABLEKS                       R9 R9 K14 ["Controllers"]
       41 GETTABLEKS                       R9 R9 K16 ["ShortcutController"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K7 [require]
       46 GETTABLEKS                       R10 R0 K13 ["Src"]
       48 GETTABLEKS                       R10 R10 K17 ["Schemas"]
       50 GETTABLEKS                       R10 R10 K18 ["Plane"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K7 [require]
       55 GETTABLEKS                       R11 R1 K19 ["Implementation"]
       57 GETTABLEKS                       R11 R11 K20 ["DraggerContext_PluginImpl"]
       59 CALL                             R10 1 1
       60 GETIMPORT                        R11 K7 [require]
       62 GETTABLEKS                       R12 R1 K21 ["Handles"]
       64 GETTABLEKS                       R12 R12 K22 ["MoveHandles"]
       66 CALL                             R11 1 1
       67 GETIMPORT                        R12 K7 [require]
       69 GETTABLEKS                       R13 R1 K21 ["Handles"]
       71 GETTABLEKS                       R13 R13 K23 ["RotateHandles"]
       73 CALL                             R12 1 1
       74 GETIMPORT                        R13 K7 [require]
       76 GETTABLEKS                       R14 R0 K13 ["Src"]
       78 GETTABLEKS                       R14 R14 K24 ["Types"]
       80 CALL                             R13 1 1
       81 GETTABLEKS                       R14 R13 K25 ["BrushSettings"]
       83 GETTABLEKS                       R15 R13 K26 ["Category"]
       85 DUPCLOSURE                       R16 K27 [PROTO_7]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R5
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R15
       91 CAPTURE                          VAL R14
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R10
       95 CAPTURE                          VAL R0
       96 CAPTURE                          VAL R11
       97 CAPTURE                          VAL R12
       98 CAPTURE                          VAL R4
       99 RETURN                           R16 1
