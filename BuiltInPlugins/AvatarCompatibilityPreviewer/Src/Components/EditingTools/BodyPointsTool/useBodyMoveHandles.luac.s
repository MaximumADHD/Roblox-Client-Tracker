PROTO_0:
        0 GETUPVAL                         R0 1
        1 NAMECALL                         R0 R0 K0 ["GetPivot"]
        3 CALL                             R0 1 1
        4 SETUPVAL                         R0 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOTEQKNIL                  R4 ; [+2]
        3 LOADB                            R3 0 +1
        4 LOADB                            R3 1
        5 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        7 LOADK                            R4 K0 ["startDragPivot not set during updateDrag"]
        8 GETIMPORT                        R2 K2 [assert]
       10 CALL                             R2 2 0
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R5 0
       13 MUL                              R4 R5 R1
       14 NAMECALL                         R2 R2 K3 ["PivotTo"]
       16 CALL                             R2 2 0
       17 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_4:
        0 LOADNIL                          R0
        1 DUPTABLE                         R1 K4 [{"beginDrag", "updateDrag", "endDrag", "render"}]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          REF R0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R2 R1 K0 ["beginDrag"]
        7 NEWCLOSURE                       R2 P1
        8 CAPTURE                          REF R0
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R1 K1 ["updateDrag"]
       12 NEWCLOSURE                       R2 P2
       13 CAPTURE                          REF R0
       14 SETTABLEKS                       R2 R1 K2 ["endDrag"]
       16 DUPCLOSURE                       R2 K5 [PROTO_3]
       17 SETTABLEKS                       R2 R1 K3 ["render"]
       19 CLOSEUPVALS                      R0
       20 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["ShowBoundingBox"] = False, ["Summonable"] = False, ["Outset"] = 1}]
        5 GETUPVAL                         R3 2
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R1
        5 NEWTABLE                         R4 0 1
        7 MOVE                             R5 R1
        8 SETLIST                          R4 R5 1 [1]
       10 CALL                             R2 2 1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K0 ["useMemo"]
       14 NEWCLOSURE                       R4 P1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          VAL R2
       18 NEWTABLE                         R5 0 1
       20 MOVE                             R6 R2
       21 SETLIST                          R5 R6 1 [1]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["DraggerFramework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["EditingTools"]
       29 GETTABLEKS                       R4 R4 K12 ["BodyPointsTool"]
       31 GETTABLEKS                       R4 R4 K13 ["Types"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Types"]
       40 CALL                             R4 1 1
       41 GETTABLEKS                       R5 R1 K14 ["Handles"]
       43 GETTABLEKS                       R5 R5 K15 ["MoveHandles"]
       45 DUPCLOSURE                       R6 K16 [PROTO_6]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R5
       48 RETURN                           R6 1
