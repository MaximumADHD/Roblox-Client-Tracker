PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["scheduled"]
        2 JUMPIF                           R1 ; [+10]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R3 R0 K1 ["depth"]
        9 MOVE                             R4 R0
       10 NAMECALL                         R1 R1 K2 ["enqueue"]
       12 CALL                             R1 3 0
       13 RETURN                           R0 0

PROTO_1:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["scheduled"]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 MOVE                             R3 R0
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R1 R6
        8 FORGLOOP                         R2 2 ; [-3]
       10 LOADNIL                          R2
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          REF R2
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["new"]
       16 LOADK                            R5 K1 ["RefMonitor"]
       17 LOADK                            R6 K2 [0.01]
       18 NEWCLOSURE                       R7 P1
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          VAL R3
       21 CALL                             R4 3 1
       22 MOVE                             R2 R4
       23 DUPTABLE                         R5 K11 [{["roots"], ["watching"], ["mounted"], ["addConnection"] = , ["removeConnection"] = , ["queue"], ["publish"]}]
       24 SETTABLEKS                       R1 R5 K3 ["roots"]
       26 NEWTABLE                         R6 0 0
       28 SETTABLEKS                       R6 R5 K4 ["watching"]
       30 NEWTABLE                         R6 0 0
       32 SETTABLEKS                       R6 R5 K5 ["mounted"]
       34 SETTABLEKS                       R2 R5 K9 ["queue"]
       36 SETTABLEKS                       R3 R5 K10 ["publish"]
       38 GETUPVAL                         R6 2
       39 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       41 GETIMPORT                        R4 K13 [setmetatable]
       43 CALL                             R4 2 1
       44 CLOSEUPVALS                      R2
       45 RETURN                           R4 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["addView"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["removeView"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["roots"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 MOVE                             R8 R1
        8 NAMECALL                         R9 R5 K1 ["GetFullName"]
       10 CALL                             R9 1 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R7 K4 [table.insert]
       14 CALL                             R7 -1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R2 R2 K5 ["log"]
       20 LOADK                            R3 K6 ["RefMonitor"]
       21 LOADK                            R4 K7 ["Monitoring roots to observe template refs:"]
       22 GETIMPORT                        R5 K9 [table.concat]
       24 MOVE                             R6 R1
       25 LOADK                            R7 K10 [", "]
       26 CALL                             R5 2 -1
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 1
       29 LOADK                            R4 K11 ["template-view"]
       30 NAMECALL                         R2 R2 K12 ["GetTagged"]
       32 CALL                             R2 2 1
       33 MOVE                             R3 R2
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R0 K13 ["addView"]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-5]
       43 GETUPVAL                         R3 1
       44 LOADK                            R5 K11 ["template-view"]
       45 NAMECALL                         R3 R3 K14 ["GetInstanceAddedSignal"]
       47 CALL                             R3 2 1
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R3 R3 K15 ["Connect"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R0 K16 ["addConnection"]
       55 GETUPVAL                         R3 1
       56 LOADK                            R5 K11 ["template-view"]
       57 NAMECALL                         R3 R3 K17 ["GetInstanceRemovedSignal"]
       59 CALL                             R3 2 1
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          VAL R0
       62 NAMECALL                         R3 R3 K15 ["Connect"]
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R0 K18 ["removeConnection"]
       67 GETTABLEKS                       R3 R0 K19 ["queue"]
       69 NAMECALL                         R3 R3 K20 ["start"]
       71 CALL                             R3 1 0
       72 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["addConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["addConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["addConnection"]
       11 GETTABLEKS                       R1 R0 K2 ["removeConnection"]
       13 JUMPIFNOT                        R1 ; [+8]
       14 GETTABLEKS                       R1 R0 K2 ["removeConnection"]
       16 NAMECALL                         R1 R1 K1 ["Disconnect"]
       18 CALL                             R1 1 0
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K2 ["removeConnection"]
       22 GETTABLEKS                       R1 R0 K3 ["watching"]
       24 LOADNIL                          R2
       25 LOADNIL                          R3
       26 FORGPREP                         R1
       27 GETTABLEKS                       R6 R5 K4 ["onMount"]
       29 NAMECALL                         R6 R6 K1 ["Disconnect"]
       31 CALL                             R6 1 0
       32 FORGLOOP                         R1 2 ; [-6]
       34 GETTABLEKS                       R1 R0 K5 ["queue"]
       36 NAMECALL                         R1 R1 K6 ["stop"]
       38 CALL                             R1 1 0
       39 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 NAMECALL                         R2 R1 K0 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K1 ["Parent"]
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETTABLEKS                       R4 R0 K2 ["roots"]
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 GETTABLEKS                       R2 R2 K1 ["Parent"]
       18 JUMPBACK                         ; [-10]
       19 LOADB                            R3 0
       20 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["blox-mounted"]
        2 NAMECALL                         R0 R0 K1 ["GetAttribute"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETUPVAL                         R2 0
        8 NAMECALL                         R0 R0 K2 ["mountView"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R2 0
       14 NAMECALL                         R0 R0 K3 ["unmountView"]
       16 CALL                             R0 2 0
       17 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["shouldView"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R3 R0 K1 ["watching"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K2 ["log"]
       14 LOADK                            R3 K3 ["RefMonitor"]
       15 LOADK                            R4 K4 ["Watching template view:"]
       16 NAMECALL                         R5 R1 K5 ["GetFullName"]
       18 CALL                             R5 1 -1
       19 CALL                             R2 -1 0
       20 DUPTABLE                         R2 K7 [{"onMount"}]
       21 LOADK                            R5 K8 ["blox-mounted"]
       22 NAMECALL                         R3 R1 K9 ["GetAttributeChangedSignal"]
       24 CALL                             R3 2 1
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R0
       28 NAMECALL                         R3 R3 K10 ["Connect"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K6 ["onMount"]
       33 GETTABLEKS                       R3 R0 K1 ["watching"]
       35 SETTABLE                         R2 R3 R1
       36 LOADK                            R5 K8 ["blox-mounted"]
       37 NAMECALL                         R3 R1 K11 ["GetAttribute"]
       39 CALL                             R3 2 1
       40 JUMPIFNOTEQKNIL                  R3 ; [+6]
       42 LOADK                            R5 K8 ["blox-mounted"]
       43 LOADB                            R6 0
       44 NAMECALL                         R3 R1 K12 ["SetAttribute"]
       46 CALL                             R3 3 0
       47 LOADK                            R5 K8 ["blox-mounted"]
       48 NAMECALL                         R3 R1 K11 ["GetAttribute"]
       50 CALL                             R3 2 1
       51 JUMPIFNOT                        R3 ; [+4]
       52 MOVE                             R5 R1
       53 NAMECALL                         R3 R0 K13 ["mountView"]
       55 CALL                             R3 2 0
       56 RETURN                           R0 0

PROTO_10:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["unmountView"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R3 R0 K1 ["watching"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["log"]
       11 LOADK                            R4 K3 ["RefMonitor"]
       12 LOADK                            R5 K4 ["Stopping watch template view:"]
       13 NAMECALL                         R6 R1 K5 ["GetFullName"]
       15 CALL                             R6 1 -1
       16 CALL                             R3 -1 0
       17 GETTABLEKS                       R3 R2 K6 ["onMount"]
       19 NAMECALL                         R3 R3 K7 ["Disconnect"]
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R0 K1 ["watching"]
       24 LOADNIL                          R4
       25 SETTABLE                         R4 R3 R1
       26 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["DISABLE_TEMPLATE_CLASSES"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K1 ["Value"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["Template"]
        9 JUMPIF                           R2 ; [+11]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["warn"]
       13 LOADK                            R4 K4 ["RefMonitor"]
       14 LOADK                            R5 K5 ["Cannot mount view without template:"]
       15 NAMECALL                         R6 R1 K6 ["GetFullName"]
       17 CALL                             R6 1 -1
       18 CALL                             R3 -1 0
       19 LOADNIL                          R3
       20 RETURN                           R3 1
       21 NEWTABLE                         R3 0 0
       23 NEWTABLE                         R4 0 0
       25 NAMECALL                         R5 R1 K7 ["GetAttributes"]
       27 CALL                             R5 1 3
       28 FORGPREP                         R5
       29 LOADN                            R12 1
       30 LOADN                            R13 6
       31 NAMECALL                         R10 R8 K8 ["sub"]
       33 CALL                             R10 3 1
       34 JUMPIFNOTEQKS                    R10 K9 ["param_"] ; [+17]
       36 GETUPVAL                         R10 1
       37 MOVE                             R11 R1
       38 MOVE                             R12 R8
       39 CALL                             R10 2 2
       40 LOADN                            R14 7
       41 NAMECALL                         R12 R8 K8 ["sub"]
       43 CALL                             R12 2 1
       44 SETTABLE                         R10 R4 R12
       45 FASTCALL2                        TABLE_INSERT R3 R11 ; [+5]
       47 MOVE                             R13 R3
       48 MOVE                             R14 R11
       49 GETIMPORT                        R12 K12 [table.insert]
       51 CALL                             R12 2 0
       52 FORGLOOP                         R5 2 ; [-24]
       54 GETTABLEKS                       R5 R1 K13 ["Parent"]
       56 JUMPIF                           R5 ; [+11]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K3 ["warn"]
       60 LOADK                            R7 K4 ["RefMonitor"]
       61 LOADK                            R8 K14 ["Cannot mount view without parent:"]
       62 NAMECALL                         R9 R1 K6 ["GetFullName"]
       64 CALL                             R9 1 -1
       65 CALL                             R6 -1 0
       66 LOADNIL                          R6
       67 RETURN                           R6 1
       68 GETUPVAL                         R6 2
       69 GETTABLEKS                       R7 R0 K15 ["publish"]
       71 DUPTABLE                         R8 K25 [{["type"] = "Ref", ["host"], ["templateId"], ["template"], ["params"], ["children"], ["mounted"] = False}]
       72 SETTABLEKS                       R5 R8 K18 ["host"]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R9 R9 K26 ["getId"]
       77 MOVE                             R10 R2
       78 CALL                             R9 1 1
       79 SETTABLEKS                       R9 R8 K19 ["templateId"]
       81 SETTABLEKS                       R2 R8 K20 ["template"]
       83 SETTABLEKS                       R4 R8 K21 ["params"]
       85 NAMECALL                         R9 R1 K27 ["GetChildren"]
       87 CALL                             R9 1 1
       88 SETTABLEKS                       R9 R8 K22 ["children"]
       90 MOVE                             R9 R5
       91 CALL                             R6 3 1
       92 MOVE                             R7 R3
       93 LOADNIL                          R8
       94 LOADNIL                          R9
       95 FORGPREP                         R7
       96 GETTABLEKS                       R13 R6 K28 ["disposal"]
       98 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
      100 MOVE                             R14 R11
      101 GETIMPORT                        R12 K12 [table.insert]
      103 CALL                             R12 2 0
      104 FORGLOOP                         R7 2 ; [-9]
      106 GETUPVAL                         R7 0
      107 GETTABLEKS                       R7 R7 K29 ["log"]
      109 LOADK                            R8 K4 ["RefMonitor"]
      110 LOADK                            R9 K30 ["Mounting view"]
      111 NAMECALL                         R10 R1 K6 ["GetFullName"]
      113 CALL                             R10 1 1
      114 LOADK                            R11 K31 ["as element"]
      115 MOVE                             R12 R6
      116 CALL                             R7 5 0
      117 GETTABLEKS                       R7 R0 K23 ["mounted"]
      119 SETTABLE                         R6 R7 R1
      120 LOADK                            R9 K32 ["blox-mounted"]
      121 LOADB                            R10 1
      122 NAMECALL                         R7 R1 K33 ["SetAttribute"]
      124 CALL                             R7 3 0
      125 GETTABLEKS                       R7 R0 K15 ["publish"]
      127 MOVE                             R8 R6
      128 CALL                             R7 1 0
      129 RETURN                           R6 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["mounted"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+16]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["log"]
        7 LOADK                            R4 K2 ["RefMonitor"]
        8 LOADK                            R5 K3 ["Unmounting view:"]
        9 NAMECALL                         R6 R1 K4 ["GetFullName"]
       11 CALL                             R6 1 -1
       12 CALL                             R3 -1 0
       13 LOADB                            R3 0
       14 SETTABLEKS                       R3 R2 K5 ["alive"]
       16 GETTABLEKS                       R3 R0 K6 ["publish"]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 0
       20 LOADK                            R5 K7 ["blox-mounted"]
       21 LOADB                            R6 0
       22 NAMECALL                         R3 R1 K8 ["SetAttribute"]
       24 CALL                             R3 3 0
       25 GETTABLEKS                       R3 R0 K0 ["mounted"]
       27 LOADNIL                          R4
       28 SETTABLE                         R4 R3 R1
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 GETIMPORT                        R1 K2 [script]
        7 GETTABLEKS                       R1 R1 K3 ["Parent"]
        9 GETTABLEKS                       R1 R1 K3 ["Parent"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["data"]
       15 GETTABLEKS                       R3 R3 K7 ["WorkQueue"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K8 ["runtime"]
       22 GETTABLEKS                       R4 R4 K9 ["makeElement"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["runtime"]
       29 GETTABLEKS                       R5 R5 K10 ["update"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K11 ["util"]
       36 GETTABLEKS                       R6 R6 K12 ["createAttributeGetter"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R1 K13 ["Debug"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K5 [require]
       46 GETTABLEKS                       R8 R1 K14 ["types"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K16 [game]
       51 LOADK                            R10 K17 ["CollectionService"]
       52 NAMECALL                         R8 R8 K18 ["GetService"]
       54 CALL                             R8 2 1
       55 GETIMPORT                        R9 K5 [require]
       57 GETIMPORT                        R10 K2 [script]
       59 GETTABLEKS                       R10 R10 K3 ["Parent"]
       61 GETTABLEKS                       R10 R10 K19 ["TemplateRegistry"]
       63 CALL                             R9 1 1
       64 GETTABLEKS                       R11 R6 K20 ["DISABLE_TEMPLATE_CLASSES"]
       66 JUMPIFNOT                        R11 ; [+2]
       67 LOADK                            R10 K21 ["ObjectValue"]
       68 JUMP                             ; [+1]
       69 LOADK                            R10 K22 ["Ref"]
       70 DUPCLOSURE                       R11 K23 [PROTO_2]
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R11 R0 K24 ["new"]
       76 DUPCLOSURE                       R11 K25 [PROTO_5]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R11 R0 K26 ["watch"]
       81 DUPCLOSURE                       R11 K27 [PROTO_6]
       82 SETTABLEKS                       R11 R0 K28 ["stop"]
       84 DUPCLOSURE                       R11 K29 [PROTO_7]
       85 CAPTURE                          VAL R10
       86 SETTABLEKS                       R11 R0 K30 ["shouldView"]
       88 DUPCLOSURE                       R11 K31 [PROTO_9]
       89 CAPTURE                          VAL R6
       90 SETTABLEKS                       R11 R0 K32 ["addView"]
       92 DUPCLOSURE                       R11 K33 [PROTO_10]
       93 CAPTURE                          VAL R6
       94 SETTABLEKS                       R11 R0 K34 ["removeView"]
       96 DUPCLOSURE                       R11 K35 [PROTO_11]
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R9
      101 SETTABLEKS                       R11 R0 K36 ["mountView"]
      103 DUPCLOSURE                       R11 K37 [PROTO_12]
      104 CAPTURE                          VAL R6
      105 SETTABLEKS                       R11 R0 K38 ["unmountView"]
      107 RETURN                           R0 1
