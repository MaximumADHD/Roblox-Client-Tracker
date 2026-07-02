PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["renderRef"]
        6 LOADN                            R1 0
        7 SETTABLEKS                       R1 R0 K2 ["lastWidth"]
        9 LOADN                            R1 0
       10 SETTABLEKS                       R1 R0 K3 ["lastHeight"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K4 ["treemapSolveDirty"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K5 ["treemapNode"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K6 ["treemapInputData"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K7 ["currentTreemapData"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K8 ["currentlyHoveredNode"]
       27 LOADN                            R1 0
       28 SETTABLEKS                       R1 R0 K9 ["timeCostOfLastSolve"]
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K10 ["lastMousePosition"]
       33 NEWTABLE                         R1 0 0
       35 SETTABLEKS                       R1 R0 K11 ["zoomDownNodePath"]
       37 NEWTABLE                         R1 0 0
       39 SETTABLEKS                       R1 R0 K12 ["selectedNodeIds"]
       41 LOADN                            R1 8
       42 SETTABLEKS                       R1 R0 K13 ["maxDepth"]
       44 DUPTABLE                         R1 K22 [{["hasData"] = True, ["tooltipVisible"] = False, ["tooltipNode"] = , ["tooltipPosition"], ["legendData"] = }]
       45 GETIMPORT                        R2 K25 [UDim2.fromOffset]
       47 LOADN                            R3 0
       48 LOADN                            R4 0
       49 CALL                             R2 2 1
       50 SETTABLEKS                       R2 R1 K20 ["tooltipPosition"]
       52 SETTABLEKS                       R1 R0 K26 ["state"]
       54 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["zoomDownNodePath"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.remove]
        2 GETTABLEKS                       R2 R0 K3 ["zoomDownNodePath"]
        4 CALL                             R1 1 0
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K4 ["treemapSolveDirty"]
        8 NAMECALL                         R1 R0 K5 ["repaintTreemap"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["renderRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R3 R0 K2 ["currentTreemapData"]
       10 JUMPIFNOT                        R3 ; [+8]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R5 R0 K3 ["currentlyHoveredNode"]
       14 MOVE                             R6 R2
       15 MOVE                             R7 R1
       16 NAMECALL                         R3 R3 K4 ["animateTreemap"]
       18 CALL                             R3 4 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["renderRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R1 K2 ["X"]
       10 GETTABLEKS                       R5 R2 K3 ["AbsolutePosition"]
       12 GETTABLEKS                       R5 R5 K2 ["X"]
       14 SUB                              R3 R4 R5
       15 GETTABLEKS                       R5 R1 K4 ["Y"]
       17 GETTABLEKS                       R6 R2 K3 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R6 K4 ["Y"]
       21 SUB                              R4 R5 R6
       22 GETTABLEKS                       R5 R0 K5 ["currentTreemapData"]
       24 JUMPIFNOT                        R5 ; [+16]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R7 R0 K5 ["currentTreemapData"]
       28 LOADN                            R8 0
       29 LOADN                            R9 0
       30 MOVE                             R10 R3
       31 MOVE                             R11 R4
       32 NAMECALL                         R5 R5 K6 ["getMouseOver"]
       34 CALL                             R5 6 1
       35 JUMPIFNOT                        R5 ; [+5]
       36 MOVE                             R8 R5
       37 MOVE                             R9 R1
       38 NAMECALL                         R6 R0 K7 ["mouseOverNode"]
       40 CALL                             R6 3 0
       41 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["timeCostOfLastSolve"]
        2 LOADK                            R2 K1 [0.0333333333333333]
        3 JUMPIFNOTLT                      R1 R2 ; [+7]
        5 LOADB                            R1 1
        6 SETTABLEKS                       R1 R0 K2 ["treemapSolveDirty"]
        8 NAMECALL                         R1 R0 K3 ["repaintTreemap"]
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_6:
        0 SETTABLEKS                       R1 R0 K0 ["selectedNodeIds"]
        2 NAMECALL                         R2 R0 K1 ["rerenderSelection"]
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["currentTreemapData"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R1 R0 K1 ["renderRef"]
        6 NAMECALL                         R1 R1 K2 ["getValue"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R4 R0 K0 ["currentTreemapData"]
       14 GETTABLEKS                       R5 R0 K3 ["selectedNodeIds"]
       16 GETTABLEKS                       R6 R0 K4 ["props"]
       18 GETTABLEKS                       R6 R6 K5 ["valueFormat"]
       20 GETTABLEKS                       R7 R0 K4 ["props"]
       22 GETTABLEKS                       R7 R7 K6 ["colorRamp"]
       24 NAMECALL                         R2 R2 K7 ["renderTreemap"]
       26 CALL                             R2 5 2
       27 SETTABLEKS                       R1 R2 K8 ["Parent"]
       29 GETTABLEKS                       R4 R0 K9 ["treemapRenderedFrame"]
       31 JUMPIFNOT                        R4 ; [+3]
       32 NAMECALL                         R5 R4 K10 ["Destroy"]
       34 CALL                             R5 1 0
       35 SETTABLEKS                       R2 R0 K9 ["treemapRenderedFrame"]
       37 DUPTABLE                         R7 K12 [{"legendData"}]
       38 SETTABLEKS                       R3 R7 K11 ["legendData"]
       40 NAMECALL                         R5 R0 K13 ["setState"]
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R5 R0 K14 ["lastMousePosition"]
       45 JUMPIFNOT                        R5 ; [+13]
       46 GETTABLEKS                       R7 R0 K14 ["lastMousePosition"]
       48 NAMECALL                         R5 R0 K15 ["handleMouseMove"]
       50 CALL                             R5 2 0
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R7 R0 K16 ["currentlyHoveredNode"]
       54 MOVE                             R8 R1
       55 LOADN                            R9 0
       56 NAMECALL                         R5 R5 K17 ["animateTreemap"]
       58 CALL                             R5 4 0
       59 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["treemapSolveDirty"]
        2 JUMPIFNOTEQKB                    R1 FALSE ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["treemapInputData"]
        7 JUMPIFNOTEQKNIL                  R1 ; [+2]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R1 R0 K2 ["renderRef"]
       12 NAMECALL                         R1 R1 K3 ["getValue"]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+2]
       17 RETURN                           R0 0
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R0 K0 ["treemapSolveDirty"]
       21 GETTABLEKS                       R2 R1 K4 ["AbsoluteSize"]
       23 GETTABLEKS                       R2 R2 K5 ["x"]
       25 SETTABLEKS                       R2 R0 K6 ["lastWidth"]
       27 GETTABLEKS                       R2 R1 K4 ["AbsoluteSize"]
       29 GETTABLEKS                       R2 R2 K7 ["y"]
       31 SETTABLEKS                       R2 R0 K8 ["lastHeight"]
       33 GETTABLEKS                       R2 R0 K1 ["treemapInputData"]
       35 JUMPIFNOT                        R2 ; [+82]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K9 ["settings"]
       39 GETTABLEKS                       R2 R2 K10 ["edgePadding"]
       41 GETIMPORT                        R3 K12 [tick]
       43 CALL                             R3 0 1
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R6 R0 K1 ["treemapInputData"]
       47 GETTABLEKS                       R8 R0 K6 ["lastWidth"]
       49 SUB                              R7 R8 R2
       50 GETTABLEKS                       R9 R0 K8 ["lastHeight"]
       52 SUB                              R8 R9 R2
       53 GETTABLEKS                       R9 R0 K13 ["maxDepth"]
       55 GETTABLEKS                       R10 R0 K14 ["zoomDownNodePath"]
       57 LOADK                            R11 K15 [0.8]
       58 GETTABLEKS                       R12 R0 K16 ["sizeKey"]
       60 NAMECALL                         R4 R4 K17 ["solveTreemap"]
       62 CALL                             R4 8 1
       63 GETIMPORT                        R6 K12 [tick]
       65 CALL                             R6 0 1
       66 SUB                              R5 R6 R3
       67 SETTABLEKS                       R5 R0 K18 ["timeCostOfLastSolve"]
       69 GETUPVAL                         R5 0
       70 MOVE                             R7 R4
       71 GETTABLEKS                       R8 R0 K19 ["selectedNodeIds"]
       73 GETTABLEKS                       R9 R0 K20 ["props"]
       75 GETTABLEKS                       R9 R9 K21 ["valueFormat"]
       77 GETTABLEKS                       R10 R0 K20 ["props"]
       79 GETTABLEKS                       R10 R10 K22 ["colorRamp"]
       81 NAMECALL                         R5 R5 K23 ["renderTreemap"]
       83 CALL                             R5 5 2
       84 SETTABLEKS                       R1 R5 K24 ["Parent"]
       86 GETTABLEKS                       R7 R0 K25 ["treemapRenderedFrame"]
       88 JUMPIFNOT                        R7 ; [+3]
       89 NAMECALL                         R8 R7 K26 ["Destroy"]
       91 CALL                             R8 1 0
       92 SETTABLEKS                       R5 R0 K25 ["treemapRenderedFrame"]
       94 SETTABLEKS                       R4 R0 K27 ["currentTreemapData"]
       96 DUPTABLE                         R10 K29 [{"legendData"}]
       97 SETTABLEKS                       R6 R10 K28 ["legendData"]
       99 NAMECALL                         R8 R0 K30 ["setState"]
      101 CALL                             R8 2 0
      102 GETTABLEKS                       R8 R0 K31 ["lastMousePosition"]
      104 JUMPIFNOT                        R8 ; [+13]
      105 GETTABLEKS                       R10 R0 K31 ["lastMousePosition"]
      107 NAMECALL                         R8 R0 K32 ["handleMouseMove"]
      109 CALL                             R8 2 0
      110 GETUPVAL                         R8 0
      111 GETTABLEKS                       R10 R0 K33 ["currentlyHoveredNode"]
      113 MOVE                             R11 R1
      114 LOADN                            R12 0
      115 NAMECALL                         R8 R8 K34 ["animateTreemap"]
      117 CALL                             R8 4 0
      118 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K3 ["repaintTreemapPerformanceAware"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseMovement]
        4 JUMPIFNOTEQ                      R1 R2 ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K4 ["Position"]
        9 NAMECALL                         R1 R1 K5 ["handleMouseMove"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R2 R0 K4 ["Position"]
       15 SETTABLEKS                       R2 R1 K6 ["lastMousePosition"]
       17 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+28]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K4 ["currentlyHoveredNode"]
        9 JUMPIFEQKNIL                     R1 ; [+23]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K5 ["treemapInputData"]
       14 JUMPIFEQKNIL                     R1 ; [+18]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K6 ["props"]
       19 GETTABLEKS                       R1 R1 K7 ["treemapContext"]
       21 JUMPIFNOT                        R1 ; [+11]
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K6 ["props"]
       25 GETTABLEKS                       R1 R1 K7 ["treemapContext"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K4 ["currentlyHoveredNode"]
       30 NAMECALL                         R1 R1 K8 ["selectNodeFromTreemap"]
       32 CALL                             R1 2 0
       33 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       35 GETIMPORT                        R2 K10 [Enum.UserInputType.MouseButton2]
       37 JUMPIFNOTEQ                      R1 R2 ; [+36]
       39 GETUPVAL                         R1 0
       40 GETTABLEKS                       R1 R1 K4 ["currentlyHoveredNode"]
       42 JUMPIFEQKNIL                     R1 ; [+31]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K5 ["treemapInputData"]
       47 JUMPIFEQKNIL                     R1 ; [+26]
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K6 ["props"]
       52 GETTABLEKS                       R1 R1 K7 ["treemapContext"]
       54 JUMPIFNOT                        R1 ; [+19]
       55 GETUPVAL                         R1 0
       56 GETTABLEKS                       R1 R1 K6 ["props"]
       58 GETTABLEKS                       R1 R1 K7 ["treemapContext"]
       60 GETTABLEKS                       R1 R1 K11 ["rightClickNode"]
       62 JUMPIFNOT                        R1 ; [+11]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K6 ["props"]
       66 GETTABLEKS                       R1 R1 K7 ["treemapContext"]
       68 GETUPVAL                         R3 0
       69 GETTABLEKS                       R3 R3 K4 ["currentlyHoveredNode"]
       71 NAMECALL                         R1 R1 K11 ["rightClickNode"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["mouseOverNode"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["lastMousePosition"]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K4 [{["tooltipVisible"] = False}]
       12 NAMECALL                         R0 R0 K5 ["setState"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["renderRef"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKNIL                  R1 ; [+2]
        7 RETURN                           R0 0
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 GETIMPORT                        R3 K4 [task.spawn]
       12 NEWCLOSURE                       R4 P1
       13 CAPTURE                          VAL R0
       14 CALL                             R3 1 0
       15 LOADK                            R5 K5 ["AbsoluteSize"]
       16 NAMECALL                         R3 R1 K6 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K7 ["Connect"]
       22 CALL                             R3 2 1
       23 SETTABLEKS                       R3 R0 K8 ["resizeConn"]
       25 GETTABLEKS                       R3 R1 K9 ["InputChanged"]
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          VAL R0
       29 NAMECALL                         R3 R3 K7 ["Connect"]
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R0 K10 ["inputChangedConn"]
       34 GETTABLEKS                       R3 R1 K11 ["InputEnded"]
       36 NEWCLOSURE                       R5 P3
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R3 R3 K7 ["Connect"]
       40 CALL                             R3 2 1
       41 SETTABLEKS                       R3 R0 K12 ["inputEndedConn"]
       43 GETTABLEKS                       R3 R1 K13 ["MouseLeave"]
       45 NEWCLOSURE                       R5 P4
       46 CAPTURE                          VAL R0
       47 NAMECALL                         R3 R3 K7 ["Connect"]
       49 CALL                             R3 2 1
       50 SETTABLEKS                       R3 R0 K14 ["mouseLeaveConn"]
       52 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["resizeConn"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["resizeConn"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["resizeConn"]
       11 GETTABLEKS                       R1 R0 K2 ["inputChangedConn"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["inputChangedConn"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["inputChangedConn"]
       22 GETTABLEKS                       R1 R0 K3 ["inputEndedConn"]
       24 JUMPIFNOT                        R1 ; [+8]
       25 GETTABLEKS                       R1 R0 K3 ["inputEndedConn"]
       27 NAMECALL                         R1 R1 K1 ["Disconnect"]
       29 CALL                             R1 1 0
       30 LOADNIL                          R1
       31 SETTABLEKS                       R1 R0 K3 ["inputEndedConn"]
       33 GETTABLEKS                       R1 R0 K4 ["mouseLeaveConn"]
       35 JUMPIFNOT                        R1 ; [+8]
       36 GETTABLEKS                       R1 R0 K4 ["mouseLeaveConn"]
       38 NAMECALL                         R1 R1 K1 ["Disconnect"]
       40 CALL                             R1 1 0
       41 LOADNIL                          R1
       42 SETTABLEKS                       R1 R0 K4 ["mouseLeaveConn"]
       44 RETURN                           R0 0

PROTO_16:
        0 SETTABLEKS                       R1 R0 K0 ["currentlyHoveredNode"]
        2 JUMPIFNOT                        R1 ; [+85]
        3 JUMPIFNOT                        R2 ; [+84]
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K1 ["highlightGlowNode"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R4 R0 K2 ["tooltipSize"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETTABLEKS                       R3 R0 K2 ["tooltipSize"]
       14 GETTABLEKS                       R3 R3 K3 ["X"]
       16 JUMPIF                           R3 ; [+1]
       17 LOADN                            R3 220
       18 GETTABLEKS                       R5 R0 K2 ["tooltipSize"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R4 R0 K2 ["tooltipSize"]
       23 GETTABLEKS                       R4 R4 K4 ["Y"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADN                            R4 60
       27 GETTABLEKS                       R5 R0 K5 ["renderRef"]
       29 NAMECALL                         R5 R5 K6 ["getValue"]
       31 CALL                             R5 1 1
       32 JUMPIF                           R5 ; [+5]
       33 DUPTABLE                         R8 K9 [{["tooltipVisible"] = False}]
       34 NAMECALL                         R6 R0 K10 ["setState"]
       36 CALL                             R6 2 0
       37 RETURN                           R0 0
       38 GETTABLEKS                       R7 R2 K3 ["X"]
       40 GETTABLEKS                       R8 R5 K11 ["AbsolutePosition"]
       42 GETTABLEKS                       R8 R8 K3 ["X"]
       44 SUB                              R6 R7 R8
       45 GETTABLEKS                       R8 R2 K4 ["Y"]
       47 GETTABLEKS                       R9 R5 K11 ["AbsolutePosition"]
       49 GETTABLEKS                       R9 R9 K4 ["Y"]
       51 SUB                              R7 R8 R9
       52 ADDK                             R8 R6 K12 [15]
       53 ADDK                             R9 R7 K12 [15]
       54 GETTABLEKS                       R10 R5 K13 ["AbsoluteSize"]
       56 GETTABLEKS                       R10 R10 K3 ["X"]
       58 GETTABLEKS                       R11 R5 K13 ["AbsoluteSize"]
       60 GETTABLEKS                       R11 R11 K4 ["Y"]
       62 ADD                              R12 R8 R3
       63 JUMPIFNOTLT                      R10 R12 ; [+3]
       65 SUB                              R12 R6 R3
       66 SUBK                             R8 R12 K12 [15]
       67 ADD                              R12 R9 R4
       68 JUMPIFNOTLT                      R11 R12 ; [+3]
       70 SUB                              R12 R7 R4
       71 SUBK                             R9 R12 K12 [15]
       72 DUPTABLE                         R14 K17 [{["tooltipVisible"] = True, ["tooltipNode"], ["tooltipPosition"]}]
       73 GETTABLEKS                       R15 R1 K18 ["original"]
       75 SETTABLEKS                       R15 R14 K15 ["tooltipNode"]
       77 GETIMPORT                        R15 K21 [UDim2.fromOffset]
       79 MOVE                             R16 R8
       80 MOVE                             R17 R9
       81 CALL                             R15 2 1
       82 SETTABLEKS                       R15 R14 K16 ["tooltipPosition"]
       84 NAMECALL                         R12 R0 K10 ["setState"]
       86 CALL                             R12 2 0
       87 RETURN                           R0 0
       88 DUPTABLE                         R5 K9 [{["tooltipVisible"] = False}]
       89 NAMECALL                         R3 R0 K10 ["setState"]
       91 CALL                             R3 2 0
       92 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["tooltipSize"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["tooltipSize"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 JUMPIFEQ                         R1 R2 ; [+24]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
       14 SETTABLEKS                       R2 R1 K0 ["tooltipSize"]
       16 GETUPVAL                         R1 0
       17 GETTABLEKS                       R1 R1 K2 ["currentlyHoveredNode"]
       19 JUMPIFNOT                        R1 ; [+14]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K3 ["lastMousePosition"]
       23 JUMPIFNOT                        R1 ; [+10]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K2 ["currentlyHoveredNode"]
       28 GETUPVAL                         R4 0
       29 GETTABLEKS                       R4 R4 K3 ["lastMousePosition"]
       31 NAMECALL                         R1 R1 K4 ["mouseOverNode"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 DUPTABLE                         R2 K7 [{"Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex", "Visible"}]
        3 GETTABLEKS                       R3 R1 K1 ["Size"]
        5 SETTABLEKS                       R3 R2 K1 ["Size"]
        7 GETTABLEKS                       R3 R1 K2 ["Position"]
        9 SETTABLEKS                       R3 R2 K2 ["Position"]
       11 GETTABLEKS                       R3 R1 K3 ["AnchorPoint"]
       13 SETTABLEKS                       R3 R2 K3 ["AnchorPoint"]
       15 GETTABLEKS                       R3 R1 K4 ["LayoutOrder"]
       17 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       19 GETTABLEKS                       R3 R1 K5 ["ZIndex"]
       21 SETTABLEKS                       R3 R2 K5 ["ZIndex"]
       23 GETTABLEKS                       R3 R1 K6 ["Visible"]
       25 SETTABLEKS                       R3 R2 K6 ["Visible"]
       27 GETUPVAL                         R3 0
       28 GETTABLEKS                       R3 R3 K8 ["createElement"]
       30 LOADK                            R4 K9 ["Frame"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R5 R5 K10 ["join"]
       34 MOVE                             R6 R2
       35 NEWTABLE                         R7 2 0
       37 LOADN                            R8 0
       38 SETTABLEKS                       R8 R7 K11 ["BorderSizePixel"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K12 ["Tag"]
       43 LOADK                            R9 K13 ["SceneAnalysis-TreemapSurface"]
       44 SETTABLE                         R9 R7 R8
       45 CALL                             R5 2 1
       46 DUPTABLE                         R6 K17 [{"InnerFrame", "PlaceholderText", "TreemapTooltip"}]
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R7 R7 K8 ["createElement"]
       50 LOADK                            R8 K9 ["Frame"]
       51 NEWTABLE                         R9 4 0
       53 GETIMPORT                        R10 K20 [UDim2.new]
       55 LOADN                            R11 1
       56 LOADN                            R12 0
       57 LOADN                            R13 1
       58 LOADN                            R14 0
       59 CALL                             R10 4 1
       60 SETTABLEKS                       R10 R9 K1 ["Size"]
       62 LOADN                            R10 0
       63 SETTABLEKS                       R10 R9 K11 ["BorderSizePixel"]
       65 GETUPVAL                         R10 0
       66 GETTABLEKS                       R10 R10 K12 ["Tag"]
       68 LOADK                            R11 K13 ["SceneAnalysis-TreemapSurface"]
       69 SETTABLE                         R11 R9 R10
       70 GETTABLEKS                       R10 R0 K21 ["renderRef"]
       72 SETTABLEKS                       R10 R9 K22 ["ref"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K14 ["InnerFrame"]
       77 GETTABLEKS                       R8 R0 K23 ["state"]
       79 GETTABLEKS                       R8 R8 K24 ["hasData"]
       81 NOT                              R7 R8
       82 JUMPIFNOT                        R7 ; [+41]
       83 GETUPVAL                         R7 0
       84 GETTABLEKS                       R7 R7 K8 ["createElement"]
       86 LOADK                            R8 K25 ["TextLabel"]
       87 NEWTABLE                         R9 8 0
       89 GETIMPORT                        R10 K20 [UDim2.new]
       91 LOADN                            R11 1
       92 LOADN                            R12 0
       93 LOADN                            R13 1
       94 LOADN                            R14 0
       95 CALL                             R10 4 1
       96 SETTABLEKS                       R10 R9 K1 ["Size"]
       98 GETTABLEKS                       R11 R1 K26 ["localization"]
      100 JUMPIFNOT                        R11 ; [+8]
      101 GETTABLEKS                       R10 R1 K26 ["localization"]
      103 LOADK                            R12 K27 ["Messages"]
      104 LOADK                            R13 K28 ["NoResults"]
      105 NAMECALL                         R10 R10 K29 ["getText"]
      107 CALL                             R10 3 1
      108 JUMPIF                           R10 ; [+1]
      109 LOADK                            R10 K30 [""]
      110 SETTABLEKS                       R10 R9 K31 ["Text"]
      112 LOADN                            R10 1
      113 SETTABLEKS                       R10 R9 K32 ["BackgroundTransparency"]
      115 LOADN                            R10 10
      116 SETTABLEKS                       R10 R9 K5 ["ZIndex"]
      118 GETUPVAL                         R10 0
      119 GETTABLEKS                       R10 R10 K12 ["Tag"]
      121 LOADK                            R11 K33 ["SceneAnalysis-TreemapPlaceholderText"]
      122 SETTABLE                         R11 R9 R10
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R6 K15 ["PlaceholderText"]
      126 GETUPVAL                         R7 0
      127 GETTABLEKS                       R7 R7 K8 ["createElement"]
      129 GETUPVAL                         R8 2
      130 DUPTABLE                         R9 K40 [{"visible", "node", "position", "valueFormat", "localization", "tooltipLabels", "onSizeChange"}]
      131 GETTABLEKS                       R10 R0 K23 ["state"]
      133 GETTABLEKS                       R10 R10 K41 ["tooltipVisible"]
      135 SETTABLEKS                       R10 R9 K34 ["visible"]
      137 GETTABLEKS                       R10 R0 K23 ["state"]
      139 GETTABLEKS                       R10 R10 K42 ["tooltipNode"]
      141 SETTABLEKS                       R10 R9 K35 ["node"]
      143 GETTABLEKS                       R10 R0 K23 ["state"]
      145 GETTABLEKS                       R10 R10 K43 ["tooltipPosition"]
      147 SETTABLEKS                       R10 R9 K36 ["position"]
      149 GETTABLEKS                       R11 R1 K37 ["valueFormat"]
      151 ORK                              R10 R11 K44 ["memory"]
      152 SETTABLEKS                       R10 R9 K37 ["valueFormat"]
      154 GETTABLEKS                       R10 R1 K26 ["localization"]
      156 SETTABLEKS                       R10 R9 K26 ["localization"]
      158 GETTABLEKS                       R10 R1 K38 ["tooltipLabels"]
      160 SETTABLEKS                       R10 R9 K38 ["tooltipLabels"]
      162 NEWCLOSURE                       R10 P0
      163 CAPTURE                          VAL R0
      164 SETTABLEKS                       R10 R9 K39 ["onSizeChange"]
      166 CALL                             R7 2 1
      167 SETTABLEKS                       R7 R6 K16 ["TreemapTooltip"]
      169 CALL                             R3 3 -1
      170 RETURN                           R3 -1

PROTO_19:
        0 JUMPIFNOTEQKNIL                  R2 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 GETTABLEKS                       R3 R2 K0 ["Id"]
        6 JUMPIFNOTEQ                      R3 R1 ; [+2]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R3 R2 K1 ["Children"]
       11 JUMPIFNOTEQKNIL                  R3 ; [+3]
       13 LOADNIL                          R3
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R2 K1 ["Children"]
       17 LOADNIL                          R4
       18 LOADNIL                          R5
       19 FORGPREP                         R3
       20 GETTABLEKS                       R10 R7 K0 ["Id"]
       22 MOVE                             R11 R7
       23 NAMECALL                         R8 R0 K2 ["findNodeById"]
       25 CALL                             R8 3 1
       26 JUMPIFNOT                        R8 ; [+1]
       27 RETURN                           R8 1
       28 FORGLOOP                         R3 2 ; [-9]
       30 LOADNIL                          R3
       31 RETURN                           R3 1

PROTO_20:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R4 R1 K0 ["Children"]
        3 JUMPIFNOT                        R4 ; [+4]
        4 GETTABLEKS                       R4 R1 K0 ["Children"]
        6 LENGTH                           R3 R4
        7 JUMPIF                           R3 ; [+1]
        8 LOADN                            R3 0
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K1 ["getFFlagSceneAnalysisBugfixesMay2026"]
       12 CALL                             R4 0 1
       13 JUMPIF                           R4 ; [+21]
       14 JUMPIFNOTEQKN                    R3 K2 [0] ; [+17]
       16 GETTABLEKS                       R5 R0 K3 ["treemapRenderedFrame"]
       18 JUMPIFNOT                        R5 ; [+13]
       19 GETTABLEKS                       R7 R0 K5 ["_consecutiveEmptyCount"]
       21 ORK                              R6 R7 K2 [0]
       22 ADDK                             R5 R6 K4 [1]
       23 SETTABLEKS                       R5 R0 K5 ["_consecutiveEmptyCount"]
       25 GETTABLEKS                       R5 R0 K5 ["_consecutiveEmptyCount"]
       27 LOADN                            R6 3
       28 JUMPIFNOTLT                      R5 R6 ; [+6]
       30 RETURN                           R0 0
       31 JUMP                             ; [+3]
       32 LOADN                            R5 0
       33 SETTABLEKS                       R5 R0 K5 ["_consecutiveEmptyCount"]
       35 LOADB                            R5 1
       36 SETTABLEKS                       R5 R0 K6 ["treemapSolveDirty"]
       38 SETTABLEKS                       R1 R0 K7 ["treemapInputData"]
       40 SETTABLEKS                       R2 R0 K8 ["sizeKey"]
       42 JUMPIFNOT                        R4 ; [+12]
       43 DUPTABLE                         R7 K10 [{"hasData"}]
       44 LOADN                            R9 0
       45 JUMPIFLT                         R9 R3 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 SETTABLEKS                       R8 R7 K9 ["hasData"]
       51 NAMECALL                         R5 R0 K11 ["setState"]
       53 CALL                             R5 2 0
       54 JUMP                             ; [+7]
       55 LOADN                            R5 0
       56 JUMPIFNOTLT                      R5 R3 ; [+5]
       58 DUPTABLE                         R7 K13 [{["hasData"] = True}]
       59 NAMECALL                         R5 R0 K11 ["setState"]
       61 CALL                             R5 2 0
       62 NAMECALL                         R5 R0 K14 ["repaintTreemap"]
       64 CALL                             R5 1 0
       65 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Bin"]
       18 GETTABLEKS                       R3 R3 K9 ["Common"]
       20 GETTABLEKS                       R3 R3 K10 ["defineLuaFlags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K11 ["Parent"]
       29 GETTABLEKS                       R4 R4 K12 ["Treemap"]
       31 GETTABLEKS                       R4 R4 K13 ["SquarifiedTreemapTree"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K11 ["Parent"]
       40 GETTABLEKS                       R5 R5 K12 ["Treemap"]
       42 GETTABLEKS                       R5 R5 K14 ["TreemapToFrames"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETIMPORT                        R6 K1 [script]
       49 GETTABLEKS                       R6 R6 K11 ["Parent"]
       51 GETTABLEKS                       R6 R6 K12 ["Treemap"]
       53 GETTABLEKS                       R6 R6 K15 ["TreemapTooltip"]
       55 CALL                             R5 1 1
       56 GETIMPORT                        R6 K5 [require]
       58 GETTABLEKS                       R7 R0 K6 ["Packages"]
       60 GETTABLEKS                       R7 R7 K16 ["Dash"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K17 ["Src"]
       67 GETTABLEKS                       R8 R8 K18 ["Components"]
       69 GETTABLEKS                       R8 R8 K12 ["Treemap"]
       71 GETTABLEKS                       R8 R8 K19 ["TreemapTypes"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K17 ["Src"]
       78 GETTABLEKS                       R9 R9 K18 ["Components"]
       80 GETTABLEKS                       R9 R9 K12 ["Treemap"]
       82 GETTABLEKS                       R9 R9 K20 ["TreemapContext"]
       84 CALL                             R8 1 1
       85 GETTABLEKS                       R9 R1 K21 ["PureComponent"]
       87 LOADK                            R11 K12 ["Treemap"]
       88 NAMECALL                         R9 R9 K22 ["extend"]
       90 CALL                             R9 2 1
       91 DUPCLOSURE                       R10 K23 [PROTO_0]
       92 CAPTURE                          VAL R1
       93 SETTABLEKS                       R10 R9 K24 ["init"]
       95 DUPCLOSURE                       R10 K25 [PROTO_1]
       96 SETTABLEKS                       R10 R9 K26 ["getCurrentPath"]
       98 DUPCLOSURE                       R10 K27 [PROTO_2]
       99 SETTABLEKS                       R10 R9 K28 ["popCurrentPath"]
      101 DUPCLOSURE                       R10 K29 [PROTO_3]
      102 CAPTURE                          VAL R4
      103 SETTABLEKS                       R10 R9 K30 ["heartbeat"]
      105 DUPCLOSURE                       R10 K31 [PROTO_4]
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R10 R9 K32 ["handleMouseMove"]
      109 DUPCLOSURE                       R10 K33 [PROTO_5]
      110 SETTABLEKS                       R10 R9 K34 ["repaintTreemapPerformanceAware"]
      112 DUPCLOSURE                       R10 K35 [PROTO_6]
      113 SETTABLEKS                       R10 R9 K36 ["setSelectedNodeIdsFromContext"]
      115 DUPCLOSURE                       R10 K37 [PROTO_7]
      116 CAPTURE                          VAL R4
      117 SETTABLEKS                       R10 R9 K38 ["rerenderSelection"]
      119 DUPCLOSURE                       R10 K39 [PROTO_8]
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R3
      122 SETTABLEKS                       R10 R9 K40 ["repaintTreemap"]
      124 DUPCLOSURE                       R10 K41 [PROTO_14]
      125 SETTABLEKS                       R10 R9 K42 ["didMount"]
      127 DUPCLOSURE                       R10 K43 [PROTO_15]
      128 SETTABLEKS                       R10 R9 K44 ["willUnmount"]
      130 DUPCLOSURE                       R10 K45 [PROTO_16]
      131 CAPTURE                          VAL R4
      132 SETTABLEKS                       R10 R9 K46 ["mouseOverNode"]
      134 DUPCLOSURE                       R10 K47 [PROTO_18]
      135 CAPTURE                          VAL R1
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R5
      138 SETTABLEKS                       R10 R9 K48 ["render"]
      140 DUPCLOSURE                       R10 K49 [PROTO_19]
      141 SETTABLEKS                       R10 R9 K50 ["findNodeById"]
      143 DUPCLOSURE                       R10 K51 [PROTO_20]
      144 CAPTURE                          VAL R2
      145 SETTABLEKS                       R10 R9 K52 ["submitTreemapNodes"]
      147 RETURN                           R9 1
