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
        0 DUPTABLE                         R0 K2 [{[1] = ""}]
        1 LOADNIL                          R1
        2 DUPTABLE                         R2 K5 [{"Fire", "Connect"}]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          REF R1
        5 SETTABLEKS                       R3 R2 K3 ["Fire"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K6 ["fn"]
       10 NEWCLOSURE                       R4 P1
       11 CAPTURE                          REF R1
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R3 R2 K4 ["Connect"]
       15 SETTABLEKS                       R2 R0 K7 ["Button1Down"]
       17 LOADNIL                          R2
       18 DUPTABLE                         R3 K5 [{"Fire", "Connect"}]
       19 NEWCLOSURE                       R4 P2
       20 CAPTURE                          REF R2
       21 SETTABLEKS                       R4 R3 K3 ["Fire"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K6 ["fn"]
       26 NEWCLOSURE                       R5 P3
       27 CAPTURE                          REF R2
       28 CALL                             R4 1 1
       29 SETTABLEKS                       R4 R3 K4 ["Connect"]
       31 SETTABLEKS                       R3 R0 K8 ["Move"]
       33 GETIMPORT                        R3 K11 [CFrame.new]
       35 CALL                             R3 0 1
       36 SETTABLEKS                       R3 R0 K12 ["Hit"]
       38 GETIMPORT                        R3 K11 [CFrame.new]
       40 CALL                             R3 0 1
       41 SETTABLEKS                       R3 R0 K13 ["Origin"]
       43 GETIMPORT                        R3 K15 [Ray.new]
       45 LOADK                            R4 K16 [{0, 0, 0}]
       46 LOADK                            R5 K17 [{0, 0, -1}]
       47 CALL                             R3 2 1
       48 SETTABLEKS                       R3 R0 K18 ["UnitRay"]
       50 GETUPVAL                         R3 0
       51 GETTABLEKS                       R3 R3 K6 ["fn"]
       53 CALL                             R3 0 1
       54 SETTABLEKS                       R3 R0 K10 ["new"]
       56 CLOSEUPVALS                      R1
       57 RETURN                           R0 1

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
