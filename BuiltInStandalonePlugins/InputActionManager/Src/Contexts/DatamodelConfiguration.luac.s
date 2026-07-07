PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["FocusedDataModelSession"]
       11 JUMPIF                           R0 ; [+5]
       12 GETUPVAL                         R1 2
       13 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.None]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R0
       20 GETUPVAL                         R2 2
       21 GETTABLEKS                       R3 R0 K6 ["CurrentDataModelType"]
       23 CALL                             R2 1 0
       24 GETTABLEKS                       R2 R0 K7 ["CurrentDataModelTypeChanged"]
       26 MOVE                             R4 R1
       27 NAMECALL                         R2 R2 K8 ["Connect"]
       29 CALL                             R2 2 1
       30 SETUPVAL                         R2 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["plugin"]
        3 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
        5 LOADNIL                          R1
        6 JUMPIF                           R0 ; [+2]
        7 CLOSEUPVALS                      R1
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          REF R1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 MOVE                             R3 R2
       14 CALL                             R3 0 0
       15 LOADK                            R5 K2 ["FocusedDataModelSession"]
       16 NAMECALL                         R3 R0 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R3 2 1
       19 MOVE                             R5 R2
       20 NAMECALL                         R3 R3 K4 ["Connect"]
       22 CALL                             R3 2 1
       23 NEWCLOSURE                       R4 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          REF R1
       26 CLOSEUPVALS                      R1
       27 RETURN                           R4 1

PROTO_4:
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R0 K1 ["plugin"]
        6 CALL                             R2 1 -1
        7 CALL                             R1 -1 2
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["useEffect"]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 NEWTABLE                         R5 0 1
       16 GETTABLEKS                       R6 R0 K1 ["plugin"]
       18 SETLIST                          R5 R6 1 [1]
       20 CALL                             R3 2 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K3 ["useMemo"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R5 0 1
       28 MOVE                             R6 R1
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R4 0
       33 GETTABLEKS                       R4 R4 K4 ["createElement"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R5 R5 K5 ["Provider"]
       38 DUPTABLE                         R6 K7 [{"value"}]
       39 SETTABLEKS                       R3 R6 K6 ["value"]
       41 GETTABLEKS                       R7 R0 K8 ["children"]
       43 CALL                             R4 3 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Datamodel"]
       22 GETTABLEKS                       R3 R3 K11 ["getFocusedDatamodelType"]
       24 CALL                             R2 1 1
       25 DUPTABLE                         R3 K13 [{"datamodelType"}]
       26 GETIMPORT                        R4 K17 [Enum.StudioDataModelType.None]
       28 SETTABLEKS                       R4 R3 K12 ["datamodelType"]
       30 GETTABLEKS                       R4 R1 K18 ["createContext"]
       32 MOVE                             R5 R3
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K19 [PROTO_5]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R4
       38 DUPTABLE                         R6 K22 [{"Context", "Provider"}]
       39 SETTABLEKS                       R4 R6 K20 ["Context"]
       41 SETTABLEKS                       R5 R6 K21 ["Provider"]
       43 RETURN                           R6 1
