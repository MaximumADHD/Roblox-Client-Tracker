PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 DUPTABLE                         R11 K5 [{"Key", "Text", "Disabled"}]
        8 SETTABLEKS                       R7 R11 K2 ["Key"]
       10 MOVE                             R14 R1
       11 MOVE                             R15 R7
       12 NAMECALL                         R12 R0 K6 ["getText"]
       14 CALL                             R12 3 1
       15 SETTABLEKS                       R12 R11 K3 ["Text"]
       17 LOADB                            R12 0
       18 SETTABLEKS                       R12 R11 K4 ["Disabled"]
       20 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       22 MOVE                             R10 R3
       23 GETIMPORT                        R9 K9 [table.insert]
       25 CALL                             R9 2 0
       26 FORGLOOP                         R4 1 ; [-20]
       28 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
