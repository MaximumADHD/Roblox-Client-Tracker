PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K4 [{["Image"] = "rbxasset://textures/ui/common/robux_color@2x.png", ["Size"]}]
        5 GETIMPORT                        R3 K7 [UDim2.fromOffset]
        7 LOADN                            R4 100
        8 LOADN                            R5 100
        9 CALL                             R3 2 1
       10 SETTABLEKS                       R3 R2 K3 ["Size"]
       12 CALL                             R0 2 -1
       13 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 2 0
        6 LOADK                            R3 K1 ["rbxasset://textures/StudioSharedUI/search.png"]
        7 SETTABLEKS                       R3 R2 K2 ["Image"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Tag"]
       12 LOADK                            R4 K4 ["Icon16"]
       13 SETTABLE                         R4 R2 R3
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 2 0
        6 LOADK                            R3 K1 ["rbxasset://textures/StudioSharedUI/search.png"]
        7 SETTABLEKS                       R3 R2 K2 ["Image"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K3 ["Tag"]
       12 LOADK                            R4 K4 ["Icon16 Primary"]
       13 SETTABLE                         R4 R2 R3
       14 CALL                             R0 2 -1
       15 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Tag"]
        9 LOADK                            R4 K2 ["ArrowIcon"]
       10 SETTABLE                         R4 R2 R3
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["Tag"]
        9 LOADK                            R4 K2 ["ErrorIcon"]
       10 SETTABLE                         R4 R2 R3
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Image"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K11 [{"stories"}]
       26 NEWTABLE                         R4 0 5
       28 DUPTABLE                         R5 K14 [{["name"] = "Image", ["story"]}]
       29 DUPCLOSURE                       R6 K15 [PROTO_0]
       30 CAPTURE                          VAL R1
       31 CAPTURE                          VAL R2
       32 SETTABLEKS                       R6 R5 K13 ["story"]
       34 DUPTABLE                         R6 K17 [{["name"] = "Icon16", ["story"]}]
       35 DUPCLOSURE                       R7 K18 [PROTO_1]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R7 R6 K13 ["story"]
       40 DUPTABLE                         R7 K20 [{["name"] = "Primary Icon16", ["story"]}]
       41 DUPCLOSURE                       R8 K21 [PROTO_2]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R8 R7 K13 ["story"]
       46 DUPTABLE                         R8 K23 [{["name"] = "ArrowIcon", ["story"]}]
       47 DUPCLOSURE                       R9 K24 [PROTO_3]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R2
       50 SETTABLEKS                       R9 R8 K13 ["story"]
       52 DUPTABLE                         R9 K26 [{["name"] = "ErrorIcon", ["story"]}]
       53 DUPCLOSURE                       R10 K27 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R2
       56 SETTABLEKS                       R10 R9 K13 ["story"]
       58 SETLIST                          R4 R5 5 [1]
       60 SETTABLEKS                       R4 R3 K10 ["stories"]
       62 RETURN                           R3 1
