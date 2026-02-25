PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 ["<"] ; [+3]
        2 LOADK                            R1 K1 ["&lt;"]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 [">"] ; [+3]
        6 LOADK                            R1 K3 ["&gt;"]
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K4 ["\""] ; [+3]
       10 LOADK                            R1 K5 ["&quot;"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K6 ["'"] ; [+3]
       14 LOADK                            R1 K7 ["&apos;"]
       15 RETURN                           R1 1
       16 JUMPIFNOTEQKS                    R0 K8 ["&"] ; [+3]
       18 LOADK                            R1 K9 ["&amp;"]
       19 RETURN                           R1 1
       20 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R3 K0 ["."]
        1 DUPCLOSURE                       R4 K1 [PROTO_0]
        2 NAMECALL                         R1 R0 K2 ["gsub"]
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
