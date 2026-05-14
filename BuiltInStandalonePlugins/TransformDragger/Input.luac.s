PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 SETTABLE                         R1 R2 R0
        2 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["Origin"]
        7 GETTABLEKS                       R0 R0 K1 ["p"]
        9 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Key", "State"}]
        2 DUPTABLE                         R1 K5 [{"MOUSE_BUTTON1", "MOUSE_BUTTON2"}]
        3 LOADN                            R2 0
        4 SETTABLEKS                       R2 R1 K3 ["MOUSE_BUTTON1"]
        6 LOADN                            R2 1
        7 SETTABLEKS                       R2 R1 K4 ["MOUSE_BUTTON2"]
        9 SETTABLEKS                       R1 R0 K0 ["Key"]
       11 DUPTABLE                         R1 K8 [{"UP", "DOWN"}]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K6 ["UP"]
       15 LOADB                            R2 1
       16 SETTABLEKS                       R2 R1 K7 ["DOWN"]
       18 SETTABLEKS                       R1 R0 K1 ["State"]
       20 NEWTABLE                         R1 0 0
       22 LOADNIL                          R2
       23 NEWCLOSURE                       R3 P0
       24 CAPTURE                          REF R2
       25 NEWCLOSURE                       R4 P1
       26 CAPTURE                          REF R2
       27 DUPCLOSURE                       R5 K9 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R6 K10 [PROTO_3]
       30 CAPTURE                          VAL R1
       31 NEWCLOSURE                       R7 P4
       32 CAPTURE                          REF R2
       33 NEWTABLE                         R8 8 0
       35 SETTABLEKS                       R4 R8 K11 ["setMouse"]
       37 SETTABLEKS                       R3 R8 K12 ["getMouse"]
       39 SETTABLEKS                       R0 R8 K13 ["Enum"]
       41 SETTABLEKS                       R5 R8 K14 ["getButtonState"]
       43 SETTABLEKS                       R6 R8 K15 ["setButtonState"]
       45 SETTABLEKS                       R7 R8 K16 ["getMouseLocation"]
       47 CLOSEUPVALS                      R2
       48 RETURN                           R8 1
