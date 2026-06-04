PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K6 [{"Id", "Loading", "Material"}]
        9 SETTABLEKS                       R0 R1 K3 ["Id"]
       11 LOADB                            R2 0
       12 SETTABLEKS                       R2 R1 K4 ["Loading"]
       14 SETTABLEKS                       R0 R1 K5 ["Material"]
       16 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["map"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_0]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["CaptureSnapshotAsync"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETUPVAL                         R0 1
        5 LOADB                            R1 1
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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
       13 JUMPIFNOTEQ                      R2 R3 ; [+49]
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
       30 GETUPVAL                         R2 5
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+51]
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R2 R2 K8 ["ShouldCenterTooltip"]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETUPVAL                         R2 6
       38 MOVE                             R3 R0
       39 CALL                             R2 1 0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K9 ["UseInstantTooltip"]
       43 JUMPIFNOT                        R2 ; [+8]
       44 GETUPVAL                         R2 7
       45 GETIMPORT                        R4 K11 [tick]
       47 CALL                             R4 0 1
       48 GETUPVAL                         R5 8
       49 ADD                              R3 R4 R5
       50 SETTABLEKS                       R3 R2 K7 ["current"]
       52 GETUPVAL                         R2 9
       53 LOADB                            R3 0
       54 CALL                             R2 1 0
       55 GETUPVAL                         R2 10
       56 GETIMPORT                        R4 K11 [tick]
       58 CALL                             R4 0 1
       59 ADDK                             R3 R4 K12 [0.01]
       60 SETTABLEKS                       R3 R2 K7 ["current"]
       62 RETURN                           R0 0
       63 GETUPVAL                         R2 1
       64 GETUPVAL                         R3 2
       65 GETTABLEKS                       R3 R3 K13 ["List"]
       67 JUMPIFNOTEQ                      R2 R3 ; [+16]
       69 GETUPVAL                         R2 0
       70 GETTABLEKS                       R2 R2 K2 ["ShouldSyncScroll"]
       72 JUMPIFNOT                        R2 ; [+11]
       73 GETUPVAL                         R2 11
       74 GETIMPORT                        R3 K5 [Vector2.new]
       76 LOADN                            R4 0
       77 GETTABLEKS                       R6 R0 K6 ["Y"]
       79 GETUPVAL                         R7 4
       80 DIV                              R5 R6 R7
       81 CALL                             R3 2 1
       82 SETTABLEKS                       R3 R2 K7 ["current"]
       84 RETURN                           R0 0

PROTO_12:
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
       28 CAPTURE                          UPVAL U12
       29 RETURN                           R5 1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getValue"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R0 R0 K1 ["CaptureSnapshotAsync"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+6]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["OnSnapshotTaken"]
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["OnClick"]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K1 ["OnClick"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 CALL                             R0 0 1
       20 JUMPIF                           R0 ; [+20]
       21 GETUPVAL                         R0 1
       22 GETTABLEKS                       R0 R0 K0 ["OnSnapshotTaken"]
       24 JUMPIFNOT                        R0 ; [+16]
       25 GETIMPORT                        R0 K3 [pcall]
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          UPVAL U4
       29 CALL                             R0 1 2
       30 JUMPIFNOT                        R0 ; [+6]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K0 ["OnSnapshotTaken"]
       34 MOVE                             R3 R1
       35 CALL                             R2 1 0
       36 RETURN                           R0 0
       37 GETIMPORT                        R2 K5 [warn]
       39 LOADK                            R3 K6 ["Material Grid failed to get temporary image from viewport frame"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+33]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        6 JUMPIFNOT                        R0 ; [+29]
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R2 K2 [tick]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 ADD                              R1 R2 R3
       13 SETTABLEKS                       R1 R0 K3 ["current"]
       15 GETUPVAL                         R0 4
       16 JUMPIFNOT                        R0 ; [+19]
       17 GETUPVAL                         R0 5
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R0 5
       20 NAMECALL                         R0 R0 K4 ["Disconnect"]
       22 CALL                             R0 1 0
       23 LOADNIL                          R0
       24 SETUPVAL                         R0 5
       25 GETUPVAL                         R0 6
       26 GETTABLEKS                       R0 R0 K5 ["Heartbeat"]
       28 NEWCLOSURE                       R2 P0
       29 CAPTURE                          UPVAL U2
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U7
       32 NAMECALL                         R0 R0 K6 ["Connect"]
       34 CALL                             R0 2 1
       35 SETUPVAL                         R0 5
       36 GETUPVAL                         R0 8
       37 CALL                             R0 0 1
       38 JUMPIFNOT                        R0 ; [+7]
       39 GETUPVAL                         R0 1
       40 GETTABLEKS                       R0 R0 K7 ["OnSnapshotTaken"]
       42 JUMPIFNOT                        R0 ; [+3]
       43 GETUPVAL                         R0 9
       44 GETUPVAL                         R1 10
       45 CALL                             R0 1 0
       46 GETUPVAL                         R0 1
       47 GETTABLEKS                       R0 R0 K8 ["OnMouseEnter"]
       49 JUMPIFNOT                        R0 ; [+5]
       50 GETUPVAL                         R0 1
       51 GETTABLEKS                       R0 R0 K8 ["OnMouseEnter"]
       53 GETUPVAL                         R1 11
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["UseInstantTooltip"]
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R2 K2 [tick]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 ADD                              R1 R2 R3
       13 SETTABLEKS                       R1 R0 K3 ["current"]
       15 GETUPVAL                         R0 1
       16 GETTABLEKS                       R0 R0 K4 ["OnMouseLeave"]
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R0 1
       20 GETTABLEKS                       R0 R0 K4 ["OnMouseLeave"]
       22 GETUPVAL                         R1 4
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRenderItemChildren"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R4 R0 K0 ["Material"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 GETTABLEKS                       R8 R0 K1 ["Loading"]
        7 JUMPIF                           R8 ; [+36]
        8 GETUPVAL                         R8 0
        9 CALL                             R8 0 1
       10 JUMPIFNOT                        R8 ; [+9]
       11 GETUPVAL                         R8 1
       12 MOVE                             R9 R4
       13 CALL                             R8 1 1
       14 GETUPVAL                         R9 2
       15 JUMPIFEQ                         R8 R9 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 JUMP                             ; [+7]
       20 GETTABLEKS                       R8 R0 K2 ["Id"]
       22 GETUPVAL                         R9 2
       23 JUMPIFEQ                         R8 R9 ; [+2]
       25 LOADB                            R5 0 +1
       26 LOADB                            R5 1
       27 GETUPVAL                         R8 0
       28 CALL                             R8 0 1
       29 JUMPIFNOT                        R8 ; [+8]
       30 GETUPVAL                         R8 1
       31 MOVE                             R9 R4
       32 CALL                             R8 1 1
       33 GETUPVAL                         R9 3
       34 JUMPIFEQ                         R8 R9 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 JUMPIFNOT                        R4 ; [+5]
       39 GETUPVAL                         R8 4
       40 MOVE                             R9 R4
       41 GETUPVAL                         R10 5
       42 CALL                             R8 2 1
       43 MOVE                             R7 R8
       44 GETUPVAL                         R8 6
       45 GETTABLEKS                       R8 R8 K3 ["createRef"]
       47 CALL                             R8 0 1
       48 DUPTABLE                         R9 K32 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "ShowTooltipWithLabel", "Size", "Style", "Text", "TooltipDelay", "ref"}]
       49 GETUPVAL                         R11 0
       50 CALL                             R11 0 1
       51 JUMPIFNOT                        R11 ; [+2]
       52 MOVE                             R10 R6
       53 JUMP                             ; [+1]
       54 LOADNIL                          R10
       55 SETTABLEKS                       R10 R9 K4 ["Applied"]
       57 GETUPVAL                         R11 7
       58 CALL                             R11 0 1
       59 JUMPIFNOT                        R11 ; [+2]
       60 GETUPVAL                         R10 8
       61 JUMP                             ; [+1]
       62 LOADNIL                          R10
       63 SETTABLEKS                       R10 R9 K5 ["CanvasPosition"]
       65 GETUPVAL                         R11 7
       66 CALL                             R11 0 1
       67 JUMPIFNOT                        R11 ; [+4]
       68 GETUPVAL                         R10 9
       69 GETTABLEKS                       R10 R10 K6 ["ShouldCenterTooltip"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 SETTABLEKS                       R10 R9 K6 ["ShouldCenterTooltip"]
       75 GETUPVAL                         R11 7
       76 CALL                             R11 0 1
       77 JUMPIFNOT                        R11 ; [+4]
       78 GETUPVAL                         R10 9
       79 GETTABLEKS                       R10 R10 K7 ["ContainerXBounds"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R10
       83 SETTABLEKS                       R10 R9 K7 ["ContainerXBounds"]
       85 GETUPVAL                         R11 7
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+4]
       88 GETUPVAL                         R10 9
       89 GETTABLEKS                       R10 R10 K8 ["ContainerYBounds"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K8 ["ContainerYBounds"]
       95 GETUPVAL                         R11 9
       96 GETTABLEKS                       R11 R11 K33 ["CustomPreviews"]
       98 JUMPIFNOT                        R11 ; [+5]
       99 GETUPVAL                         R11 9
      100 GETTABLEKS                       R11 R11 K33 ["CustomPreviews"]
      102 GETTABLE                         R10 R11 R4
      103 JUMP                             ; [+1]
      104 LOADNIL                          R10
      105 SETTABLEKS                       R10 R9 K9 ["CustomPreview"]
      107 GETUPVAL                         R10 9
      108 GETTABLEKS                       R10 R10 K10 ["InitialDistance"]
      110 SETTABLEKS                       R10 R9 K10 ["InitialDistance"]
      112 GETUPVAL                         R11 7
      113 CALL                             R11 0 1
      114 JUMPIFNOT                        R11 ; [+2]
      115 GETUPVAL                         R10 10
      116 JUMP                             ; [+1]
      117 LOADNIL                          R10
      118 SETTABLEKS                       R10 R9 K11 ["GridItemSize"]
      120 GETUPVAL                         R11 7
      121 CALL                             R11 0 1
      122 JUMPIFNOT                        R11 ; [+2]
      123 GETUPVAL                         R10 11
      124 JUMP                             ; [+1]
      125 LOADNIL                          R10
      126 SETTABLEKS                       R10 R9 K12 ["HoverEffectsEnabled"]
      128 GETUPVAL                         R11 7
      129 CALL                             R11 0 1
      130 JUMPIFNOT                        R11 ; [+2]
      131 GETUPVAL                         R10 12
      132 JUMP                             ; [+1]
      133 LOADNIL                          R10
      134 SETTABLEKS                       R10 R9 K13 ["InstantTooltipEnabled"]
      136 SETTABLEKS                       R1 R9 K14 ["LayoutOrder"]
      138 GETTABLEKS                       R10 R0 K1 ["Loading"]
      140 SETTABLEKS                       R10 R9 K1 ["Loading"]
      142 SETTABLEKS                       R4 R9 K0 ["Material"]
      144 GETUPVAL                         R10 9
      145 GETTABLEKS                       R10 R10 K15 ["MaterialPreviewGeometryType"]
      147 SETTABLEKS                       R10 R9 K15 ["MaterialPreviewGeometryType"]
      149 NEWCLOSURE                       R10 P0
      150 CAPTURE                          UPVAL U0
      151 CAPTURE                          UPVAL U9
      152 CAPTURE                          UPVAL U13
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R8
      155 SETTABLEKS                       R10 R9 K16 ["OnClick"]
      157 NEWCLOSURE                       R10 P1
      158 CAPTURE                          UPVAL U7
      159 CAPTURE                          UPVAL U9
      160 CAPTURE                          UPVAL U14
      161 CAPTURE                          UPVAL U15
      162 CAPTURE                          UPVAL U12
      163 CAPTURE                          UPVAL U16
      164 CAPTURE                          UPVAL U17
      165 CAPTURE                          UPVAL U18
      166 CAPTURE                          UPVAL U0
      167 CAPTURE                          UPVAL U19
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R0
      170 SETTABLEKS                       R10 R9 K17 ["OnMouseEnter"]
      172 NEWCLOSURE                       R10 P2
      173 CAPTURE                          UPVAL U7
      174 CAPTURE                          UPVAL U9
      175 CAPTURE                          UPVAL U14
      176 CAPTURE                          UPVAL U15
      177 CAPTURE                          VAL R0
      178 SETTABLEKS                       R10 R9 K18 ["OnMouseLeave"]
      180 GETUPVAL                         R11 9
      181 GETTABLEKS                       R11 R11 K34 ["OnRenderItemChildren"]
      183 JUMPIFNOT                        R11 ; [+4]
      184 NEWCLOSURE                       R10 P3
      185 CAPTURE                          UPVAL U9
      186 CAPTURE                          VAL R0
      187 JUMP                             ; [+1]
      188 LOADNIL                          R10
      189 SETTABLEKS                       R10 R9 K19 ["OnRenderChildren"]
      191 NEWCLOSURE                       R10 P4
      192 CAPTURE                          UPVAL U9
      193 CAPTURE                          VAL R0
      194 SETTABLEKS                       R10 R9 K20 ["OnRightClick"]
      196 GETUPVAL                         R11 7
      197 CALL                             R11 0 1
      198 JUMPIFNOT                        R11 ; [+2]
      199 GETUPVAL                         R10 20
      200 JUMP                             ; [+1]
      201 LOADNIL                          R10
      202 SETTABLEKS                       R10 R9 K21 ["OnMouseMoved"]
      204 GETUPVAL                         R11 7
      205 CALL                             R11 0 1
      206 JUMPIFNOT                        R11 ; [+2]
      207 GETUPVAL                         R10 21
      208 JUMP                             ; [+1]
      209 LOADNIL                          R10
      210 SETTABLEKS                       R10 R9 K22 ["OnTooltipShown"]
      212 SETTABLEKS                       R2 R9 K23 ["Position"]
      214 SETTABLEKS                       R5 R9 K24 ["Selected"]
      216 GETUPVAL                         R10 9
      217 GETTABLEKS                       R10 R10 K25 ["ShowGridLabels"]
      219 SETTABLEKS                       R10 R9 K25 ["ShowGridLabels"]
      221 GETUPVAL                         R11 22
      222 CALL                             R11 0 1
      223 JUMPIFNOT                        R11 ; [+4]
      224 GETUPVAL                         R10 9
      225 GETTABLEKS                       R10 R10 K26 ["ShowTooltipWithLabel"]
      227 JUMP                             ; [+1]
      228 LOADNIL                          R10
      229 SETTABLEKS                       R10 R9 K26 ["ShowTooltipWithLabel"]
      231 SETTABLEKS                       R3 R9 K27 ["Size"]
      233 GETUPVAL                         R10 23
      234 SETTABLEKS                       R10 R9 K28 ["Style"]
      236 SETTABLEKS                       R7 R9 K29 ["Text"]
      238 GETUPVAL                         R11 7
      239 CALL                             R11 0 1
      240 JUMPIFNOT                        R11 ; [+2]
      241 GETUPVAL                         R10 15
      242 JUMP                             ; [+1]
      243 LOADNIL                          R10
      244 SETTABLEKS                       R10 R9 K30 ["TooltipDelay"]
      246 GETUPVAL                         R11 0
      247 CALL                             R11 0 1
      248 JUMPIFNOT                        R11 ; [+2]
      249 LOADNIL                          R10
      250 JUMP                             ; [+1]
      251 MOVE                             R10 R8
      252 SETTABLEKS                       R10 R9 K31 ["ref"]
      254 RETURN                           R9 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["OnSnapshotTaken"]
       11 JUMPIFNOT                        R1 ; [+2]
       12 GETUPVAL                         R1 2
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K2 ["OnClick"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+33]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["UseInstantTooltip"]
       11 JUMPIFNOT                        R1 ; [+29]
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R3 K3 [tick]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 ADD                              R2 R3 R4
       18 SETTABLEKS                       R2 R1 K4 ["current"]
       20 GETUPVAL                         R1 4
       21 JUMPIFNOT                        R1 ; [+19]
       22 GETUPVAL                         R1 5
       23 JUMPIFNOT                        R1 ; [+6]
       24 GETUPVAL                         R1 5
       25 NAMECALL                         R1 R1 K5 ["Disconnect"]
       27 CALL                             R1 1 0
       28 LOADNIL                          R1
       29 SETUPVAL                         R1 5
       30 GETUPVAL                         R1 6
       31 GETTABLEKS                       R1 R1 K6 ["Heartbeat"]
       33 NEWCLOSURE                       R3 P0
       34 CAPTURE                          UPVAL U2
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          UPVAL U7
       37 NAMECALL                         R1 R1 K7 ["Connect"]
       39 CALL                             R1 2 1
       40 SETUPVAL                         R1 5
       41 GETUPVAL                         R1 8
       42 CALL                             R1 0 1
       43 JUMPIFNOT                        R1 ; [+8]
       44 GETUPVAL                         R1 0
       45 GETTABLEKS                       R1 R1 K8 ["OnSnapshotTaken"]
       47 JUMPIFNOT                        R1 ; [+4]
       48 GETUPVAL                         R1 9
       49 GETTABLEKS                       R2 R0 K9 ["Material"]
       51 CALL                             R1 1 0
       52 GETUPVAL                         R1 0
       53 GETTABLEKS                       R1 R1 K10 ["OnMouseEnter"]
       55 JUMPIFNOT                        R1 ; [+5]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K10 ["OnMouseEnter"]
       59 MOVE                             R2 R0
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ItemsDisabled"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+12]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["UseInstantTooltip"]
       11 JUMPIFNOT                        R1 ; [+8]
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R3 K3 [tick]
       15 CALL                             R3 0 1
       16 GETUPVAL                         R4 3
       17 ADD                              R2 R3 R4
       18 SETTABLEKS                       R2 R1 K4 ["current"]
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K5 ["OnMouseLeave"]
       23 JUMPIFNOT                        R1 ; [+5]
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K5 ["OnMouseLeave"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_23:
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

PROTO_24:
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

PROTO_25:
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
       14 JUMPIF                           R9 ; [+36]
       15 GETUPVAL                         R9 1
       16 CALL                             R9 0 1
       17 JUMPIFNOT                        R9 ; [+9]
       18 GETUPVAL                         R9 2
       19 MOVE                             R10 R5
       20 CALL                             R9 1 1
       21 GETUPVAL                         R10 3
       22 JUMPIFEQ                         R9 R10 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 JUMP                             ; [+7]
       27 GETTABLEKS                       R9 R0 K3 ["Id"]
       29 GETUPVAL                         R10 3
       30 JUMPIFEQ                         R9 R10 ; [+2]
       32 LOADB                            R6 0 +1
       33 LOADB                            R6 1
       34 GETUPVAL                         R9 1
       35 CALL                             R9 0 1
       36 JUMPIFNOT                        R9 ; [+8]
       37 GETUPVAL                         R9 2
       38 MOVE                             R10 R5
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 4
       41 JUMPIFEQ                         R9 R10 ; [+2]
       43 LOADB                            R7 0 +1
       44 LOADB                            R7 1
       45 JUMPIFNOT                        R5 ; [+5]
       46 GETUPVAL                         R9 5
       47 MOVE                             R10 R5
       48 GETUPVAL                         R11 6
       49 CALL                             R9 2 1
       50 MOVE                             R8 R9
       51 GETUPVAL                         R9 7
       52 GETTABLEKS                       R9 R9 K4 ["createRef"]
       54 CALL                             R9 0 1
       55 DUPTABLE                         R10 K34 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "Item", "ItemsDisabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "ShowTooltipWithLabel", "Size", "Style", "Text", "TooltipDelay", "ref"}]
       56 GETUPVAL                         R12 1
       57 CALL                             R12 0 1
       58 JUMPIFNOT                        R12 ; [+2]
       59 MOVE                             R11 R7
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 SETTABLEKS                       R11 R10 K5 ["Applied"]
       64 GETUPVAL                         R12 8
       65 CALL                             R12 0 1
       66 JUMPIFNOT                        R12 ; [+2]
       67 GETUPVAL                         R11 9
       68 JUMP                             ; [+1]
       69 LOADNIL                          R11
       70 SETTABLEKS                       R11 R10 K6 ["CanvasPosition"]
       72 GETUPVAL                         R12 8
       73 CALL                             R12 0 1
       74 JUMPIFNOT                        R12 ; [+4]
       75 GETUPVAL                         R11 0
       76 GETTABLEKS                       R11 R11 K7 ["ShouldCenterTooltip"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R11
       80 SETTABLEKS                       R11 R10 K7 ["ShouldCenterTooltip"]
       82 GETUPVAL                         R12 8
       83 CALL                             R12 0 1
       84 JUMPIFNOT                        R12 ; [+4]
       85 GETUPVAL                         R11 0
       86 GETTABLEKS                       R11 R11 K8 ["ContainerXBounds"]
       88 JUMP                             ; [+1]
       89 LOADNIL                          R11
       90 SETTABLEKS                       R11 R10 K8 ["ContainerXBounds"]
       92 GETUPVAL                         R12 8
       93 CALL                             R12 0 1
       94 JUMPIFNOT                        R12 ; [+4]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K9 ["ContainerYBounds"]
       98 JUMP                             ; [+1]
       99 LOADNIL                          R11
      100 SETTABLEKS                       R11 R10 K9 ["ContainerYBounds"]
      102 GETUPVAL                         R12 0
      103 GETTABLEKS                       R12 R12 K35 ["CustomPreviews"]
      105 JUMPIFNOT                        R12 ; [+5]
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R12 R12 K35 ["CustomPreviews"]
      109 GETTABLE                         R11 R12 R5
      110 JUMP                             ; [+1]
      111 LOADNIL                          R11
      112 SETTABLEKS                       R11 R10 K10 ["CustomPreview"]
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R11 R11 K11 ["InitialDistance"]
      117 SETTABLEKS                       R11 R10 K11 ["InitialDistance"]
      119 GETUPVAL                         R12 8
      120 CALL                             R12 0 1
      121 JUMPIFNOT                        R12 ; [+2]
      122 GETUPVAL                         R11 10
      123 JUMP                             ; [+1]
      124 LOADNIL                          R11
      125 SETTABLEKS                       R11 R10 K12 ["GridItemSize"]
      127 GETUPVAL                         R12 8
      128 CALL                             R12 0 1
      129 JUMPIFNOT                        R12 ; [+4]
      130 GETUPVAL                         R11 11
      131 JUMPIFNOT                        R11 ; [+3]
      132 NOT                              R11 R4
      133 JUMP                             ; [+1]
      134 LOADNIL                          R11
      135 SETTABLEKS                       R11 R10 K13 ["HoverEffectsEnabled"]
      137 SETTABLEKS                       R0 R10 K14 ["Item"]
      139 SETTABLEKS                       R4 R10 K0 ["ItemsDisabled"]
      141 GETUPVAL                         R12 8
      142 CALL                             R12 0 1
      143 JUMPIFNOT                        R12 ; [+2]
      144 GETUPVAL                         R11 12
      145 JUMP                             ; [+1]
      146 LOADNIL                          R11
      147 SETTABLEKS                       R11 R10 K15 ["InstantTooltipEnabled"]
      149 SETTABLEKS                       R1 R10 K16 ["LayoutOrder"]
      151 GETTABLEKS                       R11 R0 K2 ["Loading"]
      153 SETTABLEKS                       R11 R10 K2 ["Loading"]
      155 SETTABLEKS                       R5 R10 K1 ["Material"]
      157 GETUPVAL                         R11 0
      158 GETTABLEKS                       R11 R11 K17 ["MaterialPreviewGeometryType"]
      160 SETTABLEKS                       R11 R10 K17 ["MaterialPreviewGeometryType"]
      162 GETUPVAL                         R11 13
      163 SETTABLEKS                       R11 R10 K18 ["OnClick"]
      165 GETUPVAL                         R11 14
      166 SETTABLEKS                       R11 R10 K19 ["OnMouseEnter"]
      168 GETUPVAL                         R11 15
      169 SETTABLEKS                       R11 R10 K20 ["OnMouseLeave"]
      171 GETUPVAL                         R12 0
      172 GETTABLEKS                       R12 R12 K36 ["OnRenderItemChildren"]
      174 JUMPIFNOT                        R12 ; [+2]
      175 GETUPVAL                         R11 16
      176 JUMP                             ; [+1]
      177 LOADNIL                          R11
      178 SETTABLEKS                       R11 R10 K21 ["OnRenderChildren"]
      180 GETUPVAL                         R11 17
      181 SETTABLEKS                       R11 R10 K22 ["OnRightClick"]
      183 GETUPVAL                         R12 8
      184 CALL                             R12 0 1
      185 JUMPIFNOT                        R12 ; [+2]
      186 GETUPVAL                         R11 18
      187 JUMP                             ; [+1]
      188 LOADNIL                          R11
      189 SETTABLEKS                       R11 R10 K23 ["OnMouseMoved"]
      191 GETUPVAL                         R12 8
      192 CALL                             R12 0 1
      193 JUMPIFNOT                        R12 ; [+2]
      194 GETUPVAL                         R11 19
      195 JUMP                             ; [+1]
      196 LOADNIL                          R11
      197 SETTABLEKS                       R11 R10 K24 ["OnTooltipShown"]
      199 SETTABLEKS                       R2 R10 K25 ["Position"]
      201 SETTABLEKS                       R6 R10 K26 ["Selected"]
      203 GETUPVAL                         R11 0
      204 GETTABLEKS                       R11 R11 K27 ["ShowGridLabels"]
      206 SETTABLEKS                       R11 R10 K27 ["ShowGridLabels"]
      208 GETUPVAL                         R12 20
      209 CALL                             R12 0 1
      210 JUMPIFNOT                        R12 ; [+4]
      211 GETUPVAL                         R11 0
      212 GETTABLEKS                       R11 R11 K28 ["ShowTooltipWithLabel"]
      214 JUMP                             ; [+1]
      215 LOADNIL                          R11
      216 SETTABLEKS                       R11 R10 K28 ["ShowTooltipWithLabel"]
      218 SETTABLEKS                       R3 R10 K29 ["Size"]
      220 GETUPVAL                         R11 21
      221 SETTABLEKS                       R11 R10 K30 ["Style"]
      223 SETTABLEKS                       R8 R10 K31 ["Text"]
      225 GETUPVAL                         R12 8
      226 CALL                             R12 0 1
      227 JUMPIFNOT                        R12 ; [+2]
      228 GETUPVAL                         R11 22
      229 JUMP                             ; [+1]
      230 LOADNIL                          R11
      231 SETTABLEKS                       R11 R10 K32 ["TooltipDelay"]
      233 GETUPVAL                         R12 1
      234 CALL                             R12 0 1
      235 JUMPIFNOT                        R12 ; [+2]
      236 LOADNIL                          R11
      237 JUMP                             ; [+1]
      238 MOVE                             R11 R9
      239 SETTABLEKS                       R11 R10 K33 ["ref"]
      241 RETURN                           R10 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K8 [{"Static", "Transparent", "Material", "Size", "BackgroundColor", "MeshPartBorderThickness", "ref"}]
       13 LOADB                            R7 1
       14 SETTABLEKS                       R7 R6 K1 ["Static"]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K2 ["Transparent"]
       19 GETUPVAL                         R7 3
       20 SETTABLEKS                       R7 R6 K3 ["Material"]
       22 GETUPVAL                         R7 4
       23 GETUPVAL                         R8 5
       24 GETTABLEKS                       R8 R8 K9 ["SnapshotSize"]
       26 GETUPVAL                         R9 6
       27 GETTABLEKS                       R9 R9 K9 ["SnapshotSize"]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K4 ["Size"]
       32 GETUPVAL                         R7 6
       33 GETTABLEKS                       R7 R7 K10 ["GridItemBackgroundColor"]
       35 SETTABLEKS                       R7 R6 K5 ["BackgroundColor"]
       37 GETUPVAL                         R7 5
       38 GETTABLEKS                       R7 R7 K11 ["SnapshotBorderThickness"]
       40 SETTABLEKS                       R7 R6 K6 ["MeshPartBorderThickness"]
       42 GETUPVAL                         R7 7
       43 SETTABLEKS                       R7 R6 K7 ["ref"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["createElement"]
       49 GETUPVAL                         R6 1
       50 DUPTABLE                         R7 K13 [{"Size", "BackgroundColor3"}]
       51 GETIMPORT                        R8 K16 [UDim2.fromScale]
       53 LOADN                            R9 1
       54 LOADN                            R10 1
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K4 ["Size"]
       58 GETUPVAL                         R8 6
       59 GETTABLEKS                       R8 R8 K5 ["BackgroundColor"]
       61 SETTABLEKS                       R8 R7 K12 ["BackgroundColor3"]
       63 CALL                             R5 2 -1
       64 SETLIST                          R3 R4 -1 [1]
       66 CALL                             R0 3 -1
       67 RETURN                           R0 -1

PROTO_27:
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
       97 CAPTURE                          UPVAL U21
       98 CAPTURE                          UPVAL U9
       99 SETTABLEKS                       R5 R4 K10 ["OnScrollUpdate"]
      101 GETUPVAL                         R6 7
      102 CALL                             R6 0 1
      103 JUMPIFNOT                        R6 ; [+4]
      104 GETUPVAL                         R5 8
      105 GETTABLEKS                       R5 R5 K11 ["ScrollingDirection"]
      107 JUMP                             ; [+1]
      108 LOADNIL                          R5
      109 SETTABLEKS                       R5 R4 K11 ["ScrollingDirection"]
      111 CALL                             R2 2 -1
      112 RETURN                           R2 -1

PROTO_28:
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
       65 CAPTURE                          UPVAL U20
       66 SETTABLEKS                       R5 R4 K4 ["OnScrollUpdate"]
       68 SETTABLEKS                       R0 R4 K5 ["RowComponent"]
       70 GETUPVAL                         R5 11
       71 SETTABLEKS                       R5 R4 K6 ["RowHeight"]
       73 GETUPVAL                         R5 21
       74 SETTABLEKS                       R5 R4 K7 ["Rows"]
       76 GETUPVAL                         R6 7
       77 CALL                             R6 0 1
       78 JUMPIFNOT                        R6 ; [+4]
       79 GETUPVAL                         R5 8
       80 GETTABLEKS                       R5 R5 K8 ["ScrollingDirection"]
       82 JUMP                             ; [+1]
       83 LOADNIL                          R5
       84 SETTABLEKS                       R5 R4 K8 ["ScrollingDirection"]
       86 CALL                             R2 2 -1
       87 RETURN                           R2 -1

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_31:
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
       51 GETTABLEKS                       R11 R0 K9 ["Items"]
       53 GETUPVAL                         R12 3
       54 GETTABLEKS                       R12 R12 K10 ["map"]
       56 MOVE                             R13 R11
       57 DUPCLOSURE                       R14 K11 [PROTO_0]
       58 CALL                             R12 2 1
       59 MOVE                             R10 R12
       60 GETUPVAL                         R11 4
       61 GETTABLEKS                       R11 R11 K12 ["createRef"]
       63 CALL                             R11 0 1
       64 GETUPVAL                         R12 5
       65 CALL                             R12 0 2
       66 NEWCLOSURE                       R14 P1
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R0
       69 GETUPVAL                         R15 5
       70 LOADB                            R16 0
       71 CALL                             R15 1 2
       72 GETUPVAL                         R17 4
       73 GETTABLEKS                       R17 R17 K13 ["useRef"]
       75 LOADN                            R18 0
       76 CALL                             R17 1 1
       77 LOADNIL                          R18
       78 GETUPVAL                         R19 5
       79 LOADB                            R20 1
       80 CALL                             R19 1 2
       81 GETUPVAL                         R21 4
       82 GETTABLEKS                       R21 R21 K13 ["useRef"]
       84 LOADN                            R22 0
       85 CALL                             R21 1 1
       86 GETUPVAL                         R22 5
       87 GETIMPORT                        R23 K16 [Vector2.new]
       89 CALL                             R23 0 -1
       90 CALL                             R22 -1 2
       91 NEWCLOSURE                       R24 P2
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R16
       94 NEWCLOSURE                       R25 P3
       95 CAPTURE                          REF R18
       96 NEWCLOSURE                       R26 P4
       97 CAPTURE                          REF R18
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R17
      100 CAPTURE                          VAL R16
      101 NEWCLOSURE                       R27 P5
      102 CAPTURE                          VAL R0
      103 CAPTURE                          VAL R17
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R15
      106 CAPTURE                          REF R18
      107 CAPTURE                          UPVAL U6
      108 CAPTURE                          VAL R16
      109 NEWCLOSURE                       R28 P6
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R17
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R21
      114 CAPTURE                          VAL R20
      115 NEWCLOSURE                       R29 P7
      116 CAPTURE                          VAL R0
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R9
      119 GETUPVAL                         R30 4
      120 GETTABLEKS                       R30 R30 K13 ["useRef"]
      122 GETTABLEKS                       R31 R0 K17 ["InitialListCanvasPosition"]
      124 JUMPIF                           R31 ; [+5]
      125 GETIMPORT                        R31 K16 [Vector2.new]
      127 LOADN                            R32 0
      128 LOADN                            R33 0
      129 CALL                             R31 2 1
      130 CALL                             R30 1 1
      131 GETUPVAL                         R31 4
      132 GETTABLEKS                       R31 R31 K13 ["useRef"]
      134 GETTABLEKS                       R32 R0 K18 ["InitialGridCanvasPosition"]
      136 JUMPIF                           R32 ; [+5]
      137 GETIMPORT                        R32 K16 [Vector2.new]
      139 LOADN                            R33 0
      140 LOADN                            R34 0
      141 CALL                             R32 2 1
      142 CALL                             R31 1 1
      143 NEWCLOSURE                       R32 P8
      144 CAPTURE                          VAL R4
      145 CAPTURE                          VAL R2
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          VAL R30
      150 CAPTURE                          UPVAL U8
      151 CAPTURE                          VAL R23
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R9
      154 CAPTURE                          VAL R20
      155 CAPTURE                          VAL R21
      156 CAPTURE                          VAL R31
      157 LOADNIL                          R33
      158 GETTABLEKS                       R34 R0 K19 ["SelectedItemId"]
      160 JUMPIFNOT                        R34 ; [+3]
      161 GETTABLEKS                       R33 R0 K19 ["SelectedItemId"]
      163 JUMP                             ; [+23]
      164 GETTABLEKS                       R34 R0 K20 ["SelectedItem"]
      166 JUMPIFNOT                        R34 ; [+20]
      167 NEWTABLE                         R36 0 1
      169 GETTABLEKS                       R37 R0 K20 ["SelectedItem"]
      171 SETLIST                          R36 R37 1 [1]
      173 GETUPVAL                         R37 3
      174 GETTABLEKS                       R37 R37 K10 ["map"]
      176 MOVE                             R38 R36
      177 DUPCLOSURE                       R39 K11 [PROTO_0]
      178 CALL                             R37 2 1
      179 MOVE                             R35 R37
      180 GETTABLEN                        R34 R35 1
      181 GETTABLEKS                       R35 R34 K21 ["Id"]
      183 JUMPIF                           R35 ; [+2]
      184 GETTABLEKS                       R35 R34 K22 ["Material"]
      186 MOVE                             R33 R35
      187 LOADNIL                          R34
      188 GETUPVAL                         R35 9
      189 CALL                             R35 0 1
      190 JUMPIFNOT                        R35 ; [+5]
      191 GETTABLEKS                       R35 R0 K23 ["AppliedItemId"]
      193 JUMPIFNOT                        R35 ; [+2]
      194 GETTABLEKS                       R34 R0 K23 ["AppliedItemId"]
      196 NEWCLOSURE                       R35 P9
      197 CAPTURE                          UPVAL U9
      198 CAPTURE                          UPVAL U10
      199 CAPTURE                          REF R33
      200 CAPTURE                          REF R34
      201 CAPTURE                          UPVAL U11
      202 CAPTURE                          VAL R1
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          UPVAL U8
      205 CAPTURE                          VAL R22
      206 CAPTURE                          VAL R0
      207 CAPTURE                          VAL R3
      208 CAPTURE                          VAL R19
      209 CAPTURE                          VAL R15
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R9
      213 CAPTURE                          REF R18
      214 CAPTURE                          UPVAL U6
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R13
      217 CAPTURE                          VAL R28
      218 CAPTURE                          VAL R24
      219 CAPTURE                          UPVAL U12
      220 CAPTURE                          VAL R2
      221 GETUPVAL                         R36 4
      222 GETTABLEKS                       R36 R36 K24 ["useCallback"]
      224 NEWCLOSURE                       R37 P10
      225 CAPTURE                          VAL R0
      226 CAPTURE                          UPVAL U9
      227 CAPTURE                          VAL R14
      228 NEWTABLE                         R38 0 4
      230 GETTABLEKS                       R39 R0 K25 ["ItemsDisabled"]
      232 GETTABLEKS                       R40 R0 K26 ["OnSnapshotTaken"]
      234 GETTABLEKS                       R41 R0 K27 ["OnClick"]
      236 MOVE                             R42 R14
      237 SETLIST                          R38 R39 4 [1]
      239 CALL                             R36 2 1
      240 GETUPVAL                         R37 4
      241 GETTABLEKS                       R37 R37 K24 ["useCallback"]
      243 NEWCLOSURE                       R38 P11
      244 CAPTURE                          VAL R0
      245 CAPTURE                          UPVAL U8
      246 CAPTURE                          VAL R17
      247 CAPTURE                          VAL R9
      248 CAPTURE                          VAL R15
      249 CAPTURE                          REF R18
      250 CAPTURE                          UPVAL U6
      251 CAPTURE                          VAL R16
      252 CAPTURE                          UPVAL U9
      253 CAPTURE                          VAL R13
      254 NEWTABLE                         R39 0 5
      256 GETTABLEKS                       R40 R0 K25 ["ItemsDisabled"]
      258 MOVE                             R41 R27
      259 GETTABLEKS                       R42 R0 K26 ["OnSnapshotTaken"]
      261 MOVE                             R43 R13
      262 GETTABLEKS                       R44 R0 K28 ["OnMouseEnter"]
      264 SETLIST                          R39 R40 5 [1]
      266 CALL                             R37 2 1
      267 GETUPVAL                         R38 4
      268 GETTABLEKS                       R38 R38 K24 ["useCallback"]
      270 NEWCLOSURE                       R39 P12
      271 CAPTURE                          VAL R0
      272 CAPTURE                          UPVAL U8
      273 CAPTURE                          VAL R17
      274 CAPTURE                          VAL R9
      275 NEWTABLE                         R40 0 3
      277 GETTABLEKS                       R41 R0 K25 ["ItemsDisabled"]
      279 MOVE                             R42 R29
      280 GETTABLEKS                       R43 R0 K29 ["OnMouseLeave"]
      282 SETLIST                          R40 R41 3 [1]
      284 CALL                             R38 2 1
      285 GETUPVAL                         R39 4
      286 GETTABLEKS                       R39 R39 K24 ["useCallback"]
      288 NEWCLOSURE                       R40 P13
      289 CAPTURE                          VAL R0
      290 NEWTABLE                         R41 0 2
      292 GETTABLEKS                       R42 R0 K25 ["ItemsDisabled"]
      294 GETTABLEKS                       R43 R0 K30 ["OnRightClick"]
      296 SETLIST                          R41 R42 2 [1]
      298 CALL                             R39 2 1
      299 GETUPVAL                         R40 4
      300 GETTABLEKS                       R40 R40 K24 ["useCallback"]
      302 NEWCLOSURE                       R41 P14
      303 CAPTURE                          VAL R0
      304 NEWTABLE                         R42 0 1
      306 GETTABLEKS                       R43 R0 K31 ["OnRenderItemChildren"]
      308 SETLIST                          R42 R43 1 [1]
      310 CALL                             R40 2 1
      311 NEWCLOSURE                       R41 P15
      312 CAPTURE                          VAL R0
      313 CAPTURE                          UPVAL U9
      314 CAPTURE                          UPVAL U10
      315 CAPTURE                          REF R33
      316 CAPTURE                          REF R34
      317 CAPTURE                          UPVAL U11
      318 CAPTURE                          VAL R1
      319 CAPTURE                          UPVAL U4
      320 CAPTURE                          UPVAL U8
      321 CAPTURE                          VAL R22
      322 CAPTURE                          VAL R3
      323 CAPTURE                          VAL R19
      324 CAPTURE                          VAL R15
      325 CAPTURE                          VAL R36
      326 CAPTURE                          VAL R37
      327 CAPTURE                          VAL R38
      328 CAPTURE                          VAL R40
      329 CAPTURE                          VAL R39
      330 CAPTURE                          VAL R28
      331 CAPTURE                          VAL R24
      332 CAPTURE                          UPVAL U12
      333 CAPTURE                          VAL R2
      334 CAPTURE                          VAL R9
      335 NEWCLOSURE                       R42 P16
      336 CAPTURE                          UPVAL U4
      337 CAPTURE                          UPVAL U13
      338 CAPTURE                          UPVAL U14
      339 CAPTURE                          VAL R12
      340 CAPTURE                          UPVAL U2
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R2
      343 CAPTURE                          VAL R11
      344 NEWCLOSURE                       R43 P17
      345 CAPTURE                          UPVAL U15
      346 CAPTURE                          UPVAL U16
      347 CAPTURE                          UPVAL U17
      348 CAPTURE                          VAL R41
      349 CAPTURE                          VAL R35
      350 CAPTURE                          UPVAL U4
      351 CAPTURE                          UPVAL U18
      352 CAPTURE                          UPVAL U19
      353 CAPTURE                          VAL R0
      354 CAPTURE                          VAL R31
      355 CAPTURE                          VAL R2
      356 CAPTURE                          VAL R3
      357 CAPTURE                          VAL R10
      358 CAPTURE                          UPVAL U7
      359 CAPTURE                          VAL R4
      360 CAPTURE                          VAL R30
      361 CAPTURE                          UPVAL U8
      362 CAPTURE                          VAL R23
      363 CAPTURE                          VAL R17
      364 CAPTURE                          VAL R9
      365 CAPTURE                          VAL R20
      366 CAPTURE                          VAL R21
      367 NEWCLOSURE                       R44 P18
      368 CAPTURE                          UPVAL U15
      369 CAPTURE                          UPVAL U20
      370 CAPTURE                          UPVAL U21
      371 CAPTURE                          VAL R41
      372 CAPTURE                          VAL R35
      373 CAPTURE                          UPVAL U4
      374 CAPTURE                          UPVAL U22
      375 CAPTURE                          UPVAL U19
      376 CAPTURE                          VAL R0
      377 CAPTURE                          VAL R30
      378 CAPTURE                          UPVAL U7
      379 CAPTURE                          VAL R4
      380 CAPTURE                          VAL R2
      381 CAPTURE                          VAL R3
      382 CAPTURE                          UPVAL U8
      383 CAPTURE                          VAL R23
      384 CAPTURE                          VAL R17
      385 CAPTURE                          VAL R9
      386 CAPTURE                          VAL R20
      387 CAPTURE                          VAL R21
      388 CAPTURE                          VAL R31
      389 CAPTURE                          VAL R10
      390 GETUPVAL                         R45 9
      391 CALL                             R45 0 1
      392 JUMPIFNOT                        R45 ; [+80]
      393 GETUPVAL                         R45 4
      394 GETTABLEKS                       R45 R45 K32 ["createElement"]
      396 GETUPVAL                         R46 13
      397 DUPTABLE                         R47 K37 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      398 GETUPVAL                         R49 19
      399 CALL                             R49 0 1
      400 JUMPIFNOT                        R49 ; [+3]
      401 GETTABLEKS                       R48 R0 K33 ["AutomaticSize"]
      403 JUMP                             ; [+1]
      404 LOADNIL                          R48
      405 SETTABLEKS                       R48 R47 K33 ["AutomaticSize"]
      407 GETTABLEKS                       R48 R2 K34 ["BackgroundColor"]
      409 SETTABLEKS                       R48 R47 K34 ["BackgroundColor"]
      411 GETTABLEKS                       R48 R0 K35 ["LayoutOrder"]
      413 SETTABLEKS                       R48 R47 K35 ["LayoutOrder"]
      415 NEWCLOSURE                       R48 P19
      416 CAPTURE                          VAL R0
      417 SETTABLEKS                       R48 R47 K30 ["OnRightClick"]
      419 GETTABLEKS                       R49 R0 K4 ["Padding"]
      421 JUMPIFNOT                        R49 ; [+2]
      422 MOVE                             R48 R5
      423 JUMP                             ; [+8]
      424 GETUPVAL                         R49 7
      425 GETTABLEKS                       R49 R49 K38 ["Grid"]
      427 JUMPIFNOTEQ                      R8 R49 ; [+3]
      429 MOVE                             R48 R6
      430 JUMP                             ; [+1]
      431 MOVE                             R48 R7
      432 SETTABLEKS                       R48 R47 K4 ["Padding"]
      434 GETTABLEKS                       R48 R0 K36 ["Size"]
      436 SETTABLEKS                       R48 R47 K36 ["Size"]
      438 DUPTABLE                         R48 K41 [{"DummyViewport", "Grid", "List"}]
      439 GETTABLEKS                       R50 R0 K26 ["OnSnapshotTaken"]
      441 JUMPIFNOT                        R50 ; [+3]
      442 MOVE                             R49 R42
      443 CALL                             R49 0 1
      444 JUMP                             ; [+1]
      445 LOADNIL                          R49
      446 SETTABLEKS                       R49 R48 K39 ["DummyViewport"]
      448 GETUPVAL                         R50 7
      449 GETTABLEKS                       R50 R50 K38 ["Grid"]
      451 JUMPIFNOTEQ                      R8 R50 ; [+4]
      453 MOVE                             R49 R43
      454 CALL                             R49 0 1
      455 JUMP                             ; [+1]
      456 LOADNIL                          R49
      457 SETTABLEKS                       R49 R48 K38 ["Grid"]
      459 GETUPVAL                         R50 7
      460 GETTABLEKS                       R50 R50 K40 ["List"]
      462 JUMPIFNOTEQ                      R8 R50 ; [+4]
      464 MOVE                             R49 R44
      465 CALL                             R49 0 1
      466 JUMP                             ; [+1]
      467 LOADNIL                          R49
      468 SETTABLEKS                       R49 R48 K40 ["List"]
      470 CALL                             R45 3 -1
      471 CLOSEUPVALS                      R18
      472 RETURN                           R45 -1
      473 GETUPVAL                         R45 4
      474 GETTABLEKS                       R45 R45 K32 ["createElement"]
      476 GETUPVAL                         R46 13
      477 DUPTABLE                         R47 K37 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      478 GETUPVAL                         R49 19
      479 CALL                             R49 0 1
      480 JUMPIFNOT                        R49 ; [+3]
      481 GETTABLEKS                       R48 R0 K33 ["AutomaticSize"]
      483 JUMP                             ; [+1]
      484 LOADNIL                          R48
      485 SETTABLEKS                       R48 R47 K33 ["AutomaticSize"]
      487 GETTABLEKS                       R48 R2 K34 ["BackgroundColor"]
      489 SETTABLEKS                       R48 R47 K34 ["BackgroundColor"]
      491 GETTABLEKS                       R48 R0 K35 ["LayoutOrder"]
      493 SETTABLEKS                       R48 R47 K35 ["LayoutOrder"]
      495 NEWCLOSURE                       R48 P20
      496 CAPTURE                          VAL R0
      497 SETTABLEKS                       R48 R47 K30 ["OnRightClick"]
      499 SETTABLEKS                       R5 R47 K4 ["Padding"]
      501 GETTABLEKS                       R48 R0 K36 ["Size"]
      503 SETTABLEKS                       R48 R47 K36 ["Size"]
      505 DUPTABLE                         R48 K42 [{"Grid", "List"}]
      506 GETUPVAL                         R50 7
      507 GETTABLEKS                       R50 R50 K38 ["Grid"]
      509 JUMPIFNOTEQ                      R8 R50 ; [+4]
      511 MOVE                             R49 R43
      512 CALL                             R49 0 1
      513 JUMP                             ; [+1]
      514 LOADNIL                          R49
      515 SETTABLEKS                       R49 R48 K38 ["Grid"]
      517 GETUPVAL                         R50 7
      518 GETTABLEKS                       R50 R50 K40 ["List"]
      520 JUMPIFNOTEQ                      R8 R50 ; [+4]
      522 MOVE                             R49 R44
      523 CALL                             R49 0 1
      524 JUMP                             ; [+1]
      525 LOADNIL                          R49
      526 SETTABLEKS                       R49 R48 K40 ["List"]
      528 CALL                             R45 3 -1
      529 CLOSEUPVALS                      R18
      530 RETURN                           R45 -1

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
      138 GETTABLEKS                       R27 R27 K38 ["getFFlagMaterialPickerUIChanges"]
      140 CALL                             R26 1 1
      141 GETIMPORT                        R27 K4 [require]
      143 GETTABLEKS                       R28 R0 K22 ["Flags"]
      145 GETTABLEKS                       R28 R28 K39 ["getFFlagMaterialPickerInstantTooltip"]
      147 CALL                             R27 1 1
      148 DUPCLOSURE                       R28 K40 [PROTO_1]
      149 CAPTURE                          VAL R4
      150 DUPCLOSURE                       R29 K41 [PROTO_31]
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R4
      155 CAPTURE                          VAL R6
      156 CAPTURE                          VAL R7
      157 CAPTURE                          VAL R23
      158 CAPTURE                          VAL R20
      159 CAPTURE                          VAL R27
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
      174 RETURN                           R29 1
