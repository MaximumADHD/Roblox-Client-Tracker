PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 JUMPIFNOTEQKNIL                  R0 ; [+3]
        6 LOADK                            R1 K0 ["$nil"]
        7 RETURN                           R1 1
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R2 R0
       10 GETIMPORT                        R1 K2 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K3 ["string"] ; [+15]
       15 LOADN                            R3 1
       16 LOADN                            R4 1
       17 FASTCALL3                        STRING_SUB R0 R3 R4
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K5 [string.sub]
       22 CALL                             R1 3 1
       23 JUMPIFNOTEQKS                    R1 K6 ["$"] ; [+5]
       25 LOADK                            R2 K6 ["$"]
       26 MOVE                             R3 R0
       27 CONCAT                           R1 R2 R3
       28 RETURN                           R1 1
       29 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+1]
        3 RETURN                           R0 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [type]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+23]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 FASTCALL3                        STRING_SUB R0 R3 R4
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K4 [string.sub]
       18 CALL                             R1 3 1
       19 JUMPIFNOTEQKS                    R1 K5 ["$"] ; [+13]
       21 JUMPIFNOTEQKS                    R0 K6 ["$nil"] ; [+3]
       23 LOADNIL                          R1
       24 RETURN                           R1 1
       25 FASTCALL2K                       STRING_SUB R0 K7 ; [+5]
       27 MOVE                             R2 R0
       28 LOADK                            R3 K7 [2]
       29 GETIMPORT                        R1 K4 [string.sub]
       31 CALL                             R1 2 1
       32 RETURN                           R1 1
       33 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsHost"]
        3 CALL                             R0 1 1
        4 JUMPIFNOT                        R0 ; [+44]
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["HostDataModelTypeIsCurrent"]
        8 JUMPIFNOT                        R0 ; [+40]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R2 2
       11 LOADNIL                          R3
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K2 ["current"]
       15 GETUPVAL                         R6 4
       16 CALL                             R6 0 1
       17 JUMPIF                           R6 ; [+2]
       18 MOVE                             R4 R5
       19 JUMP                             ; [+26]
       20 JUMPIFNOTEQKNIL                  R5 ; [+3]
       22 LOADK                            R4 K3 ["$nil"]
       23 JUMP                             ; [+22]
       24 FASTCALL1                        TYPE R5 ; [+3]
       25 MOVE                             R7 R5
       26 GETIMPORT                        R6 K5 [type]
       28 CALL                             R6 1 1
       29 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+15]
       31 LOADN                            R8 1
       32 LOADN                            R9 1
       33 FASTCALL3                        STRING_SUB R5 R8 R9
       35 MOVE                             R7 R5
       36 GETIMPORT                        R6 K8 [string.sub]
       38 CALL                             R6 3 1
       39 JUMPIFNOTEQKS                    R6 K9 ["$"] ; [+5]
       41 LOADK                            R6 K9 ["$"]
       42 MOVE                             R7 R5
       43 CONCAT                           R4 R6 R7
       44 JUMP                             ; [+1]
       45 MOVE                             R4 R5
       46 NAMECALL                         R0 R0 K10 ["FireGuest"]
       48 CALL                             R0 4 0
       49 GETUPVAL                         R0 5
       50 CALL                             R0 0 1
       51 JUMPIFNOT                        R0 ; [+45]
       52 GETUPVAL                         R0 0
       53 NAMECALL                         R0 R0 K11 ["IsGuest"]
       55 CALL                             R0 1 1
       56 JUMPIFNOT                        R0 ; [+40]
       57 GETUPVAL                         R0 0
       58 GETUPVAL                         R2 2
       59 LOADNIL                          R3
       60 GETUPVAL                         R5 3
       61 GETTABLEKS                       R5 R5 K2 ["current"]
       63 GETUPVAL                         R6 4
       64 CALL                             R6 0 1
       65 JUMPIF                           R6 ; [+2]
       66 MOVE                             R4 R5
       67 JUMP                             ; [+26]
       68 JUMPIFNOTEQKNIL                  R5 ; [+3]
       70 LOADK                            R4 K3 ["$nil"]
       71 JUMP                             ; [+22]
       72 FASTCALL1                        TYPE R5 ; [+3]
       73 MOVE                             R7 R5
       74 GETIMPORT                        R6 K5 [type]
       76 CALL                             R6 1 1
       77 JUMPIFNOTEQKS                    R6 K6 ["string"] ; [+15]
       79 LOADN                            R8 1
       80 LOADN                            R9 1
       81 FASTCALL3                        STRING_SUB R5 R8 R9
       83 MOVE                             R7 R5
       84 GETIMPORT                        R6 K8 [string.sub]
       86 CALL                             R6 3 1
       87 JUMPIFNOTEQKS                    R6 K9 ["$"] ; [+5]
       89 LOADK                            R6 K9 ["$"]
       90 MOVE                             R7 R5
       91 CONCAT                           R4 R6 R7
       92 JUMP                             ; [+1]
       93 MOVE                             R4 R5
       94 NAMECALL                         R0 R0 K12 ["FireHost"]
       96 CALL                             R0 4 0
       97 RETURN                           R0 0

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
       31 CAPTURE                          UPVAL U6
       32 CAPTURE                          UPVAL U2
       33 NAMECALL                         R2 R2 K5 ["Connect"]
       35 CALL                             R2 2 1
       36 NEWCLOSURE                       R3 P1
       37 CAPTURE                          VAL R2
       38 RETURN                           R3 1

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
       12 JUMPIFNOT                        R0 ; [+40]
       13 GETUPVAL                         R0 1
       14 GETUPVAL                         R2 2
       15 LOADNIL                          R3
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K0 ["current"]
       19 GETUPVAL                         R6 4
       20 CALL                             R6 0 1
       21 JUMPIF                           R6 ; [+2]
       22 MOVE                             R4 R5
       23 JUMP                             ; [+26]
       24 JUMPIFNOTEQKNIL                  R5 ; [+3]
       26 LOADK                            R4 K2 ["$nil"]
       27 JUMP                             ; [+22]
       28 FASTCALL1                        TYPE R5 ; [+3]
       29 MOVE                             R7 R5
       30 GETIMPORT                        R6 K4 [type]
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+15]
       35 LOADN                            R8 1
       36 LOADN                            R9 1
       37 FASTCALL3                        STRING_SUB R5 R8 R9
       39 MOVE                             R7 R5
       40 GETIMPORT                        R6 K7 [string.sub]
       42 CALL                             R6 3 1
       43 JUMPIFNOTEQKS                    R6 K8 ["$"] ; [+5]
       45 LOADK                            R6 K8 ["$"]
       46 MOVE                             R7 R5
       47 CONCAT                           R4 R6 R7
       48 JUMP                             ; [+1]
       49 MOVE                             R4 R5
       50 NAMECALL                         R0 R0 K9 ["FireHost"]
       52 CALL                             R0 4 0
       53 GETUPVAL                         R0 1
       54 NAMECALL                         R0 R0 K10 ["IsHost"]
       56 CALL                             R0 1 1
       57 JUMPIFNOT                        R0 ; [+40]
       58 GETUPVAL                         R0 1
       59 GETUPVAL                         R2 2
       60 LOADNIL                          R3
       61 GETUPVAL                         R5 3
       62 GETTABLEKS                       R5 R5 K0 ["current"]
       64 GETUPVAL                         R6 4
       65 CALL                             R6 0 1
       66 JUMPIF                           R6 ; [+2]
       67 MOVE                             R4 R5
       68 JUMP                             ; [+26]
       69 JUMPIFNOTEQKNIL                  R5 ; [+3]
       71 LOADK                            R4 K2 ["$nil"]
       72 JUMP                             ; [+22]
       73 FASTCALL1                        TYPE R5 ; [+3]
       74 MOVE                             R7 R5
       75 GETIMPORT                        R6 K4 [type]
       77 CALL                             R6 1 1
       78 JUMPIFNOTEQKS                    R6 K5 ["string"] ; [+15]
       80 LOADN                            R8 1
       81 LOADN                            R9 1
       82 FASTCALL3                        STRING_SUB R5 R8 R9
       84 MOVE                             R7 R5
       85 GETIMPORT                        R6 K7 [string.sub]
       87 CALL                             R6 3 1
       88 JUMPIFNOTEQKS                    R6 K8 ["$"] ; [+5]
       90 LOADK                            R6 K8 ["$"]
       91 MOVE                             R7 R5
       92 CONCAT                           R4 R6 R7
       93 JUMP                             ; [+1]
       94 MOVE                             R4 R5
       95 NAMECALL                         R0 R0 K11 ["FireGuest"]
       97 CALL                             R0 4 0
       98 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K0 ["current"]
        6 GETUPVAL                         R7 3
        7 CALL                             R7 0 1
        8 JUMPIF                           R7 ; [+2]
        9 MOVE                             R5 R6
       10 JUMP                             ; [+26]
       11 JUMPIFNOTEQKNIL                  R6 ; [+3]
       13 LOADK                            R5 K1 ["$nil"]
       14 JUMP                             ; [+22]
       15 FASTCALL1                        TYPE R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K3 [type]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+15]
       22 LOADN                            R9 1
       23 LOADN                            R10 1
       24 FASTCALL3                        STRING_SUB R6 R9 R10
       26 MOVE                             R8 R6
       27 GETIMPORT                        R7 K6 [string.sub]
       29 CALL                             R7 3 1
       30 JUMPIFNOTEQKS                    R7 K7 ["$"] ; [+5]
       32 LOADK                            R7 K7 ["$"]
       33 MOVE                             R8 R6
       34 CONCAT                           R5 R7 R8
       35 JUMP                             ; [+1]
       36 MOVE                             R5 R6
       37 NAMECALL                         R1 R1 K8 ["FireHost"]
       39 CALL                             R1 4 0
       40 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 GETUPVAL                         R6 2
        4 GETTABLEKS                       R6 R6 K0 ["current"]
        6 GETUPVAL                         R7 3
        7 CALL                             R7 0 1
        8 JUMPIF                           R7 ; [+2]
        9 MOVE                             R5 R6
       10 JUMP                             ; [+26]
       11 JUMPIFNOTEQKNIL                  R6 ; [+3]
       13 LOADK                            R5 K1 ["$nil"]
       14 JUMP                             ; [+22]
       15 FASTCALL1                        TYPE R6 ; [+3]
       16 MOVE                             R8 R6
       17 GETIMPORT                        R7 K3 [type]
       19 CALL                             R7 1 1
       20 JUMPIFNOTEQKS                    R7 K4 ["string"] ; [+15]
       22 LOADN                            R9 1
       23 LOADN                            R10 1
       24 FASTCALL3                        STRING_SUB R6 R9 R10
       26 MOVE                             R8 R6
       27 GETIMPORT                        R7 K6 [string.sub]
       29 CALL                             R7 3 1
       30 JUMPIFNOTEQKS                    R7 K7 ["$"] ; [+5]
       32 LOADK                            R7 K7 ["$"]
       33 MOVE                             R8 R6
       34 CONCAT                           R5 R7 R8
       35 JUMP                             ; [+1]
       36 MOVE                             R5 R6
       37 NAMECALL                         R1 R1 K8 ["FireGuest"]
       39 CALL                             R1 4 0
       40 RETURN                           R0 0

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
        6 JUMPIFNOT                        R1 ; [+18]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R3 1
        9 NEWCLOSURE                       R4 P0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R1 R1 K1 ["OnGuestEvent"]
       16 CALL                             R1 3 2
       17 JUMPIFNOT                        R2 ; [+7]
       18 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 GETIMPORT                        R3 K4 [table.insert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R1 0
       26 NAMECALL                         R1 R1 K5 ["IsHost"]
       28 CALL                             R1 1 1
       29 JUMPIFNOT                        R1 ; [+18]
       30 GETUPVAL                         R1 0
       31 GETUPVAL                         R3 1
       32 NEWCLOSURE                       R4 P1
       33 CAPTURE                          UPVAL U0
       34 CAPTURE                          UPVAL U1
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          UPVAL U3
       37 NAMECALL                         R1 R1 K6 ["OnHostEvent"]
       39 CALL                             R1 3 2
       40 JUMPIFNOT                        R2 ; [+7]
       41 FASTCALL2                        TABLE_INSERT R0 R2 ; [+5]
       43 MOVE                             R4 R0
       44 MOVE                             R5 R2
       45 GETIMPORT                        R3 K4 [table.insert]
       47 CALL                             R3 2 0
       48 NEWCLOSURE                       R1 P2
       49 CAPTURE                          VAL R0
       50 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 CALL                             R4 0 1
        2 JUMPIFNOT                        R4 ; [+12]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["ContextServices"]
        6 GETTABLEKS                       R3 R3 K1 ["Plugin"]
        8 NAMECALL                         R3 R3 K2 ["use"]
       10 CALL                             R3 1 1
       11 NAMECALL                         R3 R3 K3 ["get"]
       13 CALL                             R3 1 1
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["useContext"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R5 R5 K5 ["Context"]
       22 CALL                             R4 1 1
       23 GETTABLEKS                       R4 R4 K6 ["getNetworking"]
       25 CALL                             R4 0 1
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K7 ["useRef"]
       29 LOADNIL                          R6
       30 CALL                             R5 1 1
       31 SETTABLEKS                       R1 R5 K8 ["current"]
       33 GETUPVAL                         R6 0
       34 CALL                             R6 0 1
       35 JUMPIFNOT                        R6 ; [+20]
       36 GETUPVAL                         R6 2
       37 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       39 NEWCLOSURE                       R7 P0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R5
       46 CAPTURE                          UPVAL U0
       47 NEWTABLE                         R8 0 4
       49 MOVE                             R9 R3
       50 MOVE                             R10 R0
       51 MOVE                             R11 R4
       52 MOVE                             R12 R2
       53 SETLIST                          R8 R9 4 [1]
       55 CALL                             R6 2 0
       56 GETUPVAL                         R6 2
       57 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       59 NEWCLOSURE                       R7 P1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          VAL R5
       64 CAPTURE                          UPVAL U0
       65 NEWTABLE                         R8 0 4
       67 MOVE                             R9 R4
       68 MOVE                             R10 R1
       69 MOVE                             R11 R2
       70 MOVE                             R12 R5
       71 SETLIST                          R8 R9 4 [1]
       73 CALL                             R6 2 0
       74 GETUPVAL                         R6 2
       75 GETTABLEKS                       R6 R6 K9 ["useEffect"]
       77 NEWCLOSURE                       R7 P2
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R5
       81 CAPTURE                          UPVAL U0
       82 NEWTABLE                         R8 0 2
       84 MOVE                             R9 R4
       85 MOVE                             R10 R5
       86 SETLIST                          R8 R9 2 [1]
       88 CALL                             R6 2 0
       89 RETURN                           R0 0

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
        1 GETUPVAL                         R4 1
        2 CALL                             R4 0 1
        3 JUMPIF                           R4 ; [+2]
        4 MOVE                             R3 R1
        5 JUMP                             ; [+30]
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R4 K1 [type]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K2 ["string"] ; [+23]
       13 LOADN                            R6 1
       14 LOADN                            R7 1
       15 FASTCALL3                        STRING_SUB R1 R6 R7
       17 MOVE                             R5 R1
       18 GETIMPORT                        R4 K4 [string.sub]
       20 CALL                             R4 3 1
       21 JUMPIFNOTEQKS                    R4 K5 ["$"] ; [+13]
       23 JUMPIFNOTEQKS                    R1 K6 ["$nil"] ; [+3]
       25 LOADNIL                          R3
       26 JUMP                             ; [+9]
       27 FASTCALL2K                       STRING_SUB R1 K7 ; [+5]
       29 MOVE                             R4 R1
       30 LOADK                            R5 K7 [2]
       31 GETIMPORT                        R3 K4 [string.sub]
       33 CALL                             R3 2 1
       34 JUMP                             ; [+1]
       35 MOVE                             R3 R1
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

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
        2 CAPTURE                          UPVAL U1
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R2 2
        6 NAMECALL                         R2 R2 K0 ["IsGuest"]
        8 CALL                             R2 1 1
        9 JUMPIFNOT                        R2 ; [+20]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R4 3
       12 MOVE                             R5 R0
       13 NAMECALL                         R2 R2 K1 ["OnGuestEvent"]
       15 CALL                             R2 3 2
       16 JUMPIFNOT                        R3 ; [+7]
       17 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R3
       21 GETIMPORT                        R4 K4 [table.insert]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R4 2
       25 GETUPVAL                         R6 3
       26 LOADNIL                          R7
       27 NAMECALL                         R4 R4 K5 ["FireHost"]
       29 CALL                             R4 3 0
       30 GETUPVAL                         R2 2
       31 NAMECALL                         R2 R2 K6 ["IsHost"]
       33 CALL                             R2 1 1
       34 JUMPIFNOT                        R2 ; [+20]
       35 GETUPVAL                         R2 2
       36 GETUPVAL                         R4 3
       37 MOVE                             R5 R0
       38 NAMECALL                         R2 R2 K7 ["OnHostEvent"]
       40 CALL                             R2 3 2
       41 JUMPIFNOT                        R3 ; [+7]
       42 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       44 MOVE                             R5 R1
       45 MOVE                             R6 R3
       46 GETIMPORT                        R4 K4 [table.insert]
       48 CALL                             R4 2 0
       49 GETUPVAL                         R4 2
       50 GETUPVAL                         R6 3
       51 LOADNIL                          R7
       52 NAMECALL                         R4 R4 K8 ["FireGuest"]
       54 CALL                             R4 3 0
       55 NEWCLOSURE                       R2 P1
       56 CAPTURE                          VAL R1
       57 RETURN                           R2 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R2 R2 K2 ["getNetworking"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R4 2
       11 CALL                             R4 0 1
       12 JUMPIFNOT                        R4 ; [+12]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["ContextServices"]
       16 GETTABLEKS                       R3 R3 K4 ["Plugin"]
       18 NAMECALL                         R3 R3 K5 ["use"]
       20 CALL                             R3 1 1
       21 NAMECALL                         R3 R3 K6 ["get"]
       23 CALL                             R3 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R3
       26 GETUPVAL                         R4 2
       27 CALL                             R4 0 1
       28 JUMPIFNOT                        R4 ; [+14]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       32 NEWCLOSURE                       R5 P0
       33 CAPTURE                          VAL R3
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R0
       37 NEWTABLE                         R6 0 1
       39 MOVE                             R7 R3
       40 SETLIST                          R6 R7 1 [1]
       42 CALL                             R4 2 0
       43 GETUPVAL                         R4 0
       44 GETTABLEKS                       R4 R4 K7 ["useEffect"]
       46 NEWCLOSURE                       R5 P1
       47 CAPTURE                          VAL R1
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R0
       51 NEWTABLE                         R6 0 4
       53 GETUPVAL                         R8 2
       54 CALL                             R8 0 1
       55 JUMPIFNOT                        R8 ; [+2]
       56 MOVE                             R7 R3
       57 JUMP                             ; [+1]
       58 LOADNIL                          R7
       59 MOVE                             R8 R1
       60 MOVE                             R9 R0
       61 MOVE                             R10 R2
       62 SETLIST                          R6 R7 4 [1]
       64 CALL                             R4 2 0
       65 RETURN                           R0 0

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
       10 CALL                             R2 0 1
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETUPVAL                         R2 2
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETUPVAL                         R2 2
       15 GETTABLEKS                       R2 R2 K1 ["sendToAll"]
       17 JUMPIF                           R2 ; [+4]
       18 GETIMPORT                        R2 K3 [error]
       20 LOADK                            R3 K4 ["Action is not connected. This callback must still be connected for invocation to return."]
       21 CALL                             R2 1 0
       22 RETURN                           R0 0

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
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["sendToAll"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R0 R1 K1 ["ALL"]
       14 GETUPVAL                         R1 3
       15 NAMECALL                         R1 R1 K2 ["IsGuest"]
       17 CALL                             R1 1 1
       18 JUMPIFNOT                        R1 ; [+64]
       19 GETUPVAL                         R1 0
       20 CALL                             R1 0 1
       21 JUMPIFNOT                        R1 ; [+52]
       22 GETIMPORT                        R1 K5 [table.pack]
       24 GETVARARGS                       R2 -1
       25 CALL                             R1 -1 1
       26 LOADNIL                          R2
       27 GETIMPORT                        R3 K7 [pcall]
       29 NEWCLOSURE                       R4 P0
       30 CAPTURE                          REF R2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          REF R0
       34 CAPTURE                          VAL R1
       35 CALL                             R3 1 2
       36 JUMPIFNOT                        R3 ; [+1]
       37 JUMPIF                           R2 ; [+24]
       38 FASTCALL1                        TOSTRING R4 ; [+3]
       39 MOVE                             R6 R4
       40 GETIMPORT                        R5 K9 [tostring]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K12 [string.find]
       45 MOVE                             R7 R5
       46 LOADK                            R8 K13 ["Self is closed"]
       47 CALL                             R6 2 1
       48 JUMPIF                           R6 ; [+11]
       49 GETIMPORT                        R6 K15 [warn]
       51 LOADK                            R8 K16 ["Network action %* send to %* failed - %*"]
       52 GETUPVAL                         R10 4
       53 ORK                              R11 R0 K1 ["ALL"]
       54 MOVE                             R12 R4
       55 NAMECALL                         R8 R8 K17 ["format"]
       57 CALL                             R8 4 1
       58 MOVE                             R7 R8
       59 CALL                             R6 1 0
       60 DUPTABLE                         R6 K20 [{["n"] = 0}]
       61 MOVE                             R2 R6
       62 LOADN                            R7 1
       63 GETTABLEKS                       R8 R2 K18 ["n"]
       65 FASTCALL3                        TABLE_UNPACK R2 R7 R8
       67 MOVE                             R6 R2
       68 GETIMPORT                        R5 K22 [table.unpack]
       70 CALL                             R5 3 -1
       71 CLOSEUPVALS                      R0
       72 RETURN                           R5 -1
       73 CLOSEUPVALS                      R2
       74 GETUPVAL                         R1 3
       75 GETUPVAL                         R3 4
       76 MOVE                             R4 R0
       77 GETVARARGS                       R5 -1
       78 NAMECALL                         R1 R1 K23 ["InvokeHostAsync"]
       80 CALL                             R1 -1 -1
       81 CLOSEUPVALS                      R0
       82 RETURN                           R1 -1
       83 GETUPVAL                         R1 3
       84 NAMECALL                         R1 R1 K24 ["IsHost"]
       86 CALL                             R1 1 1
       87 JUMPIFNOT                        R1 ; [+64]
       88 GETUPVAL                         R1 0
       89 CALL                             R1 0 1
       90 JUMPIFNOT                        R1 ; [+52]
       91 GETIMPORT                        R1 K5 [table.pack]
       93 GETVARARGS                       R2 -1
       94 CALL                             R1 -1 1
       95 LOADNIL                          R2
       96 GETIMPORT                        R3 K7 [pcall]
       98 NEWCLOSURE                       R4 P1
       99 CAPTURE                          REF R2
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          REF R0
      103 CAPTURE                          VAL R1
      104 CALL                             R3 1 2
      105 JUMPIFNOT                        R3 ; [+1]
      106 JUMPIF                           R2 ; [+24]
      107 FASTCALL1                        TOSTRING R4 ; [+3]
      108 MOVE                             R6 R4
      109 GETIMPORT                        R5 K9 [tostring]
      111 CALL                             R5 1 1
      112 GETIMPORT                        R6 K12 [string.find]
      114 MOVE                             R7 R5
      115 LOADK                            R8 K13 ["Self is closed"]
      116 CALL                             R6 2 1
      117 JUMPIF                           R6 ; [+11]
      118 GETIMPORT                        R6 K15 [warn]
      120 LOADK                            R8 K16 ["Network action %* send to %* failed - %*"]
      121 GETUPVAL                         R10 4
      122 ORK                              R11 R0 K25 ["UI"]
      123 MOVE                             R12 R4
      124 NAMECALL                         R8 R8 K17 ["format"]
      126 CALL                             R8 4 1
      127 MOVE                             R7 R8
      128 CALL                             R6 1 0
      129 DUPTABLE                         R6 K20 [{["n"] = 0}]
      130 MOVE                             R2 R6
      131 LOADN                            R7 1
      132 GETTABLEKS                       R8 R2 K18 ["n"]
      134 FASTCALL3                        TABLE_UNPACK R2 R7 R8
      136 MOVE                             R6 R2
      137 GETIMPORT                        R5 K22 [table.unpack]
      139 CALL                             R5 3 -1
      140 CLOSEUPVALS                      R0
      141 RETURN                           R5 -1
      142 CLOSEUPVALS                      R2
      143 GETUPVAL                         R1 3
      144 GETUPVAL                         R3 4
      145 MOVE                             R4 R0
      146 GETVARARGS                       R5 -1
      147 NAMECALL                         R1 R1 K26 ["InvokeGuestAsync"]
      149 CALL                             R1 -1 -1
      150 CLOSEUPVALS                      R0
      151 RETURN                           R1 -1
      152 GETIMPORT                        R1 K28 [error]
      154 LOADK                            R2 K29 ["Networking is neither UIDM nor EditableDM"]
      155 CALL                             R1 1 0
      156 CLOSEUPVALS                      R0
      157 RETURN                           R0 0

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
        3 CAPTURE                          UPVAL U2
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 3
        7 NAMECALL                         R2 R2 K0 ["IsGuest"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+13]
       11 GETUPVAL                         R2 3
       12 GETUPVAL                         R4 4
       13 MOVE                             R5 R0
       14 NAMECALL                         R2 R2 K1 ["OnGuestInvokeAsync"]
       16 CALL                             R2 3 2
       17 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       19 MOVE                             R5 R1
       20 MOVE                             R6 R3
       21 GETIMPORT                        R4 K4 [table.insert]
       23 CALL                             R4 2 0
       24 GETUPVAL                         R2 3
       25 NAMECALL                         R2 R2 K5 ["IsHost"]
       27 CALL                             R2 1 1
       28 JUMPIFNOT                        R2 ; [+13]
       29 GETUPVAL                         R2 3
       30 GETUPVAL                         R4 4
       31 MOVE                             R5 R0
       32 NAMECALL                         R2 R2 K6 ["OnHostInvokeAsync"]
       34 CALL                             R2 3 2
       35 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       37 MOVE                             R5 R1
       38 MOVE                             R6 R3
       39 GETIMPORT                        R4 K4 [table.insert]
       41 CALL                             R4 2 0
       42 GETUPVAL                         R2 5
       43 NEWCLOSURE                       R3 P1
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          UPVAL U4
       49 SETTABLEKS                       R3 R2 K7 ["current"]
       51 NEWCLOSURE                       R2 P2
       52 CAPTURE                          VAL R1
       53 RETURN                           R2 1

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
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R4
       32 CAPTURE                          UPVAL U3
       33 NEWTABLE                         R8 0 3
       35 GETUPVAL                         R10 2
       36 CALL                             R10 0 1
       37 JUMPIFNOT                        R10 ; [+2]
       38 MOVE                             R9 R2
       39 JUMP                             ; [+1]
       40 LOADNIL                          R9
       41 MOVE                             R10 R0
       42 MOVE                             R11 R4
       43 SETLIST                          R8 R9 3 [1]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 0
       47 GETTABLEKS                       R6 R6 K6 ["useCallback"]
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R4
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R4
       54 SETLIST                          R8 R9 1 [1]
       56 CALL                             R6 2 -1
       57 RETURN                           R6 -1

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
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R0 K14 ["Flags"]
       60 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUI_RunTimeDebug"]
       62 CALL                             R8 1 1
       63 NEWTABLE                         R9 8 0
       65 DUPCLOSURE                       R10 K17 [PROTO_0]
       66 CAPTURE                          VAL R8
       67 DUPCLOSURE                       R11 K18 [PROTO_1]
       68 CAPTURE                          VAL R8
       69 DUPCLOSURE                       R12 K19 [PROTO_10]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R7
       75 SETTABLEKS                       R12 R9 K20 ["useReplicatedState"]
       77 DUPCLOSURE                       R12 K21 [PROTO_17]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R8
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R7
       83 SETTABLEKS                       R12 R9 K22 ["useReplicatedStateListenerCallback"]
       85 DUPCLOSURE                       R12 K23 [PROTO_18]
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R9
       88 SETTABLEKS                       R12 R9 K24 ["useReplicatedStateListener"]
       90 DUPCLOSURE                       R12 K25 [PROTO_20]
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R9
       94 SETTABLEKS                       R12 R9 K26 ["useObserveStateListener"]
       96 DUPCLOSURE                       R12 K27 [PROTO_28]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R12 R9 K28 ["useBoundAction"]
      103 DUPCLOSURE                       R12 K29 [PROTO_31]
      104 CAPTURE                          VAL R9
      105 SETTABLEKS                       R12 R9 K30 ["createBoundAction"]
      107 DUPCLOSURE                       R12 K31 [PROTO_36]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R6
      110 SETTABLEKS                       R12 R9 K32 ["createReplicatedState"]
      112 RETURN                           R9 1
