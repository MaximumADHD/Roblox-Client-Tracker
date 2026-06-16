PROTO_0:
        0 PREPVARARGS                      0
        1 GETVARARGS                       R0 -1
        2 RETURN                           R0 -1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R2 ; [+17]
        2 GETIMPORT                        R3 K1 [pcall]
        4 GETTABLEKS                       R4 R0 K2 ["ResetPropertyToDefault"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 CALL                             R3 3 2
        9 JUMPIFNOT                        R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R5 R0 K3 ["ClassName"]
       13 GETUPVAL                         R6 0
       14 MOVE                             R7 R5
       15 MOVE                             R8 R1
       16 CALL                             R6 2 2
       17 MOVE                             R2 R7
       18 SETTABLE                         R2 R0 R1
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFEQKNIL                     R2 ; [+6]
        4 GETTABLE                         R3 R2 R1
        5 MOVE                             R4 R3
        6 CALL                             R4 0 0
        7 LOADNIL                          R4
        8 SETTABLE                         R4 R2 R1
        9 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R1 K1 [xpcall]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 GETUPVAL                         R4 2
        5 GETUPVAL                         R5 3
        6 MOVE                             R6 R0
        7 CALL                             R1 5 2
        8 JUMPIF                           R1 ; [+32]
        9 GETUPVAL                         R4 4
       10 GETTABLEKS                       R4 R4 K3 ["_source"]
       12 ORK                              R3 R4 K2 ["<enable DEV mode for stack>"]
       13 GETIMPORT                        R4 K6 [string.format]
       15 LOADK                            R5 K7 ["Error updating binding or ref assigned to key %s of '%s' (%s).\n\nUpdated value:\n  %s\n\nError:\n  %s\n\n%s\n"]
       16 GETUPVAL                         R6 3
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K8 ["Name"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R8 R8 K9 ["ClassName"]
       23 FASTCALL1                        TOSTRING R0 ; [+3]
       24 MOVE                             R10 R0
       25 GETIMPORT                        R9 K11 [tostring]
       27 CALL                             R9 1 1
       28 MOVE                             R10 R2
       29 MOVE                             R11 R3
       30 CALL                             R4 7 1
       31 GETUPVAL                         R5 5
       32 GETTABLEKS                       R5 R5 K12 ["error"]
       34 MOVE                             R6 R4
       35 CALL                             R5 1 0
       36 GETIMPORT                        R5 K13 [error]
       38 MOVE                             R6 R4
       39 LOADN                            R7 0
       40 CALL                             R5 2 0
       41 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 GETUPVAL                         R5 3
        8 GETTABLE                         R4 R5 R0
        9 JUMPIFNOTEQKNIL                  R4 ; [+5]
       11 GETUPVAL                         R4 3
       12 NEWTABLE                         R5 0 0
       14 SETTABLE                         R5 R4 R0
       15 GETUPVAL                         R5 3
       16 GETTABLE                         R4 R5 R0
       17 GETUPVAL                         R5 4
       18 GETTABLEKS                       R5 R5 K0 ["__subscribeToBinding"]
       20 MOVE                             R6 R2
       21 MOVE                             R7 R3
       22 CALL                             R5 2 1
       23 SETTABLE                         R5 R4 R1
       24 MOVE                             R4 R3
       25 NAMECALL                         R5 R2 K1 ["getValue"]
       27 CALL                             R5 1 -1
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+18]
        2 JUMPIFEQKNIL                     R2 ; [+17]
        4 FASTCALL1                        TYPEOF R2 ; [+3]
        5 MOVE                             R4 R2
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["string"] ; [+10]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K3 ["error"]
       14 LOADK                            R4 K4 ["Type provided for ReactRoblox.Tag is invalid - tags should be specified as a single string, with individual tags delimited by spaces. Instead received:\n%s"]
       15 GETUPVAL                         R5 2
       16 MOVE                             R6 R2
       17 CALL                             R5 1 -1
       18 CALL                             R3 -1 0
       19 RETURN                           R0 0
       20 NEWTABLE                         R3 0 0
       22 GETIMPORT                        R4 K6 [string.gmatch]
       24 ORK                              R5 R1 K7 [""]
       25 LOADK                            R6 K8 ["%S+"]
       26 CALL                             R4 2 3
       27 FORGPREP                         R4
       28 LOADB                            R9 1
       29 SETTABLE                         R9 R3 R7
       30 FORGLOOP                         R4 1 ; [-3]
       32 NEWTABLE                         R4 0 0
       34 GETIMPORT                        R5 K6 [string.gmatch]
       36 ORK                              R6 R2 K7 [""]
       37 LOADK                            R7 K8 ["%S+"]
       38 CALL                             R5 2 3
       39 FORGPREP                         R5
       40 LOADB                            R10 1
       41 SETTABLE                         R10 R4 R8
       42 FORGLOOP                         R5 1 ; [-3]
       44 MOVE                             R5 R3
       45 LOADNIL                          R6
       46 LOADNIL                          R7
       47 FORGPREP                         R5
       48 GETTABLE                         R10 R4 R8
       49 JUMPIF                           R10 ; [+6]
       50 GETUPVAL                         R10 3
       51 MOVE                             R12 R0
       52 MOVE                             R13 R8
       53 NAMECALL                         R10 R10 K9 ["RemoveTag"]
       55 CALL                             R10 3 0
       56 FORGLOOP                         R5 2 ; [-9]
       58 MOVE                             R5 R4
       59 LOADNIL                          R6
       60 LOADNIL                          R7
       61 FORGPREP                         R5
       62 GETTABLE                         R10 R3 R8
       63 JUMPIF                           R10 ; [+6]
       64 GETUPVAL                         R10 3
       65 MOVE                             R12 R0
       66 MOVE                             R13 R8
       67 NAMECALL                         R10 R10 K10 ["AddTag"]
       69 CALL                             R10 3 0
       70 FORGLOOP                         R5 2 ; [-9]
       72 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetTags"]
        4 CALL                             R1 2 3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 0
        7 MOVE                             R8 R0
        8 MOVE                             R9 R5
        9 NAMECALL                         R6 R6 K1 ["RemoveTag"]
       11 CALL                             R6 3 0
       12 FORGLOOP                         R1 2 ; [-7]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["of"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K1 ["HostEvent"]
        8 JUMPIFEQ                         R4 R5 ; [+6]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K2 ["HostChangeEvent"]
       13 JUMPIFNOTEQ                      R4 R5 ; [+32]
       15 GETUPVAL                         R6 1
       16 GETTABLE                         R5 R6 R0
       17 JUMPIFNOTEQKNIL                  R5 ; [+9]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["new"]
       22 MOVE                             R7 R0
       23 CALL                             R6 1 1
       24 MOVE                             R5 R6
       25 GETUPVAL                         R6 1
       26 SETTABLE                         R5 R6 R0
       27 GETTABLEKS                       R6 R1 K4 ["name"]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K2 ["HostChangeEvent"]
       32 JUMPIFNOTEQ                      R4 R7 ; [+7]
       34 MOVE                             R9 R6
       35 MOVE                             R10 R2
       36 NAMECALL                         R7 R5 K5 ["connectPropertyChange"]
       38 CALL                             R7 3 0
       39 RETURN                           R0 0
       40 MOVE                             R9 R6
       41 MOVE                             R10 R2
       42 NAMECALL                         R7 R5 K6 ["connectEvent"]
       44 CALL                             R7 3 0
       45 RETURN                           R0 0
       46 LOADB                            R5 0
       47 FASTCALL1                        TYPEOF R2 ; [+3]
       48 MOVE                             R7 R2
       49 GETIMPORT                        R6 K8 [typeof]
       51 CALL                             R6 1 1
       52 JUMPIFNOTEQKS                    R6 K9 ["table"] ; [+10]
       54 GETTABLEKS                       R6 R2 K10 ["$$typeof"]
       56 GETUPVAL                         R7 3
       57 GETTABLEKS                       R7 R7 K11 ["REACT_BINDING_TYPE"]
       59 JUMPIFEQ                         R6 R7 ; [+2]
       61 LOADB                            R5 0 +1
       62 LOADB                            R5 1
       63 LOADB                            R6 0
       64 JUMPIFEQKNIL                     R3 ; [+18]
       66 LOADB                            R6 0
       67 FASTCALL1                        TYPEOF R3 ; [+3]
       68 MOVE                             R8 R3
       69 GETIMPORT                        R7 K8 [typeof]
       71 CALL                             R7 1 1
       72 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+10]
       74 GETTABLEKS                       R7 R3 K10 ["$$typeof"]
       76 GETUPVAL                         R8 3
       77 GETTABLEKS                       R8 R8 K11 ["REACT_BINDING_TYPE"]
       79 JUMPIFEQ                         R7 R8 ; [+2]
       81 LOADB                            R6 0 +1
       82 LOADB                            R6 1
       83 JUMPIFNOT                        R6 ; [+9]
       84 GETUPVAL                         R8 4
       85 GETTABLE                         R7 R8 R0
       86 JUMPIFEQKNIL                     R7 ; [+6]
       88 GETTABLE                         R8 R7 R1
       89 MOVE                             R9 R8
       90 CALL                             R9 0 0
       91 LOADNIL                          R9
       92 SETTABLE                         R9 R7 R1
       93 JUMPIFNOT                        R5 ; [+6]
       94 GETUPVAL                         R7 5
       95 MOVE                             R8 R0
       96 MOVE                             R9 R1
       97 MOVE                             R10 R2
       98 CALL                             R7 3 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R7 6
      101 JUMPIFNOTEQ                      R1 R7 ; [+7]
      103 GETUPVAL                         R7 7
      104 MOVE                             R8 R0
      105 MOVE                             R9 R3
      106 MOVE                             R10 R2
      107 CALL                             R7 3 0
      108 RETURN                           R0 0
      109 MOVE                             R7 R2
      110 JUMPIFNOTEQKNIL                  R7 ; [+17]
      112 GETIMPORT                        R8 K13 [pcall]
      114 GETTABLEKS                       R9 R0 K14 ["ResetPropertyToDefault"]
      116 MOVE                             R10 R0
      117 MOVE                             R11 R1
      118 CALL                             R8 3 2
      119 JUMPIFNOT                        R8 ; [+1]
      120 RETURN                           R0 0
      121 GETTABLEKS                       R10 R0 K15 ["ClassName"]
      123 GETUPVAL                         R11 8
      124 MOVE                             R12 R10
      125 MOVE                             R13 R1
      126 CALL                             R11 2 2
      127 MOVE                             R7 R12
      128 SETTABLE                         R7 R0 R1
      129 RETURN                           R0 0

PROTO_8:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 JUMPIFEQKS                       R5 K0 ["ref"] ; [+8]
        6 JUMPIFEQKS                       R5 K1 ["children"] ; [+6]
        8 GETUPVAL                         R7 0
        9 MOVE                             R8 R0
       10 MOVE                             R9 R5
       11 MOVE                             R10 R6
       12 CALL                             R7 3 0
       13 FORGLOOP                         R2 2 ; [-10]
       15 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R4 K1 [xpcall]
        2 GETUPVAL                         R5 0
        3 GETUPVAL                         R6 1
        4 MOVE                             R7 R0
        5 MOVE                             R8 R2
        6 CALL                             R4 4 2
        7 JUMPIF                           R4 ; [+19]
        8 GETIMPORT                        R6 K4 [string.format]
       10 LOADK                            R7 K5 ["Error applying initial props to Roblox Instance '%s' (%s):\n  %s\n"]
       11 GETTABLEKS                       R8 R0 K6 ["Name"]
       13 GETTABLEKS                       R9 R0 K7 ["ClassName"]
       15 MOVE                             R10 R5
       16 CALL                             R6 4 1
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K8 ["error"]
       20 MOVE                             R8 R6
       21 CALL                             R7 1 0
       22 GETIMPORT                        R7 K9 [error]
       24 MOVE                             R8 R6
       25 LOADN                            R9 0
       26 CALL                             R7 2 0
       27 GETUPVAL                         R7 3
       28 GETTABLE                         R6 R7 R0
       29 JUMPIFEQKNIL                     R6 ; [+6]
       31 GETUPVAL                         R7 3
       32 GETTABLE                         R6 R7 R0
       33 NAMECALL                         R6 R6 K10 ["resume"]
       35 CALL                             R6 1 0
       36 RETURN                           R0 0

PROTO_10:
        0 LENGTH                           R3 R1
        1 LOADN                            R6 1
        2 MOVE                             R4 R3
        3 LOADN                            R5 2
        4 FORNPREP                         R4
        5 GETTABLE                         R7 R1 R6
        6 ADDK                             R9 R6 K0 [1]
        7 GETTABLE                         R8 R1 R9
        8 GETUPVAL                         R9 0
        9 GETTABLEKS                       R9 R9 K1 ["None"]
       11 JUMPIFNOTEQ                      R8 R9 ; [+2]
       13 LOADNIL                          R8
       14 JUMPIFEQKS                       R7 K2 ["ref"] ; [+9]
       16 JUMPIFEQKS                       R7 K3 ["children"] ; [+7]
       18 GETUPVAL                         R9 1
       19 MOVE                             R10 R0
       20 MOVE                             R11 R7
       21 MOVE                             R12 R8
       22 GETTABLE                         R13 R2 R7
       23 CALL                             R9 4 0
       24 FORNLOOP                         R4
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R0
        2 JUMPIFEQKNIL                     R3 ; [+6]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R0
        6 NAMECALL                         R3 R3 K0 ["suspend"]
        8 CALL                             R3 1 0
        9 GETIMPORT                        R3 K2 [xpcall]
       11 GETUPVAL                         R4 1
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 CALL                             R3 5 2
       17 JUMPIF                           R3 ; [+19]
       18 GETIMPORT                        R5 K5 [string.format]
       20 LOADK                            R6 K6 ["Error updating props on Roblox Instance '%s' (%s):\n  %s\n"]
       21 GETTABLEKS                       R7 R0 K7 ["Name"]
       23 GETTABLEKS                       R8 R0 K8 ["ClassName"]
       25 MOVE                             R9 R4
       26 CALL                             R5 4 1
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K9 ["error"]
       30 MOVE                             R7 R5
       31 CALL                             R6 1 0
       32 GETIMPORT                        R6 K10 [error]
       34 MOVE                             R7 R5
       35 LOADN                            R8 0
       36 CALL                             R6 2 0
       37 GETUPVAL                         R6 0
       38 GETTABLE                         R5 R6 R0
       39 JUMPIFEQKNIL                     R5 ; [+6]
       41 GETUPVAL                         R6 0
       42 GETTABLE                         R5 R6 R0
       43 NAMECALL                         R5 R5 K11 ["resume"]
       45 CALL                             R5 1 0
       46 RETURN                           R0 0

PROTO_12:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ReactFixBindingMemoryLeak"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 -1
        7 RETURN                           R0 -1

PROTO_13:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+12]
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 MOVE                             R7 R6
        9 CALL                             R7 0 0
       10 FORGLOOP                         R2 2 ; [-3]
       12 GETUPVAL                         R2 0
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R0
       15 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 GETUPVAL                         R1 0
        5 LOADNIL                          R2
        6 SETTABLE                         R2 R1 R0
        7 GETUPVAL                         R1 1
        8 JUMPIFNOT                        R1 ; [+16]
        9 GETUPVAL                         R2 2
       10 GETTABLE                         R1 R2 R0
       11 JUMPIFEQKNIL                     R1 ; [+20]
       13 MOVE                             R2 R1
       14 LOADNIL                          R3
       15 LOADNIL                          R4
       16 FORGPREP                         R2
       17 MOVE                             R7 R6
       18 CALL                             R7 0 0
       19 FORGLOOP                         R2 2 ; [-3]
       21 GETUPVAL                         R2 2
       22 LOADNIL                          R3
       23 SETTABLE                         R3 R2 R0
       24 JUMP                             ; [+7]
       25 GETUPVAL                         R2 2
       26 GETTABLE                         R1 R2 R0
       27 JUMPIFEQKNIL                     R1 ; [+4]
       29 GETUPVAL                         R1 2
       30 LOADNIL                          R2
       31 SETTABLE                         R2 R1 R0
       32 FASTCALL1                        TYPEOF R0 ; [+3]
       33 MOVE                             R2 R0
       34 GETIMPORT                        R1 K1 [typeof]
       36 CALL                             R1 1 1
       37 JUMPIFEQKS                       R1 K2 ["Instance"] ; [+2]
       39 RETURN                           R0 0
       40 GETUPVAL                         R1 3
       41 MOVE                             R3 R0
       42 NAMECALL                         R1 R1 K3 ["GetTags"]
       44 CALL                             R1 2 3
       45 FORGPREP                         R1
       46 GETUPVAL                         R6 3
       47 MOVE                             R8 R0
       48 MOVE                             R9 R5
       49 NAMECALL                         R6 R6 K4 ["RemoveTag"]
       51 CALL                             R6 3 0
       52 FORGLOOP                         R1 2 ; [-7]
       54 NAMECALL                         R1 R0 K5 ["GetDescendants"]
       56 CALL                             R1 1 3
       57 FORGPREP                         R1
       58 GETUPVAL                         R7 0
       59 GETTABLE                         R6 R7 R5
       60 JUMPIFEQKNIL                     R6 ; [+4]
       62 GETUPVAL                         R6 0
       63 LOADNIL                          R7
       64 SETTABLE                         R7 R6 R5
       65 GETUPVAL                         R6 1
       66 JUMPIFNOT                        R6 ; [+16]
       67 GETUPVAL                         R7 2
       68 GETTABLE                         R6 R7 R5
       69 JUMPIFEQKNIL                     R6 ; [+20]
       71 MOVE                             R7 R6
       72 LOADNIL                          R8
       73 LOADNIL                          R9
       74 FORGPREP                         R7
       75 MOVE                             R12 R11
       76 CALL                             R12 0 0
       77 FORGLOOP                         R7 2 ; [-3]
       79 GETUPVAL                         R7 2
       80 LOADNIL                          R8
       81 SETTABLE                         R8 R7 R5
       82 JUMP                             ; [+7]
       83 GETUPVAL                         R7 2
       84 GETTABLE                         R6 R7 R5
       85 JUMPIFEQKNIL                     R6 ; [+4]
       87 GETUPVAL                         R6 2
       88 LOADNIL                          R7
       89 SETTABLE                         R7 R6 R5
       90 GETUPVAL                         R6 3
       91 MOVE                             R8 R0
       92 NAMECALL                         R6 R6 K3 ["GetTags"]
       94 CALL                             R6 2 3
       95 FORGPREP                         R6
       96 GETUPVAL                         R11 3
       97 MOVE                             R13 R0
       98 MOVE                             R14 R10
       99 NAMECALL                         R11 R11 K4 ["RemoveTag"]
      101 CALL                             R11 3 0
      102 FORGLOOP                         R6 2 ; [-7]
      104 FORGLOOP                         R1 2 ; [-47]
      106 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [_G]
        3 GETTABLEKS                       R0 R0 K2 ["__DEV__"]
        5 GETIMPORT                        R1 K4 [game]
        7 LOADK                            R3 K5 ["CollectionService"]
        8 NAMECALL                         R1 R1 K6 ["GetService"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K8 [script]
       13 GETTABLEKS                       R2 R2 K9 ["Parent"]
       15 GETTABLEKS                       R2 R2 K9 ["Parent"]
       17 GETTABLEKS                       R2 R2 K9 ["Parent"]
       19 GETTABLEKS                       R2 R2 K9 ["Parent"]
       21 GETIMPORT                        R3 K11 [require]
       23 GETTABLEKS                       R4 R2 K12 ["LuauPolyfill"]
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R4 R3 K13 ["Object"]
       28 GETTABLEKS                       R5 R3 K14 ["util"]
       30 GETTABLEKS                       R5 R5 K15 ["inspect"]
       32 GETIMPORT                        R6 K11 [require]
       34 GETTABLEKS                       R7 R2 K16 ["Shared"]
       36 CALL                             R6 1 1
       37 GETTABLEKS                       R6 R6 K17 ["console"]
       39 GETIMPORT                        R7 K11 [require]
       41 GETTABLEKS                       R8 R2 K18 ["React"]
       43 CALL                             R7 1 1
       44 GETIMPORT                        R8 K11 [require]
       46 GETTABLEKS                       R9 R2 K16 ["Shared"]
       48 CALL                             R8 1 1
       49 GETTABLEKS                       R8 R8 K19 ["ReactSymbols"]
       51 GETIMPORT                        R9 K11 [require]
       53 GETIMPORT                        R10 K8 [script]
       55 GETTABLEKS                       R10 R10 K9 ["Parent"]
       57 GETTABLEKS                       R10 R10 K20 ["SingleEventManager"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K11 [require]
       62 GETTABLEKS                       R11 R2 K16 ["Shared"]
       64 CALL                             R10 1 1
       65 GETTABLEKS                       R10 R10 K21 ["Type"]
       67 GETIMPORT                        R11 K11 [require]
       69 GETIMPORT                        R12 K8 [script]
       71 GETTABLEKS                       R12 R12 K9 ["Parent"]
       73 GETTABLEKS                       R12 R12 K22 ["getDefaultInstanceProperty"]
       75 CALL                             R11 1 1
       76 GETIMPORT                        R12 K11 [require]
       78 GETIMPORT                        R14 K8 [script]
       80 GETTABLEKS                       R14 R14 K9 ["Parent"]
       82 GETTABLEKS                       R14 R14 K9 ["Parent"]
       84 GETTABLEKS                       R13 R14 K23 ["ReactRobloxHostTypes.roblox"]
       86 CALL                             R12 1 1
       87 GETIMPORT                        R13 K11 [require]
       89 GETTABLEKS                       R14 R2 K18 ["React"]
       91 CALL                             R13 1 1
       92 GETTABLEKS                       R13 R13 K24 ["Tag"]
       94 NEWTABLE                         R14 0 0
       96 NEWTABLE                         R15 0 0
       98 DUPCLOSURE                       R16 K25 [PROTO_0]
       99 DUPCLOSURE                       R17 K26 [PROTO_1]
      100 CAPTURE                          VAL R11
      101 DUPCLOSURE                       R18 K27 [PROTO_2]
      102 CAPTURE                          VAL R15
      103 DUPCLOSURE                       R19 K28 [PROTO_4]
      104 CAPTURE                          VAL R17
      105 CAPTURE                          VAL R16
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R7
      109 DUPCLOSURE                       R20 K29 [PROTO_5]
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R5
      113 CAPTURE                          VAL R1
      114 DUPCLOSURE                       R21 K30 [PROTO_6]
      115 CAPTURE                          VAL R1
      116 DUPCLOSURE                       R22 K31 [PROTO_7]
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R20
      125 CAPTURE                          VAL R11
      126 DUPCLOSURE                       R23 K32 [PROTO_8]
      127 CAPTURE                          VAL R22
      128 DUPCLOSURE                       R24 K33 [PROTO_9]
      129 CAPTURE                          VAL R23
      130 CAPTURE                          VAL R16
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R14
      133 DUPCLOSURE                       R25 K34 [PROTO_10]
      134 CAPTURE                          VAL R4
      135 CAPTURE                          VAL R22
      136 DUPCLOSURE                       R26 K35 [PROTO_11]
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R25
      139 CAPTURE                          VAL R16
      140 CAPTURE                          VAL R6
      141 GETIMPORT                        R27 K37 [xpcall]
      143 DUPCLOSURE                       R28 K38 [PROTO_12]
      144 DUPCLOSURE                       R29 K39 [PROTO_13]
      145 CALL                             R27 2 2
      146 DUPCLOSURE                       R29 K40 [PROTO_14]
      147 CAPTURE                          VAL R15
      148 DUPCLOSURE                       R30 K41 [PROTO_15]
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R28
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R1
      153 DUPTABLE                         R31 K47 [{"setInitialProperties", "updateProperties", "cleanupHostComponent", "_instanceToEventManager", "_instanceToBindings"}]
      154 SETTABLEKS                       R24 R31 K42 ["setInitialProperties"]
      156 SETTABLEKS                       R26 R31 K43 ["updateProperties"]
      158 SETTABLEKS                       R30 R31 K44 ["cleanupHostComponent"]
      160 SETTABLEKS                       R14 R31 K45 ["_instanceToEventManager"]
      162 SETTABLEKS                       R15 R31 K46 ["_instanceToBindings"]
      164 RETURN                           R31 1
