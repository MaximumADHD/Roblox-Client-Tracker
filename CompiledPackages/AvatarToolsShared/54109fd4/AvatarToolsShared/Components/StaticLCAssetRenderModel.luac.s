PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R3 R0 K1 ["model"]
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETTABLEKS                       R3 R0 K1 ["model"]
        9 NAMECALL                         R3 R3 K2 ["Destroy"]
       11 CALL                             R3 1 0
       12 GETTABLEKS                       R3 R1 K3 ["Archivable"]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R1 K3 ["Archivable"]
       17 NAMECALL                         R4 R1 K4 ["Clone"]
       19 CALL                             R4 1 1
       20 SETTABLEKS                       R4 R0 K1 ["model"]
       22 SETTABLEKS                       R3 R1 K3 ["Archivable"]
       24 GETTABLEKS                       R4 R0 K1 ["model"]
       26 NAMECALL                         R4 R4 K5 ["GetDescendants"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 LOADK                            R11 K6 ["BaseWrap"]
       31 NAMECALL                         R9 R8 K7 ["IsA"]
       33 CALL                             R9 2 1
       34 JUMPIFNOT                        R9 ; [+3]
       35 NAMECALL                         R9 R8 K2 ["Destroy"]
       37 CALL                             R9 1 0
       38 FORGLOOP                         R4 2 ; [-9]
       40 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R4 R1 K0 ["Model"]
        2 NAMECALL                         R2 R0 K1 ["cloneModel"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["Model"]
        4 GETTABLEKS                       R3 R1 K1 ["Model"]
        6 JUMPIFEQ                         R2 R3 ; [+6]
        8 GETTABLEKS                       R4 R1 K1 ["Model"]
       10 NAMECALL                         R2 R0 K2 ["cloneModel"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["FocusDirection"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K10 [{"Model", "BackgroundTransparency", "Position", "FocusDirection", "Static", "DisablePan", "DisableZoom", "ShouldClone"}]
        9 GETTABLEKS                       R6 R0 K11 ["model"]
       11 SETTABLEKS                       R6 R5 K3 ["Model"]
       13 LOADN                            R6 1
       14 SETTABLEKS                       R6 R5 K4 ["BackgroundTransparency"]
       16 GETIMPORT                        R6 K14 [UDim2.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 LOADN                            R9 0
       21 LOADN                            R10 0
       22 CALL                             R6 4 1
       23 SETTABLEKS                       R6 R5 K5 ["Position"]
       25 SETTABLEKS                       R2 R5 K1 ["FocusDirection"]
       27 LOADB                            R6 1
       28 SETTABLEKS                       R6 R5 K6 ["Static"]
       30 LOADB                            R6 1
       31 SETTABLEKS                       R6 R5 K7 ["DisablePan"]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K8 ["DisableZoom"]
       36 LOADB                            R6 0
       37 SETTABLEKS                       R6 R5 K9 ["ShouldClone"]
       39 CALL                             R3 2 -1
       40 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Framework"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["UI"]
       21 GETTABLEKS                       R4 R3 K8 ["Pane"]
       23 GETTABLEKS                       R5 R2 K9 ["Util"]
       25 GETTABLEKS                       R6 R5 K10 ["Typecheck"]
       27 GETTABLEKS                       R7 R5 K11 ["StyleModifier"]
       29 GETTABLEKS                       R8 R3 K12 ["AssetRenderModel"]
       31 GETTABLEKS                       R9 R1 K13 ["PureComponent"]
       33 LOADK                            R11 K14 ["StaticLCAssetRenderModel"]
       34 NAMECALL                         R9 R9 K15 ["extend"]
       36 CALL                             R9 2 1
       37 GETTABLEKS                       R10 R6 K16 ["wrap"]
       39 MOVE                             R11 R9
       40 GETIMPORT                        R12 K1 [script]
       42 CALL                             R10 2 0
       43 DUPTABLE                         R10 K18 [{"FocusDirection"}]
       44 LOADK                            R11 K19 [{-0.5, 0.5, -1}]
       45 SETTABLEKS                       R11 R10 K17 ["FocusDirection"]
       47 SETTABLEKS                       R10 R9 K20 ["defaultProps"]
       49 DUPCLOSURE                       R10 K21 [PROTO_0]
       50 SETTABLEKS                       R10 R9 K22 ["cloneModel"]
       52 DUPCLOSURE                       R10 K23 [PROTO_1]
       53 SETTABLEKS                       R10 R9 K24 ["init"]
       55 DUPCLOSURE                       R10 K25 [PROTO_2]
       56 SETTABLEKS                       R10 R9 K26 ["willUpdate"]
       58 DUPCLOSURE                       R10 K27 [PROTO_3]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R8
       61 SETTABLEKS                       R10 R9 K28 ["render"]
       63 RETURN                           R9 1
