PROTO_0:
        0 SUBK                             R2 R1 K0 [1]
        1 DUPTABLE                         R3 K9 [{["Type"] = "Option", ["Id"], ["Action"], ["Selected"], ["Setting"], ["SettingValue"], ["Size"]}]
        2 GETTABLEKS                       R4 R0 K3 ["Id"]
        4 SETTABLEKS                       R4 R3 K3 ["Id"]
        6 GETTABLEKS                       R4 R0 K4 ["Action"]
        8 SETTABLEKS                       R4 R3 K4 ["Action"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K10 ["Value"]
       13 JUMPIFEQ                         R2 R5 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 SETTABLEKS                       R4 R3 K5 ["Selected"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K11 ["Uri"]
       22 SETTABLEKS                       R4 R3 K6 ["Setting"]
       24 SETTABLEKS                       R2 R3 K7 ["SettingValue"]
       26 GETUPVAL                         R4 1
       27 SETTABLEKS                       R4 R3 K8 ["Size"]
       29 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Values"]
        2 JUMPIF                           R3 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 RETURN                           R3 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R4 R0 K0 ["Values"]
        9 NEWCLOSURE                       R5 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 CALL                             R3 2 1
       13 JUMPIFNOT                        R1 ; [+3]
       14 LENGTH                           R4 R3
       15 JUMPIFNOTLE                      R4 R1 ; [+10]
       17 DUPTABLE                         R4 K4 [{["Type"] = "Column", ["Children"]}]
       18 SETTABLEKS                       R3 R4 K3 ["Children"]
       20 NEWTABLE                         R5 0 1
       22 MOVE                             R6 R4
       23 SETLIST                          R5 R6 1 [1]
       25 RETURN                           R5 1
       26 NEWTABLE                         R4 0 0
       28 LOADN                            R7 1
       29 LENGTH                           R5 R3
       30 MOVE                             R6 R1
       31 FORNPREP                         R5
       32 NEWTABLE                         R8 0 0
       34 MOVE                             R11 R7
       35 ADD                              R14 R7 R1
       36 SUBK                             R13 R14 K5 [1]
       37 LENGTH                           R14 R3
       38 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       40 GETIMPORT                        R12 K8 [math.min]
       42 CALL                             R12 2 1
       43 MOVE                             R9 R12
       44 LOADN                            R10 1
       45 FORNPREP                         R9
       46 GETTABLE                         R14 R3 R11
       47 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
       49 MOVE                             R13 R8
       50 GETIMPORT                        R12 K11 [table.insert]
       52 CALL                             R12 2 0
       53 FORNLOOP                         R9
       54 DUPTABLE                         R11 K4 [{["Type"] = "Column", ["Children"]}]
       55 SETTABLEKS                       R8 R11 K3 ["Children"]
       57 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
       59 MOVE                             R10 R4
       60 GETIMPORT                        R9 K11 [table.insert]
       62 CALL                             R9 2 0
       63 FORNLOOP                         R5
       64 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["map"]
       23 DUPCLOSURE                       R4 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
