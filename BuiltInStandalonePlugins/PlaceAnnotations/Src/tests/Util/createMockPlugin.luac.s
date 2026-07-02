PROTO_0:
        0 GETIMPORT                        R3 K1 [plugin]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K2 ["SetItem"]
        6 CALL                             R3 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [plugin]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetItem"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_2:
        0 GETIMPORT                        R3 K1 [plugin]
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 NAMECALL                         R3 R3 K2 ["OnSetItem"]
        6 CALL                             R3 3 -1
        7 RETURN                           R3 -1

PROTO_3:
        0 PREPVARARGS                      2
        1 GETUPVAL                         R3 0
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+29]
        4 GETIMPORT                        R3 K2 [table.pack]
        6 GETVARARGS                       R4 -1
        7 CALL                             R3 -1 1
        8 MOVE                             R4 R3
        9 LOADNIL                          R5
       10 LOADNIL                          R6
       11 FORGPREP                         R4
       12 FASTCALL1                        TYPEOF R8 ; [+3]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K4 [typeof]
       16 CALL                             R9 1 1
       17 JUMPIFNOTEQKS                    R9 K0 ["table"] ; [+6]
       19 GETIMPORT                        R9 K6 [table.clone]
       21 MOVE                             R10 R8
       22 CALL                             R9 1 1
       23 SETTABLE                         R9 R3 R7
       24 FORGLOOP                         R4 2 ; [-13]
       26 MOVE                             R4 R2
       27 FASTCALL1                        TABLE_UNPACK R3 ; [+3]
       28 MOVE                             R6 R3
       29 GETIMPORT                        R5 K8 [table.unpack]
       31 CALL                             R5 1 -1
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADNIL                          R2
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 SETTABLE                         R2 R3 R1
        2 DUPTABLE                         R3 K1 [{"Disconnect"}]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R4 R3 K0 ["Disconnect"]
        8 RETURN                           R3 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isActivated"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 SETTABLEKS                       R1 R0 K0 ["isActivated"]
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isActivated"]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["Events"]
        7 GETTABLEKS                       R0 R0 K2 ["Deactivate"]
        9 NAMECALL                         R0 R0 K3 ["Fire"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mouse"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETIMPORT                        R2 K1 [plugin]
        2 MOVE                             R4 R1
        3 NAMECALL                         R2 R2 K2 ["GetPluginComponent"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_11:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScreenGui"]
        3 CALL                             R2 1 -1
        4 RETURN                           R2 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_13:
        0 DUPTABLE                         R0 K1 [{"get"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K2 ["fn"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U1
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["get"]
        9 RETURN                           R0 1

PROTO_14:
        0 DUPTABLE                         R0 K7 [{[1] = False, ["mouse"], ["SetItem"], ["GetItem"], ["OnSetItem"], ["Events"]}]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K2 ["mouse"]
        5 DUPCLOSURE                       R1 K8 [PROTO_0]
        6 SETTABLEKS                       R1 R0 K3 ["SetItem"]
        8 DUPCLOSURE                       R1 K9 [PROTO_1]
        9 SETTABLEKS                       R1 R0 K4 ["GetItem"]
       11 DUPCLOSURE                       R1 K10 [PROTO_2]
       12 SETTABLEKS                       R1 R0 K5 ["OnSetItem"]
       14 DUPTABLE                         R1 K13 [{"Unload", "Deactivate"}]
       15 GETIMPORT                        R2 K16 [Instance.new]
       17 LOADK                            R3 K17 ["BindableEvent"]
       18 CALL                             R2 1 1
       19 SETTABLEKS                       R2 R1 K11 ["Unload"]
       21 GETIMPORT                        R2 K16 [Instance.new]
       23 LOADK                            R3 K17 ["BindableEvent"]
       24 CALL                             R2 1 1
       25 SETTABLEKS                       R2 R1 K12 ["Deactivate"]
       27 SETTABLEKS                       R1 R0 K6 ["Events"]
       29 NEWTABLE                         R1 0 0
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K18 ["fn"]
       34 NEWCLOSURE                       R3 P3
       35 CAPTURE                          VAL R1
       36 CALL                             R2 1 1
       37 SETTABLEKS                       R2 R0 K19 ["Invoke"]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K18 ["fn"]
       42 NEWCLOSURE                       R3 P4
       43 CAPTURE                          VAL R1
       44 CALL                             R2 1 1
       45 SETTABLEKS                       R2 R0 K20 ["OnInvoke"]
       47 GETTABLEKS                       R2 R0 K6 ["Events"]
       49 GETTABLEKS                       R2 R2 K11 ["Unload"]
       51 GETTABLEKS                       R2 R2 K21 ["Event"]
       53 SETTABLEKS                       R2 R0 K22 ["Unloading"]
       55 GETTABLEKS                       R2 R0 K6 ["Events"]
       57 GETTABLEKS                       R2 R2 K12 ["Deactivate"]
       59 GETTABLEKS                       R2 R2 K21 ["Event"]
       61 SETTABLEKS                       R2 R0 K23 ["Deactivation"]
       63 GETUPVAL                         R2 1
       64 GETTABLEKS                       R2 R2 K18 ["fn"]
       66 NEWCLOSURE                       R3 P5
       67 CAPTURE                          VAL R0
       68 CALL                             R2 1 1
       69 SETTABLEKS                       R2 R0 K24 ["IsActivated"]
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K18 ["fn"]
       74 NEWCLOSURE                       R3 P6
       75 CAPTURE                          VAL R0
       76 CALL                             R2 1 1
       77 SETTABLEKS                       R2 R0 K25 ["Activate"]
       79 GETUPVAL                         R2 1
       80 GETTABLEKS                       R2 R2 K18 ["fn"]
       82 NEWCLOSURE                       R3 P7
       83 CAPTURE                          VAL R0
       84 CALL                             R2 1 1
       85 SETTABLEKS                       R2 R0 K12 ["Deactivate"]
       87 GETUPVAL                         R2 1
       88 GETTABLEKS                       R2 R2 K18 ["fn"]
       90 NEWCLOSURE                       R3 P8
       91 CAPTURE                          VAL R0
       92 CALL                             R2 1 1
       93 SETTABLEKS                       R2 R0 K26 ["GetMouse"]
       95 GETUPVAL                         R2 1
       96 GETTABLEKS                       R2 R2 K18 ["fn"]
       98 CALL                             R2 0 1
       99 SETTABLEKS                       R2 R0 K27 ["GetAttribute"]
      101 GETUPVAL                         R2 1
      102 GETTABLEKS                       R2 R2 K18 ["fn"]
      104 CALL                             R2 0 1
      105 SETTABLEKS                       R2 R0 K28 ["SetAttribute"]
      107 GETUPVAL                         R2 1
      108 GETTABLEKS                       R2 R2 K18 ["fn"]
      110 CALL                             R2 0 1
      111 SETTABLEKS                       R2 R0 K15 ["new"]
      113 GETUPVAL                         R2 1
      114 GETTABLEKS                       R2 R2 K18 ["fn"]
      116 DUPCLOSURE                       R3 K29 [PROTO_10]
      117 CALL                             R2 1 1
      118 SETTABLEKS                       R2 R0 K30 ["GetPluginComponent"]
      120 GETUPVAL                         R2 1
      121 GETTABLEKS                       R2 R2 K18 ["fn"]
      123 DUPCLOSURE                       R3 K31 [PROTO_11]
      124 CALL                             R2 1 1
      125 SETTABLEKS                       R2 R0 K32 ["CreateQWidgetPluginGui"]
      127 GETUPVAL                         R2 1
      128 GETTABLEKS                       R2 R2 K18 ["fn"]
      130 NEWCLOSURE                       R3 P11
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R0
      133 CALL                             R2 1 1
      134 SETTABLEKS                       R2 R0 K33 ["use"]
      136 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dev"]
       13 GETTABLEKS                       R2 R2 K8 ["JestGlobals"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Src"]
       20 GETTABLEKS                       R3 R3 K10 ["tests"]
       22 GETTABLEKS                       R3 R3 K11 ["Util"]
       24 GETTABLEKS                       R3 R3 K12 ["createMockMouse"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R1 K13 ["jest"]
       29 DUPCLOSURE                       R4 K14 [PROTO_14]
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R3
       32 RETURN                           R4 1
