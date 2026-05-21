PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"Image", "Size"}]
        5 LOADK                            R3 K4 ["rbxasset://textures/ui/common/robux_color@2x.png"]
        6 SETTABLEKS                       R3 R2 K1 ["Image"]
        8 GETIMPORT                        R3 K7 [UDim2.fromOffset]
       10 LOADN                            R4 100
       11 LOADN                            R5 100
       12 CALL                             R3 2 1
       13 SETTABLEKS                       R3 R2 K2 ["Size"]
       15 CALL                             R0 2 -1
       16 RETURN                           R0 -1

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
       28 DUPTABLE                         R5 K14 [{"name", "story"}]
       29 LOADK                            R6 K9 ["Image"]
       30 SETTABLEKS                       R6 R5 K12 ["name"]
       32 DUPCLOSURE                       R6 K15 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CAPTURE                          VAL R2
       35 SETTABLEKS                       R6 R5 K13 ["story"]
       37 DUPTABLE                         R6 K14 [{"name", "story"}]
       38 LOADK                            R7 K16 ["Icon16"]
       39 SETTABLEKS                       R7 R6 K12 ["name"]
       41 DUPCLOSURE                       R7 K17 [PROTO_1]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K13 ["story"]
       46 DUPTABLE                         R7 K14 [{"name", "story"}]
       47 LOADK                            R8 K18 ["Primary Icon16"]
       48 SETTABLEKS                       R8 R7 K12 ["name"]
       50 DUPCLOSURE                       R8 K19 [PROTO_2]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R2
       53 SETTABLEKS                       R8 R7 K13 ["story"]
       55 DUPTABLE                         R8 K14 [{"name", "story"}]
       56 LOADK                            R9 K20 ["ArrowIcon"]
       57 SETTABLEKS                       R9 R8 K12 ["name"]
       59 DUPCLOSURE                       R9 K21 [PROTO_3]
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R2
       62 SETTABLEKS                       R9 R8 K13 ["story"]
       64 DUPTABLE                         R9 K14 [{"name", "story"}]
       65 LOADK                            R10 K22 ["ErrorIcon"]
       66 SETTABLEKS                       R10 R9 K12 ["name"]
       68 DUPCLOSURE                       R10 K23 [PROTO_4]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 SETTABLEKS                       R10 R9 K13 ["story"]
       73 SETLIST                          R4 R5 5 [1]
       75 SETTABLEKS                       R4 R3 K10 ["stories"]
       77 RETURN                           R3 1
