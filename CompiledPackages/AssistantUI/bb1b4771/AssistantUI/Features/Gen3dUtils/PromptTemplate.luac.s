PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 [""] ; [+8]
        2 LOADK                            R4 K1 ["{user prompt}"]
        3 LOADN                            R5 1
        4 LOADB                            R6 1
        5 NAMECALL                         R2 R0 K2 ["find"]
        7 CALL                             R2 4 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R1 1
       10 LOADK                            R4 K1 ["{user prompt}"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 LOADN                            R6 1
       14 NAMECALL                         R2 R0 K3 ["gsub"]
       16 CALL                             R2 4 1
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 DUPTABLE                         R1 K4 [{["PLACEHOLDER"] = "{user prompt}", ["apply"]}]
        3 SETTABLEKS                       R0 R1 K3 ["apply"]
        5 RETURN                           R1 1
