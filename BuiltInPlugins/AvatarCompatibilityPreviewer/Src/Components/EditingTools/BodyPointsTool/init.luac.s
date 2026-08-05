PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["name"]
        8 SETTABLE                         R7 R2 R8
        9 FORGLOOP                         R3 2 ; [-4]
       11 NEWTABLE                         R3 0 0
       13 MOVE                             R4 R1
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 LOADB                            R9 1
       18 SETTABLE                         R9 R3 R8
       19 GETTABLEKS                       R10 R8 K1 ["symmetricalPartner"]
       21 JUMPIFNOT                        R10 ; [+4]
       22 GETTABLEKS                       R10 R8 K1 ["symmetricalPartner"]
       24 GETTABLE                         R9 R2 R10
       25 JUMP                             ; [+1]
       26 LOADNIL                          R9
       27 JUMPIFEQKNIL                     R9 ; [+3]
       29 LOADB                            R10 1
       30 SETTABLE                         R10 R3 R9
       31 FORGLOOP                         R4 2 ; [-15]
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R5 R3
       36 LOADNIL                          R6
       37 LOADNIL                          R7
       38 FORGPREP                         R5
       39 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       41 MOVE                             R11 R4
       42 MOVE                             R12 R8
       43 GETIMPORT                        R10 K4 [table.insert]
       45 CALL                             R10 2 0
       46 FORGLOOP                         R5 2 ; [-8]
       48 RETURN                           R4 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETUPVAL                         R1 2
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETTABLEKS                       R6 R4 K0 ["onChange"]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-5]
       13 RETURN                           R0 1

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R6 K0 ["getCFrame"]
        8 CALL                             R7 0 1
        9 SETTABLE                         R7 R1 R6
       10 FORGLOOP                         R2 2 ; [-5]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.remove]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKNIL                  R2 ; [+2]
        9 LOADB                            R4 0 +1
       10 LOADB                            R4 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K3 ["LUAU_ANALYZE_ERROR"]
       14 FASTCALL2                        ASSERT R4 R5 ; [+3]
       16 GETIMPORT                        R3 K5 [assert]
       18 CALL                             R3 2 0
       19 MOVE                             R3 R2
       20 CALL                             R3 0 1
       21 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       23 MOVE                             R5 R1
       24 MOVE                             R6 R3
       25 GETIMPORT                        R4 K7 [table.insert]
       27 CALL                             R4 2 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETIMPORT                        R1 K2 [table.clear]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K3 ["current"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K4 ["enabled"]
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETUPVAL                         R2 2
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K5 ["points"]
       15 MOVE                             R4 R0
       16 CALL                             R2 2 1
       17 MOVE                             R1 R2
       18 JUMP                             ; [+1]
       19 MOVE                             R1 R0
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K3 ["current"]
       23 GETUPVAL                         R4 5
       24 MOVE                             R5 R1
       25 CALL                             R4 1 1
       26 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       28 GETIMPORT                        R2 K7 [table.insert]
       30 CALL                             R2 2 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        9 LOADK                            R2 K1 ["Container isn't mounted yet"]
       10 GETIMPORT                        R0 K3 [assert]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["current"]
       16 RETURN                           R0 1

PROTO_7:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["selectedPoints"]
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 LOADB                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["current"]
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETIMPORT                        R2 K2 [game]
        6 GETIMPORT                        R3 K4 [settings]
        8 CALL                             R3 0 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K5 ["current"]
       12 CALL                             R0 4 1
       13 LOADK                            R3 K6 ["HotkeyUsageHidden"]
       14 LOADB                            R4 1
       15 NAMECALL                         R1 R0 K7 ["setSetting"]
       17 CALL                             R1 3 0
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K8 ["hoveredPointNames"]
       22 NEWCLOSURE                       R1 P0
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R1 R0 K9 ["getGuiParent"]
       26 DUPCLOSURE                       R1 K10 [PROTO_7]
       27 SETTABLEKS                       R1 R0 K11 ["shouldGridSnap"]
       29 NEWCLOSURE                       R1 P2
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          VAL R0
       32 CAPTURE                          UPVAL U5
       33 SETTABLEKS                       R1 R0 K12 ["onFreeformDragBegin"]
       35 NEWCLOSURE                       R1 P3
       36 CAPTURE                          UPVAL U5
       37 SETTABLEKS                       R1 R0 K13 ["onFreeformDragEnd"]
       39 RETURN                           R0 1

PROTO_11:
        0 GETIMPORT                        R2 K2 [table.find]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R4 R0 K3 ["name"]
        5 CALL                             R2 2 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+2]
        8 LOADB                            R1 0 +1
        9 LOADB                            R1 1
       10 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["filter"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["points"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U2
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_13:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["points"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 DUPTABLE                         R8 K3 [{"name", "cframe"}]
        9 GETTABLEKS                       R9 R5 K1 ["name"]
       11 SETTABLEKS                       R9 R8 K1 ["name"]
       13 GETTABLEKS                       R9 R5 K4 ["getCFrame"]
       15 CALL                             R9 0 1
       16 SETTABLEKS                       R9 R8 K2 ["cframe"]
       18 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       20 MOVE                             R7 R0
       21 GETIMPORT                        R6 K7 [table.insert]
       23 CALL                             R6 2 0
       24 FORGLOOP                         R1 2 ; [-17]
       26 RETURN                           R0 1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["symmetricalPartner"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onChange"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["enabled"]
        8 JUMPIFNOT                        R1 ; [+37]
        9 GETUPVAL                         R1 2
       10 JUMPIFEQKNIL                     R1 ; [+35]
       12 GETUPVAL                         R1 3
       13 JUMPIFEQKNIL                     R1 ; [+32]
       15 GETTABLEKS                       R2 R0 K2 ["Position"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K2 ["Position"]
       20 SUB                              R1 R2 R3
       21 GETUPVAL                         R3 4
       22 NAMECALL                         R3 R3 K3 ["Inverse"]
       24 CALL                             R3 1 1
       25 MUL                              R2 R0 R3
       26 GETTABLEKS                       R2 R2 K4 ["Rotation"]
       28 NAMECALL                         R3 R2 K5 ["ToOrientation"]
       30 CALL                             R3 1 3
       31 GETIMPORT                        R6 K8 [CFrame.fromOrientation]
       33 MOVE                             R7 R3
       34 MINUS                            R8 R4
       35 MINUS                            R9 R5
       36 CALL                             R6 3 1
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R7 R7 K0 ["onChange"]
       40 GETUPVAL                         R10 3
       41 LOADK                            R12 K9 [{-1, 1, 1}]
       42 MUL                              R11 R1 R12
       43 ADD                              R9 R10 R11
       44 MUL                              R8 R9 R6
       45 CALL                             R7 1 0
       46 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["getCFrame"]
        2 CALL                             R1 0 1
        3 GETTABLEKS                       R2 R0 K1 ["symmetricalPartner"]
        5 JUMPIFNOT                        R2 ; [+9]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["find"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K3 ["points"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CALL                             R2 2 1
       15 MOVE                             R3 R2
       16 JUMPIFNOT                        R3 ; [+3]
       17 GETTABLEKS                       R3 R2 K0 ["getCFrame"]
       19 CALL                             R3 0 1
       20 NEWCLOSURE                       R4 P1
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R1
       26 RETURN                           R4 1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETIMPORT                        R2 K3 [table.remove]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["LUAU_ANALYZE_ERROR"]
       20 FASTCALL2                        ASSERT R4 R5 ; [+3]
       22 GETIMPORT                        R3 K6 [assert]
       24 CALL                             R3 2 0
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       29 MOVE                             R5 R1
       30 MOVE                             R6 R3
       31 GETIMPORT                        R4 K8 [table.insert]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["current"]
        6 GETIMPORT                        R2 K3 [table.remove]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 LOADB                            R4 0 +1
       16 LOADB                            R4 1
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R5 R5 K4 ["LUAU_ANALYZE_ERROR"]
       20 FASTCALL2                        ASSERT R4 R5 ; [+3]
       22 GETIMPORT                        R3 K6 [assert]
       24 CALL                             R3 2 0
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       29 MOVE                             R5 R1
       30 MOVE                             R6 R3
       31 GETIMPORT                        R4 K8 [table.insert]
       33 CALL                             R4 2 0
       34 RETURN                           R0 0

PROTO_19:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETIMPORT                        R6 K2 [table.find]
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R8 R5 K3 ["name"]
       11 CALL                             R6 2 1
       12 JUMPIFEQKNIL                     R6 ; [+24]
       14 GETUPVAL                         R9 2
       15 GETTABLEKS                       R9 R9 K4 ["worldModel"]
       17 GETTABLEKS                       R9 R9 K5 ["PrimaryPart"]
       19 GETTABLEKS                       R9 R9 K6 ["CFrame"]
       21 GETTABLEKS                       R10 R5 K7 ["cframe"]
       23 MUL                              R8 R9 R10
       24 GETTABLEKS                       R8 R8 K8 ["Position"]
       26 FASTCALL2                        TABLE_INSERT R0 R8 ; [+4]
       28 MOVE                             R7 R0
       29 GETIMPORT                        R6 K10 [table.insert]
       31 CALL                             R6 2 0
       32 LENGTH                           R6 R0
       33 GETUPVAL                         R8 1
       34 LENGTH                           R7 R8
       35 JUMPIFEQ                         R6 R7 ; [+3]
       37 FORGLOOP                         R1 2 ; [-32]
       39 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_22:
        0 NEWTABLE                         R0 0 0
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 GETUPVAL                         R2 2
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 GETTABLEKS                       R7 R6 K0 ["connectChanged"]
       11 JUMPIFEQKNIL                     R7 ; [+10]
       13 MOVE                             R8 R0
       14 GETTABLEKS                       R9 R6 K0 ["connectChanged"]
       16 MOVE                             R10 R1
       17 CALL                             R9 1 -1
       18 FASTCALL                         TABLE_INSERT ; [+2]
       19 GETIMPORT                        R7 K3 [table.insert]
       21 CALL                             R7 -1 0
       22 FORGLOOP                         R2 2 ; [-14]
       24 NEWCLOSURE                       R2 P1
       25 CAPTURE                          VAL R0
       26 RETURN                           R2 1

PROTO_23:
        0 GETTABLEKS                       R2 R0 K0 ["name"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["find"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["points"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+4]
       12 JUMPIFNOTEQKNIL                  R1 ; [+3]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R1 K2 ["symmetricalPartner"]
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R4 R4 K3 ["name"]
       21 JUMPIFEQ                         R3 R4 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1

PROTO_25:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["hoveredPointNames"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["name"]
        8 CALL                             R0 2 1
        9 JUMPIFEQKNIL                     R0 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K3 ["hoveredPointNames"]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K4 ["name"]
       18 FASTCALL2                        TABLE_INSERT R1 R2 ; [+3]
       20 GETIMPORT                        R0 K6 [table.insert]
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["hoveredPointNames"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K4 ["name"]
        8 CALL                             R0 2 1
        9 JUMPIFEQKNIL                     R0 ; [+8]
       11 GETIMPORT                        R1 K6 [table.remove]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K3 ["hoveredPointNames"]
       16 MOVE                             R3 R0
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K0 ["Inverse"]
        3 CALL                             R3 1 1
        4 MUL                              R2 R3 R0
        5 GETUPVAL                         R3 0
        6 MUL                              R1 R2 R3
        7 GETUPVAL                         R2 1
        8 GETUPVAL                         R5 2
        9 GETTABLEKS                       R5 R5 K1 ["Rotation"]
       11 MUL                              R4 R1 R5
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K2 ["Position"]
       15 ADD                              R3 R4 R5
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 1
        7 GETUPVAL                         R1 3
        8 GETUPVAL                         R2 4
        9 CALL                             R1 1 0
       10 GETUPVAL                         R1 4
       11 LOADNIL                          R2
       12 LOADNIL                          R3
       13 FORGPREP                         R1
       14 GETUPVAL                         R6 5
       15 MOVE                             R7 R5
       16 CALL                             R6 1 1
       17 GETTABLEKS                       R7 R5 K1 ["getCFrame"]
       19 CALL                             R7 0 1
       20 GETUPVAL                         R9 6
       21 NEWCLOSURE                       R10 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R6
       24 CAPTURE                          VAL R7
       25 FASTCALL2                        TABLE_INSERT R9 R10 ; [+3]
       27 GETIMPORT                        R8 K4 [table.insert]
       29 CALL                             R8 2 0
       30 FORGLOOP                         R1 2 ; [-17]
       32 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R2 0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 MOVE                             R7 R6
        5 MOVE                             R8 R1
        6 CALL                             R7 1 0
        7 FORGLOOP                         R2 2 ; [-4]
        9 RETURN                           R1 1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETIMPORT                        R0 K3 [table.clear]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_31:
        0 LOADNIL                          R0
        1 RETURN                           R0 1

PROTO_32:
        0 NEWTABLE                         R0 0 0
        2 DUPTABLE                         R1 K4 [{"beginDrag", "updateDrag", "endDrag", "render"}]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K0 ["beginDrag"]
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R2 R1 K1 ["updateDrag"]
       17 NEWCLOSURE                       R2 P2
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R1 K2 ["endDrag"]
       22 DUPCLOSURE                       R2 K5 [PROTO_31]
       23 SETTABLEKS                       R2 R1 K3 ["render"]
       25 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["ShowBoundingBox"] = False, ["Summonable"] = False, ["Outset"] = 0.3}]
        5 GETUPVAL                         R3 2
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_34:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{["ShowBoundingBox"] = False, ["Summonable"] = False, ["Outset"] = 0.3}]
        5 GETUPVAL                         R3 2
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_35:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["current"]
        7 RETURN                           R0 1
        8 DUPTABLE                         R0 K3 [{"AnalyticsName", "HandlesList"}]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K4 ["name"]
       12 SETTABLEKS                       R1 R0 K1 ["AnalyticsName"]
       14 GETIMPORT                        R2 K6 [next]
       16 GETUPVAL                         R3 3
       17 CALL                             R2 1 1
       18 JUMPIFNOTEQKNIL                  R2 ; [+7]
       20 NEWTABLE                         R1 0 1
       22 GETUPVAL                         R2 4
       23 SETLIST                          R1 R2 1 [1]
       25 JUMP                             ; [+6]
       26 NEWTABLE                         R1 0 2
       28 GETUPVAL                         R2 5
       29 GETUPVAL                         R3 6
       30 SETLIST                          R1 R2 2 [1]
       32 SETTABLEKS                       R1 R0 K2 ["HandlesList"]
       34 GETUPVAL                         R1 1
       35 SETTABLEKS                       R0 R1 K0 ["current"]
       37 RETURN                           R0 1

PROTO_36:
        0 DUPTABLE                         R0 K4 [{"Mouse", "DraggerContext", "DraggerSchema", "DraggerSettings"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["Mouse"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K5 ["current"]
        7 SETTABLEKS                       R1 R0 K1 ["DraggerContext"]
        9 GETUPVAL                         R1 2
       10 SETTABLEKS                       R1 R0 K2 ["DraggerSchema"]
       12 GETUPVAL                         R1 3
       13 SETTABLEKS                       R1 R0 K3 ["DraggerSettings"]
       15 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["BodyPointsTool"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["ContextServices"]
        8 GETTABLEKS                       R2 R2 K3 ["Localization"]
       10 NAMECALL                         R2 R2 K1 ["use"]
       12 CALL                             R2 1 1
       13 NEWTABLE                         R3 0 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R4 R4 K4 ["useState"]
       18 NEWTABLE                         R5 0 0
       20 CALL                             R4 1 2
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K5 ["useRef"]
       24 LOADNIL                          R7
       25 CALL                             R6 1 1
       26 GETUPVAL                         R7 3
       27 NAMECALL                         R7 R7 K1 ["use"]
       29 CALL                             R7 1 1
       30 NAMECALL                         R7 R7 K6 ["get"]
       32 CALL                             R7 1 1
       33 GETUPVAL                         R8 4
       34 LOADB                            R9 0
       35 CALL                             R8 1 1
       36 GETUPVAL                         R9 5
       37 NEWCLOSURE                       R10 P0
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R5
       40 CALL                             R9 1 1
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K5 ["useRef"]
       44 LOADB                            R11 0
       45 CALL                             R10 1 1
       46 GETUPVAL                         R11 7
       47 LOADK                            R12 K7 ["EditingTools_SymmetricalEnabled"]
       48 LOADB                            R13 1
       49 CALL                             R11 2 1
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K5 ["useRef"]
       53 NEWTABLE                         R13 0 0
       55 CALL                             R12 1 1
       56 GETUPVAL                         R13 2
       57 GETTABLEKS                       R13 R13 K5 ["useRef"]
       59 NEWTABLE                         R14 0 0
       61 CALL                             R13 1 1
       62 GETUPVAL                         R14 2
       63 GETTABLEKS                       R14 R14 K8 ["useCallback"]
       65 NEWCLOSURE                       R15 P1
       66 CAPTURE                          VAL R13
       67 CAPTURE                          VAL R11
       68 CAPTURE                          UPVAL U8
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R12
       71 CAPTURE                          UPVAL U9
       72 NEWTABLE                         R16 0 1
       74 GETTABLEKS                       R17 R11 K9 ["enabled"]
       76 SETLIST                          R16 R17 1 [1]
       78 CALL                             R14 2 1
       79 GETUPVAL                         R15 5
       80 NEWCLOSURE                       R16 P2
       81 CAPTURE                          UPVAL U10
       82 CAPTURE                          VAL R7
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R14
       86 CAPTURE                          VAL R10
       87 CALL                             R15 1 1
       88 GETTABLEKS                       R16 R15 K10 ["current"]
       90 GETTABLEKS                       R17 R9 K10 ["current"]
       92 SETTABLEKS                       R16 R17 K11 ["draggerContext"]
       94 GETTABLEKS                       R17 R0 K12 ["generallyEquivalentPointNames"]
       96 SETTABLEKS                       R17 R16 K12 ["generallyEquivalentPointNames"]
       98 GETTABLEKS                       R17 R9 K10 ["current"]
      100 SETTABLEKS                       R17 R16 K13 ["selection"]
      102 GETTABLEKS                       R17 R0 K14 ["points"]
      104 SETTABLEKS                       R17 R16 K14 ["points"]
      106 GETUPVAL                         R17 2
      107 GETTABLEKS                       R17 R17 K15 ["useMemo"]
      109 NEWCLOSURE                       R18 P3
      110 CAPTURE                          UPVAL U11
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R4
      113 NEWTABLE                         R19 0 2
      115 GETTABLEKS                       R20 R0 K14 ["points"]
      117 MOVE                             R21 R4
      118 SETLIST                          R19 R20 2 [1]
      120 CALL                             R17 2 1
      121 SETTABLEKS                       R17 R16 K16 ["selectedPoints"]
      123 GETTABLEKS                       R18 R0 K17 ["worldModel"]
      125 SETTABLEKS                       R18 R16 K17 ["worldModel"]
      127 GETUPVAL                         R18 12
      128 MOVE                             R19 R16
      129 CALL                             R18 1 0
      130 GETUPVAL                         R18 7
      131 LOADK                            R19 K18 ["EditingTools_ProjectionEnabled"]
      132 LOADB                            R20 1
      133 CALL                             R18 2 1
      134 GETTABLEKS                       R19 R18 K9 ["enabled"]
      136 SETTABLEKS                       R19 R16 K19 ["projectionEnabled"]
      138 GETUPVAL                         R19 2
      139 GETTABLEKS                       R19 R19 K20 ["useEffect"]
      141 GETTABLEKS                       R20 R8 K21 ["enable"]
      143 NEWTABLE                         R21 0 0
      145 CALL                             R19 2 0
      146 GETUPVAL                         R19 13
      147 NAMECALL                         R19 R19 K1 ["use"]
      149 CALL                             R19 1 1
      150 NAMECALL                         R19 R19 K6 ["get"]
      152 CALL                             R19 1 1
      153 GETUPVAL                         R20 2
      154 GETTABLEKS                       R20 R20 K8 ["useCallback"]
      156 NEWCLOSURE                       R21 P4
      157 CAPTURE                          VAL R0
      158 NEWTABLE                         R22 0 1
      160 GETTABLEKS                       R23 R0 K14 ["points"]
      162 SETLIST                          R22 R23 1 [1]
      164 CALL                             R20 2 1
      165 GETUPVAL                         R21 2
      166 GETTABLEKS                       R21 R21 K4 ["useState"]
      168 MOVE                             R22 R20
      169 CALL                             R21 1 2
      170 GETUPVAL                         R23 2
      171 GETTABLEKS                       R23 R23 K8 ["useCallback"]
      173 NEWCLOSURE                       R24 P5
      174 CAPTURE                          UPVAL U11
      175 CAPTURE                          VAL R0
      176 CAPTURE                          VAL R11
      177 NEWTABLE                         R25 0 2
      179 GETTABLEKS                       R26 R0 K14 ["points"]
      181 GETTABLEKS                       R27 R11 K9 ["enabled"]
      183 SETLIST                          R25 R26 2 [1]
      185 CALL                             R23 2 1
      186 SETTABLEKS                       R23 R16 K22 ["createUpdatePointPosition"]
      188 GETUPVAL                         R24 14
      189 NEWCLOSURE                       R25 P6
      190 CAPTURE                          VAL R12
      191 CAPTURE                          VAL R13
      192 CAPTURE                          UPVAL U15
      193 NEWCLOSURE                       R26 P7
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R12
      196 CAPTURE                          UPVAL U15
      197 CALL                             R24 2 0
      198 GETUPVAL                         R24 2
      199 GETTABLEKS                       R24 R24 K15 ["useMemo"]
      201 NEWCLOSURE                       R25 P8
      202 CAPTURE                          VAL R21
      203 CAPTURE                          VAL R4
      204 CAPTURE                          VAL R0
      205 NEWTABLE                         R26 0 3
      207 MOVE                             R27 R21
      208 MOVE                             R28 R4
      209 GETTABLEKS                       R29 R0 K17 ["worldModel"]
      211 SETLIST                          R26 R27 3 [1]
      213 CALL                             R24 2 1
      214 GETUPVAL                         R25 16
      215 MOVE                             R26 R24
      216 CALL                             R25 1 0
      217 GETUPVAL                         R25 2
      218 GETTABLEKS                       R25 R25 K20 ["useEffect"]
      220 NEWCLOSURE                       R26 P9
      221 CAPTURE                          VAL R22
      222 CAPTURE                          VAL R20
      223 CAPTURE                          VAL R17
      224 NEWTABLE                         R27 0 1
      226 MOVE                             R28 R17
      227 SETLIST                          R27 R28 1 [1]
      229 CALL                             R25 2 0
      230 GETTABLEKS                       R25 R0 K14 ["points"]
      232 LOADNIL                          R26
      233 LOADNIL                          R27
      234 FORGPREP                         R25
      235 GETIMPORT                        R31 K25 [table.find]
      237 MOVE                             R32 R4
      238 GETTABLEKS                       R33 R29 K26 ["name"]
      240 CALL                             R31 2 1
      241 JUMPIFNOTEQKNIL                  R31 ; [+2]
      243 LOADB                            R30 0 +1
      244 LOADB                            R30 1
      245 NOT                              R31 R30
      246 JUMPIFNOT                        R31 ; [+13]
      247 GETTABLEKS                       R31 R11 K9 ["enabled"]
      249 JUMPIFNOT                        R31 ; [+10]
      250 GETUPVAL                         R31 11
      251 GETTABLEKS                       R31 R31 K24 ["find"]
      253 MOVE                             R32 R4
      254 NEWCLOSURE                       R33 P10
      255 CAPTURE                          UPVAL U11
      256 CAPTURE                          VAL R0
      257 CAPTURE                          UPVAL U17
      258 CAPTURE                          VAL R29
      259 CALL                             R31 2 1
      260 LOADK                            R33 K27 ["Point%*"]
      261 MOVE                             R35 R28
      262 NAMECALL                         R33 R33 K28 ["format"]
      264 CALL                             R33 2 1
      265 MOVE                             R32 R33
      266 GETUPVAL                         R33 2
      267 GETTABLEKS                       R33 R33 K29 ["createElement"]
      269 GETUPVAL                         R34 18
      270 DUPTABLE                         R35 K40 [{["adornee"], ["point"], ["selected"], ["color"], ["transparency"], ["transparencyOverModel"] = 0, ["showOrientation"], ["onMouseEnter"], ["onMouseLeave"]}]
      271 GETTABLEKS                       R36 R0 K17 ["worldModel"]
      273 GETTABLEKS                       R36 R36 K41 ["PrimaryPart"]
      275 SETTABLEKS                       R36 R35 K30 ["adornee"]
      277 SETTABLEKS                       R29 R35 K31 ["point"]
      279 OR                               R36 R30 R31
      280 SETTABLEKS                       R36 R35 K32 ["selected"]
      282 JUMPIF                           R30 ; [+1]
      283 JUMPIFNOT                        R31 ; [+7]
      284 GETIMPORT                        R36 K44 [Color3.fromRGB]
      286 LOADN                            R37 43
      287 LOADN                            R38 177
      288 LOADN                            R39 255
      289 CALL                             R36 3 1
      290 JUMP                             ; [+6]
      291 GETIMPORT                        R36 K44 [Color3.fromRGB]
      293 LOADN                            R37 187
      294 LOADN                            R38 187
      295 LOADN                            R39 187
      296 CALL                             R36 3 1
      297 SETTABLEKS                       R36 R35 K33 ["color"]
      299 JUMPIF                           R30 ; [+1]
      300 JUMPIFNOT                        R31 ; [+2]
      301 LOADK                            R36 K45 [0.2]
      302 JUMP                             ; [+1]
      303 LOADK                            R36 K46 [0.6]
      304 SETTABLEKS                       R36 R35 K34 ["transparency"]
      306 JUMPIF                           R30 ; [+1]
      307 JUMPIFNOT                        R31 ; [+2]
      308 LOADB                            R36 1
      309 JUMP                             ; [+1]
      310 LOADNIL                          R36
      311 SETTABLEKS                       R36 R35 K37 ["showOrientation"]
      313 NEWCLOSURE                       R36 P11
      314 CAPTURE                          VAL R16
      315 CAPTURE                          VAL R29
      316 SETTABLEKS                       R36 R35 K38 ["onMouseEnter"]
      318 NEWCLOSURE                       R36 P12
      319 CAPTURE                          VAL R16
      320 CAPTURE                          VAL R29
      321 SETTABLEKS                       R36 R35 K39 ["onMouseLeave"]
      323 CALL                             R33 2 1
      324 SETTABLE                         R33 R3 R32
      325 FORGLOOP                         R25 2 ; [-91]
      327 GETUPVAL                         R25 19
      328 MOVE                             R26 R16
      329 GETTABLEKS                       R27 R0 K17 ["worldModel"]
      331 CALL                             R25 2 1
      332 GETUPVAL                         R26 2
      333 GETTABLEKS                       R26 R26 K15 ["useMemo"]
      335 NEWCLOSURE                       R27 P13
      336 CAPTURE                          VAL R10
      337 CAPTURE                          UPVAL U20
      338 CAPTURE                          VAL R16
      339 CAPTURE                          VAL R14
      340 CAPTURE                          VAL R17
      341 CAPTURE                          VAL R23
      342 NEWTABLE                         R28 0 5
      344 MOVE                             R29 R17
      345 MOVE                             R30 R20
      346 MOVE                             R31 R23
      347 MOVE                             R32 R14
      348 GETTABLEKS                       R33 R11 K9 ["enabled"]
      350 SETLIST                          R28 R29 5 [1]
      352 CALL                             R26 2 1
      353 GETUPVAL                         R27 2
      354 GETTABLEKS                       R27 R27 K15 ["useMemo"]
      356 NEWCLOSURE                       R28 P14
      357 CAPTURE                          UPVAL U21
      358 CAPTURE                          VAL R16
      359 CAPTURE                          VAL R26
      360 NEWTABLE                         R29 0 1
      362 MOVE                             R30 R26
      363 SETLIST                          R29 R30 1 [1]
      365 CALL                             R27 2 1
      366 GETUPVAL                         R28 2
      367 GETTABLEKS                       R28 R28 K15 ["useMemo"]
      369 NEWCLOSURE                       R29 P15
      370 CAPTURE                          UPVAL U22
      371 CAPTURE                          VAL R16
      372 CAPTURE                          VAL R26
      373 NEWTABLE                         R30 0 1
      375 MOVE                             R31 R26
      376 SETLIST                          R30 R31 1 [1]
      378 CALL                             R28 2 1
      379 GETUPVAL                         R29 2
      380 GETTABLEKS                       R29 R29 K5 ["useRef"]
      382 LOADNIL                          R30
      383 CALL                             R29 1 1
      384 GETUPVAL                         R30 2
      385 GETTABLEKS                       R30 R30 K15 ["useMemo"]
      387 NEWCLOSURE                       R31 P16
      388 CAPTURE                          VAL R10
      389 CAPTURE                          VAL R29
      390 CAPTURE                          VAL R0
      391 CAPTURE                          VAL R4
      392 CAPTURE                          VAL R25
      393 CAPTURE                          VAL R27
      394 CAPTURE                          VAL R28
      395 NEWTABLE                         R32 0 5
      397 GETTABLEKS                       R33 R0 K26 ["name"]
      399 MOVE                             R34 R25
      400 MOVE                             R35 R27
      401 MOVE                             R36 R28
      402 MOVE                             R37 R10
      403 SETLIST                          R32 R33 5 [1]
      405 CALL                             R30 2 1
      406 GETUPVAL                         R31 2
      407 GETTABLEKS                       R31 R31 K15 ["useMemo"]
      409 NEWCLOSURE                       R32 P17
      410 CAPTURE                          VAL R19
      411 CAPTURE                          VAL R15
      412 CAPTURE                          UPVAL U23
      413 CAPTURE                          VAL R30
      414 NEWTABLE                         R33 0 1
      416 MOVE                             R34 R30
      417 SETLIST                          R33 R34 1 [1]
      419 CALL                             R31 2 1
      420 GETUPVAL                         R32 2
      421 GETTABLEKS                       R32 R32 K29 ["createElement"]
      423 GETUPVAL                         R33 2
      424 GETTABLEKS                       R33 R33 K47 ["Fragment"]
      426 NEWTABLE                         R34 0 0
      428 NEWTABLE                         R35 2 0
      430 GETUPVAL                         R36 15
      431 GETTABLEKS                       R36 R36 K48 ["EDITING_TOOLS_GUI_NAMES"]
      433 GETTABLEKS                       R36 R36 K49 ["BodyPoints"]
      435 GETUPVAL                         R37 24
      436 GETTABLEKS                       R37 R37 K50 ["createPortal"]
      438 GETUPVAL                         R38 2
      439 GETTABLEKS                       R38 R38 K29 ["createElement"]
      441 LOADK                            R39 K51 ["Folder"]
      442 DUPTABLE                         R40 K53 [{"ref"}]
      443 SETTABLEKS                       R6 R40 K52 ["ref"]
      445 MOVE                             R41 R3
      446 DUPTABLE                         R42 K55 [{"Dragger"}]
      447 GETTABLEKS                       R43 R8 K9 ["enabled"]
      449 JUMPIFNOT                        R43 ; [+6]
      450 GETUPVAL                         R43 2
      451 GETTABLEKS                       R43 R43 K29 ["createElement"]
      453 GETUPVAL                         R44 25
      454 MOVE                             R45 R31
      455 CALL                             R43 2 1
      456 SETTABLEKS                       R43 R42 K54 ["Dragger"]
      458 CALL                             R38 4 1
      459 GETUPVAL                         R39 26
      460 GETUPVAL                         R40 15
      461 GETTABLEKS                       R40 R40 K48 ["EDITING_TOOLS_GUI_NAMES"]
      463 GETTABLEKS                       R40 R40 K49 ["BodyPoints"]
      465 CALL                             R37 3 1
      466 SETTABLE                         R37 R35 R36
      467 GETUPVAL                         R36 15
      468 GETTABLEKS                       R36 R36 K48 ["EDITING_TOOLS_GUI_NAMES"]
      470 GETTABLEKS                       R36 R36 K56 ["BodyPointsToolToolbar"]
      472 GETUPVAL                         R37 2
      473 GETTABLEKS                       R37 R37 K29 ["createElement"]
      475 GETUPVAL                         R38 27
      476 GETTABLEKS                       R38 R38 K57 ["Toolbar"]
      478 DUPTABLE                         R39 K59 [{"HorizontalItems"}]
      479 NEWTABLE                         R40 0 4
      481 DUPTABLE                         R41 K67 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"], ["Selected"]}]
      482 LOADK                            R44 K0 ["BodyPointsTool"]
      483 LOADK                            R45 K68 ["Symmetry"]
      484 NAMECALL                         R42 R2 K69 ["getText"]
      486 CALL                             R42 3 1
      487 SETTABLEKS                       R42 R41 K62 ["Tooltip"]
      489 LOADK                            R44 K0 ["BodyPointsTool"]
      490 LOADK                            R45 K70 ["SymmetryDescription"]
      491 NAMECALL                         R42 R2 K69 ["getText"]
      493 CALL                             R42 3 1
      494 SETTABLEKS                       R42 R41 K63 ["TooltipDescription"]
      496 GETTABLEKS                       R42 R1 K71 ["SymmetricalImage"]
      498 SETTABLEKS                       R42 R41 K64 ["Icon"]
      500 GETTABLEKS                       R42 R11 K72 ["toggle"]
      502 SETTABLEKS                       R42 R41 K65 ["OnClick"]
      504 GETTABLEKS                       R42 R11 K9 ["enabled"]
      506 SETTABLEKS                       R42 R41 K66 ["Selected"]
      508 DUPTABLE                         R42 K67 [{["Type"] = "Button", ["Tooltip"], ["TooltipDescription"], ["Icon"], ["OnClick"], ["Selected"]}]
      509 LOADK                            R45 K0 ["BodyPointsTool"]
      510 LOADK                            R46 K73 ["Projection"]
      511 NAMECALL                         R43 R2 K69 ["getText"]
      513 CALL                             R43 3 1
      514 SETTABLEKS                       R43 R42 K62 ["Tooltip"]
      516 LOADK                            R45 K0 ["BodyPointsTool"]
      517 LOADK                            R46 K74 ["ProjectionDescription"]
      518 NAMECALL                         R43 R2 K69 ["getText"]
      520 CALL                             R43 3 1
      521 SETTABLEKS                       R43 R42 K63 ["TooltipDescription"]
      523 GETTABLEKS                       R43 R1 K75 ["ProjectionImage"]
      525 SETTABLEKS                       R43 R42 K64 ["Icon"]
      527 GETTABLEKS                       R43 R18 K72 ["toggle"]
      529 SETTABLEKS                       R43 R42 K65 ["OnClick"]
      531 GETTABLEKS                       R43 R18 K9 ["enabled"]
      533 SETTABLEKS                       R43 R42 K66 ["Selected"]
      535 DUPTABLE                         R43 K77 [{["Type"] = "Separator"}]
      536 GETTABLEKS                       R45 R0 K78 ["additionalToolbarItems"]
      538 FASTCALL1                        TABLE_UNPACK R45 ; [+2]
      539 GETIMPORT                        R44 K80 [unpack]
      541 CALL                             R44 1 -1
      542 SETLIST                          R40 R41 -1 [1]
      544 SETTABLEKS                       R40 R39 K58 ["HorizontalItems"]
      546 CALL                             R37 2 1
      547 SETTABLE                         R37 R35 R36
      548 CALL                             R32 3 -1
      549 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["CoreGui"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["DraggerFramework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["Framework"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["React"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K10 ["Packages"]
       45 GETTABLEKS                       R7 R7 K15 ["ReactRoblox"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R8 R1 K10 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["ViewportToolingFramework"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R9 R1 K17 ["Src"]
       59 GETTABLEKS                       R9 R9 K18 ["Types"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETIMPORT                        R10 K5 [script]
       66 GETTABLEKS                       R10 R10 K18 ["Types"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETIMPORT                        R11 K5 [script]
       73 GETTABLEKS                       R11 R11 K19 ["BodyPointAdornment"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETIMPORT                        R12 K5 [script]
       80 GETTABLEKS                       R12 R12 K18 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETIMPORT                        R13 K5 [script]
       87 GETTABLEKS                       R13 R13 K20 ["getBoundingBox"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETIMPORT                        R14 K5 [script]
       94 GETTABLEKS                       R14 R14 K21 ["useBodyMoveHandles"]
       96 CALL                             R13 1 1
       97 GETTABLEKS                       R14 R3 K22 ["Implementation"]
       99 GETTABLEKS                       R14 R14 K23 ["DraggerContext_PluginImpl"]
      101 GETIMPORT                        R15 K9 [require]
      103 GETIMPORT                        R16 K5 [script]
      105 GETTABLEKS                       R16 R16 K24 ["DraggerSchema"]
      107 CALL                             R15 1 1
      108 GETTABLEKS                       R16 R3 K25 ["DraggerTools"]
      110 GETTABLEKS                       R16 R16 K26 ["DraggerToolComponent"]
      112 GETIMPORT                        R17 K9 [require]
      114 GETIMPORT                        R18 K5 [script]
      116 GETTABLEKS                       R18 R18 K27 ["DraggerSelection"]
      118 CALL                             R17 1 1
      119 GETTABLEKS                       R18 R3 K28 ["Handles"]
      121 GETTABLEKS                       R18 R18 K29 ["MoveHandles"]
      123 GETTABLEKS                       R19 R3 K28 ["Handles"]
      125 GETTABLEKS                       R19 R19 K30 ["RotateHandles"]
      127 GETIMPORT                        R20 K9 [require]
      129 GETTABLEKS                       R21 R1 K17 ["Src"]
      131 GETTABLEKS                       R21 R21 K31 ["Util"]
      133 GETTABLEKS                       R21 R21 K32 ["Constants"]
      135 CALL                             R20 1 1
      136 GETIMPORT                        R21 K9 [require]
      138 GETTABLEKS                       R22 R1 K17 ["Src"]
      140 GETTABLEKS                       R22 R22 K33 ["Resources"]
      142 GETTABLEKS                       R22 R22 K34 ["Theme"]
      144 CALL                             R21 1 1
      145 GETIMPORT                        R22 K9 [require]
      147 GETTABLEKS                       R23 R1 K17 ["Src"]
      149 GETTABLEKS                       R23 R23 K35 ["Flags"]
      151 GETTABLEKS                       R23 R23 K36 ["getFFlagAvatarPreviewerBodyPointsSymmetricalNilFix"]
      153 CALL                             R22 1 1
      154 GETIMPORT                        R23 K9 [require]
      156 GETTABLEKS                       R24 R1 K17 ["Src"]
      158 GETTABLEKS                       R24 R24 K37 ["Components"]
      160 GETTABLEKS                       R24 R24 K38 ["EditingTools"]
      162 GETTABLEKS                       R24 R24 K39 ["useBindFocusOnPositions"]
      164 CALL                             R23 1 1
      165 GETIMPORT                        R24 K9 [require]
      167 GETIMPORT                        R25 K5 [script]
      169 GETTABLEKS                       R25 R25 K40 ["useDisambiguationContextMenu"]
      171 CALL                             R24 1 1
      172 GETIMPORT                        R25 K9 [require]
      174 GETTABLEKS                       R26 R1 K17 ["Src"]
      176 GETTABLEKS                       R26 R26 K41 ["Hooks"]
      178 GETTABLEKS                       R26 R26 K42 ["useRefWithInitial"]
      180 CALL                             R25 1 1
      181 GETIMPORT                        R26 K9 [require]
      183 GETTABLEKS                       R27 R1 K17 ["Src"]
      185 GETTABLEKS                       R27 R27 K41 ["Hooks"]
      187 GETTABLEKS                       R27 R27 K43 ["useTogglePluginSetting"]
      189 CALL                             R26 1 1
      190 GETIMPORT                        R27 K9 [require]
      192 GETTABLEKS                       R28 R1 K17 ["Src"]
      194 GETTABLEKS                       R28 R28 K41 ["Hooks"]
      196 GETTABLEKS                       R28 R28 K44 ["useToggleState"]
      198 CALL                             R27 1 1
      199 GETIMPORT                        R28 K9 [require]
      201 GETTABLEKS                       R29 R1 K17 ["Src"]
      203 GETTABLEKS                       R29 R29 K41 ["Hooks"]
      205 GETTABLEKS                       R29 R29 K45 ["useUndoRedoActions"]
      207 CALL                             R28 1 1
      208 GETTABLEKS                       R29 R4 K46 ["ContextServices"]
      210 GETTABLEKS                       R29 R29 K47 ["Mouse"]
      212 GETTABLEKS                       R30 R4 K46 ["ContextServices"]
      214 GETTABLEKS                       R30 R30 K48 ["Plugin"]
      216 GETTABLEKS                       R31 R4 K46 ["ContextServices"]
      218 GETTABLEKS                       R31 R31 K49 ["Stylizer"]
      220 DUPCLOSURE                       R32 K50 [PROTO_0]
      221 DUPCLOSURE                       R33 K51 [PROTO_2]
      222 CAPTURE                          VAL R33
      223 DUPCLOSURE                       R34 K52 [PROTO_3]
      224 CAPTURE                          VAL R20
      225 DUPCLOSURE                       R35 K53 [PROTO_37]
      226 CAPTURE                          VAL R31
      227 CAPTURE                          VAL R4
      228 CAPTURE                          VAL R5
      229 CAPTURE                          VAL R30
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R25
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R26
      234 CAPTURE                          VAL R32
      235 CAPTURE                          VAL R33
      236 CAPTURE                          VAL R14
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R24
      239 CAPTURE                          VAL R29
      240 CAPTURE                          VAL R28
      241 CAPTURE                          VAL R20
      242 CAPTURE                          VAL R23
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R10
      245 CAPTURE                          VAL R13
      246 CAPTURE                          VAL R12
      247 CAPTURE                          VAL R18
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R15
      250 CAPTURE                          VAL R6
      251 CAPTURE                          VAL R16
      252 CAPTURE                          VAL R0
      253 CAPTURE                          VAL R7
      254 RETURN                           R35 1
