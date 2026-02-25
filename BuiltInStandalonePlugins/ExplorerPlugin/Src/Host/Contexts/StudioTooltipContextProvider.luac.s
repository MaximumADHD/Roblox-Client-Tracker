PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 0
        3 LOADN                            R2 2
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K5 [{"AttachmentInfo", "Text"}]
        7 DUPTABLE                         R3 K9 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
        8 GETIMPORT                        R4 K2 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K6 ["TargetAnchorPoint"]
       15 GETIMPORT                        R4 K2 [Vector2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 0
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K7 ["SubjectAnchorPoint"]
       22 GETUPVAL                         R7 1
       23 GETTABLEKS                       R6 R7 K10 ["AbsolutePosition"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K11 ["AbsoluteSize"]
       28 ADD                              R5 R6 R7
       29 ADD                              R4 R5 R0
       30 SETTABLEKS                       R4 R3 K8 ["Offset"]
       32 SETTABLEKS                       R3 R2 K3 ["AttachmentInfo"]
       34 GETUPVAL                         R3 2
       35 SETTABLEKS                       R3 R2 K4 ["Text"]
       37 CALL                             R1 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["UI"]
        3 GETTABLEKS                       R2 R3 K1 ["Hooks"]
        5 GETTABLEKS                       R1 R2 K2 ["useTooltip"]
        7 DUPTABLE                         R2 K5 [{"Uri", "Text"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K3 ["Uri"]
       11 SETTABLEKS                       R0 R2 K4 ["Text"]
       13 CALL                             R1 1 2
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R3 R4 K6 ["useCallback"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R1
       19 NEWTABLE                         R5 0 1
       21 MOVE                             R6 R1
       22 SETLIST                          R5 R6 1 [1]
       24 CALL                             R3 2 1
       25 MOVE                             R4 R3
       26 MOVE                             R5 R2
       27 RETURN                           R4 2

PROTO_3:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 GETUPVAL                         R2 3
        5 GETUPVAL                         R7 4
        6 GETTABLEKS                       R6 R7 K1 ["Components"]
        8 GETTABLEKS                       R5 R6 K2 ["Contexts"]
       10 GETTABLEKS                       R4 R5 K3 ["TooltipContext"]
       12 GETTABLEKS                       R3 R4 K4 ["Provider"]
       14 DUPTABLE                         R4 K6 [{"useTooltip"}]
       15 SETTABLEKS                       R1 R4 K5 ["useTooltip"]
       17 GETTABLEKS                       R5 R0 K7 ["children"]
       19 CALL                             R2 3 -1
       20 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["ExplorerGuiUri"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K6 ["Packages"]
       34 GETTABLEKS                       R5 R6 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K13 ["createElement"]
       39 DUPCLOSURE                       R6 K14 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 RETURN                           R6 1
