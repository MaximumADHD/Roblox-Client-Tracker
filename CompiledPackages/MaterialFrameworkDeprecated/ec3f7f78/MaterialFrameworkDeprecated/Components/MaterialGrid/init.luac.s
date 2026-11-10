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
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R0 K0 ["Id"]
        3 JUMPIFNOTEQ                      R3 R2 ; [+3]
        5 LOADB                            R3 1
        6 RETURN                           R3 1
        7 LOADB                            R3 0
        8 GETTABLEKS                       R4 R0 K1 ["Material"]
       10 JUMPIFEQKNIL                     R4 ; [+9]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R0 K1 ["Material"]
       15 CALL                             R4 1 1
       16 JUMPIFEQ                         R4 R2 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["Text"]
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R2 R0 K0 ["Text"]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K1 ["Material"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R3 R0 K1 ["Material"]
       12 MOVE                             R4 R1
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 LOADNIL                          R2
       16 RETURN                           R2 1

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

PROTO_17:
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

PROTO_18:
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

PROTO_19:
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

PROTO_20:
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

PROTO_21:
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
       14 JUMPIF                           R9 ; [+64]
       15 GETUPVAL                         R10 1
       16 GETTABLE                         R9 R10 R0
       17 GETUPVAL                         R10 2
       18 JUMPIFNOT                        R9 ; [+6]
       19 GETTABLEKS                       R11 R0 K3 ["Id"]
       21 JUMPIFNOTEQ                      R11 R10 ; [+3]
       23 LOADB                            R6 1
       24 JUMP                             ; [+13]
       25 LOADB                            R6 0
       26 GETTABLEKS                       R11 R0 K1 ["Material"]
       28 JUMPIFEQKNIL                     R11 ; [+9]
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R12 R0 K1 ["Material"]
       33 CALL                             R11 1 1
       34 JUMPIFEQ                         R11 R10 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 GETUPVAL                         R10 1
       39 GETTABLE                         R9 R10 R0
       40 GETUPVAL                         R10 4
       41 JUMPIFNOT                        R9 ; [+6]
       42 GETTABLEKS                       R11 R0 K3 ["Id"]
       44 JUMPIFNOTEQ                      R11 R10 ; [+3]
       46 LOADB                            R7 1
       47 JUMP                             ; [+13]
       48 LOADB                            R7 0
       49 GETTABLEKS                       R11 R0 K1 ["Material"]
       51 JUMPIFEQKNIL                     R11 ; [+9]
       53 GETUPVAL                         R11 3
       54 GETTABLEKS                       R12 R0 K1 ["Material"]
       56 CALL                             R11 1 1
       57 JUMPIFEQ                         R11 R10 ; [+2]
       59 LOADB                            R7 0 +1
       60 LOADB                            R7 1
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R10 R0 K4 ["Text"]
       64 JUMPIFNOT                        R10 ; [+3]
       65 GETTABLEKS                       R8 R0 K4 ["Text"]
       67 JUMP                             ; [+11]
       68 GETTABLEKS                       R10 R0 K1 ["Material"]
       70 JUMPIFNOT                        R10 ; [+7]
       71 GETUPVAL                         R10 6
       72 GETTABLEKS                       R11 R0 K1 ["Material"]
       74 MOVE                             R12 R9
       75 CALL                             R10 2 1
       76 MOVE                             R8 R10
       77 JUMP                             ; [+1]
       78 LOADNIL                          R8
       79 NEWTABLE                         R9 64 0
       81 SETTABLEKS                       R7 R9 K5 ["Applied"]
       83 GETUPVAL                         R10 7
       84 SETTABLEKS                       R10 R9 K6 ["CanvasPosition"]
       86 GETUPVAL                         R10 0
       87 GETTABLEKS                       R10 R10 K7 ["ShouldCenterTooltip"]
       89 SETTABLEKS                       R10 R9 K7 ["ShouldCenterTooltip"]
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R10 R10 K8 ["ContainerXBounds"]
       94 SETTABLEKS                       R10 R9 K8 ["ContainerXBounds"]
       96 GETUPVAL                         R10 0
       97 GETTABLEKS                       R10 R10 K9 ["ContainerYBounds"]
       99 SETTABLEKS                       R10 R9 K9 ["ContainerYBounds"]
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R11 R11 K10 ["CustomPreviews"]
      104 JUMPIFNOT                        R11 ; [+5]
      105 GETUPVAL                         R11 0
      106 GETTABLEKS                       R11 R11 K10 ["CustomPreviews"]
      108 GETTABLE                         R10 R11 R5
      109 JUMP                             ; [+1]
      110 LOADNIL                          R10
      111 SETTABLEKS                       R10 R9 K11 ["CustomPreview"]
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R10 R10 K12 ["InitialDistance"]
      116 SETTABLEKS                       R10 R9 K12 ["InitialDistance"]
      118 GETUPVAL                         R10 8
      119 SETTABLEKS                       R10 R9 K13 ["GridItemSize"]
      121 GETUPVAL                         R10 9
      122 JUMPIFNOT                        R10 ; [+1]
      123 NOT                              R10 R4
      124 SETTABLEKS                       R10 R9 K14 ["HoverEffectsEnabled"]
      126 SETTABLEKS                       R0 R9 K15 ["Item"]
      128 SETTABLEKS                       R4 R9 K0 ["ItemsDisabled"]
      130 GETUPVAL                         R10 10
      131 SETTABLEKS                       R10 R9 K16 ["InstantTooltipEnabled"]
      133 SETTABLEKS                       R1 R9 K17 ["LayoutOrder"]
      135 GETTABLEKS                       R10 R0 K2 ["Loading"]
      137 SETTABLEKS                       R10 R9 K2 ["Loading"]
      139 SETTABLEKS                       R5 R9 K1 ["Material"]
      141 GETUPVAL                         R10 0
      142 GETTABLEKS                       R10 R10 K18 ["MaterialPreviewGeometryType"]
      144 SETTABLEKS                       R10 R9 K18 ["MaterialPreviewGeometryType"]
      146 GETTABLEKS                       R10 R0 K19 ["OverrideColor"]
      148 SETTABLEKS                       R10 R9 K19 ["OverrideColor"]
      150 GETTABLEKS                       R10 R0 K20 ["OverrideTransparency"]
      152 SETTABLEKS                       R10 R9 K20 ["OverrideTransparency"]
      154 GETUPVAL                         R10 11
      155 SETTABLEKS                       R10 R9 K21 ["OnClick"]
      157 GETUPVAL                         R10 12
      158 SETTABLEKS                       R10 R9 K22 ["OnMouseEnter"]
      160 GETUPVAL                         R10 13
      161 SETTABLEKS                       R10 R9 K23 ["OnMouseLeave"]
      163 GETUPVAL                         R11 0
      164 GETTABLEKS                       R11 R11 K24 ["OnRenderItemChildren"]
      166 JUMPIFNOT                        R11 ; [+2]
      167 GETUPVAL                         R10 14
      168 JUMP                             ; [+1]
      169 LOADNIL                          R10
      170 SETTABLEKS                       R10 R9 K25 ["OnRenderChildren"]
      172 GETUPVAL                         R10 15
      173 SETTABLEKS                       R10 R9 K26 ["OnRightClick"]
      175 GETUPVAL                         R10 16
      176 SETTABLEKS                       R10 R9 K27 ["OnMouseMoved"]
      178 GETUPVAL                         R10 17
      179 SETTABLEKS                       R10 R9 K28 ["OnTooltipShown"]
      181 SETTABLEKS                       R2 R9 K29 ["Position"]
      183 SETTABLEKS                       R6 R9 K30 ["Selected"]
      185 GETUPVAL                         R10 0
      186 GETTABLEKS                       R10 R10 K31 ["ShowGridLabels"]
      188 SETTABLEKS                       R10 R9 K31 ["ShowGridLabels"]
      190 GETUPVAL                         R11 18
      191 CALL                             R11 0 1
      192 JUMPIFNOT                        R11 ; [+4]
      193 GETUPVAL                         R10 0
      194 GETTABLEKS                       R10 R10 K32 ["ShowTooltipWithLabel"]
      196 JUMP                             ; [+1]
      197 LOADNIL                          R10
      198 SETTABLEKS                       R10 R9 K32 ["ShowTooltipWithLabel"]
      200 SETTABLEKS                       R3 R9 K33 ["Size"]
      202 GETUPVAL                         R10 19
      203 SETTABLEKS                       R10 R9 K34 ["Style"]
      205 SETTABLEKS                       R8 R9 K4 ["Text"]
      207 GETUPVAL                         R10 20
      208 SETTABLEKS                       R10 R9 K35 ["TooltipDelay"]
      210 RETURN                           R9 1

PROTO_22:
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

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K12 [{"AutomaticSize", "InitialCanvasPosition", "CellComponent", "CellGroups", "CellGroupHeader", "CellPadding", "CellSize", "Cells", "GetCellProps", "OnScrollUpdate", "ScrollingDirection"}]
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["AutomaticSize"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K13 ["current"]
       18 SETTABLEKS                       R3 R2 K2 ["InitialCanvasPosition"]
       20 GETUPVAL                         R3 5
       21 SETTABLEKS                       R3 R2 K3 ["CellComponent"]
       23 GETUPVAL                         R3 3
       24 GETTABLEKS                       R3 R3 K4 ["CellGroups"]
       26 SETTABLEKS                       R3 R2 K4 ["CellGroups"]
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K5 ["CellGroupHeader"]
       31 SETTABLEKS                       R3 R2 K5 ["CellGroupHeader"]
       33 GETIMPORT                        R3 K16 [UDim2.fromOffset]
       35 GETUPVAL                         R4 6
       36 GETTABLEKS                       R4 R4 K17 ["GridItemPadding"]
       38 GETUPVAL                         R5 6
       39 GETTABLEKS                       R5 R5 K17 ["GridItemPadding"]
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
       57 GETUPVAL                         R4 10
       58 GETTABLEKS                       R4 R4 K18 ["Grid"]
       60 GETUPVAL                         R6 11
       61 GETUPVAL                         R7 6
       62 GETTABLEKS                       R7 R7 K19 ["ListItemPadding"]
       64 ADD                              R5 R6 R7
       65 GETUPVAL                         R7 7
       66 GETUPVAL                         R8 6
       67 GETTABLEKS                       R8 R8 K17 ["GridItemPadding"]
       69 ADD                              R6 R7 R8
       70 GETUPVAL                         R8 3
       71 GETTABLEKS                       R8 R8 K21 ["GridItemsPerRow"]
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
       87 CAPTURE                          UPVAL U4
       88 SETTABLEKS                       R3 R2 K10 ["OnScrollUpdate"]
       90 GETUPVAL                         R4 2
       91 CALL                             R4 0 1
       92 JUMPIFNOT                        R4 ; [+4]
       93 GETUPVAL                         R3 3
       94 GETTABLEKS                       R3 R3 K11 ["ScrollingDirection"]
       96 JUMP                             ; [+1]
       97 LOADNIL                          R3
       98 SETTABLEKS                       R3 R2 K11 ["ScrollingDirection"]
      100 CALL                             R0 2 -1
      101 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K9 [{"AutomaticSize", "InitialCanvasPosition", "GetRowProps", "OnScrollUpdate", "RowComponent", "RowHeight", "Rows", "ScrollingDirection"}]
        5 GETUPVAL                         R4 2
        6 CALL                             R4 0 1
        7 JUMPIFNOT                        R4 ; [+4]
        8 GETUPVAL                         R3 3
        9 GETTABLEKS                       R3 R3 K1 ["AutomaticSize"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R3
       13 SETTABLEKS                       R3 R2 K1 ["AutomaticSize"]
       15 GETUPVAL                         R3 4
       16 GETTABLEKS                       R3 R3 K10 ["current"]
       18 SETTABLEKS                       R3 R2 K2 ["InitialCanvasPosition"]
       20 GETUPVAL                         R3 5
       21 SETTABLEKS                       R3 R2 K3 ["GetRowProps"]
       23 GETUPVAL                         R4 6
       24 GETTABLEKS                       R4 R4 K11 ["List"]
       26 GETUPVAL                         R6 7
       27 GETUPVAL                         R7 8
       28 GETTABLEKS                       R7 R7 K12 ["ListItemPadding"]
       30 ADD                              R5 R6 R7
       31 GETUPVAL                         R7 9
       32 GETUPVAL                         R8 8
       33 GETTABLEKS                       R8 R8 K13 ["GridItemPadding"]
       35 ADD                              R6 R7 R8
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R8 R8 K15 ["GridItemsPerRow"]
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
       54 SETTABLEKS                       R3 R2 K4 ["OnScrollUpdate"]
       56 GETUPVAL                         R3 16
       57 SETTABLEKS                       R3 R2 K5 ["RowComponent"]
       59 GETUPVAL                         R3 7
       60 SETTABLEKS                       R3 R2 K6 ["RowHeight"]
       62 GETUPVAL                         R3 17
       63 SETTABLEKS                       R3 R2 K7 ["Rows"]
       65 GETUPVAL                         R4 2
       66 CALL                             R4 0 1
       67 JUMPIFNOT                        R4 ; [+4]
       68 GETUPVAL                         R3 3
       69 GETTABLEKS                       R3 R3 K8 ["ScrollingDirection"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R3
       73 SETTABLEKS                       R3 R2 K8 ["ScrollingDirection"]
       75 CALL                             R0 2 -1
       76 RETURN                           R0 -1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnRightClick"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_26:
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
      166 JUMP                             ; [+37]
      167 GETTABLEKS                       R35 R0 K19 ["SelectedItem"]
      169 JUMPIFNOT                        R35 ; [+34]
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
      188 GETTABLE                         R38 R36 R37
      189 JUMPIFNOT                        R38 ; [+3]
      190 GETTABLEKS                       R34 R37 K20 ["Id"]
      192 JUMP                             ; [+11]
      193 GETTABLEKS                       R39 R37 K21 ["Material"]
      195 JUMPIFNOT                        R39 ; [+6]
      196 GETUPVAL                         R39 8
      197 GETTABLEKS                       R40 R37 K21 ["Material"]
      199 CALL                             R39 1 1
      200 MOVE                             R34 R39
      201 JUMP                             ; [+2]
      202 GETTABLEKS                       R34 R37 K20 ["Id"]
      204 LOADNIL                          R35
      205 GETTABLEKS                       R36 R0 K22 ["AppliedItemId"]
      207 JUMPIFNOT                        R36 ; [+2]
      208 GETTABLEKS                       R35 R0 K22 ["AppliedItemId"]
      210 GETUPVAL                         R36 4
      211 GETTABLEKS                       R36 R36 K23 ["useCallback"]
      213 NEWCLOSURE                       R37 P9
      214 CAPTURE                          VAL R0
      215 CAPTURE                          VAL R15
      216 NEWTABLE                         R38 0 4
      218 GETTABLEKS                       R39 R0 K24 ["ItemsDisabled"]
      220 GETTABLEKS                       R40 R0 K25 ["OnSnapshotTaken"]
      222 GETTABLEKS                       R41 R0 K26 ["OnClick"]
      224 MOVE                             R42 R15
      225 SETLIST                          R38 R39 4 [1]
      227 CALL                             R36 2 1
      228 GETUPVAL                         R37 4
      229 GETTABLEKS                       R37 R37 K23 ["useCallback"]
      231 NEWCLOSURE                       R38 P10
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R18
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R16
      236 CAPTURE                          REF R19
      237 CAPTURE                          UPVAL U6
      238 CAPTURE                          VAL R17
      239 CAPTURE                          VAL R14
      240 NEWTABLE                         R39 0 5
      242 GETTABLEKS                       R40 R0 K24 ["ItemsDisabled"]
      244 MOVE                             R41 R28
      245 GETTABLEKS                       R42 R0 K25 ["OnSnapshotTaken"]
      247 MOVE                             R43 R14
      248 GETTABLEKS                       R44 R0 K27 ["OnMouseEnter"]
      250 SETLIST                          R39 R40 5 [1]
      252 CALL                             R37 2 1
      253 GETUPVAL                         R38 4
      254 GETTABLEKS                       R38 R38 K23 ["useCallback"]
      256 NEWCLOSURE                       R39 P11
      257 CAPTURE                          VAL R0
      258 CAPTURE                          VAL R18
      259 CAPTURE                          VAL R9
      260 NEWTABLE                         R40 0 3
      262 GETTABLEKS                       R41 R0 K24 ["ItemsDisabled"]
      264 MOVE                             R42 R30
      265 GETTABLEKS                       R43 R0 K28 ["OnMouseLeave"]
      267 SETLIST                          R40 R41 3 [1]
      269 CALL                             R38 2 1
      270 GETUPVAL                         R39 4
      271 GETTABLEKS                       R39 R39 K23 ["useCallback"]
      273 NEWCLOSURE                       R40 P12
      274 CAPTURE                          VAL R0
      275 NEWTABLE                         R41 0 2
      277 GETTABLEKS                       R42 R0 K24 ["ItemsDisabled"]
      279 GETTABLEKS                       R43 R0 K29 ["OnRightClick"]
      281 SETLIST                          R41 R42 2 [1]
      283 CALL                             R39 2 1
      284 GETUPVAL                         R40 4
      285 GETTABLEKS                       R40 R40 K23 ["useCallback"]
      287 NEWCLOSURE                       R41 P13
      288 CAPTURE                          VAL R0
      289 NEWTABLE                         R42 0 1
      291 GETTABLEKS                       R43 R0 K30 ["OnRenderItemChildren"]
      293 SETLIST                          R42 R43 1 [1]
      295 CALL                             R40 2 1
      296 NEWCLOSURE                       R41 P14
      297 CAPTURE                          VAL R0
      298 CAPTURE                          VAL R11
      299 CAPTURE                          REF R34
      300 CAPTURE                          UPVAL U8
      301 CAPTURE                          REF R35
      302 CAPTURE                          VAL R1
      303 CAPTURE                          UPVAL U9
      304 CAPTURE                          VAL R23
      305 CAPTURE                          VAL R3
      306 CAPTURE                          VAL R20
      307 CAPTURE                          VAL R16
      308 CAPTURE                          VAL R36
      309 CAPTURE                          VAL R37
      310 CAPTURE                          VAL R38
      311 CAPTURE                          VAL R40
      312 CAPTURE                          VAL R39
      313 CAPTURE                          VAL R29
      314 CAPTURE                          VAL R25
      315 CAPTURE                          UPVAL U10
      316 CAPTURE                          VAL R2
      317 CAPTURE                          VAL R9
      318 NEWCLOSURE                       R42 P15
      319 CAPTURE                          UPVAL U4
      320 CAPTURE                          UPVAL U11
      321 CAPTURE                          UPVAL U12
      322 CAPTURE                          VAL R13
      323 CAPTURE                          UPVAL U2
      324 CAPTURE                          VAL R0
      325 CAPTURE                          VAL R2
      326 CAPTURE                          VAL R12
      327 NEWCLOSURE                       R43 P16
      328 CAPTURE                          UPVAL U4
      329 CAPTURE                          UPVAL U13
      330 CAPTURE                          UPVAL U14
      331 CAPTURE                          VAL R0
      332 CAPTURE                          VAL R32
      333 CAPTURE                          UPVAL U15
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R10
      337 CAPTURE                          VAL R41
      338 CAPTURE                          UPVAL U7
      339 CAPTURE                          VAL R4
      340 CAPTURE                          VAL R31
      341 CAPTURE                          VAL R24
      342 CAPTURE                          VAL R18
      343 CAPTURE                          VAL R9
      344 CAPTURE                          VAL R21
      345 CAPTURE                          VAL R22
      346 NEWCLOSURE                       R44 P17
      347 CAPTURE                          UPVAL U4
      348 CAPTURE                          UPVAL U16
      349 CAPTURE                          UPVAL U14
      350 CAPTURE                          VAL R0
      351 CAPTURE                          VAL R31
      352 CAPTURE                          VAL R41
      353 CAPTURE                          UPVAL U7
      354 CAPTURE                          VAL R4
      355 CAPTURE                          VAL R2
      356 CAPTURE                          VAL R3
      357 CAPTURE                          VAL R24
      358 CAPTURE                          VAL R18
      359 CAPTURE                          VAL R9
      360 CAPTURE                          VAL R21
      361 CAPTURE                          VAL R22
      362 CAPTURE                          VAL R32
      363 CAPTURE                          UPVAL U17
      364 CAPTURE                          VAL R10
      365 GETUPVAL                         R45 4
      366 GETTABLEKS                       R45 R45 K31 ["createElement"]
      368 GETUPVAL                         R46 11
      369 DUPTABLE                         R47 K36 [{"AutomaticSize", "BackgroundColor", "LayoutOrder", "OnRightClick", "Padding", "Size"}]
      370 GETUPVAL                         R49 14
      371 CALL                             R49 0 1
      372 JUMPIFNOT                        R49 ; [+3]
      373 GETTABLEKS                       R48 R0 K32 ["AutomaticSize"]
      375 JUMP                             ; [+1]
      376 LOADNIL                          R48
      377 SETTABLEKS                       R48 R47 K32 ["AutomaticSize"]
      379 GETTABLEKS                       R48 R2 K33 ["BackgroundColor"]
      381 SETTABLEKS                       R48 R47 K33 ["BackgroundColor"]
      383 GETTABLEKS                       R48 R0 K34 ["LayoutOrder"]
      385 SETTABLEKS                       R48 R47 K34 ["LayoutOrder"]
      387 NEWCLOSURE                       R48 P18
      388 CAPTURE                          VAL R0
      389 SETTABLEKS                       R48 R47 K29 ["OnRightClick"]
      391 GETTABLEKS                       R49 R0 K4 ["Padding"]
      393 JUMPIFNOT                        R49 ; [+2]
      394 MOVE                             R48 R5
      395 JUMP                             ; [+8]
      396 GETUPVAL                         R49 7
      397 GETTABLEKS                       R49 R49 K37 ["Grid"]
      399 JUMPIFNOTEQ                      R8 R49 ; [+3]
      401 MOVE                             R48 R6
      402 JUMP                             ; [+1]
      403 MOVE                             R48 R7
      404 SETTABLEKS                       R48 R47 K4 ["Padding"]
      406 GETTABLEKS                       R48 R0 K35 ["Size"]
      408 SETTABLEKS                       R48 R47 K35 ["Size"]
      410 DUPTABLE                         R48 K40 [{"DummyViewport", "Grid", "List"}]
      411 GETTABLEKS                       R50 R0 K25 ["OnSnapshotTaken"]
      413 JUMPIFNOT                        R50 ; [+3]
      414 MOVE                             R49 R42
      415 CALL                             R49 0 1
      416 JUMP                             ; [+1]
      417 LOADNIL                          R49
      418 SETTABLEKS                       R49 R48 K38 ["DummyViewport"]
      420 GETUPVAL                         R50 7
      421 GETTABLEKS                       R50 R50 K37 ["Grid"]
      423 JUMPIFNOTEQ                      R8 R50 ; [+4]
      425 MOVE                             R49 R43
      426 CALL                             R49 0 1
      427 JUMP                             ; [+1]
      428 LOADNIL                          R49
      429 SETTABLEKS                       R49 R48 K37 ["Grid"]
      431 GETUPVAL                         R50 7
      432 GETTABLEKS                       R50 R50 K39 ["List"]
      434 JUMPIFNOTEQ                      R8 R50 ; [+4]
      436 MOVE                             R49 R44
      437 CALL                             R49 0 1
      438 JUMP                             ; [+1]
      439 LOADNIL                          R49
      440 SETTABLEKS                       R49 R48 K39 ["List"]
      442 CALL                             R45 3 -1
      443 CLOSEUPVALS                      R19
      444 RETURN                           R45 -1

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
       60 GETIMPORT                        R16 K1 [script]
       62 GETTABLEKS                       R16 R16 K22 ["MaterialGridItem"]
       64 CALL                             R15 1 1
       65 GETIMPORT                        R16 K4 [require]
       67 GETIMPORT                        R17 K1 [script]
       69 GETTABLEKS                       R17 R17 K23 ["MaterialListItem"]
       71 CALL                             R16 1 1
       72 GETIMPORT                        R17 K4 [require]
       74 GETTABLEKS                       R18 R0 K24 ["Enums"]
       76 GETTABLEKS                       R18 R18 K25 ["ViewType"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K4 [require]
       81 GETTABLEKS                       R19 R0 K20 ["Util"]
       83 GETTABLEKS                       R19 R19 K26 ["getMaterialName"]
       85 CALL                             R18 1 1
       86 GETIMPORT                        R19 K4 [require]
       88 GETTABLEKS                       R20 R0 K20 ["Util"]
       90 GETTABLEKS                       R20 R20 K27 ["getSerializedMaterialIdentifier"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K29 [game]
       95 LOADK                            R22 K30 ["RunService"]
       96 NAMECALL                         R20 R20 K31 ["GetService"]
       98 CALL                             R20 2 1
       99 GETIMPORT                        R21 K4 [require]
      101 GETTABLEKS                       R22 R0 K32 ["Flags"]
      103 GETTABLEKS                       R22 R22 K33 ["getFFlagMaterialGridExtraProps"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K4 [require]
      108 GETTABLEKS                       R23 R0 K32 ["Flags"]
      110 GETTABLEKS                       R23 R23 K34 ["getFFlagMaterialGridShowTooltipWithLabel"]
      112 CALL                             R22 1 1
      113 DUPCLOSURE                       R23 K35 [PROTO_1]
      114 CAPTURE                          VAL R4
      115 DUPCLOSURE                       R24 K36 [PROTO_2]
      116 CAPTURE                          VAL R19
      117 DUPCLOSURE                       R25 K37 [PROTO_3]
      118 CAPTURE                          VAL R19
      119 DUPCLOSURE                       R26 K38 [PROTO_4]
      120 CAPTURE                          VAL R18
      121 DUPCLOSURE                       R27 K39 [PROTO_26]
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R14
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R17
      130 CAPTURE                          VAL R19
      131 CAPTURE                          VAL R18
      132 CAPTURE                          VAL R22
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R3
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R21
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R16
      140 RETURN                           R27 1
