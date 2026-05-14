PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Enabled"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 GETTABLEKS                       R1 R0 K1 ["Checked"]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETUPVAL                         R2 1
       10 NAMECALL                         R2 R2 K2 ["RequestRaise"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R4 0 1
        3 GETUPVAL                         R5 1
        4 SETLIST                          R4 R5 1 [1]
        6 NAMECALL                         R2 R2 K0 ["GetAsync"]
        8 CALL                             R2 2 1
        9 GETTABLEN                        R1 R2 1
       10 GETTABLEKS                       R3 R1 K1 ["Enabled"]
       12 AND                              R2 R3 R0
       13 GETUPVAL                         R3 0
       14 DUPTABLE                         R5 K4 [{"Uri", "Checked"}]
       15 GETUPVAL                         R6 1
       16 SETTABLEKS                       R6 R5 K2 ["Uri"]
       18 SETTABLEKS                       R2 R5 K3 ["Checked"]
       20 NAMECALL                         R3 R3 K5 ["UpdateAsync"]
       22 CALL                             R3 2 0
       23 GETUPVAL                         R3 2
       24 SETTABLEKS                       R2 R3 K1 ["Enabled"]
       26 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R5 K0 ["Actions"]
        1 NAMECALL                         R3 R0 K1 ["GetPluginComponent"]
        3 CALL                             R3 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["useState"]
        7 LOADB                            R5 0
        8 CALL                             R4 1 2
        9 GETUPVAL                         R6 1
       10 MOVE                             R9 R2
       11 NAMECALL                         R7 R3 K3 ["BindToChangedAsync"]
       13 CALL                             R7 2 1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          VAL R5
       16 CAPTURE                          VAL R1
       17 NEWTABLE                         R9 0 0
       19 CALL                             R6 3 0
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R2
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 0
       29 CALL                             R6 2 1
       30 MOVE                             R7 R4
       31 MOVE                             R8 R6
       32 RETURN                           R7 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useEventConnection"]
       23 DUPCLOSURE                       R4 K10 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 SETGLOBAL                        R4 K11 ["useActionConnection"]
       28 GETGLOBAL                        R4 K11 ["useActionConnection"]
       30 RETURN                           R4 1
