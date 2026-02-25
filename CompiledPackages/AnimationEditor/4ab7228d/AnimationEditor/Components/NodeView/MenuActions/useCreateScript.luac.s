PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 JUMPIFNOTEQKS                    R1 K0 ["Selection"] ; [+12]
        4 GETUPVAL                         R1 1
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R2 1
        7 LENGTH                           R1 R2
        8 JUMPIFNOTEQKN                    R1 K1 [0] ; [+2]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 1
       12 GETTABLEN                        R1 R2 1
       13 MOVE                             R0 R1
       14 JUMP                             ; [+11]
       15 GETIMPORT                        R1 K3 [game]
       17 LOADK                            R3 K4 ["StarterPlayer"]
       18 NAMECALL                         R1 R1 K5 ["GetService"]
       20 CALL                             R1 2 1
       21 LOADK                            R4 K6 ["StarterPlayerScripts"]
       22 NAMECALL                         R2 R1 K7 ["FindFirstChild"]
       24 CALL                             R2 2 1
       25 MOVE                             R0 R2
       26 GETIMPORT                        R1 K10 [Instance.new]
       28 LOADK                            R2 K11 ["Script"]
       29 CALL                             R1 1 1
       30 LOADK                            R2 K12 ["Animate"]
       31 SETTABLEKS                       R2 R1 K13 ["Name"]
       33 GETUPVAL                         R3 2
       34 GETTABLEKS                       R2 R3 K14 ["template"]
       36 CALL                             R2 0 1
       37 SETTABLEKS                       R2 R1 K15 ["Source"]
       39 GETIMPORT                        R2 K10 [Instance.new]
       41 LOADK                            R3 K16 ["ObjectValue"]
       42 CALL                             R2 1 1
       43 LOADK                            R3 K17 ["LocalAnimation"]
       44 SETTABLEKS                       R3 R2 K13 ["Name"]
       46 SETTABLEKS                       R1 R2 K18 ["Parent"]
       48 GETIMPORT                        R3 K10 [Instance.new]
       50 LOADK                            R4 K19 ["StringValue"]
       51 CALL                             R3 1 1
       52 LOADK                            R4 K20 ["AssetID"]
       53 SETTABLEKS                       R4 R3 K13 ["Name"]
       55 LOADK                            R4 K21 [""]
       56 SETTABLEKS                       R4 R3 K22 ["Value"]
       58 SETTABLEKS                       R1 R3 K18 ["Parent"]
       60 SETTABLEKS                       R0 R1 K18 ["Parent"]
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 NEWTABLE                         R4 0 2
       11 MOVE                             R5 R0
       12 MOVE                             R6 R1
       13 SETLIST                          R4 R5 2 [1]
       15 CALL                             R2 2 1
       16 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Resources"]
       11 GETTABLEKS                       R3 R4 K7 ["ScriptTemplates"]
       13 GETTABLEKS                       R2 R3 K8 ["AnimationGraphRunner"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       27 GETTABLEKS                       R4 R5 K12 ["useSelection"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_1]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R1
       34 RETURN                           R4 1
