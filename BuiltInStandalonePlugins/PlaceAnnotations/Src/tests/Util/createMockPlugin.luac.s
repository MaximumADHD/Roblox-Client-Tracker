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
        0 DUPTABLE                         R0 K6 [{"isActivated", "mouse", "SetItem", "GetItem", "OnSetItem", "Events"}]
        1 LOADB                            R1 0
        2 SETTABLEKS                       R1 R0 K0 ["isActivated"]
        4 GETUPVAL                         R1 0
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["mouse"]
        8 DUPCLOSURE                       R1 K7 [PROTO_0]
        9 SETTABLEKS                       R1 R0 K2 ["SetItem"]
       11 DUPCLOSURE                       R1 K8 [PROTO_1]
       12 SETTABLEKS                       R1 R0 K3 ["GetItem"]
       14 DUPCLOSURE                       R1 K9 [PROTO_2]
       15 SETTABLEKS                       R1 R0 K4 ["OnSetItem"]
       17 DUPTABLE                         R1 K12 [{"Unload", "Deactivate"}]
       18 GETIMPORT                        R2 K15 [Instance.new]
       20 LOADK                            R3 K16 ["BindableEvent"]
       21 CALL                             R2 1 1
       22 SETTABLEKS                       R2 R1 K10 ["Unload"]
       24 GETIMPORT                        R2 K15 [Instance.new]
       26 LOADK                            R3 K16 ["BindableEvent"]
       27 CALL                             R2 1 1
       28 SETTABLEKS                       R2 R1 K11 ["Deactivate"]
       30 SETTABLEKS                       R1 R0 K5 ["Events"]
       32 NEWTABLE                         R1 0 0
       34 GETUPVAL                         R2 1
       35 GETTABLEKS                       R2 R2 K17 ["fn"]
       37 NEWCLOSURE                       R3 P3
       38 CAPTURE                          VAL R1
       39 CALL                             R2 1 1
       40 SETTABLEKS                       R2 R0 K18 ["Invoke"]
       42 GETUPVAL                         R2 1
       43 GETTABLEKS                       R2 R2 K17 ["fn"]
       45 NEWCLOSURE                       R3 P4
       46 CAPTURE                          VAL R1
       47 CALL                             R2 1 1
       48 SETTABLEKS                       R2 R0 K19 ["OnInvoke"]
       50 GETTABLEKS                       R2 R0 K5 ["Events"]
       52 GETTABLEKS                       R2 R2 K10 ["Unload"]
       54 GETTABLEKS                       R2 R2 K20 ["Event"]
       56 SETTABLEKS                       R2 R0 K21 ["Unloading"]
       58 GETTABLEKS                       R2 R0 K5 ["Events"]
       60 GETTABLEKS                       R2 R2 K11 ["Deactivate"]
       62 GETTABLEKS                       R2 R2 K20 ["Event"]
       64 SETTABLEKS                       R2 R0 K22 ["Deactivation"]
       66 GETUPVAL                         R2 1
       67 GETTABLEKS                       R2 R2 K17 ["fn"]
       69 NEWCLOSURE                       R3 P5
       70 CAPTURE                          VAL R0
       71 CALL                             R2 1 1
       72 SETTABLEKS                       R2 R0 K23 ["IsActivated"]
       74 GETUPVAL                         R2 1
       75 GETTABLEKS                       R2 R2 K17 ["fn"]
       77 NEWCLOSURE                       R3 P6
       78 CAPTURE                          VAL R0
       79 CALL                             R2 1 1
       80 SETTABLEKS                       R2 R0 K24 ["Activate"]
       82 GETUPVAL                         R2 1
       83 GETTABLEKS                       R2 R2 K17 ["fn"]
       85 NEWCLOSURE                       R3 P7
       86 CAPTURE                          VAL R0
       87 CALL                             R2 1 1
       88 SETTABLEKS                       R2 R0 K11 ["Deactivate"]
       90 GETUPVAL                         R2 1
       91 GETTABLEKS                       R2 R2 K17 ["fn"]
       93 NEWCLOSURE                       R3 P8
       94 CAPTURE                          VAL R0
       95 CALL                             R2 1 1
       96 SETTABLEKS                       R2 R0 K25 ["GetMouse"]
       98 GETUPVAL                         R2 1
       99 GETTABLEKS                       R2 R2 K17 ["fn"]
      101 CALL                             R2 0 1
      102 SETTABLEKS                       R2 R0 K26 ["GetAttribute"]
      104 GETUPVAL                         R2 1
      105 GETTABLEKS                       R2 R2 K17 ["fn"]
      107 CALL                             R2 0 1
      108 SETTABLEKS                       R2 R0 K27 ["SetAttribute"]
      110 GETUPVAL                         R2 1
      111 GETTABLEKS                       R2 R2 K17 ["fn"]
      113 CALL                             R2 0 1
      114 SETTABLEKS                       R2 R0 K14 ["new"]
      116 GETUPVAL                         R2 1
      117 GETTABLEKS                       R2 R2 K17 ["fn"]
      119 DUPCLOSURE                       R3 K28 [PROTO_10]
      120 CALL                             R2 1 1
      121 SETTABLEKS                       R2 R0 K29 ["GetPluginComponent"]
      123 GETUPVAL                         R2 1
      124 GETTABLEKS                       R2 R2 K17 ["fn"]
      126 DUPCLOSURE                       R3 K30 [PROTO_11]
      127 CALL                             R2 1 1
      128 SETTABLEKS                       R2 R0 K31 ["CreateQWidgetPluginGui"]
      130 GETUPVAL                         R2 1
      131 GETTABLEKS                       R2 R2 K17 ["fn"]
      133 NEWCLOSURE                       R3 P11
      134 CAPTURE                          UPVAL U1
      135 CAPTURE                          VAL R0
      136 CALL                             R2 1 1
      137 SETTABLEKS                       R2 R0 K32 ["use"]
      139 RETURN                           R0 1

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
