PROTO_0:
        0 GETIMPORT                        R1 K3 [Enum.PropertyStatus.Error]
        2 JUMPIFNOTEQ                      R0 R1 ; [+3]
        4 LOADN                            R1 3
        5 RETURN                           R1 1
        6 GETIMPORT                        R1 K5 [Enum.PropertyStatus.Warning]
        8 JUMPIFNOTEQ                      R0 R1 ; [+3]
       10 LOADN                            R1 2
       11 RETURN                           R1 1
       12 LOADN                            R1 1
       13 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
