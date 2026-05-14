PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R2 2
        4 NAMECALL                         R0 R0 K0 ["OnTestPlayerCountChanged"]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 3
        8 LOADK                            R2 K0 ["OnTestPlayerCountChanged"]
        9 GETUPVAL                         R3 2
       10 NAMECALL                         R0 R0 K1 ["Invoke"]
       12 CALL                             R0 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 CALL                             R2 0 2
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R6 0 2
       19 MOVE                             R7 R2
       20 MOVE                             R8 R3
       21 SETLIST                          R6 R7 2 [1]
       23 CALL                             R4 2 0
       24 LOADNIL                          R4
       25 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PartyEmulatorService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["PartyEmulator"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R1 K8 ["Packages"]
       15 GETTABLEKS                       R3 R1 K9 ["Src"]
       17 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       19 GETIMPORT                        R5 K12 [require]
       21 GETTABLEKS                       R6 R2 K13 ["React"]
       23 CALL                             R5 1 1
       24 GETIMPORT                        R6 K12 [require]
       26 GETTABLEKS                       R7 R1 K8 ["Packages"]
       28 GETTABLEKS                       R7 R7 K14 ["Framework"]
       30 CALL                             R6 1 1
       31 GETTABLEKS                       R7 R6 K15 ["ContextServices"]
       33 GETTABLEKS                       R8 R7 K16 ["Plugin"]
       35 GETIMPORT                        R9 K12 [require]
       37 GETTABLEKS                       R10 R4 K17 ["usePlayerCountSetting"]
       39 CALL                             R9 1 1
       40 DUPCLOSURE                       R10 K18 [PROTO_1]
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 RETURN                           R10 1
