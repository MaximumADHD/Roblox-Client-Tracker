PROTO_0:
  DUPTABLE R2 K1 [{"_draggerToolModel"}]
  SETTABLEKS R0 R2 K0 ["_draggerToolModel"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R2 R3 [+3]
  GETIMPORT R1 K3 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["_draggerToolModel"]
  NAMECALL R0 R0 K1 ["_processViewChanged"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["new"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_draggerContext"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  NAMECALL R4 R4 K3 ["getSchema"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K1 ["_draggerToolModel"]
  NAMECALL R5 R5 K4 ["getHandlesList"]
  CALL R5 1 1
  GETTABLEKS R7 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R6 R7 K5 ["_selectionCycleCache"]
  MOVE R7 R1
  GETUPVAL R9 1
  CALL R9 0 1
  JUMPIFNOT R9 [+6]
  GETTABLEKS R8 R0 K1 ["_draggerToolModel"]
  NAMECALL R8 R8 K6 ["shouldShowPivotIndicator"]
  CALL R8 1 1
  JUMP [+1]
  LOADNIL R8
  CALL R2 6 1
  SETTABLEKS R2 R0 K7 ["_hoverTracker"]
  NAMECALL R2 R0 K8 ["_updateHoverTracker"]
  CALL R2 1 0
  GETUPVAL R2 1
  CALL R2 0 1
  JUMPIFNOT R2 [+13]
  GETTABLEKS R3 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K2 ["_draggerContext"]
  NAMECALL R2 R2 K9 ["isTabKeyDown"]
  CALL R2 1 1
  JUMPIF R2 [+5]
  GETTABLEKS R2 R0 K1 ["_draggerToolModel"]
  NAMECALL R2 R2 K10 ["_endSummon"]
  CALL R2 1 0
  RETURN R0 0

PROTO_3:
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_draggerContext"]
  NAMECALL R1 R1 K3 ["clearHover"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  NAMECALL R1 R1 K4 ["destroy"]
  CALL R1 1 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R1 4 0
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_draggerContext"]
  GETTABLEKS R3 R0 K2 ["_hoverTracker"]
  NAMECALL R3 R3 K3 ["getHoverSelectable"]
  CALL R3 1 1
  NAMECALL R4 R2 K4 ["shouldExtendSelection"]
  CALL R4 1 1
  NAMECALL R5 R2 K5 ["shouldShowHover"]
  CALL R5 1 1
  JUMPIFNOT R5 [+136]
  JUMPIFNOT R3 [+135]
  GETTABLEKS R6 R0 K0 ["_draggerToolModel"]
  NAMECALL R6 R6 K6 ["getSchema"]
  CALL R6 1 1
  GETTABLEKS R5 R6 K7 ["getSelectionBoxComponent"]
  MOVE R6 R2
  MOVE R7 R3
  CALL R5 2 1
  JUMPIFNOT R5 [+124]
  LOADNIL R6
  NAMECALL R7 R2 K8 ["shouldAnimateHover"]
  CALL R7 1 1
  JUMPIFNOT R7 [+4]
  NAMECALL R7 R2 K9 ["getHoverAnimationSpeedInSeconds"]
  CALL R7 1 1
  MOVE R6 R7
  LOADB R7 0
  NAMECALL R8 R2 K10 ["shouldShowActiveInstanceHighlight"]
  CALL R8 1 1
  JUMPIFNOT R8 [+12]
  GETTABLEKS R8 R0 K0 ["_draggerToolModel"]
  NAMECALL R8 R8 K11 ["getSelectionWrapper"]
  CALL R8 1 1
  NAMECALL R8 R8 K12 ["getActiveSelectable"]
  CALL R8 1 1
  JUMPIFEQ R3 R8 [+2]
  LOADB R7 0 +1
  LOADB R7 1
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K13 ["createElement"]
  GETUPVAL R9 1
  DUPTABLE R10 K23 [{"SelectionBoxComponent", "HoverTarget", "SelectColor", "Thickness", "LineThickness", "HoverColor", "AnimatePeriod", "ShowHoverBox", "ShowOutline"}]
  SETTABLEKS R5 R10 K14 ["SelectionBoxComponent"]
  SETTABLEKS R3 R10 K15 ["HoverTarget"]
  MOVE R13 R7
  NAMECALL R11 R2 K24 ["getSelectionBoxColor"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["SelectColor"]
  NAMECALL R11 R2 K25 ["getHoverThickness"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K17 ["Thickness"]
  NAMECALL R11 R2 K26 ["getHoverLineThickness"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K18 ["LineThickness"]
  MOVE R13 R7
  NAMECALL R11 R2 K27 ["getHoverBoxColor"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K19 ["HoverColor"]
  SETTABLEKS R6 R10 K20 ["AnimatePeriod"]
  NAMECALL R11 R2 K28 ["getShowBoundingBox"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K21 ["ShowHoverBox"]
  NAMECALL R11 R2 K29 ["getShowOutline"]
  CALL R11 1 1
  SETTABLEKS R11 R10 K22 ["ShowOutline"]
  CALL R8 2 1
  SETTABLEKS R8 R1 K30 ["HoverBox"]
  GETUPVAL R8 2
  CALL R8 0 1
  JUMPIFNOT R8 [+49]
  GETTABLEKS R8 R0 K2 ["_hoverTracker"]
  NAMECALL R8 R8 K31 ["getHoverHandleId"]
  CALL R8 1 1
  JUMPIF R8 [+43]
  GETTABLEKS R8 R0 K0 ["_draggerToolModel"]
  NAMECALL R8 R8 K32 ["_isSummoned"]
  CALL R8 1 1
  JUMPIF R8 [+37]
  GETTABLEKS R9 R0 K0 ["_draggerToolModel"]
  NAMECALL R9 R9 K6 ["getSchema"]
  CALL R9 1 1
  GETTABLEKS R8 R9 K33 ["getHoverComponent"]
  JUMPIFNOT R8 [+29]
  MOVE R9 R8
  MOVE R10 R2
  MOVE R11 R3
  CALL R9 2 1
  JUMPIFNOT R9 [+24]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K13 ["createElement"]
  MOVE R11 R9
  DUPTABLE R12 K37 [{"DraggerContext", "HoverMetadata", "Pending"}]
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R13 R14 K1 ["_draggerContext"]
  SETTABLEKS R13 R12 K34 ["DraggerContext"]
  GETTABLEKS R13 R0 K2 ["_hoverTracker"]
  NAMECALL R13 R13 K38 ["getHoverMetadata"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K35 ["HoverMetadata"]
  LOADB R13 0
  SETTABLEKS R13 R12 K36 ["Pending"]
  CALL R10 2 1
  SETTABLEKS R10 R1 K39 ["HoverDisplay"]
  JUMPIF R3 [+6]
  GETTABLEKS R5 R0 K2 ["_hoverTracker"]
  NAMECALL R5 R5 K31 ["getHoverHandleId"]
  CALL R5 1 1
  JUMPIFNOT R5 [+10]
  GETTABLEKS R5 R0 K0 ["_draggerToolModel"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K40 ["getOpenHand"]
  CALL R7 0 -1
  NAMECALL R5 R5 K41 ["setMouseCursor"]
  CALL R5 -1 0
  JUMP [+9]
  GETTABLEKS R5 R0 K0 ["_draggerToolModel"]
  GETUPVAL R8 3
  GETTABLEKS R7 R8 K42 ["getArrow"]
  CALL R7 0 -1
  NAMECALL R5 R5 K41 ["setMouseCursor"]
  CALL R5 -1 0
  GETTABLEKS R5 R0 K0 ["_draggerToolModel"]
  NAMECALL R5 R5 K43 ["shouldShowLocalSpaceIndicator"]
  CALL R5 1 1
  JUMPIFNOT R5 [+39]
  GETTABLEKS R6 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K44 ["_selectionInfo"]
  NAMECALL R6 R5 K45 ["isEmpty"]
  CALL R6 1 1
  JUMPIF R6 [+31]
  NAMECALL R6 R2 K46 ["shouldUseLocalSpace"]
  CALL R6 1 1
  JUMPIFNOT R6 [+27]
  NAMECALL R6 R5 K47 ["getBoundingBox"]
  CALL R6 1 3
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K13 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K51 [{"CFrame", "Size", "TextColor3", "DraggerContext"}]
  GETIMPORT R13 K53 [CFrame.new]
  MOVE R14 R7
  CALL R13 1 1
  MUL R12 R6 R13
  SETTABLEKS R12 R11 K48 ["CFrame"]
  SETTABLEKS R8 R11 K49 ["Size"]
  NAMECALL R12 R2 K24 ["getSelectionBoxColor"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K50 ["TextColor3"]
  SETTABLEKS R2 R11 K34 ["DraggerContext"]
  CALL R9 2 1
  SETTABLEKS R9 R1 K54 ["LocalSpaceIndicator"]
  GETTABLEKS R5 R0 K2 ["_hoverTracker"]
  NAMECALL R5 R5 K31 ["getHoverHandleId"]
  CALL R5 1 2
  GETIMPORT R7 K56 [pairs]
  GETTABLEKS R8 R0 K0 ["_draggerToolModel"]
  NAMECALL R8 R8 K57 ["getHandlesList"]
  CALL R8 1 -1
  CALL R7 -1 3
  FORGPREP_NEXT R7
  LOADK R13 K58 ["ImplementationUI"]
  MOVE R14 R10
  CONCAT R12 R13 R14
  JUMPIFNOTEQ R5 R11 [+3]
  MOVE R15 R6
  JUMPIF R15 [+1]
  LOADNIL R15
  NAMECALL R13 R11 K59 ["render"]
  CALL R13 2 1
  SETTABLE R13 R1 R12
  FORGLOOP R7 2 [-13]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K60 ["createFragment"]
  MOVE R8 R1
  CALL R7 1 -1
  RETURN R7 -1

PROTO_5:
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  JUMPIFNOT R1 [+3]
  NAMECALL R1 R0 K1 ["_updateHoverTracker"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  NAMECALL R2 R0 K0 ["_updateHoverTracker"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K1 ["_hoverTracker"]
  NAMECALL R2 R2 K2 ["getHoverHandleId"]
  CALL R2 1 2
  JUMPIFNOT R3 [+11]
  GETTABLEKS R4 R0 K3 ["_draggerToolModel"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["DraggingHandle"]
  MOVE R7 R2
  MOVE R8 R3
  NAMECALL R4 R4 K5 ["transitionToState"]
  CALL R4 4 0
  RETURN R0 0
  MOVE R6 R1
  NAMECALL R4 R0 K6 ["_clickInWorld"]
  CALL R4 2 0
  RETURN R0 0

PROTO_7:
  NAMECALL R1 R0 K0 ["_updateHoverTracker"]
  CALL R1 1 0
  RETURN R0 0

PROTO_8:
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  LOADB R3 1
  NAMECALL R1 R1 K1 ["setMouseInBounds"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_draggerContext"]
  NAMECALL R1 R1 K3 ["clearHover"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  LOADB R3 0
  NAMECALL R1 R1 K4 ["setMouseInBounds"]
  CALL R1 2 0
  GETTABLEKS R1 R0 K1 ["_draggerToolModel"]
  NAMECALL R1 R1 K5 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_11:
  NAMECALL R1 R0 K0 ["_updateHoverTracker"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K1 ["_draggerToolModel"]
  NAMECALL R1 R1 K2 ["_scheduleRender"]
  CALL R1 1 0
  RETURN R0 0

PROTO_12:
  GETIMPORT R2 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R1 R2 [+5]
  GETIMPORT R2 K5 [Enum.KeyCode.RightAlt]
  JUMPIFNOTEQ R1 R2 [+5]
  NAMECALL R2 R0 K6 ["_scopeSelectChanged"]
  CALL R2 1 0
  JUMP [+20]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETIMPORT R2 K8 [Enum.KeyCode.Tab]
  JUMPIFNOTEQ R1 R2 [+14]
  GETTABLEKS R2 R0 K9 ["_draggerToolModel"]
  NAMECALL R2 R2 K10 ["_beginSummon"]
  CALL R2 1 0
  NAMECALL R2 R0 K11 ["_updateHoverTracker"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K9 ["_draggerToolModel"]
  NAMECALL R2 R2 K12 ["_scheduleRender"]
  CALL R2 1 0
  GETIMPORT R2 K14 [pairs]
  GETTABLEKS R3 R0 K9 ["_draggerToolModel"]
  NAMECALL R3 R3 K15 ["getHandlesList"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K16 ["keyDown"]
  JUMPIFNOT R7 [+13]
  MOVE R9 R1
  NAMECALL R7 R6 K16 ["keyDown"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  NAMECALL R7 R0 K17 ["processViewChanged"]
  CALL R7 1 0
  GETTABLEKS R7 R0 K9 ["_draggerToolModel"]
  NAMECALL R7 R7 K12 ["_scheduleRender"]
  CALL R7 1 0
  FORGLOOP R2 2 [-17]
  RETURN R0 0

PROTO_13:
  GETIMPORT R2 K3 [Enum.KeyCode.LeftAlt]
  JUMPIFEQ R1 R2 [+5]
  GETIMPORT R2 K5 [Enum.KeyCode.RightAlt]
  JUMPIFNOTEQ R1 R2 [+24]
  NAMECALL R2 R0 K6 ["_scopeSelectChanged"]
  CALL R2 1 0
  GETTABLEKS R3 R0 K7 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K8 ["_selectionCycleCache"]
  GETTABLEKS R3 R2 K9 ["_analyticsNumberOfClicks"]
  NAMECALL R4 R2 K10 ["size"]
  CALL R4 1 1
  GETTABLEKS R5 R0 K7 ["_draggerToolModel"]
  MOVE R7 R3
  MOVE R8 R4
  NAMECALL R5 R5 K11 ["_analyticsSendSelectionCycle"]
  CALL R5 3 0
  NAMECALL R5 R2 K12 ["computeSelectionCycleCandidates"]
  CALL R5 1 0
  JUMP [+20]
  GETUPVAL R2 0
  CALL R2 0 1
  JUMPIFNOT R2 [+17]
  GETIMPORT R2 K14 [Enum.KeyCode.Tab]
  JUMPIFNOTEQ R1 R2 [+14]
  GETTABLEKS R2 R0 K7 ["_draggerToolModel"]
  NAMECALL R2 R2 K15 ["_endSummon"]
  CALL R2 1 0
  NAMECALL R2 R0 K16 ["_updateHoverTracker"]
  CALL R2 1 0
  GETTABLEKS R2 R0 K7 ["_draggerToolModel"]
  NAMECALL R2 R2 K17 ["_scheduleRender"]
  CALL R2 1 0
  GETIMPORT R2 K19 [pairs]
  GETTABLEKS R3 R0 K7 ["_draggerToolModel"]
  NAMECALL R3 R3 K20 ["getHandlesList"]
  CALL R3 1 -1
  CALL R2 -1 3
  FORGPREP_NEXT R2
  GETTABLEKS R7 R6 K21 ["keyUp"]
  JUMPIFNOT R7 [+13]
  MOVE R9 R1
  NAMECALL R7 R6 K21 ["keyUp"]
  CALL R7 2 1
  JUMPIFNOT R7 [+8]
  NAMECALL R7 R0 K22 ["processViewChanged"]
  CALL R7 1 0
  GETTABLEKS R7 R0 K7 ["_draggerToolModel"]
  NAMECALL R7 R7 K17 ["_scheduleRender"]
  CALL R7 1 0
  FORGLOOP R2 2 [-17]
  RETURN R0 0

PROTO_14:
  GETTABLEKS R1 R0 K0 ["_hoverTracker"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R3 R4 K2 ["_draggerContext"]
  GETTABLEKS R4 R0 K1 ["_draggerToolModel"]
  NAMECALL R4 R4 K3 ["getSelectionWrapper"]
  CALL R4 1 1
  NAMECALL R4 R4 K4 ["get"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K1 ["_draggerToolModel"]
  GETTABLEKS R5 R6 K5 ["_selectionInfo"]
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K1 ["_draggerToolModel"]
  NAMECALL R6 R6 K6 ["getHandlesList"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  NAMECALL R1 R1 K7 ["update"]
  CALL R1 5 0
  RETURN R0 0

PROTO_15:
  GETIMPORT R2 K1 [ipairs]
  MOVE R3 R0
  CALL R2 1 3
  FORGPREP_INEXT R2
  JUMPIFNOTEQ R6 R1 [+3]
  LOADB R7 1
  RETURN R7 1
  FORGLOOP R2 2 [inext] [-5]
  LOADB R2 0
  RETURN R2 1

PROTO_16:
  GETTABLEKS R3 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R2 R3 K1 ["_draggerContext"]
  GETTABLEKS R3 R0 K2 ["_hoverTracker"]
  NAMECALL R3 R3 K3 ["getHoverItem"]
  CALL R3 1 2
  GETTABLEKS R5 R0 K2 ["_hoverTracker"]
  NAMECALL R5 R5 K4 ["getHoverSelectable"]
  CALL R5 1 1
  GETUPVAL R7 0
  CALL R7 0 1
  JUMPIFNOT R7 [+6]
  GETTABLEKS R6 R0 K2 ["_hoverTracker"]
  NAMECALL R6 R6 K5 ["getHoverMetadata"]
  CALL R6 1 1
  JUMP [+1]
  LOADNIL R6
  GETTABLEKS R7 R0 K0 ["_draggerToolModel"]
  NAMECALL R7 R7 K6 ["getSelectionWrapper"]
  CALL R7 1 1
  NAMECALL R7 R7 K7 ["get"]
  CALL R7 1 1
  GETIMPORT R9 K9 [ipairs]
  MOVE R10 R7
  CALL R9 1 3
  FORGPREP_INEXT R9
  JUMPIFNOTEQ R13 R5 [+3]
  LOADB R8 1
  JUMP [+3]
  FORGLOOP R9 2 [inext] [-5]
  LOADB R8 0
  NAMECALL R9 R2 K10 ["shouldExtendSelection"]
  CALL R9 1 1
  JUMPIFNOT R1 [+2]
  JUMPIFNOT R8 [+1]
  LOADB R9 0
  LOADB R10 0
  JUMPIFEQKNIL R5 [+12]
  GETTABLEKS R11 R0 K0 ["_draggerToolModel"]
  NAMECALL R11 R11 K11 ["getSchema"]
  CALL R11 1 1
  GETTABLEKS R10 R11 K12 ["isExclusiveSelectable"]
  MOVE R11 R2
  MOVE R12 R5
  MOVE R13 R3
  CALL R10 3 1
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K13 ["updateSelection"]
  MOVE R12 R5
  MOVE R13 R7
  MOVE R14 R10
  MOVE R15 R9
  CALL R11 4 3
  JUMPIFNOT R11 [+38]
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  NAMECALL R14 R14 K6 ["getSelectionWrapper"]
  CALL R14 1 1
  MOVE R16 R12
  MOVE R17 R13
  NAMECALL R14 R14 K14 ["set"]
  CALL R14 3 0
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  NAMECALL R14 R14 K15 ["isSelected"]
  CALL R14 1 1
  JUMPIF R14 [+1]
  RETURN R0 0
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  NAMECALL R14 R14 K16 ["_processSelectionChanged"]
  CALL R14 1 0
  GETTABLEKS R15 R0 K0 ["_draggerToolModel"]
  NAMECALL R15 R15 K11 ["getSchema"]
  CALL R15 1 1
  GETTABLEKS R14 R15 K17 ["setActivePoint"]
  GETTABLEKS R16 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R15 R16 K1 ["_draggerContext"]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R16 R17 K18 ["_selectionInfo"]
  CALL R14 2 0
  GETTABLEKS R14 R0 K0 ["_draggerToolModel"]
  MOVE R16 R3
  MOVE R17 R11
  NAMECALL R14 R14 K19 ["_analyticsSendClick"]
  CALL R14 3 0
  GETIMPORT R14 K22 [table.freeze]
  DUPTABLE R15 K30 [{"DoubleClicked", "ClickedSelectable", "ClickedItem", "ClickedPosition", "ClickedMetadata", "SelectionDidContainSelectable", "SelectionNowContainsSelectable"}]
  SETTABLEKS R1 R15 K23 ["DoubleClicked"]
  SETTABLEKS R5 R15 K24 ["ClickedSelectable"]
  SETTABLEKS R3 R15 K25 ["ClickedItem"]
  SETTABLEKS R4 R15 K26 ["ClickedPosition"]
  SETTABLEKS R6 R15 K27 ["ClickedMetadata"]
  SETTABLEKS R8 R15 K28 ["SelectionDidContainSelectable"]
  GETIMPORT R17 K9 [ipairs]
  MOVE R18 R12
  CALL R17 1 3
  FORGPREP_INEXT R17
  JUMPIFNOTEQ R21 R5 [+3]
  LOADB R16 1
  JUMP [+3]
  FORGLOOP R17 2 [inext] [-5]
  LOADB R16 0
  SETTABLEKS R16 R15 K29 ["SelectionNowContainsSelectable"]
  CALL R14 1 1
  GETTABLEKS R16 R0 K0 ["_draggerToolModel"]
  NAMECALL R16 R16 K11 ["getSchema"]
  CALL R16 1 1
  GETTABLEKS R15 R16 K31 ["dispatchWorldClick"]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  GETTABLEKS R16 R17 K1 ["_draggerContext"]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  MOVE R18 R14
  CALL R15 3 2
  JUMPIFNOTEQKS R15 K32 ["Ready"] [+16]
  JUMPIFNOT R5 [+57]
  JUMPIFNOT R11 [+1]
  JUMPIFNOT R1 [+55]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K33 ["PendingSelectNext"]
  MOVE R20 R1
  MOVE R21 R14
  NAMECALL R17 R17 K34 ["transitionToState"]
  CALL R17 4 0
  RETURN R0 0
  RETURN R0 0
  JUMPIFNOTEQKS R15 K35 ["DragSelecting"] [+16]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  NAMECALL R17 R17 K36 ["doesAllowDragSelect"]
  CALL R17 1 1
  JUMPIFNOT R17 [+35]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K35 ["DragSelecting"]
  NAMECALL R17 R17 K34 ["transitionToState"]
  CALL R17 2 0
  RETURN R0 0
  JUMPIFNOTEQKS R15 K37 ["FreeformSelectionDrag"] [+13]
  GETTABLEKS R17 R0 K0 ["_draggerToolModel"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K38 ["PendingDraggingParts"]
  MOVE R20 R1
  MOVE R21 R16
  MOVE R22 R6
  NAMECALL R17 R17 K34 ["transitionToState"]
  CALL R17 5 0
  RETURN R0 0
  GETIMPORT R17 K40 [error]
  LOADK R19 K41 ["Bad state returned from dispatchWorldClick: `"]
  FASTCALL1 TOSTRING R15 [+3]
  MOVE R23 R15
  GETIMPORT R22 K43 [tostring]
  CALL R22 1 1
  MOVE R20 R22
  LOADK R21 K44 ["`"]
  CONCAT R18 R19 R21
  CALL R17 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K6 ["Implementation"]
  GETTABLEKS R4 R5 K7 ["DraggerStateType"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K9 ["AnimatedHoverBox"]
  CALL R4 1 1
  GETIMPORT R5 K4 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K10 ["LocalSpaceIndicator"]
  CALL R5 1 1
  GETIMPORT R6 K4 [require]
  GETTABLEKS R8 R0 K11 ["Utility"]
  GETTABLEKS R7 R8 K12 ["SelectionHelper"]
  CALL R6 1 1
  GETIMPORT R7 K4 [require]
  GETTABLEKS R9 R0 K6 ["Implementation"]
  GETTABLEKS R8 R9 K13 ["HoverTracker"]
  CALL R7 1 1
  GETIMPORT R8 K4 [require]
  GETTABLEKS R10 R0 K11 ["Utility"]
  GETTABLEKS R9 R10 K14 ["StandardCursor"]
  CALL R8 1 1
  GETIMPORT R9 K4 [require]
  GETTABLEKS R11 R0 K15 ["Flags"]
  GETTABLEKS R10 R11 K16 ["getFFlagDraggerHandlesIsEnabledFunction"]
  CALL R9 1 1
  GETIMPORT R10 K4 [require]
  GETTABLEKS R12 R0 K15 ["Flags"]
  GETTABLEKS R11 R12 K17 ["getFFlagDraggerImprovements"]
  CALL R10 1 1
  NEWTABLE R11 16 0
  SETTABLEKS R11 R11 K18 ["__index"]
  DUPCLOSURE R12 K19 [PROTO_0]
  CAPTURE VAL R11
  SETTABLEKS R12 R11 K20 ["new"]
  DUPCLOSURE R12 K21 [PROTO_2]
  CAPTURE VAL R7
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K22 ["enter"]
  DUPCLOSURE R12 K23 [PROTO_3]
  SETTABLEKS R12 R11 K24 ["leave"]
  DUPCLOSURE R12 K25 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R5
  SETTABLEKS R12 R11 K26 ["render"]
  DUPCLOSURE R12 K27 [PROTO_5]
  SETTABLEKS R12 R11 K28 ["processSelectionChanged"]
  DUPCLOSURE R12 K29 [PROTO_6]
  CAPTURE VAL R3
  SETTABLEKS R12 R11 K30 ["processMouseDown"]
  DUPCLOSURE R12 K31 [PROTO_7]
  SETTABLEKS R12 R11 K32 ["processViewChanged"]
  DUPCLOSURE R12 K33 [PROTO_8]
  SETTABLEKS R12 R11 K34 ["processMouseUp"]
  DUPCLOSURE R12 K35 [PROTO_9]
  SETTABLEKS R12 R11 K36 ["processMouseEnter"]
  DUPCLOSURE R12 K37 [PROTO_10]
  SETTABLEKS R12 R11 K38 ["processMouseLeave"]
  DUPCLOSURE R12 K39 [PROTO_11]
  SETTABLEKS R12 R11 K40 ["_scopeSelectChanged"]
  DUPCLOSURE R12 K41 [PROTO_12]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K42 ["processKeyDown"]
  DUPCLOSURE R12 K43 [PROTO_13]
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K44 ["processKeyUp"]
  DUPCLOSURE R12 K45 [PROTO_14]
  CAPTURE VAL R9
  SETTABLEKS R12 R11 K46 ["_updateHoverTracker"]
  DUPCLOSURE R12 K47 [PROTO_15]
  DUPCLOSURE R13 K48 [PROTO_16]
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R3
  SETTABLEKS R13 R11 K49 ["_clickInWorld"]
  RETURN R11 1
