PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Enabled"]
        3 JUMPIFNOT                        R2 ; [+2]
        4 GETTABLEKS                       R2 R0 K1 ["Checked"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

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
       23 RETURN                           R2 1

PROTO_2:
        0 LOADK                            R4 K0 ["Actions"]
        1 NAMECALL                         R2 R0 K1 ["GetPluginComponent"]
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["useState"]
        7 LOADB                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 MOVE                             R8 R1
       11 NAMECALL                         R6 R2 K3 ["BindToChangedAsync"]
       13 CALL                             R6 2 1
       14 NEWCLOSURE                       R7 P0
       15 CAPTURE                          VAL R4
       16 NEWTABLE                         R8 0 0
       18 CALL                             R5 3 0
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K4 ["useCallback"]
       22 NEWCLOSURE                       R6 P1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R7 0 0
       27 CALL                             R5 2 1
       28 MOVE                             R6 R3
       29 MOVE                             R7 R5
       30 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useEventConnection"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R6 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Types"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_2]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R3
       33 SETGLOBAL                        R5 K13 ["useActionConnection"]
       35 GETGLOBAL                        R5 K13 ["useActionConnection"]
       37 RETURN                           R5 1
