PROTO_0:
        0 LOADK                            R4 K0 ["RecentlyUsed"]
        1 NAMECALL                         R2 R0 K1 ["GetSetting"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+5]
        5 NEWTABLE                         R2 0 1
        7 LOADK                            R3 K2 ["Plastic"]
        8 SETLIST                          R2 R3 1 [1]
       10 GETUPVAL                         R3 0
       11 MOVE                             R4 R1
       12 CALL                             R3 1 1
       13 GETIMPORT                        R4 K5 [table.find]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 1
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETIMPORT                        R5 K7 [table.remove]
       21 MOVE                             R6 R2
       22 MOVE                             R7 R4
       23 CALL                             R5 2 0
       24 FASTCALL2                        TABLE_INSERT R2 R3 ; [+5]
       26 MOVE                             R6 R2
       27 MOVE                             R7 R3
       28 GETIMPORT                        R5 K9 [table.insert]
       30 CALL                             R5 2 0
       31 LENGTH                           R5 R2
       32 LOADN                            R6 15
       33 JUMPIFNOTLT                      R6 R5 ; [+6]
       35 GETIMPORT                        R5 K7 [table.remove]
       37 MOVE                             R6 R2
       38 LOADN                            R7 1
       39 CALL                             R5 2 0
       40 LOADK                            R7 K0 ["RecentlyUsed"]
       41 MOVE                             R8 R2
       42 NAMECALL                         R5 R0 K10 ["SetSetting"]
       44 CALL                             R5 3 0
       45 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["MaterialFramework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["getSerializedMaterialIdentifier"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 RETURN                           R3 1
