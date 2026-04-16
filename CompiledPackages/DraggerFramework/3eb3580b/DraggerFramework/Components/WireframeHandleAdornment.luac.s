PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
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
        8 GETTABLEKS                       R3 R0 K3 ["props"]
       10 GETTABLEKS                       R2 R3 K4 ["Render"]
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
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
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K14 ["Ref"]
       43 GETTABLEKS                       R6 R0 K15 ["_wireframeRef"]
       45 SETTABLE                         R6 R4 R5
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Packages"]
       15 GETTABLEKS                       R3 R4 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K7 ["PureComponent"]
       20 LOADK                            R5 K8 ["WireframeHandleAdornment"]
       21 NAMECALL                         R3 R3 K9 ["extend"]
       23 CALL                             R3 2 1
       24 DUPTABLE                         R4 K17 [{"ZIndex", "Transparency", "AlwaysOnTop", "Adornee", "Scale", "CFrame", "Color3"}]
       25 LOADN                            R5 0
       26 SETTABLEKS                       R5 R4 K10 ["ZIndex"]
       28 LOADN                            R5 0
       29 SETTABLEKS                       R5 R4 K11 ["Transparency"]
       31 LOADB                            R5 1
       32 SETTABLEKS                       R5 R4 K12 ["AlwaysOnTop"]
       34 GETIMPORT                        R6 K19 [workspace]
       36 GETTABLEKS                       R5 R6 K20 ["Terrain"]
       38 SETTABLEKS                       R5 R4 K13 ["Adornee"]
       40 LOADK                            R5 K21 [{1, 1, 1}]
       41 SETTABLEKS                       R5 R4 K14 ["Scale"]
       43 GETIMPORT                        R5 K23 [CFrame.identity]
       45 SETTABLEKS                       R5 R4 K15 ["CFrame"]
       47 GETIMPORT                        R5 K25 [Color3.new]
       49 LOADN                            R6 1
       50 LOADN                            R7 1
       51 LOADN                            R8 1
       52 CALL                             R5 3 1
       53 SETTABLEKS                       R5 R4 K16 ["Color3"]
       55 SETTABLEKS                       R4 R3 K26 ["defaultProps"]
       57 DUPCLOSURE                       R4 K27 [PROTO_0]
       58 CAPTURE                          VAL R2
       59 SETTABLEKS                       R4 R3 K28 ["init"]
       61 DUPCLOSURE                       R4 K29 [PROTO_1]
       62 SETTABLEKS                       R4 R3 K30 ["didMount"]
       64 DUPCLOSURE                       R4 K31 [PROTO_2]
       65 SETTABLEKS                       R4 R3 K32 ["didUpdate"]
       67 DUPCLOSURE                       R4 K33 [PROTO_3]
       68 SETTABLEKS                       R4 R3 K34 ["_renderGrid"]
       70 DUPCLOSURE                       R4 K35 [PROTO_4]
       71 CAPTURE                          VAL R2
       72 SETTABLEKS                       R4 R3 K36 ["render"]
       74 RETURN                           R3 1
