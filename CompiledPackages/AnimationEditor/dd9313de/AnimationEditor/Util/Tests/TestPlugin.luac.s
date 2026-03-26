PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R2 K1 [{"Disconnect"}]
        1 DUPCLOSURE                       R3 K2 [PROTO_0]
        2 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        4 RETURN                           R2 1

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R2 K1 [{"Disconnect"}]
        1 DUPCLOSURE                       R3 K2 [PROTO_2]
        2 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        4 RETURN                           R2 1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"Connect"}]
        1 DUPCLOSURE                       R3 K2 [PROTO_3]
        2 SETTABLEKS                       R3 R2 K0 ["Connect"]
        4 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TestHelpers"]
        3 GETTABLEKS                       R2 R3 K1 ["Instances"]
        5 GETTABLEKS                       R1 R2 K2 ["MockPlugin"]
        7 GETTABLEKS                       R0 R1 K3 ["new"]
        9 LOADK                            R1 K4 ["AnimationEditorPlugin"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R0 2 1
       13 DUPTABLE                         R1 K7 [{"CurrentDataModelType", "CurrentDataModelTypeChanged"}]
       14 GETIMPORT                        R2 K11 [Enum.StudioDataModelType.Edit]
       16 SETTABLEKS                       R2 R1 K5 ["CurrentDataModelType"]
       18 DUPTABLE                         R2 K13 [{"Connect"}]
       19 DUPCLOSURE                       R3 K14 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K12 ["Connect"]
       22 SETTABLEKS                       R2 R1 K6 ["CurrentDataModelTypeChanged"]
       24 DUPTABLE                         R2 K17 [{"FocusedDataModelSession", "GetPropertyChangedSignal"}]
       25 SETTABLEKS                       R1 R2 K15 ["FocusedDataModelSession"]
       27 DUPCLOSURE                       R3 K18 [PROTO_4]
       28 SETTABLEKS                       R3 R2 K16 ["GetPropertyChangedSignal"]
       30 SETTABLEKS                       R2 R0 K19 ["MultipleDocumentInterfaceInstance"]
       32 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_5]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["new"]
       20 RETURN                           R2 1
