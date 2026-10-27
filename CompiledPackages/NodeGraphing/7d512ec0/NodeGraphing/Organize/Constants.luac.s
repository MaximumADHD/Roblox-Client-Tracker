MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 8 0
       14 LOADN                            R3 40
       15 SETTABLEKS                       R3 R2 K7 ["NODE_VERTICAL_SPACING"]
       17 LOADN                            R3 120
       18 SETTABLEKS                       R3 R2 K8 ["COLUMN_HORIZONTAL_SPACING"]
       20 LOADN                            R4 2
       21 GETTABLEKS                       R5 R2 K7 ["NODE_VERTICAL_SPACING"]
       23 MUL                              R3 R4 R5
       24 SETTABLEKS                       R3 R2 K9 ["COMPONENT_VERTICAL_SPACING"]
       26 GETIMPORT                        R3 K12 [Vector2.new]
       28 GETTABLEKS                       R4 R1 K13 ["NODE_VIEW_CHILD_WIDTH"]
       30 LOADN                            R5 100
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R2 K14 ["DEFAULT_NODE_SIZE"]
       34 LOADN                            R3 4
       35 SETTABLEKS                       R3 R2 K15 ["DEFAULT_ITERATIONS"]
       37 LOADN                            R3 1
       38 SETTABLEKS                       R3 R2 K16 ["DUMMY_WIDTH"]
       40 LOADK                            R3 K17 [0.5]
       41 SETTABLEKS                       R3 R2 K18 ["CENTERED_PORT_OFFSET"]
       43 RETURN                           R2 1
