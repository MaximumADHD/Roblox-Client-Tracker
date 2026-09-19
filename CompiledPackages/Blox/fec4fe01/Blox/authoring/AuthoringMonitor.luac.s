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
       16 LOADK                            R5 K1 ["AuthoringMonitor"]
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
        2 NAMECALL                         R1 R1 K0 ["addAuthoringView"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["removeAuthoringView"]
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
       20 LOADK                            R3 K6 ["AuthoringMonitor"]
       21 LOADK                            R4 K7 ["Monitoring roots to observe authoring refs:"]
       22 GETIMPORT                        R5 K9 [table.concat]
       24 MOVE                             R6 R1
       25 LOADK                            R7 K10 [", "]
       26 CALL                             R5 2 -1
       27 CALL                             R2 -1 0
       28 GETUPVAL                         R2 1
       29 LOADK                            R4 K11 ["authoring-view"]
       30 NAMECALL                         R2 R2 K12 ["GetTagged"]
       32 CALL                             R2 2 1
       33 MOVE                             R3 R2
       34 LOADNIL                          R4
       35 LOADNIL                          R5
       36 FORGPREP                         R3
       37 MOVE                             R10 R7
       38 NAMECALL                         R8 R0 K13 ["addAuthoringView"]
       40 CALL                             R8 2 0
       41 FORGLOOP                         R3 2 ; [-5]
       43 GETUPVAL                         R3 1
       44 LOADK                            R5 K11 ["authoring-view"]
       45 NAMECALL                         R3 R3 K14 ["GetInstanceAddedSignal"]
       47 CALL                             R3 2 1
       48 NEWCLOSURE                       R5 P0
       49 CAPTURE                          VAL R0
       50 NAMECALL                         R3 R3 K15 ["Connect"]
       52 CALL                             R3 2 1
       53 SETTABLEKS                       R3 R0 K16 ["addConnection"]
       55 GETUPVAL                         R3 1
       56 LOADK                            R5 K11 ["authoring-view"]
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
        0 LOADK                            R4 K0 ["Ref"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETTABLEKS                       R4 R0 K3 ["roots"]
       12 GETTABLE                         R3 R4 R2
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 GETTABLEKS                       R2 R2 K2 ["Parent"]
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
       14 LOADK                            R3 K3 ["AuthoringMonitor"]
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
       11 LOADK                            R4 K3 ["AuthoringMonitor"]
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

PROTO_12:
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
       14 LOADK                            R3 K3 ["AuthoringMonitor"]
       15 LOADK                            R4 K4 ["Watching template authoring view:"]
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

PROTO_13:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["unmountView"]
        3 CALL                             R2 2 0
        4 GETTABLEKS                       R3 R0 K1 ["watching"]
        6 GETTABLE                         R2 R3 R1
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K2 ["log"]
       11 LOADK                            R4 K3 ["AuthoringMonitor"]
       12 LOADK                            R5 K4 ["Stopping watch template authoring view:"]
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

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["DISABLE_TEMPLATE_CLASSES"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K1 ["Value"]
        6 JUMP                             ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["Template"]
        9 JUMPIF                           R2 ; [+11]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K3 ["warn"]
       13 LOADK                            R4 K4 ["AuthoringMonitor"]
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
       54 DUPTABLE                         R5 K22 [{["type"] = "Ref", ["host"], ["templateId"], ["template"], ["params"], ["children"], ["mounted"] = False}]
       55 GETTABLEKS                       R6 R1 K23 ["Parent"]
       57 SETTABLEKS                       R6 R5 K15 ["host"]
       59 GETUPVAL                         R6 2
       60 GETTABLEKS                       R6 R6 K24 ["getId"]
       62 MOVE                             R7 R2
       63 CALL                             R6 1 1
       64 SETTABLEKS                       R6 R5 K16 ["templateId"]
       66 SETTABLEKS                       R2 R5 K17 ["template"]
       68 SETTABLEKS                       R4 R5 K18 ["params"]
       70 NAMECALL                         R6 R1 K25 ["GetChildren"]
       72 CALL                             R6 1 1
       73 SETTABLEKS                       R6 R5 K19 ["children"]
       75 DUPTABLE                         R6 K33 [{["ast"], ["alive"] = True, ["host"], ["elements"], ["disposal"], ["depth"] = 1}]
       76 SETTABLEKS                       R5 R6 K26 ["ast"]
       78 GETTABLEKS                       R7 R1 K23 ["Parent"]
       80 SETTABLEKS                       R7 R6 K15 ["host"]
       82 NEWTABLE                         R7 0 0
       84 SETTABLEKS                       R7 R6 K29 ["elements"]
       86 NEWTABLE                         R7 0 0
       88 SETTABLEKS                       R7 R6 K30 ["disposal"]
       90 MOVE                             R7 R3
       91 LOADNIL                          R8
       92 LOADNIL                          R9
       93 FORGPREP                         R7
       94 GETTABLEKS                       R13 R6 K30 ["disposal"]
       96 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       98 MOVE                             R14 R11
       99 GETIMPORT                        R12 K12 [table.insert]
      101 CALL                             R12 2 0
      102 FORGLOOP                         R7 2 ; [-9]
      104 GETUPVAL                         R7 0
      105 GETTABLEKS                       R7 R7 K34 ["log"]
      107 LOADK                            R8 K4 ["AuthoringMonitor"]
      108 LOADK                            R9 K35 ["Mounting view"]
      109 NAMECALL                         R10 R1 K6 ["GetFullName"]
      111 CALL                             R10 1 1
      112 LOADK                            R11 K36 ["as element"]
      113 MOVE                             R12 R6
      114 CALL                             R7 5 0
      115 GETTABLEKS                       R7 R0 K20 ["mounted"]
      117 SETTABLE                         R6 R7 R1
      118 LOADK                            R9 K37 ["blox-mounted"]
      119 LOADB                            R10 1
      120 NAMECALL                         R7 R1 K38 ["SetAttribute"]
      122 CALL                             R7 3 0
      123 GETTABLEKS                       R7 R0 K39 ["publish"]
      125 MOVE                             R8 R6
      126 CALL                             R7 1 0
      127 RETURN                           R6 1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["mounted"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+16]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["log"]
        7 LOADK                            R4 K2 ["AuthoringMonitor"]
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
       20 GETTABLEKS                       R4 R1 K8 ["authoring"]
       22 GETTABLEKS                       R4 R4 K9 ["updateAuthoring"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K10 ["util"]
       29 GETTABLEKS                       R5 R5 K11 ["createAttributeGetter"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Debug"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K5 [require]
       39 GETTABLEKS                       R7 R1 K13 ["state"]
       41 GETTABLEKS                       R7 R7 K14 ["Signals"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K16 [game]
       46 LOADK                            R9 K17 ["CollectionService"]
       47 NAMECALL                         R7 R7 K18 ["GetService"]
       49 CALL                             R7 2 1
       50 GETIMPORT                        R8 K5 [require]
       52 GETTABLEKS                       R9 R1 K19 ["monitor"]
       54 GETTABLEKS                       R9 R9 K20 ["TemplateRegistry"]
       56 CALL                             R8 1 1
       57 DUPCLOSURE                       R9 K21 [PROTO_2]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R0
       61 SETTABLEKS                       R9 R0 K22 ["new"]
       63 DUPCLOSURE                       R9 K23 [PROTO_5]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R7
       66 SETTABLEKS                       R9 R0 K24 ["watch"]
       68 DUPCLOSURE                       R9 K25 [PROTO_6]
       69 SETTABLEKS                       R9 R0 K26 ["stop"]
       71 DUPCLOSURE                       R9 K27 [PROTO_7]
       72 SETTABLEKS                       R9 R0 K28 ["shouldView"]
       74 DUPCLOSURE                       R9 K29 [PROTO_9]
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R9 R0 K30 ["addView"]
       78 DUPCLOSURE                       R9 K31 [PROTO_10]
       79 CAPTURE                          VAL R5
       80 SETTABLEKS                       R9 R0 K32 ["removeView"]
       82 DUPCLOSURE                       R9 K33 [PROTO_12]
       83 CAPTURE                          VAL R5
       84 SETTABLEKS                       R9 R0 K34 ["addAuthoringView"]
       86 DUPCLOSURE                       R9 K35 [PROTO_13]
       87 CAPTURE                          VAL R5
       88 SETTABLEKS                       R9 R0 K36 ["removeAuthoringView"]
       90 DUPCLOSURE                       R9 K37 [PROTO_14]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R8
       94 SETTABLEKS                       R9 R0 K38 ["mountView"]
       96 DUPCLOSURE                       R9 K39 [PROTO_15]
       97 CAPTURE                          VAL R5
       98 SETTABLEKS                       R9 R0 K40 ["unmountView"]
      100 RETURN                           R0 1
