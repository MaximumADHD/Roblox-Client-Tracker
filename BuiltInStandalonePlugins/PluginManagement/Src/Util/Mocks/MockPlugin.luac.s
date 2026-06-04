PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["ScreenGui"]
        3 CALL                             R0 1 1
        4 LOADK                            R1 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R1 R0 K5 ["Name"]
        7 GETUPVAL                         R1 0
        8 SETTABLEKS                       R1 R0 K6 ["Parent"]
       10 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R3 R2 K6 ["Parent"]
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 1
        4 LOADK                            R3 K4 ["MockPluginGui"]
        5 SETTABLEKS                       R3 R2 K5 ["Name"]
        7 GETUPVAL                         R3 0
        8 SETTABLEKS                       R3 R2 K6 ["Parent"]
       10 MOVE                             R1 R2
       11 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 LOADK                            R3 K1 ["PluginManagement"]
        4 CALL                             R2 1 1
        5 DUPTABLE                         R3 K4 [{"DataModelSessionEnded", "FocusedDataModelSession"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K0 ["new"]
        9 CALL                             R4 0 1
       10 SETTABLEKS                       R4 R3 K2 ["DataModelSessionEnded"]
       12 SETTABLEKS                       R1 R3 K3 ["FocusedDataModelSession"]
       14 SETTABLEKS                       R3 R2 K5 ["MultipleDocumentInterfaceInstance"]
       16 JUMPIFNOT                        R0 ; [+12]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R0
       21 GETUPVAL                         R6 0
       22 SETTABLEKS                       R5 R6 K6 ["CreateQWidgetPluginGui"]
       24 NEWCLOSURE                       R5 P2
       25 CAPTURE                          VAL R0
       26 GETUPVAL                         R6 0
       27 SETTABLEKS                       R5 R6 K7 ["CreateDockWidgetPluginGui"]
       29 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Signal"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["TestHelpers"]
       27 GETTABLEKS                       R3 R3 K9 ["Instances"]
       29 GETTABLEKS                       R3 R3 K10 ["MockPlugin"]
       31 NEWTABLE                         R4 1 0
       33 DUPCLOSURE                       R5 K11 [PROTO_3]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K12 ["new"]
       38 RETURN                           R4 1
