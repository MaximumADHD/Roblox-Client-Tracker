PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LOADN                            R2 100
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 DUPTABLE                         R7 K2 [{"text", "icon"}]
        7 LOADK                            R8 K3 ["%s.%d"]
        8 MOVE                             R10 R0
        9 MOVE                             R11 R4
       10 NAMECALL                         R8 R8 K4 ["format"]
       12 CALL                             R8 3 1
       13 SETTABLEKS                       R8 R7 K0 ["text"]
       15 DUPTABLE                         R8 K8 [{["Image"] = "rbxasset://textures/DeveloperFramework/Favorites/star_filled.png", ["Size"]}]
       16 GETIMPORT                        R9 K11 [UDim2.new]
       18 LOADN                            R10 0
       19 LOADN                            R11 14
       20 LOADN                            R12 0
       21 LOADN                            R13 14
       22 CALL                             R9 4 1
       23 SETTABLEKS                       R9 R8 K7 ["Size"]
       25 SETTABLEKS                       R8 R7 K1 ["icon"]
       27 FASTCALL2                        TABLE_INSERT R1 R7 ; [+4]
       29 MOVE                             R6 R1
       30 GETIMPORT                        R5 K14 [table.insert]
       32 CALL                             R5 2 0
       33 FORNLOOP                         R2
       34 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["cachedItems"]
        4 DUPTABLE                         R1 K4 [{"Selection", "Expansion", "Items"}]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["Expansion"]
       13 GETUPVAL                         R2 0
       14 LOADK                            R3 K5 ["Root"]
       15 CALL                             R2 1 1
       16 SETTABLEKS                       R2 R1 K3 ["Items"]
       18 SETTABLEKS                       R1 R0 K6 ["state"]
       20 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["cachedItems"]
        3 GETTABLEKS                       R2 R0 K1 ["text"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["cachedItems"]
        8 GETTABLEKS                       R5 R0 K1 ["text"]
       10 GETTABLE                         R3 R4 R5
       11 JUMPIF                           R3 ; [+4]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R4 R0 K1 ["text"]
       15 CALL                             R3 1 1
       16 SETTABLE                         R3 R1 R2
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K0 ["cachedItems"]
       20 GETTABLEKS                       R3 R0 K1 ["text"]
       22 GETTABLE                         R1 R2 R3
       23 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K2 ["state"]
        6 GETTABLEKS                       R5 R5 K0 ["Expansion"]
        8 MOVE                             R6 R0
        9 CALL                             R4 2 1
       10 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       12 NAMECALL                         R1 R1 K3 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Selection"}]
        2 SETTABLEKS                       R0 R3 K0 ["Selection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{["Size"], ["Expansion"], ["Selection"], ["RootItems"], ["Style"] = "BorderBox", ["GetChildren"], ["OnExpansionChange"], ["OnSelectionChange"]}]
        5 GETIMPORT                        R4 K13 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 300
        9 LOADN                            R7 0
       10 LOADN                            R8 600
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K14 ["state"]
       16 GETTABLEKS                       R4 R4 K2 ["Expansion"]
       18 SETTABLEKS                       R4 R3 K2 ["Expansion"]
       20 GETTABLEKS                       R4 R0 K14 ["state"]
       22 GETTABLEKS                       R4 R4 K3 ["Selection"]
       24 SETTABLEKS                       R4 R3 K3 ["Selection"]
       26 GETTABLEKS                       R4 R0 K14 ["state"]
       28 GETTABLEKS                       R4 R4 K15 ["Items"]
       30 SETTABLEKS                       R4 R3 K4 ["RootItems"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U2
       35 SETTABLEKS                       R4 R3 K7 ["GetChildren"]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R0
       39 CAPTURE                          UPVAL U3
       40 SETTABLEKS                       R4 R3 K8 ["OnExpansionChange"]
       42 NEWCLOSURE                       R4 P2
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R4 R3 K9 ["OnSelectionChange"]
       46 CALL                             R1 2 -1
       47 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["join"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R5 K10 ["Components"]
       31 GETTABLEKS                       R5 R5 K11 ["TreeView"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K12 ["PureComponent"]
       36 GETIMPORT                        R8 K1 [script]
       38 GETTABLEKS                       R8 R8 K4 ["Parent"]
       40 GETTABLEKS                       R8 R8 K13 ["Name"]
       42 LOADK                            R9 K14 ["ExampleTreeView"]
       43 CONCAT                           R7 R8 R9
       44 NAMECALL                         R5 R5 K15 ["extend"]
       46 CALL                             R5 2 1
       47 DUPCLOSURE                       R6 K16 [PROTO_0]
       48 DUPCLOSURE                       R7 K17 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 SETTABLEKS                       R7 R5 K18 ["init"]
       52 DUPCLOSURE                       R7 K19 [PROTO_5]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R7 R5 K20 ["render"]
       59 DUPTABLE                         R7 K22 [{"stories"}]
       60 NEWTABLE                         R8 0 1
       62 DUPTABLE                         R9 K26 [{["name"] = "Standard", ["story"]}]
       63 SETTABLEKS                       R5 R9 K25 ["story"]
       65 SETLIST                          R8 R9 1 [1]
       67 SETTABLEKS                       R8 R7 K21 ["stories"]
       69 RETURN                           R7 1
