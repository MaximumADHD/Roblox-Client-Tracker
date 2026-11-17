PROTO_0:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["'See All' button pressed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 NEWTABLE                         R2 0 0
        6 DUPTABLE                         R3 K2 [{"EmptyFrame"}]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["createElement"]
       10 LOADK                            R5 K3 ["Frame"]
       11 DUPTABLE                         R6 K7 [{["BackgroundTransparency"] = 1, ["Size"]}]
       12 GETIMPORT                        R7 K10 [UDim2.new]
       14 LOADN                            R8 0
       15 LOADN                            R9 400
       16 LOADN                            R10 0
       17 LOADN                            R11 100
       18 CALL                             R7 4 1
       19 SETTABLEKS                       R7 R6 K6 ["Size"]
       21 DUPTABLE                         R7 K12 [{"SectionHeader"}]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R8 R8 K0 ["createElement"]
       25 GETUPVAL                         R9 2
       26 DUPTABLE                         R10 K17 [{["OnClickSeeAll"], ["Position"], ["Title"] = "This is a test"}]
       27 DUPCLOSURE                       R11 K18 [PROTO_0]
       28 SETTABLEKS                       R11 R10 K13 ["OnClickSeeAll"]
       30 GETIMPORT                        R11 K10 [UDim2.new]
       32 LOADN                            R12 0
       33 LOADN                            R13 0
       34 LOADN                            R14 0
       35 LOADN                            R15 0
       36 CALL                             R11 4 1
       37 SETTABLEKS                       R11 R10 K14 ["Position"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K11 ["SectionHeader"]
       42 CALL                             R4 3 1
       43 SETTABLEKS                       R4 R3 K1 ["EmptyFrame"]
       45 CALL                             R0 3 -1
       46 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Packages"]
       11 GETTABLEKS                       R2 R2 K6 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Stories"]
       18 GETTABLEKS                       R3 R3 K8 ["ToolboxStoryWrapper"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["Categorization"]
       29 GETTABLEKS                       R4 R4 K12 ["SectionHeader"]
       31 CALL                             R3 1 1
       32 DUPTABLE                         R4 K17 [{["name"] = "SectionHeader", ["summary"] = "A header shown at the top of a swimlane.", ["story"]}]
       33 DUPCLOSURE                       R5 K18 [PROTO_1]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K16 ["story"]
       39 RETURN                           R4 1
