PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOTEQKNIL                  R1 ; [+4]
        5 LOADNIL                          R2
        6 LOADK                            R3 K0 ["LoadFailed"]
        7 RETURN                           R2 2
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 1
       11 JUMPIFEQKS                       R2 K1 ["R6"] ; [+7]
       13 NAMECALL                         R2 R1 K2 ["Destroy"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 LOADK                            R3 K3 ["NotR6"]
       18 RETURN                           R2 2
       19 LOADK                            R4 K4 ["KeyframeSequence"]
       20 NAMECALL                         R2 R1 K5 ["IsA"]
       22 CALL                             R2 2 1
       23 JUMPIF                           R2 ; [+6]
       24 NAMECALL                         R2 R1 K2 ["Destroy"]
       26 CALL                             R2 1 0
       27 LOADNIL                          R2
       28 LOADK                            R3 K6 ["UnsupportedClipType"]
       29 RETURN                           R2 2
       30 GETUPVAL                         R2 2
       31 MOVE                             R3 R1
       32 LOADB                            R4 0
       33 CALL                             R2 2 1
       34 NAMECALL                         R3 R1 K2 ["Destroy"]
       36 CALL                             R3 1 0
       37 MOVE                             R3 R2
       38 LOADNIL                          R4
       39 RETURN                           R3 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["convertR6ToR15KeyframeSequence"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["detectRigType"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Util"]
       29 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       31 GETTABLEKS                       R4 R4 K10 ["loadClipFromAssetId"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_0]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R4 1
