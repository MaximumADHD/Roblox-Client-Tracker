PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Children"]
        2 JUMPIF                           R1 ; [+2]
        3 NEWTABLE                         R1 0 0
        5 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"_interface"}]
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R0
        4 CALL                             R2 2 1
        5 SETTABLEKS                       R2 R1 K0 ["_interface"]
        7 GETUPVAL                         R4 2
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [setmetatable]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R5 R1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R7 R2 K0 ["Path"]
        4 LOADN                            R8 1
        5 LOADN                            R9 -1
        6 CALL                             R6 3 -1
        7 NAMECALL                         R3 R0 K1 ["getChild"]
        9 CALL                             R3 -1 -1
       10 RETURN                           R3 -1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+7]
        1 GETTABLEKS                       R2 R0 K0 ["Children"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETTABLEKS                       R3 R0 K0 ["Children"]
        6 GETTABLE                         R2 R3 R1
        7 RETURN                           R2 1
        8 LOADNIL                          R2
        9 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 DUPCLOSURE                       R5 K0 [PROTO_4]
        3 DUPTABLE                         R6 K2 [{"Children"}]
        4 SETTABLEKS                       R1 R6 K1 ["Children"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 JUMPIFNOT                        R4 ; [+2]
        2 GETUPVAL                         R3 0
        3 JUMP                             ; [+2]
        4 LENGTH                           R4 R0
        5 ADDK                             R3 R4 K0 [1]
        6 GETUPVAL                         R4 1
        7 FASTCALL3                        TABLE_INSERT R0 R3 R4
        9 MOVE                             R2 R0
       10 GETUPVAL                         R1 2
       11 CALL                             R1 3 0
       12 GETUPVAL                         R1 3
       13 MOVE                             R3 R0
       14 GETUPVAL                         R4 4
       15 NAMECALL                         R1 R1 K1 ["updatePaths"]
       17 CALL                             R1 3 0
       18 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R7 R1
        1 MOVE                             R8 R2
        2 NEWCLOSURE                       R9 P0
        3 CAPTURE                          VAL R4
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 NAMECALL                         R5 R0 K0 ["modifyChildren"]
       10 CALL                             R5 4 -1
       11 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R5 0
        1 FASTCALL1                        TYPEOF R5 ; [+2]
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["expected last entry in path array to be number"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R2 R0 R3
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["_interface"]
       20 GETTABLEKS                       R3 R3 K7 ["getChildren"]
       22 MOVE                             R4 R2
       23 CALL                             R3 1 1
       24 GETTABLEKS                       R4 R1 K8 ["Expansion"]
       26 LOADNIL                          R5
       27 SETTABLE                         R5 R4 R3
       28 GETTABLEKS                       R4 R1 K9 ["Selection"]
       30 LOADNIL                          R5
       31 SETTABLE                         R5 R4 R3
       32 GETUPVAL                         R4 2
       33 MOVE                             R5 R0
       34 GETUPVAL                         R6 0
       35 CALL                             R4 2 0
       36 GETUPVAL                         R4 1
       37 MOVE                             R6 R0
       38 GETUPVAL                         R7 3
       39 NAMECALL                         R4 R4 K10 ["updatePaths"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R2
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R3
        5 CALL                             R4 1 1
        6 MOVE                             R7 R1
        7 MOVE                             R8 R3
        8 NEWCLOSURE                       R9 P0
        9 CAPTURE                          VAL R4
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R3
       13 NAMECALL                         R5 R0 K0 ["modifyChildren"]
       15 CALL                             R5 4 -1
       16 RETURN                           R5 -1

PROTO_10:
        0 GETTABLEKS                       R6 R1 K0 ["Items"]
        2 MOVE                             R7 R2
        3 NAMECALL                         R4 R0 K1 ["getChild"]
        5 CALL                             R4 3 1
        6 JUMPIFNOTEQKNIL                  R4 ; [+2]
        8 LOADB                            R6 0 +1
        9 LOADB                            R6 1
       10 FASTCALL2K                       ASSERT R6 K2 ; [+4]
       12 LOADK                            R7 K2 ["expecting item to exist at given path"]
       13 GETIMPORT                        R5 K4 [assert]
       15 CALL                             R5 2 0
       16 GETTABLEKS                       R5 R0 K5 ["_interface"]
       18 GETTABLEKS                       R5 R5 K6 ["getId"]
       20 MOVE                             R6 R4
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R7 R1 K7 ["Expansion"]
       25 CALL                             R6 1 1
       26 JUMPIFNOTEQKNIL                  R3 ; [+4]
       28 GETTABLE                         R8 R6 R5
       29 NOT                              R7 R8
       30 JUMP                             ; [+1]
       31 MOVE                             R7 R3
       32 SETTABLE                         R7 R6 R5
       33 GETUPVAL                         R7 1
       34 MOVE                             R8 R1
       35 DUPTABLE                         R9 K8 [{"Expansion"}]
       36 SETTABLEKS                       R6 R9 K7 ["Expansion"]
       38 CALL                             R7 2 -1
       39 RETURN                           R7 -1

PROTO_11:
        0 GETUPVAL                         R5 0
        1 FASTCALL1                        TYPEOF R5 ; [+2]
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["number"] ; [+2]
        7 LOADB                            R3 0 +1
        8 LOADB                            R3 1
        9 FASTCALL2K                       ASSERT R3 K3 ; [+4]
       11 LOADK                            R4 K3 ["expected last entry in path array to be number"]
       12 GETIMPORT                        R2 K5 [assert]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLE                         R2 R0 R3
       17 JUMPIF                           R2 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R2
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 2
       23 MOVE                             R6 R1
       24 MOVE                             R7 R2
       25 MOVE                             R8 R3
       26 NAMECALL                         R4 R4 K6 ["migrateItemState"]
       28 CALL                             R4 4 0
       29 GETUPVAL                         R4 0
       30 SETTABLE                         R3 R0 R4
       31 GETUPVAL                         R4 3
       32 GETUPVAL                         R6 4
       33 GETTABLE                         R5 R3 R6
       34 GETUPVAL                         R6 5
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 4
       37 SETTABLE                         R4 R3 R5
       38 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R5 0
        1 MOVE                             R6 R3
        2 CALL                             R5 1 1
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R5
        5 CALL                             R6 1 1
        6 GETTABLEKS                       R8 R1 K0 ["Columns"]
        8 GETTABLE                         R7 R8 R4
        9 GETTABLEKS                       R7 R7 K1 ["Key"]
       11 MOVE                             R10 R1
       12 MOVE                             R11 R5
       13 NEWCLOSURE                       R12 P0
       14 CAPTURE                          VAL R6
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R7
       19 CAPTURE                          VAL R2
       20 NAMECALL                         R8 R0 K2 ["modifyChildren"]
       22 CALL                             R8 4 -1
       23 RETURN                           R8 -1

PROTO_13:
        0 GETTABLEKS                       R4 R0 K0 ["_interface"]
        2 GETTABLEKS                       R4 R4 K1 ["getId"]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 1
        6 GETTABLEKS                       R5 R0 K0 ["_interface"]
        8 GETTABLEKS                       R5 R5 K1 ["getId"]
       10 MOVE                             R6 R3
       11 CALL                             R5 1 1
       12 JUMPIFNOTEQ                      R4 R5 ; [+2]
       14 RETURN                           R0 0
       15 GETTABLEKS                       R7 R1 K2 ["Expansion"]
       17 GETTABLE                         R6 R7 R4
       18 JUMPIFEQKNIL                     R6 ; [+11]
       20 GETTABLEKS                       R6 R1 K2 ["Expansion"]
       22 GETTABLEKS                       R8 R1 K2 ["Expansion"]
       24 GETTABLE                         R7 R8 R4
       25 SETTABLE                         R7 R6 R5
       26 GETTABLEKS                       R6 R1 K2 ["Expansion"]
       28 LOADNIL                          R7
       29 SETTABLE                         R7 R6 R4
       30 GETTABLEKS                       R7 R1 K3 ["Selection"]
       32 GETTABLE                         R6 R7 R4
       33 JUMPIFEQKNIL                     R6 ; [+11]
       35 GETTABLEKS                       R6 R1 K3 ["Selection"]
       37 GETTABLEKS                       R8 R1 K3 ["Selection"]
       39 GETTABLE                         R7 R8 R4
       40 SETTABLE                         R7 R6 R5
       41 GETTABLEKS                       R6 R1 K3 ["Selection"]
       43 LOADNIL                          R7
       44 SETTABLE                         R7 R6 R4
       45 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["Children"]
        6 JUMPIFNOTEQKNIL                  R1 ; [+2]
        8 RETURN                           R0 0
        9 LOADB                            R2 0
       10 GETUPVAL                         R3 0
       11 JUMPIFEQKNIL                     R3 ; [+8]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["Children"]
       16 JUMPIFNOTEQKNIL                  R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K1 ; [+4]
       22 LOADK                            R3 K1 ["expecting item and children to be valid"]
       23 GETIMPORT                        R1 K3 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K0 ["Children"]
       29 GETTABLE                         R1 R2 R0
       30 JUMPIFNOT                        R1 ; [+16]
       31 GETUPVAL                         R2 1
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 GETUPVAL                         R3 2
       35 GETUPVAL                         R5 3
       36 MOVE                             R6 R1
       37 MOVE                             R7 R2
       38 NAMECALL                         R3 R3 K4 ["migrateItemState"]
       40 CALL                             R3 4 0
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K0 ["Children"]
       44 SETTABLE                         R2 R3 R0
       45 SETUPVAL                         R2 0
       46 RETURN                           R0 0
       47 LOADNIL                          R2
       48 SETUPVAL                         R2 0
       49 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["Expansion"]
        3 CALL                             R4 1 1
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R6 R1 K1 ["Selection"]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R1
       10 DUPTABLE                         R8 K3 [{"Items", "Expansion", "Selection"}]
       11 GETTABLEKS                       R9 R1 K2 ["Items"]
       13 SETTABLEKS                       R9 R8 K2 ["Items"]
       15 SETTABLEKS                       R4 R8 K0 ["Expansion"]
       17 SETTABLEKS                       R5 R8 K1 ["Selection"]
       19 CALL                             R6 2 1
       20 LENGTH                           R7 R2
       21 JUMPIFNOTEQKN                    R7 K4 [0] ; [+14]
       23 GETUPVAL                         R7 0
       24 GETTABLEKS                       R8 R6 K2 ["Items"]
       26 CALL                             R7 1 1
       27 SETTABLEKS                       R7 R6 K2 ["Items"]
       29 MOVE                             R7 R3
       30 GETTABLEKS                       R8 R6 K2 ["Items"]
       32 MOVE                             R9 R6
       33 MOVE                             R10 R2
       34 CALL                             R7 3 0
       35 RETURN                           R6 1
       36 DUPTABLE                         R7 K6 [{"Children"}]
       37 GETTABLEKS                       R8 R6 K2 ["Items"]
       39 SETTABLEKS                       R8 R7 K5 ["Children"]
       41 MOVE                             R8 R7
       42 GETUPVAL                         R9 2
       43 MOVE                             R10 R2
       44 NEWCLOSURE                       R11 P0
       45 CAPTURE                          REF R8
       46 CAPTURE                          UPVAL U0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R6
       49 CALL                             R9 2 0
       50 JUMPIFNOT                        R8 ; [+15]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R10 R8 K5 ["Children"]
       54 JUMPIF                           R10 ; [+2]
       55 NEWTABLE                         R10 0 0
       57 CALL                             R9 1 1
       58 SETTABLEKS                       R9 R8 K5 ["Children"]
       60 MOVE                             R9 R3
       61 GETTABLEKS                       R10 R8 K5 ["Children"]
       63 MOVE                             R11 R6
       64 MOVE                             R12 R2
       65 CALL                             R9 3 0
       66 GETTABLEKS                       R9 R7 K5 ["Children"]
       68 SETTABLEKS                       R9 R6 K2 ["Items"]
       70 CLOSEUPVALS                      R8
       71 RETURN                           R6 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 NEWTABLE                         R3 0 0
        3 GETUPVAL                         R4 1
        4 NEWTABLE                         R5 0 1
        6 MOVE                             R6 R1
        7 SETLIST                          R5 R6 1 [1]
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R0 K0 ["Path"]
       12 GETTABLEKS                       R3 R0 K1 ["Children"]
       14 JUMPIFNOT                        R3 ; [+7]
       15 GETUPVAL                         R3 2
       16 GETTABLEKS                       R5 R0 K1 ["Children"]
       18 MOVE                             R6 R2
       19 NAMECALL                         R3 R3 K2 ["updatePaths"]
       21 CALL                             R3 3 0
       22 RETURN                           R0 0

PROTO_17:
        0 MOVE                             R3 R2
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R2 R3
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R2
       10 CAPTURE                          VAL R0
       11 CALL                             R3 2 0
       12 CLOSEUPVALS                      R2
       13 RETURN                           R1 1

PROTO_18:
        0 NEWTABLE                         R1 1 0
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R0 R5
        6 GETUPVAL                         R5 2
        7 GETUPVAL                         R7 0
        8 GETTABLE                         R6 R0 R7
        9 CALL                             R5 1 -1
       10 CALL                             R3 -1 1
       11 SETTABLE                         R3 R1 R2
       12 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K0 ["setState"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_20:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R2
        3 CAPTURE                          UPVAL U0
        4 RETURN                           R3 1

PROTO_21:
        0 DUPTABLE                         R1 K1 [{"Expansion"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Expansion"]
        4 GETUPVAL                         R4 1
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["Expansion"]
        8 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_23:
        0 DUPTABLE                         R0 K1 [{"Selection"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Selection"]
        4 RETURN                           R0 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_25:
        0 DUPTABLE                         R0 K1 [{"Sizes"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Sizes"]
        4 RETURN                           R0 1

PROTO_26:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R2 K3 [{"OnExpansionChange", "OnSelectionChange", "OnColumnSizesChange"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R3 R2 K0 ["OnExpansionChange"]
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R3 R2 K1 ["OnSelectionChange"]
       10 NEWCLOSURE                       R3 P2
       11 CAPTURE                          VAL R1
       12 SETTABLEKS                       R3 R2 K2 ["OnColumnSizesChange"]
       14 RETURN                           R2 1

PROTO_28:
        0 MOVE                             R3 R1
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R0 K0 ["_interface"]
        6 GETTABLEKS                       R8 R8 K1 ["getId"]
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQ                      R8 R2 ; [+2]
       12 RETURN                           R7 1
       13 GETTABLEKS                       R8 R0 K0 ["_interface"]
       15 GETTABLEKS                       R8 R8 K2 ["getChildren"]
       17 MOVE                             R9 R7
       18 CALL                             R8 1 1
       19 JUMPIFNOT                        R8 ; [+7]
       20 MOVE                             R11 R8
       21 MOVE                             R12 R2
       22 NAMECALL                         R9 R0 K3 ["findItemById"]
       24 CALL                             R9 3 1
       25 JUMPIFNOT                        R9 ; [+1]
       26 RETURN                           R9 1
       27 FORGLOOP                         R3 2 ; [-24]
       29 LOADNIL                          R3
       30 RETURN                           R3 1

PROTO_29:
        0 JUMPIFNOT                        R1 ; [+20]
        1 MOVE                             R3 R1
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 GETTABLEKS                       R8 R0 K0 ["_interface"]
        7 GETTABLEKS                       R8 R8 K1 ["getId"]
        9 MOVE                             R9 R7
       10 CALL                             R8 1 1
       11 LOADB                            R9 1
       12 SETTABLE                         R9 R2 R8
       13 GETTABLEKS                       R11 R7 K2 ["Children"]
       15 MOVE                             R12 R2
       16 NAMECALL                         R9 R0 K3 ["expandAll"]
       18 CALL                             R9 3 0
       19 FORGLOOP                         R3 2 ; [-15]
       21 RETURN                           R0 0

PROTO_30:
        0 JUMPIFNOT                        R2 ; [+4]
        1 LENGTH                           R3 R2
        2 LOADN                            R4 0
        3 JUMPIFNOTLE                      R3 R4 ; [+4]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 DUPTABLE                         R4 K1 [{"Children"}]
       11 SETTABLEKS                       R1 R4 K0 ["Children"]
       13 MOVE                             R5 R4
       14 MOVE                             R6 R2
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 GETTABLEKS                       R11 R0 K2 ["_interface"]
       20 GETTABLEKS                       R11 R11 K3 ["getId"]
       22 MOVE                             R12 R5
       23 CALL                             R11 1 1
       24 JUMPIFEQ                         R5 R4 ; [+3]
       26 LOADB                            R12 1
       27 SETTABLE                         R12 R3 R11
       28 GETTABLEKS                       R12 R5 K0 ["Children"]
       30 JUMPIFNOT                        R12 ; [+20]
       31 LOADB                            R13 0
       32 JUMPIFEQKNIL                     R5 ; [+7]
       34 GETTABLEKS                       R14 R5 K0 ["Children"]
       36 JUMPIFNOTEQKNIL                  R14 ; [+2]
       38 LOADB                            R13 0 +1
       39 LOADB                            R13 1
       40 FASTCALL2K                       ASSERT R13 K4 ; [+4]
       42 LOADK                            R14 K4 ["expecting item and children to be valid"]
       43 GETIMPORT                        R12 K6 [assert]
       45 CALL                             R12 2 0
       46 GETTABLEKS                       R12 R5 K0 ["Children"]
       48 GETTABLE                         R5 R12 R10
       49 FORGLOOP                         R6 2 ; [-32]
       51 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Util"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["append"]
       18 GETTABLEKS                       R3 R1 K9 ["copy"]
       20 GETTABLEKS                       R4 R1 K10 ["forEach"]
       22 GETTABLEKS                       R5 R1 K11 ["join"]
       24 GETTABLEKS                       R6 R1 K12 ["reduce"]
       26 GETTABLEKS                       R7 R1 K13 ["slice"]
       28 GETIMPORT                        R8 K16 [table.insert]
       30 GETIMPORT                        R9 K18 [table.remove]
       32 DUPTABLE                         R10 K21 [{"getChildren", "getId"}]
       33 DUPCLOSURE                       R11 K22 [PROTO_0]
       34 SETTABLEKS                       R11 R10 K19 ["getChildren"]
       36 DUPCLOSURE                       R11 K23 [PROTO_1]
       37 SETTABLEKS                       R11 R10 K20 ["getId"]
       39 NEWTABLE                         R11 0 0
       41 SETTABLEKS                       R11 R11 K24 ["__index"]
       43 DUPCLOSURE                       R12 K25 [PROTO_2]
       44 CAPTURE                          VAL R5
       45 CAPTURE                          VAL R10
       46 CAPTURE                          VAL R11
       47 SETTABLEKS                       R12 R11 K26 ["new"]
       49 DUPCLOSURE                       R12 K27 [PROTO_3]
       50 CAPTURE                          VAL R7
       51 SETTABLEKS                       R12 R11 K28 ["getParent"]
       53 DUPCLOSURE                       R12 K29 [PROTO_5]
       54 CAPTURE                          VAL R6
       55 SETTABLEKS                       R12 R11 K30 ["getChild"]
       57 DUPCLOSURE                       R12 K31 [PROTO_7]
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R12 R11 K32 ["insertRow"]
       61 DUPCLOSURE                       R12 K33 [PROTO_9]
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R9
       64 SETTABLEKS                       R12 R11 K34 ["removeItem"]
       66 DUPCLOSURE                       R12 K35 [PROTO_10]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R12 R11 K36 ["togglePath"]
       71 DUPCLOSURE                       R12 K37 [PROTO_12]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R5
       75 SETTABLEKS                       R12 R11 K38 ["updateCell"]
       77 DUPCLOSURE                       R12 K39 [PROTO_13]
       78 SETTABLEKS                       R12 R11 K40 ["migrateItemState"]
       80 DUPCLOSURE                       R12 K41 [PROTO_15]
       81 CAPTURE                          VAL R3
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 SETTABLEKS                       R12 R11 K42 ["modifyChildren"]
       86 DUPCLOSURE                       R12 K43 [PROTO_17]
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R2
       89 SETTABLEKS                       R12 R11 K44 ["updatePaths"]
       91 DUPCLOSURE                       R12 K45 [PROTO_20]
       92 CAPTURE                          VAL R5
       93 SETTABLEKS                       R12 R11 K46 ["getStateAdaptor"]
       95 DUPCLOSURE                       R12 K47 [PROTO_27]
       96 CAPTURE                          VAL R5
       97 SETTABLEKS                       R12 R11 K48 ["getCallbacks"]
       99 DUPCLOSURE                       R12 K49 [PROTO_28]
      100 SETTABLEKS                       R12 R11 K50 ["findItemById"]
      102 DUPCLOSURE                       R12 K51 [PROTO_29]
      103 SETTABLEKS                       R12 R11 K52 ["expandAll"]
      105 DUPCLOSURE                       R12 K53 [PROTO_30]
      106 SETTABLEKS                       R12 R11 K54 ["expandAncestors"]
      108 RETURN                           R11 1
