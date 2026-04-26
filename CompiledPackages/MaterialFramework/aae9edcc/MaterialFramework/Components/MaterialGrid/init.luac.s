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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["map"]
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
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K2 ["OnSnapshotTaken"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R2 R3 K2 ["OnSnapshotTaken"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
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
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K2 ["current"]
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
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["Heartbeat"]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U3
       15 NAMECALL                         R0 R0 K2 ["Connect"]
       17 CALL                             R0 2 1
       18 SETUPVAL                         R0 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
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
       22 GETUPVAL                         R1 5
       23 GETTABLEKS                       R0 R1 K5 ["Heartbeat"]
       25 NEWCLOSURE                       R2 P0
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          UPVAL U4
       28 CAPTURE                          UPVAL U6
       29 NAMECALL                         R0 R0 K6 ["Connect"]
       31 CALL                             R0 2 1
       32 SETUPVAL                         R0 4
       33 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 GETIMPORT                        R0 K2 [tick]
       14 CALL                             R0 0 1
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R1 R2 K3 ["current"]
       18 JUMPIFNOTLE                      R1 R0 ; [+4]
       20 GETUPVAL                         R0 4
       21 LOADB                            R1 1
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETIMPORT                        R2 K2 [tick]
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 ADD                              R1 R2 R3
       10 SETTABLEKS                       R1 R0 K3 ["current"]
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["OnScrollUpdate"]
        3 JUMPIFNOT                        R2 ; [+5]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["OnScrollUpdate"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Grid"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+49]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K2 ["ShouldSyncScroll"]
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
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R2 R3 K8 ["ShouldCenterTooltip"]
       36 JUMPIFNOT                        R2 ; [+3]
       37 GETUPVAL                         R2 6
       38 MOVE                             R3 R0
       39 CALL                             R2 1 0
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K9 ["UseInstantTooltip"]
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
       64 GETUPVAL                         R4 2
       65 GETTABLEKS                       R3 R4 K13 ["List"]
       67 JUMPIFNOTEQ                      R2 R3 ; [+16]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R2 R3 K2 ["ShouldSyncScroll"]
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
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["ListItemPadding"]
        4 ADD                              R1 R2 R3
        5 GETUPVAL                         R3 2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K1 ["GridItemPadding"]
        9 ADD                              R2 R3 R4
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K3 ["GridItemsPerRow"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["OnSnapshotTaken"]
        6 JUMPIFNOT                        R0 ; [+2]
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K1 ["OnClick"]
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R0 R1 K1 ["OnClick"]
       16 GETUPVAL                         R1 3
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 0
       19 CALL                             R0 0 1
       20 JUMPIF                           R0 ; [+20]
       21 GETUPVAL                         R1 1
       22 GETTABLEKS                       R0 R1 K0 ["OnSnapshotTaken"]
       24 JUMPIFNOT                        R0 ; [+16]
       25 GETIMPORT                        R0 K3 [pcall]
       27 NEWCLOSURE                       R1 P0
       28 CAPTURE                          UPVAL U4
       29 CALL                             R0 1 2
       30 JUMPIFNOT                        R0 ; [+6]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K0 ["OnSnapshotTaken"]
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
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
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
       25 GETUPVAL                         R1 6
       26 GETTABLEKS                       R0 R1 K5 ["Heartbeat"]
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
       39 GETUPVAL                         R1 1
       40 GETTABLEKS                       R0 R1 K7 ["OnSnapshotTaken"]
       42 JUMPIFNOT                        R0 ; [+3]
       43 GETUPVAL                         R0 9
       44 GETUPVAL                         R1 10
       45 CALL                             R0 1 0
       46 GETUPVAL                         R1 1
       47 GETTABLEKS                       R0 R1 K8 ["OnMouseEnter"]
       49 JUMPIFNOT                        R0 ; [+5]
       50 GETUPVAL                         R1 1
       51 GETTABLEKS                       R0 R1 K8 ["OnMouseEnter"]
       53 GETUPVAL                         R1 11
       54 CALL                             R0 1 0
       55 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["UseInstantTooltip"]
        6 JUMPIFNOT                        R0 ; [+8]
        7 GETUPVAL                         R0 2
        8 GETIMPORT                        R2 K2 [tick]
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 ADD                              R1 R2 R3
       13 SETTABLEKS                       R1 R0 K3 ["current"]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K4 ["OnMouseLeave"]
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETUPVAL                         R1 1
       20 GETTABLEKS                       R0 R1 K4 ["OnMouseLeave"]
       22 GETUPVAL                         R1 4
       23 CALL                             R0 1 0
       24 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRenderItemChildren"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
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
       44 GETUPVAL                         R9 6
       45 GETTABLEKS                       R8 R9 K3 ["createRef"]
       47 CALL                             R8 0 1
       48 DUPTABLE                         R9 K31 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "Size", "Style", "Text", "TooltipDelay", "ref"}]
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
       68 GETUPVAL                         R11 9
       69 GETTABLEKS                       R10 R11 K6 ["ShouldCenterTooltip"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R10
       73 SETTABLEKS                       R10 R9 K6 ["ShouldCenterTooltip"]
       75 GETUPVAL                         R11 7
       76 CALL                             R11 0 1
       77 JUMPIFNOT                        R11 ; [+4]
       78 GETUPVAL                         R11 9
       79 GETTABLEKS                       R10 R11 K7 ["ContainerXBounds"]
       81 JUMP                             ; [+1]
       82 LOADNIL                          R10
       83 SETTABLEKS                       R10 R9 K7 ["ContainerXBounds"]
       85 GETUPVAL                         R11 7
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+4]
       88 GETUPVAL                         R11 9
       89 GETTABLEKS                       R10 R11 K8 ["ContainerYBounds"]
       91 JUMP                             ; [+1]
       92 LOADNIL                          R10
       93 SETTABLEKS                       R10 R9 K8 ["ContainerYBounds"]
       95 GETUPVAL                         R12 9
       96 GETTABLEKS                       R11 R12 K32 ["CustomPreviews"]
       98 JUMPIFNOT                        R11 ; [+5]
       99 GETUPVAL                         R12 9
      100 GETTABLEKS                       R11 R12 K32 ["CustomPreviews"]
      102 GETTABLE                         R10 R11 R4
      103 JUMP                             ; [+1]
      104 LOADNIL                          R10
      105 SETTABLEKS                       R10 R9 K9 ["CustomPreview"]
      107 GETUPVAL                         R11 9
      108 GETTABLEKS                       R10 R11 K10 ["InitialDistance"]
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
      144 GETUPVAL                         R11 9
      145 GETTABLEKS                       R10 R11 K15 ["MaterialPreviewGeometryType"]
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
      180 GETUPVAL                         R12 9
      181 GETTABLEKS                       R11 R12 K33 ["OnRenderItemChildren"]
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
      216 GETUPVAL                         R11 9
      217 GETTABLEKS                       R10 R11 K25 ["ShowGridLabels"]
      219 SETTABLEKS                       R10 R9 K25 ["ShowGridLabels"]
      221 SETTABLEKS                       R3 R9 K26 ["Size"]
      223 GETUPVAL                         R10 22
      224 SETTABLEKS                       R10 R9 K27 ["Style"]
      226 SETTABLEKS                       R7 R9 K28 ["Text"]
      228 GETUPVAL                         R11 7
      229 CALL                             R11 0 1
      230 JUMPIFNOT                        R11 ; [+2]
      231 GETUPVAL                         R10 15
      232 JUMP                             ; [+1]
      233 LOADNIL                          R10
      234 SETTABLEKS                       R10 R9 K29 ["TooltipDelay"]
      236 GETUPVAL                         R11 0
      237 CALL                             R11 0 1
      238 JUMPIFNOT                        R11 ; [+2]
      239 LOADNIL                          R10
      240 JUMP                             ; [+1]
      241 MOVE                             R10 R8
      242 SETTABLEKS                       R10 R9 K30 ["ref"]
      244 RETURN                           R9 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K0 ["createElement"]
       11 GETUPVAL                         R5 2
       12 DUPTABLE                         R6 K8 [{"Static", "Transparent", "Material", "Size", "BackgroundColor", "MeshPartBorderThickness", "ref"}]
       13 LOADB                            R7 1
       14 SETTABLEKS                       R7 R6 K1 ["Static"]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K2 ["Transparent"]
       19 GETUPVAL                         R7 3
       20 SETTABLEKS                       R7 R6 K3 ["Material"]
       22 GETUPVAL                         R7 4
       23 GETUPVAL                         R9 5
       24 GETTABLEKS                       R8 R9 K9 ["SnapshotSize"]
       26 GETUPVAL                         R10 6
       27 GETTABLEKS                       R9 R10 K9 ["SnapshotSize"]
       29 CALL                             R7 2 1
       30 SETTABLEKS                       R7 R6 K4 ["Size"]
       32 GETUPVAL                         R8 6
       33 GETTABLEKS                       R7 R8 K10 ["GridItemBackgroundColor"]
       35 SETTABLEKS                       R7 R6 K5 ["BackgroundColor"]
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R7 R8 K11 ["SnapshotBorderThickness"]
       40 SETTABLEKS                       R7 R6 K6 ["MeshPartBorderThickness"]
       42 GETUPVAL                         R7 7
       43 SETTABLEKS                       R7 R6 K7 ["ref"]
       45 CALL                             R4 2 1
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R5 R6 K0 ["createElement"]
       49 GETUPVAL                         R6 1
       50 DUPTABLE                         R7 K13 [{"Size", "BackgroundColor3"}]
       51 GETIMPORT                        R8 K16 [UDim2.fromScale]
       53 LOADN                            R9 1
       54 LOADN                            R10 1
       55 CALL                             R8 2 1
       56 SETTABLEKS                       R8 R7 K4 ["Size"]
       58 GETUPVAL                         R9 6
       59 GETTABLEKS                       R8 R9 K5 ["BackgroundColor"]
       61 SETTABLEKS                       R8 R7 K12 ["BackgroundColor3"]
       63 CALL                             R5 2 -1
       64 SETLIST                          R3 R4 -1 [1]
       66 CALL                             R0 3 -1
       67 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K12 [{"AutomaticSize", "InitialCanvasPosition", "CellComponent", "CellGroups", "CellGroupHeader", "CellPadding", "CellSize", "Cells", "GetCellProps", "OnScrollUpdate", "ScrollingDirection"}]
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K1 ["AutomaticSize"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K13 ["current"]
       18 SETTABLEKS                       R3 R2 K2 ["InitialCanvasPosition"]
       20 GETUPVAL                         R3 5
       21 SETTABLEKS                       R3 R2 K3 ["CellComponent"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K4 ["CellGroups"]
       26 SETTABLEKS                       R3 R2 K4 ["CellGroups"]
       28 GETUPVAL                         R4 3
       29 GETTABLEKS                       R3 R4 K5 ["CellGroupHeader"]
       31 SETTABLEKS                       R3 R2 K5 ["CellGroupHeader"]
       33 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R4 R5 K17 ["GridItemPadding"]
       38 GETUPVAL                         R6 6
       39 GETTABLEKS                       R5 R6 K17 ["GridItemPadding"]
       41 CALL                             R3 2 1
       42 SETTABLEKS                       R3 R2 K6 ["CellPadding"]
       44 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       46 GETUPVAL                         R4 7
       47 GETUPVAL                         R5 7
       48 CALL                             R3 2 1
       49 SETTABLEKS                       R3 R2 K7 ["CellSize"]
       51 GETUPVAL                         R3 8
       52 SETTABLEKS                       R3 R2 K8 ["Cells"]
       54 GETUPVAL                         R3 9
       55 SETTABLEKS                       R3 R2 K9 ["GetCellProps"]
       57 GETUPVAL                         R5 10
       58 GETTABLEKS                       R4 R5 K18 ["Grid"]
       60 GETUPVAL                         R6 11
       61 GETUPVAL                         R8 6
       62 GETTABLEKS                       R7 R8 K19 ["ListItemPadding"]
       64 ADD                              R5 R6 R7
       65 GETUPVAL                         R7 7
       66 GETUPVAL                         R9 6
       67 GETTABLEKS                       R8 R9 K17 ["GridItemPadding"]
       69 ADD                              R6 R7 R8
       70 GETUPVAL                         R9 3
       71 GETTABLEKS                       R8 R9 K21 ["GridItemsPerRow"]
       73 ORK                              R7 R8 K20 [1]
       74 DIV                              R9 R5 R6
       75 MUL                              R8 R9 R7
       76 NEWCLOSURE                       R3 P0
       77 CAPTURE                          UPVAL U3
       78 CAPTURE                          VAL R4
       79 CAPTURE                          UPVAL U10
       80 CAPTURE                          UPVAL U12
       81 CAPTURE                          VAL R8
       82 CAPTURE                          UPVAL U13
       83 CAPTURE                          UPVAL U14
       84 CAPTURE                          UPVAL U15
       85 CAPTURE                          UPVAL U16
       86 CAPTURE                          UPVAL U17
       87 CAPTURE                          UPVAL U18
       88 CAPTURE                          UPVAL U4
       89 SETTABLEKS                       R3 R2 K10 ["OnScrollUpdate"]
       91 GETUPVAL                         R4 2
       92 CALL                             R4 0 1
       93 JUMPIFNOT                        R4 ; [+4]
       94 GETUPVAL                         R4 3
       95 GETTABLEKS                       R3 R4 K11 ["ScrollingDirection"]
       97 JUMP                             ; [+1]
       98 LOADNIL                          R3
       99 SETTABLEKS                       R3 R2 K11 ["ScrollingDirection"]
      101 CALL                             R0 2 -1
      102 RETURN                           R0 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{"AutomaticSize", "InitialCanvasPosition", "GetRowProps", "OnScrollUpdate", "RowComponent", "RowHeight", "Rows", "ScrollingDirection"}]
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R4 3
        9 GETTABLEKS                       R3 R4 K1 ["AutomaticSize"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K10 ["current"]
       18 SETTABLEKS                       R3 R2 K2 ["InitialCanvasPosition"]
       20 GETUPVAL                         R3 5
       21 SETTABLEKS                       R3 R2 K3 ["GetRowProps"]
       23 GETUPVAL                         R5 6
       24 GETTABLEKS                       R4 R5 K11 ["List"]
       26 GETUPVAL                         R6 7
       27 GETUPVAL                         R8 8
       28 GETTABLEKS                       R7 R8 K12 ["ListItemPadding"]
       30 ADD                              R5 R6 R7
       31 GETUPVAL                         R7 9
       32 GETUPVAL                         R9 8
       33 GETTABLEKS                       R8 R9 K13 ["GridItemPadding"]
       35 ADD                              R6 R7 R8
       36 GETUPVAL                         R9 3
       37 GETTABLEKS                       R8 R9 K15 ["GridItemsPerRow"]
       39 ORK                              R7 R8 K14 [1]
       40 DIV                              R9 R5 R6
       41 MUL                              R8 R9 R7
       42 NEWCLOSURE                       R3 P0
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R4
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R8
       48 CAPTURE                          UPVAL U10
       49 CAPTURE                          UPVAL U11
       50 CAPTURE                          UPVAL U12
       51 CAPTURE                          UPVAL U13
       52 CAPTURE                          UPVAL U14
       53 CAPTURE                          UPVAL U15
       54 CAPTURE                          UPVAL U16
       55 SETTABLEKS                       R3 R2 K4 ["OnScrollUpdate"]
       57 GETUPVAL                         R3 17
       58 SETTABLEKS                       R3 R2 K5 ["RowComponent"]
       60 GETUPVAL                         R3 7
       61 SETTABLEKS                       R3 R2 K6 ["RowHeight"]
       63 GETUPVAL                         R3 18
       64 SETTABLEKS                       R3 R2 K7 ["Rows"]
       66 GETUPVAL                         R4 2
       67 CALL                             R4 0 1
       68 JUMPIFNOT                        R4 ; [+4]
       69 GETUPVAL                         R4 3
       70 GETTABLEKS                       R3 R4 K8 ["ScrollingDirection"]
       72 JUMP                             ; [+1]
       73 LOADNIL                          R3
       74 SETTABLEKS                       R3 R2 K8 ["ScrollingDirection"]
       76 CALL                             R0 2 -1
       77 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_25:
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
       53 GETUPVAL                         R13 3
       54 GETTABLEKS                       R12 R13 K10 ["map"]
       56 MOVE                             R13 R11
       57 DUPCLOSURE                       R14 K11 [PROTO_0]
       58 CALL                             R12 2 1
       59 MOVE                             R10 R12
       60 GETUPVAL                         R12 4
       61 GETTABLEKS                       R11 R12 K12 ["createRef"]
       63 CALL                             R11 0 1
       64 GETUPVAL                         R12 5
       65 CALL                             R12 0 2
       66 NEWCLOSURE                       R14 P1
       67 CAPTURE                          VAL R11
       68 CAPTURE                          VAL R0
       69 GETUPVAL                         R15 5
       70 LOADB                            R16 0
       71 CALL                             R15 1 2
       72 GETUPVAL                         R18 4
       73 GETTABLEKS                       R17 R18 K13 ["useRef"]
       75 LOADN                            R18 0
       76 CALL                             R17 1 1
       77 LOADNIL                          R18
       78 GETUPVAL                         R19 5
       79 LOADB                            R20 1
       80 CALL                             R19 1 2
       81 GETUPVAL                         R22 4
       82 GETTABLEKS                       R21 R22 K13 ["useRef"]
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
      119 GETUPVAL                         R31 4
      120 GETTABLEKS                       R30 R31 K13 ["useRef"]
      122 GETTABLEKS                       R31 R0 K17 ["InitialListCanvasPosition"]
      124 JUMPIF                           R31 ; [+5]
      125 GETIMPORT                        R31 K16 [Vector2.new]
      127 LOADN                            R32 0
      128 LOADN                            R33 0
      129 CALL                             R31 2 1
      130 CALL                             R30 1 1
      131 GETUPVAL                         R32 4
      132 GETTABLEKS                       R31 R32 K13 ["useRef"]
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
      173 GETUPVAL                         R38 3
      174 GETTABLEKS                       R37 R38 K10 ["map"]
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
      219 CAPTURE                          VAL R2
      220 NEWCLOSURE                       R36 P10
      221 CAPTURE                          UPVAL U4
      222 CAPTURE                          UPVAL U12
      223 CAPTURE                          UPVAL U13
      224 CAPTURE                          VAL R12
      225 CAPTURE                          UPVAL U2
      226 CAPTURE                          VAL R0
      227 CAPTURE                          VAL R2
      228 CAPTURE                          VAL R11
      229 NEWCLOSURE                       R37 P11
      230 CAPTURE                          UPVAL U4
      231 CAPTURE                          UPVAL U14
      232 CAPTURE                          UPVAL U15
      233 CAPTURE                          VAL R0
      234 CAPTURE                          VAL R31
      235 CAPTURE                          UPVAL U16
      236 CAPTURE                          VAL R2
      237 CAPTURE                          VAL R3
      238 CAPTURE                          VAL R10
      239 CAPTURE                          VAL R35
      240 CAPTURE                          UPVAL U7
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R30
      243 CAPTURE                          UPVAL U8
      244 CAPTURE                          VAL R23
      245 CAPTURE                          VAL R17
      246 CAPTURE                          VAL R9
      247 CAPTURE                          VAL R20
      248 CAPTURE                          VAL R21
      249 NEWCLOSURE                       R38 P12
      250 CAPTURE                          UPVAL U4
      251 CAPTURE                          UPVAL U17
      252 CAPTURE                          UPVAL U15
      253 CAPTURE                          VAL R0
      254 CAPTURE                          VAL R30
      255 CAPTURE                          VAL R35
      256 CAPTURE                          UPVAL U7
      257 CAPTURE                          VAL R4
      258 CAPTURE                          VAL R2
      259 CAPTURE                          VAL R3
      260 CAPTURE                          UPVAL U8
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R9
      264 CAPTURE                          VAL R20
      265 CAPTURE                          VAL R21
      266 CAPTURE                          VAL R31
      267 CAPTURE                          UPVAL U18
      268 CAPTURE                          VAL R10
      269 GETUPVAL                         R39 9
      270 CALL                             R39 0 1
      271 JUMPIFNOT                        R39 ; [+80]
      272 GETUPVAL                         R40 4
      273 GETTABLEKS                       R39 R40 K24 ["createElement"]
      275 GETUPVAL                         R40 12
      276 DUPTABLE                         R41 K30 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      277 GETUPVAL                         R43 15
      278 CALL                             R43 0 1
      279 JUMPIFNOT                        R43 ; [+3]
      280 GETTABLEKS                       R42 R0 K25 ["AutomaticSize"]
      282 JUMP                             ; [+1]
      283 LOADNIL                          R42
      284 SETTABLEKS                       R42 R41 K25 ["AutomaticSize"]
      286 GETTABLEKS                       R42 R2 K26 ["BackgroundColor"]
      288 SETTABLEKS                       R42 R41 K26 ["BackgroundColor"]
      290 GETTABLEKS                       R42 R0 K27 ["LayoutOrder"]
      292 SETTABLEKS                       R42 R41 K27 ["LayoutOrder"]
      294 NEWCLOSURE                       R42 P13
      295 CAPTURE                          VAL R0
      296 SETTABLEKS                       R42 R41 K28 ["OnRightClick"]
      298 GETTABLEKS                       R43 R0 K4 ["Padding"]
      300 JUMPIFNOT                        R43 ; [+2]
      301 MOVE                             R42 R5
      302 JUMP                             ; [+8]
      303 GETUPVAL                         R44 7
      304 GETTABLEKS                       R43 R44 K31 ["Grid"]
      306 JUMPIFNOTEQ                      R8 R43 ; [+3]
      308 MOVE                             R42 R6
      309 JUMP                             ; [+1]
      310 MOVE                             R42 R7
      311 SETTABLEKS                       R42 R41 K4 ["Padding"]
      313 GETTABLEKS                       R42 R0 K29 ["Size"]
      315 SETTABLEKS                       R42 R41 K29 ["Size"]
      317 DUPTABLE                         R42 K34 [{"DummyViewport", "Grid", "List"}]
      318 GETTABLEKS                       R44 R0 K35 ["OnSnapshotTaken"]
      320 JUMPIFNOT                        R44 ; [+3]
      321 MOVE                             R43 R36
      322 CALL                             R43 0 1
      323 JUMP                             ; [+1]
      324 LOADNIL                          R43
      325 SETTABLEKS                       R43 R42 K32 ["DummyViewport"]
      327 GETUPVAL                         R45 7
      328 GETTABLEKS                       R44 R45 K31 ["Grid"]
      330 JUMPIFNOTEQ                      R8 R44 ; [+4]
      332 MOVE                             R43 R37
      333 CALL                             R43 0 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R43
      336 SETTABLEKS                       R43 R42 K31 ["Grid"]
      338 GETUPVAL                         R45 7
      339 GETTABLEKS                       R44 R45 K33 ["List"]
      341 JUMPIFNOTEQ                      R8 R44 ; [+4]
      343 MOVE                             R43 R38
      344 CALL                             R43 0 1
      345 JUMP                             ; [+1]
      346 LOADNIL                          R43
      347 SETTABLEKS                       R43 R42 K33 ["List"]
      349 CALL                             R39 3 -1
      350 CLOSEUPVALS                      R18
      351 RETURN                           R39 -1
      352 GETUPVAL                         R40 4
      353 GETTABLEKS                       R39 R40 K24 ["createElement"]
      355 GETUPVAL                         R40 12
      356 DUPTABLE                         R41 K30 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      357 GETUPVAL                         R43 15
      358 CALL                             R43 0 1
      359 JUMPIFNOT                        R43 ; [+3]
      360 GETTABLEKS                       R42 R0 K25 ["AutomaticSize"]
      362 JUMP                             ; [+1]
      363 LOADNIL                          R42
      364 SETTABLEKS                       R42 R41 K25 ["AutomaticSize"]
      366 GETTABLEKS                       R42 R2 K26 ["BackgroundColor"]
      368 SETTABLEKS                       R42 R41 K26 ["BackgroundColor"]
      370 GETTABLEKS                       R42 R0 K27 ["LayoutOrder"]
      372 SETTABLEKS                       R42 R41 K27 ["LayoutOrder"]
      374 NEWCLOSURE                       R42 P14
      375 CAPTURE                          VAL R0
      376 SETTABLEKS                       R42 R41 K28 ["OnRightClick"]
      378 SETTABLEKS                       R5 R41 K4 ["Padding"]
      380 GETTABLEKS                       R42 R0 K29 ["Size"]
      382 SETTABLEKS                       R42 R41 K29 ["Size"]
      384 DUPTABLE                         R42 K36 [{"Grid", "List"}]
      385 GETUPVAL                         R45 7
      386 GETTABLEKS                       R44 R45 K31 ["Grid"]
      388 JUMPIFNOTEQ                      R8 R44 ; [+4]
      390 MOVE                             R43 R37
      391 CALL                             R43 0 1
      392 JUMP                             ; [+1]
      393 LOADNIL                          R43
      394 SETTABLEKS                       R43 R42 K31 ["Grid"]
      396 GETUPVAL                         R45 7
      397 GETTABLEKS                       R44 R45 K33 ["List"]
      399 JUMPIFNOTEQ                      R8 R44 ; [+4]
      401 MOVE                             R43 R38
      402 CALL                             R43 0 1
      403 JUMP                             ; [+1]
      404 LOADNIL                          R43
      405 SETTABLEKS                       R43 R42 K33 ["List"]
      407 CALL                             R39 3 -1
      408 CLOSEUPVALS                      R18
      409 RETURN                           R39 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R0 K2 ["Parent"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R5 R0 K6 ["Components"]
       18 GETTABLEKS                       R4 R5 K7 ["MaterialPreview"]
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
       38 GETTABLEKS                       R9 R5 K12 ["ContextServices"]
       40 GETTABLEKS                       R8 R9 K13 ["Localization"]
       42 GETTABLEKS                       R10 R5 K14 ["Style"]
       44 GETTABLEKS                       R9 R10 K15 ["Stylizer"]
       46 GETTABLEKS                       R10 R5 K16 ["UI"]
       48 GETTABLEKS                       R11 R10 K17 ["Grid"]
       50 GETTABLEKS                       R12 R10 K18 ["List"]
       52 GETTABLEKS                       R13 R10 K19 ["Pane"]
       54 GETTABLEKS                       R15 R5 K20 ["Util"]
       56 GETTABLEKS                       R14 R15 K21 ["prioritize"]
       58 GETIMPORT                        R15 K4 [require]
       60 GETIMPORT                        R17 K1 [script]
       62 GETTABLEKS                       R16 R17 K22 ["MaterialGridItem"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K4 [require]
       67 GETIMPORT                        R18 K1 [script]
       69 GETTABLEKS                       R17 R18 K23 ["MaterialListItem"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K4 [require]
       74 GETTABLEKS                       R19 R0 K24 ["Enums"]
       76 GETTABLEKS                       R18 R19 K25 ["ViewType"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K4 [require]
       81 GETTABLEKS                       R20 R0 K20 ["Util"]
       83 GETTABLEKS                       R19 R20 K26 ["getMaterialName"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETTABLEKS                       R21 R0 K20 ["Util"]
       90 GETTABLEKS                       R20 R21 K27 ["getSerializedMaterialIdentifier"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K29 [game]
       95 LOADK                            R22 K30 ["RunService"]
       96 NAMECALL                         R20 R20 K31 ["GetService"]
       98 CALL                             R20 2 1
       99 GETIMPORT                        R21 K4 [require]
      101 GETTABLEKS                       R23 R0 K32 ["Flags"]
      103 GETTABLEKS                       R22 R23 K33 ["getFFlagMaterialGridExtraProps"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K4 [require]
      108 GETTABLEKS                       R24 R0 K32 ["Flags"]
      110 GETTABLEKS                       R23 R24 K34 ["getFFlagMaterialPickerUIChanges"]
      112 CALL                             R22 1 1
      113 GETIMPORT                        R23 K4 [require]
      115 GETTABLEKS                       R25 R0 K32 ["Flags"]
      117 GETTABLEKS                       R24 R25 K35 ["getFFlagMaterialPickerInstantTooltip"]
      119 CALL                             R23 1 1
      120 DUPCLOSURE                       R24 K36 [PROTO_1]
      121 CAPTURE                          VAL R4
      122 DUPCLOSURE                       R25 K37 [PROTO_25]
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R20
      130 CAPTURE                          VAL R17
      131 CAPTURE                          VAL R23
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R19
      134 CAPTURE                          VAL R18
      135 CAPTURE                          VAL R13
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R21
      139 CAPTURE                          VAL R15
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R16
      142 SETGLOBAL                        R25 K38 ["MaterialGrid"]
      144 GETGLOBAL                        R25 K38 ["MaterialGrid"]
      146 RETURN                           R25 1
