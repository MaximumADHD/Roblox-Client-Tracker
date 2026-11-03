PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.RibbonTool.Move]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADK                            R1 K4 ["translate"]
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K6 [Enum.RibbonTool.Rotate]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 LOADK                            R1 K7 ["rotate"]
       11 RETURN                           R1 1
       12 LOADNIL                          R1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 SETUPVAL                         R1 0
        1 LENGTH                           R2 R1
        2 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 1
        2 GETUPVAL                         R2 1
        3 SETLIST                          R1 R2 1 [1]
        5 SETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R0 K0 ["SelectionChanged"]
        8 NAMECALL                         R1 R1 K1 ["Fire"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R2 0 1
        2 MOVE                             R3 R0
        3 SETLIST                          R2 R3 1 [1]
        5 NEWTABLE                         R3 1 1
        7 SETTABLEN                        R0 R3 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["new"]
       11 CALL                             R4 0 1
       12 SETTABLEKS                       R4 R3 K1 ["SelectionChanged"]
       14 NEWCLOSURE                       R4 P0
       15 CAPTURE                          REF R2
       16 SETTABLEKS                       R4 R3 K2 ["Get"]
       18 NEWCLOSURE                       R4 P1
       19 CAPTURE                          REF R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R4 R3 K3 ["Set"]
       23 NEWCLOSURE                       R4 P2
       24 CAPTURE                          REF R2
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R4 R3 K4 ["reselect"]
       28 CLOSEUPVALS                      R2
       29 RETURN                           R3 1

PROTO_5:
        0 DUPTABLE                         R3 K1 [{"_part"}]
        1 MOVE                             R4 R1
        2 JUMPIFNOT                        R4 ; [+1]
        3 GETTABLEN                        R4 R1 1
        4 SETTABLEKS                       R4 R3 K0 ["_part"]
        6 GETUPVAL                         R4 0
        7 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        9 GETIMPORT                        R2 K3 [setmetatable]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["_part"]
        2 JUMPIFEQKNIL                     R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_7:
        0 LOADB                            R1 1
        1 RETURN                           R1 1

PROTO_8:
        0 LOADB                            R1 0
        1 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 MOVE                             R2 R1
        3 FASTCALL                         VECTOR ; [+2]
        4 GETIMPORT                        R3 K2 [Vector3.new]
        6 CALL                             R3 0 1
        7 LOADK                            R4 K3 [{0.8, 0.8, 0.8}]
        8 RETURN                           R2 3

PROTO_10:
        0 NEWTABLE                         R1 8 0
        2 SETTABLEKS                       R1 R1 K0 ["__index"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R1 K1 ["new"]
        8 DUPCLOSURE                       R2 K2 [PROTO_6]
        9 SETTABLEKS                       R2 R1 K3 ["isEmpty"]
       11 DUPCLOSURE                       R2 K4 [PROTO_7]
       12 SETTABLEKS                       R2 R1 K5 ["isDynamic"]
       14 DUPCLOSURE                       R2 K6 [PROTO_8]
       15 SETTABLEKS                       R2 R1 K7 ["doesContainItem"]
       17 NEWCLOSURE                       R2 P4
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R1 K8 ["getBoundingBox"]
       21 RETURN                           R1 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_12:
        0 RETURN                           R0 0

PROTO_13:
        0 RETURN                           R0 0

PROTO_14:
        0 RETURN                           R0 0

PROTO_15:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 RETURN                           R0 1

PROTO_16:
        0 RETURN                           R0 0

PROTO_17:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_18:
        0 LOADK                            R0 K0 ["Ready"]
        1 RETURN                           R0 1

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 RETURN                           R0 0

PROTO_22:
        0 RETURN                           R0 0

PROTO_23:
        0 RETURN                           R0 0

PROTO_24:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_25:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_26:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_27:
        0 RETURN                           R0 0

PROTO_28:
        0 RETURN                           R0 0

PROTO_29:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 0
        4 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_33:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_34:
        0 NEWTABLE                         R4 4 0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R2
        4 SETTABLEKS                       R5 R4 K0 ["beginDrag"]
        6 NEWCLOSURE                       R5 P1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R5 R4 K1 ["updateDrag"]
       11 NEWCLOSURE                       R5 P2
       12 CAPTURE                          VAL R3
       13 SETTABLEKS                       R5 R4 K2 ["endDrag"]
       15 DUPCLOSURE                       R5 K3 [PROTO_33]
       16 SETTABLEKS                       R5 R4 K4 ["render"]
       18 RETURN                           R4 1

PROTO_35:
        0 RETURN                           R0 0

PROTO_36:
        0 RETURN                           R0 0

PROTO_37:
        0 RETURN                           R0 0

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FFlagAssistantAnimationGenCombinedDragger"]
        3 JUMPIFNOT                        R1 ; [+19]
        4 NEWTABLE                         R1 0 2
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K1 ["new"]
        9 GETUPVAL                         R3 2
       10 DUPTABLE                         R4 K6 [{["MustPositionAtPivot"] = False, ["Summonable"] = True}]
       11 GETUPVAL                         R5 3
       12 CALL                             R2 3 1
       13 GETUPVAL                         R3 4
       14 GETTABLEKS                       R3 R3 K1 ["new"]
       16 GETUPVAL                         R4 2
       17 DUPTABLE                         R5 K7 [{["Summonable"] = True}]
       18 GETUPVAL                         R6 5
       19 CALL                             R3 3 -1
       20 SETLIST                          R1 R2 -1 [1]
       22 RETURN                           R1 1
       23 JUMPIFNOTEQKS                    R0 K8 ["translate"] ; [+13]
       25 NEWTABLE                         R1 0 1
       27 GETUPVAL                         R2 1
       28 GETTABLEKS                       R2 R2 K1 ["new"]
       30 GETUPVAL                         R3 2
       31 DUPTABLE                         R4 K6 [{["MustPositionAtPivot"] = False, ["Summonable"] = True}]
       32 GETUPVAL                         R5 3
       33 CALL                             R2 3 -1
       34 SETLIST                          R1 R2 -1 [1]
       36 RETURN                           R1 1
       37 NEWTABLE                         R1 0 1
       39 GETUPVAL                         R2 4
       40 GETTABLEKS                       R2 R2 K1 ["new"]
       42 GETUPVAL                         R3 2
       43 DUPTABLE                         R4 K7 [{["Summonable"] = True}]
       44 GETUPVAL                         R5 5
       45 CALL                             R2 3 -1
       46 SETLIST                          R1 R2 -1 [1]
       48 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["createElement"]
        4 GETUPVAL                         R4 2
        5 DUPTABLE                         R5 K5 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
        6 GETUPVAL                         R6 3
        7 NAMECALL                         R6 R6 K6 ["GetMouse"]
        9 CALL                             R6 1 1
       10 SETTABLEKS                       R6 R5 K1 ["Mouse"]
       12 GETUPVAL                         R6 4
       13 SETTABLEKS                       R6 R5 K2 ["DraggerContext"]
       15 GETUPVAL                         R6 5
       16 SETTABLEKS                       R6 R5 K3 ["DraggerSchema"]
       18 DUPTABLE                         R6 K16 [{["AnalyticsName"] = "AnimationEditorPartDragger", ["AllowDragSelect"] = False, ["AllowFreeformDrag"] = False, ["ShowLocalSpaceIndicator"] = False, ["ShowPivotIndicator"] = True, ["HandlesList"]}]
       19 GETUPVAL                         R7 6
       20 MOVE                             R8 R0
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R7 R6 K15 ["HandlesList"]
       24 SETTABLEKS                       R6 R5 K4 ["DraggerSettings"]
       26 CALL                             R3 2 -1
       27 NAMECALL                         R1 R1 K17 ["render"]
       29 CALL                             R1 -1 0
       30 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOTEQ                      R0 R1 ; [+2]
        3 RETURN                           R0 0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["reselect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["Parent"]
        7 JUMPIFEQKNIL                     R0 ; [+5]
        9 GETUPVAL                         R0 1
       10 NAMECALL                         R0 R0 K2 ["Destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_43:
        0 GETIMPORT                        R7 K1 [script]
        2 LOADK                            R9 K2 ["Plugin"]
        3 NAMECALL                         R7 R7 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R7 2 1
        6 JUMPIF                           R7 ; [+15]
        7 GETIMPORT                        R8 K5 [warn]
        9 LOADK                            R9 K6 ["[AnimationEditor] createPartDragger: plugin not found"]
       10 CALL                             R8 1 0
       11 DUPTABLE                         R8 K10 [{"destroy", "setTool", "reselect"}]
       12 DUPCLOSURE                       R9 K11 [PROTO_35]
       13 SETTABLEKS                       R9 R8 K7 ["destroy"]
       15 DUPCLOSURE                       R9 K12 [PROTO_36]
       16 SETTABLEKS                       R9 R8 K8 ["setTool"]
       18 DUPCLOSURE                       R9 K13 [PROTO_37]
       19 SETTABLEKS                       R9 R8 K9 ["reselect"]
       21 RETURN                           R8 1
       22 GETUPVAL                         R8 0
       23 MOVE                             R9 R0
       24 MOVE                             R10 R5
       25 CALL                             R8 2 1
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K14 ["new"]
       29 MOVE                             R10 R7
       30 GETIMPORT                        R11 K16 [game]
       32 GETIMPORT                        R12 K18 [settings]
       34 CALL                             R12 0 1
       35 MOVE                             R13 R8
       36 CALL                             R9 4 1
       37 GETIMPORT                        R10 K21 [table.clone]
       39 GETUPVAL                         R11 2
       40 CALL                             R10 1 1
       41 GETUPVAL                         R11 3
       42 MOVE                             R12 R1
       43 CALL                             R11 1 1
       44 SETTABLEKS                       R11 R10 K22 ["SelectionInfo"]
       46 GETUPVAL                         R11 4
       47 LOADK                            R12 K23 ["translate"]
       48 MOVE                             R13 R2
       49 MOVE                             R14 R3
       50 MOVE                             R15 R4
       51 CALL                             R11 4 1
       52 GETUPVAL                         R12 4
       53 LOADK                            R13 K24 ["rotate"]
       54 MOVE                             R14 R2
       55 MOVE                             R15 R3
       56 MOVE                             R16 R4
       57 CALL                             R12 4 1
       58 NEWCLOSURE                       R13 P3
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R11
       63 CAPTURE                          UPVAL U7
       64 CAPTURE                          VAL R12
       65 GETIMPORT                        R14 K26 [Instance.new]
       67 LOADK                            R15 K27 ["Folder"]
       68 CALL                             R14 1 1
       69 LOADK                            R15 K28 ["AnimationEditorDraggerRoot"]
       70 SETTABLEKS                       R15 R14 K29 ["Name"]
       72 GETUPVAL                         R15 8
       73 SETTABLEKS                       R15 R14 K30 ["Parent"]
       75 GETUPVAL                         R15 9
       76 GETTABLEKS                       R15 R15 K31 ["createRoot"]
       78 MOVE                             R16 R14
       79 CALL                             R15 1 1
       80 NEWCLOSURE                       R16 P4
       81 CAPTURE                          VAL R15
       82 CAPTURE                          UPVAL U10
       83 CAPTURE                          UPVAL U11
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R13
       88 JUMPIFEQKNIL                     R6 ; [+3]
       90 MOVE                             R17 R6
       91 JUMP                             ; [+22]
       92 GETUPVAL                         R18 5
       93 GETTABLEKS                       R18 R18 K32 ["FFlagAssistantAnimationGenCombinedDragger"]
       95 JUMPIFNOT                        R18 ; [+2]
       96 LOADNIL                          R17
       97 JUMP                             ; [+16]
       98 NAMECALL                         R18 R7 K33 ["GetSelectedRibbonTool"]
      100 CALL                             R18 1 1
      101 GETIMPORT                        R19 K37 [Enum.RibbonTool.Move]
      103 JUMPIFNOTEQ                      R18 R19 ; [+3]
      105 LOADK                            R17 K23 ["translate"]
      106 JUMP                             ; [+7]
      107 GETIMPORT                        R19 K39 [Enum.RibbonTool.Rotate]
      109 JUMPIFNOTEQ                      R18 R19 ; [+3]
      111 LOADK                            R17 K24 ["rotate"]
      112 JUMP                             ; [+1]
      113 LOADNIL                          R17
      114 MOVE                             R18 R16
      115 MOVE                             R19 R17
      116 CALL                             R18 1 0
      117 DUPTABLE                         R18 K40 [{"setTool", "reselect", "destroy"}]
      118 NEWCLOSURE                       R19 P5
      119 CAPTURE                          REF R17
      120 CAPTURE                          VAL R16
      121 SETTABLEKS                       R19 R18 K8 ["setTool"]
      123 NEWCLOSURE                       R19 P6
      124 CAPTURE                          VAL R8
      125 SETTABLEKS                       R19 R18 K9 ["reselect"]
      127 NEWCLOSURE                       R19 P7
      128 CAPTURE                          VAL R15
      129 CAPTURE                          VAL R14
      130 SETTABLEKS                       R19 R18 K7 ["destroy"]
      132 CLOSEUPVALS                      R17
      133 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DraggerFramework"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R1 K12 ["Flags"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["React"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["ReactRoblox"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K10 [require]
       37 GETTABLEKS                       R8 R2 K15 ["Signal"]
       39 CALL                             R7 1 1
       40 GETTABLEKS                       R8 R3 K16 ["Implementation"]
       42 GETTABLEKS                       R8 R8 K17 ["DraggerContext_PluginImpl"]
       44 GETTABLEKS                       R9 R3 K18 ["DraggerTools"]
       46 GETTABLEKS                       R9 R9 K19 ["DraggerToolComponent"]
       48 GETTABLEKS                       R10 R3 K20 ["Handles"]
       50 GETTABLEKS                       R10 R10 K21 ["MoveHandles"]
       52 GETTABLEKS                       R11 R3 K20 ["Handles"]
       54 GETTABLEKS                       R11 R11 K22 ["RotateHandles"]
       56 DUPCLOSURE                       R12 K23 [PROTO_0]
       57 DUPCLOSURE                       R13 K24 [PROTO_4]
       58 CAPTURE                          VAL R7
       59 DUPCLOSURE                       R14 K25 [PROTO_10]
       60 NEWTABLE                         R15 8 0
       62 SETTABLEKS                       R15 R15 K26 ["__index"]
       64 DUPCLOSURE                       R16 K27 [PROTO_11]
       65 CAPTURE                          VAL R15
       66 SETTABLEKS                       R16 R15 K28 ["new"]
       68 DUPCLOSURE                       R16 K29 [PROTO_12]
       69 SETTABLEKS                       R16 R15 K30 ["install"]
       71 DUPCLOSURE                       R16 K31 [PROTO_13]
       72 SETTABLEKS                       R16 R15 K32 ["uninstall"]
       74 DUPCLOSURE                       R16 K33 [PROTO_14]
       75 SETTABLEKS                       R16 R15 K34 ["setSelection"]
       77 NEWTABLE                         R16 4 0
       79 SETTABLEKS                       R16 R16 K26 ["__index"]
       81 DUPCLOSURE                       R17 K35 [PROTO_15]
       82 CAPTURE                          VAL R16
       83 SETTABLEKS                       R17 R16 K28 ["new"]
       85 DUPCLOSURE                       R17 K36 [PROTO_16]
       86 SETTABLEKS                       R17 R16 K37 ["destroy"]
       88 DUPTABLE                         R17 K53 [{"getMouseTarget", "dispatchWorldClick", "setHover", "onExternalHover", "beginBoxSelect", "endBoxSelect", "updateBoxSelect", "isExclusiveSelectable", "getSelectionBoxComponent", "getSelectableWithCache", "setActivePoint", "addUndoWaypoint", "getNextSelectables", "BoundsChangedTracker", "HoverEscapeDetector"}]
       89 DUPCLOSURE                       R18 K54 [PROTO_17]
       90 SETTABLEKS                       R18 R17 K38 ["getMouseTarget"]
       92 DUPCLOSURE                       R18 K55 [PROTO_18]
       93 SETTABLEKS                       R18 R17 K39 ["dispatchWorldClick"]
       95 DUPCLOSURE                       R18 K56 [PROTO_19]
       96 SETTABLEKS                       R18 R17 K40 ["setHover"]
       98 DUPCLOSURE                       R18 K57 [PROTO_20]
       99 SETTABLEKS                       R18 R17 K41 ["onExternalHover"]
      101 DUPCLOSURE                       R18 K58 [PROTO_21]
      102 SETTABLEKS                       R18 R17 K42 ["beginBoxSelect"]
      104 DUPCLOSURE                       R18 K59 [PROTO_22]
      105 SETTABLEKS                       R18 R17 K43 ["endBoxSelect"]
      107 DUPCLOSURE                       R18 K60 [PROTO_23]
      108 SETTABLEKS                       R18 R17 K44 ["updateBoxSelect"]
      110 DUPCLOSURE                       R18 K61 [PROTO_24]
      111 SETTABLEKS                       R18 R17 K45 ["isExclusiveSelectable"]
      113 DUPCLOSURE                       R18 K62 [PROTO_25]
      114 SETTABLEKS                       R18 R17 K46 ["getSelectionBoxComponent"]
      116 DUPCLOSURE                       R18 K63 [PROTO_26]
      117 SETTABLEKS                       R18 R17 K47 ["getSelectableWithCache"]
      119 DUPCLOSURE                       R18 K64 [PROTO_27]
      120 SETTABLEKS                       R18 R17 K48 ["setActivePoint"]
      122 DUPCLOSURE                       R18 K65 [PROTO_28]
      123 SETTABLEKS                       R18 R17 K49 ["addUndoWaypoint"]
      125 DUPCLOSURE                       R18 K66 [PROTO_29]
      126 SETTABLEKS                       R18 R17 K50 ["getNextSelectables"]
      128 SETTABLEKS                       R15 R17 K51 ["BoundsChangedTracker"]
      130 SETTABLEKS                       R16 R17 K52 ["HoverEscapeDetector"]
      132 DUPCLOSURE                       R18 K67 [PROTO_34]
      133 DUPCLOSURE                       R19 K68 [PROTO_43]
      134 CAPTURE                          VAL R13
      135 CAPTURE                          VAL R8
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R18
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R10
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R0
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R9
      146 RETURN                           R19 1
