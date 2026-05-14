PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K3 [{"plugin", "pluginLoaderContext"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["plugin"]
        8 GETUPVAL                         R3 3
        9 SETTABLEKS                       R3 R2 K2 ["pluginLoaderContext"]
       11 CALL                             R0 2 1
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["mount"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 SETUPVAL                         R1 4
       18 GETIMPORT                        R1 K6 [pcall]
       20 DUPCLOSURE                       R2 K7 [PROTO_0]
       21 CALL                             R1 1 2
       22 JUMPIFNOT                        R1 ; [+15]
       23 JUMPIFNOT                        R2 ; [+14]
       24 GETUPVAL                         R3 6
       25 GETTABLEKS                       R3 R3 K8 ["forPlugin"]
       27 LOADK                            R4 K9 ["AnimationClipEditor"]
       28 GETUPVAL                         R5 2
       29 CALL                             R3 2 1
       30 SETUPVAL                         R3 5
       31 GETUPVAL                         R3 5
       32 LOADK                            R5 K10 ["Roact tree"]
       33 GETUPVAL                         R6 4
       34 GETUPVAL                         R7 0
       35 NAMECALL                         R3 R3 K11 ["addRoactTree"]
       37 CALL                             R3 4 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["unmount"]
        5 GETUPVAL                         R1 0
        6 CALL                             R0 1 0
        7 GETUPVAL                         R0 2
        8 JUMPIFNOT                        R0 ; [+4]
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K1 ["destroy"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [require]
        2 GETIMPORT                        R3 K3 [script]
        4 GETTABLEKS                       R3 R3 K4 ["Parent"]
        6 GETTABLEKS                       R3 R3 K5 ["defineLuaFlags"]
        8 CALL                             R2 1 0
        9 GETIMPORT                        R2 K3 [script]
       11 LOADK                            R4 K6 ["AnimationClipEditor"]
       12 NAMECALL                         R2 R2 K7 ["FindFirstAncestor"]
       14 CALL                             R2 2 1
       15 GETIMPORT                        R3 K1 [require]
       17 GETTABLEKS                       R4 R2 K8 ["Packages"]
       19 GETTABLEKS                       R4 R4 K9 ["DeveloperTools"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K1 [require]
       24 GETTABLEKS                       R5 R2 K10 ["Src"]
       26 GETTABLEKS                       R5 R5 K11 ["Util"]
       28 GETTABLEKS                       R5 R5 K12 ["DebugFlags"]
       30 CALL                             R4 1 1
       31 GETIMPORT                        R5 K1 [require]
       33 GETTABLEKS                       R6 R2 K8 ["Packages"]
       35 GETTABLEKS                       R6 R6 K13 ["Roact"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K1 [require]
       40 GETTABLEKS                       R7 R2 K10 ["Src"]
       42 GETTABLEKS                       R7 R7 K14 ["Components"]
       44 GETTABLEKS                       R7 R7 K15 ["AnimationClipEditorPlugin"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R4 K16 ["RunTests"]
       49 CALL                             R7 0 1
       50 JUMPIF                           R7 ; [+4]
       51 GETTABLEKS                       R7 R4 K17 ["RunRhodiumTests"]
       53 CALL                             R7 0 1
       54 JUMPIFNOT                        R7 ; [+1]
       55 RETURN                           R0 0
       56 LOADNIL                          R7
       57 LOADNIL                          R8
       58 NEWCLOSURE                       R9 P0
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          REF R8
       64 CAPTURE                          REF R7
       65 CAPTURE                          VAL R3
       66 GETTABLEKS                       R10 R0 K18 ["Unloading"]
       68 NEWCLOSURE                       R12 P1
       69 CAPTURE                          REF R8
       70 CAPTURE                          VAL R5
       71 CAPTURE                          REF R7
       72 NAMECALL                         R10 R10 K19 ["Connect"]
       74 CALL                             R10 2 0
       75 MOVE                             R10 R9
       76 CALL                             R10 0 0
       77 CLOSEUPVALS                      R7
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_3]
        2 RETURN                           R0 1
