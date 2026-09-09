PROTO_0:
        0 GETUPVAL                         R3 0
        1 CALL                             R3 0 1
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        5 LOADK                            R3 K0 ["getFocusedDatamodelType should not be called while FFlagIAMLiveDebugging is enabled"]
        6 GETIMPORT                        R1 K2 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K3 ["MultipleDocumentInterfaceInstance"]
       11 JUMPIF                           R1 ; [+3]
       12 GETIMPORT                        R2 K7 [Enum.StudioDataModelType.None]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R1 K8 ["FocusedDataModelSession"]
       17 JUMPIF                           R2 ; [+3]
       18 GETIMPORT                        R3 K7 [Enum.StudioDataModelType.None]
       20 RETURN                           R3 1
       21 GETTABLEKS                       R3 R2 K9 ["CurrentDataModelType"]
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Flags"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["getFFlagIAMLiveDebugging"]
       15 CALL                             R2 1 1
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R3 1
