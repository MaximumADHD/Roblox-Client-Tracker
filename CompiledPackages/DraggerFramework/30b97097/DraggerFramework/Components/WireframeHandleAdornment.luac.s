PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["_wireframeRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["_renderGrid"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["_renderGrid"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_wireframeRef"]
        2 NAMECALL                         R1 R1 K1 ["getValue"]
        4 CALL                             R1 1 1
        5 NAMECALL                         R2 R1 K2 ["Clear"]
        7 CALL                             R2 1 0
        8 GETTABLEKS                       R2 R0 K3 ["props"]
       10 GETTABLEKS                       R2 R2 K4 ["Render"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 LOADK                            R3 K2 ["WireframeHandleAdornment"]
        6 NEWTABLE                         R4 16 0
        8 GETIMPORT                        R5 K6 [Enum.AdornCullingMode.Never]
       10 SETTABLEKS                       R5 R4 K4 ["AdornCullingMode"]
       12 GETTABLEKS                       R5 R1 K7 ["ZIndex"]
       14 SETTABLEKS                       R5 R4 K7 ["ZIndex"]
       16 GETTABLEKS                       R5 R1 K8 ["CFrame"]
       18 SETTABLEKS                       R5 R4 K8 ["CFrame"]
       20 GETTABLEKS                       R5 R1 K9 ["Transparency"]
       22 SETTABLEKS                       R5 R4 K9 ["Transparency"]
       24 GETTABLEKS                       R5 R1 K10 ["AlwaysOnTop"]
       26 SETTABLEKS                       R5 R4 K10 ["AlwaysOnTop"]
       28 GETTABLEKS                       R5 R1 K11 ["Adornee"]
       30 SETTABLEKS                       R5 R4 K11 ["Adornee"]
       32 GETTABLEKS                       R5 R1 K12 ["Color3"]
       34 SETTABLEKS                       R5 R4 K12 ["Color3"]
       36 GETTABLEKS                       R5 R1 K13 ["Scale"]
       38 SETTABLEKS                       R5 R4 K13 ["Scale"]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K14 ["Ref"]
       43 GETTABLEKS                       R6 R0 K15 ["_wireframeRef"]
       45 SETTABLE                         R6 R4 R5
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K2 ["Parent"]
       11 GETTABLEKS                       R2 R2 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["PureComponent"]
       16 LOADK                            R4 K7 ["WireframeHandleAdornment"]
       17 NAMECALL                         R2 R2 K8 ["extend"]
       19 CALL                             R2 2 1
       20 DUPTABLE                         R3 K19 [{["ZIndex"] = 0, ["Transparency"] = 0, ["AlwaysOnTop"] = True, ["Adornee"], ["Scale"] = {1, 1, 1}, ["CFrame"], ["Color3"]}]
       21 GETIMPORT                        R4 K21 [workspace]
       23 GETTABLEKS                       R4 R4 K22 ["Terrain"]
       25 SETTABLEKS                       R4 R3 K14 ["Adornee"]
       27 GETIMPORT                        R4 K24 [CFrame.identity]
       29 SETTABLEKS                       R4 R3 K17 ["CFrame"]
       31 GETIMPORT                        R4 K26 [Color3.new]
       33 LOADN                            R5 1
       34 LOADN                            R6 1
       35 LOADN                            R7 1
       36 CALL                             R4 3 1
       37 SETTABLEKS                       R4 R3 K18 ["Color3"]
       39 SETTABLEKS                       R3 R2 K27 ["defaultProps"]
       41 DUPCLOSURE                       R3 K28 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 SETTABLEKS                       R3 R2 K29 ["init"]
       45 DUPCLOSURE                       R3 K30 [PROTO_1]
       46 SETTABLEKS                       R3 R2 K31 ["didMount"]
       48 DUPCLOSURE                       R3 K32 [PROTO_2]
       49 SETTABLEKS                       R3 R2 K33 ["didUpdate"]
       51 DUPCLOSURE                       R3 K34 [PROTO_3]
       52 SETTABLEKS                       R3 R2 K35 ["_renderGrid"]
       54 DUPCLOSURE                       R3 K36 [PROTO_4]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R3 R2 K37 ["render"]
       58 RETURN                           R2 1
