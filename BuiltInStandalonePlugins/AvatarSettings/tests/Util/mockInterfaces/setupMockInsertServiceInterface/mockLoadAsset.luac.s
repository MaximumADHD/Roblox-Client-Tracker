PROTO_0:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+6]
        2 GETIMPORT                        R3 K2 [Instance.new]
        4 LOADK                            R4 K3 ["Accessory"]
        5 CALL                             R3 1 1
        6 MOVE                             R2 R3
        7 JUMP                             ; [+5]
        8 GETIMPORT                        R3 K2 [Instance.new]
       10 LOADK                            R4 K4 ["Part"]
       11 CALL                             R3 1 1
       12 MOVE                             R2 R3
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R4 R0
       15 GETIMPORT                        R3 K6 [tostring]
       17 CALL                             R3 1 1
       18 SETTABLEKS                       R3 R2 K7 ["Name"]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
