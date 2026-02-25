PROTO_0:
        0 DUPTABLE                         R2 K1 [{"_draggerToolModel"}]
        1 SETTABLEKS                       R0 R2 K0 ["_draggerToolModel"]
        3 GETUPVAL                         R3 0
        4 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        6 GETIMPORT                        R1 K3 [setmetatable]
        8 CALL                             R1 2 1
        9 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_draggerToolModel"]
        3 NAMECALL                         R0 R0 K1 ["_processViewChanged"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["new"]
        5 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        7 GETTABLEKS                       R3 R4 K2 ["_draggerContext"]
        9 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
       11 NAMECALL                         R4 R4 K3 ["getSchema"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R5 R0 K1 ["_draggerToolModel"]
       16 NAMECALL                         R5 R5 K4 ["getHandlesList"]
       18 CALL                             R5 1 1
       19 GETTABLEKS                       R7 R0 K1 ["_draggerToolModel"]
       21 GETTABLEKS                       R6 R7 K5 ["_selectionCycleCache"]
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
       43 GETTABLEKS                       R3 R0 K1 ["_draggerToolModel"]
       45 GETTABLEKS                       R2 R3 K2 ["_draggerContext"]
       47 NAMECALL                         R2 R2 K9 ["isTabKeyDown"]
       49 CALL                             R2 1 1
       50 JUMPIF                           R2 ; [+5]
       51 GETTABLEKS                       R2 R0 K1 ["_draggerToolModel"]
       53 NAMECALL                         R2 R2 K10 ["_endSummon"]
       55 CALL                             R2 1 0
       56 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R4 K2 ["_draggerContext"]
        6 NAMECALL                         R1 R1 K3 ["clearHover"]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
       11 NAMECALL                         R1 R1 K4 ["destroy"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 NEWTABLE                         R1 4 0
        2 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        4 GETTABLEKS                       R2 R3 K1 ["_draggerContext"]
        6 GETTABLEKS                       R3 R0 K2 ["_hoverTracker"]
        8 NAMECALL                         R3 R3 K3 ["getHoverSelectable"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R4 R2 K4 ["shouldExtendSelection"]
       13 CALL                             R4 1 1
       14 NAMECALL                         R5 R2 K5 ["shouldShowHover"]
       16 CALL                             R5 1 1
       17 JUMPIFNOT                        R5 ; [+136]
       18 JUMPIFNOT                        R3 ; [+135]
       19 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
       21 NAMECALL                         R6 R6 K6 ["getSchema"]
       23 CALL                             R6 1 1
       24 GETTABLEKS                       R5 R6 K7 ["getSelectionBoxComponent"]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 CALL                             R5 2 1
       29 JUMPIFNOT                        R5 ; [+124]
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
       56 GETUPVAL                         R9 0
       57 GETTABLEKS                       R8 R9 K13 ["createElement"]
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
      104 JUMPIFNOT                        R8 ; [+49]
      105 GETTABLEKS                       R8 R0 K2 ["_hoverTracker"]
      107 NAMECALL                         R8 R8 K31 ["getHoverHandleId"]
      109 CALL                             R8 1 1
      110 JUMPIF                           R8 ; [+43]
      111 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
      113 NAMECALL                         R8 R8 K32 ["_isSummoned"]
      115 CALL                             R8 1 1
      116 JUMPIF                           R8 ; [+37]
      117 GETTABLEKS                       R9 R0 K0 ["_draggerToolModel"]
      119 NAMECALL                         R9 R9 K6 ["getSchema"]
      121 CALL                             R9 1 1
      122 GETTABLEKS                       R8 R9 K33 ["getHoverComponent"]
      124 JUMPIFNOT                        R8 ; [+29]
      125 MOVE                             R9 R8
      126 MOVE                             R10 R2
      127 MOVE                             R11 R3
      128 CALL                             R9 2 1
      129 JUMPIFNOT                        R9 ; [+24]
      130 GETUPVAL                         R11 0
      131 GETTABLEKS                       R10 R11 K13 ["createElement"]
      133 MOVE                             R11 R9
      134 DUPTABLE                         R12 K37 [{"DraggerContext", "HoverMetadata", "Pending"}]
      135 GETTABLEKS                       R14 R0 K0 ["_draggerToolModel"]
      137 GETTABLEKS                       R13 R14 K1 ["_draggerContext"]
      139 SETTABLEKS                       R13 R12 K34 ["DraggerContext"]
      141 GETTABLEKS                       R13 R0 K2 ["_hoverTracker"]
      143 NAMECALL                         R13 R13 K38 ["getHoverMetadata"]
      145 CALL                             R13 1 1
      146 SETTABLEKS                       R13 R12 K35 ["HoverMetadata"]
      148 LOADB                            R13 0
      149 SETTABLEKS                       R13 R12 K36 ["Pending"]
      151 CALL                             R10 2 1
      152 SETTABLEKS                       R10 R1 K39 ["HoverDisplay"]
      154 JUMPIF                           R3 ; [+6]
      155 GETTABLEKS                       R5 R0 K2 ["_hoverTracker"]
      157 NAMECALL                         R5 R5 K31 ["getHoverHandleId"]
      159 CALL                             R5 1 1
      160 JUMPIFNOT                        R5 ; [+10]
      161 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      163 GETUPVAL                         R8 3
      164 GETTABLEKS                       R7 R8 K40 ["getOpenHand"]
      166 CALL                             R7 0 -1
      167 NAMECALL                         R5 R5 K41 ["setMouseCursor"]
      169 CALL                             R5 -1 0
      170 JUMP                             ; [+9]
      171 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      173 GETUPVAL                         R8 3
      174 GETTABLEKS                       R7 R8 K42 ["getArrow"]
      176 CALL                             R7 0 -1
      177 NAMECALL                         R5 R5 K41 ["setMouseCursor"]
      179 CALL                             R5 -1 0
      180 GETTABLEKS                       R5 R0 K0 ["_draggerToolModel"]
      182 NAMECALL                         R5 R5 K43 ["shouldShowLocalSpaceIndicator"]
      184 CALL                             R5 1 1
      185 JUMPIFNOT                        R5 ; [+39]
      186 GETTABLEKS                       R6 R0 K0 ["_draggerToolModel"]
      188 GETTABLEKS                       R5 R6 K44 ["_selectionInfo"]
      190 NAMECALL                         R6 R5 K45 ["isEmpty"]
      192 CALL                             R6 1 1
      193 JUMPIF                           R6 ; [+31]
      194 NAMECALL                         R6 R2 K46 ["shouldUseLocalSpace"]
      196 CALL                             R6 1 1
      197 JUMPIFNOT                        R6 ; [+27]
      198 NAMECALL                         R6 R5 K47 ["getBoundingBox"]
      200 CALL                             R6 1 3
      201 GETUPVAL                         R10 0
      202 GETTABLEKS                       R9 R10 K13 ["createElement"]
      204 GETUPVAL                         R10 4
      205 DUPTABLE                         R11 K51 [{"CFrame", "Size", "TextColor3", "DraggerContext"}]
      206 GETIMPORT                        R13 K53 [CFrame.new]
      208 MOVE                             R14 R7
      209 CALL                             R13 1 1
      210 MUL                              R12 R6 R13
      211 SETTABLEKS                       R12 R11 K48 ["CFrame"]
      213 SETTABLEKS                       R8 R11 K49 ["Size"]
      215 NAMECALL                         R12 R2 K24 ["getSelectionBoxColor"]
      217 CALL                             R12 1 1
      218 SETTABLEKS                       R12 R11 K50 ["TextColor3"]
      220 SETTABLEKS                       R2 R11 K34 ["DraggerContext"]
      222 CALL                             R9 2 1
      223 SETTABLEKS                       R9 R1 K54 ["LocalSpaceIndicator"]
      225 GETTABLEKS                       R5 R0 K2 ["_hoverTracker"]
      227 NAMECALL                         R5 R5 K31 ["getHoverHandleId"]
      229 CALL                             R5 1 2
      230 GETIMPORT                        R7 K56 [pairs]
      232 GETTABLEKS                       R8 R0 K0 ["_draggerToolModel"]
      234 NAMECALL                         R8 R8 K57 ["getHandlesList"]
      236 CALL                             R8 1 -1
      237 CALL                             R7 -1 3
      238 FORGPREP_NEXT                    R7
      239 LOADK                            R13 K58 ["ImplementationUI"]
      240 MOVE                             R14 R10
      241 CONCAT                           R12 R13 R14
      242 JUMPIFNOTEQ                      R5 R11 ; [+3]
      244 MOVE                             R15 R6
      245 JUMPIF                           R15 ; [+1]
      246 LOADNIL                          R15
      247 NAMECALL                         R13 R11 K59 ["render"]
      249 CALL                             R13 2 1
      250 SETTABLE                         R13 R1 R12
      251 FORGLOOP                         R7 2 ; [-13]
      253 GETUPVAL                         R8 0
      254 GETTABLEKS                       R7 R8 K60 ["createFragment"]
      256 MOVE                             R8 R1
      257 CALL                             R7 1 -1
      258 RETURN                           R7 -1

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
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETTABLEKS                       R4 R0 K3 ["_draggerToolModel"]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R6 R7 K4 ["DraggingHandle"]
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 NAMECALL                         R4 R4 K5 ["transitionToState"]
       18 CALL                             R4 4 0
       19 RETURN                           R0 0
       20 MOVE                             R6 R1
       21 NAMECALL                         R4 R0 K6 ["_clickInWorld"]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

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
        2 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R4 K2 ["_draggerContext"]
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
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        2 JUMPIFEQ                         R1 R2 ; [+5]
        4 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
        6 JUMPIFNOTEQ                      R1 R2 ; [+5]
        8 NAMECALL                         R2 R0 K6 ["_scopeSelectChanged"]
       10 CALL                             R2 1 0
       11 JUMP                             ; [+20]
       12 GETUPVAL                         R2 0
       13 CALL                             R2 0 1
       14 JUMPIFNOT                        R2 ; [+17]
       15 GETIMPORT                        R2 K8 [Enum.KeyCode.Tab]
       17 JUMPIFNOTEQ                      R1 R2 ; [+14]
       19 GETTABLEKS                       R2 R0 K9 ["_draggerToolModel"]
       21 NAMECALL                         R2 R2 K10 ["_beginSummon"]
       23 CALL                             R2 1 0
       24 NAMECALL                         R2 R0 K11 ["_updateHoverTracker"]
       26 CALL                             R2 1 0
       27 GETTABLEKS                       R2 R0 K9 ["_draggerToolModel"]
       29 NAMECALL                         R2 R2 K12 ["_scheduleRender"]
       31 CALL                             R2 1 0
       32 GETIMPORT                        R2 K14 [pairs]
       34 GETTABLEKS                       R3 R0 K9 ["_draggerToolModel"]
       36 NAMECALL                         R3 R3 K15 ["getHandlesList"]
       38 CALL                             R3 1 -1
       39 CALL                             R2 -1 3
       40 FORGPREP_NEXT                    R2
       41 GETTABLEKS                       R7 R6 K16 ["keyDown"]
       43 JUMPIFNOT                        R7 ; [+13]
       44 MOVE                             R9 R1
       45 NAMECALL                         R7 R6 K16 ["keyDown"]
       47 CALL                             R7 2 1
       48 JUMPIFNOT                        R7 ; [+8]
       49 NAMECALL                         R7 R0 K17 ["processViewChanged"]
       51 CALL                             R7 1 0
       52 GETTABLEKS                       R7 R0 K9 ["_draggerToolModel"]
       54 NAMECALL                         R7 R7 K12 ["_scheduleRender"]
       56 CALL                             R7 1 0
       57 FORGLOOP                         R2 2 ; [-17]
       59 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftAlt]
        2 JUMPIFEQ                         R1 R2 ; [+5]
        4 GETIMPORT                        R2 K5 [Enum.KeyCode.RightAlt]
        6 JUMPIFNOTEQ                      R1 R2 ; [+24]
        8 NAMECALL                         R2 R0 K6 ["_scopeSelectChanged"]
       10 CALL                             R2 1 0
       11 GETTABLEKS                       R3 R0 K7 ["_draggerToolModel"]
       13 GETTABLEKS                       R2 R3 K8 ["_selectionCycleCache"]
       15 GETTABLEKS                       R3 R2 K9 ["_analyticsNumberOfClicks"]
       17 NAMECALL                         R4 R2 K10 ["size"]
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R5 R0 K7 ["_draggerToolModel"]
       22 MOVE                             R7 R3
       23 MOVE                             R8 R4
       24 NAMECALL                         R5 R5 K11 ["_analyticsSendSelectionCycle"]
       26 CALL                             R5 3 0
       27 NAMECALL                         R5 R2 K12 ["computeSelectionCycleCandidates"]
       29 CALL                             R5 1 0
       30 JUMP                             ; [+20]
       31 GETUPVAL                         R2 0
       32 CALL                             R2 0 1
       33 JUMPIFNOT                        R2 ; [+17]
       34 GETIMPORT                        R2 K14 [Enum.KeyCode.Tab]
       36 JUMPIFNOTEQ                      R1 R2 ; [+14]
       38 GETTABLEKS                       R2 R0 K7 ["_draggerToolModel"]
       40 NAMECALL                         R2 R2 K15 ["_endSummon"]
       42 CALL                             R2 1 0
       43 NAMECALL                         R2 R0 K16 ["_updateHoverTracker"]
       45 CALL                             R2 1 0
       46 GETTABLEKS                       R2 R0 K7 ["_draggerToolModel"]
       48 NAMECALL                         R2 R2 K17 ["_scheduleRender"]
       50 CALL                             R2 1 0
       51 GETIMPORT                        R2 K19 [pairs]
       53 GETTABLEKS                       R3 R0 K7 ["_draggerToolModel"]
       55 NAMECALL                         R3 R3 K20 ["getHandlesList"]
       57 CALL                             R3 1 -1
       58 CALL                             R2 -1 3
       59 FORGPREP_NEXT                    R2
       60 GETTABLEKS                       R7 R6 K21 ["keyUp"]
       62 JUMPIFNOT                        R7 ; [+13]
       63 MOVE                             R9 R1
       64 NAMECALL                         R7 R6 K21 ["keyUp"]
       66 CALL                             R7 2 1
       67 JUMPIFNOT                        R7 ; [+8]
       68 NAMECALL                         R7 R0 K22 ["processViewChanged"]
       70 CALL                             R7 1 0
       71 GETTABLEKS                       R7 R0 K7 ["_draggerToolModel"]
       73 NAMECALL                         R7 R7 K17 ["_scheduleRender"]
       75 CALL                             R7 1 0
       76 FORGLOOP                         R2 2 ; [-17]
       78 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["_hoverTracker"]
        2 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        4 GETTABLEKS                       R3 R4 K2 ["_draggerContext"]
        6 GETTABLEKS                       R4 R0 K1 ["_draggerToolModel"]
        8 NAMECALL                         R4 R4 K3 ["getSelectionWrapper"]
       10 CALL                             R4 1 1
       11 NAMECALL                         R4 R4 K4 ["get"]
       13 CALL                             R4 1 1
       14 GETTABLEKS                       R6 R0 K1 ["_draggerToolModel"]
       16 GETTABLEKS                       R5 R6 K5 ["_selectionInfo"]
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

PROTO_15:
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

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["_draggerToolModel"]
        2 GETTABLEKS                       R2 R3 K1 ["_draggerContext"]
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
       53 GETTABLEKS                       R11 R0 K0 ["_draggerToolModel"]
       55 NAMECALL                         R11 R11 K11 ["getSchema"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R10 R11 K12 ["isExclusiveSelectable"]
       60 MOVE                             R11 R2
       61 MOVE                             R12 R5
       62 MOVE                             R13 R3
       63 CALL                             R10 3 1
       64 GETUPVAL                         R12 1
       65 GETTABLEKS                       R11 R12 K13 ["updateSelection"]
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
       95 GETTABLEKS                       R15 R0 K0 ["_draggerToolModel"]
       97 NAMECALL                         R15 R15 K11 ["getSchema"]
       99 CALL                             R15 1 1
      100 GETTABLEKS                       R14 R15 K17 ["setActivePoint"]
      102 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      104 GETTABLEKS                       R15 R16 K1 ["_draggerContext"]
      106 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      108 GETTABLEKS                       R16 R17 K18 ["_selectionInfo"]
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
      148 GETTABLEKS                       R16 R0 K0 ["_draggerToolModel"]
      150 NAMECALL                         R16 R16 K11 ["getSchema"]
      152 CALL                             R16 1 1
      153 GETTABLEKS                       R15 R16 K31 ["dispatchWorldClick"]
      155 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      157 GETTABLEKS                       R16 R17 K1 ["_draggerContext"]
      159 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      161 MOVE                             R18 R14
      162 CALL                             R15 3 2
      163 JUMPIFNOTEQKS                    R15 K32 ["Ready"] ; [+16]
      165 JUMPIFNOT                        R5 ; [+57]
      166 JUMPIFNOT                        R11 ; [+1]
      167 JUMPIFNOT                        R1 ; [+55]
      168 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      170 GETUPVAL                         R20 2
      171 GETTABLEKS                       R19 R20 K33 ["PendingSelectNext"]
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
      190 GETUPVAL                         R20 2
      191 GETTABLEKS                       R19 R20 K35 ["DragSelecting"]
      193 NAMECALL                         R17 R17 K34 ["transitionToState"]
      195 CALL                             R17 2 0
      196 RETURN                           R0 0
      197 JUMPIFNOTEQKS                    R15 K37 ["FreeformSelectionDrag"] ; [+13]
      199 GETTABLEKS                       R17 R0 K0 ["_draggerToolModel"]
      201 GETUPVAL                         R20 2
      202 GETTABLEKS                       R19 R20 K38 ["PendingDraggingParts"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Roact"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Implementation"]
       20 GETTABLEKS                       R4 R5 K7 ["DraggerStateType"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K4 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Components"]
       27 GETTABLEKS                       R5 R6 K9 ["AnimatedHoverBox"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K4 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R7 K10 ["LocalSpaceIndicator"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETTABLEKS                       R8 R0 K11 ["Utility"]
       41 GETTABLEKS                       R7 R8 K12 ["SelectionHelper"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K4 [require]
       46 GETTABLEKS                       R9 R0 K6 ["Implementation"]
       48 GETTABLEKS                       R8 R9 K13 ["HoverTracker"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K4 [require]
       53 GETTABLEKS                       R10 R0 K11 ["Utility"]
       55 GETTABLEKS                       R9 R10 K14 ["StandardCursor"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K4 [require]
       60 GETTABLEKS                       R11 R0 K15 ["Flags"]
       62 GETTABLEKS                       R10 R11 K16 ["getFFlagDraggerHandlesIsEnabledFunction"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K4 [require]
       67 GETTABLEKS                       R12 R0 K15 ["Flags"]
       69 GETTABLEKS                       R11 R12 K17 ["getFFlagDraggerImprovements"]
       71 CALL                             R10 1 1
       72 NEWTABLE                         R11 16 0
       74 SETTABLEKS                       R11 R11 K18 ["__index"]
       76 DUPCLOSURE                       R12 K19 [PROTO_0]
       77 CAPTURE                          VAL R11
       78 SETTABLEKS                       R12 R11 K20 ["new"]
       80 DUPCLOSURE                       R12 K21 [PROTO_2]
       81 CAPTURE                          VAL R7
       82 CAPTURE                          VAL R10
       83 SETTABLEKS                       R12 R11 K22 ["enter"]
       85 DUPCLOSURE                       R12 K23 [PROTO_3]
       86 SETTABLEKS                       R12 R11 K24 ["leave"]
       88 DUPCLOSURE                       R12 K25 [PROTO_4]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R10
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R5
       94 SETTABLEKS                       R12 R11 K26 ["render"]
       96 DUPCLOSURE                       R12 K27 [PROTO_5]
       97 SETTABLEKS                       R12 R11 K28 ["processSelectionChanged"]
       99 DUPCLOSURE                       R12 K29 [PROTO_6]
      100 CAPTURE                          VAL R3
      101 SETTABLEKS                       R12 R11 K30 ["processMouseDown"]
      103 DUPCLOSURE                       R12 K31 [PROTO_7]
      104 SETTABLEKS                       R12 R11 K32 ["processViewChanged"]
      106 DUPCLOSURE                       R12 K33 [PROTO_8]
      107 SETTABLEKS                       R12 R11 K34 ["processMouseUp"]
      109 DUPCLOSURE                       R12 K35 [PROTO_9]
      110 SETTABLEKS                       R12 R11 K36 ["processMouseEnter"]
      112 DUPCLOSURE                       R12 K37 [PROTO_10]
      113 SETTABLEKS                       R12 R11 K38 ["processMouseLeave"]
      115 DUPCLOSURE                       R12 K39 [PROTO_11]
      116 SETTABLEKS                       R12 R11 K40 ["_scopeSelectChanged"]
      118 DUPCLOSURE                       R12 K41 [PROTO_12]
      119 CAPTURE                          VAL R10
      120 SETTABLEKS                       R12 R11 K42 ["processKeyDown"]
      122 DUPCLOSURE                       R12 K43 [PROTO_13]
      123 CAPTURE                          VAL R10
      124 SETTABLEKS                       R12 R11 K44 ["processKeyUp"]
      126 DUPCLOSURE                       R12 K45 [PROTO_14]
      127 CAPTURE                          VAL R9
      128 SETTABLEKS                       R12 R11 K46 ["_updateHoverTracker"]
      130 DUPCLOSURE                       R12 K47 [PROTO_15]
      131 DUPCLOSURE                       R13 K48 [PROTO_16]
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R6
      134 CAPTURE                          VAL R3
      135 SETTABLEKS                       R13 R11 K49 ["_clickInWorld"]
      137 RETURN                           R11 1
