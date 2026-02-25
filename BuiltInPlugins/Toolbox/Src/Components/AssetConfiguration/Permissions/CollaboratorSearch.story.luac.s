PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 MOVE                             R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 DUPTABLE                         R8 K2 [{"Type", "Id"}]
        7 NAMECALL                         R10 R1 K3 ["NextNumber"]
        9 CALL                             R10 1 1
       10 LOADK                            R11 K4 [0.5]
       11 JUMPIFNOTLT                      R11 R10 ; [+4]
       13 GETIMPORT                        R9 K8 [Enum.CreatorType.Group]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R9 K10 [Enum.CreatorType.User]
       18 SETTABLEKS                       R9 R8 K0 ["Type"]
       20 LOADK                            R11 K11 [111111]
       21 LOADK                            R12 K12 [999999]
       22 NAMECALL                         R9 R1 K13 ["NextInteger"]
       24 CALL                             R9 3 1
       25 SETTABLEKS                       R9 R8 K1 ["Id"]
       27 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       29 MOVE                             R7 R2
       30 GETIMPORT                        R6 K16 [table.insert]
       32 CALL                             R6 2 0
       33 FORNLOOP                         R3
       34 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R1 K1 [print]
        2 LOADK                            R2 K2 ["Selected: "]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K3 ["SubjectNameKey"]
        6 GETTABLE                         R3 R0 R4
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R4 K4 [table.find]
        2 GETUPVAL                         R5 0
        3 MOVE                             R6 R0
        4 CALL                             R4 2 1
        5 ORK                              R3 R4 K1 [0]
        6 MODK                             R2 R3 K0 [4]
        7 JUMPIFNOTEQKN                    R2 K1 [0] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [Random.new]
        2 LOADN                            R2 1
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R4 R0 K3 ["controls"]
        7 GETTABLEKS                       R3 R4 K4 ["PossibleCollaboratorCount"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R3 R4 K5 ["createElement"]
       14 GETUPVAL                         R4 2
       15 NEWTABLE                         R5 0 0
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K5 ["createElement"]
       20 GETUPVAL                         R7 3
       21 NEWTABLE                         R8 0 0
       23 NEWTABLE                         R9 0 1
       25 GETUPVAL                         R11 1
       26 GETTABLEKS                       R10 R11 K5 ["createElement"]
       28 LOADK                            R11 K6 ["Frame"]
       29 DUPTABLE                         R12 K9 [{"Size", "BackgroundTransparency"}]
       30 GETIMPORT                        R13 K12 [UDim2.fromOffset]
       32 LOADN                            R14 44
       33 LOADN                            R15 44
       34 CALL                             R13 2 1
       35 SETTABLEKS                       R13 R12 K7 ["Size"]
       37 LOADN                            R13 1
       38 SETTABLEKS                       R13 R12 K8 ["BackgroundTransparency"]
       40 NEWTABLE                         R13 0 1
       42 GETUPVAL                         R15 1
       43 GETTABLEKS                       R14 R15 K5 ["createElement"]
       45 GETUPVAL                         R15 4
       46 DUPTABLE                         R16 K18 [{"Size", "Collaborators", "CollaboratorSelected", "Filter", "Enabled", "ListItemSize"}]
       47 GETIMPORT                        R17 K19 [UDim2.new]
       49 LOADN                            R18 1
       50 LOADN                            R19 0
       51 LOADN                            R20 0
       52 LOADN                            R21 80
       53 CALL                             R17 4 1
       54 SETTABLEKS                       R17 R16 K7 ["Size"]
       56 SETTABLEKS                       R2 R16 K13 ["Collaborators"]
       58 DUPCLOSURE                       R17 K20 [PROTO_1]
       59 CAPTURE                          UPVAL U5
       60 SETTABLEKS                       R17 R16 K14 ["CollaboratorSelected"]
       62 NEWCLOSURE                       R17 P1
       63 CAPTURE                          VAL R2
       64 SETTABLEKS                       R17 R16 K15 ["Filter"]
       66 GETTABLEKS                       R18 R0 K3 ["controls"]
       68 GETTABLEKS                       R17 R18 K16 ["Enabled"]
       70 SETTABLEKS                       R17 R16 K16 ["Enabled"]
       72 GETIMPORT                        R17 K22 [Vector2.new]
       74 LOADN                            R18 44
       75 LOADN                            R19 60
       76 CALL                             R17 2 1
       77 SETTABLEKS                       R17 R16 K17 ["ListItemSize"]
       79 CALL                             R14 2 -1
       80 SETLIST                          R13 R14 -1 [1]
       82 CALL                             R10 3 -1
       83 SETLIST                          R9 R10 -1 [1]
       85 CALL                             R6 3 -1
       86 CALL                             R3 -1 -1
       87 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Stories"]
       18 GETTABLEKS                       R4 R5 K9 ["ToolboxStoryWrapper"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R5 K1 [script]
       23 GETTABLEKS                       R4 R5 K10 ["Parent"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R4 K11 ["CollaboratorSearch"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R4 K12 ["PermissionsConstants"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R4 K13 ["CollaboratorInfo"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETTABLEKS                       R9 R4 K14 ["CollaboratorInfoContextMock"]
       44 CALL                             R8 1 1
       45 DUPCLOSURE                       R9 K15 [PROTO_0]
       46 DUPTABLE                         R10 K19 [{"summary", "controls", "story"}]
       47 LOADK                            R11 K20 ["This component searches through a list of potential collaborators and displays results in a dropdown."]
       48 SETTABLEKS                       R11 R10 K16 ["summary"]
       50 DUPTABLE                         R11 K23 [{"PossibleCollaboratorCount", "Enabled"}]
       51 NEWTABLE                         R12 0 4
       53 LOADN                            R13 10
       54 LOADN                            R14 0
       55 LOADN                            R15 25
       56 LOADN                            R16 100
       57 SETLIST                          R12 R13 4 [1]
       59 SETTABLEKS                       R12 R11 K21 ["PossibleCollaboratorCount"]
       61 LOADB                            R12 1
       62 SETTABLEKS                       R12 R11 K22 ["Enabled"]
       64 SETTABLEKS                       R11 R10 K17 ["controls"]
       66 DUPCLOSURE                       R11 K24 [PROTO_3]
       67 CAPTURE                          VAL R9
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R11 R10 K18 ["story"]
       75 RETURN                           R10 1
