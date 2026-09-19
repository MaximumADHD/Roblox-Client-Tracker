PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+10]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R3 R0 K3 ["Id"]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 SETTABLE                         R2 R1 R0
       15 RETURN                           R0 1
       16 DUPTABLE                         R1 K7 [{["Id"], ["Loading"] = False, ["Material"]}]
       17 SETTABLEKS                       R0 R1 K3 ["Id"]
       19 SETTABLEKS                       R0 R1 K6 ["Material"]
       21 GETUPVAL                         R2 0
       22 LOADB                            R3 0
       23 SETTABLE                         R3 R2 R1
       24 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["map"]
        5 MOVE                             R3 R0
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CALL                             R2 2 1
        9 MOVE                             R3 R2
       10 MOVE                             R4 R1
       11 RETURN                           R3 2

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["Id"]
        3 RETURN                           R2 1
        4 GETTABLEKS                       R2 R0 K1 ["Material"]
        6 JUMPIFNOT                        R2 ; [+5]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R3 R0 K1 ["Material"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1
       12 GETTABLEKS                       R2 R0 K0 ["Id"]
       14 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 JUMPIFNOT                        R3 ; [+7]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETTABLEKS                       R3 R0 K0 ["Id"]
        6 JUMPIFNOTEQ                      R3 R2 ; [+3]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 LOADB                            R3 0
       11 GETTABLEKS                       R4 R0 K1 ["Material"]
       13 JUMPIFEQKNIL                     R4 ; [+9]
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R5 R0 K1 ["Material"]
       18 CALL                             R4 1 1
       19 JUMPIFEQ                         R4 R2 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R2 R0 K0 ["Text"]
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R2 R0 K0 ["Text"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K1 ["Material"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R3 R0 K1 ["Material"]
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1
       18 LOADNIL                          R2
       19 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["CaptureSnapshotAsync"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+22]
        2 GETIMPORT                        R0 K1 [pcall]
        4 NEWCLOSURE                       R1 P0
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 1 2
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K2 ["OnSnapshotTaken"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["OnSnapshotTaken"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 0
       17 RETURN                           R0 0
       18 GETIMPORT                        R2 K4 [warn]
       20 LOADK                            R4 K5 ["Material Grid failed to get temporary image from viewport frame"]
       21 MOVE                             R5 R1
       22 CONCAT                           R3 R4 R5
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K1 [tick]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K2 ["current"]
        6 JUMPIFNOTLE                      R1 R0 ; [+12]
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K3 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 GETUPVAL                         R0 2
       17 LOADB                            R1 0
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["Heartbeat"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 SETUPVAL                         R0 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+19]
       14 GETUPVAL                         R0 4
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K4 ["Disconnect"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 4
       22 GETUPVAL                         R0 5
       23 GETTABLEKS                       R0 R0 K5 ["Heartbeat"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U6
       29 NAMECALL                         R0 R0 K6 ["Connect"]
       31 CALL                             R0 2 1
       32 SETUPVAL                         R0 4
       33 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETIMPORT                        R0 K2 [tick]
       14 CALL                             R0 0 1
       15 GETUPVAL                         R1 3
       16 GETTABLEKS                       R1 R1 K3 ["current"]
       18 JUMPIFNOTLE                      R1 R0 ; [+4]
       20 GETUPVAL                         R0 4
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnScrollUpdate"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["OnScrollUpdate"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K1 ["Grid"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+46]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K2 ["ShouldSyncScroll"]
       18 JUMPIFNOT                        R2 ; [+11]
       19 GETUPVAL                         R2 3
       20 GETIMPORT                        R3 K5 [Vector2.new]
       22 LOADN                            R4 0
       23 GETTABLEKS                       R6 R0 K6 ["Y"]
       25 GETUPVAL                         R7 4
       26 MUL                              R5 R6 R7
       27 CALL                             R3 2 1
       28 SETTABLEKS                       R3 R2 K7 ["current"]
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K8 ["ShouldCenterTooltip"]
       33 JUMPIFNOT                        R2 ; [+3]
       34 GETUPVAL                         R2 5
       35 MOVE                             R3 R0
       36 CALL                             R2 1 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R2 R2 K9 ["UseInstantTooltip"]
       40 JUMPIFNOT                        R2 ; [+8]
       41 GETUPVAL                         R2 6
       42 GETIMPORT                        R4 K11 [tick]
       44 CALL                             R4 0 1
       45 GETUPVAL                         R5 7
       46 ADD                              R3 R4 R5
       47 SETTABLEKS                       R3 R2 K7 ["current"]
       49 GETUPVAL                         R2 8
       50 LOADB                            R3 0
       51 CALL                             R2 1 0
       52 GETUPVAL                         R2 9
       53 GETIMPORT                        R4 K11 [tick]
       55 CALL                             R4 0 1
       56 ADDK                             R3 R4 K12 [0.01]
       57 SETTABLEKS                       R3 R2 K7 ["current"]
       59 RETURN                           R0 0
       60 GETUPVAL                         R2 1
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K13 ["List"]
       64 JUMPIFNOTEQ                      R2 R3 ; [+16]
       66 GETUPVAL                         R2 0
       67 GETTABLEKS                       R2 R2 K2 ["ShouldSyncScroll"]
       69 JUMPIFNOT                        R2 ; [+11]
       70 GETUPVAL                         R2 10
       71 GETIMPORT                        R3 K5 [Vector2.new]
       73 LOADN                            R4 0
       74 GETTABLEKS                       R6 R0 K6 ["Y"]
       76 GETUPVAL                         R7 4
       77 DIV                              R5 R6 R7
       78 CALL                             R3 2 1
       79 SETTABLEKS                       R3 R2 K7 ["current"]
       81 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["ListItemPadding"]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["GridItemPadding"]
        9 ADD                              R2 R3 R4
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["GridItemsPerRow"]
       13 ORK                              R3 R4 K2 [1]
       14 DIV                              R5 R1 R2
       15 MUL                              R4 R5 R3
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U4
       20 CAPTURE                          UPVAL U5
       21 CAPTURE                          VAL R4
       22 CAPTURE                          UPVAL U6
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          UPVAL U9
       26 CAPTURE                          UPVAL U10
       27 CAPTURE                          UPVAL U11
       28 RETURN                           R5 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSnapshotTaken"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K1 ["OnClick"]
        9 JUMPIFNOT                        R0 ; [+5]
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K1 ["OnClick"]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+29]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETUPVAL                         R0 3
       13 JUMPIFNOT                        R0 ; [+19]
       14 GETUPVAL                         R0 4
       15 JUMPIFNOT                        R0 ; [+6]
       16 GETUPVAL                         R0 4
       17 NAMECALL                         R0 R0 K4 ["Disconnect"]
       19 CALL                             R0 1 0
       20 LOADNIL                          R0
       21 SETUPVAL                         R0 4
       22 GETUPVAL                         R0 5
       23 GETTABLEKS                       R0 R0 K5 ["Heartbeat"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U6
       29 NAMECALL                         R0 R0 K6 ["Connect"]
       31 CALL                             R0 2 1
       32 SETUPVAL                         R0 4
       33 GETUPVAL                         R0 0
       34 GETTABLEKS                       R0 R0 K7 ["OnSnapshotTaken"]
       36 JUMPIFNOT                        R0 ; [+3]
       37 GETUPVAL                         R0 7
       38 GETUPVAL                         R1 8
       39 CALL                             R0 1 0
       40 GETUPVAL                         R0 0
       41 GETTABLEKS                       R0 R0 K8 ["OnMouseEnter"]
       43 JUMPIFNOT                        R0 ; [+5]
       44 GETUPVAL                         R0 0
       45 GETTABLEKS                       R0 R0 K8 ["OnMouseEnter"]
       47 GETUPVAL                         R1 9
       48 CALL                             R0 1 0
       49 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETUPVAL                         R0 0
       13 GETTABLEKS                       R0 R0 K4 ["OnMouseLeave"]
       15 JUMPIFNOT                        R0 ; [+5]
       16 GETUPVAL                         R0 0
       17 GETTABLEKS                       R0 R0 K4 ["OnMouseLeave"]
       19 GETUPVAL                         R1 3
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRenderItemChildren"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["Material"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 GETTABLEKS                       R8 R0 K1 ["Loading"]
        7 JUMPIF                           R8 ; [+73]
        8 GETUPVAL                         R9 0
        9 GETTABLE                         R8 R9 R0
       10 GETUPVAL                         R9 1
       11 GETUPVAL                         R10 2
       12 CALL                             R10 0 1
       13 JUMPIFNOT                        R10 ; [+7]
       14 JUMPIFNOT                        R8 ; [+6]
       15 GETTABLEKS                       R10 R0 K2 ["Id"]
       17 JUMPIFNOTEQ                      R10 R9 ; [+3]
       19 LOADB                            R5 1
       20 JUMP                             ; [+13]
       21 LOADB                            R5 0
       22 GETTABLEKS                       R10 R0 K0 ["Material"]
       24 JUMPIFEQKNIL                     R10 ; [+9]
       26 GETUPVAL                         R10 3
       27 GETTABLEKS                       R11 R0 K0 ["Material"]
       29 CALL                             R10 1 1
       30 JUMPIFEQ                         R10 R9 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 GETUPVAL                         R9 0
       35 GETTABLE                         R8 R9 R0
       36 GETUPVAL                         R9 4
       37 GETUPVAL                         R10 2
       38 CALL                             R10 0 1
       39 JUMPIFNOT                        R10 ; [+7]
       40 JUMPIFNOT                        R8 ; [+6]
       41 GETTABLEKS                       R10 R0 K2 ["Id"]
       43 JUMPIFNOTEQ                      R10 R9 ; [+3]
       45 LOADB                            R6 1
       46 JUMP                             ; [+13]
       47 LOADB                            R6 0
       48 GETTABLEKS                       R10 R0 K0 ["Material"]
       50 JUMPIFEQKNIL                     R10 ; [+9]
       52 GETUPVAL                         R10 3
       53 GETTABLEKS                       R11 R0 K0 ["Material"]
       55 CALL                             R10 1 1
       56 JUMPIFEQ                         R10 R9 ; [+2]
       58 LOADB                            R6 0 +1
       59 LOADB                            R6 1
       60 GETUPVAL                         R8 5
       61 GETUPVAL                         R9 2
       62 CALL                             R9 0 1
       63 JUMPIFNOT                        R9 ; [+6]
       64 GETTABLEKS                       R9 R0 K3 ["Text"]
       66 JUMPIFNOT                        R9 ; [+3]
       67 GETTABLEKS                       R7 R0 K3 ["Text"]
       69 JUMP                             ; [+11]
       70 GETTABLEKS                       R9 R0 K0 ["Material"]
       72 JUMPIFNOT                        R9 ; [+7]
       73 GETUPVAL                         R9 6
       74 GETTABLEKS                       R10 R0 K0 ["Material"]
       76 MOVE                             R11 R8
       77 CALL                             R9 2 1
       78 MOVE                             R7 R9
       79 JUMP                             ; [+1]
       80 LOADNIL                          R7
       81 DUPTABLE                         R8 K32 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OverrideColor", "OverrideTransparency", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "ShowTooltipWithLabel", "Size", "Style", "Text", "TooltipDelay"}]
       82 SETTABLEKS                       R6 R8 K4 ["Applied"]
       84 GETUPVAL                         R9 7
       85 SETTABLEKS                       R9 R8 K5 ["CanvasPosition"]
       87 GETUPVAL                         R9 8
       88 GETTABLEKS                       R9 R9 K6 ["ShouldCenterTooltip"]
       90 SETTABLEKS                       R9 R8 K6 ["ShouldCenterTooltip"]
       92 GETUPVAL                         R9 8
       93 GETTABLEKS                       R9 R9 K7 ["ContainerXBounds"]
       95 SETTABLEKS                       R9 R8 K7 ["ContainerXBounds"]
       97 GETUPVAL                         R9 8
       98 GETTABLEKS                       R9 R9 K8 ["ContainerYBounds"]
      100 SETTABLEKS                       R9 R8 K8 ["ContainerYBounds"]
      102 GETUPVAL                         R10 8
      103 GETTABLEKS                       R10 R10 K33 ["CustomPreviews"]
      105 JUMPIFNOT                        R10 ; [+5]
      106 GETUPVAL                         R10 8
      107 GETTABLEKS                       R10 R10 K33 ["CustomPreviews"]
      109 GETTABLE                         R9 R10 R4
      110 JUMP                             ; [+1]
      111 LOADNIL                          R9
      112 SETTABLEKS                       R9 R8 K9 ["CustomPreview"]
      114 GETUPVAL                         R9 8
      115 GETTABLEKS                       R9 R9 K10 ["InitialDistance"]
      117 SETTABLEKS                       R9 R8 K10 ["InitialDistance"]
      119 GETUPVAL                         R9 9
      120 SETTABLEKS                       R9 R8 K11 ["GridItemSize"]
      122 GETUPVAL                         R9 10
      123 SETTABLEKS                       R9 R8 K12 ["HoverEffectsEnabled"]
      125 GETUPVAL                         R9 11
      126 SETTABLEKS                       R9 R8 K13 ["InstantTooltipEnabled"]
      128 SETTABLEKS                       R1 R8 K14 ["LayoutOrder"]
      130 GETTABLEKS                       R9 R0 K1 ["Loading"]
      132 SETTABLEKS                       R9 R8 K1 ["Loading"]
      134 SETTABLEKS                       R4 R8 K0 ["Material"]
      136 GETUPVAL                         R9 8
      137 GETTABLEKS                       R9 R9 K15 ["MaterialPreviewGeometryType"]
      139 SETTABLEKS                       R9 R8 K15 ["MaterialPreviewGeometryType"]
      141 GETTABLEKS                       R9 R0 K16 ["OverrideColor"]
      143 SETTABLEKS                       R9 R8 K16 ["OverrideColor"]
      145 GETTABLEKS                       R9 R0 K17 ["OverrideTransparency"]
      147 SETTABLEKS                       R9 R8 K17 ["OverrideTransparency"]
      149 NEWCLOSURE                       R9 P0
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          UPVAL U12
      152 CAPTURE                          VAL R0
      153 SETTABLEKS                       R9 R8 K18 ["OnClick"]
      155 NEWCLOSURE                       R9 P1
      156 CAPTURE                          UPVAL U8
      157 CAPTURE                          UPVAL U13
      158 CAPTURE                          UPVAL U14
      159 CAPTURE                          UPVAL U11
      160 CAPTURE                          UPVAL U15
      161 CAPTURE                          UPVAL U16
      162 CAPTURE                          UPVAL U17
      163 CAPTURE                          UPVAL U18
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R0
      166 SETTABLEKS                       R9 R8 K19 ["OnMouseEnter"]
      168 NEWCLOSURE                       R9 P2
      169 CAPTURE                          UPVAL U8
      170 CAPTURE                          UPVAL U13
      171 CAPTURE                          UPVAL U14
      172 CAPTURE                          VAL R0
      173 SETTABLEKS                       R9 R8 K20 ["OnMouseLeave"]
      175 GETUPVAL                         R10 8
      176 GETTABLEKS                       R10 R10 K34 ["OnRenderItemChildren"]
      178 JUMPIFNOT                        R10 ; [+4]
      179 NEWCLOSURE                       R9 P3
      180 CAPTURE                          UPVAL U8
      181 CAPTURE                          VAL R0
      182 JUMP                             ; [+1]
      183 LOADNIL                          R9
      184 SETTABLEKS                       R9 R8 K21 ["OnRenderChildren"]
      186 NEWCLOSURE                       R9 P4
      187 CAPTURE                          UPVAL U8
      188 CAPTURE                          VAL R0
      189 SETTABLEKS                       R9 R8 K22 ["OnRightClick"]
      191 GETUPVAL                         R9 19
      192 SETTABLEKS                       R9 R8 K23 ["OnMouseMoved"]
      194 GETUPVAL                         R9 20
      195 SETTABLEKS                       R9 R8 K24 ["OnTooltipShown"]
      197 SETTABLEKS                       R2 R8 K25 ["Position"]
      199 SETTABLEKS                       R5 R8 K26 ["Selected"]
      201 GETUPVAL                         R9 8
      202 GETTABLEKS                       R9 R9 K27 ["ShowGridLabels"]
      204 SETTABLEKS                       R9 R8 K27 ["ShowGridLabels"]
      206 GETUPVAL                         R10 21
      207 CALL                             R10 0 1
      208 JUMPIFNOT                        R10 ; [+4]
      209 GETUPVAL                         R9 8
      210 GETTABLEKS                       R9 R9 K28 ["ShowTooltipWithLabel"]
      212 JUMP                             ; [+1]
      213 LOADNIL                          R9
      214 SETTABLEKS                       R9 R8 K28 ["ShowTooltipWithLabel"]
      216 SETTABLEKS                       R3 R8 K29 ["Size"]
      218 GETUPVAL                         R9 22
      219 SETTABLEKS                       R9 R8 K30 ["Style"]
      221 SETTABLEKS                       R7 R8 K3 ["Text"]
      223 GETUPVAL                         R9 14
      224 SETTABLEKS                       R9 R8 K31 ["TooltipDelay"]
      226 RETURN                           R8 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["OnSnapshotTaken"]
        8 JUMPIFNOT                        R1 ; [+2]
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 0
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["UseInstantTooltip"]
        8 JUMPIFNOT                        R1 ; [+29]
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R3 K3 [tick]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 ADD                              R2 R3 R4
       15 SETTABLEKS                       R2 R1 K4 ["current"]
       17 GETUPVAL                         R1 3
       18 JUMPIFNOT                        R1 ; [+19]
       19 GETUPVAL                         R1 4
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 4
       22 NAMECALL                         R1 R1 K5 ["Disconnect"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETUPVAL                         R1 4
       27 GETUPVAL                         R1 5
       28 GETTABLEKS                       R1 R1 K6 ["Heartbeat"]
       30 NEWCLOSURE                       R3 P0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          UPVAL U6
       34 NAMECALL                         R1 R1 K7 ["Connect"]
       36 CALL                             R1 2 1
       37 SETUPVAL                         R1 4
       38 GETUPVAL                         R1 0
       39 GETTABLEKS                       R1 R1 K8 ["OnSnapshotTaken"]
       41 JUMPIFNOT                        R1 ; [+4]
       42 GETUPVAL                         R1 7
       43 GETTABLEKS                       R2 R0 K9 ["Material"]
       45 CALL                             R1 1 0
       46 GETUPVAL                         R1 0
       47 GETTABLEKS                       R1 R1 K10 ["OnMouseEnter"]
       49 JUMPIFNOT                        R1 ; [+5]
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K10 ["OnMouseEnter"]
       53 MOVE                             R2 R0
       54 CALL                             R1 1 0
       55 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["UseInstantTooltip"]
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R3 K3 [tick]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 2
       14 ADD                              R2 R3 R4
       15 SETTABLEKS                       R2 R1 K4 ["current"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["OnMouseLeave"]
       20 JUMPIFNOT                        R1 ; [+5]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K5 ["OnMouseLeave"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["OnRightClick"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["OnRightClick"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnRenderItemChildren"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnRenderItemChildren"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 -1
        9 RETURN                           R1 -1
       10 LOADNIL                          R1
       11 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["ItemsDisabled"]
        3 JUMPIFEQKB                       R5 TRUE ; [+2]
        5 LOADB                            R4 0 +1
        6 LOADB                            R4 1
        7 GETTABLEKS                       R5 R0 K1 ["Material"]
        9 LOADNIL                          R6
       10 LOADNIL                          R7
       11 LOADNIL                          R8
       12 GETTABLEKS                       R9 R0 K2 ["Loading"]
       14 JUMPIF                           R9 ; [+73]
       15 GETUPVAL                         R10 1
       16 GETTABLE                         R9 R10 R0
       17 GETUPVAL                         R10 2
       18 GETUPVAL                         R11 3
       19 CALL                             R11 0 1
       20 JUMPIFNOT                        R11 ; [+7]
       21 JUMPIFNOT                        R9 ; [+6]
       22 GETTABLEKS                       R11 R0 K3 ["Id"]
       24 JUMPIFNOTEQ                      R11 R10 ; [+3]
       26 LOADB                            R6 1
       27 JUMP                             ; [+13]
       28 LOADB                            R6 0
       29 GETTABLEKS                       R11 R0 K1 ["Material"]
       31 JUMPIFEQKNIL                     R11 ; [+9]
       33 GETUPVAL                         R11 4
       34 GETTABLEKS                       R12 R0 K1 ["Material"]
       36 CALL                             R11 1 1
       37 JUMPIFEQ                         R11 R10 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 GETUPVAL                         R10 1
       42 GETTABLE                         R9 R10 R0
       43 GETUPVAL                         R10 5
       44 GETUPVAL                         R11 3
       45 CALL                             R11 0 1
       46 JUMPIFNOT                        R11 ; [+7]
       47 JUMPIFNOT                        R9 ; [+6]
       48 GETTABLEKS                       R11 R0 K3 ["Id"]
       50 JUMPIFNOTEQ                      R11 R10 ; [+3]
       52 LOADB                            R7 1
       53 JUMP                             ; [+13]
       54 LOADB                            R7 0
       55 GETTABLEKS                       R11 R0 K1 ["Material"]
       57 JUMPIFEQKNIL                     R11 ; [+9]
       59 GETUPVAL                         R11 4
       60 GETTABLEKS                       R12 R0 K1 ["Material"]
       62 CALL                             R11 1 1
       63 JUMPIFEQ                         R11 R10 ; [+2]
       65 LOADB                            R7 0 +1
       66 LOADB                            R7 1
       67 GETUPVAL                         R9 6
       68 GETUPVAL                         R10 3
       69 CALL                             R10 0 1
       70 JUMPIFNOT                        R10 ; [+6]
       71 GETTABLEKS                       R10 R0 K4 ["Text"]
       73 JUMPIFNOT                        R10 ; [+3]
       74 GETTABLEKS                       R8 R0 K4 ["Text"]
       76 JUMP                             ; [+11]
       77 GETTABLEKS                       R10 R0 K1 ["Material"]
       79 JUMPIFNOT                        R10 ; [+7]
       80 GETUPVAL                         R10 7
       81 GETTABLEKS                       R11 R0 K1 ["Material"]
       83 MOVE                             R12 R9
       84 CALL                             R10 2 1
       85 MOVE                             R8 R10
       86 JUMP                             ; [+1]
       87 LOADNIL                          R8
       88 NEWTABLE                         R9 64 0
       90 SETTABLEKS                       R7 R9 K5 ["Applied"]
       92 GETUPVAL                         R10 8
       93 SETTABLEKS                       R10 R9 K6 ["CanvasPosition"]
       95 GETUPVAL                         R10 0
       96 GETTABLEKS                       R10 R10 K7 ["ShouldCenterTooltip"]
       98 SETTABLEKS                       R10 R9 K7 ["ShouldCenterTooltip"]
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K8 ["ContainerXBounds"]
      103 SETTABLEKS                       R10 R9 K8 ["ContainerXBounds"]
      105 GETUPVAL                         R10 0
      106 GETTABLEKS                       R10 R10 K9 ["ContainerYBounds"]
      108 SETTABLEKS                       R10 R9 K9 ["ContainerYBounds"]
      110 GETUPVAL                         R11 0
      111 GETTABLEKS                       R11 R11 K10 ["CustomPreviews"]
      113 JUMPIFNOT                        R11 ; [+5]
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R11 R11 K10 ["CustomPreviews"]
      117 GETTABLE                         R10 R11 R5
      118 JUMP                             ; [+1]
      119 LOADNIL                          R10
      120 SETTABLEKS                       R10 R9 K11 ["CustomPreview"]
      122 GETUPVAL                         R10 0
      123 GETTABLEKS                       R10 R10 K12 ["InitialDistance"]
      125 SETTABLEKS                       R10 R9 K12 ["InitialDistance"]
      127 GETUPVAL                         R10 9
      128 SETTABLEKS                       R10 R9 K13 ["GridItemSize"]
      130 GETUPVAL                         R10 10
      131 JUMPIFNOT                        R10 ; [+1]
      132 NOT                              R10 R4
      133 SETTABLEKS                       R10 R9 K14 ["HoverEffectsEnabled"]
      135 SETTABLEKS                       R0 R9 K15 ["Item"]
      137 SETTABLEKS                       R4 R9 K0 ["ItemsDisabled"]
      139 GETUPVAL                         R10 11
      140 SETTABLEKS                       R10 R9 K16 ["InstantTooltipEnabled"]
      142 SETTABLEKS                       R1 R9 K17 ["LayoutOrder"]
      144 GETTABLEKS                       R10 R0 K2 ["Loading"]
      146 SETTABLEKS                       R10 R9 K2 ["Loading"]
      148 SETTABLEKS                       R5 R9 K1 ["Material"]
      150 GETUPVAL                         R10 0
      151 GETTABLEKS                       R10 R10 K18 ["MaterialPreviewGeometryType"]
      153 SETTABLEKS                       R10 R9 K18 ["MaterialPreviewGeometryType"]
      155 GETTABLEKS                       R10 R0 K19 ["OverrideColor"]
      157 SETTABLEKS                       R10 R9 K19 ["OverrideColor"]
      159 GETTABLEKS                       R10 R0 K20 ["OverrideTransparency"]
      161 SETTABLEKS                       R10 R9 K20 ["OverrideTransparency"]
      163 GETUPVAL                         R10 12
      164 SETTABLEKS                       R10 R9 K21 ["OnClick"]
      166 GETUPVAL                         R10 13
      167 SETTABLEKS                       R10 R9 K22 ["OnMouseEnter"]
      169 GETUPVAL                         R10 14
      170 SETTABLEKS                       R10 R9 K23 ["OnMouseLeave"]
      172 GETUPVAL                         R11 0
      173 GETTABLEKS                       R11 R11 K24 ["OnRenderItemChildren"]
      175 JUMPIFNOT                        R11 ; [+2]
      176 GETUPVAL                         R10 15
      177 JUMP                             ; [+1]
      178 LOADNIL                          R10
      179 SETTABLEKS                       R10 R9 K25 ["OnRenderChildren"]
      181 GETUPVAL                         R10 16
      182 SETTABLEKS                       R10 R9 K26 ["OnRightClick"]
      184 GETUPVAL                         R10 17
      185 SETTABLEKS                       R10 R9 K27 ["OnMouseMoved"]
      187 GETUPVAL                         R10 18
      188 SETTABLEKS                       R10 R9 K28 ["OnTooltipShown"]
      190 SETTABLEKS                       R2 R9 K29 ["Position"]
      192 SETTABLEKS                       R6 R9 K30 ["Selected"]
      194 GETUPVAL                         R10 0
      195 GETTABLEKS                       R10 R10 K31 ["ShowGridLabels"]
      197 SETTABLEKS                       R10 R9 K31 ["ShowGridLabels"]
      199 GETUPVAL                         R11 19
      200 CALL                             R11 0 1
      201 JUMPIFNOT                        R11 ; [+4]
      202 GETUPVAL                         R10 0
      203 GETTABLEKS                       R10 R10 K32 ["ShowTooltipWithLabel"]
      205 JUMP                             ; [+1]
      206 LOADNIL                          R10
      207 SETTABLEKS                       R10 R9 K32 ["ShowTooltipWithLabel"]
      209 SETTABLEKS                       R3 R9 K33 ["Size"]
      211 GETUPVAL                         R10 20
      212 SETTABLEKS                       R10 R9 K34 ["Style"]
      214 SETTABLEKS                       R8 R9 K4 ["Text"]
      216 GETUPVAL                         R10 21
      217 SETTABLEKS                       R10 R9 K35 ["TooltipDelay"]
      219 RETURN                           R9 1

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K9 [{["Static"] = True, ["Transparent"] = True, ["Material"], ["Size"], ["BackgroundColor"], ["MeshPartBorderThickness"], ["ref"]}]
       13 GETUPVAL                         R7 3
       14 SETTABLEKS                       R7 R6 K4 ["Material"]
       16 GETUPVAL                         R7 4
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R8 R8 K10 ["SnapshotSize"]
       20 GETUPVAL                         R9 6
       21 GETTABLEKS                       R9 R9 K10 ["SnapshotSize"]
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K5 ["Size"]
       26 GETUPVAL                         R7 6
       27 GETTABLEKS                       R7 R7 K11 ["GridItemBackgroundColor"]
       29 SETTABLEKS                       R7 R6 K6 ["BackgroundColor"]
       31 GETUPVAL                         R7 5
       32 GETTABLEKS                       R7 R7 K12 ["SnapshotBorderThickness"]
       34 SETTABLEKS                       R7 R6 K7 ["MeshPartBorderThickness"]
       36 GETUPVAL                         R7 7
       37 SETTABLEKS                       R7 R6 K8 ["ref"]
       39 CALL                             R4 2 1
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K0 ["createElement"]
       43 GETUPVAL                         R6 1
       44 DUPTABLE                         R7 K14 [{"Size", "BackgroundColor3"}]
       45 GETIMPORT                        R8 K17 [UDim2.fromScale]
       47 LOADN                            R9 1
       48 LOADN                            R10 1
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K5 ["Size"]
       52 GETUPVAL                         R8 6
       53 GETTABLEKS                       R8 R8 K6 ["BackgroundColor"]
       55 SETTABLEKS                       R8 R7 K13 ["BackgroundColor3"]
       57 CALL                             R5 2 -1
       58 SETLIST                          R3 R4 -1 [1]
       60 CALL                             R0 3 -1
       61 RETURN                           R0 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETUPVAL                         R1 3
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 5
       13 GETTABLEKS                       R2 R2 K0 ["createElement"]
       15 GETUPVAL                         R3 6
       16 DUPTABLE                         R4 K12 [{"AutomaticSize", "InitialCanvasPosition", "CellComponent", "CellGroups", "CellGroupHeader", "CellPadding", "CellSize", "Cells", "GetCellProps", "OnScrollUpdate", "ScrollingDirection"}]
       17 GETUPVAL                         R6 7
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+4]
       20 GETUPVAL                         R5 8
       21 GETTABLEKS                       R5 R5 K1 ["AutomaticSize"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K1 ["AutomaticSize"]
       27 GETUPVAL                         R5 9
       28 GETTABLEKS                       R5 R5 K13 ["current"]
       30 SETTABLEKS                       R5 R4 K2 ["InitialCanvasPosition"]
       32 SETTABLEKS                       R0 R4 K3 ["CellComponent"]
       34 GETUPVAL                         R5 8
       35 GETTABLEKS                       R5 R5 K4 ["CellGroups"]
       37 SETTABLEKS                       R5 R4 K4 ["CellGroups"]
       39 GETUPVAL                         R5 8
       40 GETTABLEKS                       R5 R5 K5 ["CellGroupHeader"]
       42 SETTABLEKS                       R5 R4 K5 ["CellGroupHeader"]
       44 GETIMPORT                        R5 K16 [UDim2.fromOffset]
       46 GETUPVAL                         R6 10
       47 GETTABLEKS                       R6 R6 K17 ["GridItemPadding"]
       49 GETUPVAL                         R7 10
       50 GETTABLEKS                       R7 R7 K17 ["GridItemPadding"]
       52 CALL                             R5 2 1
       53 SETTABLEKS                       R5 R4 K6 ["CellPadding"]
       55 GETIMPORT                        R5 K16 [UDim2.fromOffset]
       57 GETUPVAL                         R6 11
       58 GETUPVAL                         R7 11
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K7 ["CellSize"]
       62 GETUPVAL                         R5 12
       63 SETTABLEKS                       R5 R4 K8 ["Cells"]
       65 SETTABLEKS                       R1 R4 K9 ["GetCellProps"]
       67 GETUPVAL                         R6 13
       68 GETTABLEKS                       R6 R6 K18 ["Grid"]
       70 GETUPVAL                         R8 14
       71 GETUPVAL                         R9 10
       72 GETTABLEKS                       R9 R9 K19 ["ListItemPadding"]
       74 ADD                              R7 R8 R9
       75 GETUPVAL                         R9 11
       76 GETUPVAL                         R10 10
       77 GETTABLEKS                       R10 R10 K17 ["GridItemPadding"]
       79 ADD                              R8 R9 R10
       80 GETUPVAL                         R10 8
       81 GETTABLEKS                       R10 R10 K21 ["GridItemsPerRow"]
       83 ORK                              R9 R10 K20 [1]
       84 DIV                              R11 R7 R8
       85 MUL                              R10 R11 R9
       86 NEWCLOSURE                       R5 P0
       87 CAPTURE                          UPVAL U8
       88 CAPTURE                          VAL R6
       89 CAPTURE                          UPVAL U13
       90 CAPTURE                          UPVAL U15
       91 CAPTURE                          VAL R10
       92 CAPTURE                          UPVAL U16
       93 CAPTURE                          UPVAL U17
       94 CAPTURE                          UPVAL U18
       95 CAPTURE                          UPVAL U19
       96 CAPTURE                          UPVAL U20
       97 CAPTURE                          UPVAL U9
       98 SETTABLEKS                       R5 R4 K10 ["OnScrollUpdate"]
      100 GETUPVAL                         R6 7
      101 CALL                             R6 0 1
      102 JUMPIFNOT                        R6 ; [+4]
      103 GETUPVAL                         R5 8
      104 GETTABLEKS                       R5 R5 K11 ["ScrollingDirection"]
      106 JUMP                             ; [+1]
      107 LOADNIL                          R5
      108 SETTABLEKS                       R5 R4 K11 ["ScrollingDirection"]
      110 CALL                             R2 2 -1
      111 RETURN                           R2 -1

PROTO_30:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETUPVAL                         R0 1
        4 JUMP                             ; [+1]
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R2 0
        7 CALL                             R2 0 1
        8 JUMPIFNOT                        R2 ; [+2]
        9 GETUPVAL                         R1 3
       10 JUMP                             ; [+1]
       11 GETUPVAL                         R1 4
       12 GETUPVAL                         R2 5
       13 GETTABLEKS                       R2 R2 K0 ["createElement"]
       15 GETUPVAL                         R3 6
       16 DUPTABLE                         R4 K9 [{"AutomaticSize", "InitialCanvasPosition", "GetRowProps", "OnScrollUpdate", "RowComponent", "RowHeight", "Rows", "ScrollingDirection"}]
       17 GETUPVAL                         R6 7
       18 CALL                             R6 0 1
       19 JUMPIFNOT                        R6 ; [+4]
       20 GETUPVAL                         R5 8
       21 GETTABLEKS                       R5 R5 K1 ["AutomaticSize"]
       23 JUMP                             ; [+1]
       24 LOADNIL                          R5
       25 SETTABLEKS                       R5 R4 K1 ["AutomaticSize"]
       27 GETUPVAL                         R5 9
       28 GETTABLEKS                       R5 R5 K10 ["current"]
       30 SETTABLEKS                       R5 R4 K2 ["InitialCanvasPosition"]
       32 SETTABLEKS                       R1 R4 K3 ["GetRowProps"]
       34 GETUPVAL                         R6 10
       35 GETTABLEKS                       R6 R6 K11 ["List"]
       37 GETUPVAL                         R8 11
       38 GETUPVAL                         R9 12
       39 GETTABLEKS                       R9 R9 K12 ["ListItemPadding"]
       41 ADD                              R7 R8 R9
       42 GETUPVAL                         R9 13
       43 GETUPVAL                         R10 12
       44 GETTABLEKS                       R10 R10 K13 ["GridItemPadding"]
       46 ADD                              R8 R9 R10
       47 GETUPVAL                         R10 8
       48 GETTABLEKS                       R10 R10 K15 ["GridItemsPerRow"]
       50 ORK                              R9 R10 K14 [1]
       51 DIV                              R11 R7 R8
       52 MUL                              R10 R11 R9
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          UPVAL U8
       55 CAPTURE                          VAL R6
       56 CAPTURE                          UPVAL U10
       57 CAPTURE                          UPVAL U9
       58 CAPTURE                          VAL R10
       59 CAPTURE                          UPVAL U14
       60 CAPTURE                          UPVAL U15
       61 CAPTURE                          UPVAL U16
       62 CAPTURE                          UPVAL U17
       63 CAPTURE                          UPVAL U18
       64 CAPTURE                          UPVAL U19
       65 SETTABLEKS                       R5 R4 K4 ["OnScrollUpdate"]
       67 SETTABLEKS                       R0 R4 K5 ["RowComponent"]
       69 GETUPVAL                         R5 11
       70 SETTABLEKS                       R5 R4 K6 ["RowHeight"]
       72 GETUPVAL                         R5 20
       73 SETTABLEKS                       R5 R4 K7 ["Rows"]
       75 GETUPVAL                         R6 7
       76 CALL                             R6 0 1
       77 JUMPIFNOT                        R6 ; [+4]
       78 GETUPVAL                         R5 8
       79 GETTABLEKS                       R5 R5 K8 ["ScrollingDirection"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R5
       83 SETTABLEKS                       R5 R4 K8 ["ScrollingDirection"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["MaterialGrid"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R4 R0 K2 ["GridItemSize"]
       12 GETTABLEKS                       R5 R2 K2 ["GridItemSize"]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R5 R0 K3 ["ListItemHeight"]
       18 GETTABLEKS                       R6 R2 K3 ["ListItemHeight"]
       20 CALL                             R4 2 1
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R6 R0 K4 ["Padding"]
       24 GETTABLEKS                       R7 R2 K4 ["Padding"]
       26 CALL                             R5 2 1
       27 GETUPVAL                         R6 2
       28 GETTABLEKS                       R7 R0 K5 ["GridPadding"]
       30 GETTABLEKS                       R8 R2 K4 ["Padding"]
       32 CALL                             R6 2 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R8 R0 K6 ["ListPadding"]
       36 GETTABLEKS                       R9 R2 K4 ["Padding"]
       38 CALL                             R7 2 1
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R9 R0 K7 ["ViewType"]
       42 GETTABLEKS                       R10 R2 K7 ["ViewType"]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 2
       46 GETTABLEKS                       R10 R0 K8 ["TooltipDelay"]
       48 GETTABLEKS                       R11 R2 K8 ["TooltipDelay"]
       50 CALL                             R9 2 1
       51 GETTABLEKS                       R12 R0 K9 ["Items"]
       53 NEWTABLE                         R13 0 0
       55 GETUPVAL                         R14 3
       56 GETTABLEKS                       R14 R14 K10 ["map"]
       58 MOVE                             R15 R12
       59 NEWCLOSURE                       R16 P0
       60 CAPTURE                          VAL R13
       61 CALL                             R14 2 1
       62 MOVE                             R10 R14
       63 MOVE                             R11 R13
       64 GETUPVAL                         R12 4
       65 GETTABLEKS                       R12 R12 K11 ["createRef"]
       67 CALL                             R12 0 1
       68 GETUPVAL                         R13 5
       69 CALL                             R13 0 2
       70 NEWCLOSURE                       R15 P1
       71 CAPTURE                          VAL R12
       72 CAPTURE                          VAL R0
       73 GETUPVAL                         R16 5
       74 LOADB                            R17 0
       75 CALL                             R16 1 2
       76 GETUPVAL                         R18 4
       77 GETTABLEKS                       R18 R18 K12 ["useRef"]
       79 LOADN                            R19 0
       80 CALL                             R18 1 1
       81 LOADNIL                          R19
       82 GETUPVAL                         R20 5
       83 LOADB                            R21 1
       84 CALL                             R20 1 2
       85 GETUPVAL                         R22 4
       86 GETTABLEKS                       R22 R22 K12 ["useRef"]
       88 LOADN                            R23 0
       89 CALL                             R22 1 1
       90 GETUPVAL                         R23 5
       91 GETIMPORT                        R24 K15 [Vector2.new]
       93 CALL                             R24 0 -1
       94 CALL                             R23 -1 2
       95 NEWCLOSURE                       R25 P2
       96 CAPTURE                          VAL R0
       97 CAPTURE                          VAL R17
       98 NEWCLOSURE                       R26 P3
       99 CAPTURE                          REF R19
      100 NEWCLOSURE                       R27 P4
      101 CAPTURE                          REF R19
      102 CAPTURE                          UPVAL U6
      103 CAPTURE                          VAL R18
      104 CAPTURE                          VAL R17
      105 NEWCLOSURE                       R28 P5
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R16
      110 CAPTURE                          REF R19
      111 CAPTURE                          UPVAL U6
      112 CAPTURE                          VAL R17
      113 NEWCLOSURE                       R29 P6
      114 CAPTURE                          VAL R0
      115 CAPTURE                          VAL R18
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R22
      118 CAPTURE                          VAL R21
      119 NEWCLOSURE                       R30 P7
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R18
      122 CAPTURE                          VAL R9
      123 GETUPVAL                         R31 4
      124 GETTABLEKS                       R31 R31 K12 ["useRef"]
      126 GETTABLEKS                       R32 R0 K16 ["InitialListCanvasPosition"]
      128 JUMPIF                           R32 ; [+5]
      129 GETIMPORT                        R32 K15 [Vector2.new]
      131 LOADN                            R33 0
      132 LOADN                            R34 0
      133 CALL                             R32 2 1
      134 CALL                             R31 1 1
      135 GETUPVAL                         R32 4
      136 GETTABLEKS                       R32 R32 K12 ["useRef"]
      138 GETTABLEKS                       R33 R0 K17 ["InitialGridCanvasPosition"]
      140 JUMPIF                           R33 ; [+5]
      141 GETIMPORT                        R33 K15 [Vector2.new]
      143 LOADN                            R34 0
      144 LOADN                            R35 0
      145 CALL                             R33 2 1
      146 CALL                             R32 1 1
      147 NEWCLOSURE                       R33 P8
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R2
      150 CAPTURE                          VAL R3
      151 CAPTURE                          VAL R0
      152 CAPTURE                          UPVAL U7
      153 CAPTURE                          VAL R31
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R21
      158 CAPTURE                          VAL R22
      159 CAPTURE                          VAL R32
      160 LOADNIL                          R34
      161 GETTABLEKS                       R35 R0 K18 ["SelectedItemId"]
      163 JUMPIFNOT                        R35 ; [+3]
      164 GETTABLEKS                       R34 R0 K18 ["SelectedItemId"]
      166 JUMP                             ; [+47]
      167 GETTABLEKS                       R35 R0 K19 ["SelectedItem"]
      169 JUMPIFNOT                        R35 ; [+44]
      170 NEWTABLE                         R37 0 1
      172 GETTABLEKS                       R38 R0 K19 ["SelectedItem"]
      174 SETLIST                          R37 R38 1 [1]
      176 NEWTABLE                         R38 0 0
      178 GETUPVAL                         R39 3
      179 GETTABLEKS                       R39 R39 K10 ["map"]
      181 MOVE                             R40 R37
      182 NEWCLOSURE                       R41 P0
      183 CAPTURE                          VAL R38
      184 CALL                             R39 2 1
      185 MOVE                             R35 R39
      186 MOVE                             R36 R38
      187 GETTABLEN                        R37 R35 1
      188 GETUPVAL                         R38 8
      189 CALL                             R38 0 1
      190 JUMPIFNOT                        R38 ; [+17]
      191 GETTABLE                         R38 R36 R37
      192 JUMPIFNOT                        R38 ; [+3]
      193 GETTABLEKS                       R34 R37 K20 ["Id"]
      195 JUMP                             ; [+18]
      196 GETTABLEKS                       R39 R37 K21 ["Material"]
      198 JUMPIFNOT                        R39 ; [+6]
      199 GETUPVAL                         R39 9
      200 GETTABLEKS                       R40 R37 K21 ["Material"]
      202 CALL                             R39 1 1
      203 MOVE                             R34 R39
      204 JUMP                             ; [+9]
      205 GETTABLEKS                       R34 R37 K20 ["Id"]
      207 JUMP                             ; [+6]
      208 GETTABLEKS                       R38 R37 K20 ["Id"]
      210 JUMPIF                           R38 ; [+2]
      211 GETTABLEKS                       R38 R37 K21 ["Material"]
      213 MOVE                             R34 R38
      214 LOADNIL                          R35
      215 GETTABLEKS                       R36 R0 K22 ["AppliedItemId"]
      217 JUMPIFNOT                        R36 ; [+2]
      218 GETTABLEKS                       R35 R0 K22 ["AppliedItemId"]
      220 NEWCLOSURE                       R36 P9
      221 CAPTURE                          VAL R11
      222 CAPTURE                          REF R34
      223 CAPTURE                          UPVAL U8
      224 CAPTURE                          UPVAL U9
      225 CAPTURE                          REF R35
      226 CAPTURE                          VAL R1
      227 CAPTURE                          UPVAL U10
      228 CAPTURE                          VAL R23
      229 CAPTURE                          VAL R0
      230 CAPTURE                          VAL R3
      231 CAPTURE                          VAL R20
      232 CAPTURE                          VAL R16
      233 CAPTURE                          VAL R15
      234 CAPTURE                          VAL R18
      235 CAPTURE                          VAL R9
      236 CAPTURE                          REF R19
      237 CAPTURE                          UPVAL U6
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R14
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R25
      242 CAPTURE                          UPVAL U11
      243 CAPTURE                          VAL R2
      244 GETUPVAL                         R37 4
      245 GETTABLEKS                       R37 R37 K23 ["useCallback"]
      247 NEWCLOSURE                       R38 P10
      248 CAPTURE                          VAL R0
      249 CAPTURE                          VAL R15
      250 NEWTABLE                         R39 0 4
      252 GETTABLEKS                       R40 R0 K24 ["ItemsDisabled"]
      254 GETTABLEKS                       R41 R0 K25 ["OnSnapshotTaken"]
      256 GETTABLEKS                       R42 R0 K26 ["OnClick"]
      258 MOVE                             R43 R15
      259 SETLIST                          R39 R40 4 [1]
      261 CALL                             R37 2 1
      262 GETUPVAL                         R38 4
      263 GETTABLEKS                       R38 R38 K23 ["useCallback"]
      265 NEWCLOSURE                       R39 P11
      266 CAPTURE                          VAL R0
      267 CAPTURE                          VAL R18
      268 CAPTURE                          VAL R9
      269 CAPTURE                          VAL R16
      270 CAPTURE                          REF R19
      271 CAPTURE                          UPVAL U6
      272 CAPTURE                          VAL R17
      273 CAPTURE                          VAL R14
      274 NEWTABLE                         R40 0 5
      276 GETTABLEKS                       R41 R0 K24 ["ItemsDisabled"]
      278 MOVE                             R42 R28
      279 GETTABLEKS                       R43 R0 K25 ["OnSnapshotTaken"]
      281 MOVE                             R44 R14
      282 GETTABLEKS                       R45 R0 K27 ["OnMouseEnter"]
      284 SETLIST                          R40 R41 5 [1]
      286 CALL                             R38 2 1
      287 GETUPVAL                         R39 4
      288 GETTABLEKS                       R39 R39 K23 ["useCallback"]
      290 NEWCLOSURE                       R40 P12
      291 CAPTURE                          VAL R0
      292 CAPTURE                          VAL R18
      293 CAPTURE                          VAL R9
      294 NEWTABLE                         R41 0 3
      296 GETTABLEKS                       R42 R0 K24 ["ItemsDisabled"]
      298 MOVE                             R43 R30
      299 GETTABLEKS                       R44 R0 K28 ["OnMouseLeave"]
      301 SETLIST                          R41 R42 3 [1]
      303 CALL                             R39 2 1
      304 GETUPVAL                         R40 4
      305 GETTABLEKS                       R40 R40 K23 ["useCallback"]
      307 NEWCLOSURE                       R41 P13
      308 CAPTURE                          VAL R0
      309 NEWTABLE                         R42 0 2
      311 GETTABLEKS                       R43 R0 K24 ["ItemsDisabled"]
      313 GETTABLEKS                       R44 R0 K29 ["OnRightClick"]
      315 SETLIST                          R42 R43 2 [1]
      317 CALL                             R40 2 1
      318 GETUPVAL                         R41 4
      319 GETTABLEKS                       R41 R41 K23 ["useCallback"]
      321 NEWCLOSURE                       R42 P14
      322 CAPTURE                          VAL R0
      323 NEWTABLE                         R43 0 1
      325 GETTABLEKS                       R44 R0 K30 ["OnRenderItemChildren"]
      327 SETLIST                          R43 R44 1 [1]
      329 CALL                             R41 2 1
      330 NEWCLOSURE                       R42 P15
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R11
      333 CAPTURE                          REF R34
      334 CAPTURE                          UPVAL U8
      335 CAPTURE                          UPVAL U9
      336 CAPTURE                          REF R35
      337 CAPTURE                          VAL R1
      338 CAPTURE                          UPVAL U10
      339 CAPTURE                          VAL R23
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R20
      342 CAPTURE                          VAL R16
      343 CAPTURE                          VAL R37
      344 CAPTURE                          VAL R38
      345 CAPTURE                          VAL R39
      346 CAPTURE                          VAL R41
      347 CAPTURE                          VAL R40
      348 CAPTURE                          VAL R29
      349 CAPTURE                          VAL R25
      350 CAPTURE                          UPVAL U11
      351 CAPTURE                          VAL R2
      352 CAPTURE                          VAL R9
      353 NEWCLOSURE                       R43 P16
      354 CAPTURE                          UPVAL U4
      355 CAPTURE                          UPVAL U12
      356 CAPTURE                          UPVAL U13
      357 CAPTURE                          VAL R13
      358 CAPTURE                          UPVAL U2
      359 CAPTURE                          VAL R0
      360 CAPTURE                          VAL R2
      361 CAPTURE                          VAL R12
      362 NEWCLOSURE                       R44 P17
      363 CAPTURE                          UPVAL U14
      364 CAPTURE                          UPVAL U15
      365 CAPTURE                          UPVAL U16
      366 CAPTURE                          VAL R42
      367 CAPTURE                          VAL R36
      368 CAPTURE                          UPVAL U4
      369 CAPTURE                          UPVAL U17
      370 CAPTURE                          UPVAL U18
      371 CAPTURE                          VAL R0
      372 CAPTURE                          VAL R32
      373 CAPTURE                          VAL R2
      374 CAPTURE                          VAL R3
      375 CAPTURE                          VAL R10
      376 CAPTURE                          UPVAL U7
      377 CAPTURE                          VAL R4
      378 CAPTURE                          VAL R31
      379 CAPTURE                          VAL R24
      380 CAPTURE                          VAL R18
      381 CAPTURE                          VAL R9
      382 CAPTURE                          VAL R21
      383 CAPTURE                          VAL R22
      384 NEWCLOSURE                       R45 P18
      385 CAPTURE                          UPVAL U14
      386 CAPTURE                          UPVAL U19
      387 CAPTURE                          UPVAL U20
      388 CAPTURE                          VAL R42
      389 CAPTURE                          VAL R36
      390 CAPTURE                          UPVAL U4
      391 CAPTURE                          UPVAL U21
      392 CAPTURE                          UPVAL U18
      393 CAPTURE                          VAL R0
      394 CAPTURE                          VAL R31
      395 CAPTURE                          UPVAL U7
      396 CAPTURE                          VAL R4
      397 CAPTURE                          VAL R2
      398 CAPTURE                          VAL R3
      399 CAPTURE                          VAL R24
      400 CAPTURE                          VAL R18
      401 CAPTURE                          VAL R9
      402 CAPTURE                          VAL R21
      403 CAPTURE                          VAL R22
      404 CAPTURE                          VAL R32
      405 CAPTURE                          VAL R10
      406 GETUPVAL                         R46 4
      407 GETTABLEKS                       R46 R46 K31 ["createElement"]
      409 GETUPVAL                         R47 12
      410 DUPTABLE                         R48 K36 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      411 GETUPVAL                         R50 18
      412 CALL                             R50 0 1
      413 JUMPIFNOT                        R50 ; [+3]
      414 GETTABLEKS                       R49 R0 K32 ["AutomaticSize"]
      416 JUMP                             ; [+1]
      417 LOADNIL                          R49
      418 SETTABLEKS                       R49 R48 K32 ["AutomaticSize"]
      420 GETTABLEKS                       R49 R2 K33 ["BackgroundColor"]
      422 SETTABLEKS                       R49 R48 K33 ["BackgroundColor"]
      424 GETTABLEKS                       R49 R0 K34 ["LayoutOrder"]
      426 SETTABLEKS                       R49 R48 K34 ["LayoutOrder"]
      428 NEWCLOSURE                       R49 P19
      429 CAPTURE                          VAL R0
      430 SETTABLEKS                       R49 R48 K29 ["OnRightClick"]
      432 GETTABLEKS                       R50 R0 K4 ["Padding"]
      434 JUMPIFNOT                        R50 ; [+2]
      435 MOVE                             R49 R5
      436 JUMP                             ; [+8]
      437 GETUPVAL                         R50 7
      438 GETTABLEKS                       R50 R50 K37 ["Grid"]
      440 JUMPIFNOTEQ                      R8 R50 ; [+3]
      442 MOVE                             R49 R6
      443 JUMP                             ; [+1]
      444 MOVE                             R49 R7
      445 SETTABLEKS                       R49 R48 K4 ["Padding"]
      447 GETTABLEKS                       R49 R0 K35 ["Size"]
      449 SETTABLEKS                       R49 R48 K35 ["Size"]
      451 DUPTABLE                         R49 K40 [{"DummyViewport", "Grid", "List"}]
      452 GETTABLEKS                       R51 R0 K25 ["OnSnapshotTaken"]
      454 JUMPIFNOT                        R51 ; [+3]
      455 MOVE                             R50 R43
      456 CALL                             R50 0 1
      457 JUMP                             ; [+1]
      458 LOADNIL                          R50
      459 SETTABLEKS                       R50 R49 K38 ["DummyViewport"]
      461 GETUPVAL                         R51 7
      462 GETTABLEKS                       R51 R51 K37 ["Grid"]
      464 JUMPIFNOTEQ                      R8 R51 ; [+4]
      466 MOVE                             R50 R44
      467 CALL                             R50 0 1
      468 JUMP                             ; [+1]
      469 LOADNIL                          R50
      470 SETTABLEKS                       R50 R49 K37 ["Grid"]
      472 GETUPVAL                         R51 7
      473 GETTABLEKS                       R51 R51 K39 ["List"]
      475 JUMPIFNOTEQ                      R8 R51 ; [+4]
      477 MOVE                             R50 R45
      478 CALL                             R50 0 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R50
      481 SETTABLEKS                       R50 R49 K39 ["List"]
      483 CALL                             R46 3 -1
      484 CLOSEUPVALS                      R19
      485 RETURN                           R46 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K2 ["Parent"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R4 K7 ["MaterialPreview"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K8 ["Dash"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K4 [require]
       28 GETTABLEKS                       R6 R2 K9 ["Framework"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K4 [require]
       33 GETTABLEKS                       R7 R2 K10 ["React"]
       35 CALL                             R6 1 1
       36 GETTABLEKS                       R7 R6 K11 ["useState"]
       38 GETTABLEKS                       R8 R5 K12 ["ContextServices"]
       40 GETTABLEKS                       R8 R8 K13 ["Localization"]
       42 GETTABLEKS                       R9 R5 K14 ["Style"]
       44 GETTABLEKS                       R9 R9 K15 ["Stylizer"]
       46 GETTABLEKS                       R10 R5 K16 ["UI"]
       48 GETTABLEKS                       R11 R10 K17 ["Grid"]
       50 GETTABLEKS                       R12 R10 K18 ["List"]
       52 GETTABLEKS                       R13 R10 K19 ["Pane"]
       54 GETTABLEKS                       R14 R5 K20 ["Util"]
       56 GETTABLEKS                       R14 R14 K21 ["prioritize"]
       58 GETIMPORT                        R15 K4 [require]
       60 GETTABLEKS                       R16 R0 K22 ["Flags"]
       62 GETTABLEKS                       R16 R16 K23 ["getFFlagMaterialGridTerrainEditorItemUx"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K4 [require]
       67 GETIMPORT                        R17 K1 [script]
       69 GETTABLEKS                       R17 R17 K24 ["MaterialGridItem"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K4 [require]
       74 GETIMPORT                        R18 K1 [script]
       76 GETTABLEKS                       R18 R18 K25 ["MaterialGridItemDeprecated"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K4 [require]
       81 GETIMPORT                        R19 K1 [script]
       83 GETTABLEKS                       R19 R19 K26 ["MaterialListItem"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETIMPORT                        R20 K1 [script]
       90 GETTABLEKS                       R20 R20 K27 ["MaterialListItemDeprecated"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K4 [require]
       95 GETTABLEKS                       R21 R0 K28 ["Enums"]
       97 GETTABLEKS                       R21 R21 K29 ["ViewType"]
       99 CALL                             R20 1 1
      100 GETIMPORT                        R21 K4 [require]
      102 GETTABLEKS                       R22 R0 K20 ["Util"]
      104 GETTABLEKS                       R22 R22 K30 ["getMaterialName"]
      106 CALL                             R21 1 1
      107 GETIMPORT                        R22 K4 [require]
      109 GETTABLEKS                       R23 R0 K20 ["Util"]
      111 GETTABLEKS                       R23 R23 K31 ["getSerializedMaterialIdentifier"]
      113 CALL                             R22 1 1
      114 GETIMPORT                        R23 K33 [game]
      116 LOADK                            R25 K34 ["RunService"]
      117 NAMECALL                         R23 R23 K35 ["GetService"]
      119 CALL                             R23 2 1
      120 GETIMPORT                        R24 K4 [require]
      122 GETTABLEKS                       R25 R0 K22 ["Flags"]
      124 GETTABLEKS                       R25 R25 K36 ["getFFlagMaterialGridExtraProps"]
      126 CALL                             R24 1 1
      127 GETIMPORT                        R25 K4 [require]
      129 GETTABLEKS                       R26 R0 K22 ["Flags"]
      131 GETTABLEKS                       R26 R26 K37 ["getFFlagMaterialGridShowTooltipWithLabel"]
      133 CALL                             R25 1 1
      134 GETIMPORT                        R26 K4 [require]
      136 GETTABLEKS                       R27 R0 K22 ["Flags"]
      138 GETTABLEKS                       R27 R27 K38 ["getFFlagMaterialGridUseItemIds"]
      140 CALL                             R26 1 1
      141 DUPCLOSURE                       R27 K39 [PROTO_1]
      142 CAPTURE                          VAL R4
      143 DUPCLOSURE                       R28 K40 [PROTO_2]
      144 CAPTURE                          VAL R22
      145 DUPCLOSURE                       R29 K41 [PROTO_3]
      146 CAPTURE                          VAL R26
      147 CAPTURE                          VAL R22
      148 DUPCLOSURE                       R30 K42 [PROTO_4]
      149 CAPTURE                          VAL R26
      150 CAPTURE                          VAL R21
      151 DUPCLOSURE                       R31 K43 [PROTO_32]
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R6
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R23
      159 CAPTURE                          VAL R20
      160 CAPTURE                          VAL R26
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R21
      163 CAPTURE                          VAL R25
      164 CAPTURE                          VAL R13
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R15
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R24
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R19
      173 CAPTURE                          VAL R12
      174 RETURN                           R31 1
