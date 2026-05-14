PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 DUPTABLE                         R3 K9 [{"Depth", "Children", "Expanded", "Item", "Index", "OnCheck", "OnToggle", "Position", "Size"}]
        4 LOADN                            R4 0
        5 SETTABLEKS                       R4 R3 K0 ["Depth"]
        7 NEWTABLE                         R4 0 2
        9 NEWTABLE                         R5 0 0
       11 NEWTABLE                         R6 0 0
       13 SETLIST                          R4 R5 2 [1]
       15 SETTABLEKS                       R4 R3 K1 ["Children"]
       17 LOADB                            R4 0
       18 SETTABLEKS                       R4 R3 K2 ["Expanded"]
       20 NEWTABLE                         R4 0 0
       22 SETTABLEKS                       R4 R3 K3 ["Item"]
       24 LOADN                            R4 1
       25 SETTABLEKS                       R4 R3 K4 ["Index"]
       27 DUPCLOSURE                       R4 K10 [PROTO_0]
       28 SETTABLEKS                       R4 R3 K5 ["OnCheck"]
       30 DUPCLOSURE                       R4 K11 [PROTO_1]
       31 SETTABLEKS                       R4 R3 K6 ["OnToggle"]
       33 GETIMPORT                        R4 K14 [UDim2.new]
       35 CALL                             R4 0 1
       36 SETTABLEKS                       R4 R3 K7 ["Position"]
       38 GETIMPORT                        R4 K16 [UDim2.fromOffset]
       40 LOADN                            R5 144
       41 LOADN                            R6 54
       42 CALL                             R4 2 1
       43 SETTABLEKS                       R4 R3 K8 ["Size"]
       45 GETUPVAL                         R4 3
       46 CALL                             R2 2 -1
       47 CALL                             R0 -1 -1
       48 RETURN                           R0 -1

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
       48 DUPTABLE                         R11 K21 [{"name", "story"}]
       49 LOADK                            R12 K22 ["Normal"]
       50 SETTABLEKS                       R12 R11 K19 ["name"]
       52 DUPTABLE                         R13 K24 [{"Item"}]
       53 DUPTABLE                         R14 K28 [{"Title", "Description", "Icon"}]
       54 LOADK                            R15 K29 ["Test Title"]
       55 SETTABLEKS                       R15 R14 K25 ["Title"]
       57 LOADK                            R15 K30 ["This is a mock description about an action provided by a plugin and it is in fact really long so is going to go on for a long time and get truncated"]
       58 SETTABLEKS                       R15 R14 K26 ["Description"]
       60 GETTABLEKS                       R15 R7 K31 ["getPathForIcon"]
       62 LOADK                            R16 K32 ["Scale"]
       63 LOADK                            R17 K33 ["Large"]
       64 CALL                             R15 2 1
       65 SETTABLEKS                       R15 R14 K27 ["Icon"]
       67 SETTABLEKS                       R14 R13 K23 ["Item"]
       69 NEWCLOSURE                       R12 P1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R6
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R13
       74 SETTABLEKS                       R12 R11 K20 ["story"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K17 ["stories"]
       80 RETURN                           R9 1
