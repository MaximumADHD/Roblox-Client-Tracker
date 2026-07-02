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
        2 DUPTABLE                         R1 K7 [{["MOUSE_BUTTON1"] = 0, ["MOUSE_BUTTON2"] = 1}]
        3 SETTABLEKS                       R1 R0 K0 ["Key"]
        5 DUPTABLE                         R1 K12 [{["UP"] = , ["DOWN"] = True}]
        6 SETTABLEKS                       R1 R0 K1 ["State"]
        8 NEWTABLE                         R1 0 0
       10 LOADNIL                          R2
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          REF R2
       13 NEWCLOSURE                       R4 P1
       14 CAPTURE                          REF R2
       15 DUPCLOSURE                       R5 K13 [PROTO_2]
       16 CAPTURE                          VAL R1
       17 DUPCLOSURE                       R6 K14 [PROTO_3]
       18 CAPTURE                          VAL R1
       19 NEWCLOSURE                       R7 P4
       20 CAPTURE                          REF R2
       21 NEWTABLE                         R8 8 0
       23 SETTABLEKS                       R4 R8 K15 ["setMouse"]
       25 SETTABLEKS                       R3 R8 K16 ["getMouse"]
       27 SETTABLEKS                       R0 R8 K17 ["Enum"]
       29 SETTABLEKS                       R5 R8 K18 ["getButtonState"]
       31 SETTABLEKS                       R6 R8 K19 ["setButtonState"]
       33 SETTABLEKS                       R7 R8 K20 ["getMouseLocation"]
       35 CLOSEUPVALS                      R2
       36 RETURN                           R8 1
