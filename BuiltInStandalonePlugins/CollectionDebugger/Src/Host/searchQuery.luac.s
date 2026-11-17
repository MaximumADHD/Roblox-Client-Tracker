PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["^%s*(.-)%s*$"]
        4 LOADK                            R4 K4 ["%1"]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 ORK                              R1 R0 K0 [""]
        1 GETIMPORT                        R2 K3 [string.gsub]
        3 MOVE                             R3 R1
        4 LOADK                            R4 K4 ["^%s*(.-)%s*$"]
        5 LOADK                            R5 K5 ["%1"]
        6 CALL                             R2 3 1
        7 GETIMPORT                        R4 K7 [string.lower]
        9 MOVE                             R5 R2
       10 CALL                             R4 1 1
       11 LOADN                            R5 1
       12 LOADN                            R6 9
       13 FASTCALL                         STRING_SUB ; [+2]
       14 GETIMPORT                        R3 K9 [string.sub]
       16 CALL                             R3 3 1
       17 JUMPIFNOTEQKS                    R3 K10 ["contains:"] ; [+31]
       19 FASTCALL2K                       STRING_SUB R2 K11 ; [+5]
       21 MOVE                             R5 R2
       22 LOADK                            R6 K11 [10]
       23 GETIMPORT                        R4 K9 [string.sub]
       25 CALL                             R4 2 1
       26 GETIMPORT                        R5 K3 [string.gsub]
       28 MOVE                             R6 R4
       29 LOADK                            R7 K4 ["^%s*(.-)%s*$"]
       30 LOADK                            R8 K5 ["%1"]
       31 CALL                             R5 3 1
       32 MOVE                             R3 R5
       33 JUMPIFNOTEQKS                    R3 K0 [""] ; [+3]
       35 DUPTABLE                         R4 K16 [{["kind"] = "contains", ["mode"] = }]
       36 RETURN                           R4 1
       37 GETIMPORT                        R4 K7 [string.lower]
       39 MOVE                             R5 R3
       40 CALL                             R4 1 1
       41 JUMPIFNOTEQKS                    R4 K17 ["selection"] ; [+3]
       43 DUPTABLE                         R4 K18 [{["kind"] = "contains", ["mode"] = "selection"}]
       44 RETURN                           R4 1
       45 DUPTABLE                         R4 K21 [{["kind"] = "contains", ["mode"] = "instance", ["path"]}]
       46 SETTABLEKS                       R3 R4 K20 ["path"]
       48 RETURN                           R4 1
       49 DUPTABLE                         R3 K23 [{["kind"] = "text", ["text"]}]
       50 SETTABLEKS                       R1 R3 K22 ["text"]
       52 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 SETTABLEKS                       R2 R0 K2 ["parse"]
        7 LOADK                            R2 K3 ["contains:selection"]
        8 SETTABLEKS                       R2 R0 K4 ["SELECTION_QUERY"]
       10 RETURN                           R0 1
