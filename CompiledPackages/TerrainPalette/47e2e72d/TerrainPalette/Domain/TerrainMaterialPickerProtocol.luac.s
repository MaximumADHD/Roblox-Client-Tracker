PROTO_0:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+14]
        8 LOADB                            R1 0
        9 MODK                             R2 R0 K3 [1]
       10 JUMPIFNOTEQKN                    R2 K4 [0] ; [+10]
       12 LOADB                            R1 0
       13 LOADN                            R2 0
       14 JUMPIFNOTLE                      R2 R0 ; [+6]
       16 LOADN                            R2 63
       17 JUMPIFLE                         R0 R2 ; [+2]
       19 LOADB                            R1 0 +1
       20 LOADB                            R1 1
       21 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+52]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["DataModel"]
       11 FASTCALL1                        TYPE R3 ; [+2]
       12 GETIMPORT                        R2 K1 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+43]
       17 GETTABLEKS                       R2 R0 K5 ["PluginType"]
       19 JUMPIFEQKNIL                     R2 ; [+10]
       21 LOADB                            R1 0
       22 GETTABLEKS                       R3 R0 K5 ["PluginType"]
       24 FASTCALL1                        TYPE R3 ; [+2]
       25 GETIMPORT                        R2 K1 [type]
       27 CALL                             R2 1 1
       28 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+30]
       30 LOADB                            R1 0
       31 GETTABLEKS                       R3 R0 K6 ["PluginId"]
       33 FASTCALL1                        TYPE R3 ; [+2]
       34 GETIMPORT                        R2 K1 [type]
       36 CALL                             R2 1 1
       37 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+21]
       39 LOADB                            R1 0
       40 GETTABLEKS                       R2 R0 K7 ["Category"]
       42 JUMPIFNOTEQKS                    R2 K8 ["Widgets"] ; [+16]
       44 LOADB                            R1 0
       45 GETTABLEKS                       R3 R0 K9 ["ItemId"]
       47 FASTCALL1                        TYPE R3 ; [+2]
       48 GETIMPORT                        R2 K1 [type]
       50 CALL                             R2 1 1
       51 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+7]
       53 GETTABLEKS                       R2 R0 K9 ["ItemId"]
       55 JUMPIFNOTEQKS                    R2 K10 [""] ; [+2]
       57 LOADB                            R1 0 +1
       58 LOADB                            R1 1
       59 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+65]
        8 LOADB                            R1 0
        9 GETTABLEKS                       R3 R0 K3 ["requestId"]
       11 FASTCALL1                        TYPE R3 ; [+2]
       12 GETIMPORT                        R2 K1 [type]
       14 CALL                             R2 1 1
       15 JUMPIFNOTEQKS                    R2 K4 ["string"] ; [+56]
       17 LOADB                            R1 0
       18 GETTABLEKS                       R2 R0 K3 ["requestId"]
       20 JUMPIFEQKS                       R2 K5 [""] ; [+51]
       22 GETTABLEKS                       R2 R0 K6 ["selectedSlotIndex"]
       24 JUMPIFEQKNIL                     R2 ; [+25]
       26 GETTABLEKS                       R2 R0 K6 ["selectedSlotIndex"]
       28 LOADB                            R1 0
       29 FASTCALL1                        TYPE R2 ; [+3]
       30 MOVE                             R4 R2
       31 GETIMPORT                        R3 K1 [type]
       33 CALL                             R3 1 1
       34 JUMPIFNOTEQKS                    R3 K7 ["number"] ; [+14]
       36 LOADB                            R1 0
       37 MODK                             R3 R2 K8 [1]
       38 JUMPIFNOTEQKN                    R3 K9 [0] ; [+10]
       40 LOADB                            R1 0
       41 LOADN                            R3 0
       42 JUMPIFNOTLE                      R3 R2 ; [+6]
       44 LOADN                            R3 63
       45 JUMPIFLE                         R2 R3 ; [+2]
       47 LOADB                            R1 0 +1
       48 LOADB                            R1 1
       49 JUMPIFNOT                        R1 ; [+22]
       50 LOADB                            R1 0
       51 GETTABLEKS                       R3 R0 K10 ["allowAir"]
       53 FASTCALL1                        TYPE R3 ; [+2]
       54 GETIMPORT                        R2 K1 [type]
       56 CALL                             R2 1 1
       57 JUMPIFNOTEQKS                    R2 K11 ["boolean"] ; [+14]
       59 LOADB                            R1 0
       60 GETTABLEKS                       R3 R0 K12 ["allowWater"]
       62 FASTCALL1                        TYPE R3 ; [+2]
       63 GETIMPORT                        R2 K1 [type]
       65 CALL                             R2 1 1
       66 JUMPIFNOTEQKS                    R2 K11 ["boolean"] ; [+5]
       68 GETUPVAL                         R1 0
       69 GETTABLEKS                       R2 R0 K13 ["anchorWidgetUri"]
       71 CALL                             R1 1 1
       72 RETURN                           R1 1

PROTO_3:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+13]
        7 GETTABLEKS                       R2 R0 K3 ["requestId"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["string"] ; [+5]
       15 GETTABLEKS                       R1 R0 K3 ["requestId"]
       17 JUMPIFNOTEQKS                    R1 K5 [""] ; [+3]
       19 LOADB                            R1 0
       20 RETURN                           R1 1
       21 GETTABLEKS                       R1 R0 K6 ["outcome"]
       23 JUMPIFEQKS                       R1 K7 ["selected"] ; [+5]
       25 GETTABLEKS                       R1 R0 K6 ["outcome"]
       27 JUMPIFNOTEQKS                    R1 K8 ["slotCreated"] ; [+25]
       29 GETTABLEKS                       R2 R0 K9 ["slotIndex"]
       31 LOADB                            R1 0
       32 FASTCALL1                        TYPE R2 ; [+3]
       33 MOVE                             R4 R2
       34 GETIMPORT                        R3 K1 [type]
       36 CALL                             R3 1 1
       37 JUMPIFNOTEQKS                    R3 K10 ["number"] ; [+14]
       39 LOADB                            R1 0
       40 MODK                             R3 R2 K11 [1]
       41 JUMPIFNOTEQKN                    R3 K12 [0] ; [+10]
       43 LOADB                            R1 0
       44 LOADN                            R3 0
       45 JUMPIFNOTLE                      R3 R2 ; [+6]
       47 LOADN                            R3 63
       48 JUMPIFLE                         R2 R3 ; [+2]
       50 LOADB                            R1 0 +1
       51 LOADB                            R1 1
       52 RETURN                           R1 1
       53 GETTABLEKS                       R1 R0 K6 ["outcome"]
       55 JUMPIFNOTEQKS                    R1 K13 ["cancelled"] ; [+8]
       57 GETTABLEKS                       R2 R0 K9 ["slotIndex"]
       59 JUMPIFEQKNIL                     R2 ; [+2]
       61 LOADB                            R1 0 +1
       62 LOADB                            R1 1
       63 RETURN                           R1 1
       64 LOADB                            R1 0
       65 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 CAPTURE                          VAL R1
        5 DUPCLOSURE                       R3 K3 [PROTO_3]
        6 DUPTABLE                         R4 K6 [{"isValidRequest", "isValidResponse"}]
        7 SETTABLEKS                       R2 R4 K4 ["isValidRequest"]
        9 SETTABLEKS                       R3 R4 K5 ["isValidResponse"]
       11 RETURN                           R4 1
