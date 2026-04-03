PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["updateButton"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Toolbar"]
        4 GETTABLEKS                       R3 R1 K2 ["Title"]
        6 GETTABLEKS                       R5 R1 K3 ["Id"]
        8 OR                               R4 R5 R3
        9 GETTABLEKS                       R6 R1 K5 ["Tooltip"]
       11 ORK                              R5 R6 K4 [""]
       12 GETTABLEKS                       R7 R1 K6 ["Icon"]
       14 ORK                              R6 R7 K4 [""]
       15 GETTABLEKS                       R7 R1 K7 ["OnClick"]
       17 GETTABLEKS                       R8 R1 K8 ["OnDropdownClick"]
       19 FASTCALL1                        TYPEOF R3 ; [+3]
       20 MOVE                             R12 R3
       21 GETIMPORT                        R11 K10 [typeof]
       23 CALL                             R11 1 1
       24 JUMPIFEQKS                       R11 K11 ["string"] ; [+2]
       26 LOADB                            R10 0 +1
       27 LOADB                            R10 1
       28 GETIMPORT                        R11 K13 [string.format]
       30 LOADK                            R12 K14 ["PluginButton requires Title to be of type string not %s"]
       31 FASTCALL1                        TYPEOF R3 ; [+3]
       32 MOVE                             R14 R3
       33 GETIMPORT                        R13 K10 [typeof]
       35 CALL                             R13 1 1
       36 CALL                             R11 2 -1
       37 FASTCALL                         ASSERT ; [+2]
       38 GETIMPORT                        R9 K16 [assert]
       40 CALL                             R9 -1 0
       41 GETTABLEKS                       R10 R1 K17 ["ButtonType"]
       43 JUMPIFNOTEQKS                    R10 K18 ["Dropdown"] ; [+9]
       45 MOVE                             R11 R4
       46 MOVE                             R12 R5
       47 MOVE                             R13 R6
       48 MOVE                             R14 R3
       49 NAMECALL                         R9 R2 K19 ["CreatePopupButton"]
       51 CALL                             R9 5 1
       52 JUMP                             ; [+7]
       53 MOVE                             R11 R4
       54 MOVE                             R12 R5
       55 MOVE                             R13 R6
       56 MOVE                             R14 R3
       57 NAMECALL                         R9 R2 K20 ["CreateButton"]
       59 CALL                             R9 5 1
       60 SETTABLEKS                       R9 R0 K21 ["button"]
       62 GETTABLEKS                       R9 R0 K21 ["button"]
       64 GETTABLEKS                       R11 R1 K22 ["ClickableWhenViewportHidden"]
       66 JUMPIFNOTEQKNIL                  R11 ; [+3]
       68 LOADB                            R10 1
       69 JUMP                             ; [+2]
       70 GETTABLEKS                       R10 R1 K22 ["ClickableWhenViewportHidden"]
       72 SETTABLEKS                       R10 R9 K22 ["ClickableWhenViewportHidden"]
       74 GETTABLEKS                       R10 R0 K21 ["button"]
       76 GETTABLEKS                       R9 R10 K23 ["Click"]
       78 NEWCLOSURE                       R11 P0
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R0
       81 NAMECALL                         R9 R9 K24 ["Connect"]
       83 CALL                             R9 2 0
       84 GETTABLEKS                       R9 R1 K17 ["ButtonType"]
       86 JUMPIFNOTEQKS                    R9 K18 ["Dropdown"] ; [+10]
       88 JUMPIFNOT                        R8 ; [+8]
       89 GETTABLEKS                       R10 R0 K21 ["button"]
       91 GETTABLEKS                       R9 R10 K25 ["DropdownClick"]
       93 MOVE                             R11 R8
       94 NAMECALL                         R9 R9 K24 ["Connect"]
       96 CALL                             R9 2 0
       97 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Enabled"]
        4 GETTABLEKS                       R3 R1 K2 ["Active"]
        6 GETTABLEKS                       R4 R1 K3 ["DropdownActive"]
        8 GETTABLEKS                       R5 R0 K4 ["button"]
       10 MOVE                             R7 R3
       11 NAMECALL                         R5 R5 K5 ["SetActive"]
       13 CALL                             R5 2 0
       14 JUMPIFEQKNIL                     R2 ; [+5]
       16 GETTABLEKS                       R5 R0 K4 ["button"]
       18 SETTABLEKS                       R2 R5 K1 ["Enabled"]
       20 JUMPIFEQKNIL                     R4 ; [+7]
       22 GETTABLEKS                       R5 R0 K4 ["button"]
       24 MOVE                             R7 R4
       25 NAMECALL                         R5 R5 K6 ["SetDropdownActive"]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 0
       29 JUMPIFNOT                        R5 ; [+13]
       30 GETTABLEKS                       R6 R1 K8 ["Icon"]
       32 ORK                              R5 R6 K7 [""]
       33 GETTABLEKS                       R7 R0 K4 ["button"]
       35 GETTABLEKS                       R6 R7 K8 ["Icon"]
       37 JUMPIFEQ                         R5 R6 ; [+5]
       39 GETTABLEKS                       R6 R0 K4 ["button"]
       41 SETTABLEKS                       R5 R6 K8 ["Icon"]
       43 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["updateButton"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["updateButton"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 JUMPIF                           R1 ; [+3]
        3 NAMECALL                         R1 R0 K1 ["createButton"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["button"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["button"]
        5 NAMECALL                         R1 R1 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R2 R3 K9 ["Typecheck"]
       23 GETTABLEKS                       R3 R1 K10 ["PureComponent"]
       25 LOADK                            R5 K11 ["PluginButton"]
       26 NAMECALL                         R3 R3 K12 ["extend"]
       28 CALL                             R3 2 1
       29 GETTABLEKS                       R4 R2 K13 ["wrap"]
       31 MOVE                             R5 R3
       32 GETIMPORT                        R6 K1 [script]
       34 CALL                             R4 2 0
       35 GETIMPORT                        R4 K15 [game]
       37 LOADK                            R6 K16 ["DynamicPluginButtonIcon"]
       38 LOADB                            R7 0
       39 NAMECALL                         R4 R4 K17 ["DefineFastFlag"]
       41 CALL                             R4 3 1
       42 DUPCLOSURE                       R5 K18 [PROTO_1]
       43 SETTABLEKS                       R5 R3 K19 ["createButton"]
       45 DUPCLOSURE                       R5 K20 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 SETTABLEKS                       R5 R3 K21 ["updateButton"]
       49 DUPCLOSURE                       R5 K22 [PROTO_3]
       50 SETTABLEKS                       R5 R3 K23 ["didMount"]
       52 DUPCLOSURE                       R5 K24 [PROTO_4]
       53 SETTABLEKS                       R5 R3 K25 ["didUpdate"]
       55 DUPCLOSURE                       R5 K26 [PROTO_5]
       56 SETTABLEKS                       R5 R3 K27 ["render"]
       58 DUPCLOSURE                       R5 K28 [PROTO_6]
       59 SETTABLEKS                       R5 R3 K29 ["willUnmount"]
       61 RETURN                           R3 1
