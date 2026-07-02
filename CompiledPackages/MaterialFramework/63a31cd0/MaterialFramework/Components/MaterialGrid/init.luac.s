PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 DUPTABLE                         R1 K7 [{["Id"], ["Loading"] = False, ["Material"]}]
        9 SETTABLEKS                       R0 R1 K3 ["Id"]
       11 SETTABLEKS                       R0 R1 K6 ["Material"]
       13 RETURN                           R1 1

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
       28 RETURN                           R5 1

PROTO_13:
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

PROTO_14:
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

PROTO_15:
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

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRenderItemChildren"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["Material"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 GETTABLEKS                       R8 R0 K1 ["Loading"]
        7 JUMPIF                           R8 ; [+22]
        8 GETUPVAL                         R8 0
        9 MOVE                             R9 R4
       10 CALL                             R8 1 1
       11 GETUPVAL                         R9 1
       12 JUMPIFEQ                         R8 R9 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 GETUPVAL                         R8 0
       17 MOVE                             R9 R4
       18 CALL                             R8 1 1
       19 GETUPVAL                         R9 2
       20 JUMPIFEQ                         R8 R9 ; [+2]
       22 LOADB                            R6 0 +1
       23 LOADB                            R6 1
       24 JUMPIFNOT                        R4 ; [+5]
       25 GETUPVAL                         R8 3
       26 MOVE                             R9 R4
       27 GETUPVAL                         R10 4
       28 CALL                             R8 2 1
       29 MOVE                             R7 R8
       30 DUPTABLE                         R8 K29 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "ShowTooltipWithLabel", "Size", "Style", "Text", "TooltipDelay"}]
       31 SETTABLEKS                       R6 R8 K2 ["Applied"]
       33 GETUPVAL                         R9 5
       34 SETTABLEKS                       R9 R8 K3 ["CanvasPosition"]
       36 GETUPVAL                         R9 6
       37 GETTABLEKS                       R9 R9 K4 ["ShouldCenterTooltip"]
       39 SETTABLEKS                       R9 R8 K4 ["ShouldCenterTooltip"]
       41 GETUPVAL                         R9 6
       42 GETTABLEKS                       R9 R9 K5 ["ContainerXBounds"]
       44 SETTABLEKS                       R9 R8 K5 ["ContainerXBounds"]
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R9 R9 K6 ["ContainerYBounds"]
       49 SETTABLEKS                       R9 R8 K6 ["ContainerYBounds"]
       51 GETUPVAL                         R10 6
       52 GETTABLEKS                       R10 R10 K30 ["CustomPreviews"]
       54 JUMPIFNOT                        R10 ; [+5]
       55 GETUPVAL                         R10 6
       56 GETTABLEKS                       R10 R10 K30 ["CustomPreviews"]
       58 GETTABLE                         R9 R10 R4
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K7 ["CustomPreview"]
       63 GETUPVAL                         R9 6
       64 GETTABLEKS                       R9 R9 K8 ["InitialDistance"]
       66 SETTABLEKS                       R9 R8 K8 ["InitialDistance"]
       68 GETUPVAL                         R9 7
       69 SETTABLEKS                       R9 R8 K9 ["GridItemSize"]
       71 GETUPVAL                         R9 8
       72 SETTABLEKS                       R9 R8 K10 ["HoverEffectsEnabled"]
       74 GETUPVAL                         R9 9
       75 SETTABLEKS                       R9 R8 K11 ["InstantTooltipEnabled"]
       77 SETTABLEKS                       R1 R8 K12 ["LayoutOrder"]
       79 GETTABLEKS                       R9 R0 K1 ["Loading"]
       81 SETTABLEKS                       R9 R8 K1 ["Loading"]
       83 SETTABLEKS                       R4 R8 K0 ["Material"]
       85 GETUPVAL                         R9 6
       86 GETTABLEKS                       R9 R9 K13 ["MaterialPreviewGeometryType"]
       88 SETTABLEKS                       R9 R8 K13 ["MaterialPreviewGeometryType"]
       90 NEWCLOSURE                       R9 P0
       91 CAPTURE                          UPVAL U6
       92 CAPTURE                          UPVAL U10
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R9 R8 K14 ["OnClick"]
       96 NEWCLOSURE                       R9 P1
       97 CAPTURE                          UPVAL U6
       98 CAPTURE                          UPVAL U11
       99 CAPTURE                          UPVAL U12
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U13
      102 CAPTURE                          UPVAL U14
      103 CAPTURE                          UPVAL U15
      104 CAPTURE                          UPVAL U16
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R9 R8 K15 ["OnMouseEnter"]
      109 NEWCLOSURE                       R9 P2
      110 CAPTURE                          UPVAL U6
      111 CAPTURE                          UPVAL U11
      112 CAPTURE                          UPVAL U12
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R9 R8 K16 ["OnMouseLeave"]
      116 GETUPVAL                         R10 6
      117 GETTABLEKS                       R10 R10 K31 ["OnRenderItemChildren"]
      119 JUMPIFNOT                        R10 ; [+4]
      120 NEWCLOSURE                       R9 P3
      121 CAPTURE                          UPVAL U6
      122 CAPTURE                          VAL R0
      123 JUMP                             ; [+1]
      124 LOADNIL                          R9
      125 SETTABLEKS                       R9 R8 K17 ["OnRenderChildren"]
      127 NEWCLOSURE                       R9 P4
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R9 R8 K18 ["OnRightClick"]
      132 GETUPVAL                         R9 17
      133 SETTABLEKS                       R9 R8 K19 ["OnMouseMoved"]
      135 GETUPVAL                         R9 18
      136 SETTABLEKS                       R9 R8 K20 ["OnTooltipShown"]
      138 SETTABLEKS                       R2 R8 K21 ["Position"]
      140 SETTABLEKS                       R5 R8 K22 ["Selected"]
      142 GETUPVAL                         R9 6
      143 GETTABLEKS                       R9 R9 K23 ["ShowGridLabels"]
      145 SETTABLEKS                       R9 R8 K23 ["ShowGridLabels"]
      147 GETUPVAL                         R10 19
      148 CALL                             R10 0 1
      149 JUMPIFNOT                        R10 ; [+4]
      150 GETUPVAL                         R9 6
      151 GETTABLEKS                       R9 R9 K24 ["ShowTooltipWithLabel"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R9
      155 SETTABLEKS                       R9 R8 K24 ["ShowTooltipWithLabel"]
      157 SETTABLEKS                       R3 R8 K25 ["Size"]
      159 GETUPVAL                         R9 20
      160 SETTABLEKS                       R9 R8 K26 ["Style"]
      162 SETTABLEKS                       R7 R8 K27 ["Text"]
      164 GETUPVAL                         R9 12
      165 SETTABLEKS                       R9 R8 K28 ["TooltipDelay"]
      167 RETURN                           R8 1

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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

PROTO_22:
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

PROTO_23:
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

PROTO_24:
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
       14 JUMPIF                           R9 ; [+22]
       15 GETUPVAL                         R9 1
       16 MOVE                             R10 R5
       17 CALL                             R9 1 1
       18 GETUPVAL                         R10 2
       19 JUMPIFEQ                         R9 R10 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 GETUPVAL                         R9 1
       24 MOVE                             R10 R5
       25 CALL                             R9 1 1
       26 GETUPVAL                         R10 3
       27 JUMPIFEQ                         R9 R10 ; [+2]
       29 LOADB                            R7 0 +1
       30 LOADB                            R7 1
       31 JUMPIFNOT                        R5 ; [+5]
       32 GETUPVAL                         R9 4
       33 MOVE                             R10 R5
       34 GETUPVAL                         R11 5
       35 CALL                             R9 2 1
       36 MOVE                             R8 R9
       37 DUPTABLE                         R9 K31 [{"Applied", "CanvasPosition", "ShouldCenterTooltip", "ContainerXBounds", "ContainerYBounds", "CustomPreview", "InitialDistance", "GridItemSize", "HoverEffectsEnabled", "Item", "ItemsDisabled", "InstantTooltipEnabled", "LayoutOrder", "Loading", "Material", "MaterialPreviewGeometryType", "OnClick", "OnMouseEnter", "OnMouseLeave", "OnRenderChildren", "OnRightClick", "OnMouseMoved", "OnTooltipShown", "Position", "Selected", "ShowGridLabels", "ShowTooltipWithLabel", "Size", "Style", "Text", "TooltipDelay"}]
       38 SETTABLEKS                       R7 R9 K3 ["Applied"]
       40 GETUPVAL                         R10 6
       41 SETTABLEKS                       R10 R9 K4 ["CanvasPosition"]
       43 GETUPVAL                         R10 0
       44 GETTABLEKS                       R10 R10 K5 ["ShouldCenterTooltip"]
       46 SETTABLEKS                       R10 R9 K5 ["ShouldCenterTooltip"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R10 R10 K6 ["ContainerXBounds"]
       51 SETTABLEKS                       R10 R9 K6 ["ContainerXBounds"]
       53 GETUPVAL                         R10 0
       54 GETTABLEKS                       R10 R10 K7 ["ContainerYBounds"]
       56 SETTABLEKS                       R10 R9 K7 ["ContainerYBounds"]
       58 GETUPVAL                         R11 0
       59 GETTABLEKS                       R11 R11 K32 ["CustomPreviews"]
       61 JUMPIFNOT                        R11 ; [+5]
       62 GETUPVAL                         R11 0
       63 GETTABLEKS                       R11 R11 K32 ["CustomPreviews"]
       65 GETTABLE                         R10 R11 R5
       66 JUMP                             ; [+1]
       67 LOADNIL                          R10
       68 SETTABLEKS                       R10 R9 K8 ["CustomPreview"]
       70 GETUPVAL                         R10 0
       71 GETTABLEKS                       R10 R10 K9 ["InitialDistance"]
       73 SETTABLEKS                       R10 R9 K9 ["InitialDistance"]
       75 GETUPVAL                         R10 7
       76 SETTABLEKS                       R10 R9 K10 ["GridItemSize"]
       78 GETUPVAL                         R10 8
       79 JUMPIFNOT                        R10 ; [+1]
       80 NOT                              R10 R4
       81 SETTABLEKS                       R10 R9 K11 ["HoverEffectsEnabled"]
       83 SETTABLEKS                       R0 R9 K12 ["Item"]
       85 SETTABLEKS                       R4 R9 K0 ["ItemsDisabled"]
       87 GETUPVAL                         R10 9
       88 SETTABLEKS                       R10 R9 K13 ["InstantTooltipEnabled"]
       90 SETTABLEKS                       R1 R9 K14 ["LayoutOrder"]
       92 GETTABLEKS                       R10 R0 K2 ["Loading"]
       94 SETTABLEKS                       R10 R9 K2 ["Loading"]
       96 SETTABLEKS                       R5 R9 K1 ["Material"]
       98 GETUPVAL                         R10 0
       99 GETTABLEKS                       R10 R10 K15 ["MaterialPreviewGeometryType"]
      101 SETTABLEKS                       R10 R9 K15 ["MaterialPreviewGeometryType"]
      103 GETUPVAL                         R10 10
      104 SETTABLEKS                       R10 R9 K16 ["OnClick"]
      106 GETUPVAL                         R10 11
      107 SETTABLEKS                       R10 R9 K17 ["OnMouseEnter"]
      109 GETUPVAL                         R10 12
      110 SETTABLEKS                       R10 R9 K18 ["OnMouseLeave"]
      112 GETUPVAL                         R11 0
      113 GETTABLEKS                       R11 R11 K33 ["OnRenderItemChildren"]
      115 JUMPIFNOT                        R11 ; [+2]
      116 GETUPVAL                         R10 13
      117 JUMP                             ; [+1]
      118 LOADNIL                          R10
      119 SETTABLEKS                       R10 R9 K19 ["OnRenderChildren"]
      121 GETUPVAL                         R10 14
      122 SETTABLEKS                       R10 R9 K20 ["OnRightClick"]
      124 GETUPVAL                         R10 15
      125 SETTABLEKS                       R10 R9 K21 ["OnMouseMoved"]
      127 GETUPVAL                         R10 16
      128 SETTABLEKS                       R10 R9 K22 ["OnTooltipShown"]
      130 SETTABLEKS                       R2 R9 K23 ["Position"]
      132 SETTABLEKS                       R6 R9 K24 ["Selected"]
      134 GETUPVAL                         R10 0
      135 GETTABLEKS                       R10 R10 K25 ["ShowGridLabels"]
      137 SETTABLEKS                       R10 R9 K25 ["ShowGridLabels"]
      139 GETUPVAL                         R11 17
      140 CALL                             R11 0 1
      141 JUMPIFNOT                        R11 ; [+4]
      142 GETUPVAL                         R10 0
      143 GETTABLEKS                       R10 R10 K26 ["ShowTooltipWithLabel"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R10
      147 SETTABLEKS                       R10 R9 K26 ["ShowTooltipWithLabel"]
      149 SETTABLEKS                       R3 R9 K27 ["Size"]
      151 GETUPVAL                         R10 18
      152 SETTABLEKS                       R10 R9 K28 ["Style"]
      154 SETTABLEKS                       R8 R9 K29 ["Text"]
      156 GETUPVAL                         R10 19
      157 SETTABLEKS                       R10 R9 K30 ["TooltipDelay"]
      159 RETURN                           R9 1

PROTO_25:
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

PROTO_26:
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

PROTO_28:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_29:
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
      150 CAPTURE                          VAL R23
      151 CAPTURE                          VAL R17
      152 CAPTURE                          VAL R9
      153 CAPTURE                          VAL R20
      154 CAPTURE                          VAL R21
      155 CAPTURE                          VAL R31
      156 LOADNIL                          R33
      157 GETTABLEKS                       R34 R0 K19 ["SelectedItemId"]
      159 JUMPIFNOT                        R34 ; [+3]
      160 GETTABLEKS                       R33 R0 K19 ["SelectedItemId"]
      162 JUMP                             ; [+23]
      163 GETTABLEKS                       R34 R0 K20 ["SelectedItem"]
      165 JUMPIFNOT                        R34 ; [+20]
      166 NEWTABLE                         R36 0 1
      168 GETTABLEKS                       R37 R0 K20 ["SelectedItem"]
      170 SETLIST                          R36 R37 1 [1]
      172 GETUPVAL                         R37 3
      173 GETTABLEKS                       R37 R37 K10 ["map"]
      175 MOVE                             R38 R36
      176 DUPCLOSURE                       R39 K11 [PROTO_0]
      177 CALL                             R37 2 1
      178 MOVE                             R35 R37
      179 GETTABLEN                        R34 R35 1
      180 GETTABLEKS                       R35 R34 K21 ["Id"]
      182 JUMPIF                           R35 ; [+2]
      183 GETTABLEKS                       R35 R34 K22 ["Material"]
      185 MOVE                             R33 R35
      186 LOADNIL                          R34
      187 GETTABLEKS                       R35 R0 K23 ["AppliedItemId"]
      189 JUMPIFNOT                        R35 ; [+2]
      190 GETTABLEKS                       R34 R0 K23 ["AppliedItemId"]
      192 NEWCLOSURE                       R35 P9
      193 CAPTURE                          UPVAL U8
      194 CAPTURE                          REF R33
      195 CAPTURE                          REF R34
      196 CAPTURE                          UPVAL U9
      197 CAPTURE                          VAL R1
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R0
      200 CAPTURE                          VAL R3
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R14
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R9
      206 CAPTURE                          REF R18
      207 CAPTURE                          UPVAL U6
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R28
      211 CAPTURE                          VAL R24
      212 CAPTURE                          UPVAL U10
      213 CAPTURE                          VAL R2
      214 GETUPVAL                         R36 4
      215 GETTABLEKS                       R36 R36 K24 ["useCallback"]
      217 NEWCLOSURE                       R37 P10
      218 CAPTURE                          VAL R0
      219 CAPTURE                          VAL R14
      220 NEWTABLE                         R38 0 4
      222 GETTABLEKS                       R39 R0 K25 ["ItemsDisabled"]
      224 GETTABLEKS                       R40 R0 K26 ["OnSnapshotTaken"]
      226 GETTABLEKS                       R41 R0 K27 ["OnClick"]
      228 MOVE                             R42 R14
      229 SETLIST                          R38 R39 4 [1]
      231 CALL                             R36 2 1
      232 GETUPVAL                         R37 4
      233 GETTABLEKS                       R37 R37 K24 ["useCallback"]
      235 NEWCLOSURE                       R38 P11
      236 CAPTURE                          VAL R0
      237 CAPTURE                          VAL R17
      238 CAPTURE                          VAL R9
      239 CAPTURE                          VAL R15
      240 CAPTURE                          REF R18
      241 CAPTURE                          UPVAL U6
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R13
      244 NEWTABLE                         R39 0 5
      246 GETTABLEKS                       R40 R0 K25 ["ItemsDisabled"]
      248 MOVE                             R41 R27
      249 GETTABLEKS                       R42 R0 K26 ["OnSnapshotTaken"]
      251 MOVE                             R43 R13
      252 GETTABLEKS                       R44 R0 K28 ["OnMouseEnter"]
      254 SETLIST                          R39 R40 5 [1]
      256 CALL                             R37 2 1
      257 GETUPVAL                         R38 4
      258 GETTABLEKS                       R38 R38 K24 ["useCallback"]
      260 NEWCLOSURE                       R39 P12
      261 CAPTURE                          VAL R0
      262 CAPTURE                          VAL R17
      263 CAPTURE                          VAL R9
      264 NEWTABLE                         R40 0 3
      266 GETTABLEKS                       R41 R0 K25 ["ItemsDisabled"]
      268 MOVE                             R42 R29
      269 GETTABLEKS                       R43 R0 K29 ["OnMouseLeave"]
      271 SETLIST                          R40 R41 3 [1]
      273 CALL                             R38 2 1
      274 GETUPVAL                         R39 4
      275 GETTABLEKS                       R39 R39 K24 ["useCallback"]
      277 NEWCLOSURE                       R40 P13
      278 CAPTURE                          VAL R0
      279 NEWTABLE                         R41 0 2
      281 GETTABLEKS                       R42 R0 K25 ["ItemsDisabled"]
      283 GETTABLEKS                       R43 R0 K30 ["OnRightClick"]
      285 SETLIST                          R41 R42 2 [1]
      287 CALL                             R39 2 1
      288 GETUPVAL                         R40 4
      289 GETTABLEKS                       R40 R40 K24 ["useCallback"]
      291 NEWCLOSURE                       R41 P14
      292 CAPTURE                          VAL R0
      293 NEWTABLE                         R42 0 1
      295 GETTABLEKS                       R43 R0 K31 ["OnRenderItemChildren"]
      297 SETLIST                          R42 R43 1 [1]
      299 CALL                             R40 2 1
      300 NEWCLOSURE                       R41 P15
      301 CAPTURE                          VAL R0
      302 CAPTURE                          UPVAL U8
      303 CAPTURE                          REF R33
      304 CAPTURE                          REF R34
      305 CAPTURE                          UPVAL U9
      306 CAPTURE                          VAL R1
      307 CAPTURE                          VAL R22
      308 CAPTURE                          VAL R3
      309 CAPTURE                          VAL R19
      310 CAPTURE                          VAL R15
      311 CAPTURE                          VAL R36
      312 CAPTURE                          VAL R37
      313 CAPTURE                          VAL R38
      314 CAPTURE                          VAL R40
      315 CAPTURE                          VAL R39
      316 CAPTURE                          VAL R28
      317 CAPTURE                          VAL R24
      318 CAPTURE                          UPVAL U10
      319 CAPTURE                          VAL R2
      320 CAPTURE                          VAL R9
      321 NEWCLOSURE                       R42 P16
      322 CAPTURE                          UPVAL U4
      323 CAPTURE                          UPVAL U11
      324 CAPTURE                          UPVAL U12
      325 CAPTURE                          VAL R12
      326 CAPTURE                          UPVAL U2
      327 CAPTURE                          VAL R0
      328 CAPTURE                          VAL R2
      329 CAPTURE                          VAL R11
      330 NEWCLOSURE                       R43 P17
      331 CAPTURE                          UPVAL U13
      332 CAPTURE                          UPVAL U14
      333 CAPTURE                          UPVAL U15
      334 CAPTURE                          VAL R41
      335 CAPTURE                          VAL R35
      336 CAPTURE                          UPVAL U4
      337 CAPTURE                          UPVAL U16
      338 CAPTURE                          UPVAL U17
      339 CAPTURE                          VAL R0
      340 CAPTURE                          VAL R31
      341 CAPTURE                          VAL R2
      342 CAPTURE                          VAL R3
      343 CAPTURE                          VAL R10
      344 CAPTURE                          UPVAL U7
      345 CAPTURE                          VAL R4
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R23
      348 CAPTURE                          VAL R17
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R20
      351 CAPTURE                          VAL R21
      352 NEWCLOSURE                       R44 P18
      353 CAPTURE                          UPVAL U13
      354 CAPTURE                          UPVAL U18
      355 CAPTURE                          UPVAL U19
      356 CAPTURE                          VAL R41
      357 CAPTURE                          VAL R35
      358 CAPTURE                          UPVAL U4
      359 CAPTURE                          UPVAL U20
      360 CAPTURE                          UPVAL U17
      361 CAPTURE                          VAL R0
      362 CAPTURE                          VAL R30
      363 CAPTURE                          UPVAL U7
      364 CAPTURE                          VAL R4
      365 CAPTURE                          VAL R2
      366 CAPTURE                          VAL R3
      367 CAPTURE                          VAL R23
      368 CAPTURE                          VAL R17
      369 CAPTURE                          VAL R9
      370 CAPTURE                          VAL R20
      371 CAPTURE                          VAL R21
      372 CAPTURE                          VAL R31
      373 CAPTURE                          VAL R10
      374 GETUPVAL                         R45 4
      375 GETTABLEKS                       R45 R45 K32 ["createElement"]
      377 GETUPVAL                         R46 11
      378 DUPTABLE                         R47 K37 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      379 GETUPVAL                         R49 17
      380 CALL                             R49 0 1
      381 JUMPIFNOT                        R49 ; [+3]
      382 GETTABLEKS                       R48 R0 K33 ["AutomaticSize"]
      384 JUMP                             ; [+1]
      385 LOADNIL                          R48
      386 SETTABLEKS                       R48 R47 K33 ["AutomaticSize"]
      388 GETTABLEKS                       R48 R2 K34 ["BackgroundColor"]
      390 SETTABLEKS                       R48 R47 K34 ["BackgroundColor"]
      392 GETTABLEKS                       R48 R0 K35 ["LayoutOrder"]
      394 SETTABLEKS                       R48 R47 K35 ["LayoutOrder"]
      396 NEWCLOSURE                       R48 P19
      397 CAPTURE                          VAL R0
      398 SETTABLEKS                       R48 R47 K30 ["OnRightClick"]
      400 GETTABLEKS                       R49 R0 K4 ["Padding"]
      402 JUMPIFNOT                        R49 ; [+2]
      403 MOVE                             R48 R5
      404 JUMP                             ; [+8]
      405 GETUPVAL                         R49 7
      406 GETTABLEKS                       R49 R49 K38 ["Grid"]
      408 JUMPIFNOTEQ                      R8 R49 ; [+3]
      410 MOVE                             R48 R6
      411 JUMP                             ; [+1]
      412 MOVE                             R48 R7
      413 SETTABLEKS                       R48 R47 K4 ["Padding"]
      415 GETTABLEKS                       R48 R0 K36 ["Size"]
      417 SETTABLEKS                       R48 R47 K36 ["Size"]
      419 DUPTABLE                         R48 K41 [{"DummyViewport", "Grid", "List"}]
      420 GETTABLEKS                       R50 R0 K26 ["OnSnapshotTaken"]
      422 JUMPIFNOT                        R50 ; [+3]
      423 MOVE                             R49 R42
      424 CALL                             R49 0 1
      425 JUMP                             ; [+1]
      426 LOADNIL                          R49
      427 SETTABLEKS                       R49 R48 K39 ["DummyViewport"]
      429 GETUPVAL                         R50 7
      430 GETTABLEKS                       R50 R50 K38 ["Grid"]
      432 JUMPIFNOTEQ                      R8 R50 ; [+4]
      434 MOVE                             R49 R43
      435 CALL                             R49 0 1
      436 JUMP                             ; [+1]
      437 LOADNIL                          R49
      438 SETTABLEKS                       R49 R48 K38 ["Grid"]
      440 GETUPVAL                         R50 7
      441 GETTABLEKS                       R50 R50 K40 ["List"]
      443 JUMPIFNOTEQ                      R8 R50 ; [+4]
      445 MOVE                             R49 R44
      446 CALL                             R49 0 1
      447 JUMP                             ; [+1]
      448 LOADNIL                          R49
      449 SETTABLEKS                       R49 R48 K40 ["List"]
      451 CALL                             R45 3 -1
      452 CLOSEUPVALS                      R18
      453 RETURN                           R45 -1

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
      134 DUPCLOSURE                       R26 K38 [PROTO_1]
      135 CAPTURE                          VAL R4
      136 DUPCLOSURE                       R27 K39 [PROTO_29]
      137 CAPTURE                          VAL R8
      138 CAPTURE                          VAL R9
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R6
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R23
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R22
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R25
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R16
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R18
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R12
      158 RETURN                           R27 1
