PROTO_0:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 RETURN                           R0 0
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K2 ["function"] ; [+5]
       10 MOVE                             R2 R0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K3 ["of"]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K4 ["Binding"]
       22 JUMPIFNOTEQ                      R2 R3 ; [+8]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K5 ["update"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0
       31 GETIMPORT                        R2 K7 [error]
       33 LOADK                            R3 K8 ["Invalid ref: Expected type Binding but got %s"]
       34 FASTCALL1                        TYPEOF R0 ; [+3]
       35 MOVE                             R6 R0
       36 GETIMPORT                        R5 K1 [typeof]
       38 CALL                             R5 1 1
       39 NAMECALL                         R3 R3 K9 ["format"]
       41 CALL                             R3 2 -1
       42 CALL                             R2 -1 0
       43 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R2 ; [+8]
        2 GETTABLEKS                       R3 R0 K0 ["ClassName"]
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R3
        6 MOVE                             R6 R1
        7 CALL                             R4 2 2
        8 MOVE                             R2 R5
        9 SETTABLE                         R2 R0 R1
       10 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["bindings"]
        2 GETTABLE                         R2 R3 R1
        3 MOVE                             R3 R2
        4 CALL                             R3 0 0
        5 GETTABLEKS                       R3 R0 K0 ["bindings"]
        7 LOADNIL                          R4
        8 SETTABLE                         R4 R3 R1
        9 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hostObject"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 JUMPIFNOTEQKNIL                  R2 ; [+8]
        7 GETTABLEKS                       R3 R0 K1 ["ClassName"]
        9 GETUPVAL                         R4 3
       10 MOVE                             R5 R3
       11 MOVE                             R6 R1
       12 CALL                             R4 2 2
       13 MOVE                             R2 R5
       14 SETTABLE                         R2 R0 R1
       15 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [xpcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R3 3
        8 CALL                             R1 2 2
        9 JUMPIF                           R1 ; [+19]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["currentElement"]
       13 GETTABLEKS                       R3 R4 K3 ["source"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADK                            R3 K4 ["<enable element tracebacks>"]
       18 LOADK                            R4 K5 ["Error updating props:\n\t%s\nIn element:\n%s\n"]
       19 MOVE                             R6 R2
       20 MOVE                             R7 R3
       21 NAMECALL                         R4 R4 K6 ["format"]
       23 CALL                             R4 3 1
       24 GETIMPORT                        R5 K8 [error]
       26 MOVE                             R6 R4
       27 LOADN                            R7 0
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 GETTABLEKS                       R4 R0 K0 ["bindings"]
        7 JUMPIFNOTEQKNIL                  R4 ; [+5]
        9 NEWTABLE                         R4 0 0
       11 SETTABLEKS                       R4 R0 K0 ["bindings"]
       13 GETTABLEKS                       R4 R0 K0 ["bindings"]
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K1 ["subscribe"]
       18 MOVE                             R6 R2
       19 MOVE                             R7 R3
       20 CALL                             R5 2 1
       21 SETTABLE                         R5 R4 R1
       22 MOVE                             R4 R3
       23 NAMECALL                         R5 R2 K2 ["getValue"]
       25 CALL                             R5 1 -1
       26 CALL                             R4 -1 0
       27 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["bindings"]
        2 JUMPIFEQKNIL                     R1 ; [+14]
        4 GETIMPORT                        R1 K2 [pairs]
        6 GETTABLEKS                       R2 R0 K0 ["bindings"]
        8 CALL                             R1 1 3
        9 FORGPREP_NEXT                    R1
       10 MOVE                             R6 R5
       11 CALL                             R6 0 0
       12 FORGLOOP                         R1 2 ; [-3]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K0 ["bindings"]
       17 RETURN                           R0 0

PROTO_8:
        0 JUMPIFNOTEQ                      R2 R3 ; [+2]
        2 RETURN                           R0 0
        3 GETUPVAL                         R4 0
        4 JUMPIFEQ                         R1 R4 ; [+4]
        6 GETUPVAL                         R4 1
        7 JUMPIFNOTEQ                      R1 R4 ; [+2]
        9 RETURN                           R0 0
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K0 ["of"]
       13 MOVE                             R5 R1
       14 CALL                             R4 1 1
       15 GETUPVAL                         R6 2
       16 GETTABLEKS                       R5 R6 K1 ["HostEvent"]
       18 JUMPIFEQ                         R4 R5 ; [+6]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K2 ["HostChangeEvent"]
       23 JUMPIFNOTEQ                      R4 R5 ; [+36]
       25 GETTABLEKS                       R5 R0 K3 ["eventManager"]
       27 JUMPIFNOTEQKNIL                  R5 ; [+9]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R5 R6 K4 ["new"]
       32 GETTABLEKS                       R6 R0 K5 ["hostObject"]
       34 CALL                             R5 1 1
       35 SETTABLEKS                       R5 R0 K3 ["eventManager"]
       37 GETTABLEKS                       R5 R1 K6 ["name"]
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K2 ["HostChangeEvent"]
       42 JUMPIFNOTEQ                      R4 R6 ; [+9]
       44 GETTABLEKS                       R6 R0 K3 ["eventManager"]
       46 MOVE                             R8 R5
       47 MOVE                             R9 R2
       48 NAMECALL                         R6 R6 K7 ["connectPropertyChange"]
       50 CALL                             R6 3 0
       51 RETURN                           R0 0
       52 GETTABLEKS                       R6 R0 K3 ["eventManager"]
       54 MOVE                             R8 R5
       55 MOVE                             R9 R2
       56 NAMECALL                         R6 R6 K8 ["connectEvent"]
       58 CALL                             R6 3 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R7 2
       61 GETTABLEKS                       R6 R7 K0 ["of"]
       63 MOVE                             R7 R2
       64 CALL                             R6 1 1
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R7 R8 K9 ["Binding"]
       68 JUMPIFEQ                         R6 R7 ; [+2]
       70 LOADB                            R5 0 +1
       71 LOADB                            R5 1
       72 GETUPVAL                         R8 2
       73 GETTABLEKS                       R7 R8 K0 ["of"]
       75 MOVE                             R8 R3
       76 CALL                             R7 1 1
       77 GETUPVAL                         R9 2
       78 GETTABLEKS                       R8 R9 K9 ["Binding"]
       80 JUMPIFEQ                         R7 R8 ; [+2]
       82 LOADB                            R6 0 +1
       83 LOADB                            R6 1
       84 JUMPIFNOT                        R6 ; [+9]
       85 GETTABLEKS                       R8 R0 K10 ["bindings"]
       87 GETTABLE                         R7 R8 R1
       88 MOVE                             R8 R7
       89 CALL                             R8 0 0
       90 GETTABLEKS                       R8 R0 K10 ["bindings"]
       92 LOADNIL                          R9
       93 SETTABLE                         R9 R8 R1
       94 JUMPIFNOT                        R5 ; [+6]
       95 GETUPVAL                         R7 4
       96 MOVE                             R8 R0
       97 MOVE                             R9 R1
       98 MOVE                             R10 R2
       99 CALL                             R7 3 0
      100 RETURN                           R0 0
      101 GETTABLEKS                       R7 R0 K5 ["hostObject"]
      103 MOVE                             R8 R2
      104 JUMPIFNOTEQKNIL                  R8 ; [+8]
      106 GETTABLEKS                       R9 R7 K11 ["ClassName"]
      108 GETUPVAL                         R10 5
      109 MOVE                             R11 R9
      110 MOVE                             R12 R1
      111 CALL                             R10 2 2
      112 MOVE                             R8 R11
      113 SETTABLE                         R8 R7 R1
      114 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETUPVAL                         R7 0
        6 MOVE                             R8 R0
        7 MOVE                             R9 R5
        8 MOVE                             R10 R6
        9 LOADNIL                          R11
       10 CALL                             R7 4 0
       11 FORGLOOP                         R2 2 ; [-7]
       13 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R3 K1 [pairs]
        2 MOVE                             R4 R2
        3 CALL                             R3 1 3
        4 FORGPREP_NEXT                    R3
        5 GETTABLE                         R8 R1 R6
        6 GETUPVAL                         R9 0
        7 MOVE                             R10 R0
        8 MOVE                             R11 R6
        9 MOVE                             R12 R7
       10 MOVE                             R13 R8
       11 CALL                             R9 4 0
       12 FORGLOOP                         R3 2 ; [-8]
       14 GETIMPORT                        R3 K1 [pairs]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 3
       18 FORGPREP_NEXT                    R3
       19 GETTABLE                         R8 R2 R6
       20 JUMPIFNOTEQKNIL                  R8 ; [+7]
       22 GETUPVAL                         R9 0
       23 MOVE                             R10 R0
       24 MOVE                             R11 R6
       25 LOADNIL                          R12
       26 MOVE                             R13 R7
       27 CALL                             R9 4 0
       28 FORGLOOP                         R3 2 ; [-10]
       30 RETURN                           R0 0

PROTO_11:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["Instance"] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["props"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 GETTABLEKS                       R3 R1 K1 ["hostParent"]
        4 GETTABLEKS                       R4 R1 K2 ["hostKey"]
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R5 R6 K3 ["internalTypeChecks"]
        9 JUMPIFNOT                        R5 ; [+15]
       10 GETUPVAL                         R5 1
       11 GETUPVAL                         R8 2
       12 GETTABLEKS                       R7 R8 K4 ["of"]
       14 MOVE                             R8 R2
       15 CALL                             R7 1 1
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K5 ["Host"]
       19 JUMPIFEQ                         R7 R8 ; [+2]
       21 LOADB                            R6 0 +1
       22 LOADB                            R6 1
       23 LOADK                            R7 K6 ["Element at given node is not a host Element"]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R6 0
       26 GETTABLEKS                       R5 R6 K7 ["typeChecks"]
       28 JUMPIFNOT                        R5 ; [+28]
       29 GETTABLEKS                       R8 R2 K8 ["props"]
       31 GETTABLEKS                       R7 R8 K9 ["Name"]
       33 JUMPIFEQKNIL                     R7 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 FASTCALL2K                       ASSERT R6 K10 ; [+4]
       39 LOADK                            R7 K10 ["Name can not be specified as a prop to a host component in Roact."]
       40 GETIMPORT                        R5 K12 [assert]
       42 CALL                             R5 2 0
       43 GETTABLEKS                       R8 R2 K8 ["props"]
       45 GETTABLEKS                       R7 R8 K13 ["Parent"]
       47 JUMPIFEQKNIL                     R7 ; [+2]
       49 LOADB                            R6 0 +1
       50 LOADB                            R6 1
       51 FASTCALL2K                       ASSERT R6 K14 ; [+4]
       53 LOADK                            R7 K14 ["Parent can not be specified as a prop to a host component in Roact."]
       54 GETIMPORT                        R5 K12 [assert]
       56 CALL                             R5 2 0
       57 GETIMPORT                        R5 K17 [Instance.new]
       59 GETTABLEKS                       R6 R2 K18 ["component"]
       61 CALL                             R5 1 1
       62 SETTABLEKS                       R5 R1 K19 ["hostObject"]
       64 GETIMPORT                        R6 K21 [xpcall]
       66 NEWCLOSURE                       R7 P0
       67 CAPTURE                          UPVAL U3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 GETUPVAL                         R8 4
       71 CALL                             R6 2 2
       72 JUMPIF                           R6 ; [+16]
       73 GETTABLEKS                       R8 R2 K22 ["source"]
       75 JUMPIFNOTEQKNIL                  R8 ; [+2]
       77 LOADK                            R8 K23 ["<enable element tracebacks>"]
       78 LOADK                            R9 K24 ["Error applying props:\n\t%s\nIn element:\n%s\n"]
       79 MOVE                             R11 R7
       80 MOVE                             R12 R8
       81 NAMECALL                         R9 R9 K25 ["format"]
       83 CALL                             R9 3 1
       84 GETIMPORT                        R10 K27 [error]
       86 MOVE                             R11 R9
       87 LOADN                            R12 0
       88 CALL                             R10 2 0
       89 FASTCALL1                        TOSTRING R4 ; [+3]
       90 MOVE                             R9 R4
       91 GETIMPORT                        R8 K29 [tostring]
       93 CALL                             R8 1 1
       94 SETTABLEKS                       R8 R5 K9 ["Name"]
       96 GETTABLEKS                       R9 R2 K8 ["props"]
       98 GETUPVAL                         R10 5
       99 GETTABLE                         R8 R9 R10
      100 JUMPIFEQKNIL                     R8 ; [+8]
      102 GETTABLEKS                       R9 R0 K30 ["updateVirtualNodeWithChildren"]
      104 MOVE                             R10 R1
      105 GETTABLEKS                       R11 R1 K19 ["hostObject"]
      107 MOVE                             R12 R8
      108 CALL                             R9 3 0
      109 SETTABLEKS                       R3 R5 K13 ["Parent"]
      111 SETTABLEKS                       R5 R1 K19 ["hostObject"]
      113 GETUPVAL                         R9 6
      114 GETTABLEKS                       R11 R2 K8 ["props"]
      116 GETUPVAL                         R12 7
      117 GETTABLE                         R10 R11 R12
      118 MOVE                             R11 R5
      119 CALL                             R9 2 0
      120 GETTABLEKS                       R9 R1 K31 ["eventManager"]
      122 JUMPIFEQKNIL                     R9 ; [+6]
      124 GETTABLEKS                       R9 R1 K31 ["eventManager"]
      126 NAMECALL                         R9 R9 K32 ["resume"]
      128 CALL                             R9 1 0
      129 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R5 R2 K1 ["props"]
        5 GETUPVAL                         R6 1
        6 GETTABLE                         R4 R5 R6
        7 LOADNIL                          R5
        8 CALL                             R3 2 0
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETTABLEKS                       R4 R1 K4 ["children"]
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETTABLEKS                       R8 R0 K5 ["unmountVirtualNode"]
       17 MOVE                             R9 R7
       18 CALL                             R8 1 0
       19 FORGLOOP                         R3 2 ; [-5]
       21 GETTABLEKS                       R3 R1 K6 ["bindings"]
       23 JUMPIFEQKNIL                     R3 ; [+14]
       25 GETIMPORT                        R3 K3 [pairs]
       27 GETTABLEKS                       R4 R1 K6 ["bindings"]
       29 CALL                             R3 1 3
       30 FORGPREP_NEXT                    R3
       31 MOVE                             R8 R7
       32 CALL                             R8 0 0
       33 FORGLOOP                         R3 2 ; [-3]
       35 LOADNIL                          R3
       36 SETTABLEKS                       R3 R1 K6 ["bindings"]
       38 GETTABLEKS                       R3 R1 K7 ["hostObject"]
       40 NAMECALL                         R3 R3 K8 ["Destroy"]
       42 CALL                             R3 1 0
       43 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETUPVAL                         R3 3
        4 CALL                             R0 3 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R4 R1 K0 ["currentElement"]
        2 GETTABLEKS                       R3 R4 K1 ["props"]
        4 GETTABLEKS                       R4 R2 K1 ["props"]
        6 GETTABLEKS                       R5 R1 K2 ["eventManager"]
        8 JUMPIFEQKNIL                     R5 ; [+6]
       10 GETTABLEKS                       R5 R1 K2 ["eventManager"]
       12 NAMECALL                         R5 R5 K3 ["suspend"]
       14 CALL                             R5 1 0
       15 GETUPVAL                         R6 0
       16 GETTABLE                         R5 R3 R6
       17 GETUPVAL                         R7 0
       18 GETTABLE                         R6 R4 R7
       19 JUMPIFEQ                         R5 R6 ; [+12]
       21 GETUPVAL                         R5 1
       22 GETUPVAL                         R7 0
       23 GETTABLE                         R6 R3 R7
       24 LOADNIL                          R7
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 1
       27 GETUPVAL                         R7 0
       28 GETTABLE                         R6 R4 R7
       29 GETTABLEKS                       R7 R1 K4 ["hostObject"]
       31 CALL                             R5 2 0
       32 GETIMPORT                        R5 K6 [xpcall]
       34 NEWCLOSURE                       R6 P0
       35 CAPTURE                          UPVAL U2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R4
       39 GETUPVAL                         R7 3
       40 CALL                             R5 2 2
       41 JUMPIF                           R5 ; [+16]
       42 GETTABLEKS                       R7 R2 K7 ["source"]
       44 JUMPIFNOTEQKNIL                  R7 ; [+2]
       46 LOADK                            R7 K8 ["<enable element tracebacks>"]
       47 LOADK                            R8 K9 ["Error updating props:\n\t%s\nIn element:\n%s\n"]
       48 MOVE                             R10 R6
       49 MOVE                             R11 R7
       50 NAMECALL                         R8 R8 K10 ["format"]
       52 CALL                             R8 3 1
       53 GETIMPORT                        R9 K12 [error]
       55 MOVE                             R10 R8
       56 LOADN                            R11 0
       57 CALL                             R9 2 0
       58 GETTABLEKS                       R8 R2 K1 ["props"]
       60 GETUPVAL                         R9 4
       61 GETTABLE                         R7 R8 R9
       62 JUMPIFNOTEQKNIL                  R7 ; [+5]
       64 GETUPVAL                         R9 4
       65 GETTABLE                         R8 R3 R9
       66 JUMPIFEQKNIL                     R8 ; [+8]
       68 GETTABLEKS                       R8 R0 K13 ["updateVirtualNodeWithChildren"]
       70 MOVE                             R9 R1
       71 GETTABLEKS                       R10 R1 K4 ["hostObject"]
       73 MOVE                             R11 R7
       74 CALL                             R8 3 0
       75 GETTABLEKS                       R8 R1 K2 ["eventManager"]
       77 JUMPIFEQKNIL                     R8 ; [+6]
       79 GETTABLEKS                       R8 R1 K2 ["eventManager"]
       81 NAMECALL                         R8 R8 K14 ["resume"]
       83 CALL                             R8 1 0
       84 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Binding"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R5 K3 [script]
       14 GETTABLEKS                       R4 R5 K4 ["Parent"]
       16 GETTABLEKS                       R3 R4 K6 ["PropMarkers"]
       18 GETTABLEKS                       R2 R3 K7 ["Children"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K1 [require]
       23 GETIMPORT                        R5 K3 [script]
       25 GETTABLEKS                       R4 R5 K4 ["Parent"]
       27 GETTABLEKS                       R3 R4 K8 ["ElementKind"]
       29 CALL                             R2 1 1
       30 GETIMPORT                        R3 K1 [require]
       32 GETIMPORT                        R6 K3 [script]
       34 GETTABLEKS                       R5 R6 K4 ["Parent"]
       36 GETTABLEKS                       R4 R5 K9 ["SingleEventManager"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K1 [require]
       41 GETIMPORT                        R7 K3 [script]
       43 GETTABLEKS                       R6 R7 K4 ["Parent"]
       45 GETTABLEKS                       R5 R6 K10 ["getDefaultInstanceProperty"]
       47 CALL                             R4 1 1
       48 GETIMPORT                        R5 K1 [require]
       50 GETIMPORT                        R9 K3 [script]
       52 GETTABLEKS                       R8 R9 K4 ["Parent"]
       54 GETTABLEKS                       R7 R8 K6 ["PropMarkers"]
       56 GETTABLEKS                       R6 R7 K11 ["Ref"]
       58 CALL                             R5 1 1
       59 GETIMPORT                        R6 K1 [require]
       61 GETIMPORT                        R9 K3 [script]
       63 GETTABLEKS                       R8 R9 K4 ["Parent"]
       65 GETTABLEKS                       R7 R8 K12 ["Type"]
       67 CALL                             R6 1 1
       68 GETIMPORT                        R7 K1 [require]
       70 GETIMPORT                        R10 K3 [script]
       72 GETTABLEKS                       R9 R10 K4 ["Parent"]
       74 GETTABLEKS                       R8 R9 K13 ["internalAssert"]
       76 CALL                             R7 1 1
       77 GETIMPORT                        R9 K1 [require]
       79 GETIMPORT                        R12 K3 [script]
       81 GETTABLEKS                       R11 R12 K4 ["Parent"]
       83 GETTABLEKS                       R10 R11 K14 ["GlobalConfig"]
       85 CALL                             R9 1 1
       86 GETTABLEKS                       R8 R9 K15 ["get"]
       88 CALL                             R8 0 1
       89 DUPCLOSURE                       R9 K16 [PROTO_0]
       90 DUPCLOSURE                       R10 K17 [PROTO_1]
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R0
       93 DUPCLOSURE                       R11 K18 [PROTO_2]
       94 CAPTURE                          VAL R4
       95 DUPCLOSURE                       R12 K19 [PROTO_3]
       96 DUPCLOSURE                       R13 K20 [PROTO_6]
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R0
      100 DUPCLOSURE                       R14 K21 [PROTO_7]
      101 DUPCLOSURE                       R15 K22 [PROTO_8]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R13
      107 CAPTURE                          VAL R4
      108 DUPCLOSURE                       R16 K23 [PROTO_9]
      109 CAPTURE                          VAL R15
      110 DUPCLOSURE                       R17 K24 [PROTO_10]
      111 CAPTURE                          VAL R15
      112 NEWTABLE                         R18 4 0
      114 DUPCLOSURE                       R19 K25 [PROTO_11]
      115 SETTABLEKS                       R19 R18 K26 ["isHostObject"]
      117 DUPCLOSURE                       R19 K27 [PROTO_13]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R16
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R1
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R5
      126 SETTABLEKS                       R19 R18 K28 ["mountHostNode"]
      128 DUPCLOSURE                       R19 K29 [PROTO_14]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R5
      131 SETTABLEKS                       R19 R18 K30 ["unmountHostNode"]
      133 DUPCLOSURE                       R19 K31 [PROTO_16]
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R9
      138 CAPTURE                          VAL R1
      139 SETTABLEKS                       R19 R18 K32 ["updateHostNode"]
      141 RETURN                           R18 1
