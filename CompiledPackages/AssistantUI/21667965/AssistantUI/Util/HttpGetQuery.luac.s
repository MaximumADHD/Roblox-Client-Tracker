PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [string.gsub]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K5 ["^%s*(.-)%s*$"]
       13 LOADK                            R4 K6 ["%1"]
       14 CALL                             R1 3 1
       15 GETIMPORT                        R2 K8 [string.lower]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 1
       19 JUMPIFEQKS                       R2 K9 [""] ; [+7]
       21 JUMPIFEQKS                       R2 K10 ["none"] ; [+5]
       23 JUMPIFEQKS                       R2 K11 ["null"] ; [+3]
       25 JUMPIFNOTEQKS                    R2 K12 ["nil"] ; [+3]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["effectiveQuery"]
        6 RETURN                           R0 1
