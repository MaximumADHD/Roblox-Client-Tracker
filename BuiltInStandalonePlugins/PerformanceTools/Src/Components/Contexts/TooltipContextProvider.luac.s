PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 LOADN                            R1 251
        3 LOADN                            R2 0
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 0
        6 DUPTABLE                         R2 K4 [{"AttachmentInfo"}]
        7 DUPTABLE                         R3 K8 [{"TargetAnchorPoint", "SubjectAnchorPoint", "Offset"}]
        8 GETIMPORT                        R4 K2 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 SETTABLEKS                       R4 R3 K5 ["TargetAnchorPoint"]
       15 GETIMPORT                        R4 K2 [Vector2.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 1
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K6 ["SubjectAnchorPoint"]
       22 GETUPVAL                         R5 1
       23 ADD                              R4 R5 R0
       24 SETTABLEKS                       R4 R3 K7 ["Offset"]
       26 SETTABLEKS                       R3 R2 K3 ["AttachmentInfo"]
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R3 K3 [{"Uri", "Text", "Title"}]
        2 GETUPVAL                         R4 1
        3 SETTABLEKS                       R4 R3 K0 ["Uri"]
        5 SETTABLEKS                       R1 R3 K1 ["Text"]
        7 SETTABLEKS                       R0 R3 K2 ["Title"]
        9 CALL                             R2 1 2
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K4 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U3
       16 NEWTABLE                         R6 0 1
       18 MOVE                             R7 R2
       19 SETLIST                          R6 R7 1 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K4 ["useCallback"]
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          UPVAL U3
       27 NEWTABLE                         R7 0 1
       29 GETUPVAL                         R8 3
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 MOVE                             R6 R4
       34 MOVE                             R7 R3
       35 MOVE                             R8 R5
       36 RETURN                           R6 3

PROTO_3:
        0 GETIMPORT                        R1 K2 [Vector2.new]
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          REF R1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["createElement"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["Provider"]
       16 DUPTABLE                         R5 K6 [{"useTooltip"}]
       17 SETTABLEKS                       R2 R5 K5 ["useTooltip"]
       19 GETTABLEKS                       R6 R0 K7 ["children"]
       21 CALL                             R3 3 -1
       22 CLOSEUPVALS                      R1
       23 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["DevFramework"]
       22 GETTABLEKS                       R3 R3 K11 ["useTooltip"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K12 ["Util"]
       31 GETTABLEKS                       R4 R4 K13 ["PerformanceToolsUri"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K8 ["Src"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K14 ["Contexts"]
       42 GETTABLEKS                       R5 R5 K15 ["TooltipContext"]
       44 CALL                             R4 1 1
       45 DUPCLOSURE                       R5 K16 [PROTO_3]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R4
       50 RETURN                           R5 1
