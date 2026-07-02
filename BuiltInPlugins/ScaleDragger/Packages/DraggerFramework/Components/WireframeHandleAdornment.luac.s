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
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R3 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       20 LOADK                            R5 K8 ["WireframeHandleAdornment"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 DUPTABLE                         R4 K20 [{["ZIndex"] = 0, ["Transparency"] = 0, ["AlwaysOnTop"] = True, ["Adornee"], ["Scale"] = {1, 1, 1}, ["CFrame"], ["Color3"]}]
       25 GETIMPORT                        R5 K22 [workspace]
       27 GETTABLEKS                       R5 R5 K23 ["Terrain"]
       29 SETTABLEKS                       R5 R4 K15 ["Adornee"]
       31 GETIMPORT                        R5 K25 [CFrame.identity]
       33 SETTABLEKS                       R5 R4 K18 ["CFrame"]
       35 GETIMPORT                        R5 K27 [Color3.new]
       37 LOADN                            R6 1
       38 LOADN                            R7 1
       39 LOADN                            R8 1
       40 CALL                             R5 3 1
       41 SETTABLEKS                       R5 R4 K19 ["Color3"]
       43 SETTABLEKS                       R4 R3 K28 ["defaultProps"]
       45 DUPCLOSURE                       R4 K29 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 SETTABLEKS                       R4 R3 K30 ["init"]
       49 DUPCLOSURE                       R4 K31 [PROTO_1]
       50 SETTABLEKS                       R4 R3 K32 ["didMount"]
       52 DUPCLOSURE                       R4 K33 [PROTO_2]
       53 SETTABLEKS                       R4 R3 K34 ["didUpdate"]
       55 DUPCLOSURE                       R4 K35 [PROTO_3]
       56 SETTABLEKS                       R4 R3 K36 ["_renderGrid"]
       58 DUPCLOSURE                       R4 K37 [PROTO_4]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R4 R3 K38 ["render"]
       62 RETURN                           R3 1
