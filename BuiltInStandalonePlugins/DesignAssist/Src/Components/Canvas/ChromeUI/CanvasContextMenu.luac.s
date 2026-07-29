PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["contextMenuPosition"]
        2 LOADNIL                          R3
        3 NAMECALL                         R0 R0 K1 ["set"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["zoomScaleRequested"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["emit"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["gridVisible"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 1
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 LOADK                            R3 K0 ["gridVisible"]
        8 MOVE                             R4 R0
        9 NAMECALL                         R1 R1 K2 ["set"]
       11 CALL                             R1 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["themeOverride"]
        2 NAMECALL                         R1 R1 K1 ["get"]
        4 CALL                             R1 2 1
        5 JUMPIFNOTEQKS                    R1 K2 ["light"] ; [+3]
        7 LOADK                            R0 K3 ["dark"]
        8 JUMP                             ; [+1]
        9 LOADK                            R0 K2 ["light"]
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K0 ["themeOverride"]
       12 MOVE                             R4 R0
       13 NAMECALL                         R1 R1 K4 ["set"]
       15 CALL                             R1 3 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["id"]
        2 JUMPIFNOTEQKS                    R1 K1 ["zoom-50"] ; [+8]
        4 GETUPVAL                         R1 0
        5 LOADK                            R3 K2 ["zoomScaleRequested"]
        6 LOADK                            R4 K3 [0.5]
        7 NAMECALL                         R1 R1 K4 ["emit"]
        9 CALL                             R1 3 0
       10 RETURN                           R0 0
       11 GETTABLEKS                       R1 R0 K0 ["id"]
       13 JUMPIFNOTEQKS                    R1 K5 ["zoom-100"] ; [+8]
       15 GETUPVAL                         R1 0
       16 LOADK                            R3 K2 ["zoomScaleRequested"]
       17 LOADN                            R4 1
       18 NAMECALL                         R1 R1 K4 ["emit"]
       20 CALL                             R1 3 0
       21 RETURN                           R0 0
       22 GETTABLEKS                       R1 R0 K0 ["id"]
       24 JUMPIFNOTEQKS                    R1 K6 ["zoom-200"] ; [+8]
       26 GETUPVAL                         R1 0
       27 LOADK                            R3 K2 ["zoomScaleRequested"]
       28 LOADN                            R4 2
       29 NAMECALL                         R1 R1 K4 ["emit"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R1 R0 K0 ["id"]
       35 JUMPIFNOTEQKS                    R1 K7 ["zoom-fit"] ; [+7]
       37 GETUPVAL                         R1 0
       38 LOADK                            R3 K8 ["zoomToFitRequested"]
       39 NAMECALL                         R1 R1 K4 ["emit"]
       41 CALL                             R1 2 0
       42 RETURN                           R0 0
       43 GETTABLEKS                       R1 R0 K0 ["id"]
       45 JUMPIFNOTEQKS                    R1 K9 ["grid"] ; [+14]
       47 GETUPVAL                         R2 0
       48 LOADK                            R4 K10 ["gridVisible"]
       49 NAMECALL                         R2 R2 K11 ["get"]
       51 CALL                             R2 2 1
       52 NOT                              R1 R2
       53 GETUPVAL                         R2 0
       54 LOADK                            R4 K10 ["gridVisible"]
       55 MOVE                             R5 R1
       56 NAMECALL                         R2 R2 K12 ["set"]
       58 CALL                             R2 3 0
       59 RETURN                           R0 0
       60 GETTABLEKS                       R1 R0 K0 ["id"]
       62 JUMPIFNOTEQKS                    R1 K13 ["theme"] ; [+17]
       64 GETUPVAL                         R2 0
       65 LOADK                            R4 K14 ["themeOverride"]
       66 NAMECALL                         R2 R2 K11 ["get"]
       68 CALL                             R2 2 1
       69 JUMPIFNOTEQKS                    R2 K15 ["light"] ; [+3]
       71 LOADK                            R1 K16 ["dark"]
       72 JUMP                             ; [+1]
       73 LOADK                            R1 K15 ["light"]
       74 GETUPVAL                         R2 0
       75 LOADK                            R4 K14 ["themeOverride"]
       76 MOVE                             R5 R1
       77 NAMECALL                         R2 R2 K12 ["set"]
       79 CALL                             R2 3 0
       80 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["canvasState"]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 NEWCLOSURE                       R3 P1
        5 CAPTURE                          VAL R1
        6 NEWCLOSURE                       R4 P2
        7 CAPTURE                          VAL R1
        8 NEWCLOSURE                       R5 P3
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R6 0 6
       12 DUPTABLE                         R7 K5 [{["id"] = "zoom-50", ["label"] = "Zoom to 50%"}]
       13 DUPTABLE                         R8 K8 [{["id"] = "zoom-100", ["label"] = "Zoom to 100%"}]
       14 DUPTABLE                         R9 K11 [{["id"] = "zoom-200", ["label"] = "Zoom to 200%"}]
       15 DUPTABLE                         R10 K14 [{["id"] = "zoom-fit", ["label"] = "Zoom to fit"}]
       16 DUPTABLE                         R11 K16 [{["id"] = "grid", ["label"]}]
       17 GETTABLEKS                       R13 R0 K17 ["gridVisible"]
       19 JUMPIFNOT                        R13 ; [+2]
       20 LOADK                            R12 K18 ["Hide Grid"]
       21 JUMP                             ; [+1]
       22 LOADK                            R12 K19 ["Show Grid"]
       23 SETTABLEKS                       R12 R11 K3 ["label"]
       25 DUPTABLE                         R12 K22 [{["id"] = "theme", ["label"] = "Toggle Light/Dark Mode"}]
       26 SETLIST                          R6 R7 6 [1]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K23 ["createElement"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K24 ["Context"]
       34 DUPTABLE                         R9 K32 [{["position"], ["overlayFrame"], ["items"], ["width"] = 176, ["onClose"], ["onActivated"]}]
       35 GETTABLEKS                       R10 R0 K33 ["contextMenuPosition"]
       37 SETTABLEKS                       R10 R9 K25 ["position"]
       39 GETTABLEKS                       R10 R0 K26 ["overlayFrame"]
       41 SETTABLEKS                       R10 R9 K26 ["overlayFrame"]
       43 SETTABLEKS                       R6 R9 K27 ["items"]
       45 SETTABLEKS                       R2 R9 K30 ["onClose"]
       47 NEWCLOSURE                       R10 P4
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R10 R9 K31 ["onActivated"]
       51 CALL                             R7 2 -1
       52 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Menu"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_5]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R2
       26 RETURN                           R3 1
