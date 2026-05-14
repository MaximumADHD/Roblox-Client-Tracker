PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Disconnect"}]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        6 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_5:
        0 SETUPVAL                         R1 0
        1 DUPTABLE                         R2 K1 [{"Disconnect"}]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R3 R2 K0 ["Disconnect"]
        6 RETURN                           R2 1

PROTO_6:
        0 DUPTABLE                         R0 K1 [{"Icon"}]
        1 LOADK                            R1 K2 [""]
        2 SETTABLEKS                       R1 R0 K0 ["Icon"]
        4 LOADNIL                          R1
        5 DUPTABLE                         R2 K5 [{"Fire", "Connect"}]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          REF R1
        8 SETTABLEKS                       R3 R2 K3 ["Fire"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K6 ["fn"]
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          REF R1
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K4 ["Connect"]
       18 SETTABLEKS                       R2 R0 K7 ["Button1Down"]
       20 LOADNIL                          R2
       21 DUPTABLE                         R3 K5 [{"Fire", "Connect"}]
       22 NEWCLOSURE                       R4 P2
       23 CAPTURE                          REF R2
       24 SETTABLEKS                       R4 R3 K3 ["Fire"]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K6 ["fn"]
       29 NEWCLOSURE                       R5 P3
       30 CAPTURE                          REF R2
       31 CALL                             R4 1 1
       32 SETTABLEKS                       R4 R3 K4 ["Connect"]
       34 SETTABLEKS                       R3 R0 K8 ["Move"]
       36 GETIMPORT                        R3 K11 [CFrame.new]
       38 CALL                             R3 0 1
       39 SETTABLEKS                       R3 R0 K12 ["Hit"]
       41 GETIMPORT                        R3 K11 [CFrame.new]
       43 CALL                             R3 0 1
       44 SETTABLEKS                       R3 R0 K13 ["Origin"]
       46 GETIMPORT                        R3 K15 [Ray.new]
       48 LOADK                            R4 K16 [{0, 0, 0}]
       49 LOADK                            R5 K17 [{0, 0, -1}]
       50 CALL                             R3 2 1
       51 SETTABLEKS                       R3 R0 K18 ["UnitRay"]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K6 ["fn"]
       56 CALL                             R3 0 1
       57 SETTABLEKS                       R3 R0 K10 ["new"]
       59 CLOSEUPVALS                      R1
       60 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["jest"]
       18 DUPCLOSURE                       R3 K10 [PROTO_6]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
