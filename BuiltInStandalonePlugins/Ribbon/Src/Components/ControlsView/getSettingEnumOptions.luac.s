PROTO_0:
        0 SUBK                             R2 R1 K0 [1]
        1 DUPTABLE                         R3 K8 [{"Type", "Id", "Action", "Selected", "Setting", "SettingValue", "Size"}]
        2 LOADK                            R4 K9 ["Option"]
        3 SETTABLEKS                       R4 R3 K1 ["Type"]
        5 GETTABLEKS                       R4 R0 K2 ["Id"]
        7 SETTABLEKS                       R4 R3 K2 ["Id"]
        9 GETTABLEKS                       R4 R0 K3 ["Action"]
       11 SETTABLEKS                       R4 R3 K3 ["Action"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K10 ["Value"]
       16 JUMPIFEQ                         R2 R5 ; [+2]
       18 LOADB                            R4 0 +1
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K4 ["Selected"]
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K11 ["Uri"]
       25 SETTABLEKS                       R4 R3 K5 ["Setting"]
       27 SETTABLEKS                       R2 R3 K6 ["SettingValue"]
       29 GETUPVAL                         R4 1
       30 SETTABLEKS                       R4 R3 K7 ["Size"]
       32 RETURN                           R3 1

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
       15 JUMPIFNOTLE                      R4 R1 ; [+13]
       17 DUPTABLE                         R4 K3 [{"Type", "Children"}]
       18 LOADK                            R5 K4 ["Column"]
       19 SETTABLEKS                       R5 R4 K1 ["Type"]
       21 SETTABLEKS                       R3 R4 K2 ["Children"]
       23 NEWTABLE                         R5 0 1
       25 MOVE                             R6 R4
       26 SETLIST                          R5 R6 1 [1]
       28 RETURN                           R5 1
       29 NEWTABLE                         R4 0 0
       31 LOADN                            R7 1
       32 LENGTH                           R5 R3
       33 MOVE                             R6 R1
       34 FORNPREP                         R5
       35 NEWTABLE                         R8 0 0
       37 MOVE                             R11 R7
       38 ADD                              R14 R7 R1
       39 SUBK                             R13 R14 K5 [1]
       40 LENGTH                           R14 R3
       41 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       43 GETIMPORT                        R12 K8 [math.min]
       45 CALL                             R12 2 1
       46 MOVE                             R9 R12
       47 LOADN                            R10 1
       48 FORNPREP                         R9
       49 GETTABLE                         R14 R3 R11
       50 FASTCALL2                        TABLE_INSERT R8 R14 ; [+4]
       52 MOVE                             R13 R8
       53 GETIMPORT                        R12 K11 [table.insert]
       55 CALL                             R12 2 0
       56 FORNLOOP                         R9
       57 DUPTABLE                         R11 K3 [{"Type", "Children"}]
       58 LOADK                            R12 K4 ["Column"]
       59 SETTABLEKS                       R12 R11 K1 ["Type"]
       61 SETTABLEKS                       R8 R11 K2 ["Children"]
       63 FASTCALL2                        TABLE_INSERT R4 R11 ; [+4]
       65 MOVE                             R10 R4
       66 GETIMPORT                        R9 K11 [table.insert]
       68 CALL                             R9 2 0
       69 FORNLOOP                         R5
       70 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["map"]
       23 DUPCLOSURE                       R4 K11 [PROTO_1]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
