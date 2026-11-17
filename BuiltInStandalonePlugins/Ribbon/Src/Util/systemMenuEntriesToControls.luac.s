PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["Type"]
        8 JUMPIFNOTEQKS                    R7 K1 ["Action"] ; [+27]
       10 GETTABLEKS                       R7 R6 K1 ["Action"]
       12 JUMPIFEQKNIL                     R7 ; [+23]
       14 DUPTABLE                         R9 K4 [{[1] = "Button", ["Id"], ["Action"]}]
       15 GETTABLEKS                       R10 R6 K3 ["Id"]
       17 JUMPIF                           R10 ; [+5]
       18 LOADK                            R10 K5 ["Action-%*"]
       19 MOVE                             R12 R5
       20 NAMECALL                         R10 R10 K6 ["format"]
       22 CALL                             R10 2 1
       23 SETTABLEKS                       R10 R9 K3 ["Id"]
       25 GETTABLEKS                       R10 R6 K1 ["Action"]
       27 SETTABLEKS                       R10 R9 K1 ["Action"]
       29 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       31 MOVE                             R8 R1
       32 GETIMPORT                        R7 K9 [table.insert]
       34 CALL                             R7 2 0
       35 JUMP                             ; [+21]
       36 GETTABLEKS                       R7 R6 K0 ["Type"]
       38 JUMPIFNOTEQKS                    R7 K10 ["SubMenu"] ; [+18]
       40 GETTABLEKS                       R7 R6 K11 ["Items"]
       42 JUMPIFEQKNIL                     R7 ; [+14]
       44 DUPTABLE                         R9 K14 [{[1] = "Column", ["Children"]}]
       45 GETUPVAL                         R10 0
       46 GETTABLEKS                       R11 R6 K11 ["Items"]
       48 CALL                             R10 1 1
       49 SETTABLEKS                       R10 R9 K13 ["Children"]
       51 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       53 MOVE                             R8 R1
       54 GETIMPORT                        R7 K9 [table.insert]
       56 CALL                             R7 2 0
       57 FORGLOOP                         R2 2 ; [-52]
       59 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
