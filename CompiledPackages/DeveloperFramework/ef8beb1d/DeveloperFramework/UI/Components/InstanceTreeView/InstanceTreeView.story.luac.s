PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"Expansion", "Selection", "Instances", "OnExpansionChange"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["Selection"]
        9 NEWTABLE                         R2 0 3
       11 GETUPVAL                         R3 0
       12 GETUPVAL                         R4 1
       13 GETUPVAL                         R5 2
       14 SETLIST                          R2 R3 3 [1]
       16 SETTABLEKS                       R2 R1 K2 ["Instances"]
       18 DUPCLOSURE                       R2 K5 [PROTO_0]
       19 SETTABLEKS                       R2 R1 K3 ["OnExpansionChange"]
       21 SETTABLEKS                       R1 R0 K6 ["state"]
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Selection"}]
        2 SETTABLEKS                       R0 R3 K0 ["Selection"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"Expansion"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K2 ["Dictionary"]
        5 GETTABLEKS                       R4 R4 K3 ["join"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K4 ["state"]
       10 GETTABLEKS                       R5 R5 K0 ["Expansion"]
       12 MOVE                             R6 R0
       13 CALL                             R4 2 1
       14 SETTABLEKS                       R4 R3 K0 ["Expansion"]
       16 NAMECALL                         R1 R1 K5 ["setState"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["Size"], ["Instances"], ["Selection"], ["Expansion"], ["OnSelectionChange"], ["OnExpansionChange"], ["Style"] = "Compact"}]
        5 GETIMPORT                        R4 K12 [UDim2.new]
        7 LOADN                            R5 0
        8 LOADN                            R6 240
        9 LOADN                            R7 0
       10 LOADN                            R8 240
       11 CALL                             R4 4 1
       12 SETTABLEKS                       R4 R3 K1 ["Size"]
       14 GETTABLEKS                       R4 R0 K13 ["state"]
       16 GETTABLEKS                       R4 R4 K2 ["Instances"]
       18 SETTABLEKS                       R4 R3 K2 ["Instances"]
       20 GETTABLEKS                       R4 R0 K13 ["state"]
       22 GETTABLEKS                       R4 R4 K3 ["Selection"]
       24 SETTABLEKS                       R4 R3 K3 ["Selection"]
       26 GETTABLEKS                       R4 R0 K13 ["state"]
       28 GETTABLEKS                       R4 R4 K4 ["Expansion"]
       30 SETTABLEKS                       R4 R3 K4 ["Expansion"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R4 R3 K5 ["OnSelectionChange"]
       36 NEWCLOSURE                       R4 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U2
       39 SETTABLEKS                       R4 R3 K6 ["OnExpansionChange"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

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
       16 GETIMPORT                        R2 K9 [game]
       18 LOADK                            R4 K10 ["Workspace"]
       19 NAMECALL                         R2 R2 K11 ["GetService"]
       21 CALL                             R2 2 1
       22 GETIMPORT                        R3 K9 [game]
       24 LOADK                            R5 K12 ["StarterPlayer"]
       25 NAMECALL                         R3 R3 K11 ["GetService"]
       27 CALL                             R3 2 1
       28 GETIMPORT                        R4 K9 [game]
       30 LOADK                            R6 K13 ["ReplicatedStorage"]
       31 NAMECALL                         R4 R4 K11 ["GetService"]
       33 CALL                             R4 2 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R6 K14 ["Components"]
       40 GETTABLEKS                       R6 R6 K15 ["InstanceTreeView"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K6 [require]
       45 GETTABLEKS                       R7 R0 K4 ["Parent"]
       47 GETTABLEKS                       R7 R7 K16 ["Cryo"]
       49 CALL                             R6 1 1
       50 GETTABLEKS                       R7 R1 K17 ["PureComponent"]
       52 GETIMPORT                        R10 K1 [script]
       54 GETTABLEKS                       R10 R10 K4 ["Parent"]
       56 GETTABLEKS                       R10 R10 K18 ["Name"]
       58 LOADK                            R11 K19 ["Example"]
       59 CONCAT                           R9 R10 R11
       60 NAMECALL                         R7 R7 K20 ["extend"]
       62 CALL                             R7 2 1
       63 DUPCLOSURE                       R8 K21 [PROTO_1]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R3
       67 SETTABLEKS                       R8 R7 K22 ["init"]
       69 DUPCLOSURE                       R8 K23 [PROTO_4]
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R6
       73 SETTABLEKS                       R8 R7 K24 ["render"]
       75 RETURN                           R7 1
