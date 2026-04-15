PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
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
       44 DUPTABLE                         R1 K19 [{"hasData", "tooltipVisible", "tooltipNode", "tooltipPosition", "legendData"}]
       45 LOADB                            R2 1
       46 SETTABLEKS                       R2 R1 K14 ["hasData"]
       48 LOADB                            R2 0
       49 SETTABLEKS                       R2 R1 K15 ["tooltipVisible"]
       51 LOADNIL                          R2
       52 SETTABLEKS                       R2 R1 K16 ["tooltipNode"]
       54 GETIMPORT                        R2 K22 [UDim2.fromOffset]
       56 LOADN                            R3 0
       57 LOADN                            R4 0
       58 CALL                             R2 2 1
       59 SETTABLEKS                       R2 R1 K17 ["tooltipPosition"]
       61 LOADNIL                          R2
       62 SETTABLEKS                       R2 R1 K18 ["legendData"]
       64 SETTABLEKS                       R1 R0 K23 ["state"]
       66 RETURN                           R0 0

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
       10 GETTABLEKS                       R6 R2 K3 ["AbsolutePosition"]
       12 GETTABLEKS                       R5 R6 K2 ["X"]
       14 SUB                              R3 R4 R5
       15 GETTABLEKS                       R5 R1 K4 ["Y"]
       17 GETTABLEKS                       R7 R2 K3 ["AbsolutePosition"]
       19 GETTABLEKS                       R6 R7 K4 ["Y"]
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
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["treemapSolveDirty"]
        5 NAMECALL                         R2 R0 K2 ["repaintTreemap"]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R1 K1 [tick]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K2 ["treemapSolveDirty"]
        5 JUMPIFNOTEQKB                    R2 FALSE ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K3 ["treemapInputData"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R0 K4 ["renderRef"]
       15 NAMECALL                         R2 R2 K5 ["getValue"]
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+2]
       20 RETURN                           R0 0
       21 LOADB                            R3 0
       22 SETTABLEKS                       R3 R0 K2 ["treemapSolveDirty"]
       24 GETTABLEKS                       R4 R2 K6 ["AbsoluteSize"]
       26 GETTABLEKS                       R3 R4 K7 ["x"]
       28 SETTABLEKS                       R3 R0 K8 ["lastWidth"]
       30 GETTABLEKS                       R4 R2 K6 ["AbsoluteSize"]
       32 GETTABLEKS                       R3 R4 K9 ["y"]
       34 SETTABLEKS                       R3 R0 K10 ["lastHeight"]
       36 GETTABLEKS                       R3 R0 K3 ["treemapInputData"]
       38 JUMPIFNOT                        R3 ; [+81]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K11 ["settings"]
       42 GETTABLEKS                       R3 R4 K12 ["edgePadding"]
       44 GETUPVAL                         R4 1
       45 GETTABLEKS                       R6 R0 K3 ["treemapInputData"]
       47 GETTABLEKS                       R8 R0 K8 ["lastWidth"]
       49 SUB                              R7 R8 R3
       50 GETTABLEKS                       R9 R0 K10 ["lastHeight"]
       52 SUB                              R8 R9 R3
       53 GETTABLEKS                       R9 R0 K13 ["maxDepth"]
       55 GETTABLEKS                       R10 R0 K14 ["zoomDownNodePath"]
       57 LOADK                            R11 K15 [0.8]
       58 GETTABLEKS                       R12 R0 K16 ["sizeKey"]
       60 NAMECALL                         R4 R4 K17 ["solveTreemap"]
       62 CALL                             R4 8 1
       63 GETIMPORT                        R6 K1 [tick]
       65 CALL                             R6 0 1
       66 SUB                              R5 R6 R1
       67 SETTABLEKS                       R5 R0 K18 ["timeCostOfLastSolve"]
       69 GETTABLEKS                       R5 R0 K19 ["treemapRenderedFrame"]
       71 JUMPIFNOT                        R5 ; [+3]
       72 NAMECALL                         R6 R5 K20 ["Destroy"]
       74 CALL                             R6 1 0
       75 GETUPVAL                         R6 0
       76 MOVE                             R8 R4
       77 GETTABLEKS                       R9 R0 K21 ["selectedNodeIds"]
       79 GETTABLEKS                       R11 R0 K22 ["props"]
       81 GETTABLEKS                       R10 R11 K23 ["valueFormat"]
       83 GETTABLEKS                       R12 R0 K22 ["props"]
       85 GETTABLEKS                       R11 R12 K24 ["colorRamp"]
       87 NAMECALL                         R6 R6 K25 ["renderTreemap"]
       89 CALL                             R6 5 2
       90 SETTABLEKS                       R6 R0 K19 ["treemapRenderedFrame"]
       92 GETTABLEKS                       R8 R0 K19 ["treemapRenderedFrame"]
       94 SETTABLEKS                       R2 R8 K26 ["Parent"]
       96 SETTABLEKS                       R4 R0 K27 ["currentTreemapData"]
       98 DUPTABLE                         R10 K29 [{"legendData"}]
       99 SETTABLEKS                       R7 R10 K28 ["legendData"]
      101 NAMECALL                         R8 R0 K30 ["setState"]
      103 CALL                             R8 2 0
      104 GETTABLEKS                       R8 R0 K31 ["lastMousePosition"]
      106 JUMPIFNOT                        R8 ; [+13]
      107 GETTABLEKS                       R10 R0 K31 ["lastMousePosition"]
      109 NAMECALL                         R8 R0 K32 ["handleMouseMove"]
      111 CALL                             R8 2 0
      112 GETUPVAL                         R8 0
      113 GETTABLEKS                       R10 R0 K33 ["currentlyHoveredNode"]
      115 MOVE                             R11 R2
      116 LOADN                            R12 0
      117 NAMECALL                         R8 R8 K34 ["animateTreemap"]
      119 CALL                             R8 4 0
      120 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 CALL                             R0 0 0
        3 GETUPVAL                         R0 0
        4 NAMECALL                         R0 R0 K3 ["repaintTreemapPerformanceAware"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
        2 GETIMPORT                        R2 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R1 R2 ; [+28]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K4 ["currentlyHoveredNode"]
        9 JUMPIFEQKNIL                     R1 ; [+23]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K5 ["treemapInputData"]
       14 JUMPIFEQKNIL                     R1 ; [+18]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K6 ["props"]
       19 GETTABLEKS                       R1 R2 K7 ["treemapContext"]
       21 JUMPIFNOT                        R1 ; [+11]
       22 GETUPVAL                         R3 0
       23 GETTABLEKS                       R2 R3 K6 ["props"]
       25 GETTABLEKS                       R1 R2 K7 ["treemapContext"]
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K4 ["currentlyHoveredNode"]
       30 NAMECALL                         R1 R1 K8 ["selectNodeFromTreemap"]
       32 CALL                             R1 2 0
       33 GETTABLEKS                       R1 R0 K0 ["UserInputType"]
       35 GETIMPORT                        R2 K10 [Enum.UserInputType.MouseButton2]
       37 JUMPIFNOTEQ                      R1 R2 ; [+36]
       39 GETUPVAL                         R2 0
       40 GETTABLEKS                       R1 R2 K4 ["currentlyHoveredNode"]
       42 JUMPIFEQKNIL                     R1 ; [+31]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R1 R2 K5 ["treemapInputData"]
       47 JUMPIFEQKNIL                     R1 ; [+26]
       49 GETUPVAL                         R3 0
       50 GETTABLEKS                       R2 R3 K6 ["props"]
       52 GETTABLEKS                       R1 R2 K7 ["treemapContext"]
       54 JUMPIFNOT                        R1 ; [+19]
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K6 ["props"]
       58 GETTABLEKS                       R2 R3 K7 ["treemapContext"]
       60 GETTABLEKS                       R1 R2 K11 ["rightClickNode"]
       62 JUMPIFNOT                        R1 ; [+11]
       63 GETUPVAL                         R3 0
       64 GETTABLEKS                       R2 R3 K6 ["props"]
       66 GETTABLEKS                       R1 R2 K7 ["treemapContext"]
       68 GETUPVAL                         R4 0
       69 GETTABLEKS                       R3 R4 K4 ["currentlyHoveredNode"]
       71 NAMECALL                         R1 R1 K11 ["rightClickNode"]
       73 CALL                             R1 2 0
       74 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K0 ["mouseOverNode"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K1 ["lastMousePosition"]
       10 GETUPVAL                         R0 0
       11 DUPTABLE                         R2 K3 [{"tooltipVisible"}]
       12 LOADB                            R3 0
       13 SETTABLEKS                       R3 R2 K2 ["tooltipVisible"]
       15 NAMECALL                         R0 R0 K4 ["setState"]
       17 CALL                             R0 2 0
       18 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
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

PROTO_15:
        0 SETTABLEKS                       R1 R0 K0 ["currentlyHoveredNode"]
        2 JUMPIFNOT                        R1 ; [+91]
        3 JUMPIFNOT                        R2 ; [+90]
        4 GETUPVAL                         R3 0
        5 MOVE                             R5 R1
        6 NAMECALL                         R3 R3 K1 ["highlightGlowNode"]
        8 CALL                             R3 2 0
        9 GETTABLEKS                       R4 R0 K2 ["tooltipSize"]
       11 JUMPIFNOT                        R4 ; [+5]
       12 GETTABLEKS                       R4 R0 K2 ["tooltipSize"]
       14 GETTABLEKS                       R3 R4 K3 ["X"]
       16 JUMPIF                           R3 ; [+1]
       17 LOADN                            R3 220
       18 GETTABLEKS                       R5 R0 K2 ["tooltipSize"]
       20 JUMPIFNOT                        R5 ; [+5]
       21 GETTABLEKS                       R5 R0 K2 ["tooltipSize"]
       23 GETTABLEKS                       R4 R5 K4 ["Y"]
       25 JUMPIF                           R4 ; [+1]
       26 LOADN                            R4 60
       27 GETTABLEKS                       R5 R0 K5 ["renderRef"]
       29 NAMECALL                         R5 R5 K6 ["getValue"]
       31 CALL                             R5 1 1
       32 JUMPIF                           R5 ; [+8]
       33 DUPTABLE                         R8 K8 [{"tooltipVisible"}]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K7 ["tooltipVisible"]
       37 NAMECALL                         R6 R0 K9 ["setState"]
       39 CALL                             R6 2 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R7 R2 K3 ["X"]
       43 GETTABLEKS                       R9 R5 K10 ["AbsolutePosition"]
       45 GETTABLEKS                       R8 R9 K3 ["X"]
       47 SUB                              R6 R7 R8
       48 GETTABLEKS                       R8 R2 K4 ["Y"]
       50 GETTABLEKS                       R10 R5 K10 ["AbsolutePosition"]
       52 GETTABLEKS                       R9 R10 K4 ["Y"]
       54 SUB                              R7 R8 R9
       55 ADDK                             R8 R6 K11 [15]
       56 ADDK                             R9 R7 K11 [15]
       57 GETTABLEKS                       R11 R5 K12 ["AbsoluteSize"]
       59 GETTABLEKS                       R10 R11 K3 ["X"]
       61 GETTABLEKS                       R12 R5 K12 ["AbsoluteSize"]
       63 GETTABLEKS                       R11 R12 K4 ["Y"]
       65 ADD                              R12 R8 R3
       66 JUMPIFNOTLT                      R10 R12 ; [+3]
       68 SUB                              R12 R6 R3
       69 SUBK                             R8 R12 K11 [15]
       70 ADD                              R12 R9 R4
       71 JUMPIFNOTLT                      R11 R12 ; [+3]
       73 SUB                              R12 R7 R4
       74 SUBK                             R9 R12 K11 [15]
       75 DUPTABLE                         R14 K15 [{"tooltipVisible", "tooltipNode", "tooltipPosition"}]
       76 LOADB                            R15 1
       77 SETTABLEKS                       R15 R14 K7 ["tooltipVisible"]
       79 GETTABLEKS                       R15 R1 K16 ["original"]
       81 SETTABLEKS                       R15 R14 K13 ["tooltipNode"]
       83 GETIMPORT                        R15 K19 [UDim2.fromOffset]
       85 MOVE                             R16 R8
       86 MOVE                             R17 R9
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K14 ["tooltipPosition"]
       90 NAMECALL                         R12 R0 K9 ["setState"]
       92 CALL                             R12 2 0
       93 RETURN                           R0 0
       94 DUPTABLE                         R5 K8 [{"tooltipVisible"}]
       95 LOADB                            R6 0
       96 SETTABLEKS                       R6 R5 K7 ["tooltipVisible"]
       98 NAMECALL                         R3 R0 K9 ["setState"]
      100 CALL                             R3 2 0
      101 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["tooltipSize"]
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["tooltipSize"]
        7 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        9 JUMPIFEQ                         R1 R2 ; [+24]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
       14 SETTABLEKS                       R2 R1 K0 ["tooltipSize"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R1 R2 K2 ["currentlyHoveredNode"]
       19 JUMPIFNOT                        R1 ; [+14]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R1 R2 K3 ["lastMousePosition"]
       23 JUMPIFNOT                        R1 ; [+10]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K2 ["currentlyHoveredNode"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K3 ["lastMousePosition"]
       31 NAMECALL                         R1 R1 K4 ["mouseOverNode"]
       33 CALL                             R1 3 0
       34 RETURN                           R0 0

PROTO_17:
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
       27 GETUPVAL                         R4 0
       28 GETTABLEKS                       R3 R4 K8 ["createElement"]
       30 LOADK                            R4 K9 ["Frame"]
       31 GETUPVAL                         R6 1
       32 GETTABLEKS                       R5 R6 K10 ["join"]
       34 MOVE                             R6 R2
       35 NEWTABLE                         R7 2 0
       37 LOADN                            R8 0
       38 SETTABLEKS                       R8 R7 K11 ["BorderSizePixel"]
       40 GETUPVAL                         R9 0
       41 GETTABLEKS                       R8 R9 K12 ["Tag"]
       43 LOADK                            R9 K13 ["SceneAnalysis-TreemapSurface"]
       44 SETTABLE                         R9 R7 R8
       45 CALL                             R5 2 1
       46 DUPTABLE                         R6 K17 [{"InnerFrame", "PlaceholderText", "TreemapTooltip"}]
       47 GETUPVAL                         R8 0
       48 GETTABLEKS                       R7 R8 K8 ["createElement"]
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
       65 GETUPVAL                         R11 0
       66 GETTABLEKS                       R10 R11 K12 ["Tag"]
       68 LOADK                            R11 K13 ["SceneAnalysis-TreemapSurface"]
       69 SETTABLE                         R11 R9 R10
       70 GETTABLEKS                       R10 R0 K21 ["renderRef"]
       72 SETTABLEKS                       R10 R9 K22 ["ref"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K14 ["InnerFrame"]
       77 GETTABLEKS                       R9 R0 K23 ["state"]
       79 GETTABLEKS                       R8 R9 K24 ["hasData"]
       81 NOT                              R7 R8
       82 JUMPIFNOT                        R7 ; [+41]
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R7 R8 K8 ["createElement"]
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
      118 GETUPVAL                         R11 0
      119 GETTABLEKS                       R10 R11 K12 ["Tag"]
      121 LOADK                            R11 K33 ["SceneAnalysis-TreemapPlaceholderText"]
      122 SETTABLE                         R11 R9 R10
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R6 K15 ["PlaceholderText"]
      126 GETUPVAL                         R8 0
      127 GETTABLEKS                       R7 R8 K8 ["createElement"]
      129 GETUPVAL                         R8 2
      130 DUPTABLE                         R9 K39 [{"visible", "node", "position", "valueFormat", "localization", "onSizeChange"}]
      131 GETTABLEKS                       R11 R0 K23 ["state"]
      133 GETTABLEKS                       R10 R11 K40 ["tooltipVisible"]
      135 SETTABLEKS                       R10 R9 K34 ["visible"]
      137 GETTABLEKS                       R11 R0 K23 ["state"]
      139 GETTABLEKS                       R10 R11 K41 ["tooltipNode"]
      141 SETTABLEKS                       R10 R9 K35 ["node"]
      143 GETTABLEKS                       R11 R0 K23 ["state"]
      145 GETTABLEKS                       R10 R11 K42 ["tooltipPosition"]
      147 SETTABLEKS                       R10 R9 K36 ["position"]
      149 GETTABLEKS                       R11 R1 K37 ["valueFormat"]
      151 ORK                              R10 R11 K43 ["memory"]
      152 SETTABLEKS                       R10 R9 K37 ["valueFormat"]
      154 GETTABLEKS                       R10 R1 K26 ["localization"]
      156 SETTABLEKS                       R10 R9 K26 ["localization"]
      158 NEWCLOSURE                       R10 P0
      159 CAPTURE                          VAL R0
      160 SETTABLEKS                       R10 R9 K38 ["onSizeChange"]
      162 CALL                             R7 2 1
      163 SETTABLEKS                       R7 R6 K16 ["TreemapTooltip"]
      165 CALL                             R3 3 -1
      166 RETURN                           R3 -1

PROTO_18:
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

PROTO_19:
        0 LOADB                            R3 1
        1 SETTABLEKS                       R3 R0 K0 ["treemapSolveDirty"]
        3 SETTABLEKS                       R1 R0 K1 ["treemapInputData"]
        5 SETTABLEKS                       R2 R0 K2 ["sizeKey"]
        7 DUPTABLE                         R5 K4 [{"hasData"}]
        8 LOADB                            R6 0
        9 JUMPIFEQKNIL                     R1 ; [+14]
       11 LOADB                            R6 0
       12 GETTABLEKS                       R7 R1 K5 ["Children"]
       14 JUMPIFEQKNIL                     R7 ; [+9]
       16 GETTABLEKS                       R8 R1 K5 ["Children"]
       18 LENGTH                           R7 R8
       19 LOADN                            R8 0
       20 JUMPIFLT                         R8 R7 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K3 ["hasData"]
       26 NAMECALL                         R3 R0 K6 ["setState"]
       28 CALL                             R3 2 0
       29 NAMECALL                         R3 R0 K7 ["repaintTreemap"]
       31 CALL                             R3 1 0
       32 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R6 K1 [script]
       18 GETTABLEKS                       R5 R6 K8 ["Parent"]
       20 GETTABLEKS                       R4 R5 K9 ["Treemap"]
       22 GETTABLEKS                       R3 R4 K10 ["SquarifiedTreemapTree"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R7 K1 [script]
       29 GETTABLEKS                       R6 R7 K8 ["Parent"]
       31 GETTABLEKS                       R5 R6 K9 ["Treemap"]
       33 GETTABLEKS                       R4 R5 K11 ["TreemapToFrames"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETIMPORT                        R8 K1 [script]
       40 GETTABLEKS                       R7 R8 K8 ["Parent"]
       42 GETTABLEKS                       R6 R7 K9 ["Treemap"]
       44 GETTABLEKS                       R5 R6 K12 ["TreemapTooltip"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K6 ["Packages"]
       51 GETTABLEKS                       R6 R7 K13 ["Dash"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Src"]
       58 GETTABLEKS                       R9 R10 K15 ["Components"]
       60 GETTABLEKS                       R8 R9 K9 ["Treemap"]
       62 GETTABLEKS                       R7 R8 K16 ["TreemapTypes"]
       64 CALL                             R6 1 1
       65 GETIMPORT                        R7 K5 [require]
       67 GETTABLEKS                       R11 R0 K14 ["Src"]
       69 GETTABLEKS                       R10 R11 K15 ["Components"]
       71 GETTABLEKS                       R9 R10 K9 ["Treemap"]
       73 GETTABLEKS                       R8 R9 K17 ["TreemapContext"]
       75 CALL                             R7 1 1
       76 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       78 LOADK                            R10 K9 ["Treemap"]
       79 NAMECALL                         R8 R8 K19 ["extend"]
       81 CALL                             R8 2 1
       82 DUPCLOSURE                       R9 K20 [PROTO_0]
       83 CAPTURE                          VAL R1
       84 SETTABLEKS                       R9 R8 K21 ["init"]
       86 DUPCLOSURE                       R9 K22 [PROTO_1]
       87 SETTABLEKS                       R9 R8 K23 ["getCurrentPath"]
       89 DUPCLOSURE                       R9 K24 [PROTO_2]
       90 SETTABLEKS                       R9 R8 K25 ["popCurrentPath"]
       92 DUPCLOSURE                       R9 K26 [PROTO_3]
       93 CAPTURE                          VAL R3
       94 SETTABLEKS                       R9 R8 K27 ["heartbeat"]
       96 DUPCLOSURE                       R9 K28 [PROTO_4]
       97 CAPTURE                          VAL R2
       98 SETTABLEKS                       R9 R8 K29 ["handleMouseMove"]
      100 DUPCLOSURE                       R9 K30 [PROTO_5]
      101 SETTABLEKS                       R9 R8 K31 ["repaintTreemapPerformanceAware"]
      103 DUPCLOSURE                       R9 K32 [PROTO_6]
      104 SETTABLEKS                       R9 R8 K33 ["setSelectedNodeIdsFromContext"]
      106 DUPCLOSURE                       R9 K34 [PROTO_7]
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R2
      109 SETTABLEKS                       R9 R8 K35 ["repaintTreemap"]
      111 DUPCLOSURE                       R9 K36 [PROTO_13]
      112 SETTABLEKS                       R9 R8 K37 ["didMount"]
      114 DUPCLOSURE                       R9 K38 [PROTO_14]
      115 SETTABLEKS                       R9 R8 K39 ["willUnmount"]
      117 DUPCLOSURE                       R9 K40 [PROTO_15]
      118 CAPTURE                          VAL R3
      119 SETTABLEKS                       R9 R8 K41 ["mouseOverNode"]
      121 DUPCLOSURE                       R9 K42 [PROTO_17]
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R5
      124 CAPTURE                          VAL R4
      125 SETTABLEKS                       R9 R8 K43 ["render"]
      127 DUPCLOSURE                       R9 K44 [PROTO_18]
      128 SETTABLEKS                       R9 R8 K45 ["findNodeById"]
      130 DUPCLOSURE                       R9 K46 [PROTO_19]
      131 SETTABLEKS                       R9 R8 K47 ["submitTreemapNodes"]
      133 RETURN                           R8 1
