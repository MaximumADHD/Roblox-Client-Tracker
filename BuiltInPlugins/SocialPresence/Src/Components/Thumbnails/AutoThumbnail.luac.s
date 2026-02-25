PROTO_0:
        0 LOADK                            R3 K0 ["rbxthumb://type=AvatarHeadShot"]
        1 LOADK                            R4 K1 ["&id="]
        2 MOVE                             R5 R0
        3 LOADK                            R6 K2 ["&w="]
        4 GETTABLEKS                       R7 R1 K3 ["X"]
        6 LOADK                            R8 K4 ["&h="]
        7 GETTABLEKS                       R9 R1 K5 ["Y"]
        9 CONCAT                           R2 R3 R9
       10 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Id"]
        5 GETIMPORT                        R2 K4 [Vector2.new]
        7 LOADN                            R3 60
        8 LOADN                            R4 60
        9 CALL                             R2 2 1
       10 LOADK                            R4 K5 ["rbxthumb://type=AvatarHeadShot"]
       11 LOADK                            R5 K6 ["&id="]
       12 MOVE                             R6 R1
       13 LOADK                            R7 K7 ["&w="]
       14 GETTABLEKS                       R8 R2 K8 ["X"]
       16 LOADK                            R9 K9 ["&h="]
       17 GETTABLEKS                       R10 R2 K10 ["Y"]
       19 CONCAT                           R3 R4 R10
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K11 ["currentId"]
       23 JUMPIFEQ                         R1 R4 ; [+16]
       25 GETUPVAL                         R4 0
       26 SETTABLEKS                       R1 R4 K11 ["currentId"]
       28 GETUPVAL                         R4 0
       29 DUPTABLE                         R6 K14 [{"fetchStatus", "contentId"}]
       30 GETUPVAL                         R8 1
       31 GETTABLEKS                       R7 R8 K15 ["None"]
       33 SETTABLEKS                       R7 R6 K12 ["fetchStatus"]
       35 SETTABLEKS                       R3 R6 K13 ["contentId"]
       37 NAMECALL                         R4 R4 K16 ["setState"]
       39 CALL                             R4 2 0
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R5 R6 K17 ["state"]
       43 GETTABLEKS                       R4 R5 K13 ["contentId"]
       45 JUMPIFEQ                         R3 R4 ; [+6]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K18 ["loadThumbnail"]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 0
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["fetchingContentId"]
        3 JUMPIFNOTEQ                      R2 R0 ; [+14]
        5 GETUPVAL                         R2 0
        6 LOADNIL                          R3
        7 SETTABLEKS                       R3 R2 K0 ["fetchingContentId"]
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R4 K3 [{"fetchStatus", "contentId"}]
       11 SETTABLEKS                       R1 R4 K1 ["fetchStatus"]
       13 SETTABLEKS                       R0 R4 K2 ["contentId"]
       15 NAMECALL                         R2 R2 K4 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R3 1
        4 SETLIST                          R2 R3 1 [1]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          UPVAL U2
        8 NAMECALL                         R0 R0 K0 ["PreloadAsync"]
       10 CALL                             R0 3 0
       11 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["fetchingContentId"]
        3 JUMPIFNOTEQ                      R0 R1 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 SETTABLEKS                       R0 R1 K0 ["fetchingContentId"]
        9 GETIMPORT                        R1 K3 [coroutine.wrap]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 CALL                             R1 1 1
       16 CALL                             R1 0 0
       17 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{"fetchStatus", "contentId"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["fetchStatus"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["contentId"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K4 ["fetchingContentId"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K5 ["currentId"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R1 R0 K6 ["updateThumbnail"]
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R1 R0 K7 ["loadThumbnail"]
       25 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R1 K1 ["Id"]
        4 GETTABLEKS                       R5 R3 K1 ["Id"]
        6 JUMPIFEQ                         R4 R5 ; [+4]
        8 GETTABLEKS                       R4 R0 K2 ["updateThumbnail"]
       10 CALL                             R4 0 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["updateThumbnail"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["RenderContents"]
        6 MOVE                             R4 R3
        7 GETTABLEKS                       R5 R2 K3 ["contentId"]
        9 GETTABLEKS                       R6 R2 K4 ["fetchStatus"]
       11 CALL                             R4 2 -1
       12 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["ContentProvider"]
       17 NAMECALL                         R2 R2 K11 ["GetService"]
       19 CALL                             R2 2 1
       20 DUPCLOSURE                       R3 K12 [PROTO_0]
       21 GETTABLEKS                       R4 R1 K13 ["Component"]
       23 GETIMPORT                        R7 K1 [script]
       25 GETTABLEKS                       R6 R7 K14 ["Name"]
       27 NAMECALL                         R4 R4 K15 ["extend"]
       29 CALL                             R4 2 1
       30 DUPCLOSURE                       R5 K16 [PROTO_5]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R2
       33 SETTABLEKS                       R5 R4 K17 ["init"]
       35 DUPCLOSURE                       R5 K18 [PROTO_6]
       36 SETTABLEKS                       R5 R4 K19 ["didUpdate"]
       38 DUPCLOSURE                       R5 K20 [PROTO_7]
       39 SETTABLEKS                       R5 R4 K21 ["didMount"]
       41 DUPCLOSURE                       R5 K22 [PROTO_8]
       42 SETTABLEKS                       R5 R4 K23 ["render"]
       44 RETURN                           R4 1
