PROTO_0:
        0 DUPTABLE                         R2 K8 [{[1], ["_connections"], ["_listeners"], ["_status"] = "Disabled", ["_isResuming"] = False, ["_instance"]}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_suspendedEventQueue"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["_connections"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K2 ["_listeners"]
       13 SETTABLEKS                       R0 R2 K7 ["_instance"]
       15 GETUPVAL                         R3 0
       16 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       18 GETIMPORT                        R1 K10 [setmetatable]
       20 CALL                             R1 2 1
       21 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R7 R0 K0 ["_instance"]
        3 GETTABLE                         R6 R7 R1
        4 MOVE                             R7 R2
        5 NAMECALL                         R3 R0 K1 ["_connect"]
        7 CALL                             R3 4 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R3 K1 [pcall]
        2 GETTABLEKS                       R4 R0 K2 ["_instance"]
        4 GETTABLEKS                       R4 R4 K3 ["GetPropertyChangedSignal"]
        6 GETTABLEKS                       R5 R0 K2 ["_instance"]
        8 MOVE                             R6 R1
        9 CALL                             R3 3 2
       10 JUMPIF                           R3 ; [+14]
       11 GETIMPORT                        R5 K5 [error]
       13 GETIMPORT                        R6 K8 [string.format]
       15 LOADK                            R7 K9 ["Cannot get changed signal on property %q: %s"]
       16 FASTCALL1                        TOSTRING R1 ; [+3]
       17 MOVE                             R9 R1
       18 GETIMPORT                        R8 K11 [tostring]
       20 CALL                             R8 1 1
       21 MOVE                             R9 R4
       22 CALL                             R6 3 1
       23 LOADN                            R7 0
       24 CALL                             R5 2 0
       25 LOADK                            R8 K12 ["Change."]
       26 MOVE                             R9 R1
       27 CONCAT                           R7 R8 R9
       28 MOVE                             R8 R4
       29 MOVE                             R9 R2
       30 NAMECALL                         R5 R0 K13 ["_connect"]
       32 CALL                             R5 4 0
       33 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_status"]
        4 JUMPIFNOTEQKS                    R0 K1 ["Enabled"] ; [+12]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["_listeners"]
        9 GETUPVAL                         R2 1
       10 GETTABLE                         R0 R1 R2
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K3 ["_instance"]
       14 GETVARARGS                       R2 -1
       15 CALL                             R0 -1 0
       16 RETURN                           R0 0
       17 GETUPVAL                         R0 0
       18 GETTABLEKS                       R0 R0 K0 ["_status"]
       20 JUMPIFNOTEQKS                    R0 K4 ["Suspended"] ; [+22]
       22 LOADK                            R1 K5 ["#"]
       23 FASTCALL1                        SELECT_VARARG R1 ; [+3]
       24 GETIMPORT                        R0 K7 [select]
       26 GETVARARGS                       R2 -1
       27 CALL                             R0 -1 1
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K8 ["_suspendedEventQueue"]
       31 NEWTABLE                         R3 0 2
       33 GETUPVAL                         R4 1
       34 MOVE                             R5 R0
       35 GETVARARGS                       R6 -1
       36 SETLIST                          R3 R4 -1 [1]
       38 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       40 GETIMPORT                        R1 K11 [table.insert]
       42 CALL                             R1 2 0
       43 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R3 ; [+21]
        2 GETTABLEKS                       R5 R0 K0 ["_connections"]
        4 GETTABLE                         R4 R5 R1
        5 JUMPIFEQKNIL                     R4 ; [+11]
        7 GETTABLEKS                       R5 R0 K0 ["_connections"]
        9 GETTABLE                         R4 R5 R1
       10 NAMECALL                         R4 R4 K1 ["Disconnect"]
       12 CALL                             R4 1 0
       13 GETTABLEKS                       R4 R0 K0 ["_connections"]
       15 LOADNIL                          R5
       16 SETTABLE                         R5 R4 R1
       17 GETTABLEKS                       R4 R0 K2 ["_listeners"]
       19 LOADNIL                          R5
       20 SETTABLE                         R5 R4 R1
       21 RETURN                           R0 0
       22 GETTABLEKS                       R5 R0 K0 ["_connections"]
       24 GETTABLE                         R4 R5 R1
       25 JUMPIFNOTEQKNIL                  R4 ; [+10]
       27 GETTABLEKS                       R4 R0 K0 ["_connections"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R1
       32 NAMECALL                         R5 R2 K3 ["Connect"]
       34 CALL                             R5 2 1
       35 SETTABLE                         R5 R4 R1
       36 GETTABLEKS                       R4 R0 K2 ["_listeners"]
       38 SETTABLE                         R3 R4 R1
       39 RETURN                           R0 0

PROTO_5:
        0 LOADK                            R1 K0 ["Suspended"]
        1 SETTABLEKS                       R1 R0 K1 ["_status"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isResuming"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_isResuming"]
        7 GETTABLEKS                       R1 R0 K1 ["_suspendedEventQueue"]
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETTABLEKS                       R7 R0 K2 ["_listeners"]
       14 GETTABLEN                        R8 R5 1
       15 GETTABLE                         R6 R7 R8
       16 GETTABLEN                        R7 R5 2
       17 JUMPIFEQKNIL                     R6 ; [+27]
       19 GETIMPORT                        R8 K5 [coroutine.create]
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 GETIMPORT                        R9 K7 [coroutine.resume]
       25 MOVE                             R10 R8
       26 GETTABLEKS                       R11 R0 K8 ["_instance"]
       28 LOADN                            R14 3
       29 LOADN                            R16 2
       30 ADD                              R15 R16 R7
       31 FASTCALL3                        TABLE_UNPACK R5 R14 R15
       33 MOVE                             R13 R5
       34 GETIMPORT                        R12 K10 [unpack]
       36 CALL                             R12 3 -1
       37 CALL                             R9 -1 2
       38 JUMPIF                           R9 ; [+6]
       39 GETUPVAL                         R11 0
       40 GETTABLEKS                       R11 R11 K11 ["warn"]
       42 LOADK                            R12 K12 ["%s"]
       43 MOVE                             R13 R10
       44 CALL                             R11 2 0
       45 FORGLOOP                         R1 2 ; [-34]
       47 LOADB                            R1 0
       48 SETTABLEKS                       R1 R0 K0 ["_isResuming"]
       50 LOADK                            R1 K13 ["Enabled"]
       51 SETTABLEKS                       R1 R0 K14 ["_status"]
       53 GETIMPORT                        R1 K17 [table.clear]
       55 GETTABLEKS                       R2 R0 K1 ["_suspendedEventQueue"]
       57 CALL                             R1 1 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Shared"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R1 R1 K6 ["console"]
       18 DUPTABLE                         R2 K10 [{["Disabled"] = "Disabled", ["Suspended"] = "Suspended", ["Enabled"] = "Enabled"}]
       19 NEWTABLE                         R3 8 0
       21 SETTABLEKS                       R3 R3 K11 ["__index"]
       23 DUPCLOSURE                       R4 K12 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R4 R3 K13 ["new"]
       27 DUPCLOSURE                       R4 K14 [PROTO_1]
       28 SETTABLEKS                       R4 R3 K15 ["connectEvent"]
       30 DUPCLOSURE                       R4 K16 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K17 ["connectPropertyChange"]
       33 DUPCLOSURE                       R4 K18 [PROTO_4]
       34 SETTABLEKS                       R4 R3 K19 ["_connect"]
       36 DUPCLOSURE                       R4 K20 [PROTO_5]
       37 SETTABLEKS                       R4 R3 K21 ["suspend"]
       39 DUPCLOSURE                       R4 K22 [PROTO_6]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R4 R3 K23 ["resume"]
       43 RETURN                           R3 1
