PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["$nil"]
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+15]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 FASTCALL3                        STRING_SUB R0 R3 R4
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K5 [string.sub]
       18 CALL                             R1 3 1
       19 JUMPIFNOTEQKS                    R1 K6 ["$"] ; [+5]
       21 LOADK                            R2 K6 ["$"]
       22 MOVE                             R3 R0
       23 CONCAT                           R1 R2 R3
       24 RETURN                           R1 1
       25 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+23]
        7 LOADN                            R3 1
        8 LOADN                            R4 1
        9 FASTCALL3                        STRING_SUB R0 R3 R4
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K4 [string.sub]
       14 CALL                             R1 3 1
       15 JUMPIFNOTEQKS                    R1 K5 ["$"] ; [+13]
       17 JUMPIFNOTEQKS                    R0 K6 ["$nil"] ; [+3]
       19 LOADNIL                          R1
       20 RETURN                           R1 1
       21 FASTCALL2K                       STRING_SUB R0 K7 ; [+5]
       23 MOVE                             R2 R0
       24 LOADK                            R3 K7 [2]
       25 GETIMPORT                        R1 K4 [string.sub]
       27 CALL                             R1 2 1
       28 RETURN                           R1 1
       29 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsHost"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+39]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["HostDataModelTypeIsCurrent"]
        8 JUMPIFNOT                        R0 ; [+35]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["current"]
       15 JUMPIFNOTEQKNIL                  R5 ; [+3]
       17 LOADK                            R4 K3 ["$nil"]
       18 JUMP                             ; [+22]
       19 FASTCALL1                        TYPE R5 ; [+3]
       20 MOVE                             R7 R5
       21 GETIMPORT                        R6 K5 [type]
       23 CALL                             R6 1 1
       24 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+15]
       26 LOADN                            R8 1
       27 LOADN                            R9 1
       28 FASTCALL3                        STRING_SUB R5 R8 R9
       30 MOVE                             R7 R5
       31 GETIMPORT                        R6 K8 [string.sub]
       33 CALL                             R6 3 1
       34 JUMPIFNOTEQKS                    R6 K9 ["$"] ; [+5]
       36 LOADK                            R6 K9 ["$"]
       37 MOVE                             R7 R5
       38 CONCAT                           R4 R6 R7
       39 JUMP                             ; [+1]
       40 MOVE                             R4 R5
       41 NAMECALL                         R0 R0 K10 ["FireGuest"]
       43 CALL                             R0 4 0
       44 GETUPVAL                         R0 4
       45 CALL                             R0 0 1
       46 JUMPIFNOT                        R0 ; [+40]
       47 GETUPVAL                         R0 0
       48 NAMECALL                         R0 R0 K11 ["IsGuest"]
       50 CALL                             R0 1 1
       51 JUMPIFNOT                        R0 ; [+35]
       52 GETUPVAL                         R0 0
       53 GETUPVAL                         R2 2
       54 LOADNIL                          R3
       55 GETUPVAL                         R5 3
       56 GETTABLEKS                       R5 R5 K2 ["current"]
       58 JUMPIFNOTEQKNIL                  R5 ; [+3]
       60 LOADK                            R4 K3 ["$nil"]
       61 JUMP                             ; [+22]
       62 FASTCALL1                        TYPE R5 ; [+3]
       63 MOVE                             R7 R5
       64 GETIMPORT                        R6 K5 [type]
       66 CALL                             R6 1 1
       67 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+15]
       69 LOADN                            R8 1
       70 LOADN                            R9 1
       71 FASTCALL3                        STRING_SUB R5 R8 R9
       73 MOVE                             R7 R5
       74 GETIMPORT                        R6 K8 [string.sub]
       76 CALL                             R6 3 1
       77 JUMPIFNOTEQKS                    R6 K9 ["$"] ; [+5]
       79 LOADK                            R6 K9 ["$"]
       80 MOVE                             R7 R5
       81 CONCAT                           R4 R6 R7
       82 JUMP                             ; [+1]
       83 MOVE                             R4 R5
       84 NAMECALL                         R0 R0 K12 ["FireHost"]
       86 CALL                             R0 4 0
       87 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["MultipleDocumentInterfaceInstance"]
       11 JUMPIFNOT                        R0 ; [+3]
       12 GETTABLEKS                       R1 R0 K2 ["FocusedDataModelSession"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R1
       16 JUMPIF                           R1 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 2
       19 CALL                             R3 0 1
       20 JUMPIFNOT                        R3 ; [+3]
       21 GETTABLEKS                       R2 R1 K3 ["CurrentDataModelTypeChanged"]
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R2 R1 K4 ["CurrentDataModelTypeAboutToChange"]
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U4
       30 CAPTURE                          UPVAL U5
       31 CAPTURE                          UPVAL U2
       32 NAMECALL                         R2 R2 K5 ["Connect"]
       34 CALL                             R2 2 1
       35 NEWCLOSURE                       R3 P1
       36 CAPTURE                          VAL R2
       37 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOTEQKB                    R0 TRUE ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K1 ["IsGuest"]
       11 CALL                             R0 1 1
       12 JUMPIFNOT                        R0 ; [+35]
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K0 ["current"]
       19 JUMPIFNOTEQKNIL                  R5 ; [+3]
       21 LOADK                            R4 K2 ["$nil"]
       22 JUMP                             ; [+22]
       23 FASTCALL1                        TYPE R5 ; [+3]
       24 MOVE                             R7 R5
       25 GETIMPORT                        R6 K4 [type]
       27 CALL                             R6 1 1
       28 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+15]
       30 LOADN                            R8 1
       31 LOADN                            R9 1
       32 FASTCALL3                        STRING_SUB R5 R8 R9
       34 MOVE                             R7 R5
       35 GETIMPORT                        R6 K7 [string.sub]
       37 CALL                             R6 3 1
       38 JUMPIFNOTEQKS                    R6 K8 ["$"] ; [+5]
       40 LOADK                            R6 K8 ["$"]
       41 MOVE                             R7 R5
       42 CONCAT                           R4 R6 R7
       43 JUMP                             ; [+1]
       44 MOVE                             R4 R5
       45 NAMECALL                         R0 R0 K9 ["FireHost"]
       47 CALL                             R0 4 0
       48 GETUPVAL                         R0 1
       49 NAMECALL                         R0 R0 K10 ["IsHost"]
       51 CALL                             R0 1 1
       52 JUMPIFNOT                        R0 ; [+35]
       53 GETUPVAL                         R0 1
       54 GETUPVAL                         R2 2
       55 LOADNIL                          R3
       56 GETUPVAL                         R5 3
       57 GETTABLEKS                       R5 R5 K0 ["current"]
       59 JUMPIFNOTEQKNIL                  R5 ; [+3]
       61 LOADK                            R4 K2 ["$nil"]
       62 JUMP                             ; [+22]
       63 FASTCALL1                        TYPE R5 ; [+3]
       64 MOVE                             R7 R5
       65 GETIMPORT                        R6 K4 [type]
       67 CALL                             R6 1 1
       68 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+15]
       70 LOADN                            R8 1
       71 LOADN                            R9 1
       72 FASTCALL3                        STRING_SUB R5 R8 R9
       74 MOVE                             R7 R5
       75 GETIMPORT                        R6 K7 [string.sub]
       77 CALL                             R6 3 1
       78 JUMPIFNOTEQKS                    R6 K8 ["$"] ; [+5]
       80 LOADK                            R6 K8 ["$"]
       81 MOVE                             R7 R5
       82 CONCAT                           R4 R6 R7
       83 JUMP                             ; [+1]
       84 MOVE                             R4 R5
       85 NAMECALL                         R0 R0 K11 ["FireGuest"]
       87 CALL                             R0 4 0
       88 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R6 ; [+3]
        8 LOADK                            R5 K1 ["$nil"]
        9 JUMP                             ; [+22]
       10 FASTCALL1                        TYPE R6 ; [+3]
       11 MOVE                             R8 R6
       12 GETIMPORT                        R7 K3 [type]
       14 CALL                             R7 1 1
       15 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+15]
       17 LOADN                            R9 1
       18 LOADN                            R10 1
       19 FASTCALL3                        STRING_SUB R6 R9 R10
       21 MOVE                             R8 R6
       22 GETIMPORT                        R7 K6 [string.sub]
       24 CALL                             R7 3 1
       25 JUMPIFNOTEQKS                    R7 K7 ["$"] ; [+5]
       27 LOADK                            R7 K7 ["$"]
       28 MOVE                             R8 R6
       29 CONCAT                           R5 R7 R8
       30 JUMP                             ; [+1]
       31 MOVE                             R5 R6
       32 NAMECALL                         R1 R1 K8 ["FireHost"]
       34 CALL                             R1 4 0
       35 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K0 ["current"]
        6 JUMPIFNOTEQKNIL                  R6 ; [+3]
        8 LOADK                            R5 K1 ["$nil"]
        9 JUMP                             ; [+22]
       10 FASTCALL1                        TYPE R6 ; [+3]
       11 MOVE                             R8 R6
       12 GETIMPORT                        R7 K3 [type]
       14 CALL                             R7 1 1
       15 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+15]
       17 LOADN                            R9 1
       18 LOADN                            R10 1
       19 FASTCALL3                        STRING_SUB R6 R9 R10
       21 MOVE                             R8 R6
       22 GETIMPORT                        R7 K6 [string.sub]
       24 CALL                             R7 3 1
       25 JUMPIFNOTEQKS                    R7 K7 ["$"] ; [+5]
       27 LOADK                            R7 K7 ["$"]
       28 MOVE                             R8 R6
       29 CONCAT                           R5 R7 R8
       30 JUMP                             ; [+1]
       31 MOVE                             R5 R6
       32 NAMECALL                         R1 R1 K8 ["FireGuest"]
       34 CALL                             R1 4 0
       35 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 NAMECALL                         R1 R1 K0 ["IsGuest"]
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+17]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 NAMECALL                         R1 R1 K1 ["OnGuestEvent"]
       15 CALL                             R1 3 2
       16 JUMPIFNOT                        R2 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       19 MOVE                             R4 R0
       20 MOVE                             R5 R2
       21 GETIMPORT                        R3 K4 [table.insert]
       23 CALL                             R3 2 0
       24 GETUPVAL                         R1 0
       25 NAMECALL                         R1 R1 K5 ["IsHost"]
       27 CALL                             R1 1 1
       28 JUMPIFNOT                        R1 ; [+17]
       29 GETUPVAL                         R1 0
       30 GETUPVAL                         R3 1
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U0
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          UPVAL U2
       35 NAMECALL                         R1 R1 K6 ["OnHostEvent"]
       37 CALL                             R1 3 2
       38 JUMPIFNOT                        R2 ; [+7]
       39 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       41 MOVE                             R4 R0
       42 MOVE                             R5 R2
       43 GETIMPORT                        R3 K4 [table.insert]
       45 CALL                             R3 2 0
       46 NEWCLOSURE                       R1 P2
       47 CAPTURE                          VAL R0
       48 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
        3 GETTABLEKS                       R3 R3 K1 ["Plugin"]
        5 NAMECALL                         R3 R3 K2 ["use"]
        7 CALL                             R3 1 1
        8 NAMECALL                         R3 R3 K3 ["get"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["useContext"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K5 ["Context"]
       17 CALL                             R4 1 1
       18 GETTABLEKS                       R4 R4 K6 ["getNetworking"]
       20 CALL                             R4 0 1
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K7 ["useRef"]
       24 LOADNIL                          R6
       25 CALL                             R5 1 1
       26 SETTABLEKS                       R1 R5 K8 ["current"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       31 NEWCLOSURE                       R7 P0
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R0
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R8 0 4
       40 MOVE                             R9 R3
       41 MOVE                             R10 R0
       42 MOVE                             R11 R4
       43 MOVE                             R12 R2
       44 SETLIST                          R8 R9 4 [1]
       46 CALL                             R6 2 0
       47 GETUPVAL                         R6 1
       48 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       50 NEWCLOSURE                       R7 P1
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R0
       54 CAPTURE                          VAL R5
       55 NEWTABLE                         R8 0 4
       57 MOVE                             R9 R4
       58 MOVE                             R10 R1
       59 MOVE                             R11 R2
       60 MOVE                             R12 R5
       61 SETLIST                          R8 R9 4 [1]
       63 CALL                             R6 2 0
       64 GETUPVAL                         R6 1
       65 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       67 NEWCLOSURE                       R7 P2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R5
       71 NEWTABLE                         R8 0 2
       73 MOVE                             R9 R4
       74 MOVE                             R10 R5
       75 SETLIST                          R8 R9 2 [1]
       77 CALL                             R6 2 0
       78 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsHost"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+10]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["HostDataModelTypeIsCurrent"]
        8 JUMPIFNOT                        R0 ; [+6]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 NAMECALL                         R0 R0 K2 ["FireGuest"]
       14 CALL                             R0 3 0
       15 GETUPVAL                         R0 3
       16 CALL                             R0 0 1
       17 JUMPIFNOT                        R0 ; [+11]
       18 GETUPVAL                         R0 0
       19 NAMECALL                         R0 R0 K3 ["IsGuest"]
       21 CALL                             R0 1 1
       22 JUMPIFNOT                        R0 ; [+6]
       23 GETUPVAL                         R0 0
       24 GETUPVAL                         R2 2
       25 LOADNIL                          R3
       26 NAMECALL                         R0 R0 K4 ["FireHost"]
       28 CALL                             R0 3 0
       29 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MultipleDocumentInterfaceInstance"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["FocusedDataModelSession"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R1
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R3 1
       11 CALL                             R3 0 1
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R2 R1 K2 ["CurrentDataModelTypeChanged"]
       15 JUMP                             ; [+2]
       16 GETTABLEKS                       R2 R1 K3 ["CurrentDataModelTypeAboutToChange"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U1
       23 NAMECALL                         R2 R2 K4 ["Connect"]
       25 CALL                             R2 2 1
       26 NEWCLOSURE                       R3 P1
       27 CAPTURE                          VAL R2
       28 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 FASTCALL1                        TYPE R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K1 [type]
        5 CALL                             R4 1 1
        6 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+23]
        8 LOADN                            R6 1
        9 LOADN                            R7 1
       10 FASTCALL3                        STRING_SUB R1 R6 R7
       12 MOVE                             R5 R1
       13 GETIMPORT                        R4 K4 [string.sub]
       15 CALL                             R4 3 1
       16 JUMPIFNOTEQKS                    R4 K5 ["$"] ; [+13]
       18 JUMPIFNOTEQKS                    R1 K6 ["$nil"] ; [+3]
       20 LOADNIL                          R3
       21 JUMP                             ; [+9]
       22 FASTCALL2K                       STRING_SUB R1 K7 ; [+5]
       24 MOVE                             R4 R1
       25 LOADK                            R5 K7 [2]
       26 GETIMPORT                        R3 K4 [string.sub]
       28 CALL                             R3 2 1
       29 JUMP                             ; [+1]
       30 MOVE                             R3 R1
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_16:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["IsGuest"]
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+20]
        9 GETUPVAL                         R2 1
       10 GETUPVAL                         R4 2
       11 MOVE                             R5 R0
       12 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       14 CALL                             R2 3 2
       15 JUMPIFNOT                        R3 ; [+7]
       16 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 GETIMPORT                        R4 K4 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R4 1
       24 GETUPVAL                         R6 2
       25 LOADNIL                          R7
       26 NAMECALL                         R4 R4 K5 ["FireHost"]
       28 CALL                             R4 3 0
       29 GETUPVAL                         R2 1
       30 NAMECALL                         R2 R2 K6 ["IsHost"]
       32 CALL                             R2 1 1
       33 JUMPIFNOT                        R2 ; [+20]
       34 GETUPVAL                         R2 1
       35 GETUPVAL                         R4 2
       36 MOVE                             R5 R0
       37 NAMECALL                         R2 R2 K7 ["OnHostEvent"]
       39 CALL                             R2 3 2
       40 JUMPIFNOT                        R3 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       43 MOVE                             R5 R1
       44 MOVE                             R6 R3
       45 GETIMPORT                        R4 K4 [table.insert]
       47 CALL                             R4 2 0
       48 GETUPVAL                         R4 1
       49 GETUPVAL                         R6 2
       50 LOADNIL                          R7
       51 NAMECALL                         R4 R4 K8 ["FireGuest"]
       53 CALL                             R4 3 0
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          VAL R1
       56 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["getNetworking"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K3 ["ContextServices"]
       13 GETTABLEKS                       R3 R3 K4 ["Plugin"]
       15 NAMECALL                         R3 R3 K5 ["use"]
       17 CALL                             R3 1 1
       18 NAMECALL                         R3 R3 K6 ["get"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R6 0 3
       31 MOVE                             R7 R3
       32 MOVE                             R8 R0
       33 MOVE                             R9 R2
       34 SETLIST                          R6 R7 3 [1]
       36 CALL                             R4 2 0
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       40 NEWCLOSURE                       R5 P1
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 NEWTABLE                         R6 0 4
       46 MOVE                             R7 R3
       47 MOVE                             R8 R1
       48 MOVE                             R9 R0
       49 MOVE                             R10 R2
       50 SETLIST                          R6 R7 4 [1]
       52 CALL                             R4 2 0
       53 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["useReplicatedStateListenerCallback"]
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 CALL                             R4 2 0
       11 RETURN                           R2 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createSignal"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useMemo"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R1
        6 NEWTABLE                         R4 0 1
        8 MOVE                             R5 R1
        9 SETLIST                          R4 R5 1 [1]
       11 CALL                             R2 2 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K1 ["useReplicatedStateListenerCallback"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R3
       17 CALL                             R4 2 0
       18 RETURN                           R2 1

PROTO_21:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["current"]
        4 JUMPIFNOT                        R1 ; [+4]
        5 MOVE                             R2 R1
        6 GETVARARGS                       R3 -1
        7 CALL                             R2 -1 -1
        8 RETURN                           R2 -1
        9 GETUPVAL                         R2 1
       10 JUMPIFNOT                        R2 ; [+4]
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K1 ["sendToAll"]
       14 JUMPIF                           R2 ; [+4]
       15 GETIMPORT                        R2 K3 [error]
       17 LOADK                            R3 K4 ["Action is not connected. This callback must still be connected for invocation to return."]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_22:
        0 GETIMPORT                        R0 K2 [table.pack]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R4 3
        5 GETUPVAL                         R6 4
        6 LOADN                            R7 1
        7 GETUPVAL                         R8 4
        8 GETTABLEKS                       R8 R8 K3 ["n"]
       10 FASTCALL                         TABLE_UNPACK ; [+2]
       11 GETIMPORT                        R5 K5 [table.unpack]
       13 CALL                             R5 3 -1
       14 NAMECALL                         R1 R1 K6 ["InvokeHostAsync"]
       16 CALL                             R1 -1 -1
       17 CALL                             R0 -1 1
       18 SETUPVAL                         R0 0
       19 RETURN                           R0 0

PROTO_23:
        0 GETIMPORT                        R0 K2 [table.pack]
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 GETUPVAL                         R4 3
        5 GETUPVAL                         R6 4
        6 LOADN                            R7 1
        7 GETUPVAL                         R8 4
        8 GETTABLEKS                       R8 R8 K3 ["n"]
       10 FASTCALL                         TABLE_UNPACK ; [+2]
       11 GETIMPORT                        R5 K5 [table.unpack]
       13 CALL                             R5 3 -1
       14 NAMECALL                         R1 R1 K6 ["InvokeGuestAsync"]
       16 CALL                             R1 -1 -1
       17 CALL                             R0 -1 1
       18 SETUPVAL                         R0 0
       19 RETURN                           R0 0

PROTO_24:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+7]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["sendToAll"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R0 R1 K1 ["ALL"]
       11 GETUPVAL                         R1 2
       12 NAMECALL                         R1 R1 K2 ["IsGuest"]
       14 CALL                             R1 1 1
       15 JUMPIFNOT                        R1 ; [+50]
       16 GETIMPORT                        R1 K5 [table.pack]
       18 GETVARARGS                       R2 -1
       19 CALL                             R1 -1 1
       20 LOADNIL                          R2
       21 GETIMPORT                        R3 K7 [pcall]
       23 NEWCLOSURE                       R4 P0
       24 CAPTURE                          REF R2
       25 CAPTURE                          UPVAL U2
       26 CAPTURE                          UPVAL U3
       27 CAPTURE                          REF R0
       28 CAPTURE                          VAL R1
       29 CALL                             R3 1 2
       30 JUMPIFNOT                        R3 ; [+1]
       31 JUMPIF                           R2 ; [+23]
       32 FASTCALL1                        TOSTRING R4 ; [+3]
       33 MOVE                             R6 R4
       34 GETIMPORT                        R5 K9 [tostring]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K12 [string.find]
       39 MOVE                             R7 R5
       40 LOADK                            R8 K13 ["Self is closed"]
       41 CALL                             R6 2 1
       42 JUMPIF                           R6 ; [+10]
       43 GETIMPORT                        R6 K15 [warn]
       45 LOADK                            R7 K16 ["Network action %* send to %* failed - %*"]
       46 GETUPVAL                         R9 3
       47 ORK                              R10 R0 K1 ["ALL"]
       48 MOVE                             R11 R4
       49 NAMECALL                         R7 R7 K17 ["format"]
       51 CALL                             R7 4 1
       52 CALL                             R6 1 0
       53 DUPTABLE                         R6 K20 [{["n"] = 0}]
       54 MOVE                             R2 R6
       55 LOADN                            R7 1
       56 GETTABLEKS                       R8 R2 K18 ["n"]
       58 FASTCALL3                        TABLE_UNPACK R2 R7 R8
       60 MOVE                             R6 R2
       61 GETIMPORT                        R5 K22 [table.unpack]
       63 CALL                             R5 3 -1
       64 CLOSEUPVALS                      R0
       65 RETURN                           R5 -1
       66 GETUPVAL                         R1 2
       67 NAMECALL                         R1 R1 K23 ["IsHost"]
       69 CALL                             R1 1 1
       70 JUMPIFNOT                        R1 ; [+50]
       71 GETIMPORT                        R1 K5 [table.pack]
       73 GETVARARGS                       R2 -1
       74 CALL                             R1 -1 1
       75 LOADNIL                          R2
       76 GETIMPORT                        R3 K7 [pcall]
       78 NEWCLOSURE                       R4 P1
       79 CAPTURE                          REF R2
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          REF R0
       83 CAPTURE                          VAL R1
       84 CALL                             R3 1 2
       85 JUMPIFNOT                        R3 ; [+1]
       86 JUMPIF                           R2 ; [+23]
       87 FASTCALL1                        TOSTRING R4 ; [+3]
       88 MOVE                             R6 R4
       89 GETIMPORT                        R5 K9 [tostring]
       91 CALL                             R5 1 1
       92 GETIMPORT                        R6 K12 [string.find]
       94 MOVE                             R7 R5
       95 LOADK                            R8 K13 ["Self is closed"]
       96 CALL                             R6 2 1
       97 JUMPIF                           R6 ; [+10]
       98 GETIMPORT                        R6 K15 [warn]
      100 LOADK                            R7 K16 ["Network action %* send to %* failed - %*"]
      101 GETUPVAL                         R9 3
      102 ORK                              R10 R0 K24 ["UI"]
      103 MOVE                             R11 R4
      104 NAMECALL                         R7 R7 K17 ["format"]
      106 CALL                             R7 4 1
      107 CALL                             R6 1 0
      108 DUPTABLE                         R6 K20 [{["n"] = 0}]
      109 MOVE                             R2 R6
      110 LOADN                            R7 1
      111 GETTABLEKS                       R8 R2 K18 ["n"]
      113 FASTCALL3                        TABLE_UNPACK R2 R7 R8
      115 MOVE                             R6 R2
      116 GETIMPORT                        R5 K22 [table.unpack]
      118 CALL                             R5 3 -1
      119 CLOSEUPVALS                      R0
      120 RETURN                           R5 -1
      121 GETIMPORT                        R1 K26 [error]
      123 LOADK                            R2 K27 ["Networking is neither UIDM nor EditableDM"]
      124 CALL                             R1 1 0
      125 CLOSEUPVALS                      R0
      126 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 RETURN                           R0 0

PROTO_26:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K0 ["IsGuest"]
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+13]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R0
       13 NAMECALL                         R2 R2 K1 ["OnGuestInvokeAsync"]
       15 CALL                             R2 3 2
       16 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       18 MOVE                             R5 R1
       19 MOVE                             R6 R3
       20 GETIMPORT                        R4 K4 [table.insert]
       22 CALL                             R4 2 0
       23 GETUPVAL                         R2 2
       24 NAMECALL                         R2 R2 K5 ["IsHost"]
       26 CALL                             R2 1 1
       27 JUMPIFNOT                        R2 ; [+13]
       28 GETUPVAL                         R2 2
       29 GETUPVAL                         R4 3
       30 MOVE                             R5 R0
       31 NAMECALL                         R2 R2 K6 ["OnHostInvokeAsync"]
       33 CALL                             R2 3 2
       34 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       36 MOVE                             R5 R1
       37 MOVE                             R6 R3
       38 GETIMPORT                        R4 K4 [table.insert]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R2 4
       42 NEWCLOSURE                       R3 P1
       43 CAPTURE                          UPVAL U1
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 SETTABLEKS                       R3 R2 K7 ["current"]
       49 NEWCLOSURE                       R2 P2
       50 CAPTURE                          VAL R1
       51 RETURN                           R2 1

PROTO_27:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["current"]
        4 JUMPIF                           R0 ; [+4]
        5 GETIMPORT                        R1 K2 [error]
        7 LOADK                            R2 K3 ["Action is not connected"]
        8 CALL                             R1 1 0
        9 MOVE                             R1 R0
       10 GETVARARGS                       R2 -1
       11 CALL                             R1 -1 -1
       12 RETURN                           R1 -1

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Context"]
        6 CALL                             R3 1 1
        7 GETTABLEKS                       R3 R3 K2 ["getNetworking"]
        9 CALL                             R3 0 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K3 ["useRef"]
       13 LOADNIL                          R5
       14 CALL                             R4 1 1
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K3 ["useRef"]
       18 LOADNIL                          R6
       19 CALL                             R5 1 1
       20 SETTABLEKS                       R1 R5 K4 ["current"]
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R4
       31 CAPTURE                          UPVAL U2
       32 NEWTABLE                         R8 0 4
       34 MOVE                             R9 R2
       35 MOVE                             R10 R0
       36 MOVE                             R11 R4
       37 MOVE                             R12 R3
       38 SETLIST                          R8 R9 4 [1]
       40 CALL                             R6 2 0
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       44 NEWCLOSURE                       R7 P1
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R8 0 1
       48 MOVE                             R9 R4
       49 SETLIST                          R8 R9 1 [1]
       51 CALL                             R6 2 -1
       52 RETURN                           R6 -1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 0
        7 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 2
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_31:
        0 DUPTABLE                         R2 K2 [{"useProducer", "useConsumer"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["useProducer"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["useConsumer"]
       13 RETURN                           R2 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedState"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useReplicatedStateListener"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["useReplicatedState"]
        8 GETUPVAL                         R3 2
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useObserveStateListener"]
        3 GETUPVAL                         R2 1
        4 MOVE                             R3 R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_36:
        0 DUPTABLE                         R1 K5 [{"networkId", "useProducer", "useConsumer", "useSignalProducer", "useSignalConsumer"}]
        1 SETTABLEKS                       R0 R1 K0 ["networkId"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R1 K1 ["useProducer"]
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K2 ["useConsumer"]
       13 NEWCLOSURE                       R2 P2
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R2 R1 K3 ["useSignalProducer"]
       19 NEWCLOSURE                       R2 P3
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R2 R1 K4 ["useSignalConsumer"]
       24 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Contexts"]
       25 GETTABLEKS                       R4 R4 K10 ["NetworkingContext"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Parent"]
       46 GETTABLEKS                       R7 R7 K13 ["SignalsReact"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Flags"]
       53 GETTABLEKS                       R8 R8 K15 ["getFFlagAnimGraphUI_FixNetworkingSwitch"]
       55 CALL                             R7 1 1
       56 NEWTABLE                         R8 8 0
       58 DUPCLOSURE                       R9 K16 [PROTO_0]
       59 DUPCLOSURE                       R10 K17 [PROTO_1]
       60 DUPCLOSURE                       R11 K18 [PROTO_10]
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R7
       65 SETTABLEKS                       R11 R8 K19 ["useReplicatedState"]
       67 DUPCLOSURE                       R11 K20 [PROTO_17]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R7
       72 SETTABLEKS                       R11 R8 K21 ["useReplicatedStateListenerCallback"]
       74 DUPCLOSURE                       R11 K22 [PROTO_18]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R8
       77 SETTABLEKS                       R11 R8 K23 ["useReplicatedStateListener"]
       79 DUPCLOSURE                       R11 K24 [PROTO_20]
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R8
       83 SETTABLEKS                       R11 R8 K25 ["useObserveStateListener"]
       85 DUPCLOSURE                       R11 K26 [PROTO_28]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R11 R8 K27 ["useBoundAction"]
       91 DUPCLOSURE                       R11 K28 [PROTO_31]
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R11 R8 K29 ["createBoundAction"]
       95 DUPCLOSURE                       R11 K30 [PROTO_36]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R6
       98 SETTABLEKS                       R11 R8 K31 ["createReplicatedState"]
      100 RETURN                           R8 1
