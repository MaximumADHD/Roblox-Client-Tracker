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
       45 GETTABLEKS                       R11 R0 K19 ["Size"]
       47 GETTABLEKS                       R10 R11 K20 ["X"]
       49 GETTABLEKS                       R12 R0 K19 ["Size"]
       51 GETTABLEKS                       R11 R12 K21 ["Y"]
       53 GETTABLEKS                       R12 R2 K20 ["X"]
       55 GETTABLEKS                       R13 R2 K21 ["Y"]
       57 CALL                             R6 7 1
       58 MOVE                             R9 R4
       59 MOVE                             R10 R6
       60 NAMECALL                         R7 R1 K22 ["CreateDockWidgetPluginGui"]
       62 CALL                             R7 3 -1
       63 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R1 R2 K8 ["Typecheck"]
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["createPluginWidget"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 LOADK                            R4 K11 ["DockWidget"]
       27 DUPCLOSURE                       R5 K12 [PROTO_0]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R1 K13 ["wrap"]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R6 K1 [script]
       34 CALL                             R4 2 0
       35 RETURN                           R3 1
