PROTO_0:
        0 DUPTABLE                         R3 K2 [{"_draggerToolModel", "_mustClickInWorldOnEnter"}]
        1 SETTABLEKS                       R0 R3 K0 ["_draggerToolModel"]
        3 SETTABLEKS                       R1 R3 K1 ["_mustClickInWorldOnEnter"]
        5 GETUPVAL                         R4 0
        6 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        8 GETIMPORT                        R2 K4 [setmetatable]
       10 CALL                             R2 2 1
       11 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processViewChanged"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["new"]
        5 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R3 K2 ["_draggerContext"]
        9 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
       11 NAMECALL                         R4 R4 K3 ["getSchema"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
       16 NAMECALL                         R5 R5 K4 ["getHandlesList"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R6 R0 K1 ["_draggerToolModel"]
       21 GETTABLEKS                       R6 R6 K5 ["_selectionCycleCache"]
       23 MOVE                             R7 R1
       24 GETTABLEKS                       R8 R0 K1 ["_draggerToolModel"]
       26 NAMECALL                         R8 R8 K6 ["shouldShowPivotIndicator"]
       28 CALL                             R8 1 -1
       29 CALL                             R2 -1 1
       30 SETTABLEKS                       R2 R0 K7 ["_hoverTracker"]
       32 NAMECALL                         R2 R0 K8 ["_updateHoverTracker"]
       34 CALL                             R2 1 0
       35 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       37 GETTABLEKS                       R2 R2 K2 ["_draggerContext"]
       39 NAMECALL                         R2 R2 K9 ["isTabKeyDown"]
       41 CALL                             R2 1 1
       42 JUMPIF                           R2 ; [+5]
       43 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       45 NAMECALL                         R2 R2 K10 ["_endSummon"]
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 1
       49 CALL                             R2 0 1
       50 JUMPIFNOT                        R2 ; [+10]
       51 GETTABLEKS                       R2 R0 K11 ["_mustClickInWorldOnEnter"]
       53 JUMPIFNOT                        R2 ; [+7]
       54 LOADB                            R2 0
       55 SETTABLEKS                       R2 R0 K11 ["_mustClickInWorldOnEnter"]
       57 LOADB                            R4 0
       58 NAMECALL                         R2 R0 K12 ["_clickInWorld"]
       60 CALL                             R2 2 0
       61 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R3 K2 ["_draggerContext"]
        6 NAMECALL                         R1 R1 K3 ["clearHover"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
       11 NAMECALL                         R1 R1 K4 ["destroy"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 4 0
        2 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        4 GETTABLEKS                       R2 R2 K1 ["_draggerContext"]
        6 GETTABLEKS                       R3 R0 K2 ["_hoverTracker"]
        8 NAMECALL                         R3 R3 K3 ["getHoverSelectable"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R2 K4 ["shouldShowHover"]
       13 CALL                             R4 1 1
       14 JUMPIFNOT                        R4 ; [+130]
       15 JUMPIFNOT                        R3 ; [+129]
       16 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
       18 NAMECALL                         R4 R4 K5 ["getSchema"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R4 R4 K6 ["getSelectionBoxComponent"]
       23 MOVE                             R5 R2
       24 MOVE                             R6 R3
       25 CALL                             R4 2 1
       26 JUMPIFNOT                        R4 ; [+118]
       27 LOADNIL                          R5
       28 NAMECALL                         R6 R2 K7 ["shouldAnimateHover"]
       30 CALL                             R6 1 1
       31 JUMPIFNOT                        R6 ; [+4]
       32 NAMECALL                         R6 R2 K8 ["getHoverAnimationSpeedInSeconds"]
       34 CALL                             R6 1 1
       35 MOVE                             R5 R6
       36 LOADB                            R6 0
       37 NAMECALL                         R7 R2 K9 ["shouldShowActiveInstanceHighlight"]
       39 CALL                             R7 1 1
       40 JUMPIFNOT                        R7 ; [+12]
       41 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       43 NAMECALL                         R7 R7 K10 ["getSelectionWrapper"]
       45 CALL                             R7 1 1
       46 NAMECALL                         R7 R7 K11 ["getActiveSelectable"]
       48 CALL                             R7 1 1
       49 JUMPIFEQ                         R3 R7 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K12 ["createElement"]
       56 GETUPVAL                         R8 1
       57 DUPTABLE                         R9 K22 [{"SelectionBoxComponent", "HoverTarget", "SelectColor", "Thickness", "LineThickness", "HoverColor", "AnimatePeriod", "ShowHoverBox", "ShowOutline"}]
       58 SETTABLEKS                       R4 R9 K13 ["SelectionBoxComponent"]
       60 SETTABLEKS                       R3 R9 K14 ["HoverTarget"]
       62 MOVE                             R12 R6
       63 NAMECALL                         R10 R2 K23 ["getSelectionBoxColor"]
       65 CALL                             R10 2 1
       66 SETTABLEKS                       R10 R9 K15 ["SelectColor"]
       68 NAMECALL                         R10 R2 K24 ["getHoverThickness"]
       70 CALL                             R10 1 1
       71 SETTABLEKS                       R10 R9 K16 ["Thickness"]
       73 NAMECALL                         R10 R2 K25 ["getHoverLineThickness"]
       75 CALL                             R10 1 1
       76 SETTABLEKS                       R10 R9 K17 ["LineThickness"]
       78 MOVE                             R12 R6
       79 NAMECALL                         R10 R2 K26 ["getHoverBoxColor"]
       81 CALL                             R10 2 1
       82 SETTABLEKS                       R10 R9 K18 ["HoverColor"]
       84 SETTABLEKS                       R5 R9 K19 ["AnimatePeriod"]
       86 NAMECALL                         R10 R2 K27 ["getShowBoundingBox"]
       88 CALL                             R10 1 1
       89 SETTABLEKS                       R10 R9 K20 ["ShowHoverBox"]
       91 NAMECALL                         R10 R2 K28 ["getShowOutline"]
       93 CALL                             R10 1 1
       94 SETTABLEKS                       R10 R9 K21 ["ShowOutline"]
       96 CALL                             R7 2 1
       97 SETTABLEKS                       R7 R1 K29 ["HoverBox"]
       99 GETTABLEKS                       R7 R0 K2 ["_hoverTracker"]
      101 NAMECALL                         R7 R7 K30 ["getHoverHandleId"]
      103 CALL                             R7 1 1
      104 JUMPIF                           R7 ; [+40]
      105 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
      107 NAMECALL                         R7 R7 K31 ["_isSummoned"]
      109 CALL                             R7 1 1
      110 JUMPIF                           R7 ; [+34]
      111 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
      113 NAMECALL                         R7 R7 K5 ["getSchema"]
      115 CALL                             R7 1 1
      116 GETTABLEKS                       R7 R7 K32 ["getHoverComponent"]
      118 JUMPIFNOT                        R7 ; [+26]
      119 MOVE                             R8 R7
      120 MOVE                             R9 R2
      121 MOVE                             R10 R3
      122 CALL                             R8 2 1
      123 JUMPIFNOT                        R8 ; [+21]
      124 GETUPVAL                         R9 0
      125 GETTABLEKS                       R9 R9 K12 ["createElement"]
      127 MOVE                             R10 R8
      128 DUPTABLE                         R11 K37 [{["DraggerContext"], ["HoverMetadata"], ["Pending"] = False}]
      129 GETTABLEKS                       R12 R0 K0 ["_draggerToolModel"]
      131 GETTABLEKS                       R12 R12 K1 ["_draggerContext"]
      133 SETTABLEKS                       R12 R11 K33 ["DraggerContext"]
      135 GETTABLEKS                       R12 R0 K2 ["_hoverTracker"]
      137 NAMECALL                         R12 R12 K38 ["getHoverMetadata"]
      139 CALL                             R12 1 1
      140 SETTABLEKS                       R12 R11 K34 ["HoverMetadata"]
      142 CALL                             R9 2 1
      143 SETTABLEKS                       R9 R1 K39 ["HoverDisplay"]
      145 JUMPIF                           R3 ; [+6]
      146 GETTABLEKS                       R4 R0 K2 ["_hoverTracker"]
      148 NAMECALL                         R4 R4 K30 ["getHoverHandleId"]
      150 CALL                             R4 1 1
      151 JUMPIFNOT                        R4 ; [+10]
      152 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
      154 GETUPVAL                         R6 2
      155 GETTABLEKS                       R6 R6 K40 ["getOpenHand"]
      157 CALL                             R6 0 -1
      158 NAMECALL                         R4 R4 K41 ["setMouseCursor"]
      160 CALL                             R4 -1 0
      161 JUMP                             ; [+9]
      162 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
      164 GETUPVAL                         R6 2
      165 GETTABLEKS                       R6 R6 K42 ["getArrow"]
      167 CALL                             R6 0 -1
      168 NAMECALL                         R4 R4 K41 ["setMouseCursor"]
      170 CALL                             R4 -1 0
      171 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
      173 NAMECALL                         R4 R4 K43 ["shouldShowLocalSpaceIndicator"]
      175 CALL                             R4 1 1
      176 JUMPIFNOT                        R4 ; [+46]
      177 GETTABLEKS                       R4 R0 K0 ["_draggerToolModel"]
      179 GETTABLEKS                       R4 R4 K44 ["_selectionInfo"]
      181 NAMECALL                         R5 R4 K45 ["isEmpty"]
      183 CALL                             R5 1 1
      184 JUMPIF                           R5 ; [+38]
      185 NAMECALL                         R5 R2 K46 ["shouldUseLocalSpace"]
      187 CALL                             R5 1 1
      188 JUMPIFNOT                        R5 ; [+34]
      189 NAMECALL                         R5 R4 K47 ["getBoundingBox"]
      191 CALL                             R5 1 3
      192 GETUPVAL                         R8 0
      193 GETTABLEKS                       R8 R8 K12 ["createElement"]
      195 GETUPVAL                         R9 3
      196 DUPTABLE                         R10 K51 [{"CFrame", "Size", "TextColor3", "DraggerContext"}]
      197 GETIMPORT                        R12 K53 [CFrame.new]
      199 MOVE                             R13 R6
      200 CALL                             R12 1 1
      201 MUL                              R11 R5 R12
      202 SETTABLEKS                       R11 R10 K48 ["CFrame"]
      204 SETTABLEKS                       R7 R10 K49 ["Size"]
      206 GETUPVAL                         R12 4
      207 CALL                             R12 0 1
      208 JUMPIFNOT                        R12 ; [+4]
      209 NAMECALL                         R11 R2 K54 ["getGridColor"]
      211 CALL                             R11 1 1
      212 JUMP                             ; [+3]
      213 NAMECALL                         R11 R2 K23 ["getSelectionBoxColor"]
      215 CALL                             R11 1 1
      216 SETTABLEKS                       R11 R10 K50 ["TextColor3"]
      218 SETTABLEKS                       R2 R10 K33 ["DraggerContext"]
      220 CALL                             R8 2 1
      221 SETTABLEKS                       R8 R1 K55 ["LocalSpaceIndicator"]
      223 GETTABLEKS                       R4 R0 K2 ["_hoverTracker"]
      225 NAMECALL                         R4 R4 K30 ["getHoverHandleId"]
      227 CALL                             R4 1 2
      228 GETIMPORT                        R6 K57 [pairs]
      230 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
      232 NAMECALL                         R7 R7 K58 ["getHandlesList"]
      234 CALL                             R7 1 -1
      235 CALL                             R6 -1 3
      236 FORGPREP_NEXT                    R6
      237 LOADK                            R12 K59 ["ImplementationUI"]
      238 MOVE                             R13 R9
      239 CONCAT                           R11 R12 R13
      240 JUMPIFNOTEQ                      R4 R10 ; [+3]
      242 MOVE                             R14 R5
      243 JUMPIF                           R14 ; [+1]
      244 LOADNIL                          R14
      245 NAMECALL                         R12 R10 K60 ["render"]
      247 CALL                             R12 2 1
      248 SETTABLE                         R12 R1 R11
      249 FORGLOOP                         R6 2 ; [-13]
      251 GETUPVAL                         R6 0
      252 GETTABLEKS                       R6 R6 K61 ["createFragment"]
      254 MOVE                             R7 R1
      255 CALL                             R6 1 -1
      256 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 NAMECALL                         R1 R0 K1 ["_updateHoverTracker"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["_updateHoverTracker"]
        2 CALL                             R2 1 0
        3 GETTABLEKS                       R2 R0 K1 ["_hoverTracker"]
        5 NAMECALL                         R2 R2 K2 ["getHoverHandleId"]
        7 CALL                             R2 1 2
        8 JUMPIFNOT                        R3 ; [+27]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+13]
       12 JUMPIFNOTEQKS                    R3 K3 ["Trackball"] ; [+12]
       14 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R6 R6 K5 ["PendingDraggingHandle"]
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 NAMECALL                         R4 R4 K6 ["transitionToState"]
       23 CALL                             R4 4 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R4 R0 K4 ["_draggerToolModel"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K7 ["DraggingHandle"]
       30 MOVE                             R7 R2
       31 MOVE                             R8 R3
       32 NAMECALL                         R4 R4 K6 ["transitionToState"]
       34 CALL                             R4 4 0
       35 RETURN                           R0 0
       36 MOVE                             R6 R1
       37 NAMECALL                         R4 R0 K8 ["_clickInWorld"]
       39 CALL                             R4 2 0
       40 RETURN                           R0 0

PROTO_7:
        0 NAMECALL                         R1 R0 K0 ["_updateHoverTracker"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 LOADB                            R3 1
        3 NAMECALL                         R1 R1 K1 ["setMouseInBounds"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R3 K2 ["_draggerContext"]
        6 NAMECALL                         R1 R1 K3 ["clearHover"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
       11 LOADB                            R3 0
       12 NAMECALL                         R1 R1 K4 ["setMouseInBounds"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K1 ["_draggerToolModel"]
       17 NAMECALL                         R1 R1 K5 ["_scheduleRender"]
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_11:
        0 NAMECALL                         R1 R0 K0 ["_updateHoverTracker"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["_draggerToolModel"]
        5 NAMECALL                         R1 R1 K2 ["_scheduleRender"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+22]
        2 LOADB                            R1 1
        3 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        5 JUMPIFEQ                         R0 R2 ; [+17]
        7 LOADB                            R1 1
        8 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
       10 JUMPIFEQ                         R0 R2 ; [+12]
       12 LOADB                            R1 1
       13 GETIMPORT                        R2 K7 [Enum.KeyCode.LeftControl]
       15 JUMPIFEQ                         R0 R2 ; [+7]
       17 GETIMPORT                        R2 K9 [Enum.KeyCode.RightControl]
       19 JUMPIFEQ                         R0 R2 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1
       24 LOADB                            R1 1
       25 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
       27 JUMPIFEQ                         R0 R2 ; [+7]
       29 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
       31 JUMPIFEQ                         R0 R2 ; [+2]
       33 LOADB                            R1 0 +1
       34 LOADB                            R1 1
       35 RETURN                           R1 1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+4]
        4 NAMECALL                         R2 R0 K0 ["_scopeSelectChanged"]
        6 CALL                             R2 1 0
        7 JUMP                             ; [+17]
        8 GETIMPORT                        R2 K4 [Enum.KeyCode.Tab]
       10 JUMPIFNOTEQ                      R1 R2 ; [+14]
       12 GETTABLEKS                       R2 R0 K5 ["_draggerToolModel"]
       14 NAMECALL                         R2 R2 K6 ["_beginSummon"]
       16 CALL                             R2 1 0
       17 NAMECALL                         R2 R0 K7 ["_updateHoverTracker"]
       19 CALL                             R2 1 0
       20 GETTABLEKS                       R2 R0 K5 ["_draggerToolModel"]
       22 NAMECALL                         R2 R2 K8 ["_scheduleRender"]
       24 CALL                             R2 1 0
       25 GETIMPORT                        R2 K10 [pairs]
       27 GETTABLEKS                       R3 R0 K5 ["_draggerToolModel"]
       29 NAMECALL                         R3 R3 K11 ["getHandlesList"]
       31 CALL                             R3 1 -1
       32 CALL                             R2 -1 3
       33 FORGPREP_NEXT                    R2
       34 GETTABLEKS                       R7 R6 K12 ["keyDown"]
       36 JUMPIFNOT                        R7 ; [+13]
       37 MOVE                             R9 R1
       38 NAMECALL                         R7 R6 K12 ["keyDown"]
       40 CALL                             R7 2 1
       41 JUMPIFNOT                        R7 ; [+8]
       42 NAMECALL                         R7 R0 K13 ["processViewChanged"]
       44 CALL                             R7 1 0
       45 GETTABLEKS                       R7 R0 K5 ["_draggerToolModel"]
       47 NAMECALL                         R7 R7 K8 ["_scheduleRender"]
       49 CALL                             R7 1 0
       50 FORGLOOP                         R2 2 ; [-17]
       52 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+23]
        4 NAMECALL                         R2 R0 K0 ["_scopeSelectChanged"]
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
        9 GETTABLEKS                       R2 R2 K2 ["_selectionCycleCache"]
       11 GETTABLEKS                       R3 R2 K3 ["_analyticsNumberOfClicks"]
       13 NAMECALL                         R4 R2 K4 ["size"]
       15 CALL                             R4 1 1
       16 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
       18 MOVE                             R7 R3
       19 MOVE                             R8 R4
       20 NAMECALL                         R5 R5 K5 ["_analyticsSendSelectionCycle"]
       22 CALL                             R5 3 0
       23 NAMECALL                         R5 R2 K6 ["computeSelectionCycleCandidates"]
       25 CALL                             R5 1 0
       26 JUMP                             ; [+17]
       27 GETIMPORT                        R2 K10 [Enum.KeyCode.Tab]
       29 JUMPIFNOTEQ                      R1 R2 ; [+14]
       31 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       33 NAMECALL                         R2 R2 K11 ["_endSummon"]
       35 CALL                             R2 1 0
       36 NAMECALL                         R2 R0 K12 ["_updateHoverTracker"]
       38 CALL                             R2 1 0
       39 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       41 NAMECALL                         R2 R2 K13 ["_scheduleRender"]
       43 CALL                             R2 1 0
       44 GETIMPORT                        R2 K15 [pairs]
       46 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       48 NAMECALL                         R3 R3 K16 ["getHandlesList"]
       50 CALL                             R3 1 -1
       51 CALL                             R2 -1 3
       52 FORGPREP_NEXT                    R2
       53 GETTABLEKS                       R7 R6 K17 ["keyUp"]
       55 JUMPIFNOT                        R7 ; [+13]
       56 MOVE                             R9 R1
       57 NAMECALL                         R7 R6 K17 ["keyUp"]
       59 CALL                             R7 2 1
       60 JUMPIFNOT                        R7 ; [+8]
       61 NAMECALL                         R7 R0 K18 ["processViewChanged"]
       63 CALL                             R7 1 0
       64 GETTABLEKS                       R7 R0 K1 ["_draggerToolModel"]
       66 NAMECALL                         R7 R7 K13 ["_scheduleRender"]
       68 CALL                             R7 1 0
       69 FORGLOOP                         R2 2 ; [-17]
       71 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R3 K2 ["_draggerContext"]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        8 NAMECALL                         R4 R4 K3 ["getSelectionWrapper"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R4 R4 K4 ["get"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
       16 GETTABLEKS                       R5 R5 K5 ["_selectionInfo"]
       18 GETUPVAL                         R7 0
       19 CALL                             R7 0 1
       20 JUMPIFNOT                        R7 ; [+6]
       21 GETTABLEKS                       R6 R0 K1 ["_draggerToolModel"]
       23 NAMECALL                         R6 R6 K6 ["getHandlesList"]
       25 CALL                             R6 1 1
       26 JUMP                             ; [+1]
       27 LOADNIL                          R6
       28 NAMECALL                         R1 R1 K7 ["update"]
       30 CALL                             R1 5 0
       31 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 JUMPIFNOTEQ                      R6 R1 ; [+3]
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 [inext] ; [-5]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R2 K1 ["_draggerContext"]
        4 GETTABLEKS                       R3 R0 K2 ["_hoverTracker"]
        6 NAMECALL                         R3 R3 K3 ["getHoverItem"]
        8 CALL                             R3 1 2
        9 GETTABLEKS                       R5 R0 K2 ["_hoverTracker"]
       11 NAMECALL                         R5 R5 K4 ["getHoverSelectable"]
       13 CALL                             R5 1 1
       14 GETTABLEKS                       R6 R0 K2 ["_hoverTracker"]
       16 NAMECALL                         R6 R6 K5 ["getHoverMetadata"]
       18 CALL                             R6 1 1
       19 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       21 NAMECALL                         R7 R7 K6 ["getSelectionWrapper"]
       23 CALL                             R7 1 1
       24 NAMECALL                         R7 R7 K7 ["get"]
       26 CALL                             R7 1 1
       27 GETIMPORT                        R9 K9 [ipairs]
       29 MOVE                             R10 R7
       30 CALL                             R9 1 3
       31 FORGPREP_INEXT                   R9
       32 JUMPIFNOTEQ                      R13 R5 ; [+3]
       34 LOADB                            R8 1
       35 JUMP                             ; [+3]
       36 FORGLOOP                         R9 2 [inext] ; [-5]
       38 LOADB                            R8 0
       39 NAMECALL                         R9 R2 K10 ["shouldExtendSelection"]
       41 CALL                             R9 1 1
       42 JUMPIFNOT                        R1 ; [+2]
       43 JUMPIFNOT                        R8 ; [+1]
       44 LOADB                            R9 0
       45 LOADB                            R10 0
       46 JUMPIFEQKNIL                     R5 ; [+12]
       48 GETTABLEKS                       R10 R0 K0 ["_draggerToolModel"]
       50 NAMECALL                         R10 R10 K11 ["getSchema"]
       52 CALL                             R10 1 1
       53 GETTABLEKS                       R10 R10 K12 ["isExclusiveSelectable"]
       55 MOVE                             R11 R2
       56 MOVE                             R12 R5
       57 MOVE                             R13 R3
       58 CALL                             R10 3 1
       59 GETUPVAL                         R11 0
       60 GETTABLEKS                       R11 R11 K13 ["updateSelection"]
       62 MOVE                             R12 R5
       63 MOVE                             R13 R7
       64 MOVE                             R14 R10
       65 MOVE                             R15 R9
       66 CALL                             R11 4 3
       67 JUMPIFNOT                        R11 ; [+38]
       68 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       70 NAMECALL                         R14 R14 K6 ["getSelectionWrapper"]
       72 CALL                             R14 1 1
       73 MOVE                             R16 R12
       74 MOVE                             R17 R13
       75 NAMECALL                         R14 R14 K14 ["set"]
       77 CALL                             R14 3 0
       78 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       80 NAMECALL                         R14 R14 K15 ["isSelected"]
       82 CALL                             R14 1 1
       83 JUMPIF                           R14 ; [+1]
       84 RETURN                           R0 0
       85 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       87 NAMECALL                         R14 R14 K16 ["_processSelectionChanged"]
       89 CALL                             R14 1 0
       90 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       92 NAMECALL                         R14 R14 K11 ["getSchema"]
       94 CALL                             R14 1 1
       95 GETTABLEKS                       R14 R14 K17 ["setActivePoint"]
       97 GETTABLEKS                       R15 R0 K0 ["_draggerToolModel"]
       99 GETTABLEKS                       R15 R15 K1 ["_draggerContext"]
      101 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      103 GETTABLEKS                       R16 R16 K18 ["_selectionInfo"]
      105 CALL                             R14 2 0
      106 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
      108 MOVE                             R16 R3
      109 MOVE                             R17 R11
      110 NAMECALL                         R14 R14 K19 ["_analyticsSendClick"]
      112 CALL                             R14 3 0
      113 GETIMPORT                        R14 K22 [table.freeze]
      115 DUPTABLE                         R15 K30 [{"DoubleClicked", "ClickedSelectable", "ClickedItem", "ClickedPosition", "ClickedMetadata", "SelectionDidContainSelectable", "SelectionNowContainsSelectable"}]
      116 SETTABLEKS                       R1 R15 K23 ["DoubleClicked"]
      118 SETTABLEKS                       R5 R15 K24 ["ClickedSelectable"]
      120 SETTABLEKS                       R3 R15 K25 ["ClickedItem"]
      122 SETTABLEKS                       R4 R15 K26 ["ClickedPosition"]
      124 SETTABLEKS                       R6 R15 K27 ["ClickedMetadata"]
      126 SETTABLEKS                       R8 R15 K28 ["SelectionDidContainSelectable"]
      128 GETIMPORT                        R17 K9 [ipairs]
      130 MOVE                             R18 R12
      131 CALL                             R17 1 3
      132 FORGPREP_INEXT                   R17
      133 JUMPIFNOTEQ                      R21 R5 ; [+3]
      135 LOADB                            R16 1
      136 JUMP                             ; [+3]
      137 FORGLOOP                         R17 2 [inext] ; [-5]
      139 LOADB                            R16 0
      140 SETTABLEKS                       R16 R15 K29 ["SelectionNowContainsSelectable"]
      142 CALL                             R14 1 1
      143 GETTABLEKS                       R15 R0 K0 ["_draggerToolModel"]
      145 NAMECALL                         R15 R15 K11 ["getSchema"]
      147 CALL                             R15 1 1
      148 GETTABLEKS                       R15 R15 K31 ["dispatchWorldClick"]
      150 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      152 GETTABLEKS                       R16 R16 K1 ["_draggerContext"]
      154 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      156 MOVE                             R18 R14
      157 CALL                             R15 3 2
      158 JUMPIFNOTEQKS                    R15 K32 ["Ready"] ; [+16]
      160 JUMPIFNOT                        R5 ; [+57]
      161 JUMPIFNOT                        R11 ; [+1]
      162 JUMPIFNOT                        R1 ; [+55]
      163 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      165 GETUPVAL                         R19 1
      166 GETTABLEKS                       R19 R19 K33 ["PendingSelectNext"]
      168 MOVE                             R20 R1
      169 MOVE                             R21 R14
      170 NAMECALL                         R17 R17 K34 ["transitionToState"]
      172 CALL                             R17 4 0
      173 RETURN                           R0 0
      174 RETURN                           R0 0
      175 JUMPIFNOTEQKS                    R15 K35 ["DragSelecting"] ; [+16]
      177 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      179 NAMECALL                         R17 R17 K36 ["doesAllowDragSelect"]
      181 CALL                             R17 1 1
      182 JUMPIFNOT                        R17 ; [+35]
      183 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      185 GETUPVAL                         R19 1
      186 GETTABLEKS                       R19 R19 K35 ["DragSelecting"]
      188 NAMECALL                         R17 R17 K34 ["transitionToState"]
      190 CALL                             R17 2 0
      191 RETURN                           R0 0
      192 JUMPIFNOTEQKS                    R15 K37 ["FreeformSelectionDrag"] ; [+13]
      194 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      196 GETUPVAL                         R19 1
      197 GETTABLEKS                       R19 R19 K38 ["PendingDraggingParts"]
      199 MOVE                             R20 R1
      200 MOVE                             R21 R16
      201 MOVE                             R22 R6
      202 NAMECALL                         R17 R17 K34 ["transitionToState"]
      204 CALL                             R17 5 0
      205 RETURN                           R0 0
      206 GETIMPORT                        R17 K40 [error]
      208 LOADK                            R19 K41 ["Bad state returned from dispatchWorldClick: `"]
      209 FASTCALL1                        TOSTRING R15 ; [+3]
      210 MOVE                             R23 R15
      211 GETIMPORT                        R22 K43 [tostring]
      213 CALL                             R22 1 1
      214 MOVE                             R20 R22
      215 LOADK                            R21 K44 ["`"]
      216 CONCAT                           R18 R19 R21
      217 CALL                             R17 1 0
      218 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Implementation"]
       20 GETTABLEKS                       R4 R4 K7 ["DraggerStateType"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R5 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R5 K9 ["AnimatedHoverBox"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K10 ["LocalSpaceIndicator"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R7 R0 K11 ["Utility"]
       41 GETTABLEKS                       R7 R7 K12 ["SelectionHelper"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R8 R0 K6 ["Implementation"]
       48 GETTABLEKS                       R8 R8 K13 ["HoverTracker"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K4 [require]
       53 GETTABLEKS                       R9 R0 K11 ["Utility"]
       55 GETTABLEKS                       R9 R9 K14 ["StandardCursor"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K4 [require]
       60 GETTABLEKS                       R10 R0 K15 ["Flags"]
       62 GETTABLEKS                       R10 R10 K16 ["getFFlagDraggerHandlesIsEnabledFunction"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K4 [require]
       67 GETTABLEKS                       R11 R0 K15 ["Flags"]
       69 GETTABLEKS                       R11 R11 K17 ["getFFlagNextGenDraggers"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K19 [game]
       74 LOADK                            R13 K20 ["NewCameraControls_BetaUpdate"]
       75 NAMECALL                         R11 R11 K21 ["GetEngineFeature"]
       77 CALL                             R11 2 1
       78 NEWTABLE                         R12 16 0
       80 SETTABLEKS                       R12 R12 K22 ["__index"]
       82 DUPCLOSURE                       R13 K23 [PROTO_0]
       83 CAPTURE                          VAL R12
       84 SETTABLEKS                       R13 R12 K24 ["new"]
       86 DUPCLOSURE                       R13 K25 [PROTO_2]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R10
       89 SETTABLEKS                       R13 R12 K26 ["enter"]
       91 DUPCLOSURE                       R13 K27 [PROTO_3]
       92 SETTABLEKS                       R13 R12 K28 ["leave"]
       94 DUPCLOSURE                       R13 K29 [PROTO_4]
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R10
      100 SETTABLEKS                       R13 R12 K30 ["render"]
      102 DUPCLOSURE                       R13 K31 [PROTO_5]
      103 SETTABLEKS                       R13 R12 K32 ["processSelectionChanged"]
      105 DUPCLOSURE                       R13 K33 [PROTO_6]
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R13 R12 K34 ["processMouseDown"]
      110 DUPCLOSURE                       R13 K35 [PROTO_7]
      111 SETTABLEKS                       R13 R12 K36 ["processViewChanged"]
      113 DUPCLOSURE                       R13 K37 [PROTO_8]
      114 SETTABLEKS                       R13 R12 K38 ["processMouseUp"]
      116 DUPCLOSURE                       R13 K39 [PROTO_9]
      117 SETTABLEKS                       R13 R12 K40 ["processMouseEnter"]
      119 DUPCLOSURE                       R13 K41 [PROTO_10]
      120 SETTABLEKS                       R13 R12 K42 ["processMouseLeave"]
      122 DUPCLOSURE                       R13 K43 [PROTO_11]
      123 SETTABLEKS                       R13 R12 K44 ["_scopeSelectChanged"]
      125 DUPCLOSURE                       R13 K45 [PROTO_12]
      126 CAPTURE                          VAL R11
      127 DUPCLOSURE                       R14 K46 [PROTO_13]
      128 CAPTURE                          VAL R13
      129 SETTABLEKS                       R14 R12 K47 ["processKeyDown"]
      131 DUPCLOSURE                       R14 K48 [PROTO_14]
      132 CAPTURE                          VAL R13
      133 SETTABLEKS                       R14 R12 K49 ["processKeyUp"]
      135 DUPCLOSURE                       R14 K50 [PROTO_15]
      136 CAPTURE                          VAL R9
      137 SETTABLEKS                       R14 R12 K51 ["_updateHoverTracker"]
      139 DUPCLOSURE                       R14 K52 [PROTO_16]
      140 DUPCLOSURE                       R15 K53 [PROTO_17]
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R3
      143 SETTABLEKS                       R15 R12 K54 ["_clickInWorld"]
      145 RETURN                           R12 1
