PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["connectionsByUuid"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+13]
        5 MOVE                             R3 R2
        6 LOADNIL                          R4
        7 LOADNIL                          R5
        8 FORGPREP                         R3
        9 JUMPIFNOTEQ                      R6 R1 ; [+4]
       11 NAMECALL                         R8 R7 K1 ["Disconnect"]
       13 CALL                             R8 1 0
       14 FORGLOOP                         R3 2 ; [-6]
       16 LOADNIL                          R3
       17 SETTABLE                         R3 R2 R1
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["connectionsByUuid"]
        3 GETTABLE                         R3 R4 R1
        4 JUMPIF                           R3 ; [+6]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["connectionsByUuid"]
       10 SETTABLE                         R3 R4 R1
       11 SETTABLE                         R2 R3 R0
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ContextsChanged"]
        2 NAMECALL                         R0 R0 K1 ["FireGuest"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R2 K2 [PROTO_4]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ActionsChanged"]
        2 NAMECALL                         R0 R0 K1 ["FireGuest"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R2 K2 [PROTO_7]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["BindingsChanged"]
        2 NAMECALL                         R0 R0 K1 ["FireGuest"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R2 K2 [PROTO_10]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 LOADK                            R4 K2 ["UIButton"]
       12 CALL                             R1 3 0
       13 GETIMPORT                        R1 K4 [xpcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U4
       17 DUPCLOSURE                       R3 K5 [PROTO_10]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+13]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R1 R2 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 LOADK                            R4 K2 ["UIButton"]
       12 CALL                             R1 3 0
       13 GETIMPORT                        R1 K4 [xpcall]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U4
       17 DUPCLOSURE                       R3 K5 [PROTO_10]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+24]
        9 GETTABLEKS                       R2 R1 K2 ["uiButton"]
       11 JUMPIFNOT                        R2 ; [+20]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOT                        R4 ; [+14]
       18 MOVE                             R5 R4
       19 LOADNIL                          R6
       20 LOADNIL                          R7
       21 FORGPREP                         R5
       22 JUMPIFNOTEQKS                    R8 K4 ["BindingUIButtonNameChanged"] ; [+4]
       24 NAMECALL                         R10 R9 K5 ["Disconnect"]
       26 CALL                             R10 1 0
       27 FORGLOOP                         R5 2 ; [-6]
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       32 GETUPVAL                         R3 2
       33 GETTABLEKS                       R2 R3 K6 ["serializeBindingProperty"]
       35 GETUPVAL                         R3 3
       36 MOVE                             R4 R1
       37 MOVE                             R5 R0
       38 CALL                             R2 3 1
       39 JUMPIF                           R2 ; [+1]
       40 RETURN                           R0 0
       41 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+35]
       43 GETUPVAL                         R3 3
       44 GETTABLEKS                       R2 R3 K1 ["UIButton"]
       46 JUMPIFNOT                        R2 ; [+30]
       47 GETUPVAL                         R2 1
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R3 R4 K1 ["UIButton"]
       51 LOADK                            R5 K7 ["Name"]
       52 NAMECALL                         R3 R3 K8 ["GetPropertyChangedSignal"]
       54 CALL                             R3 2 1
       55 NEWCLOSURE                       R5 P0
       56 CAPTURE                          UPVAL U0
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          UPVAL U4
       61 NAMECALL                         R3 R3 K9 ["Connect"]
       63 CALL                             R3 2 1
       64 GETUPVAL                         R6 0
       65 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
       67 GETTABLE                         R4 R5 R2
       68 JUMPIF                           R4 ; [+6]
       69 NEWTABLE                         R4 0 0
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R5 R6 K3 ["connectionsByUuid"]
       74 SETTABLE                         R4 R5 R2
       75 SETTABLEKS                       R3 R4 K4 ["BindingUIButtonNameChanged"]
       77 GETIMPORT                        R2 K11 [xpcall]
       79 NEWCLOSURE                       R3 P1
       80 CAPTURE                          UPVAL U4
       81 DUPCLOSURE                       R4 K12 [PROTO_10]
       82 CALL                             R2 2 0
       83 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["inputActions"]
        3 GETTABLEKS                       R4 R0 K1 ["UniqueId"]
        5 GETTABLE                         R2 R3 R4
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Action not found in state"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["inputActions"]
       15 GETTABLEKS                       R6 R0 K1 ["UniqueId"]
       17 GETTABLE                         R4 R5 R6
       18 GETTABLEKS                       R1 R4 K5 ["bindings"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       26 GETTABLE                         R6 R7 R5
       27 JUMPIFNOT                        R6 ; [+14]
       28 MOVE                             R7 R6
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 NAMECALL                         R12 R11 K7 ["Disconnect"]
       34 CALL                             R12 1 0
       35 FORGLOOP                         R7 2 ; [-4]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R7 R5
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K8 ["inputBindings"]
       45 LOADNIL                          R7
       46 SETTABLE                         R7 R6 R5
       47 GETUPVAL                         R7 0
       48 GETTABLEKS                       R6 R7 K9 ["inputBindingInstances"]
       50 LOADNIL                          R7
       51 SETTABLE                         R7 R6 R5
       52 FORGLOOP                         R1 2 ; [-30]
       54 GETUPVAL                         R3 0
       55 GETTABLEKS                       R2 R3 K0 ["inputActions"]
       57 GETTABLEKS                       R3 R0 K1 ["UniqueId"]
       59 GETTABLE                         R1 R2 R3
       60 NEWTABLE                         R2 0 0
       62 SETTABLEKS                       R2 R1 K5 ["bindings"]
       64 NAMECALL                         R1 R0 K10 ["GetInputBindings"]
       66 CALL                             R1 1 3
       67 FORGPREP                         R1
       68 LOADK                            R9 K11 ["InputBinding"]
       69 NAMECALL                         R7 R5 K12 ["IsA"]
       71 CALL                             R7 2 1
       72 FASTCALL2K                       ASSERT R7 K13 ; [+4]
       74 LOADK                            R8 K13 ["Binding is not a InputBinding"]
       75 GETIMPORT                        R6 K4 [assert]
       77 CALL                             R6 2 0
       78 GETTABLEKS                       R6 R5 K1 ["UniqueId"]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K8 ["inputBindings"]
       83 GETTABLEKS                       R8 R5 K1 ["UniqueId"]
       85 GETUPVAL                         R10 1
       86 GETTABLEKS                       R9 R10 K14 ["serializeBinding"]
       88 MOVE                             R10 R5
       89 CALL                             R9 1 1
       90 SETTABLE                         R9 R7 R8
       91 GETUPVAL                         R8 0
       92 GETTABLEKS                       R7 R8 K9 ["inputBindingInstances"]
       94 SETTABLE                         R5 R7 R6
       95 GETTABLEKS                       R7 R5 K15 ["UIButton"]
       97 JUMPIFNOT                        R7 ; [+28]
       98 GETTABLEKS                       R7 R5 K15 ["UIButton"]
      100 LOADK                            R9 K16 ["Name"]
      101 NAMECALL                         R7 R7 K17 ["GetPropertyChangedSignal"]
      103 CALL                             R7 2 1
      104 NEWCLOSURE                       R9 P0
      105 CAPTURE                          UPVAL U0
      106 CAPTURE                          VAL R6
      107 CAPTURE                          UPVAL U1
      108 CAPTURE                          VAL R5
      109 CAPTURE                          UPVAL U2
      110 NAMECALL                         R7 R7 K18 ["Connect"]
      112 CALL                             R7 2 1
      113 GETUPVAL                         R10 0
      114 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      116 GETTABLE                         R8 R9 R6
      117 JUMPIF                           R8 ; [+6]
      118 NEWTABLE                         R8 0 0
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      123 SETTABLE                         R8 R9 R6
      124 SETTABLEKS                       R7 R8 K19 ["BindingUIButtonNameChanged"]
      126 GETTABLEKS                       R7 R5 K20 ["Changed"]
      128 NEWCLOSURE                       R9 P1
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          VAL R6
      131 CAPTURE                          UPVAL U1
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U2
      134 NAMECALL                         R7 R7 K18 ["Connect"]
      136 CALL                             R7 2 1
      137 GETUPVAL                         R10 0
      138 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      140 GETTABLE                         R8 R9 R6
      141 JUMPIF                           R8 ; [+6]
      142 NEWTABLE                         R8 0 0
      144 GETUPVAL                         R10 0
      145 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      147 SETTABLE                         R8 R9 R6
      148 SETTABLEKS                       R7 R8 K21 ["BindingPropertyChanged"]
      150 GETUPVAL                         R11 0
      151 GETTABLEKS                       R10 R11 K0 ["inputActions"]
      153 GETTABLEKS                       R11 R0 K1 ["UniqueId"]
      155 GETTABLE                         R9 R10 R11
      156 GETTABLEKS                       R8 R9 K5 ["bindings"]
      158 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      160 MOVE                             R9 R6
      161 GETIMPORT                        R7 K24 [table.insert]
      163 CALL                             R7 2 0
      164 FORGLOOP                         R1 2 ; [-97]
      166 GETIMPORT                        R1 K26 [xpcall]
      168 NEWCLOSURE                       R2 P2
      169 CAPTURE                          UPVAL U2
      170 DUPCLOSURE                       R3 K27 [PROTO_10]
      171 CALL                             R1 2 0
      172 GETIMPORT                        R1 K26 [xpcall]
      174 NEWCLOSURE                       R2 P4
      175 CAPTURE                          UPVAL U2
      176 DUPCLOSURE                       R3 K28 [PROTO_7]
      177 CALL                             R1 2 0
      178 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [xpcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U2
        7 DUPCLOSURE                       R2 K2 [PROTO_7]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputActions"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["serializeActionProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETIMPORT                        R2 K3 [xpcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U4
       18 DUPCLOSURE                       R4 K4 [PROTO_7]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["inputContexts"]
        3 GETTABLEKS                       R4 R0 K1 ["UniqueId"]
        5 GETTABLE                         R2 R3 R4
        6 FASTCALL2K                       ASSERT R2 K2 ; [+4]
        8 LOADK                            R3 K2 ["Context not found in state"]
        9 GETIMPORT                        R1 K4 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["inputContexts"]
       15 GETTABLEKS                       R6 R0 K1 ["UniqueId"]
       17 GETTABLE                         R4 R5 R6
       18 GETTABLEKS                       R1 R4 K5 ["actions"]
       20 LOADNIL                          R2
       21 LOADNIL                          R3
       22 FORGPREP                         R1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       26 GETTABLE                         R6 R7 R5
       27 JUMPIFNOT                        R6 ; [+14]
       28 MOVE                             R7 R6
       29 LOADNIL                          R8
       30 LOADNIL                          R9
       31 FORGPREP                         R7
       32 NAMECALL                         R12 R11 K7 ["Disconnect"]
       34 CALL                             R12 1 0
       35 FORGLOOP                         R7 2 ; [-4]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K6 ["connectionsByUuid"]
       40 LOADNIL                          R8
       41 SETTABLE                         R8 R7 R5
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R6 R7 K8 ["inputActionInstances"]
       45 LOADNIL                          R7
       46 SETTABLE                         R7 R6 R5
       47 GETUPVAL                         R9 0
       48 GETTABLEKS                       R8 R9 K9 ["inputActions"]
       50 GETTABLE                         R7 R8 R5
       51 FASTCALL2K                       ASSERT R7 K10 ; [+4]
       53 LOADK                            R8 K10 ["Action not found in state"]
       54 GETIMPORT                        R6 K4 [assert]
       56 CALL                             R6 2 0
       57 GETUPVAL                         R11 0
       58 GETTABLEKS                       R10 R11 K9 ["inputActions"]
       60 GETTABLE                         R9 R10 R5
       61 GETTABLEKS                       R6 R9 K11 ["bindings"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 FORGPREP                         R6
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R12 R13 K6 ["connectionsByUuid"]
       69 GETTABLE                         R11 R12 R10
       70 JUMPIFNOT                        R11 ; [+14]
       71 MOVE                             R12 R11
       72 LOADNIL                          R13
       73 LOADNIL                          R14
       74 FORGPREP                         R12
       75 NAMECALL                         R17 R16 K7 ["Disconnect"]
       77 CALL                             R17 1 0
       78 FORGLOOP                         R12 2 ; [-4]
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R12 R13 K6 ["connectionsByUuid"]
       83 LOADNIL                          R13
       84 SETTABLE                         R13 R12 R10
       85 GETUPVAL                         R12 0
       86 GETTABLEKS                       R11 R12 K12 ["inputBindings"]
       88 LOADNIL                          R12
       89 SETTABLE                         R12 R11 R10
       90 GETUPVAL                         R12 0
       91 GETTABLEKS                       R11 R12 K13 ["inputBindingInstances"]
       93 LOADNIL                          R12
       94 SETTABLE                         R12 R11 R10
       95 FORGLOOP                         R6 2 ; [-30]
       97 GETUPVAL                         R7 0
       98 GETTABLEKS                       R6 R7 K9 ["inputActions"]
      100 LOADNIL                          R7
      101 SETTABLE                         R7 R6 R5
      102 FORGLOOP                         R1 2 ; [-80]
      104 GETUPVAL                         R3 0
      105 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
      107 GETTABLEKS                       R3 R0 K1 ["UniqueId"]
      109 GETTABLE                         R1 R2 R3
      110 NEWTABLE                         R2 0 0
      112 SETTABLEKS                       R2 R1 K5 ["actions"]
      114 NAMECALL                         R1 R0 K14 ["GetInputActions"]
      116 CALL                             R1 1 3
      117 FORGPREP                         R1
      118 LOADK                            R9 K15 ["InputAction"]
      119 NAMECALL                         R7 R5 K16 ["IsA"]
      121 CALL                             R7 2 1
      122 FASTCALL2K                       ASSERT R7 K17 ; [+4]
      124 LOADK                            R8 K17 ["Action is not a InputAction"]
      125 GETIMPORT                        R6 K4 [assert]
      127 CALL                             R6 2 0
      128 GETTABLEKS                       R6 R5 K1 ["UniqueId"]
      130 GETUPVAL                         R8 0
      131 GETTABLEKS                       R7 R8 K9 ["inputActions"]
      133 GETTABLEKS                       R8 R5 K1 ["UniqueId"]
      135 GETUPVAL                         R10 1
      136 GETTABLEKS                       R9 R10 K18 ["serializeAction"]
      138 MOVE                             R10 R5
      139 CALL                             R9 1 1
      140 SETTABLE                         R9 R7 R8
      141 GETUPVAL                         R8 0
      142 GETTABLEKS                       R7 R8 K8 ["inputActionInstances"]
      144 SETTABLE                         R5 R7 R6
      145 GETUPVAL                         R7 2
      146 MOVE                             R8 R5
      147 CALL                             R7 1 0
      148 GETTABLEKS                       R7 R5 K19 ["InputBindingsChanged"]
      150 NEWCLOSURE                       R9 P0
      151 CAPTURE                          UPVAL U2
      152 CAPTURE                          VAL R5
      153 CAPTURE                          UPVAL U3
      154 NAMECALL                         R7 R7 K20 ["Connect"]
      156 CALL                             R7 2 1
      157 GETUPVAL                         R10 0
      158 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      160 GETTABLE                         R8 R9 R6
      161 JUMPIF                           R8 ; [+6]
      162 NEWTABLE                         R8 0 0
      164 GETUPVAL                         R10 0
      165 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      167 SETTABLE                         R8 R9 R6
      168 SETTABLEKS                       R7 R8 K21 ["ActionBindingsChanged"]
      170 GETTABLEKS                       R7 R5 K22 ["Changed"]
      172 NEWCLOSURE                       R9 P1
      173 CAPTURE                          UPVAL U0
      174 CAPTURE                          VAL R6
      175 CAPTURE                          UPVAL U1
      176 CAPTURE                          VAL R5
      177 CAPTURE                          UPVAL U3
      178 NAMECALL                         R7 R7 K20 ["Connect"]
      180 CALL                             R7 2 1
      181 GETUPVAL                         R10 0
      182 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      184 GETTABLE                         R8 R9 R6
      185 JUMPIF                           R8 ; [+6]
      186 NEWTABLE                         R8 0 0
      188 GETUPVAL                         R10 0
      189 GETTABLEKS                       R9 R10 K6 ["connectionsByUuid"]
      191 SETTABLE                         R8 R9 R6
      192 SETTABLEKS                       R7 R8 K23 ["ActionPropertyChanged"]
      194 GETUPVAL                         R11 0
      195 GETTABLEKS                       R10 R11 K0 ["inputContexts"]
      197 GETTABLEKS                       R11 R0 K1 ["UniqueId"]
      199 GETTABLE                         R9 R10 R11
      200 GETTABLEKS                       R8 R9 K5 ["actions"]
      202 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
      204 MOVE                             R9 R6
      205 GETIMPORT                        R7 K26 [table.insert]
      207 CALL                             R7 2 0
      208 FORGLOOP                         R1 2 ; [-91]
      210 GETIMPORT                        R1 K28 [xpcall]
      212 NEWCLOSURE                       R2 P2
      213 CAPTURE                          UPVAL U3
      214 DUPCLOSURE                       R3 K29 [PROTO_7]
      215 CALL                             R1 2 0
      216 GETIMPORT                        R1 K28 [xpcall]
      218 NEWCLOSURE                       R2 P4
      219 CAPTURE                          UPVAL U3
      220 DUPCLOSURE                       R3 K30 [PROTO_4]
      221 CALL                             R1 2 0
      222 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETIMPORT                        R0 K1 [xpcall]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U2
        7 DUPCLOSURE                       R2 K2 [PROTO_4]
        8 CALL                             R0 2 0
        9 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["inputContexts"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+14]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R2 R3 K1 ["serializeContextProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETIMPORT                        R2 K3 [xpcall]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          UPVAL U4
       18 DUPCLOSURE                       R4 K4 [PROTO_4]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["inputContexts"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETTABLEKS                       R5 R4 K1 ["uuid"]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       11 GETTABLE                         R6 R7 R5
       12 JUMPIFNOT                        R6 ; [+14]
       13 MOVE                             R7 R6
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 NAMECALL                         R12 R11 K3 ["Disconnect"]
       19 CALL                             R12 1 0
       20 FORGLOOP                         R7 2 ; [-4]
       22 GETUPVAL                         R8 0
       23 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       25 LOADNIL                          R8
       26 SETTABLE                         R8 R7 R5
       27 FORGLOOP                         R0 2 ; [-22]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R0 R3 K4 ["inputActions"]
       32 LOADNIL                          R1
       33 LOADNIL                          R2
       34 FORGPREP                         R0
       35 GETTABLEKS                       R5 R4 K1 ["uuid"]
       37 GETUPVAL                         R8 0
       38 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       40 GETTABLE                         R6 R7 R5
       41 JUMPIFNOT                        R6 ; [+14]
       42 MOVE                             R7 R6
       43 LOADNIL                          R8
       44 LOADNIL                          R9
       45 FORGPREP                         R7
       46 NAMECALL                         R12 R11 K3 ["Disconnect"]
       48 CALL                             R12 1 0
       49 FORGLOOP                         R7 2 ; [-4]
       51 GETUPVAL                         R8 0
       52 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       54 LOADNIL                          R8
       55 SETTABLE                         R8 R7 R5
       56 FORGLOOP                         R0 2 ; [-22]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R0 R3 K5 ["inputBindings"]
       61 LOADNIL                          R1
       62 LOADNIL                          R2
       63 FORGPREP                         R0
       64 GETTABLEKS                       R5 R4 K1 ["uuid"]
       66 GETUPVAL                         R8 0
       67 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       69 GETTABLE                         R6 R7 R5
       70 JUMPIFNOT                        R6 ; [+14]
       71 MOVE                             R7 R6
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 NAMECALL                         R12 R11 K3 ["Disconnect"]
       77 CALL                             R12 1 0
       78 FORGLOOP                         R7 2 ; [-4]
       80 GETUPVAL                         R8 0
       81 GETTABLEKS                       R7 R8 K2 ["connectionsByUuid"]
       83 LOADNIL                          R8
       84 SETTABLE                         R8 R7 R5
       85 FORGLOOP                         R0 2 ; [-22]
       87 GETIMPORT                        R0 K8 [table.clear]
       89 GETUPVAL                         R2 0
       90 GETTABLEKS                       R1 R2 K0 ["inputContexts"]
       92 CALL                             R0 1 0
       93 GETIMPORT                        R0 K8 [table.clear]
       95 GETUPVAL                         R2 0
       96 GETTABLEKS                       R1 R2 K4 ["inputActions"]
       98 CALL                             R0 1 0
       99 GETIMPORT                        R0 K8 [table.clear]
      101 GETUPVAL                         R2 0
      102 GETTABLEKS                       R1 R2 K5 ["inputBindings"]
      104 CALL                             R0 1 0
      105 GETIMPORT                        R0 K8 [table.clear]
      107 GETUPVAL                         R2 0
      108 GETTABLEKS                       R1 R2 K9 ["inputContextInstances"]
      110 CALL                             R0 1 0
      111 GETIMPORT                        R0 K8 [table.clear]
      113 GETUPVAL                         R2 0
      114 GETTABLEKS                       R1 R2 K10 ["inputActionInstances"]
      116 CALL                             R0 1 0
      117 GETIMPORT                        R0 K8 [table.clear]
      119 GETUPVAL                         R2 0
      120 GETTABLEKS                       R1 R2 K11 ["inputBindingInstances"]
      122 CALL                             R0 1 0
      123 GETUPVAL                         R0 1
      124 NAMECALL                         R0 R0 K12 ["GetInputContexts"]
      126 CALL                             R0 1 3
      127 FORGPREP                         R0
      128 LOADK                            R8 K13 ["InputContext"]
      129 NAMECALL                         R6 R4 K14 ["IsA"]
      131 CALL                             R6 2 1
      132 FASTCALL2K                       ASSERT R6 K15 ; [+4]
      134 LOADK                            R7 K15 ["Context is not a InputContext"]
      135 GETIMPORT                        R5 K17 [assert]
      137 CALL                             R5 2 0
      138 GETTABLEKS                       R5 R4 K18 ["UniqueId"]
      140 GETUPVAL                         R7 0
      141 GETTABLEKS                       R6 R7 K0 ["inputContexts"]
      143 GETUPVAL                         R8 2
      144 GETTABLEKS                       R7 R8 K19 ["serializeContext"]
      146 MOVE                             R8 R4
      147 CALL                             R7 1 1
      148 SETTABLE                         R7 R6 R5
      149 GETUPVAL                         R7 0
      150 GETTABLEKS                       R6 R7 K9 ["inputContextInstances"]
      152 SETTABLE                         R4 R6 R5
      153 GETUPVAL                         R6 3
      154 MOVE                             R7 R4
      155 CALL                             R6 1 0
      156 GETTABLEKS                       R6 R4 K20 ["InputActionsChanged"]
      158 NEWCLOSURE                       R8 P0
      159 CAPTURE                          UPVAL U3
      160 CAPTURE                          VAL R4
      161 CAPTURE                          UPVAL U4
      162 NAMECALL                         R6 R6 K21 ["Connect"]
      164 CALL                             R6 2 1
      165 GETUPVAL                         R9 0
      166 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      168 GETTABLE                         R7 R8 R5
      169 JUMPIF                           R7 ; [+6]
      170 NEWTABLE                         R7 0 0
      172 GETUPVAL                         R9 0
      173 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      175 SETTABLE                         R7 R8 R5
      176 SETTABLEKS                       R6 R7 K22 ["ContextActionsChanged"]
      178 GETTABLEKS                       R6 R4 K23 ["Changed"]
      180 NEWCLOSURE                       R8 P1
      181 CAPTURE                          UPVAL U0
      182 CAPTURE                          VAL R5
      183 CAPTURE                          UPVAL U2
      184 CAPTURE                          VAL R4
      185 CAPTURE                          UPVAL U4
      186 NAMECALL                         R6 R6 K21 ["Connect"]
      188 CALL                             R6 2 1
      189 GETUPVAL                         R9 0
      190 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      192 GETTABLE                         R7 R8 R5
      193 JUMPIF                           R7 ; [+6]
      194 NEWTABLE                         R7 0 0
      196 GETUPVAL                         R9 0
      197 GETTABLEKS                       R8 R9 K2 ["connectionsByUuid"]
      199 SETTABLE                         R7 R8 R5
      200 SETTABLEKS                       R6 R7 K24 ["ContextPropertyChanged"]
      202 FORGLOOP                         R0 2 ; [-75]
      204 GETIMPORT                        R0 K26 [xpcall]
      206 NEWCLOSURE                       R1 P2
      207 CAPTURE                          UPVAL U4
      208 DUPCLOSURE                       R2 K27 [PROTO_4]
      209 CALL                             R0 2 0
      210 RETURN                           R0 0

PROTO_22:
        0 JUMPIFNOTEQKS                    R1 K0 ["InputContext"] ; [+5]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["inputContexts"]
        5 RETURN                           R2 1
        6 JUMPIFNOTEQKS                    R1 K2 ["InputAction"] ; [+5]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["inputActions"]
       11 RETURN                           R2 1
       12 JUMPIFNOTEQKS                    R1 K4 ["InputBinding"] ; [+5]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K5 ["inputBindings"]
       17 RETURN                           R2 1
       18 NEWTABLE                         R2 0 0
       20 RETURN                           R2 1

PROTO_23:
        0 GETTABLEKS                       R2 R1 K0 ["itemType"]
        2 JUMPIFNOTEQKS                    R2 K1 ["InputContext"] ; [+18]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["inputContextInstances"]
        7 GETTABLEKS                       R5 R1 K3 ["value"]
        9 GETTABLEKS                       R4 R5 K4 ["uuid"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIFNOT                        R2 ; [+49]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["deserializeContext"]
       16 GETTABLEKS                       R4 R1 K3 ["value"]
       18 MOVE                             R5 R2
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 GETTABLEKS                       R2 R1 K0 ["itemType"]
       23 JUMPIFNOTEQKS                    R2 K6 ["InputAction"] ; [+18]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K7 ["inputActionInstances"]
       28 GETTABLEKS                       R5 R1 K3 ["value"]
       30 GETTABLEKS                       R4 R5 K4 ["uuid"]
       32 GETTABLE                         R2 R3 R4
       33 JUMPIFNOT                        R2 ; [+28]
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R3 R4 K8 ["deserializeAction"]
       37 GETTABLEKS                       R4 R1 K3 ["value"]
       39 MOVE                             R5 R2
       40 CALL                             R3 2 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R2 R1 K0 ["itemType"]
       44 JUMPIFNOTEQKS                    R2 K9 ["InputBinding"] ; [+17]
       46 GETUPVAL                         R4 0
       47 GETTABLEKS                       R3 R4 K10 ["inputBindingInstances"]
       49 GETTABLEKS                       R5 R1 K3 ["value"]
       51 GETTABLEKS                       R4 R5 K4 ["uuid"]
       53 GETTABLE                         R2 R3 R4
       54 JUMPIFNOT                        R2 ; [+7]
       55 GETUPVAL                         R4 1
       56 GETTABLEKS                       R3 R4 K11 ["deserializeBinding"]
       58 GETTABLEKS                       R4 R1 K3 ["value"]
       60 MOVE                             R5 R2
       61 CALL                             R3 2 0
       62 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R1 K0 ["itemType"]
        2 JUMPIFNOTEQKS                    R2 K1 ["InputContext"] ; [+22]
        4 GETIMPORT                        R2 K4 [Instance.new]
        6 LOADK                            R3 K1 ["InputContext"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R4 R1 K5 ["name"]
       10 JUMPIFNOT                        R4 ; [+7]
       11 GETTABLEKS                       R4 R1 K5 ["name"]
       13 JUMPIFEQKS                       R4 K6 [""] ; [+4]
       15 GETTABLEKS                       R3 R1 K5 ["name"]
       17 JUMP                             ; [+1]
       18 LOADK                            R3 K1 ["InputContext"]
       19 SETTABLEKS                       R3 R2 K7 ["Name"]
       21 GETUPVAL                         R3 0
       22 SETTABLEKS                       R3 R2 K8 ["Parent"]
       24 JUMP                             ; [+71]
       25 GETTABLEKS                       R2 R1 K0 ["itemType"]
       27 JUMPIFNOTEQKS                    R2 K9 ["InputAction"] ; [+33]
       29 GETTABLEKS                       R2 R1 K10 ["parentUuid"]
       31 JUMPIFNOT                        R2 ; [+29]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K11 ["inputContextInstances"]
       35 GETTABLEKS                       R4 R1 K10 ["parentUuid"]
       37 GETTABLE                         R2 R3 R4
       38 JUMPIF                           R2 ; [+2]
       39 LOADB                            R3 0
       40 RETURN                           R3 1
       41 GETIMPORT                        R3 K4 [Instance.new]
       43 LOADK                            R4 K9 ["InputAction"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R5 R1 K5 ["name"]
       47 JUMPIFNOT                        R5 ; [+7]
       48 GETTABLEKS                       R5 R1 K5 ["name"]
       50 JUMPIFEQKS                       R5 K6 [""] ; [+4]
       52 GETTABLEKS                       R4 R1 K5 ["name"]
       54 JUMP                             ; [+1]
       55 LOADK                            R4 K9 ["InputAction"]
       56 SETTABLEKS                       R4 R3 K7 ["Name"]
       58 SETTABLEKS                       R2 R3 K8 ["Parent"]
       60 JUMP                             ; [+35]
       61 GETTABLEKS                       R2 R1 K0 ["itemType"]
       63 JUMPIFNOTEQKS                    R2 K12 ["InputBinding"] ; [+32]
       65 GETTABLEKS                       R2 R1 K10 ["parentUuid"]
       67 JUMPIFNOT                        R2 ; [+28]
       68 GETUPVAL                         R4 1
       69 GETTABLEKS                       R3 R4 K13 ["inputActionInstances"]
       71 GETTABLEKS                       R4 R1 K10 ["parentUuid"]
       73 GETTABLE                         R2 R3 R4
       74 JUMPIF                           R2 ; [+2]
       75 LOADB                            R3 0
       76 RETURN                           R3 1
       77 GETIMPORT                        R3 K4 [Instance.new]
       79 LOADK                            R4 K12 ["InputBinding"]
       80 CALL                             R3 1 1
       81 GETTABLEKS                       R5 R1 K5 ["name"]
       83 JUMPIFNOT                        R5 ; [+7]
       84 GETTABLEKS                       R5 R1 K5 ["name"]
       86 JUMPIFEQKS                       R5 K6 [""] ; [+4]
       88 GETTABLEKS                       R4 R1 K5 ["name"]
       90 JUMP                             ; [+1]
       91 LOADK                            R4 K12 ["InputBinding"]
       92 SETTABLEKS                       R4 R3 K7 ["Name"]
       94 SETTABLEKS                       R2 R3 K8 ["Parent"]
       96 GETUPVAL                         R2 2
       97 CALL                             R2 0 0
       98 LOADB                            R2 1
       99 RETURN                           R2 1

PROTO_25:
        0 GETIMPORT                        R1 K1 [xpcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R3 K2 [PROTO_4]
        5 CALL                             R1 2 0
        6 GETIMPORT                        R1 K1 [xpcall]
        8 NEWCLOSURE                       R2 P2
        9 CAPTURE                          UPVAL U0
       10 DUPCLOSURE                       R3 K3 [PROTO_7]
       11 CALL                             R1 2 0
       12 GETIMPORT                        R1 K1 [xpcall]
       14 NEWCLOSURE                       R2 P4
       15 CAPTURE                          UPVAL U0
       16 DUPCLOSURE                       R3 K4 [PROTO_10]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 3
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 4
       40 CALL                             R0 0 0
       41 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R0 R3 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R6 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R1 R2 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 CALL                             R0 0 0
       37 GETUPVAL                         R0 3
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 4
       40 CALL                             R0 0 0
       41 GETIMPORT                        R0 K4 [table.clear]
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R1 R2 K5 ["inputContexts"]
       46 CALL                             R0 1 0
       47 GETIMPORT                        R0 K4 [table.clear]
       49 GETUPVAL                         R2 0
       50 GETTABLEKS                       R1 R2 K6 ["inputActions"]
       52 CALL                             R0 1 0
       53 GETIMPORT                        R0 K4 [table.clear]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R1 R2 K7 ["inputBindings"]
       58 CALL                             R0 1 0
       59 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["UniqueId"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["InputContextsChanged"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          UPVAL U0
       10 NAMECALL                         R1 R1 K2 ["Connect"]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K3 ["connectionsByUuid"]
       16 GETTABLE                         R2 R3 R0
       17 JUMPIF                           R2 ; [+6]
       18 NEWTABLE                         R2 0 0
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K3 ["connectionsByUuid"]
       23 SETTABLE                         R2 R3 R0
       24 SETTABLEKS                       R1 R2 K4 ["ContextsChanged"]
       26 RETURN                           R0 0

PROTO_31:
        0 DUPTABLE                         R1 K7 [{"inputContexts", "inputActions", "inputBindings", "inputContextInstances", "inputActionInstances", "inputBindingInstances", "connectionsByUuid"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["inputContexts"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["inputActions"]
        9 NEWTABLE                         R2 0 0
       11 SETTABLEKS                       R2 R1 K2 ["inputBindings"]
       13 NEWTABLE                         R2 0 0
       15 SETTABLEKS                       R2 R1 K3 ["inputContextInstances"]
       17 NEWTABLE                         R2 0 0
       19 SETTABLEKS                       R2 R1 K4 ["inputActionInstances"]
       21 NEWTABLE                         R2 0 0
       23 SETTABLEKS                       R2 R1 K5 ["inputBindingInstances"]
       25 NEWTABLE                         R2 0 0
       27 SETTABLEKS                       R2 R1 K6 ["connectionsByUuid"]
       29 NEWCLOSURE                       R2 P0
       30 CAPTURE                          VAL R1
       31 NEWCLOSURE                       R3 P1
       32 CAPTURE                          VAL R1
       33 NEWCLOSURE                       R4 P2
       34 CAPTURE                          VAL R1
       35 NEWCLOSURE                       R5 P3
       36 CAPTURE                          VAL R0
       37 NEWCLOSURE                       R6 P4
       38 CAPTURE                          VAL R0
       39 NEWCLOSURE                       R7 P5
       40 CAPTURE                          VAL R0
       41 NEWCLOSURE                       R8 P6
       42 CAPTURE                          VAL R1
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 NEWCLOSURE                       R9 P7
       46 CAPTURE                          VAL R1
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R0
       50 NEWCLOSURE                       R10 P8
       51 CAPTURE                          VAL R1
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R0
       56 LOADK                            R13 K8 ["getInputItems"]
       57 NEWCLOSURE                       R14 P9
       58 CAPTURE                          VAL R1
       59 NAMECALL                         R11 R0 K9 ["OnHostInvokeAsync"]
       61 CALL                             R11 3 2
       62 LOADK                            R15 K10 ["updateInputItem"]
       63 NEWCLOSURE                       R16 P10
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U0
       66 NAMECALL                         R13 R0 K9 ["OnHostInvokeAsync"]
       68 CALL                             R13 3 2
       69 LOADK                            R17 K11 ["createInputItem"]
       70 NEWCLOSURE                       R18 P11
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R10
       74 NAMECALL                         R15 R0 K9 ["OnHostInvokeAsync"]
       76 CALL                             R15 3 2
       77 LOADK                            R19 K12 ["requestInputItems"]
       78 NEWCLOSURE                       R20 P12
       79 CAPTURE                          VAL R0
       80 NAMECALL                         R17 R0 K9 ["OnHostInvokeAsync"]
       82 CALL                             R17 3 2
       83 NEWCLOSURE                       R19 P13
       84 CAPTURE                          VAL R1
       85 NEWCLOSURE                       R20 P14
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R12
       88 CAPTURE                          VAL R18
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R16
       91 NEWCLOSURE                       R21 P15
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R18
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R16
       97 NEWCLOSURE                       R22 P16
       98 CAPTURE                          VAL R10
       99 CAPTURE                          UPVAL U1
      100 CAPTURE                          VAL R1
      101 NAMECALL                         R23 R0 K13 ["IsHost"]
      103 CALL                             R23 1 1
      104 JUMPIFNOT                        R23 ; [+24]
      105 MOVE                             R23 R10
      106 CALL                             R23 0 0
      107 GETUPVAL                         R24 1
      108 GETTABLEKS                       R23 R24 K14 ["UniqueId"]
      110 GETUPVAL                         R25 1
      111 GETTABLEKS                       R24 R25 K15 ["InputContextsChanged"]
      113 NEWCLOSURE                       R26 P17
      114 CAPTURE                          VAL R10
      115 NAMECALL                         R24 R24 K16 ["Connect"]
      117 CALL                             R24 2 1
      118 GETTABLEKS                       R26 R1 K6 ["connectionsByUuid"]
      120 GETTABLE                         R25 R26 R23
      121 JUMPIF                           R25 ; [+5]
      122 NEWTABLE                         R25 0 0
      124 GETTABLEKS                       R26 R1 K6 ["connectionsByUuid"]
      126 SETTABLE                         R25 R26 R23
      127 SETTABLEKS                       R24 R25 K17 ["ContextsChanged"]
      129 DUPTABLE                         R23 K19 [{"destroy", "getInputItems", "requestInputItems", "updateInputItem", "createInputItem"}]
      130 SETTABLEKS                       R21 R23 K18 ["destroy"]
      132 SETTABLEKS                       R11 R23 K8 ["getInputItems"]
      134 SETTABLEKS                       R17 R23 K12 ["requestInputItems"]
      136 SETTABLEKS                       R13 R23 K10 ["updateInputItem"]
      138 SETTABLEKS                       R15 R23 K11 ["createInputItem"]
      140 RETURN                           R23 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ReplicatedStorage"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["InputActionManager"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R2 K11 ["Packages"]
       23 GETTABLEKS                       R4 R5 K12 ["DMNetworking"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R2 K13 ["Src"]
       30 GETTABLEKS                       R5 R6 K14 ["Types"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R2 K13 ["Src"]
       37 GETTABLEKS                       R7 R8 K15 ["Util"]
       39 GETTABLEKS                       R6 R7 K16 ["PropertyManager"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K17 [PROTO_31]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R0
       45 CAPTURE                          VAL R1
       46 RETURN                           R6 1
