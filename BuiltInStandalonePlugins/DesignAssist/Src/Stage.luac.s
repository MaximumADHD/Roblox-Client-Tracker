PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setDirectPanEnabled"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setZoomScale"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["setScale"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["chrome"]
        2 JUMPIFNOTEQKS                    R1 K1 ["None"] ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K2 ["width"]
        7 GETTABLEKS                       R4 R0 K4 ["bezelThickness"]
        9 MULK                             R3 R4 K3 [2]
       10 ADD                              R1 R2 R3
       11 GETTABLEKS                       R3 R0 K5 ["height"]
       13 GETTABLEKS                       R5 R0 K4 ["bezelThickness"]
       15 MULK                             R4 R5 K3 [2]
       16 ADD                              R2 R3 R4
       17 GETUPVAL                         R3 0
       18 MOVE                             R5 R1
       19 MOVE                             R6 R2
       20 LOADN                            R7 64
       21 NAMECALL                         R3 R3 K6 ["fitToBounds"]
       23 CALL                             R3 4 0
       24 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getDeviceProfile"]
        3 CALL                             R0 1 1
        4 GETTABLEKS                       R1 R0 K1 ["chrome"]
        6 JUMPIFNOTEQKS                    R1 K2 ["None"] ; [+2]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R2 R0 K3 ["width"]
       11 GETTABLEKS                       R4 R0 K5 ["bezelThickness"]
       13 MULK                             R3 R4 K4 [2]
       14 ADD                              R1 R2 R3
       15 GETTABLEKS                       R3 R0 K6 ["height"]
       17 GETTABLEKS                       R5 R0 K5 ["bezelThickness"]
       19 MULK                             R4 R5 K4 [2]
       20 ADD                              R2 R3 R4
       21 GETUPVAL                         R3 1
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 LOADN                            R7 64
       25 NAMECALL                         R3 R3 K7 ["fitToBounds"]
       27 CALL                             R3 4 0
       28 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["chrome"]
        2 JUMPIFNOTEQKS                    R1 K1 ["None"] ; [+7]
        4 GETUPVAL                         R1 0
        5 LOADB                            R3 0
        6 NAMECALL                         R1 R1 K2 ["setEnabled"]
        8 CALL                             R1 2 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 0
       11 LOADB                            R3 1
       12 NAMECALL                         R1 R1 K2 ["setEnabled"]
       14 CALL                             R1 2 0
       15 GETTABLEKS                       R1 R0 K0 ["chrome"]
       17 JUMPIFNOTEQKS                    R1 K1 ["None"] ; [+2]
       19 RETURN                           R0 0
       20 GETTABLEKS                       R2 R0 K3 ["width"]
       22 GETTABLEKS                       R4 R0 K5 ["bezelThickness"]
       24 MULK                             R3 R4 K4 [2]
       25 ADD                              R1 R2 R3
       26 GETTABLEKS                       R3 R0 K6 ["height"]
       28 GETTABLEKS                       R5 R0 K5 ["bezelThickness"]
       30 MULK                             R4 R5 K4 [2]
       31 ADD                              R2 R3 R4
       32 GETUPVAL                         R3 0
       33 MOVE                             R5 R1
       34 MOVE                             R6 R2
       35 LOADN                            R7 64
       36 NAMECALL                         R3 R3 K7 ["fitToBounds"]
       38 CALL                             R3 4 0
       39 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["destroy"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["widget"]
        2 GETTABLEKS                       R2 R0 K1 ["plugin"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createCanvasUI"]
        7 MOVE                             R4 R1
        8 MOVE                             R5 R2
        9 GETTABLEKS                       R6 R0 K3 ["React"]
       11 GETTABLEKS                       R7 R0 K4 ["ReactRoblox"]
       13 GETTABLEKS                       R8 R0 K5 ["Foundation"]
       15 CALL                             R3 5 1
       16 GETTABLEKS                       R5 R0 K6 ["startupDiagnostics"]
       18 LENGTH                           R4 R5
       19 LOADN                            R5 0
       20 JUMPIFNOTLT                      R5 R4 ; [+10]
       22 GETIMPORT                        R6 K9 [table.concat]
       24 GETTABLEKS                       R7 R0 K6 ["startupDiagnostics"]
       26 LOADK                            R8 K10 ["\n\n"]
       27 CALL                             R6 2 -1
       28 NAMECALL                         R4 R3 K11 ["setError"]
       30 CALL                             R4 -1 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K12 ["createControls"]
       34 NAMECALL                         R5 R3 K13 ["getPropertiesFrame"]
       36 CALL                             R5 1 1
       37 MOVE                             R6 R2
       38 MOVE                             R7 R1
       39 NAMECALL                         R8 R3 K14 ["getFloatingStoryControlsFrame"]
       41 CALL                             R8 1 -1
       42 CALL                             R4 -1 1
       43 GETUPVAL                         R5 2
       44 GETTABLEKS                       R5 R5 K15 ["createZoomPan"]
       46 CALL                             R5 0 1
       47 NAMECALL                         R8 R3 K16 ["getPreviewClipFrame"]
       49 CALL                             R8 1 1
       50 NAMECALL                         R9 R3 K17 ["getPreviewFrame"]
       52 CALL                             R9 1 1
       53 MOVE                             R10 R1
       54 MOVE                             R11 R2
       55 NAMECALL                         R6 R5 K18 ["attach"]
       57 CALL                             R6 5 0
       58 NEWCLOSURE                       R8 P0
       59 CAPTURE                          VAL R5
       60 NAMECALL                         R6 R3 K19 ["onPanModeToggled"]
       62 CALL                             R6 2 0
       63 NEWCLOSURE                       R8 P1
       64 CAPTURE                          VAL R3
       65 NAMECALL                         R6 R5 K20 ["onScaleChanged"]
       67 CALL                             R6 2 0
       68 NEWCLOSURE                       R8 P2
       69 CAPTURE                          VAL R5
       70 NAMECALL                         R6 R3 K21 ["onZoomScaleRequested"]
       72 CALL                             R6 2 0
       73 NEWCLOSURE                       R6 P3
       74 CAPTURE                          VAL R5
       75 NEWCLOSURE                       R9 P4
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R5
       78 NAMECALL                         R7 R3 K22 ["onZoomToFitRequested"]
       80 CALL                             R7 2 0
       81 NAMECALL                         R9 R5 K23 ["getScale"]
       83 CALL                             R9 1 -1
       84 NAMECALL                         R7 R3 K24 ["setZoomScale"]
       86 CALL                             R7 -1 0
       87 DUPTABLE                         R7 K29 [{"canvas", "controls", "zoomPan", "previewMountFrame"}]
       88 SETTABLEKS                       R3 R7 K25 ["canvas"]
       90 SETTABLEKS                       R4 R7 K26 ["controls"]
       92 SETTABLEKS                       R5 R7 K27 ["zoomPan"]
       94 NAMECALL                         R8 R3 K30 ["getDeviceContentFrame"]
       96 CALL                             R8 1 1
       97 SETTABLEKS                       R8 R7 K28 ["previewMountFrame"]
       99 NEWCLOSURE                       R8 P5
      100 CAPTURE                          VAL R5
      101 SETTABLEKS                       R8 R7 K31 ["applyDeviceProfile"]
      103 NEWCLOSURE                       R8 P6
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R3
      107 SETTABLEKS                       R8 R7 K32 ["destroy"]
      109 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Components"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["CanvasUI"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Controls"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["ZoomPan"]
       25 CALL                             R4 1 1
       26 DUPCLOSURE                       R5 K11 [PROTO_7]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R4
       30 DUPTABLE                         R6 K13 [{"createStage"}]
       31 SETTABLEKS                       R5 R6 K12 ["createStage"]
       33 RETURN                           R6 1
