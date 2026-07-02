PROTO_0:
        0 JUMPIF                           R1 ; [+2]
        1 LOADN                            R4 1
        2 JUMP                             ; [+1]
        3 LOADN                            R4 0
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADN                            R5 18
        6 JUMP                             ; [+1]
        7 LOADN                            R5 0
        8 JUMPIFNOT                        R3 ; [+2]
        9 LOADN                            R6 40
       10 JUMP                             ; [+1]
       11 LOADN                            R6 56
       12 ADD                              R8 R4 R6
       13 ADD                              R7 R8 R5
       14 JUMPIFNOT                        R0 ; [+4]
       15 JUMPIFNOT                        R1 ; [+1]
       16 RETURN                           R7 1
       17 ADDK                             R8 R7 K0 [36]
       18 RETURN                           R8 1
       19 RETURN                           R7 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetUri"]
        2 CALL                             R1 1 1
        3 DUPTABLE                         R3 K12 [{["width"] = 0, ["expanded"] = False, ["floating"] = False, ["showLabels"] = False, ["compactDensity"] = False, ["plugin"], ["panelUri"], ["floatingUri"], ["Panels"]}]
        4 SETTABLEKS                       R0 R3 K8 ["plugin"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K13 ["join"]
        9 MOVE                             R5 R1
       10 DUPTABLE                         R6 K17 [{["Category"] = "Panels", ["ItemId"] = "Ribbon"}]
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K9 ["panelUri"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K13 ["join"]
       17 MOVE                             R5 R1
       18 DUPTABLE                         R6 K19 [{["Category"] = "Panels", ["ItemId"] = "Floating"}]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K10 ["floatingUri"]
       22 LOADK                            R6 K11 ["Panels"]
       23 NAMECALL                         R4 R0 K20 ["GetPluginComponent"]
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K11 ["Panels"]
       28 DUPTABLE                         R4 K22 [{"__index"}]
       29 GETUPVAL                         R5 1
       30 SETTABLEKS                       R5 R4 K21 ["__index"]
       32 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       34 GETIMPORT                        R2 K24 [setmetatable]
       36 CALL                             R2 2 1
       37 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+48]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETUPVAL                         R0 2
        5 GETTABLEKS                       R0 R0 K0 ["Panels"]
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K1 ["floatingUri"]
       10 GETIMPORT                        R3 K4 [Vector2.new]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K5 ["width"]
       15 GETUPVAL                         R5 3
       16 CALL                             R3 2 -1
       17 NAMECALL                         R0 R0 K6 ["SetSizeAsync"]
       19 CALL                             R0 -1 0
       20 GETUPVAL                         R0 2
       21 GETTABLEKS                       R0 R0 K0 ["Panels"]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K7 ["panelUri"]
       26 GETIMPORT                        R3 K4 [Vector2.new]
       28 LOADN                            R4 0
       29 LOADN                            R5 36
       30 CALL                             R3 2 -1
       31 NAMECALL                         R0 R0 K6 ["SetSizeAsync"]
       33 CALL                             R0 -1 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 2
       36 GETTABLEKS                       R0 R0 K0 ["Panels"]
       38 GETUPVAL                         R2 2
       39 GETTABLEKS                       R2 R2 K7 ["panelUri"]
       41 GETIMPORT                        R3 K4 [Vector2.new]
       43 LOADN                            R4 0
       44 GETUPVAL                         R5 3
       45 CALL                             R3 2 -1
       46 NAMECALL                         R0 R0 K6 ["SetSizeAsync"]
       48 CALL                             R0 -1 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R0 2
       51 GETTABLEKS                       R0 R0 K0 ["Panels"]
       53 GETUPVAL                         R2 2
       54 GETTABLEKS                       R2 R2 K7 ["panelUri"]
       56 GETIMPORT                        R3 K4 [Vector2.new]
       58 LOADN                            R4 0
       59 LOADN                            R5 36
       60 CALL                             R3 2 -1
       61 NAMECALL                         R0 R0 K6 ["SetSizeAsync"]
       63 CALL                             R0 -1 0
       64 RETURN                           R0 0

PROTO_3:
        0 SETTABLEKS                       R1 R0 K0 ["expanded"]
        2 SETTABLEKS                       R2 R0 K1 ["floating"]
        4 SETTABLEKS                       R3 R0 K2 ["showLabels"]
        6 SETTABLEKS                       R4 R0 K3 ["compactDensity"]
        8 GETTABLEKS                       R6 R0 K0 ["expanded"]
       10 GETTABLEKS                       R7 R0 K1 ["floating"]
       12 GETTABLEKS                       R8 R0 K2 ["showLabels"]
       14 GETTABLEKS                       R9 R0 K3 ["compactDensity"]
       16 JUMPIF                           R7 ; [+2]
       17 LOADN                            R10 1
       18 JUMP                             ; [+1]
       19 LOADN                            R10 0
       20 JUMPIFNOT                        R8 ; [+2]
       21 LOADN                            R11 18
       22 JUMP                             ; [+1]
       23 LOADN                            R11 0
       24 JUMPIFNOT                        R9 ; [+2]
       25 LOADN                            R12 40
       26 JUMP                             ; [+1]
       27 LOADN                            R12 56
       28 ADD                              R14 R10 R12
       29 ADD                              R13 R14 R11
       30 JUMPIFNOT                        R6 ; [+5]
       31 JUMPIFNOT                        R7 ; [+2]
       32 MOVE                             R5 R13
       33 JUMP                             ; [+3]
       34 ADDK                             R5 R13 K4 [36]
       35 JUMP                             ; [+1]
       36 MOVE                             R5 R13
       37 GETIMPORT                        R6 K6 [pcall]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R5
       44 CALL                             R6 1 0
       45 RETURN                           R0 0

PROTO_4:
        0 SETTABLEKS                       R1 R0 K0 ["width"]
        2 GETTABLEKS                       R2 R0 K1 ["floating"]
        4 JUMPIFNOT                        R2 ; [+42]
        5 GETTABLEKS                       R3 R0 K2 ["expanded"]
        7 GETTABLEKS                       R4 R0 K1 ["floating"]
        9 GETTABLEKS                       R5 R0 K3 ["showLabels"]
       11 GETTABLEKS                       R6 R0 K4 ["compactDensity"]
       13 JUMPIF                           R4 ; [+2]
       14 LOADN                            R7 1
       15 JUMP                             ; [+1]
       16 LOADN                            R7 0
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADN                            R8 18
       19 JUMP                             ; [+1]
       20 LOADN                            R8 0
       21 JUMPIFNOT                        R6 ; [+2]
       22 LOADN                            R9 40
       23 JUMP                             ; [+1]
       24 LOADN                            R9 56
       25 ADD                              R11 R7 R9
       26 ADD                              R10 R11 R8
       27 JUMPIFNOT                        R3 ; [+5]
       28 JUMPIFNOT                        R4 ; [+2]
       29 MOVE                             R2 R10
       30 JUMP                             ; [+3]
       31 ADDK                             R2 R10 K5 [36]
       32 JUMP                             ; [+1]
       33 MOVE                             R2 R10
       34 GETTABLEKS                       R3 R0 K6 ["Panels"]
       36 GETTABLEKS                       R5 R0 K7 ["floatingUri"]
       38 GETIMPORT                        R6 K10 [Vector2.new]
       40 GETTABLEKS                       R7 R0 K0 ["width"]
       42 MOVE                             R8 R2
       43 CALL                             R6 2 -1
       44 NAMECALL                         R3 R3 K11 ["SetSizeAsync"]
       46 CALL                             R3 -1 0
       47 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["StudioFoundation"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Util"]
       16 GETTABLEKS                       R2 R2 K9 ["StudioUri"]
       18 DUPCLOSURE                       R3 K10 [PROTO_0]
       19 NEWTABLE                         R4 4 0
       21 DUPCLOSURE                       R5 K11 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R4
       24 SETTABLEKS                       R5 R4 K12 ["new"]
       26 DUPCLOSURE                       R5 K13 [PROTO_3]
       27 SETTABLEKS                       R5 R4 K14 ["update"]
       29 DUPCLOSURE                       R5 K15 [PROTO_4]
       30 SETTABLEKS                       R5 R4 K16 ["setWidth"]
       32 RETURN                           R4 1
