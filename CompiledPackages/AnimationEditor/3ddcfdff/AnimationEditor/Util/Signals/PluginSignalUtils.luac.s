PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CurrentDataModelType"]
        3 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelType"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["CurrentDataModelTypeChanged"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 NAMECALL                         R1 R1 K1 ["Connect"]
        8 CALL                             R1 2 1
        9 NEWCLOSURE                       R2 P1
       10 CAPTURE                          VAL R1
       11 RETURN                           R2 1

PROTO_4:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["of"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 LOADK                            R4 K4 ["DataModelSession"]
       14 NAMECALL                         R2 R0 K5 ["IsA"]
       16 CALL                             R2 2 1
       17 FASTCALL2K                       ASSERT R2 K6 ; [+4]
       19 LOADK                            R3 K6 ["Expected FocusedDataModelSession to be a DataModelSession"]
       20 GETIMPORT                        R1 K8 [assert]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R1 0
       24 GETTABLEKS                       R1 R1 K9 ["provide"]
       26 NEWCLOSURE                       R2 P0
       27 CAPTURE                          VAL R0
       28 NEWCLOSURE                       R3 P1
       29 CAPTURE                          VAL R0
       30 CALL                             R1 2 -1
       31 RETURN                           R1 -1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["of"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["properties"]
       16 GETTABLEKS                       R1 R1 K5 ["observeInstance"]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K6 ["FocusedDataModelSession"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["switchMap"]
       24 MOVE                             R3 R1
       25 DUPCLOSURE                       R4 K8 [PROTO_4]
       26 CAPTURE                          UPVAL U0
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_6:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K3 ["of"]
       10 LOADNIL                          R2
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETUPVAL                         R1 1
       14 GETTABLEKS                       R1 R1 K4 ["properties"]
       16 GETTABLEKS                       R1 R1 K5 ["observeInstance"]
       18 MOVE                             R2 R0
       19 LOADK                            R3 K6 ["MultipleDocumentInterfaceInstance"]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K7 ["switchMap"]
       24 MOVE                             R3 R1
       25 DUPCLOSURE                       R4 K8 [PROTO_5]
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          UPVAL U1
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Signals"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K7 ["Signals"]
       20 GETTABLEKS                       R3 R3 K9 ["SignalsInstanceUtils"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Util"]
       27 GETTABLEKS                       R4 R4 K7 ["Signals"]
       29 GETTABLEKS                       R4 R4 K10 ["TypedInstanceSignals"]
       31 CALL                             R3 1 1
       32 NEWTABLE                         R4 1 0
       34 DUPCLOSURE                       R5 K11 [PROTO_6]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R3
       37 SETTABLEKS                       R5 R4 K12 ["getObserveCurrentDataModelType"]
       39 RETURN                           R4 1
