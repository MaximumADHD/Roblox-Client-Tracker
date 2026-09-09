PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+2]
        2 GETUPVAL                         R0 0
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKNIL                  R0 ; [+3]
        3 LOADNIL                          R0
        4 RETURN                           R0 1
        5 GETUPVAL                         R0 0
        6 LOADK                            R2 K0 ["DataModelTypeChanged"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 NAMECALL                         R0 R0 K1 ["OnGuestEvent"]
       11 CALL                             R0 3 2
       12 NEWCLOSURE                       R2 P1
       13 CAPTURE                          VAL R1
       14 RETURN                           R2 1

PROTO_3:
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useState"]
       10 GETIMPORT                        R3 K6 [Enum.StudioDataModelType.None]
       12 CALL                             R2 1 2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R1
       18 CAPTURE                          VAL R3
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K8 ["useMemo"]
       28 NEWCLOSURE                       R5 P1
       29 CAPTURE                          VAL R2
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R2
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K9 ["createElement"]
       39 GETUPVAL                         R6 2
       40 GETTABLEKS                       R6 R6 K10 ["Provider"]
       42 DUPTABLE                         R7 K12 [{"value"}]
       43 SETTABLEKS                       R4 R7 K11 ["value"]
       45 GETTABLEKS                       R8 R0 K13 ["children"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K0 ["Disconnect"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_8:
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

PROTO_9:
        0 DUPTABLE                         R0 K1 [{"datamodelType"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["datamodelType"]
        4 RETURN                           R0 1

PROTO_10:
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
       18 GETTABLEKS                       R3 R3 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R3 K10 ["Networking"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Util"]
       29 GETTABLEKS                       R4 R4 K12 ["Datamodel"]
       31 GETTABLEKS                       R4 R4 K13 ["DEPRECATED_getFocusedDatamodelType"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R0 K8 ["Src"]
       36 GETTABLEKS                       R4 R4 K14 ["Flags"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R4 K15 ["getFFlagIAMLiveDebugging"]
       42 CALL                             R5 1 1
       43 DUPTABLE                         R6 K17 [{"datamodelType"}]
       44 GETIMPORT                        R7 K21 [Enum.StudioDataModelType.None]
       46 SETTABLEKS                       R7 R6 K16 ["datamodelType"]
       48 GETTABLEKS                       R7 R1 K22 ["createContext"]
       50 MOVE                             R8 R6
       51 CALL                             R7 1 1
       52 DUPCLOSURE                       R8 K23 [PROTO_4]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R7
       56 DUPCLOSURE                       R9 K24 [PROTO_10]
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R7
       60 DUPTABLE                         R10 K27 [{"Context", "Provider"}]
       61 SETTABLEKS                       R7 R10 K25 ["Context"]
       63 MOVE                             R12 R5
       64 CALL                             R12 0 1
       65 JUMPIFNOT                        R12 ; [+2]
       66 MOVE                             R11 R8
       67 JUMP                             ; [+1]
       68 MOVE                             R11 R9
       69 SETTABLEKS                       R11 R10 K26 ["Provider"]
       71 RETURN                           R10 1
