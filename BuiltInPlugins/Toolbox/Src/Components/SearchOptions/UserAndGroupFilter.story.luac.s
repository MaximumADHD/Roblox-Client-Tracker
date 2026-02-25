PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["onDeleteCreatorPill"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["onDeleteCreatorPill"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["onDeleteCreatorPill"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"UserAndGroupFilter"}]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K8 [{"OnDeleteCreatorPill", "OnSearchUpdate", "OnSelectCreator", "SelectedUsers", "SelectedGroups"}]
       12 DUPCLOSURE                       R7 K9 [PROTO_0]
       13 SETTABLEKS                       R7 R6 K3 ["OnDeleteCreatorPill"]
       15 DUPCLOSURE                       R7 K10 [PROTO_1]
       16 SETTABLEKS                       R7 R6 K4 ["OnSearchUpdate"]
       18 DUPCLOSURE                       R7 K11 [PROTO_2]
       19 SETTABLEKS                       R7 R6 K5 ["OnSelectCreator"]
       21 NEWTABLE                         R7 0 1
       23 DUPTABLE                         R8 K15 [{"Name", "Id", "Type"}]
       24 LOADK                            R9 K16 ["Selected Username"]
       25 SETTABLEKS                       R9 R8 K12 ["Name"]
       27 LOADN                            R9 123
       28 SETTABLEKS                       R9 R8 K13 ["Id"]
       30 GETIMPORT                        R9 K20 [Enum.CreatorType.User]
       32 SETTABLEKS                       R9 R8 K14 ["Type"]
       34 SETLIST                          R7 R8 1 [1]
       36 SETTABLEKS                       R7 R6 K6 ["SelectedUsers"]
       38 NEWTABLE                         R7 0 1
       40 DUPTABLE                         R8 K15 [{"Name", "Id", "Type"}]
       41 LOADK                            R9 K21 ["Selected Group name"]
       42 SETTABLEKS                       R9 R8 K12 ["Name"]
       44 LOADN                            R9 123
       45 SETTABLEKS                       R9 R8 K13 ["Id"]
       47 GETIMPORT                        R9 K23 [Enum.CreatorType.Group]
       49 SETTABLEKS                       R9 R8 K14 ["Type"]
       51 SETLIST                          R7 R8 1 [1]
       53 SETTABLEKS                       R7 R6 K7 ["SelectedGroups"]
       55 CALL                             R4 2 1
       56 SETTABLEKS                       R4 R3 K1 ["UserAndGroupFilter"]
       58 CALL                             R0 3 -1
       59 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R5 K1 [script]
       18 GETTABLEKS                       R4 R5 K8 ["Parent"]
       20 GETTABLEKS                       R3 R4 K9 ["UserAndGroupFilter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Stories"]
       27 GETTABLEKS                       R4 R5 K11 ["ToolboxStoryWrapper"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K15 [{"name", "summary", "stories"}]
       31 LOADK                            R5 K9 ["UserAndGroupFilter"]
       32 SETTABLEKS                       R5 R4 K12 ["name"]
       34 LOADK                            R5 K16 ["A live Search Bar for users and groups"]
       35 SETTABLEKS                       R5 R4 K13 ["summary"]
       37 NEWTABLE                         R5 0 1
       39 DUPTABLE                         R6 K18 [{"story"}]
       40 DUPCLOSURE                       R7 K19 [PROTO_3]
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R6 K17 ["story"]
       46 SETLIST                          R5 R6 1 [1]
       48 SETTABLEKS                       R5 R4 K14 ["stories"]
       50 RETURN                           R4 1
