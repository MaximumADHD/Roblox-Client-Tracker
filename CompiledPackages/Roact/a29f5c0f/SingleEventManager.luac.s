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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_instance"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R3 K1 [pcall]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R3 1 2
        6 JUMPIF                           R3 ; [+14]
        7 GETIMPORT                        R5 K3 [error]
        9 LOADK                            R6 K4 ["Cannot get changed signal on property %q: %s"]
       10 FASTCALL1                        TOSTRING R1 ; [+3]
       11 MOVE                             R9 R1
       12 GETIMPORT                        R8 K6 [tostring]
       14 CALL                             R8 1 1
       15 MOVE                             R9 R4
       16 NAMECALL                         R6 R6 K7 ["format"]
       18 CALL                             R6 3 1
       19 LOADN                            R7 0
       20 CALL                             R5 2 0
       21 LOADK                            R8 K8 ["Change."]
       22 MOVE                             R9 R1
       23 CONCAT                           R7 R8 R9
       24 MOVE                             R8 R4
       25 MOVE                             R9 R2
       26 NAMECALL                         R5 R0 K9 ["_connect"]
       28 CALL                             R5 4 0
       29 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 LOADK                            R1 K0 ["Suspended"]
        1 SETTABLEKS                       R1 R0 K1 ["_status"]
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_isResuming"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_isResuming"]
        7 LOADN                            R1 1
        8 GETTABLEKS                       R3 R0 K1 ["_suspendedEventQueue"]
       10 LENGTH                           R2 R3
       11 JUMPIFNOTLE                      R1 R2 ; [+39]
       13 GETTABLEKS                       R3 R0 K1 ["_suspendedEventQueue"]
       15 GETTABLE                         R2 R3 R1
       16 GETTABLEKS                       R4 R0 K2 ["_listeners"]
       18 GETTABLEN                        R5 R2 1
       19 GETTABLE                         R3 R4 R5
       20 GETTABLEN                        R4 R2 2
       21 JUMPIFEQKNIL                     R3 ; [+27]
       23 GETIMPORT                        R5 K5 [coroutine.create]
       25 MOVE                             R6 R3
       26 CALL                             R5 1 1
       27 GETIMPORT                        R6 K7 [coroutine.resume]
       29 MOVE                             R7 R5
       30 GETTABLEKS                       R8 R0 K8 ["_instance"]
       32 LOADN                            R11 3
       33 LOADN                            R13 2
       34 ADD                              R12 R13 R4
       35 FASTCALL3                        TABLE_UNPACK R2 R11 R12
       37 MOVE                             R10 R2
       38 GETIMPORT                        R9 K10 [unpack]
       40 CALL                             R9 3 -1
       41 CALL                             R6 -1 2
       42 JUMPIF                           R6 ; [+6]
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K11 ["warn"]
       46 LOADK                            R9 K12 ["%s"]
       47 MOVE                             R10 R7
       48 CALL                             R8 2 0
       49 ADDK                             R1 R1 K13 [1]
       50 JUMPBACK                         ; [-43]
       51 LOADB                            R2 0
       52 SETTABLEKS                       R2 R0 K0 ["_isResuming"]
       54 LOADK                            R2 K14 ["Enabled"]
       55 SETTABLEKS                       R2 R0 K15 ["_status"]
       57 NEWTABLE                         R2 0 0
       59 SETTABLEKS                       R2 R0 K1 ["_suspendedEventQueue"]
       61 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Logging"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K9 [{["Disabled"] = "Disabled", ["Suspended"] = "Suspended", ["Enabled"] = "Enabled"}]
       11 NEWTABLE                         R2 8 0
       13 SETTABLEKS                       R2 R2 K10 ["__index"]
       15 DUPCLOSURE                       R3 K11 [PROTO_0]
       16 CAPTURE                          VAL R2
       17 SETTABLEKS                       R3 R2 K12 ["new"]
       19 DUPCLOSURE                       R3 K13 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K14 ["connectEvent"]
       22 DUPCLOSURE                       R3 K15 [PROTO_3]
       23 SETTABLEKS                       R3 R2 K16 ["connectPropertyChange"]
       25 DUPCLOSURE                       R3 K17 [PROTO_5]
       26 SETTABLEKS                       R3 R2 K18 ["_connect"]
       28 DUPCLOSURE                       R3 K19 [PROTO_6]
       29 SETTABLEKS                       R3 R2 K20 ["suspend"]
       31 DUPCLOSURE                       R3 K21 [PROTO_7]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R2 K22 ["resume"]
       35 RETURN                           R2 1
