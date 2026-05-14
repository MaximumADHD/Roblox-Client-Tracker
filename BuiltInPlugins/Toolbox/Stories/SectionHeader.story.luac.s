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
       11 DUPTABLE                         R6 K6 [{"BackgroundTransparency", "Size"}]
       12 LOADN                            R7 1
       13 SETTABLEKS                       R7 R6 K4 ["BackgroundTransparency"]
       15 GETIMPORT                        R7 K9 [UDim2.new]
       17 LOADN                            R8 0
       18 LOADN                            R9 144
       19 LOADN                            R10 0
       20 LOADN                            R11 100
       21 CALL                             R7 4 1
       22 SETTABLEKS                       R7 R6 K5 ["Size"]
       24 DUPTABLE                         R7 K11 [{"SectionHeader"}]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K0 ["createElement"]
       28 GETUPVAL                         R9 2
       29 DUPTABLE                         R10 K15 [{"OnClickSeeAll", "Position", "Title"}]
       30 DUPCLOSURE                       R11 K16 [PROTO_0]
       31 SETTABLEKS                       R11 R10 K12 ["OnClickSeeAll"]
       33 GETIMPORT                        R11 K9 [UDim2.new]
       35 LOADN                            R12 0
       36 LOADN                            R13 0
       37 LOADN                            R14 0
       38 LOADN                            R15 0
       39 CALL                             R11 4 1
       40 SETTABLEKS                       R11 R10 K13 ["Position"]
       42 LOADK                            R11 K17 ["This is a test"]
       43 SETTABLEKS                       R11 R10 K14 ["Title"]
       45 CALL                             R8 2 1
       46 SETTABLEKS                       R8 R7 K10 ["SectionHeader"]
       48 CALL                             R4 3 1
       49 SETTABLEKS                       R4 R3 K1 ["EmptyFrame"]
       51 CALL                             R0 3 -1
       52 RETURN                           R0 -1

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
       32 DUPTABLE                         R4 K16 [{"name", "summary", "story"}]
       33 LOADK                            R5 K12 ["SectionHeader"]
       34 SETTABLEKS                       R5 R4 K13 ["name"]
       36 LOADK                            R5 K17 ["A header shown at the top of a swimlane."]
       37 SETTABLEKS                       R5 R4 K14 ["summary"]
       39 DUPCLOSURE                       R5 K18 [PROTO_1]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R5 R4 K15 ["story"]
       45 RETURN                           R4 1
