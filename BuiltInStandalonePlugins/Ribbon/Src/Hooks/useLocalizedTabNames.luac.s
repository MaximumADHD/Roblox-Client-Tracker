PROTO_0:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["TabControls"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R4
       10 CALL                             R6 1 1
       11 GETTABLEKS                       R7 R5 K1 ["Name"]
       13 GETTABLEKS                       R8 R6 K2 ["Type"]
       15 JUMPIFNOTEQKS                    R8 K3 ["BuiltIn"] ; [+14]
       17 GETUPVAL                         R8 2
       18 LOADK                            R10 K4 ["Plugin"]
       19 LOADK                            R12 K5 ["Tab_%*"]
       20 MOVE                             R14 R7
       21 NAMECALL                         R12 R12 K6 ["format"]
       23 CALL                             R12 2 1
       24 MOVE                             R11 R12
       25 NAMECALL                         R8 R8 K7 ["getText"]
       27 CALL                             R8 3 1
       28 SETTABLE                         R8 R0 R4
       29 JUMP                             ; [+1]
       30 SETTABLE                         R7 R0 R4
       31 FORGLOOP                         R1 2 ; [-24]
       33 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETTABLEKS                       R1 R0 K0 ["Definition"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R2 R3 K1 ["use"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 3
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 2
       16 MOVE                             R6 R1
       17 GETTABLEKS                       R7 R2 K2 ["locale"]
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 1
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Contexts"]
       27 GETTABLEKS                       R4 R5 K11 ["RibbonDefinition"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Util"]
       36 GETTABLEKS                       R5 R6 K13 ["stringToControlsIdentifier"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R6 R1 K14 ["ContextServices"]
       41 GETTABLEKS                       R5 R6 K15 ["Localization"]
       43 GETTABLEKS                       R6 R2 K16 ["useContext"]
       45 GETTABLEKS                       R7 R2 K17 ["useMemo"]
       47 DUPCLOSURE                       R8 K18 [PROTO_1]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R7
       52 CAPTURE                          VAL R4
       53 RETURN                           R8 1
