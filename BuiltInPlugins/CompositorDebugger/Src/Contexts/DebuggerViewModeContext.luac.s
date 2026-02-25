PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["NodeView"] ; [+3]
        2 LOADK                            R1 K1 ["TreeView"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K1 ["TreeView"] ; [+3]
        6 LOADK                            R1 K0 ["NodeView"]
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K3 [error]
       10 LOADK                            R3 K4 ["Unknown debugger view mode: %*"]
       11 FASTCALL1                        TOSTRING R0 ; [+3]
       12 MOVE                             R6 R0
       13 GETIMPORT                        R5 K6 [tostring]
       15 CALL                             R5 1 1
       16 NAMECALL                         R3 R3 K7 ["format"]
       18 CALL                             R3 2 1
       19 MOVE                             R2 R3
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_0]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R3 R4 K0 ["SETTINGS"]
        4 GETTABLEKS                       R2 R3 K1 ["CompositorViewMode"]
        6 LOADK                            R3 K2 ["NodeView"]
        7 CALL                             R1 2 2
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 JUMPIFNOT                        R3 ; [+4]
       11 GETUPVAL                         R3 3
       12 CALL                             R3 0 1
       13 JUMPIF                           R3 ; [+1]
       14 LOADK                            R1 K2 ["NodeView"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R3 R4 K3 ["useCallback"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R2
       23 SETLIST                          R5 R6 1 [1]
       25 CALL                             R3 2 1
       26 DUPTABLE                         R4 K6 [{"viewMode", "toggleDebuggerViewMode"}]
       27 SETTABLEKS                       R1 R4 K4 ["viewMode"]
       29 SETTABLEKS                       R3 R4 K5 ["toggleDebuggerViewMode"]
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R5 R6 K7 ["createElement"]
       34 GETUPVAL                         R7 5
       35 GETTABLEKS                       R6 R7 K8 ["Provider"]
       37 DUPTABLE                         R7 K10 [{"value"}]
       38 SETTABLEKS                       R4 R7 K9 ["value"]
       40 GETTABLEKS                       R8 R0 K11 ["children"]
       42 CALL                             R5 3 -1
       43 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CompositorDebugger"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["AnimationEditor"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R6 K11 ["Types"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Src"]
       39 GETTABLEKS                       R7 R8 K12 ["Flags"]
       41 GETTABLEKS                       R6 R7 K13 ["getFFlagCompositorNodeView"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R9 R0 K10 ["Src"]
       48 GETTABLEKS                       R8 R9 K12 ["Flags"]
       50 GETTABLEKS                       R7 R8 K14 ["getFFlagCompositorNodeViewButton"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R1 K15 ["Constants"]
       55 GETTABLEKS                       R8 R1 K16 ["usePluginSetting"]
       57 DUPTABLE                         R9 K19 [{"viewMode", "toggleDebuggerViewMode"}]
       58 LOADK                            R10 K20 ["TreeView"]
       59 SETTABLEKS                       R10 R9 K17 ["viewMode"]
       61 GETTABLEKS                       R10 R3 K21 ["createUnimplemented"]
       63 LOADK                            R11 K18 ["toggleDebuggerViewMode"]
       64 CALL                             R10 1 1
       65 SETTABLEKS                       R10 R9 K18 ["toggleDebuggerViewMode"]
       67 GETTABLEKS                       R10 R2 K22 ["createContext"]
       69 MOVE                             R11 R9
       70 CALL                             R10 1 1
       71 DUPCLOSURE                       R11 K23 [PROTO_2]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R10
       78 DUPTABLE                         R12 K26 [{"Context", "Provider"}]
       79 SETTABLEKS                       R10 R12 K24 ["Context"]
       81 SETTABLEKS                       R11 R12 K25 ["Provider"]
       83 RETURN                           R12 1
