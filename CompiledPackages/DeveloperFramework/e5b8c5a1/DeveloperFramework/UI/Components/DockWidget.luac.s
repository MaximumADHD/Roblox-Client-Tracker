PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Widget"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["Widget"]
        5 RETURN                           R1 1
        6 GETTABLEKS                       R1 R0 K1 ["Plugin"]
        8 NAMECALL                         R1 R1 K2 ["get"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K3 ["MinSize"]
       13 JUMPIF                           R2 ; [+5]
       14 GETIMPORT                        R2 K6 [Vector2.new]
       16 LOADN                            R3 0
       17 LOADN                            R4 0
       18 CALL                             R2 2 1
       19 GETTABLEKS                       R4 R0 K8 ["ShouldRestore"]
       21 ORK                              R3 R4 K7 [False]
       22 GETTABLEKS                       R4 R0 K9 ["Id"]
       24 JUMPIF                           R4 ; [+2]
       25 GETTABLEKS                       R4 R0 K10 ["Title"]
       27 JUMPIFNOT                        R3 ; [+8]
       28 GETTABLEKS                       R6 R0 K11 ["OnWidgetRestored"]
       30 FASTCALL2K                       ASSERT R6 K12 ; [+4]
       32 LOADK                            R7 K12 ["DockWidget expects an OnWidgetRestored function if ShouldRestore is true.\nThis DockWidget may restore as enabled, so we need to listen for that!"]
       33 GETIMPORT                        R5 K14 [assert]
       35 CALL                             R5 2 0
       36 NOT                              R5 R3
       37 GETIMPORT                        R6 K16 [DockWidgetPluginGuiInfo.new]
       39 GETTABLEKS                       R7 R0 K17 ["InitialDockState"]
       41 GETTABLEKS                       R9 R0 K18 ["Enabled"]
       43 ORK                              R8 R9 K7 [False]
       44 MOVE                             R9 R5
       45 GETTABLEKS                       R10 R0 K19 ["Size"]
       47 GETTABLEKS                       R10 R10 K20 ["X"]
       49 GETTABLEKS                       R11 R0 K19 ["Size"]
       51 GETTABLEKS                       R11 R11 K21 ["Y"]
       53 GETTABLEKS                       R12 R2 K20 ["X"]
       55 GETTABLEKS                       R13 R2 K21 ["Y"]
       57 CALL                             R6 7 1
       58 MOVE                             R9 R4
       59 MOVE                             R10 R6
       60 NAMECALL                         R7 R1 K22 ["CreateDockWidgetPluginGui"]
       62 CALL                             R7 3 1
       63 GETUPVAL                         R8 0
       64 JUMPIFNOT                        R8 ; [+10]
       65 GETTABLEKS                       R9 R0 K23 ["KeyboardNavigationEnabled"]
       67 JUMPIFEQKNIL                     R9 ; [+4]
       69 GETTABLEKS                       R8 R0 K23 ["KeyboardNavigationEnabled"]
       71 JUMP                             ; [+1]
       72 GETUPVAL                         R8 1
       73 SETTABLEKS                       R8 R7 K24 ["TabKeyboardNavigation"]
       75 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R1 R1 K8 ["Typecheck"]
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["createPluginWidget"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K12 [game]
       27 LOADK                            R5 K13 ["DevFrameworkKeyboardNavigation"]
       28 LOADB                            R6 0
       29 NAMECALL                         R3 R3 K14 ["DefineFastFlag"]
       31 CALL                             R3 3 1
       32 GETIMPORT                        R4 K12 [game]
       34 LOADK                            R6 K15 ["DevFrameworkKeyboardNavigationDefault"]
       35 LOADB                            R7 0
       36 NAMECALL                         R4 R4 K14 ["DefineFastFlag"]
       38 CALL                             R4 3 1
       39 MOVE                             R5 R2
       40 LOADK                            R6 K16 ["DockWidget"]
       41 DUPCLOSURE                       R7 K17 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R4
       44 CALL                             R5 2 1
       45 GETTABLEKS                       R6 R1 K18 ["wrap"]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R8 K1 [script]
       50 CALL                             R6 2 0
       51 RETURN                           R5 1
