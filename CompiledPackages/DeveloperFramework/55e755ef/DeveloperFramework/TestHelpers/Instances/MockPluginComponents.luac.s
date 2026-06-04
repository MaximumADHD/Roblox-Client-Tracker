PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 LOADK                            R5 K4 ["RBX_MousePosition"]
        5 GETIMPORT                        R6 K6 [Vector2.new]
        7 LOADN                            R7 50
        8 LOADN                            R8 50
        9 CALL                             R6 2 -1
       10 NAMECALL                         R3 R2 K7 ["SetAttribute"]
       12 CALL                             R3 -1 0
       13 RETURN                           R2 1

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 RETURN                           R0 0

PROTO_6:
        0 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 1 0
        2 DUPCLOSURE                       R1 K0 [PROTO_0]
        3 SETTABLEKS                       R1 R0 K1 ["RegisterMouseTrackingRelativeToWidgetAsync"]
        5 NEWTABLE                         R1 4 0
        7 DUPCLOSURE                       R2 K2 [PROTO_1]
        8 SETTABLEKS                       R2 R1 K3 ["HideAsync"]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 SETTABLEKS                       R2 R1 K5 ["SetAttachmentAsync"]
       13 DUPCLOSURE                       R2 K6 [PROTO_3]
       14 SETTABLEKS                       R2 R1 K7 ["SetSizeAsync"]
       16 DUPCLOSURE                       R2 K8 [PROTO_4]
       17 SETTABLEKS                       R2 R1 K9 ["ShowIfAttachedAsync"]
       19 DUPTABLE                         R2 K12 [{"PlaceDocPanelClosed", "PlaceDocPanelShown"}]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R3 R3 K13 ["new"]
       23 CALL                             R3 0 1
       24 SETTABLEKS                       R3 R2 K10 ["PlaceDocPanelClosed"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K13 ["new"]
       29 CALL                             R3 0 1
       30 SETTABLEKS                       R3 R2 K11 ["PlaceDocPanelShown"]
       32 NEWTABLE                         R3 2 0
       34 DUPCLOSURE                       R4 K14 [PROTO_5]
       35 SETTABLEKS                       R4 R3 K15 ["RegisterAsync"]
       37 DUPCLOSURE                       R4 K16 [PROTO_6]
       38 SETTABLEKS                       R4 R3 K17 ["DeregisterAsync"]
       40 DUPTABLE                         R4 K22 [{"MouseTracker", "Panels", "PlaceManager", "Widgets"}]
       41 SETTABLEKS                       R0 R4 K18 ["MouseTracker"]
       43 SETTABLEKS                       R1 R4 K19 ["Panels"]
       45 SETTABLEKS                       R2 R4 K20 ["PlaceManager"]
       47 SETTABLEKS                       R3 R4 K21 ["Widgets"]
       49 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Util"]
       18 GETTABLEKS                       R3 R3 K7 ["Signal"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_7]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
