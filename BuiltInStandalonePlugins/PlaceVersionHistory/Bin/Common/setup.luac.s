PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Packages"]
        5 GETTABLEKS                       R3 R3 K3 ["ReactDeveloperTools"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R2 K4 ["tryEnableDevtools"]
       10 DUPTABLE                         R4 K6 [{"pluginName"}]
       11 LOADK                            R5 K7 ["PlaceVersionHistory"]
       12 SETTABLEKS                       R5 R4 K5 ["pluginName"]
       14 CALL                             R3 1 0
       15 GETIMPORT                        R3 K1 [require]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K2 ["Packages"]
       20 GETTABLEKS                       R4 R4 K8 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K1 [require]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K2 ["Packages"]
       28 GETTABLEKS                       R5 R5 K9 ["ReactRoblox"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K1 [require]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R6 R6 K10 ["Src"]
       36 GETTABLEKS                       R6 R6 K11 ["MainPlugin"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R6 R3 K12 ["createElement"]
       41 MOVE                             R7 R5
       42 DUPTABLE                         R8 K15 [{"plugin", "widget"}]
       43 SETTABLEKS                       R0 R8 K13 ["plugin"]
       45 SETTABLEKS                       R1 R8 K14 ["widget"]
       47 CALL                             R6 2 1
       48 GETIMPORT                        R7 K18 [Instance.new]
       50 LOADK                            R8 K19 ["Frame"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R8 R4 K20 ["createRoot"]
       54 MOVE                             R9 R7
       55 CALL                             R8 1 1
       56 MOVE                             R11 R6
       57 NAMECALL                         R9 R8 K21 ["render"]
       59 CALL                             R9 2 0
       60 GETTABLEKS                       R9 R0 K22 ["Unloading"]
       62 NEWCLOSURE                       R11 P0
       63 CAPTURE                          VAL R8
       64 NAMECALL                         R9 R9 K23 ["Connect"]
       66 CALL                             R9 2 0
       67 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 SETTABLEKS                       R1 R0 K0 ["Name"]
        5 GETIMPORT                        R1 K2 [game]
        7 LOADK                            R3 K3 ["RunService"]
        8 NAMECALL                         R1 R1 K4 ["GetService"]
       10 CALL                             R1 2 1
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K5 ["get"]
       14 CALL                             R3 0 1
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R4 R4 K6 ["Standalone"]
       18 JUMPIFEQ                         R3 R4 ; [+2]
       20 LOADB                            R2 0 +1
       21 LOADB                            R2 1
       22 NAMECALL                         R3 R1 K7 ["IsEdit"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R6 R0 K0 ["Name"]
       27 GETIMPORT                        R7 K10 [DockWidgetPluginGuiInfo.new]
       29 GETIMPORT                        R8 K14 [Enum.InitialDockState.Float]
       31 LOADB                            R9 0
       32 LOADB                            R10 0
       33 LOADN                            R11 128
       34 LOADN                            R12 224
       35 LOADN                            R13 64
       36 LOADN                            R14 240
       37 CALL                             R7 7 -1
       38 NAMECALL                         R4 R0 K15 ["CreateDockWidgetPluginGui"]
       40 CALL                             R4 -1 1
       41 JUMPIF                           R2 ; [+1]
       42 JUMPIFNOT                        R3 ; [+4]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R0
       45 MOVE                             R7 R4
       46 CALL                             R5 2 0
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["pluginType"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_1]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R3 K10 [PROTO_2]
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
