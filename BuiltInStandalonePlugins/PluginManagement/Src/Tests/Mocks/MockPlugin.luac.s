PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADK                            R2 K1 ["PluginManagement"]
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K4 [{"DataModelSessionEnded", "FocusedDataModelSession"}]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K0 ["new"]
        9 CALL                             R3 0 1
       10 SETTABLEKS                       R3 R2 K2 ["DataModelSessionEnded"]
       12 SETTABLEKS                       R0 R2 K3 ["FocusedDataModelSession"]
       14 SETTABLEKS                       R2 R1 K5 ["MultipleDocumentInterfaceInstance"]
       16 RETURN                           R1 1

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
       33 DUPCLOSURE                       R5 K11 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R1
       36 SETTABLEKS                       R5 R4 K12 ["new"]
       38 RETURN                           R4 1
