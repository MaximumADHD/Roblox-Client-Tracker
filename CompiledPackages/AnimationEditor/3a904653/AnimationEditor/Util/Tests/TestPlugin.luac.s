PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["BindableEvent"]
        3 CALL                             R2 1 1
        4 GETTABLEKS                       R3 R2 K4 ["Event"]
        6 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Event"]
        3 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Event"]
        3 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["TestHelpers"]
        3 GETTABLEKS                       R1 R1 K1 ["Instances"]
        5 GETTABLEKS                       R1 R1 K2 ["MockPlugin"]
        7 GETTABLEKS                       R1 R1 K3 ["new"]
        9 LOADK                            R2 K4 ["AnimationEditorPlugin"]
       10 NEWTABLE                         R3 0 0
       12 CALL                             R1 2 1
       13 DUPCLOSURE                       R2 K5 [PROTO_0]
       14 SETTABLEKS                       R2 R1 K6 ["GetPropertyChangedSignal"]
       16 JUMPIFNOT                        R0 ; [+33]
       17 GETTABLEKS                       R2 R0 K7 ["MockMDI"]
       19 JUMPIFNOT                        R2 ; [+30]
       20 GETIMPORT                        R2 K9 [Instance.new]
       22 LOADK                            R3 K10 ["BindableEvent"]
       23 CALL                             R2 1 1
       24 DUPTABLE                         R3 K14 [{"CurrentDataModelType", "CurrentDataModelTypeAboutToChange", "CurrentDataModelTypeChanged", "GetPropertyChangedSignal"}]
       25 GETIMPORT                        R4 K18 [Enum.StudioDataModelType.Edit]
       27 SETTABLEKS                       R4 R3 K11 ["CurrentDataModelType"]
       29 GETTABLEKS                       R4 R2 K19 ["Event"]
       31 SETTABLEKS                       R4 R3 K12 ["CurrentDataModelTypeAboutToChange"]
       33 GETTABLEKS                       R4 R2 K19 ["Event"]
       35 SETTABLEKS                       R4 R3 K13 ["CurrentDataModelTypeChanged"]
       37 NEWCLOSURE                       R4 P1
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R4 R3 K6 ["GetPropertyChangedSignal"]
       41 DUPTABLE                         R4 K21 [{"FocusedDataModelSession", "GetPropertyChangedSignal"}]
       42 SETTABLEKS                       R3 R4 K20 ["FocusedDataModelSession"]
       44 NEWCLOSURE                       R5 P2
       45 CAPTURE                          VAL R2
       46 SETTABLEKS                       R5 R4 K6 ["GetPropertyChangedSignal"]
       48 SETTABLEKS                       R4 R1 K22 ["MultipleDocumentInterfaceInstance"]
       50 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_3]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["new"]
       20 RETURN                           R2 1
