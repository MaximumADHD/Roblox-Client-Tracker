PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K0 ["on"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewClipFrame"]
        3 SETTABLEKS                       R1 R2 K1 ["Visible"]
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["openContextMenuAt"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 SETUPVAL                         R1 0
        1 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["previewClipFrame"]
        4 LOADB                            R5 1
        5 SETTABLEKS                       R5 R4 K1 ["Visible"]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["errorOverlay"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R2
       12 MOVE                             R8 R3
       13 NAMECALL                         R4 R4 K3 ["setError"]
       15 CALL                             R4 4 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["storyName"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["set"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["storyMenuItems"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["set"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["setControlsVisible"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["storyControlsPinned"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["storyControlsPinned"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["set"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K0 ["storyControlsPinned"]
        4 NEWCLOSURE                       R6 P1
        5 CAPTURE                          VAL R2
        6 NAMECALL                         R3 R3 K1 ["on"]
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputOverlay"]
        3 SETTABLEKS                       R0 R1 K1 ["Active"]
        5 GETUPVAL                         R1 1
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_15:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R3 1
        4 LOADK                            R5 K0 ["panMode"]
        5 NEWCLOSURE                       R6 P1
        6 CAPTURE                          VAL R2
        7 NAMECALL                         R3 R3 K1 ["on"]
        9 CALL                             R3 3 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["themeOverride"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K1 ["on"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["zoomScaleRequested"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K1 ["onEvent"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["zoomToFitRequested"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["onEvent"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["zoomScale"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K1 ["set"]
        5 CALL                             R2 3 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["useInsets"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_23:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 GETUPVAL                         R3 0
        3 LOADK                            R5 K0 ["useInsets"]
        4 NEWCLOSURE                       R6 P1
        5 CAPTURE                          VAL R2
        6 NAMECALL                         R3 R3 K1 ["on"]
        8 CALL                             R3 3 0
        9 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["themeOverride"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["previewFrame"]
        3 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["previewClipFrame"]
        3 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deviceViewportFrame"]
        3 RETURN                           R1 1

PROTO_28:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["deviceContentFrame"]
        3 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["gridOverlay"]
        3 NAMECALL                         R1 R1 K1 ["refreshTarget"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["deviceProfile"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_31:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["requestDeviceProfile"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 0
        5 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cycleDeviceProfile"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["deviceProfile"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K1 ["on"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["storySelectionRequested"]
        2 NEWCLOSURE                       R5 P0
        3 CAPTURE                          VAL R1
        4 NAMECALL                         R2 R2 K1 ["onEvent"]
        6 CALL                             R2 3 0
        7 RETURN                           R0 0

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputOverlay"]
        3 RETURN                           R1 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["propertiesPanel"]
        3 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["floatingStoryControlsFrame"]
        3 RETURN                           R1 1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["overlayFrame"]
        3 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["storyName"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["destroy"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_42:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["canvasState"]
        4 LOADK                            R3 K1 [""]
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R2
        7 NEWCLOSURE                       R5 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R5 R1 K2 ["setPreviewVisible"]
       11 NEWCLOSURE                       R5 P2
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R5 R1 K3 ["openContextMenuAt"]
       15 NEWCLOSURE                       R5 P3
       16 CAPTURE                          REF R3
       17 SETTABLEKS                       R5 R1 K4 ["setCodeSource"]
       19 NEWCLOSURE                       R5 P4
       20 CAPTURE                          REF R3
       21 SETTABLEKS                       R5 R1 K5 ["getCurrentSource"]
       23 NEWCLOSURE                       R5 P5
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R1 K6 ["setError"]
       27 NEWCLOSURE                       R5 P6
       28 CAPTURE                          VAL R2
       29 SETTABLEKS                       R5 R1 K7 ["setStoryName"]
       31 NEWCLOSURE                       R5 P7
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R1 K8 ["setStoryMenuItems"]
       35 NEWCLOSURE                       R5 P8
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R5 R1 K9 ["setControlsVisible"]
       39 NEWCLOSURE                       R5 P9
       40 CAPTURE                          VAL R2
       41 SETTABLEKS                       R5 R1 K10 ["getStoryControlsPinned"]
       43 NEWCLOSURE                       R5 P10
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R5 R1 K11 ["setStoryControlsPinned"]
       47 NEWCLOSURE                       R5 P11
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R5 R1 K12 ["onStoryControlsPinnedChanged"]
       51 NEWCLOSURE                       R5 P12
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R5 R1 K13 ["onPanModeToggled"]
       56 NEWCLOSURE                       R5 P13
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R5 R1 K14 ["onThemeOverrideChanged"]
       60 NEWCLOSURE                       R5 P14
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R5 R1 K15 ["onZoomScaleRequested"]
       64 NEWCLOSURE                       R5 P15
       65 CAPTURE                          VAL R2
       66 SETTABLEKS                       R5 R1 K16 ["onZoomToFitRequested"]
       68 NEWCLOSURE                       R5 P16
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R5 R1 K17 ["setZoomScale"]
       72 NEWCLOSURE                       R5 P17
       73 CAPTURE                          VAL R2
       74 SETTABLEKS                       R5 R1 K18 ["getUseInsets"]
       76 NEWCLOSURE                       R5 P18
       77 CAPTURE                          VAL R2
       78 SETTABLEKS                       R5 R1 K19 ["onUseInsetsChanged"]
       80 NEWCLOSURE                       R5 P19
       81 CAPTURE                          VAL R2
       82 SETTABLEKS                       R5 R1 K20 ["getThemeOverride"]
       84 NEWCLOSURE                       R5 P20
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R5 R1 K21 ["getPreviewFrame"]
       88 NEWCLOSURE                       R5 P21
       89 CAPTURE                          VAL R0
       90 SETTABLEKS                       R5 R1 K22 ["getPreviewClipFrame"]
       92 NEWCLOSURE                       R5 P22
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R5 R1 K23 ["getDeviceViewportFrame"]
       96 NEWCLOSURE                       R5 P23
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R5 R1 K24 ["getDeviceContentFrame"]
      100 NEWCLOSURE                       R5 P24
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R5 R1 K25 ["refreshGridOverlayTarget"]
      104 NEWCLOSURE                       R5 P25
      105 CAPTURE                          VAL R2
      106 SETTABLEKS                       R5 R1 K26 ["getDeviceProfile"]
      108 NEWCLOSURE                       R5 P26
      109 CAPTURE                          VAL R0
      110 SETTABLEKS                       R5 R1 K27 ["setDeviceProfile"]
      112 NEWCLOSURE                       R5 P27
      113 CAPTURE                          VAL R0
      114 SETTABLEKS                       R5 R1 K28 ["cycleDeviceProfile"]
      116 NEWCLOSURE                       R5 P28
      117 CAPTURE                          VAL R2
      118 SETTABLEKS                       R5 R1 K29 ["onDeviceProfileChanged"]
      120 NEWCLOSURE                       R5 P29
      121 CAPTURE                          VAL R2
      122 SETTABLEKS                       R5 R1 K30 ["onStorySelectionRequested"]
      124 NEWCLOSURE                       R5 P30
      125 CAPTURE                          VAL R0
      126 SETTABLEKS                       R5 R1 K31 ["getInputOverlay"]
      128 NEWCLOSURE                       R5 P31
      129 CAPTURE                          VAL R0
      130 SETTABLEKS                       R5 R1 K32 ["getPropertiesFrame"]
      132 NEWCLOSURE                       R5 P32
      133 CAPTURE                          VAL R0
      134 SETTABLEKS                       R5 R1 K33 ["getFloatingStoryControlsFrame"]
      136 NEWCLOSURE                       R5 P33
      137 CAPTURE                          VAL R0
      138 SETTABLEKS                       R5 R1 K34 ["getOverlayFrame"]
      140 NEWCLOSURE                       R5 P34
      141 CAPTURE                          VAL R2
      142 SETTABLEKS                       R5 R1 K35 ["getStoryName"]
      144 NEWCLOSURE                       R5 P35
      145 CAPTURE                          VAL R0
      146 SETTABLEKS                       R5 R1 K36 ["destroy"]
      148 CLOSEUPVALS                      R3
      149 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["AppFramework"]
       13 GETTABLEKS                       R2 R2 K8 ["DeviceProfiles"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K9 ["Parent"]
       22 GETTABLEKS                       R3 R3 K10 ["CanvasState"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETIMPORT                        R4 K1 [script]
       29 GETTABLEKS                       R4 R4 K9 ["Parent"]
       31 GETTABLEKS                       R4 R4 K11 ["ErrorOverlay"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETIMPORT                        R5 K1 [script]
       38 GETTABLEKS                       R5 R5 K9 ["Parent"]
       40 GETTABLEKS                       R5 R5 K9 ["Parent"]
       42 GETTABLEKS                       R5 R5 K12 ["GridOverlay"]
       44 CALL                             R4 1 1
       45 NEWTABLE                         R5 1 0
       47 DUPCLOSURE                       R6 K13 [PROTO_42]
       48 SETTABLEKS                       R6 R5 K14 ["create"]
       50 RETURN                           R5 1
