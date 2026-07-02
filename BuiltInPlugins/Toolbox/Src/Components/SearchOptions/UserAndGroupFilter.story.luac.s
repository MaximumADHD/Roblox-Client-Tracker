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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"UserAndGroupFilter"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 GETUPVAL                         R5 2
       11 DUPTABLE                         R6 K8 [{"OnDeleteCreatorPill", "OnSearchUpdate", "OnSelectCreator", "SelectedUsers", "SelectedGroups"}]
       12 DUPCLOSURE                       R7 K9 [PROTO_0]
       13 SETTABLEKS                       R7 R6 K3 ["OnDeleteCreatorPill"]
       15 DUPCLOSURE                       R7 K10 [PROTO_1]
       16 SETTABLEKS                       R7 R6 K4 ["OnSearchUpdate"]
       18 DUPCLOSURE                       R7 K11 [PROTO_2]
       19 SETTABLEKS                       R7 R6 K5 ["OnSelectCreator"]
       21 NEWTABLE                         R7 0 1
       23 DUPTABLE                         R8 K17 [{["Name"] = "Selected Username", ["Id"] = 123, ["Type"]}]
       24 GETIMPORT                        R9 K21 [Enum.CreatorType.User]
       26 SETTABLEKS                       R9 R8 K16 ["Type"]
       28 SETLIST                          R7 R8 1 [1]
       30 SETTABLEKS                       R7 R6 K6 ["SelectedUsers"]
       32 NEWTABLE                         R7 0 1
       34 DUPTABLE                         R8 K23 [{["Name"] = "Selected Group name", ["Id"] = 123, ["Type"]}]
       35 GETIMPORT                        R9 K25 [Enum.CreatorType.Group]
       37 SETTABLEKS                       R9 R8 K16 ["Type"]
       39 SETLIST                          R7 R8 1 [1]
       41 SETTABLEKS                       R7 R6 K7 ["SelectedGroups"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K1 ["UserAndGroupFilter"]
       46 CALL                             R0 3 -1
       47 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETIMPORT                        R3 K1 [script]
       18 GETTABLEKS                       R3 R3 K8 ["Parent"]
       20 GETTABLEKS                       R3 R3 K9 ["UserAndGroupFilter"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K10 ["Stories"]
       27 GETTABLEKS                       R4 R4 K11 ["ToolboxStoryWrapper"]
       29 CALL                             R3 1 1
       30 DUPTABLE                         R4 K16 [{["name"] = "UserAndGroupFilter", ["summary"] = "A live Search Bar for users and groups", ["stories"]}]
       31 NEWTABLE                         R5 0 1
       33 DUPTABLE                         R6 K18 [{"story"}]
       34 DUPCLOSURE                       R7 K19 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R7 R6 K17 ["story"]
       40 SETLIST                          R5 R6 1 [1]
       42 SETTABLEKS                       R5 R4 K15 ["stories"]
       44 RETURN                           R4 1
