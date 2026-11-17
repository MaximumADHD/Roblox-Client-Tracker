MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"SourceAnchorPoint", "TargetAnchorPoint", "Offset"}]
        2 GETIMPORT                        R1 K6 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 0
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K0 ["SourceAnchorPoint"]
        9 GETIMPORT                        R1 K6 [Vector2.new]
       11 LOADN                            R2 1
       12 LOADN                            R3 1
       13 CALL                             R1 2 1
       14 SETTABLEKS                       R1 R0 K1 ["TargetAnchorPoint"]
       16 GETIMPORT                        R1 K6 [Vector2.new]
       18 LOADN                            R2 0
       19 LOADN                            R3 0
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K2 ["Offset"]
       23 DUPTABLE                         R1 K3 [{"SourceAnchorPoint", "TargetAnchorPoint", "Offset"}]
       24 GETIMPORT                        R2 K6 [Vector2.new]
       26 LOADN                            R3 1
       27 LOADN                            R4 0
       28 CALL                             R2 2 1
       29 SETTABLEKS                       R2 R1 K0 ["SourceAnchorPoint"]
       31 GETIMPORT                        R2 K6 [Vector2.new]
       33 LOADN                            R3 1
       34 LOADN                            R4 1
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K1 ["TargetAnchorPoint"]
       38 GETIMPORT                        R2 K6 [Vector2.new]
       40 LOADN                            R3 0
       41 LOADN                            R4 0
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K2 ["Offset"]
       45 DUPTABLE                         R2 K9 [{"DatamodelSessionLoadedAttachmentInfo", "DatamodelSessionUnloadedAttachmentInfo"}]
       46 SETTABLEKS                       R0 R2 K7 ["DatamodelSessionLoadedAttachmentInfo"]
       48 SETTABLEKS                       R1 R2 K8 ["DatamodelSessionUnloadedAttachmentInfo"]
       50 RETURN                           R2 1
