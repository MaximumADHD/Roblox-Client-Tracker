PROTO_0:
        0 DUPTABLE                         R2 K6 [{"_suspendedEventQueue", "_connections", "_listeners", "_status", "_isResuming", "_instance"}]
        1 NEWTABLE                         R3 0 0
        3 SETTABLEKS                       R3 R2 K0 ["_suspendedEventQueue"]
        5 NEWTABLE                         R3 0 0
        7 SETTABLEKS                       R3 R2 K1 ["_connections"]
        9 NEWTABLE                         R3 0 0
       11 SETTABLEKS                       R3 R2 K2 ["_listeners"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K7 ["Disabled"]
       16 SETTABLEKS                       R3 R2 K3 ["_status"]
       18 LOADB                            R3 0
       19 SETTABLEKS                       R3 R2 K4 ["_isResuming"]
       21 SETTABLEKS                       R0 R2 K5 ["_instance"]
       23 GETUPVAL                         R3 1
       24 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       26 GETIMPORT                        R1 K9 [setmetatable]
       28 CALL                             R1 2 1
       29 RETURN                           R1 1

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
       13 LOADK                            R6 K6 ["Cannot get changed signal on property %q: %s"]
       14 FASTCALL1                        TOSTRING R1 ; [+3]
       15 MOVE                             R9 R1
       16 GETIMPORT                        R8 K8 [tostring]
       18 CALL                             R8 1 1
       19 MOVE                             R9 R4
       20 NAMECALL                         R6 R6 K9 ["format"]
       22 CALL                             R6 3 1
       23 LOADN                            R7 0
       24 CALL                             R5 2 0
       25 LOADK                            R8 K10 ["Change."]
       26 MOVE                             R9 R1
       27 CONCAT                           R7 R8 R9
       28 MOVE                             R8 R4
       29 MOVE                             R9 R2
       30 NAMECALL                         R5 R0 K11 ["_connect"]
       32 CALL                             R5 4 0
       33 RETURN                           R0 0

PROTO_3:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["_status"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["Enabled"]
        7 JUMPIFNOTEQ                      R0 R1 ; [+12]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K2 ["_listeners"]
       12 GETUPVAL                         R2 2
       13 GETTABLE                         R0 R1 R2
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K3 ["_instance"]
       17 GETVARARGS                       R2 -1
       18 CALL                             R0 -1 0
       19 RETURN                           R0 0
       20 GETUPVAL                         R0 0
       21 GETTABLEKS                       R0 R0 K0 ["_status"]
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K4 ["Suspended"]
       26 JUMPIFNOTEQ                      R0 R1 ; [+22]
       28 LOADK                            R1 K5 ["#"]
       29 FASTCALL1                        SELECT_VARARG R1 ; [+3]
       30 GETIMPORT                        R0 K7 [select]
       32 GETVARARGS                       R2 -1
       33 CALL                             R0 -1 1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K8 ["_suspendedEventQueue"]
       37 NEWTABLE                         R3 0 2
       39 GETUPVAL                         R4 2
       40 MOVE                             R5 R0
       41 GETVARARGS                       R6 -1
       42 SETLIST                          R3 R4 -1 [1]
       44 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       46 GETIMPORT                        R1 K11 [table.insert]
       48 CALL                             R1 2 0
       49 RETURN                           R0 0

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
       25 JUMPIFNOTEQKNIL                  R4 ; [+11]
       27 GETTABLEKS                       R4 R0 K0 ["_connections"]
       29 NEWCLOSURE                       R7 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R1
       33 NAMECALL                         R5 R2 K3 ["Connect"]
       35 CALL                             R5 2 1
       36 SETTABLE                         R5 R4 R1
       37 GETTABLEKS                       R4 R0 K2 ["_listeners"]
       39 SETTABLE                         R3 R4 R1
       40 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Suspended"]
        3 SETTABLEKS                       R1 R0 K1 ["_status"]
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["_isResuming"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_isResuming"]
        7 GETIMPORT                        R1 K2 [ipairs]
        9 GETTABLEKS                       R2 R0 K3 ["_suspendedEventQueue"]
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETTABLEKS                       R7 R0 K4 ["_listeners"]
       15 GETTABLEN                        R8 R5 1
       16 GETTABLE                         R6 R7 R8
       17 GETTABLEN                        R7 R5 2
       18 JUMPIFEQKNIL                     R6 ; [+27]
       20 GETIMPORT                        R8 K7 [coroutine.create]
       22 MOVE                             R9 R6
       23 CALL                             R8 1 1
       24 GETIMPORT                        R9 K9 [coroutine.resume]
       26 MOVE                             R10 R8
       27 GETTABLEKS                       R11 R0 K10 ["_instance"]
       29 LOADN                            R14 3
       30 LOADN                            R16 2
       31 ADD                              R15 R16 R7
       32 FASTCALL3                        TABLE_UNPACK R5 R14 R15
       34 MOVE                             R13 R5
       35 GETIMPORT                        R12 K12 [unpack]
       37 CALL                             R12 3 -1
       38 CALL                             R9 -1 2
       39 JUMPIF                           R9 ; [+6]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K13 ["warn"]
       43 LOADK                            R12 K14 ["%s"]
       44 MOVE                             R13 R10
       45 CALL                             R11 2 0
       46 FORGLOOP                         R1 2 [inext] ; [-34]
       48 LOADB                            R1 0
       49 SETTABLEKS                       R1 R0 K0 ["_isResuming"]
       51 GETUPVAL                         R1 1
       52 GETTABLEKS                       R1 R1 K15 ["Enabled"]
       54 SETTABLEKS                       R1 R0 K16 ["_status"]
       56 GETIMPORT                        R1 K19 [table.clear]
       58 GETTABLEKS                       R2 R0 K3 ["_suspendedEventQueue"]
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

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
       18 DUPTABLE                         R2 K10 [{"Disabled", "Suspended", "Enabled"}]
       19 LOADK                            R3 K7 ["Disabled"]
       20 SETTABLEKS                       R3 R2 K7 ["Disabled"]
       22 LOADK                            R3 K8 ["Suspended"]
       23 SETTABLEKS                       R3 R2 K8 ["Suspended"]
       25 LOADK                            R3 K9 ["Enabled"]
       26 SETTABLEKS                       R3 R2 K9 ["Enabled"]
       28 NEWTABLE                         R3 8 0
       30 SETTABLEKS                       R3 R3 K11 ["__index"]
       32 DUPCLOSURE                       R4 K12 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R4 R3 K13 ["new"]
       37 DUPCLOSURE                       R4 K14 [PROTO_1]
       38 SETTABLEKS                       R4 R3 K15 ["connectEvent"]
       40 DUPCLOSURE                       R4 K16 [PROTO_2]
       41 SETTABLEKS                       R4 R3 K17 ["connectPropertyChange"]
       43 DUPCLOSURE                       R4 K18 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 SETTABLEKS                       R4 R3 K19 ["_connect"]
       47 DUPCLOSURE                       R4 K20 [PROTO_5]
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R4 R3 K21 ["suspend"]
       51 DUPCLOSURE                       R4 K22 [PROTO_6]
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R2
       54 SETTABLEKS                       R4 R3 K23 ["resume"]
       56 RETURN                           R3 1
