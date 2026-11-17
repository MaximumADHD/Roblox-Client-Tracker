PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 LOADK                            R2 K5 ["HumanoidRootPart"]
       10 SETTABLEKS                       R2 R1 K6 ["Name"]
       12 GETIMPORT                        R2 K2 [Instance.new]
       14 LOADK                            R3 K4 ["Part"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 LOADK                            R3 K7 ["UpperTorso"]
       18 SETTABLEKS                       R3 R2 K6 ["Name"]
       20 GETIMPORT                        R3 K2 [Instance.new]
       22 LOADK                            R4 K4 ["Part"]
       23 MOVE                             R5 R0
       24 CALL                             R3 2 1
       25 LOADK                            R4 K8 ["Head"]
       26 SETTABLEKS                       R4 R3 K6 ["Name"]
       28 GETIMPORT                        R4 K2 [Instance.new]
       30 LOADK                            R5 K9 ["Motor6D"]
       31 MOVE                             R6 R2
       32 CALL                             R4 2 1
       33 SETTABLEKS                       R1 R4 K10 ["Part0"]
       35 SETTABLEKS                       R2 R4 K11 ["Part1"]
       37 GETIMPORT                        R5 K2 [Instance.new]
       39 LOADK                            R6 K9 ["Motor6D"]
       40 MOVE                             R7 R3
       41 CALL                             R5 2 1
       42 SETTABLEKS                       R2 R5 K10 ["Part0"]
       44 SETTABLEKS                       R3 R5 K11 ["Part1"]
       46 GETIMPORT                        R6 K2 [Instance.new]
       48 LOADK                            R7 K12 ["Attachment"]
       49 MOVE                             R8 R1
       50 CALL                             R6 2 1
       51 LOADK                            R7 K13 ["RootAttachment"]
       52 SETTABLEKS                       R7 R6 K6 ["Name"]
       54 GETIMPORT                        R7 K2 [Instance.new]
       56 LOADK                            R8 K12 ["Attachment"]
       57 MOVE                             R9 R2
       58 CALL                             R7 2 1
       59 LOADK                            R8 K13 ["RootAttachment"]
       60 SETTABLEKS                       R8 R7 K6 ["Name"]
       62 GETIMPORT                        R8 K2 [Instance.new]
       64 LOADK                            R9 K12 ["Attachment"]
       65 MOVE                             R10 R2
       66 CALL                             R8 2 1
       67 LOADK                            R9 K14 ["NeckAttachment"]
       68 SETTABLEKS                       R9 R8 K6 ["Name"]
       70 GETIMPORT                        R9 K2 [Instance.new]
       72 LOADK                            R10 K12 ["Attachment"]
       73 MOVE                             R11 R3
       74 CALL                             R9 2 1
       75 LOADK                            R10 K14 ["NeckAttachment"]
       76 SETTABLEKS                       R10 R9 K6 ["Name"]
       78 GETIMPORT                        R10 K2 [Instance.new]
       80 LOADK                            R11 K15 ["BallSocketConstraint"]
       81 MOVE                             R12 R0
       82 CALL                             R10 2 1
       83 LOADB                            R11 0
       84 SETTABLEKS                       R11 R10 K16 ["Enabled"]
       86 SETTABLEKS                       R8 R10 K17 ["Attachment0"]
       88 SETTABLEKS                       R9 R10 K18 ["Attachment1"]
       90 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["buildTestRig"]
        6 RETURN                           R0 1
