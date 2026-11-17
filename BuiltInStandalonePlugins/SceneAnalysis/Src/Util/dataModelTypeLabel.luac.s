PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["EnumItem"] ; [+4]
        7 GETTABLEKS                       R1 R0 K3 ["Name"]
        9 RETURN                           R1 1
       10 FASTCALL1                        TYPE R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K5 [type]
       14 CALL                             R1 1 1
       15 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+2]
       17 RETURN                           R0 1
       18 FASTCALL1                        TYPE R0 ; [+3]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K5 [type]
       22 CALL                             R1 1 1
       23 JUMPIFNOTEQKS                    R1 K7 ["number"] ; [+4]
       25 GETUPVAL                         R2 0
       26 GETTABLE                         R1 R2 R0
       27 RETURN                           R1 1
       28 LOADNIL                          R1
       29 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R0 ; [+2]
        1 LOADK                            R1 K0 ["Unknown"]
        2 RETURN                           R1 1
        3 JUMPIFNOTEQKS                    R0 K1 ["Edit"] ; [+3]
        5 LOADK                            R1 K1 ["Edit"]
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKS                    R0 K2 ["PlayServer"] ; [+3]
        9 LOADK                            R1 K3 ["Server"]
       10 RETURN                           R1 1
       11 JUMPIFNOTEQKS                    R0 K4 ["PlayClient"] ; [+3]
       13 LOADK                            R1 K5 ["Client 1"]
       14 RETURN                           R1 1
       15 JUMPIFNOTEQKS                    R0 K6 ["Standalone"] ; [+3]
       17 LOADK                            R1 K6 ["Standalone"]
       18 RETURN                           R1 1
       19 GETIMPORT                        R1 K9 [string.match]
       21 MOVE                             R2 R0
       22 LOADK                            R3 K10 ["^PlayClient_(%d+)$"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+4]
       25 LOADK                            R3 K11 ["Client "]
       26 MOVE                             R4 R1
       27 CONCAT                           R2 R3 R4
       28 RETURN                           R2 1
       29 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 NEWTABLE                         R1 4 0
        5 LOADN                            R2 0
        6 LOADK                            R3 K0 ["Edit"]
        7 SETTABLE                         R3 R1 R2
        8 LOADK                            R2 K1 ["PlayClient"]
        9 SETTABLEN                        R2 R1 1
       10 LOADK                            R2 K2 ["PlayServer"]
       11 SETTABLEN                        R2 R1 2
       12 LOADK                            R2 K3 ["Standalone"]
       13 SETTABLEN                        R2 R1 3
       14 DUPCLOSURE                       R2 K4 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 SETTABLEKS                       R2 R0 K5 ["toName"]
       18 DUPCLOSURE                       R2 K6 [PROTO_1]
       19 SETTABLEKS                       R2 R0 K7 ["toLabel"]
       21 RETURN                           R0 1
