PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["TestHelpers"]
        6 GETTABLEKS                       R2 R2 K2 ["provideMockContext"]
        8 NEWTABLE                         R3 0 2
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["ContextServices"]
       13 GETTABLEKS                       R4 R4 K4 ["Analytics"]
       15 GETTABLEKS                       R4 R4 K5 ["mock"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K3 ["ContextServices"]
       21 GETTABLEKS                       R5 R5 K6 ["Localization"]
       23 GETTABLEKS                       R5 R5 K5 ["mock"]
       25 CALL                             R5 0 -1
       26 SETLIST                          R3 R4 -1 [1]
       28 DUPTABLE                         R4 K8 [{"ContextStack"}]
       29 GETUPVAL                         R5 2
       30 GETTABLEKS                       R5 R5 K9 ["createElement"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K7 ["ContextStack"]
       35 DUPTABLE                         R7 K11 [{"providers"}]
       36 NEWTABLE                         R8 0 1
       38 GETUPVAL                         R9 2
       39 GETTABLEKS                       R9 R9 K9 ["createElement"]
       41 GETUPVAL                         R10 4
       42 GETTABLEKS                       R10 R10 K12 ["FoundationProvider"]
       44 DUPTABLE                         R11 K16 [{["theme"], ["device"] = "Desktop"}]
       45 GETUPVAL                         R12 4
       46 GETTABLEKS                       R12 R12 K17 ["Enums"]
       48 GETTABLEKS                       R12 R12 K18 ["Theme"]
       50 GETTABLEKS                       R12 R12 K19 ["Dark"]
       52 SETTABLEKS                       R12 R11 K13 ["theme"]
       54 CALL                             R9 2 -1
       55 SETLIST                          R8 R9 -1 [1]
       57 SETTABLEKS                       R8 R7 K10 ["providers"]
       59 DUPTABLE                         R8 K21 [{"MainComponent"}]
       60 GETUPVAL                         R9 5
       61 GETTABLEKS                       R9 R9 K22 ["Component"]
       63 SETTABLEKS                       R9 R8 K20 ["MainComponent"]
       65 CALL                             R5 3 1
       66 SETTABLEKS                       R5 R4 K7 ["ContextStack"]
       68 CALL                             R2 2 -1
       69 NAMECALL                         R0 R0 K23 ["render"]
       71 CALL                             R0 -1 0
       72 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETIMPORT                        R2 K4 [Instance.new]
       10 LOADK                            R3 K5 ["ScreenGui"]
       11 GETUPVAL                         R4 1
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K6 ["_layerCollector"]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K7 ["createRoot"]
       18 GETTABLEKS                       R3 R1 K6 ["_layerCollector"]
       20 CALL                             R2 1 1
       21 SETTABLEKS                       R2 R1 K8 ["_root"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K9 ["act"]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          VAL R1
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          VAL R0
       33 CALL                             R2 1 0
       34 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_root"]
        3 NAMECALL                         R0 R0 K1 ["unmount"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["_layerCollector"]
        9 NAMECALL                         R0 R0 K3 ["Destroy"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["act"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Parent"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Parent"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Parent"]
       38 GETTABLEKS                       R6 R6 K14 ["ReactRoblox"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Parent"]
       45 GETTABLEKS                       R7 R7 K15 ["ReactUtils"]
       47 CALL                             R6 1 1
       48 NEWTABLE                         R7 4 0
       50 SETTABLEKS                       R7 R7 K16 ["__index"]
       52 DUPCLOSURE                       R8 K17 [PROTO_1]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R6
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R8 R7 K18 ["new"]
       62 DUPCLOSURE                       R8 K19 [PROTO_3]
       63 CAPTURE                          VAL R5
       64 SETTABLEKS                       R8 R7 K20 ["destroy"]
       66 RETURN                           R7 1
