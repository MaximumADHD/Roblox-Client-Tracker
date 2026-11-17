PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADB                            R3 1
        2 MOVE                             R4 R0
        3 LOADB                            R5 0
        4 LOADNIL                          R6
        5 NAMECALL                         R1 R1 K0 ["SendKeyEvent"]
        7 CALL                             R1 5 0
        8 GETUPVAL                         R1 0
        9 NAMECALL                         R1 R1 K1 ["WaitForInputEventsProcessed"]
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 0
       13 LOADB                            R3 0
       14 MOVE                             R4 R0
       15 LOADB                            R5 0
       16 LOADNIL                          R6
       17 NAMECALL                         R1 R1 K0 ["SendKeyEvent"]
       19 CALL                             R1 5 0
       20 GETUPVAL                         R1 0
       21 NAMECALL                         R1 R1 K1 ["WaitForInputEventsProcessed"]
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["VirtualInputManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 1 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K5 ["hitKey"]
       13 DUPCLOSURE                       R2 K6 [PROTO_1]
       14 CAPTURE                          VAL R0
       15 DUPTABLE                         R3 K9 [{"Keyboard", "waitForInputEventsProcessed"}]
       16 SETTABLEKS                       R1 R3 K7 ["Keyboard"]
       18 SETTABLEKS                       R2 R3 K8 ["waitForInputEventsProcessed"]
       20 RETURN                           R3 1
