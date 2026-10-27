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
        1 RETURN                           R0 0

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
        0 NEWTABLE                         R1 0 1
        2 MOVE                             R2 R0
        3 SETLIST                          R1 R2 1 [1]
        5 NEWTABLE                         R2 1 1
        7 SETTABLEN                        R0 R2 1
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K0 ["new"]
       11 CALL                             R3 0 1
       12 SETTABLEKS                       R3 R2 K1 ["SelectionChanged"]
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          REF R1
       16 SETTABLEKS                       R3 R2 K2 ["Get"]
       18 NEWCLOSURE                       R3 P1
       19 CAPTURE                          REF R1
       20 SETTABLEKS                       R3 R2 K3 ["Set"]
       22 NEWCLOSURE                       R3 P2
       23 CAPTURE                          REF R1
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R2 K4 ["reselect"]
       27 CLOSEUPVALS                      R1
       28 RETURN                           R2 1

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
        0 JUMPIFNOTEQKS                    R0 K0 ["translate"] ; [+13]
        2 NEWTABLE                         R1 0 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["new"]
        7 GETUPVAL                         R3 1
        8 DUPTABLE                         R4 K6 [{["MustPositionAtPivot"] = False, ["Summonable"] = True}]
        9 GETUPVAL                         R5 2
       10 CALL                             R2 3 -1
       11 SETLIST                          R1 R2 -1 [1]
       13 RETURN                           R1 1
       14 NEWTABLE                         R1 0 1
       16 GETUPVAL                         R2 3
       17 GETTABLEKS                       R2 R2 K1 ["new"]
       19 GETUPVAL                         R3 1
       20 DUPTABLE                         R4 K7 [{["Summonable"] = True}]
       21 GETUPVAL                         R5 4
       22 CALL                             R2 3 -1
       23 SETLIST                          R1 R2 -1 [1]
       25 RETURN                           R1 1

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
        0 GETIMPORT                        R6 K1 [script]
        2 LOADK                            R8 K2 ["Plugin"]
        3 NAMECALL                         R6 R6 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R6 2 1
        6 JUMPIF                           R6 ; [+15]
        7 GETIMPORT                        R7 K5 [warn]
        9 LOADK                            R8 K6 ["[AnimationEditor] createPartDragger: plugin not found"]
       10 CALL                             R7 1 0
       11 DUPTABLE                         R7 K10 [{"destroy", "setTool", "reselect"}]
       12 DUPCLOSURE                       R8 K11 [PROTO_35]
       13 SETTABLEKS                       R8 R7 K7 ["destroy"]
       15 DUPCLOSURE                       R8 K12 [PROTO_36]
       16 SETTABLEKS                       R8 R7 K8 ["setTool"]
       18 DUPCLOSURE                       R8 K13 [PROTO_37]
       19 SETTABLEKS                       R8 R7 K9 ["reselect"]
       21 RETURN                           R7 1
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R0
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R8 R8 K14 ["new"]
       28 MOVE                             R9 R6
       29 GETIMPORT                        R10 K16 [game]
       31 GETIMPORT                        R11 K18 [settings]
       33 CALL                             R11 0 1
       34 MOVE                             R12 R7
       35 CALL                             R8 4 1
       36 GETIMPORT                        R9 K21 [table.clone]
       38 GETUPVAL                         R10 2
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 3
       41 MOVE                             R11 R1
       42 CALL                             R10 1 1
       43 SETTABLEKS                       R10 R9 K22 ["SelectionInfo"]
       45 GETUPVAL                         R10 4
       46 LOADK                            R11 K23 ["translate"]
       47 MOVE                             R12 R2
       48 MOVE                             R13 R3
       49 MOVE                             R14 R4
       50 CALL                             R10 4 1
       51 GETUPVAL                         R11 4
       52 LOADK                            R12 K24 ["rotate"]
       53 MOVE                             R13 R2
       54 MOVE                             R14 R3
       55 MOVE                             R15 R4
       56 CALL                             R11 4 1
       57 NEWCLOSURE                       R12 P3
       58 CAPTURE                          UPVAL U5
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R10
       61 CAPTURE                          UPVAL U6
       62 CAPTURE                          VAL R11
       63 GETIMPORT                        R13 K26 [Instance.new]
       65 LOADK                            R14 K27 ["Folder"]
       66 CALL                             R13 1 1
       67 LOADK                            R14 K28 ["AnimationEditorDraggerRoot"]
       68 SETTABLEKS                       R14 R13 K29 ["Name"]
       70 GETUPVAL                         R14 7
       71 SETTABLEKS                       R14 R13 K30 ["Parent"]
       73 GETUPVAL                         R14 8
       74 GETTABLEKS                       R14 R14 K31 ["createRoot"]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 1
       78 NEWCLOSURE                       R15 P4
       79 CAPTURE                          VAL R14
       80 CAPTURE                          UPVAL U9
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R8
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R12
       86 JUMPIFEQKNIL                     R5 ; [+3]
       88 MOVE                             R16 R5
       89 JUMP                             ; [+16]
       90 NAMECALL                         R17 R6 K32 ["GetSelectedRibbonTool"]
       92 CALL                             R17 1 1
       93 GETIMPORT                        R18 K36 [Enum.RibbonTool.Move]
       95 JUMPIFNOTEQ                      R17 R18 ; [+3]
       97 LOADK                            R16 K23 ["translate"]
       98 JUMP                             ; [+7]
       99 GETIMPORT                        R18 K38 [Enum.RibbonTool.Rotate]
      101 JUMPIFNOTEQ                      R17 R18 ; [+3]
      103 LOADK                            R16 K24 ["rotate"]
      104 JUMP                             ; [+1]
      105 LOADNIL                          R16
      106 MOVE                             R17 R15
      107 MOVE                             R18 R16
      108 CALL                             R17 1 0
      109 DUPTABLE                         R17 K39 [{"setTool", "reselect", "destroy"}]
      110 NEWCLOSURE                       R18 P5
      111 CAPTURE                          REF R16
      112 CAPTURE                          VAL R15
      113 SETTABLEKS                       R18 R17 K8 ["setTool"]
      115 NEWCLOSURE                       R18 P6
      116 CAPTURE                          VAL R7
      117 SETTABLEKS                       R18 R17 K9 ["reselect"]
      119 NEWCLOSURE                       R18 P7
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R13
      122 SETTABLEKS                       R18 R17 K7 ["destroy"]
      124 CLOSEUPVALS                      R16
      125 RETURN                           R17 1

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
       22 GETTABLEKS                       R5 R2 K12 ["React"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K10 [require]
       27 GETTABLEKS                       R6 R2 K13 ["ReactRoblox"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K10 [require]
       32 GETTABLEKS                       R7 R2 K14 ["Signal"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R3 K15 ["Implementation"]
       37 GETTABLEKS                       R7 R7 K16 ["DraggerContext_PluginImpl"]
       39 GETTABLEKS                       R8 R3 K17 ["DraggerTools"]
       41 GETTABLEKS                       R8 R8 K18 ["DraggerToolComponent"]
       43 GETTABLEKS                       R9 R3 K19 ["Handles"]
       45 GETTABLEKS                       R9 R9 K20 ["MoveHandles"]
       47 GETTABLEKS                       R10 R3 K19 ["Handles"]
       49 GETTABLEKS                       R10 R10 K21 ["RotateHandles"]
       51 DUPCLOSURE                       R11 K22 [PROTO_0]
       52 DUPCLOSURE                       R12 K23 [PROTO_4]
       53 CAPTURE                          VAL R6
       54 DUPCLOSURE                       R13 K24 [PROTO_10]
       55 NEWTABLE                         R14 8 0
       57 SETTABLEKS                       R14 R14 K25 ["__index"]
       59 DUPCLOSURE                       R15 K26 [PROTO_11]
       60 CAPTURE                          VAL R14
       61 SETTABLEKS                       R15 R14 K27 ["new"]
       63 DUPCLOSURE                       R15 K28 [PROTO_12]
       64 SETTABLEKS                       R15 R14 K29 ["install"]
       66 DUPCLOSURE                       R15 K30 [PROTO_13]
       67 SETTABLEKS                       R15 R14 K31 ["uninstall"]
       69 DUPCLOSURE                       R15 K32 [PROTO_14]
       70 SETTABLEKS                       R15 R14 K33 ["setSelection"]
       72 NEWTABLE                         R15 4 0
       74 SETTABLEKS                       R15 R15 K25 ["__index"]
       76 DUPCLOSURE                       R16 K34 [PROTO_15]
       77 CAPTURE                          VAL R15
       78 SETTABLEKS                       R16 R15 K27 ["new"]
       80 DUPCLOSURE                       R16 K35 [PROTO_16]
       81 SETTABLEKS                       R16 R15 K36 ["destroy"]
       83 DUPTABLE                         R16 K52 [{"getMouseTarget", "dispatchWorldClick", "setHover", "onExternalHover", "beginBoxSelect", "endBoxSelect", "updateBoxSelect", "isExclusiveSelectable", "getSelectionBoxComponent", "getSelectableWithCache", "setActivePoint", "addUndoWaypoint", "getNextSelectables", "BoundsChangedTracker", "HoverEscapeDetector"}]
       84 DUPCLOSURE                       R17 K53 [PROTO_17]
       85 SETTABLEKS                       R17 R16 K37 ["getMouseTarget"]
       87 DUPCLOSURE                       R17 K54 [PROTO_18]
       88 SETTABLEKS                       R17 R16 K38 ["dispatchWorldClick"]
       90 DUPCLOSURE                       R17 K55 [PROTO_19]
       91 SETTABLEKS                       R17 R16 K39 ["setHover"]
       93 DUPCLOSURE                       R17 K56 [PROTO_20]
       94 SETTABLEKS                       R17 R16 K40 ["onExternalHover"]
       96 DUPCLOSURE                       R17 K57 [PROTO_21]
       97 SETTABLEKS                       R17 R16 K41 ["beginBoxSelect"]
       99 DUPCLOSURE                       R17 K58 [PROTO_22]
      100 SETTABLEKS                       R17 R16 K42 ["endBoxSelect"]
      102 DUPCLOSURE                       R17 K59 [PROTO_23]
      103 SETTABLEKS                       R17 R16 K43 ["updateBoxSelect"]
      105 DUPCLOSURE                       R17 K60 [PROTO_24]
      106 SETTABLEKS                       R17 R16 K44 ["isExclusiveSelectable"]
      108 DUPCLOSURE                       R17 K61 [PROTO_25]
      109 SETTABLEKS                       R17 R16 K45 ["getSelectionBoxComponent"]
      111 DUPCLOSURE                       R17 K62 [PROTO_26]
      112 SETTABLEKS                       R17 R16 K46 ["getSelectableWithCache"]
      114 DUPCLOSURE                       R17 K63 [PROTO_27]
      115 SETTABLEKS                       R17 R16 K47 ["setActivePoint"]
      117 DUPCLOSURE                       R17 K64 [PROTO_28]
      118 SETTABLEKS                       R17 R16 K48 ["addUndoWaypoint"]
      120 DUPCLOSURE                       R17 K65 [PROTO_29]
      121 SETTABLEKS                       R17 R16 K49 ["getNextSelectables"]
      123 SETTABLEKS                       R14 R16 K50 ["BoundsChangedTracker"]
      125 SETTABLEKS                       R15 R16 K51 ["HoverEscapeDetector"]
      127 DUPCLOSURE                       R17 K66 [PROTO_34]
      128 DUPCLOSURE                       R18 K67 [PROTO_43]
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R7
      131 CAPTURE                          VAL R16
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R8
      140 RETURN                           R18 1
