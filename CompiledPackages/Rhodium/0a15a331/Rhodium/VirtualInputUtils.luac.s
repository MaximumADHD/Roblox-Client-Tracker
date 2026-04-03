PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 MOVE                             R7 R5
        8 MOVE                             R8 R0
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       13 MOVE                             R9 R1
       14 MOVE                             R10 R5
       15 GETIMPORT                        R8 K4 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 GETIMPORT                        R2 K6 [ipairs]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 3
       24 FORGPREP_INEXT                   R2
       25 GETUPVAL                         R7 0
       26 LOADNIL                          R8
       27 SETTABLE                         R8 R7 R6
       28 FORGLOOP                         R2 2 [inext] ; [-4]
       30 GETIMPORT                        R2 K1 [pairs]
       32 GETUPVAL                         R3 1
       33 CALL                             R2 1 3
       34 FORGPREP_NEXT                    R2
       35 GETUPVAL                         R8 1
       36 GETTABLE                         R7 R8 R5
       37 JUMPIFNOTEQKB                    R7 FALSE ; [+5]
       39 GETUPVAL                         R7 1
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R7 R5
       42 JUMP                             ; [+4]
       43 MOVE                             R9 R0
       44 NAMECALL                         R7 R5 K7 ["Fire"]
       46 CALL                             R7 2 0
       47 FORGLOOP                         R2 2 ; [-13]
       49 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["WaitForInputEventsProcessed"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 1
        2 SETTABLE                         R2 R1 R0
        3 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["BindableEvent"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADB                            R3 1
        6 SETTABLE                         R3 R2 R1
        7 LOADN                            R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R2
       10 CALL                             R3 1 1
       11 JUMPIF                           R3 ; [+7]
       12 GETTABLEKS                       R4 R1 K4 ["Event"]
       14 NAMECALL                         R4 R4 K5 ["Wait"]
       16 CALL                             R4 1 1
       17 MOVE                             R2 R4
       18 JUMPBACK                         ; [-11]
       19 GETUPVAL                         R3 0
       20 LOADB                            R4 0
       21 SETTABLE                         R4 R3 R1
       22 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetGuiInset"]
        3 CALL                             R2 1 2
        4 GETTABLEKS                       R5 R2 K1 ["X"]
        6 ADD                              R4 R0 R5
        7 GETTABLEKS                       R6 R2 K2 ["Y"]
        9 ADD                              R5 R1 R6
       10 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["GuiService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["VirtualInputManager"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 0 0
       21 NEWTABLE                         R4 0 0
       23 GETTABLEKS                       R5 R0 K6 ["Heartbeat"]
       25 DUPCLOSURE                       R7 K7 [PROTO_0]
       26 CAPTURE                          VAL R3
       27 CAPTURE                          VAL R4
       28 NAMECALL                         R5 R5 K8 ["Connect"]
       30 CALL                             R5 2 0
       31 NEWTABLE                         R5 8 0
       33 LOADNIL                          R6
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          REF R6
       36 SETTABLEKS                       R7 R5 K9 ["setCurrentWindow"]
       38 NEWCLOSURE                       R7 P2
       39 CAPTURE                          REF R6
       40 SETTABLEKS                       R7 R5 K10 ["getCurrentWindow"]
       42 DUPCLOSURE                       R7 K11 [PROTO_3]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R7 R5 K12 ["waitForInputEventsProcessed"]
       46 DUPCLOSURE                       R7 K13 [PROTO_4]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R7 R5 K14 ["__asyncRun"]
       50 DUPCLOSURE                       R7 K15 [PROTO_5]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R5 K16 ["__syncRun"]
       54 DUPCLOSURE                       R7 K17 [PROTO_6]
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R7 R5 K18 ["__handleGuiInset"]
       58 CLOSEUPVALS                      R6
       59 RETURN                           R5 1
