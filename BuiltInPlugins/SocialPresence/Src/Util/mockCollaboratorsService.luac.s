PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_selectionHighlightsEnabled"]
        3 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 SETTABLEKS                       R1 R2 K0 ["_selectionHighlightsEnabled"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["ToggleSelectionHighlightsSignal"]
        6 MOVE                             R4 R1
        7 NAMECALL                         R2 R2 K2 ["Fire"]
        9 CALL                             R2 2 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K3 ["_collaborators"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_collaborators"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 -1
        5 FASTCALL                         TABLE_INSERT ; [+2]
        6 GETIMPORT                        R1 K3 [table.insert]
        8 CALL                             R1 -1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K4 ["CollaboratorInstanceCreatedSignal"]
       12 NAMECALL                         R1 R1 K5 ["Fire"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["_collaborators"]
        3 LENGTH                           R3 R4
        4 LOADN                            R1 0
        5 LOADN                            R2 255
        6 FORNPREP                         R1
        7 GETIMPORT                        R4 K3 [table.remove]
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R5 R6 K0 ["_collaborators"]
       12 CALL                             R4 1 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K4 ["CollaboratorInstanceDestroyedSignal"]
       16 NAMECALL                         R4 R4 K5 ["Fire"]
       18 CALL                             R4 1 0
       19 FORNLOOP                         R1
       20 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SocialPresence"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["mockCollaborator"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R4 K10 ["Signal"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 NEWTABLE                         R4 0 0
       27 SETTABLEKS                       R4 R3 K11 ["_collaborators"]
       29 GETTABLEKS                       R4 R2 K12 ["new"]
       31 CALL                             R4 0 1
       32 SETTABLEKS                       R4 R3 K13 ["ToggleSelectionHighlightsSignal"]
       34 GETTABLEKS                       R4 R2 K12 ["new"]
       36 CALL                             R4 0 1
       37 SETTABLEKS                       R4 R3 K14 ["CollaboratorInstanceCreatedSignal"]
       39 GETTABLEKS                       R4 R2 K12 ["new"]
       41 CALL                             R4 0 1
       42 SETTABLEKS                       R4 R3 K15 ["CollaboratorInstanceDestroyedSignal"]
       44 GETTABLEKS                       R4 R2 K12 ["new"]
       46 CALL                             R4 0 1
       47 SETTABLEKS                       R4 R3 K16 ["CollaboratorStatusUpdatedSignal"]
       49 GETTABLEKS                       R4 R2 K12 ["new"]
       51 CALL                             R4 0 1
       52 SETTABLEKS                       R4 R3 K17 ["CollaboratorIdleUpdate"]
       54 LOADB                            R4 1
       55 SETTABLEKS                       R4 R3 K18 ["_selectionHighlightsEnabled"]
       57 DUPCLOSURE                       R4 K19 [PROTO_0]
       58 CAPTURE                          VAL R3
       59 SETTABLEKS                       R4 R3 K20 ["GetSelectionHighlightsEnabled"]
       61 DUPCLOSURE                       R4 K21 [PROTO_1]
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R4 R3 K22 ["ToggleSelectionHighlights"]
       65 DUPCLOSURE                       R4 K23 [PROTO_2]
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R4 R3 K24 ["GetCollaboratorsList"]
       69 DUPCLOSURE                       R4 K25 [PROTO_3]
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R1
       72 SETTABLEKS                       R4 R3 K26 ["MockAddCollaborator"]
       74 DUPCLOSURE                       R4 K27 [PROTO_4]
       75 CAPTURE                          VAL R3
       76 SETTABLEKS                       R4 R3 K28 ["MockClearCollaborators"]
       78 RETURN                           R3 1
