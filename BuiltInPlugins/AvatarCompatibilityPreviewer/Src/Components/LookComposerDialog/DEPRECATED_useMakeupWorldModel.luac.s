PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createMakeupCharacterModel"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 GETTABLEKS                       R2 R2 K1 ["skinColor"]
        7 CALL                             R0 2 2
        8 JUMPIFNOT                        R0 ; [+16]
        9 JUMPIFNOT                        R1 ; [+15]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["setupHeadInWorldModel"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R5 R5 K3 ["RENDER_RIG_NAME"]
       18 CALL                             R2 3 1
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R3 R3 K4 ["setWorldModel"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETIMPORT                        R2 K6 [warn]
       27 LOADK                            R3 K7 ["[MakeupLookPreview] Failed to create thumbnail character"]
       28 CALL                             R2 1 0
       29 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["makeupItems"]
        3 JUMPIF                           R0 ; [+2]
        4 NEWTABLE                         R0 0 0
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K1 ["current"]
        9 JUMPIFNOTEQ                      R0 R1 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 LENGTH                           R4 R0
       14 LOADN                            R5 0
       15 JUMPIFLT                         R5 R4 ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 JUMPIF                           R3 ; [+4]
       20 GETUPVAL                         R4 1
       21 SETTABLEKS                       R0 R4 K1 ["current"]
       23 RETURN                           R0 0
       24 JUMPIF                           R2 ; [+5]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K2 ["worldModel"]
       28 JUMPIFNOT                        R4 ; [+1]
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 1
       31 SETTABLEKS                       R0 R4 K1 ["current"]
       33 GETIMPORT                        R4 K5 [task.spawn]
       35 NEWCLOSURE                       R5 P0
       36 CAPTURE                          UPVAL U2
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 CAPTURE                          UPVAL U3
       40 CALL                             R4 1 0
       41 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 GETTABLEKS                       R2 R0 K1 ["makeupItems"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["useEffect"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 NEWTABLE                         R4 0 4
       19 GETTABLEKS                       R5 R0 K1 ["makeupItems"]
       21 GETTABLEKS                       R6 R0 K3 ["skinColor"]
       23 GETTABLEKS                       R7 R0 K4 ["worldModel"]
       25 GETTABLEKS                       R8 R0 K5 ["setWorldModel"]
       27 SETLIST                          R4 R5 4 [1]
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Types"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Util"]
       36 GETTABLEKS                       R5 R5 K12 ["DEPRECATED_MakeupLookPreviewUtils"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K13 [PROTO_2]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R2
       43 RETURN                           R5 1
