PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 JUMPIF                           R0 ; [+3]
        6 GETUPVAL                         R0 2
        7 JUMPIFNOTEQKNIL                  R0 ; [+54]
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 1
       11 JUMPIFNOT                        R0 ; [+2]
       12 GETUPVAL                         R0 4
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R0
       15 RETURN                           R0 1
       16 GETUPVAL                         R0 5
       17 NAMECALL                         R0 R0 K0 ["getMouse"]
       19 CALL                             R0 1 1
       20 GETUPVAL                         R1 6
       21 GETTABLEKS                       R1 R1 K1 ["new"]
       23 LOADNIL                          R2
       24 CALL                             R1 1 1
       25 GETUPVAL                         R2 7
       26 GETTABLEKS                       R2 R2 K1 ["new"]
       28 GETUPVAL                         R3 5
       29 GETIMPORT                        R4 K3 [game]
       31 GETIMPORT                        R5 K5 [settings]
       33 CALL                             R5 0 1
       34 MOVE                             R6 R1
       35 CALL                             R2 4 1
       36 GETUPVAL                         R3 5
       37 SETTABLEKS                       R3 R2 K6 ["_plugin"]
       39 GETUPVAL                         R3 8
       40 SETTABLEKS                       R3 R2 K7 ["rigModel"]
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          UPVAL U9
       44 SETTABLEKS                       R3 R2 K8 ["onClickAway"]
       46 DUPTABLE                         R3 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
       47 SETTABLEKS                       R0 R3 K9 ["Mouse"]
       49 SETTABLEKS                       R2 R3 K10 ["DraggerContext"]
       51 GETUPVAL                         R4 10
       52 SETTABLEKS                       R4 R3 K11 ["DraggerSchema"]
       54 DUPTABLE                         R4 K22 [{["AnalyticsName"] = "HRDDragger", ["AllowDragSelect"] = False, ["AllowFreeformDrag"] = False, ["ShowLocalSpaceIndicator"] = False, ["ShowPivotIndicator"] = False, ["HandlesList"]}]
       55 NEWTABLE                         R5 0 0
       57 SETTABLEKS                       R5 R4 K21 ["HandlesList"]
       59 SETTABLEKS                       R4 R3 K12 ["DraggerSettings"]
       61 RETURN                           R3 1
       62 GETUPVAL                         R0 5
       63 NAMECALL                         R0 R0 K0 ["getMouse"]
       65 CALL                             R0 1 1
       66 LOADNIL                          R1
       67 LOADNIL                          R2
       68 GETUPVAL                         R3 6
       69 GETTABLEKS                       R3 R3 K1 ["new"]
       71 GETUPVAL                         R4 2
       72 CALL                             R3 1 1
       73 GETUPVAL                         R4 7
       74 GETTABLEKS                       R4 R4 K1 ["new"]
       76 GETUPVAL                         R5 5
       77 GETIMPORT                        R6 K3 [game]
       79 GETIMPORT                        R7 K5 [settings]
       81 CALL                             R7 0 1
       82 MOVE                             R8 R3
       83 CALL                             R4 4 1
       84 MOVE                             R1 R4
       85 MOVE                             R4 R1
       86 NEWCLOSURE                       R5 P1
       87 CAPTURE                          UPVAL U11
       88 SETTABLEKS                       R5 R4 K23 ["updateTransform"]
       90 GETUPVAL                         R5 5
       91 SETTABLEKS                       R5 R4 K6 ["_plugin"]
       93 GETUPVAL                         R5 8
       94 SETTABLEKS                       R5 R4 K7 ["rigModel"]
       96 NEWCLOSURE                       R5 P2
       97 CAPTURE                          UPVAL U9
       98 SETTABLEKS                       R5 R4 K8 ["onClickAway"]
      100 GETUPVAL                         R5 10
      101 GETTABLEKS                       R5 R5 K24 ["JointTranslateHandlesImplementation"]
      103 GETTABLEKS                       R5 R5 K1 ["new"]
      105 MOVE                             R6 R1
      106 GETUPVAL                         R7 12
      107 GETUPVAL                         R8 0
      108 GETUPVAL                         R9 13
      109 CALL                             R5 4 1
      110 GETUPVAL                         R6 10
      111 GETTABLEKS                       R6 R6 K25 ["JointRotateHandlesImplementation"]
      113 GETTABLEKS                       R6 R6 K1 ["new"]
      115 MOVE                             R7 R1
      116 GETUPVAL                         R8 12
      117 GETUPVAL                         R9 0
      118 GETUPVAL                         R10 13
      119 CALL                             R6 4 1
      120 NEWTABLE                         R7 0 2
      122 GETUPVAL                         R8 14
      123 GETTABLEKS                       R8 R8 K1 ["new"]
      125 MOVE                             R9 R1
      126 DUPTABLE                         R10 K28 [{["Summonable"] = True}]
      127 MOVE                             R11 R5
      128 CALL                             R8 3 1
      129 GETUPVAL                         R9 15
      130 GETTABLEKS                       R9 R9 K1 ["new"]
      132 MOVE                             R10 R1
      133 DUPTABLE                         R11 K28 [{["Summonable"] = True}]
      134 MOVE                             R12 R6
      135 CALL                             R9 3 1
      136 SETLIST                          R7 R8 2 [1]
      138 MOVE                             R2 R7
      139 DUPTABLE                         R7 K13 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
      140 SETTABLEKS                       R0 R7 K9 ["Mouse"]
      142 SETTABLEKS                       R1 R7 K10 ["DraggerContext"]
      144 GETUPVAL                         R8 10
      145 SETTABLEKS                       R8 R7 K11 ["DraggerSchema"]
      147 DUPTABLE                         R8 K29 [{["AnalyticsName"] = "HRDDragger", ["AllowDragSelect"] = False, ["AllowFreeformDrag"] = False, ["ShowLocalSpaceIndicator"] = True, ["ShowPivotIndicator"] = True, ["HandlesList"]}]
      148 SETTABLEKS                       R2 R8 K21 ["HandlesList"]
      150 SETTABLEKS                       R8 R7 K12 ["DraggerSettings"]
      152 RETURN                           R7 1

PROTO_4:
        0 GETUPVAL                         R7 0
        1 NAMECALL                         R7 R7 K0 ["use"]
        3 CALL                             R7 1 1
        4 NAMECALL                         R7 R7 K1 ["get"]
        6 CALL                             R7 1 1
        7 GETUPVAL                         R8 1
        8 GETTABLEKS                       R8 R8 K2 ["useRef"]
       10 LOADNIL                          R9
       11 CALL                             R8 1 1
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R9 R9 K2 ["useRef"]
       15 MOVE                             R10 R4
       16 CALL                             R9 1 1
       17 SETTABLEKS                       R4 R9 K3 ["current"]
       19 GETUPVAL                         R10 1
       20 GETTABLEKS                       R10 R10 K4 ["useMemo"]
       22 NEWCLOSURE                       R11 P0
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R6
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U2
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R7
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R9
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          VAL R8
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          UPVAL U6
       38 CAPTURE                          UPVAL U7
       39 NEWTABLE                         R12 0 7
       41 MOVE                             R13 R7
       42 MOVE                             R14 R0
       43 MOVE                             R15 R1
       44 MOVE                             R16 R2
       45 MOVE                             R17 R3
       46 MOVE                             R18 R5
       47 MOVE                             R19 R6
       48 SETLIST                          R12 R13 7 [1]
       50 CALL                             R10 2 -1
       51 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Flags"]
       20 GETTABLEKS                       R3 R3 K10 ["getFFlagAdaptiveAnimationHandRigQoL"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R0 K6 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["DraggerFramework"]
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R3 K12 ["Implementation"]
       31 GETTABLEKS                       R5 R5 K13 ["DraggerContext_PluginImpl"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R6 R0 K8 ["Src"]
       38 GETTABLEKS                       R6 R6 K14 ["Schemas"]
       40 GETTABLEKS                       R6 R6 K15 ["ToolSchema"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R7 R0 K8 ["Src"]
       47 GETTABLEKS                       R7 R7 K14 ["Schemas"]
       49 GETTABLEKS                       R7 R7 K15 ["ToolSchema"]
       51 GETTABLEKS                       R7 R7 K16 ["Selection"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R0 K6 ["Packages"]
       58 GETTABLEKS                       R8 R8 K17 ["Framework"]
       60 CALL                             R7 1 1
       61 GETTABLEKS                       R7 R7 K18 ["ContextServices"]
       63 GETTABLEKS                       R8 R7 K19 ["Plugin"]
       65 GETIMPORT                        R9 K5 [require]
       67 GETTABLEKS                       R10 R3 K20 ["Handles"]
       69 GETTABLEKS                       R10 R10 K21 ["MoveHandles"]
       71 CALL                             R9 1 1
       72 GETIMPORT                        R10 K5 [require]
       74 GETTABLEKS                       R11 R3 K20 ["Handles"]
       76 GETTABLEKS                       R11 R11 K22 ["RotateHandles"]
       78 CALL                             R10 1 1
       79 GETIMPORT                        R11 K5 [require]
       81 GETTABLEKS                       R12 R0 K8 ["Src"]
       83 GETTABLEKS                       R12 R12 K23 ["Types"]
       85 CALL                             R11 1 1
       86 DUPCLOSURE                       R12 K24 [PROTO_4]
       87 CAPTURE                          VAL R8
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R10
       95 RETURN                           R12 1
