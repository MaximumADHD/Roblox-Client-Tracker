PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["Panels"]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K1 ["FocusAsync"]
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["_getUriForTargetId"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["Widgets"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K2 ["GetWidgetAsync"]
       11 CALL                             R3 2 1
       12 GETTABLEKS                       R4 R3 K3 ["Exists"]
       14 JUMPIF                           R4 ; [+1]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R4 R0 K4 ["Spotlight"]
       18 NAMECALL                         R4 R4 K5 ["ApplyShadowsAsync"]
       20 CALL                             R4 1 0
       21 GETIMPORT                        R4 K7 [pcall]
       23 GETTABLEKS                       R5 R0 K8 ["_focusOnTargetUri"]
       25 MOVE                             R6 R0
       26 MOVE                             R7 R2
       27 CALL                             R4 3 0
       28 GETTABLEKS                       R4 R0 K4 ["Spotlight"]
       30 MOVE                             R6 R2
       31 NAMECALL                         R4 R4 K9 ["ApplySpotlightAsync"]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [pcall]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["ShowWidgets"]
        5 GETUPVAL                         R4 0
        6 MOVE                             R5 R1
        7 CALL                             R2 3 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["Spotlight"]
        2 NAMECALL                         R1 R1 K1 ["HideSpotlightAsync"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["clear"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Services"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["TutorialService"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETIMPORT                        R5 K1 [script]
       22 GETTABLEKS                       R4 R5 K10 ["getTargetIdMappings"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETIMPORT                        R6 K1 [script]
       29 GETTABLEKS                       R5 R6 K11 ["PluginComponents"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K13 [plugin]
       34 JUMPIF                           R5 ; [+6]
       35 GETIMPORT                        R5 K1 [script]
       37 LOADK                            R7 K14 ["Plugin"]
       38 NAMECALL                         R5 R5 K15 ["FindFirstAncestorWhichIsA"]
       40 CALL                             R5 2 1
       41 GETIMPORT                        R6 K5 [require]
       43 GETTABLEKS                       R8 R0 K16 ["Bin"]
       45 GETTABLEKS                       R7 R8 K17 ["defineLuaFlags"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R7 R6 K18 ["getFFlagKnowledgeTutorialsFixSpotlightCleanup"]
       50 CALL                             R7 0 1
       51 NEWTABLE                         R8 8 0
       53 GETTABLEKS                       R9 R4 K19 ["Spotlight"]
       55 SETTABLEKS                       R9 R8 K19 ["Spotlight"]
       57 GETTABLEKS                       R9 R4 K20 ["Panels"]
       59 SETTABLEKS                       R9 R8 K20 ["Panels"]
       61 GETTABLEKS                       R9 R4 K21 ["Widgets"]
       63 SETTABLEKS                       R9 R8 K21 ["Widgets"]
       65 DUPCLOSURE                       R9 K22 [PROTO_0]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R9 R8 K23 ["_getUriForTargetId"]
       69 DUPCLOSURE                       R9 K24 [PROTO_1]
       70 SETTABLEKS                       R9 R8 K25 ["_focusOnTargetUri"]
       72 DUPCLOSURE                       R9 K26 [PROTO_2]
       73 SETTABLEKS                       R9 R8 K27 ["applyTargetId"]
       75 DUPCLOSURE                       R9 K28 [PROTO_3]
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R9 R8 K29 ["showWidgets"]
       79 DUPCLOSURE                       R9 K30 [PROTO_4]
       80 SETTABLEKS                       R9 R8 K31 ["clear"]
       82 JUMPIF                           R7 ; [+7]
       83 GETTABLEKS                       R9 R5 K32 ["Unloading"]
       85 DUPCLOSURE                       R11 K33 [PROTO_5]
       86 CAPTURE                          VAL R8
       87 NAMECALL                         R9 R9 K34 ["Connect"]
       89 CALL                             R9 2 0
       90 RETURN                           R8 1
