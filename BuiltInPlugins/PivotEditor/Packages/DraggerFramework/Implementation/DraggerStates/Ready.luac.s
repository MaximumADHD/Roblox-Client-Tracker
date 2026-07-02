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
       24 GETUPVAL                         R9 1
       25 CALL                             R9 0 1
       26 JUMPIFNOT                        R9 ; [+6]
       27 GETTABLEKS                       R8 R0 K1 ["_draggerToolModel"]
       29 NAMECALL                         R8 R8 K6 ["shouldShowPivotIndicator"]
       31 CALL                             R8 1 1
       32 JUMP                             ; [+1]
       33 LOADNIL                          R8
       34 CALL                             R2 6 1
       35 SETTABLEKS                       R2 R0 K7 ["_hoverTracker"]
       37 NAMECALL                         R2 R0 K8 ["_updateHoverTracker"]
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 1
       41 CALL                             R2 0 1
       42 JUMPIFNOT                        R2 ; [+13]
       43 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       45 GETTABLEKS                       R2 R2 K2 ["_draggerContext"]
       47 NAMECALL                         R2 R2 K9 ["isTabKeyDown"]
       49 CALL                             R2 1 1
       50 JUMPIF                           R2 ; [+5]
       51 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       53 NAMECALL                         R2 R2 K10 ["_endSummon"]
       55 CALL                             R2 1 0
       56 GETUPVAL                         R2 2
       57 CALL                             R2 0 1
       58 JUMPIFNOT                        R2 ; [+10]
       59 GETTABLEKS                       R2 R0 K11 ["_mustClickInWorldOnEnter"]
       61 JUMPIFNOT                        R2 ; [+7]
       62 LOADB                            R2 0
       63 SETTABLEKS                       R2 R0 K11 ["_mustClickInWorldOnEnter"]
       65 LOADB                            R4 0
       66 NAMECALL                         R2 R0 K12 ["_clickInWorld"]
       68 CALL                             R2 2 0
       69 RETURN                           R0 0

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
       11 NAMECALL                         R4 R2 K4 ["shouldExtendSelection"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R5 R2 K5 ["shouldShowHover"]
       16 CALL                             R5 1 1
       17 JUMPIFNOT                        R5 ; [+133]
       18 JUMPIFNOT                        R3 ; [+132]
       19 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
       21 NAMECALL                         R5 R5 K6 ["getSchema"]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R5 R5 K7 ["getSelectionBoxComponent"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+121]
       30 LOADNIL                          R6
       31 NAMECALL                         R7 R2 K8 ["shouldAnimateHover"]
       33 CALL                             R7 1 1
       34 JUMPIFNOT                        R7 ; [+4]
       35 NAMECALL                         R7 R2 K9 ["getHoverAnimationSpeedInSeconds"]
       37 CALL                             R7 1 1
       38 MOVE                             R6 R7
       39 LOADB                            R7 0
       40 NAMECALL                         R8 R2 K10 ["shouldShowActiveInstanceHighlight"]
       42 CALL                             R8 1 1
       43 JUMPIFNOT                        R8 ; [+12]
       44 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
       46 NAMECALL                         R8 R8 K11 ["getSelectionWrapper"]
       48 CALL                             R8 1 1
       49 NAMECALL                         R8 R8 K12 ["getActiveSelectable"]
       51 CALL                             R8 1 1
       52 JUMPIFEQ                         R3 R8 ; [+2]
       54 LOADB                            R7 0 +1
       55 LOADB                            R7 1
       56 GETUPVAL                         R8 0
       57 GETTABLEKS                       R8 R8 K13 ["createElement"]
       59 GETUPVAL                         R9 1
       60 DUPTABLE                         R10 K23 [{"SelectionBoxComponent", "HoverTarget", "SelectColor", "Thickness", "LineThickness", "HoverColor", "AnimatePeriod", "ShowHoverBox", "ShowOutline"}]
       61 SETTABLEKS                       R5 R10 K14 ["SelectionBoxComponent"]
       63 SETTABLEKS                       R3 R10 K15 ["HoverTarget"]
       65 MOVE                             R13 R7
       66 NAMECALL                         R11 R2 K24 ["getSelectionBoxColor"]
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K16 ["SelectColor"]
       71 NAMECALL                         R11 R2 K25 ["getHoverThickness"]
       73 CALL                             R11 1 1
       74 SETTABLEKS                       R11 R10 K17 ["Thickness"]
       76 NAMECALL                         R11 R2 K26 ["getHoverLineThickness"]
       78 CALL                             R11 1 1
       79 SETTABLEKS                       R11 R10 K18 ["LineThickness"]
       81 MOVE                             R13 R7
       82 NAMECALL                         R11 R2 K27 ["getHoverBoxColor"]
       84 CALL                             R11 2 1
       85 SETTABLEKS                       R11 R10 K19 ["HoverColor"]
       87 SETTABLEKS                       R6 R10 K20 ["AnimatePeriod"]
       89 NAMECALL                         R11 R2 K28 ["getShowBoundingBox"]
       91 CALL                             R11 1 1
       92 SETTABLEKS                       R11 R10 K21 ["ShowHoverBox"]
       94 NAMECALL                         R11 R2 K29 ["getShowOutline"]
       96 CALL                             R11 1 1
       97 SETTABLEKS                       R11 R10 K22 ["ShowOutline"]
       99 CALL                             R8 2 1
      100 SETTABLEKS                       R8 R1 K30 ["HoverBox"]
      102 GETUPVAL                         R8 2
      103 CALL                             R8 0 1
      104 JUMPIFNOT                        R8 ; [+46]
      105 GETTABLEKS                       R8 R0 K2 ["_hoverTracker"]
      107 NAMECALL                         R8 R8 K31 ["getHoverHandleId"]
      109 CALL                             R8 1 1
      110 JUMPIF                           R8 ; [+40]
      111 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
      113 NAMECALL                         R8 R8 K32 ["_isSummoned"]
      115 CALL                             R8 1 1
      116 JUMPIF                           R8 ; [+34]
      117 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
      119 NAMECALL                         R8 R8 K6 ["getSchema"]
      121 CALL                             R8 1 1
      122 GETTABLEKS                       R8 R8 K33 ["getHoverComponent"]
      124 JUMPIFNOT                        R8 ; [+26]
      125 MOVE                             R9 R8
      126 MOVE                             R10 R2
      127 MOVE                             R11 R3
      128 CALL                             R9 2 1
      129 JUMPIFNOT                        R9 ; [+21]
      130 GETUPVAL                         R10 0
      131 GETTABLEKS                       R10 R10 K13 ["createElement"]
      133 MOVE                             R11 R9
      134 DUPTABLE                         R12 K38 [{["DraggerContext"], ["HoverMetadata"], ["Pending"] = False}]
      135 GETTABLEKS                       R13 R0 K0 ["_draggerToolModel"]
      137 GETTABLEKS                       R13 R13 K1 ["_draggerContext"]
      139 SETTABLEKS                       R13 R12 K34 ["DraggerContext"]
      141 GETTABLEKS                       R13 R0 K2 ["_hoverTracker"]
      143 NAMECALL                         R13 R13 K39 ["getHoverMetadata"]
      145 CALL                             R13 1 1
      146 SETTABLEKS                       R13 R12 K35 ["HoverMetadata"]
      148 CALL                             R10 2 1
      149 SETTABLEKS                       R10 R1 K40 ["HoverDisplay"]
      151 JUMPIF                           R3 ; [+6]
      152 GETTABLEKS                       R5 R0 K2 ["_hoverTracker"]
      154 NAMECALL                         R5 R5 K31 ["getHoverHandleId"]
      156 CALL                             R5 1 1
      157 JUMPIFNOT                        R5 ; [+10]
      158 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      160 GETUPVAL                         R7 3
      161 GETTABLEKS                       R7 R7 K41 ["getOpenHand"]
      163 CALL                             R7 0 -1
      164 NAMECALL                         R5 R5 K42 ["setMouseCursor"]
      166 CALL                             R5 -1 0
      167 JUMP                             ; [+9]
      168 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      170 GETUPVAL                         R7 3
      171 GETTABLEKS                       R7 R7 K43 ["getArrow"]
      173 CALL                             R7 0 -1
      174 NAMECALL                         R5 R5 K42 ["setMouseCursor"]
      176 CALL                             R5 -1 0
      177 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      179 NAMECALL                         R5 R5 K44 ["shouldShowLocalSpaceIndicator"]
      181 CALL                             R5 1 1
      182 JUMPIFNOT                        R5 ; [+46]
      183 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      185 GETTABLEKS                       R5 R5 K45 ["_selectionInfo"]
      187 NAMECALL                         R6 R5 K46 ["isEmpty"]
      189 CALL                             R6 1 1
      190 JUMPIF                           R6 ; [+38]
      191 NAMECALL                         R6 R2 K47 ["shouldUseLocalSpace"]
      193 CALL                             R6 1 1
      194 JUMPIFNOT                        R6 ; [+34]
      195 NAMECALL                         R6 R5 K48 ["getBoundingBox"]
      197 CALL                             R6 1 3
      198 GETUPVAL                         R9 0
      199 GETTABLEKS                       R9 R9 K13 ["createElement"]
      201 GETUPVAL                         R10 4
      202 DUPTABLE                         R11 K52 [{"CFrame", "Size", "TextColor3", "DraggerContext"}]
      203 GETIMPORT                        R13 K54 [CFrame.new]
      205 MOVE                             R14 R7
      206 CALL                             R13 1 1
      207 MUL                              R12 R6 R13
      208 SETTABLEKS                       R12 R11 K49 ["CFrame"]
      210 SETTABLEKS                       R8 R11 K50 ["Size"]
      212 GETUPVAL                         R13 5
      213 CALL                             R13 0 1
      214 JUMPIFNOT                        R13 ; [+4]
      215 NAMECALL                         R12 R2 K55 ["getGridColor"]
      217 CALL                             R12 1 1
      218 JUMP                             ; [+3]
      219 NAMECALL                         R12 R2 K24 ["getSelectionBoxColor"]
      221 CALL                             R12 1 1
      222 SETTABLEKS                       R12 R11 K51 ["TextColor3"]
      224 SETTABLEKS                       R2 R11 K34 ["DraggerContext"]
      226 CALL                             R9 2 1
      227 SETTABLEKS                       R9 R1 K56 ["LocalSpaceIndicator"]
      229 GETTABLEKS                       R5 R0 K2 ["_hoverTracker"]
      231 NAMECALL                         R5 R5 K31 ["getHoverHandleId"]
      233 CALL                             R5 1 2
      234 GETIMPORT                        R7 K58 [pairs]
      236 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
      238 NAMECALL                         R8 R8 K59 ["getHandlesList"]
      240 CALL                             R8 1 -1
      241 CALL                             R7 -1 3
      242 FORGPREP_NEXT                    R7
      243 LOADK                            R13 K60 ["ImplementationUI"]
      244 MOVE                             R14 R10
      245 CONCAT                           R12 R13 R14
      246 JUMPIFNOTEQ                      R5 R11 ; [+3]
      248 MOVE                             R15 R6
      249 JUMPIF                           R15 ; [+1]
      250 LOADNIL                          R15
      251 NAMECALL                         R13 R11 K61 ["render"]
      253 CALL                             R13 2 1
      254 SETTABLE                         R13 R1 R12
      255 FORGLOOP                         R7 2 ; [-13]
      257 GETUPVAL                         R7 0
      258 GETTABLEKS                       R7 R7 K62 ["createFragment"]
      260 MOVE                             R8 R1
      261 CALL                             R7 1 -1
      262 RETURN                           R7 -1

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
        7 JUMP                             ; [+20]
        8 GETUPVAL                         R2 1
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+17]
       11 GETIMPORT                        R2 K4 [Enum.KeyCode.Tab]
       13 JUMPIFNOTEQ                      R1 R2 ; [+14]
       15 GETTABLEKS                       R2 R0 K5 ["_draggerToolModel"]
       17 NAMECALL                         R2 R2 K6 ["_beginSummon"]
       19 CALL                             R2 1 0
       20 NAMECALL                         R2 R0 K7 ["_updateHoverTracker"]
       22 CALL                             R2 1 0
       23 GETTABLEKS                       R2 R0 K5 ["_draggerToolModel"]
       25 NAMECALL                         R2 R2 K8 ["_scheduleRender"]
       27 CALL                             R2 1 0
       28 GETIMPORT                        R2 K10 [pairs]
       30 GETTABLEKS                       R3 R0 K5 ["_draggerToolModel"]
       32 NAMECALL                         R3 R3 K11 ["getHandlesList"]
       34 CALL                             R3 1 -1
       35 CALL                             R2 -1 3
       36 FORGPREP_NEXT                    R2
       37 GETTABLEKS                       R7 R6 K12 ["keyDown"]
       39 JUMPIFNOT                        R7 ; [+13]
       40 MOVE                             R9 R1
       41 NAMECALL                         R7 R6 K12 ["keyDown"]
       43 CALL                             R7 2 1
       44 JUMPIFNOT                        R7 ; [+8]
       45 NAMECALL                         R7 R0 K13 ["processViewChanged"]
       47 CALL                             R7 1 0
       48 GETTABLEKS                       R7 R0 K5 ["_draggerToolModel"]
       50 NAMECALL                         R7 R7 K8 ["_scheduleRender"]
       52 CALL                             R7 1 0
       53 FORGLOOP                         R2 2 ; [-17]
       55 RETURN                           R0 0

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
       26 JUMP                             ; [+20]
       27 GETUPVAL                         R2 1
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+17]
       30 GETIMPORT                        R2 K10 [Enum.KeyCode.Tab]
       32 JUMPIFNOTEQ                      R1 R2 ; [+14]
       34 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       36 NAMECALL                         R2 R2 K11 ["_endSummon"]
       38 CALL                             R2 1 0
       39 NAMECALL                         R2 R0 K12 ["_updateHoverTracker"]
       41 CALL                             R2 1 0
       42 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       44 NAMECALL                         R2 R2 K13 ["_scheduleRender"]
       46 CALL                             R2 1 0
       47 GETIMPORT                        R2 K15 [pairs]
       49 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       51 NAMECALL                         R3 R3 K16 ["getHandlesList"]
       53 CALL                             R3 1 -1
       54 CALL                             R2 -1 3
       55 FORGPREP_NEXT                    R2
       56 GETTABLEKS                       R7 R6 K17 ["keyUp"]
       58 JUMPIFNOT                        R7 ; [+13]
       59 MOVE                             R9 R1
       60 NAMECALL                         R7 R6 K17 ["keyUp"]
       62 CALL                             R7 2 1
       63 JUMPIFNOT                        R7 ; [+8]
       64 NAMECALL                         R7 R0 K18 ["processViewChanged"]
       66 CALL                             R7 1 0
       67 GETTABLEKS                       R7 R0 K1 ["_draggerToolModel"]
       69 NAMECALL                         R7 R7 K13 ["_scheduleRender"]
       71 CALL                             R7 1 0
       72 FORGLOOP                         R2 2 ; [-17]
       74 RETURN                           R0 0

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
       14 GETUPVAL                         R7 0
       15 CALL                             R7 0 1
       16 JUMPIFNOT                        R7 ; [+6]
       17 GETTABLEKS                       R6 R0 K2 ["_hoverTracker"]
       19 NAMECALL                         R6 R6 K5 ["getHoverMetadata"]
       21 CALL                             R6 1 1
       22 JUMP                             ; [+1]
       23 LOADNIL                          R6
       24 GETTABLEKS                       R7 R0 K0 ["_draggerToolModel"]
       26 NAMECALL                         R7 R7 K6 ["getSelectionWrapper"]
       28 CALL                             R7 1 1
       29 NAMECALL                         R7 R7 K7 ["get"]
       31 CALL                             R7 1 1
       32 GETIMPORT                        R9 K9 [ipairs]
       34 MOVE                             R10 R7
       35 CALL                             R9 1 3
       36 FORGPREP_INEXT                   R9
       37 JUMPIFNOTEQ                      R13 R5 ; [+3]
       39 LOADB                            R8 1
       40 JUMP                             ; [+3]
       41 FORGLOOP                         R9 2 [inext] ; [-5]
       43 LOADB                            R8 0
       44 NAMECALL                         R9 R2 K10 ["shouldExtendSelection"]
       46 CALL                             R9 1 1
       47 JUMPIFNOT                        R1 ; [+2]
       48 JUMPIFNOT                        R8 ; [+1]
       49 LOADB                            R9 0
       50 LOADB                            R10 0
       51 JUMPIFEQKNIL                     R5 ; [+12]
       53 GETTABLEKS                       R10 R0 K0 ["_draggerToolModel"]
       55 NAMECALL                         R10 R10 K11 ["getSchema"]
       57 CALL                             R10 1 1
       58 GETTABLEKS                       R10 R10 K12 ["isExclusiveSelectable"]
       60 MOVE                             R11 R2
       61 MOVE                             R12 R5
       62 MOVE                             R13 R3
       63 CALL                             R10 3 1
       64 GETUPVAL                         R11 1
       65 GETTABLEKS                       R11 R11 K13 ["updateSelection"]
       67 MOVE                             R12 R5
       68 MOVE                             R13 R7
       69 MOVE                             R14 R10
       70 MOVE                             R15 R9
       71 CALL                             R11 4 3
       72 JUMPIFNOT                        R11 ; [+38]
       73 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       75 NAMECALL                         R14 R14 K6 ["getSelectionWrapper"]
       77 CALL                             R14 1 1
       78 MOVE                             R16 R12
       79 MOVE                             R17 R13
       80 NAMECALL                         R14 R14 K14 ["set"]
       82 CALL                             R14 3 0
       83 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       85 NAMECALL                         R14 R14 K15 ["isSelected"]
       87 CALL                             R14 1 1
       88 JUMPIF                           R14 ; [+1]
       89 RETURN                           R0 0
       90 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       92 NAMECALL                         R14 R14 K16 ["_processSelectionChanged"]
       94 CALL                             R14 1 0
       95 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
       97 NAMECALL                         R14 R14 K11 ["getSchema"]
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R14 R14 K17 ["setActivePoint"]
      102 GETTABLEKS                       R15 R0 K0 ["_draggerToolModel"]
      104 GETTABLEKS                       R15 R15 K1 ["_draggerContext"]
      106 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      108 GETTABLEKS                       R16 R16 K18 ["_selectionInfo"]
      110 CALL                             R14 2 0
      111 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
      113 MOVE                             R16 R3
      114 MOVE                             R17 R11
      115 NAMECALL                         R14 R14 K19 ["_analyticsSendClick"]
      117 CALL                             R14 3 0
      118 GETIMPORT                        R14 K22 [table.freeze]
      120 DUPTABLE                         R15 K30 [{"DoubleClicked", "ClickedSelectable", "ClickedItem", "ClickedPosition", "ClickedMetadata", "SelectionDidContainSelectable", "SelectionNowContainsSelectable"}]
      121 SETTABLEKS                       R1 R15 K23 ["DoubleClicked"]
      123 SETTABLEKS                       R5 R15 K24 ["ClickedSelectable"]
      125 SETTABLEKS                       R3 R15 K25 ["ClickedItem"]
      127 SETTABLEKS                       R4 R15 K26 ["ClickedPosition"]
      129 SETTABLEKS                       R6 R15 K27 ["ClickedMetadata"]
      131 SETTABLEKS                       R8 R15 K28 ["SelectionDidContainSelectable"]
      133 GETIMPORT                        R17 K9 [ipairs]
      135 MOVE                             R18 R12
      136 CALL                             R17 1 3
      137 FORGPREP_INEXT                   R17
      138 JUMPIFNOTEQ                      R21 R5 ; [+3]
      140 LOADB                            R16 1
      141 JUMP                             ; [+3]
      142 FORGLOOP                         R17 2 [inext] ; [-5]
      144 LOADB                            R16 0
      145 SETTABLEKS                       R16 R15 K29 ["SelectionNowContainsSelectable"]
      147 CALL                             R14 1 1
      148 GETTABLEKS                       R15 R0 K0 ["_draggerToolModel"]
      150 NAMECALL                         R15 R15 K11 ["getSchema"]
      152 CALL                             R15 1 1
      153 GETTABLEKS                       R15 R15 K31 ["dispatchWorldClick"]
      155 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      157 GETTABLEKS                       R16 R16 K1 ["_draggerContext"]
      159 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      161 MOVE                             R18 R14
      162 CALL                             R15 3 2
      163 JUMPIFNOTEQKS                    R15 K32 ["Ready"] ; [+16]
      165 JUMPIFNOT                        R5 ; [+57]
      166 JUMPIFNOT                        R11 ; [+1]
      167 JUMPIFNOT                        R1 ; [+55]
      168 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      170 GETUPVAL                         R19 2
      171 GETTABLEKS                       R19 R19 K33 ["PendingSelectNext"]
      173 MOVE                             R20 R1
      174 MOVE                             R21 R14
      175 NAMECALL                         R17 R17 K34 ["transitionToState"]
      177 CALL                             R17 4 0
      178 RETURN                           R0 0
      179 RETURN                           R0 0
      180 JUMPIFNOTEQKS                    R15 K35 ["DragSelecting"] ; [+16]
      182 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      184 NAMECALL                         R17 R17 K36 ["doesAllowDragSelect"]
      186 CALL                             R17 1 1
      187 JUMPIFNOT                        R17 ; [+35]
      188 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      190 GETUPVAL                         R19 2
      191 GETTABLEKS                       R19 R19 K35 ["DragSelecting"]
      193 NAMECALL                         R17 R17 K34 ["transitionToState"]
      195 CALL                             R17 2 0
      196 RETURN                           R0 0
      197 JUMPIFNOTEQKS                    R15 K37 ["FreeformSelectionDrag"] ; [+13]
      199 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      201 GETUPVAL                         R19 2
      202 GETTABLEKS                       R19 R19 K38 ["PendingDraggingParts"]
      204 MOVE                             R20 R1
      205 MOVE                             R21 R16
      206 MOVE                             R22 R6
      207 NAMECALL                         R17 R17 K34 ["transitionToState"]
      209 CALL                             R17 5 0
      210 RETURN                           R0 0
      211 GETIMPORT                        R17 K40 [error]
      213 LOADK                            R19 K41 ["Bad state returned from dispatchWorldClick: `"]
      214 FASTCALL1                        TOSTRING R15 ; [+3]
      215 MOVE                             R23 R15
      216 GETIMPORT                        R22 K43 [tostring]
      218 CALL                             R22 1 1
      219 MOVE                             R20 R22
      220 LOADK                            R21 K44 ["`"]
      221 CONCAT                           R18 R19 R21
      222 CALL                             R17 1 0
      223 RETURN                           R0 0

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
       69 GETTABLEKS                       R11 R11 K17 ["getFFlagDraggerImprovements"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K4 [require]
       74 GETTABLEKS                       R12 R0 K15 ["Flags"]
       76 GETTABLEKS                       R12 R12 K18 ["getFFlagNextGenDraggers"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K20 [game]
       81 LOADK                            R14 K21 ["NewCameraControls_BetaUpdate"]
       82 NAMECALL                         R12 R12 K22 ["GetEngineFeature"]
       84 CALL                             R12 2 1
       85 NEWTABLE                         R13 16 0
       87 SETTABLEKS                       R13 R13 K23 ["__index"]
       89 DUPCLOSURE                       R14 K24 [PROTO_0]
       90 CAPTURE                          VAL R13
       91 SETTABLEKS                       R14 R13 K25 ["new"]
       93 DUPCLOSURE                       R14 K26 [PROTO_2]
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R14 R13 K27 ["enter"]
       99 DUPCLOSURE                       R14 K28 [PROTO_3]
      100 SETTABLEKS                       R14 R13 K29 ["leave"]
      102 DUPCLOSURE                       R14 K30 [PROTO_4]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R11
      109 SETTABLEKS                       R14 R13 K31 ["render"]
      111 DUPCLOSURE                       R14 K32 [PROTO_5]
      112 SETTABLEKS                       R14 R13 K33 ["processSelectionChanged"]
      114 DUPCLOSURE                       R14 K34 [PROTO_6]
      115 CAPTURE                          VAL R11
      116 CAPTURE                          VAL R3
      117 SETTABLEKS                       R14 R13 K35 ["processMouseDown"]
      119 DUPCLOSURE                       R14 K36 [PROTO_7]
      120 SETTABLEKS                       R14 R13 K37 ["processViewChanged"]
      122 DUPCLOSURE                       R14 K38 [PROTO_8]
      123 SETTABLEKS                       R14 R13 K39 ["processMouseUp"]
      125 DUPCLOSURE                       R14 K40 [PROTO_9]
      126 SETTABLEKS                       R14 R13 K41 ["processMouseEnter"]
      128 DUPCLOSURE                       R14 K42 [PROTO_10]
      129 SETTABLEKS                       R14 R13 K43 ["processMouseLeave"]
      131 DUPCLOSURE                       R14 K44 [PROTO_11]
      132 SETTABLEKS                       R14 R13 K45 ["_scopeSelectChanged"]
      134 DUPCLOSURE                       R14 K46 [PROTO_12]
      135 CAPTURE                          VAL R12
      136 DUPCLOSURE                       R15 K47 [PROTO_13]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R10
      139 SETTABLEKS                       R15 R13 K48 ["processKeyDown"]
      141 DUPCLOSURE                       R15 K49 [PROTO_14]
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R10
      144 SETTABLEKS                       R15 R13 K50 ["processKeyUp"]
      146 DUPCLOSURE                       R15 K51 [PROTO_15]
      147 CAPTURE                          VAL R9
      148 SETTABLEKS                       R15 R13 K52 ["_updateHoverTracker"]
      150 DUPCLOSURE                       R15 K53 [PROTO_16]
      151 DUPCLOSURE                       R16 K54 [PROTO_17]
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R6
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R16 R13 K55 ["_clickInWorld"]
      157 RETURN                           R13 1
