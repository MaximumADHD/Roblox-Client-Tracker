PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K12 [{[1] = 0, ["Children"], ["Expanded"] = False, ["Item"], ["Index"] = 1, ["OnCheck"], ["OnToggle"], ["Position"], ["Size"]}]
        4 NEWTABLE                         R4 0 2
        6 NEWTABLE                         R5 0 0
        8 NEWTABLE                         R6 0 0
       10 SETLIST                          R4 R5 2 [1]
       12 SETTABLEKS                       R4 R3 K2 ["Children"]
       14 NEWTABLE                         R4 0 0
       16 SETTABLEKS                       R4 R3 K5 ["Item"]
       18 DUPCLOSURE                       R4 K13 [PROTO_0]
       19 SETTABLEKS                       R4 R3 K8 ["OnCheck"]
       21 DUPCLOSURE                       R4 K14 [PROTO_1]
       22 SETTABLEKS                       R4 R3 K9 ["OnToggle"]
       24 GETIMPORT                        R4 K17 [UDim2.new]
       26 CALL                             R4 0 1
       27 SETTABLEKS                       R4 R3 K10 ["Position"]
       29 GETIMPORT                        R4 K19 [UDim2.fromOffset]
       31 LOADN                            R5 400
       32 LOADN                            R6 54
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K11 ["Size"]
       36 GETUPVAL                         R4 3
       37 CALL                             R2 2 -1
       38 CALL                             R0 -1 -1
       39 RETURN                           R0 -1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["createElement"]
       16 GETIMPORT                        R4 K6 [require]
       18 GETTABLEKS                       R5 R1 K9 ["Dash"]
       20 CALL                             R4 1 1
       21 GETTABLEKS                       R5 R4 K10 ["join"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETIMPORT                        R7 K1 [script]
       27 GETTABLEKS                       R7 R7 K11 ["Parent"]
       29 GETTABLEKS                       R7 R7 K12 ["ToolRow"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R0 K13 ["Src"]
       36 GETTABLEKS                       R8 R8 K14 ["Util"]
       38 GETTABLEKS                       R8 R8 K15 ["IconHelper"]
       40 CALL                             R7 1 1
       41 DUPCLOSURE                       R8 K16 [PROTO_3]
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R5
       45 DUPTABLE                         R9 K18 [{"stories"}]
       46 NEWTABLE                         R10 0 1
       48 DUPTABLE                         R11 K22 [{["name"] = "Normal", ["story"]}]
       49 DUPTABLE                         R13 K24 [{"Item"}]
       50 DUPTABLE                         R14 K30 [{["Title"] = "Test Title", ["Description"] = "This is a mock description about an action provided by a plugin and it is in fact really long so is going to go on for a long time and get truncated", ["Icon"]}]
       51 GETTABLEKS                       R15 R7 K31 ["getPathForIcon"]
       53 LOADK                            R16 K32 ["Scale"]
       54 LOADK                            R17 K33 ["Large"]
       55 CALL                             R15 2 1
       56 SETTABLEKS                       R15 R14 K29 ["Icon"]
       58 SETTABLEKS                       R14 R13 K23 ["Item"]
       60 NEWCLOSURE                       R12 P1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R13
       65 SETTABLEKS                       R12 R11 K21 ["story"]
       67 SETLIST                          R10 R11 1 [1]
       69 SETTABLEKS                       R10 R9 K17 ["stories"]
       71 RETURN                           R9 1
