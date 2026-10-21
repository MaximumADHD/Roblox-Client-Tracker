PROTO_0:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["%*\n%*"]
        3 MOVE                             R4 R0
        4 GETIMPORT                        R5 K5 [debug.traceback]
        6 CALL                             R5 0 1
        7 NAMECALL                         R2 R2 K6 ["format"]
        9 CALL                             R2 3 1
       10 CALL                             R1 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["TryBeginRecording"]
        4 CALL                             R3 2 1
        5 GETIMPORT                        R4 K2 [xpcall]
        7 MOVE                             R5 R1
        8 DUPCLOSURE                       R6 K3 [PROTO_0]
        9 CALL                             R4 2 1
       10 JUMPIFNOT                        R3 ; [+16]
       11 GETUPVAL                         R5 0
       12 MOVE                             R7 R3
       13 JUMPIFNOT                        R4 ; [+4]
       14 JUMPIFNOT                        R2 ; [+3]
       15 GETIMPORT                        R8 K7 [Enum.FinishRecordingOperation.Append]
       17 JUMP                             ; [+6]
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETIMPORT                        R8 K9 [Enum.FinishRecordingOperation.Commit]
       21 JUMP                             ; [+2]
       22 GETIMPORT                        R8 K11 [Enum.FinishRecordingOperation.Cancel]
       24 NAMECALL                         R5 R5 K12 ["FinishRecording"]
       26 CALL                             R5 3 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["connectionsByUuid"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+10]
        5 GETTABLE                         R3 R2 R1
        6 JUMPIFNOT                        R3 ; [+8]
        7 GETTABLE                         R3 R2 R1
        8 JUMPIFNOT                        R3 ; [+4]
        9 GETTABLE                         R3 R2 R1
       10 NAMECALL                         R3 R3 K1 ["Disconnect"]
       12 CALL                             R3 1 0
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R1
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["connectionsByUuid"]
        3 GETTABLE                         R3 R4 R1
        4 JUMPIF                           R3 ; [+6]
        5 NEWTABLE                         R3 0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K0 ["connectionsByUuid"]
       10 SETTABLE                         R3 R4 R1
       11 SETTABLE                         R2 R3 R0
       12 RETURN                           R2 1

PROTO_5:
        0 GETIMPORT                        R0 K2 [table.clone]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["inputContexts"]
        5 CALL                             R0 1 1
        6 GETIMPORT                        R1 K2 [table.clone]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["inputActions"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K2 [table.clone]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["inputBindings"]
       17 CALL                             R2 1 1
       18 GETUPVAL                         R3 1
       19 LOADK                            R5 K6 ["Initialized"]
       20 LOADNIL                          R6
       21 MOVE                             R7 R0
       22 MOVE                             R8 R1
       23 MOVE                             R9 R2
       24 GETUPVAL                         R10 0
       25 GETTABLEKS                       R10 R10 K7 ["contextOrder"]
       27 NAMECALL                         R3 R3 K8 ["FireGuest"]
       29 CALL                             R3 7 0
       30 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["ContextUpdated"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R7 K3 [table.clone]
        7 MOVE                             R8 R1
        8 CALL                             R7 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R7
       11 GETUPVAL                         R8 1
       12 GETTABLEKS                       R8 R8 K4 ["contextOrder"]
       14 NAMECALL                         R2 R2 K5 ["FireGuest"]
       16 CALL                             R2 6 0
       17 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["ActionUpdated"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R7 K3 [table.clone]
        7 MOVE                             R8 R1
        8 CALL                             R7 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R7
       11 NAMECALL                         R2 R2 K4 ["FireGuest"]
       13 CALL                             R2 5 0
       14 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["BindingUpdated"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R0
        4 JUMPIFNOT                        R1 ; [+5]
        5 GETIMPORT                        R7 K3 [table.clone]
        7 MOVE                             R8 R1
        8 CALL                             R7 1 1
        9 JUMP                             ; [+1]
       10 LOADNIL                          R7
       11 NAMECALL                         R2 R2 K4 ["FireGuest"]
       13 CALL                             R2 5 0
       14 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ContextOrderChanged"]
        2 LOADNIL                          R3
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["contextOrder"]
        6 NAMECALL                         R0 R0 K2 ["FireGuest"]
        8 CALL                             R0 4 0
        9 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["StateChange"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R1
        4 NAMECALL                         R7 R0 K1 ["GetState"]
        6 CALL                             R7 1 -1
        7 NAMECALL                         R2 R2 K2 ["FireGuest"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateDefaultPlayerModule"]
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
        7 GETIMPORT                        R3 K5 [Enum.RolloutState.Enabled]
        9 JUMPIFEQ                         R2 R3 ; [+13]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
       17 GETIMPORT                        R3 K7 [Enum.RolloutState.Default]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R2 3
       24 LOADK                            R4 K8 ["ShowDefaultPlayerScriptsChanged"]
       25 LOADNIL                          R5
       26 AND                              R6 R0 R1
       27 NAMECALL                         R2 R2 K9 ["FireGuest"]
       29 CALL                             R2 4 0
       30 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 GETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
        7 JUMPIFNOT                        R2 ; [+11]
        8 GETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
       13 NAMECALL                         R2 R2 K2 ["Disconnect"]
       15 CALL                             R2 1 0
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K1 ["ActionStateChanged"]
       19 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 LOADK                            R4 K0 ["StateChange"]
        4 LOADNIL                          R5
        5 MOVE                             R6 R1
        6 NAMECALL                         R7 R0 K1 ["GetState"]
        8 CALL                             R7 1 -1
        9 NAMECALL                         R2 R2 K2 ["FireGuest"]
       11 CALL                             R2 -1 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["connectionsByUuid"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIFNOT                        R2 ; [+14]
       10 GETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       12 JUMPIFNOT                        R3 ; [+11]
       13 GETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       15 JUMPIFNOT                        R3 ; [+5]
       16 GETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       18 NAMECALL                         R3 R3 K3 ["Disconnect"]
       20 CALL                             R3 1 0
       21 LOADNIL                          R3
       22 SETTABLEKS                       R3 R2 K2 ["ActionStateChanged"]
       24 GETUPVAL                         R2 2
       25 LOADK                            R4 K4 ["StateChange"]
       26 LOADNIL                          R5
       27 MOVE                             R6 R1
       28 NAMECALL                         R7 R0 K5 ["GetState"]
       30 CALL                             R7 1 -1
       31 NAMECALL                         R2 R2 K6 ["FireGuest"]
       33 CALL                             R2 -1 0
       34 GETTABLEKS                       R2 R0 K7 ["StateChanged"]
       36 NEWCLOSURE                       R4 P0
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R2 R2 K8 ["Connect"]
       42 CALL                             R2 2 1
       43 GETUPVAL                         R4 1
       44 GETTABLEKS                       R4 R4 K1 ["connectionsByUuid"]
       46 GETTABLE                         R3 R4 R1
       47 JUMPIF                           R3 ; [+6]
       48 NEWTABLE                         R3 0 0
       50 GETUPVAL                         R4 1
       51 GETTABLEKS                       R4 R4 K1 ["connectionsByUuid"]
       53 SETTABLE                         R3 R4 R1
       54 SETTABLEKS                       R2 R3 K2 ["ActionStateChanged"]
       56 RETURN                           R0 0

PROTO_15:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 LOADK                            R8 K1 ["GuiButton"]
        7 NAMECALL                         R6 R5 K2 ["IsA"]
        9 CALL                             R6 2 1
       10 JUMPIFNOT                        R6 ; [+19]
       11 GETUPVAL                         R6 1
       12 SETTABLEKS                       R5 R6 K3 ["button"]
       14 GETUPVAL                         R6 2
       15 LOADK                            R8 K4 ["UpdateSelection"]
       16 LOADNIL                          R9
       17 DUPTABLE                         R10 K5 [{"button"}]
       18 GETUPVAL                         R11 3
       19 GETTABLEKS                       R11 R11 K6 ["serializeBindingButton"]
       21 MOVE                             R12 R5
       22 CALL                             R11 1 1
       23 SETTABLEKS                       R11 R10 K3 ["button"]
       25 NAMECALL                         R6 R6 K7 ["FireGuest"]
       27 CALL                             R6 4 0
       28 LOADB                            R0 1
       29 JUMP                             ; [+2]
       30 FORGLOOP                         R1 2 ; [-25]
       32 JUMPIF                           R0 ; [+11]
       33 GETUPVAL                         R1 1
       34 LOADNIL                          R2
       35 SETTABLEKS                       R2 R1 K3 ["button"]
       37 GETUPVAL                         R1 2
       38 LOADK                            R3 K4 ["UpdateSelection"]
       39 LOADNIL                          R4
       40 DUPTABLE                         R5 K9 [{["button"] = }]
       41 NAMECALL                         R1 R1 K7 ["FireGuest"]
       43 CALL                             R1 4 0
       44 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputBindings"]
        3 GETUPVAL                         R2 1
        4 GETTABLE                         R0 R1 R2
        5 JUMPIFNOT                        R0 ; [+22]
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["serializeBindingProperty"]
        9 GETUPVAL                         R2 3
       10 MOVE                             R3 R0
       11 GETUPVAL                         R4 4
       12 CALL                             R1 3 0
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 5
       15 LOADK                            R4 K2 ["BindingUpdated"]
       16 LOADNIL                          R5
       17 MOVE                             R6 R1
       18 JUMPIFNOT                        R0 ; [+5]
       19 GETIMPORT                        R7 K5 [table.clone]
       21 MOVE                             R8 R0
       22 CALL                             R7 1 1
       23 JUMP                             ; [+1]
       24 LOADNIL                          R7
       25 NAMECALL                         R2 R2 K6 ["FireGuest"]
       27 CALL                             R2 5 0
       28 RETURN                           R0 0

PROTO_17:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADK                            R2 K0 ["Binding%*NameChanged"]
        3 MOVE                             R4 R0
        4 NAMECALL                         R2 R2 K1 ["format"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 0
        8 LOADK                            R6 K2 ["Name"]
        9 NAMECALL                         R4 R1 K3 ["GetPropertyChangedSignal"]
       11 CALL                             R4 2 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          UPVAL U1
       14 CAPTURE                          UPVAL U0
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U4
       19 NAMECALL                         R4 R4 K4 ["Connect"]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       25 GETTABLE                         R5 R6 R3
       26 JUMPIF                           R5 ; [+6]
       27 NEWTABLE                         R5 0 0
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       32 SETTABLE                         R5 R6 R3
       33 SETTABLE                         R4 R5 R2
       34 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputBindings"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+25]
        9 GETTABLEKS                       R2 R1 K2 ["uiButton"]
       11 JUMPIFNOT                        R2 ; [+46]
       12 GETUPVAL                         R3 1
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       16 GETTABLE                         R4 R5 R3
       17 JUMPIFNOT                        R4 ; [+40]
       18 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       20 JUMPIFNOT                        R5 ; [+37]
       21 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       23 JUMPIFNOT                        R5 ; [+5]
       24 GETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       26 NAMECALL                         R5 R5 K5 ["Disconnect"]
       28 CALL                             R5 1 0
       29 LOADNIL                          R5
       30 SETTABLEKS                       R5 R4 K4 ["BindingUIButtonNameChanged"]
       32 JUMP                             ; [+25]
       33 JUMPIFNOTEQKS                    R0 K6 ["UIModifier"] ; [+24]
       35 GETTABLEKS                       R2 R1 K7 ["uiModifier"]
       37 JUMPIFNOT                        R2 ; [+20]
       38 GETUPVAL                         R3 1
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R5 R5 K3 ["connectionsByUuid"]
       42 GETTABLE                         R4 R5 R3
       43 JUMPIFNOT                        R4 ; [+14]
       44 GETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       46 JUMPIFNOT                        R5 ; [+11]
       47 GETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       49 JUMPIFNOT                        R5 ; [+5]
       50 GETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       52 NAMECALL                         R5 R5 K5 ["Disconnect"]
       54 CALL                             R5 1 0
       55 LOADNIL                          R5
       56 SETTABLEKS                       R5 R4 K8 ["BindingUIModifierNameChanged"]
       58 GETUPVAL                         R2 2
       59 GETTABLEKS                       R2 R2 K9 ["serializeBindingProperty"]
       61 GETUPVAL                         R3 3
       62 MOVE                             R4 R1
       63 MOVE                             R5 R0
       64 CALL                             R2 3 1
       65 JUMPIF                           R2 ; [+1]
       66 RETURN                           R0 0
       67 JUMPIFNOTEQKS                    R0 K1 ["UIButton"] ; [+36]
       69 GETUPVAL                         R2 3
       70 GETTABLEKS                       R2 R2 K1 ["UIButton"]
       72 JUMPIF                           R2 ; [+1]
       73 JUMP                             ; [+66]
       74 GETUPVAL                         R3 1
       75 LOADK                            R6 K10 ["Name"]
       76 NAMECALL                         R4 R2 K11 ["GetPropertyChangedSignal"]
       78 CALL                             R4 2 1
       79 LOADK                            R7 K1 ["UIButton"]
       80 NEWCLOSURE                       R6 P0
       81 CAPTURE                          UPVAL U0
       82 CAPTURE                          UPVAL U1
       83 CAPTURE                          UPVAL U2
       84 CAPTURE                          UPVAL U3
       85 CAPTURE                          VAL R7
       86 CAPTURE                          UPVAL U4
       87 NAMECALL                         R4 R4 K12 ["Connect"]
       89 CALL                             R4 2 1
       90 GETUPVAL                         R6 0
       91 GETTABLEKS                       R6 R6 K3 ["connectionsByUuid"]
       93 GETTABLE                         R5 R6 R3
       94 JUMPIF                           R5 ; [+6]
       95 NEWTABLE                         R5 0 0
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K3 ["connectionsByUuid"]
      100 SETTABLE                         R5 R6 R3
      101 SETTABLEKS                       R4 R5 K4 ["BindingUIButtonNameChanged"]
      103 JUMP                             ; [+36]
      104 JUMPIFNOTEQKS                    R0 K6 ["UIModifier"] ; [+35]
      106 GETUPVAL                         R2 3
      107 GETTABLEKS                       R2 R2 K6 ["UIModifier"]
      109 JUMPIF                           R2 ; [+1]
      110 JUMP                             ; [+29]
      111 GETUPVAL                         R3 1
      112 LOADK                            R6 K10 ["Name"]
      113 NAMECALL                         R4 R2 K11 ["GetPropertyChangedSignal"]
      115 CALL                             R4 2 1
      116 LOADK                            R7 K6 ["UIModifier"]
      117 NEWCLOSURE                       R6 P0
      118 CAPTURE                          UPVAL U0
      119 CAPTURE                          UPVAL U1
      120 CAPTURE                          UPVAL U2
      121 CAPTURE                          UPVAL U3
      122 CAPTURE                          VAL R7
      123 CAPTURE                          UPVAL U4
      124 NAMECALL                         R4 R4 K12 ["Connect"]
      126 CALL                             R4 2 1
      127 GETUPVAL                         R6 0
      128 GETTABLEKS                       R6 R6 K3 ["connectionsByUuid"]
      130 GETTABLE                         R5 R6 R3
      131 JUMPIF                           R5 ; [+6]
      132 NEWTABLE                         R5 0 0
      134 GETUPVAL                         R6 0
      135 GETTABLEKS                       R6 R6 K3 ["connectionsByUuid"]
      137 SETTABLE                         R5 R6 R3
      138 SETTABLEKS                       R4 R5 K8 ["BindingUIModifierNameChanged"]
      140 GETUPVAL                         R2 1
      141 GETUPVAL                         R3 4
      142 LOADK                            R5 K13 ["BindingUpdated"]
      143 LOADNIL                          R6
      144 MOVE                             R7 R2
      145 JUMPIFNOT                        R1 ; [+5]
      146 GETIMPORT                        R8 K16 [table.clone]
      148 MOVE                             R9 R1
      149 CALL                             R8 1 1
      150 JUMP                             ; [+1]
      151 LOADNIL                          R8
      152 NAMECALL                         R3 R3 K17 ["FireGuest"]
      154 CALL                             R3 5 0
      155 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U3
       11 GETTABLEKS                       R3 R0 K1 ["UIButton"]
       13 JUMPIF                           R3 ; [+1]
       14 JUMP                             ; [+28]
       15 LOADK                            R6 K2 ["Name"]
       16 NAMECALL                         R4 R3 K3 ["GetPropertyChangedSignal"]
       18 CALL                             R4 2 1
       19 LOADK                            R7 K1 ["UIButton"]
       20 NEWCLOSURE                       R6 P1
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R7
       26 CAPTURE                          UPVAL U3
       27 NAMECALL                         R4 R4 K4 ["Connect"]
       29 CALL                             R4 2 1
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       33 GETTABLE                         R5 R6 R1
       34 JUMPIF                           R5 ; [+6]
       35 NEWTABLE                         R5 0 0
       37 GETUPVAL                         R6 1
       38 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       40 SETTABLE                         R5 R6 R1
       41 SETTABLEKS                       R4 R5 K6 ["BindingUIButtonNameChanged"]
       43 GETTABLEKS                       R3 R0 K7 ["UIModifier"]
       45 JUMPIF                           R3 ; [+1]
       46 JUMP                             ; [+28]
       47 LOADK                            R6 K2 ["Name"]
       48 NAMECALL                         R4 R3 K3 ["GetPropertyChangedSignal"]
       50 CALL                             R4 2 1
       51 LOADK                            R7 K7 ["UIModifier"]
       52 NEWCLOSURE                       R6 P1
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R1
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          VAL R7
       58 CAPTURE                          UPVAL U3
       59 NAMECALL                         R4 R4 K4 ["Connect"]
       61 CALL                             R4 2 1
       62 GETUPVAL                         R6 1
       63 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       65 GETTABLE                         R5 R6 R1
       66 JUMPIF                           R5 ; [+6]
       67 NEWTABLE                         R5 0 0
       69 GETUPVAL                         R6 1
       70 GETTABLEKS                       R6 R6 K5 ["connectionsByUuid"]
       72 SETTABLE                         R5 R6 R1
       73 SETTABLEKS                       R4 R5 K8 ["BindingUIModifierNameChanged"]
       75 GETTABLEKS                       R3 R0 K9 ["Changed"]
       77 NEWCLOSURE                       R5 P2
       78 CAPTURE                          UPVAL U1
       79 CAPTURE                          VAL R1
       80 CAPTURE                          UPVAL U2
       81 CAPTURE                          VAL R0
       82 CAPTURE                          UPVAL U3
       83 NAMECALL                         R3 R3 K4 ["Connect"]
       85 CALL                             R3 2 1
       86 GETUPVAL                         R5 1
       87 GETTABLEKS                       R5 R5 K5 ["connectionsByUuid"]
       89 GETTABLE                         R4 R5 R1
       90 JUMPIF                           R4 ; [+6]
       91 NEWTABLE                         R4 0 0
       93 GETUPVAL                         R5 1
       94 GETTABLEKS                       R5 R5 K5 ["connectionsByUuid"]
       96 SETTABLE                         R4 R5 R1
       97 SETTABLEKS                       R3 R4 K10 ["BindingPropertyChanged"]
       99 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["serializeBinding"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["inputBindings"]
       15 SETTABLE                         R3 R4 R2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["inputBindingInstances"]
       19 SETTABLE                         R0 R4 R2
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R0
       22 CALL                             R4 1 0
       23 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIFNOT                        R1 ; [+14]
        5 MOVE                             R2 R1
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 NAMECALL                         R7 R6 K1 ["Disconnect"]
       11 CALL                             R7 1 0
       12 FORGLOOP                         R2 2 ; [-4]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       17 LOADNIL                          R3
       18 SETTABLE                         R3 R2 R0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K2 ["inputBindings"]
       22 GETTABLE                         R1 R2 R0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K2 ["inputBindings"]
       26 LOADNIL                          R3
       27 SETTABLE                         R3 R2 R0
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K3 ["inputBindingInstances"]
       31 LOADNIL                          R3
       32 SETTABLE                         R3 R2 R0
       33 JUMPIFNOT                        R1 ; [+8]
       34 GETUPVAL                         R2 1
       35 LOADK                            R4 K4 ["BindingUpdated"]
       36 LOADNIL                          R5
       37 MOVE                             R6 R0
       38 LOADNIL                          R7
       39 NAMECALL                         R2 R2 K5 ["FireGuest"]
       41 CALL                             R2 5 0
       42 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["inputActions"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 NAMECALL                         R4 R0 K2 ["GetInputBindings"]
       15 CALL                             R4 1 3
       16 FORGPREP                         R4
       17 LOADK                            R12 K3 ["InputBinding"]
       18 NAMECALL                         R10 R8 K4 ["IsA"]
       20 CALL                             R10 2 1
       21 FASTCALL2K                       ASSERT R10 K5 ; [+4]
       23 LOADK                            R11 K5 ["Binding is not a InputBinding"]
       24 GETIMPORT                        R9 K7 [assert]
       26 CALL                             R9 2 0
       27 GETUPVAL                         R9 0
       28 MOVE                             R11 R8
       29 NAMECALL                         R9 R9 K0 ["GetOrCreateUniqueId"]
       31 CALL                             R9 2 1
       32 LOADB                            R10 1
       33 SETTABLE                         R10 R3 R9
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
       37 GETTABLE                         R10 R11 R9
       38 JUMPIF                           R10 ; [+50]
       39 GETUPVAL                         R11 0
       40 MOVE                             R13 R8
       41 NAMECALL                         R11 R11 K0 ["GetOrCreateUniqueId"]
       43 CALL                             R11 2 1
       44 GETUPVAL                         R12 2
       45 GETTABLEKS                       R12 R12 K9 ["serializeBinding"]
       47 MOVE                             R13 R8
       48 CALL                             R12 1 1
       49 SETTABLEKS                       R1 R12 K10 ["parentUuid"]
       51 GETUPVAL                         R13 1
       52 GETTABLEKS                       R13 R13 K8 ["inputBindings"]
       54 SETTABLE                         R12 R13 R11
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R13 R13 K11 ["inputBindingInstances"]
       58 SETTABLE                         R8 R13 R11
       59 GETUPVAL                         R13 3
       60 MOVE                             R14 R8
       61 CALL                             R13 1 0
       62 MOVE                             R10 R11
       63 GETTABLEKS                       R12 R2 K12 ["bindings"]
       65 FASTCALL2                        TABLE_INSERT R12 R10 ; [+4]
       67 MOVE                             R13 R10
       68 GETIMPORT                        R11 K15 [table.insert]
       70 CALL                             R11 2 0
       71 GETUPVAL                         R12 1
       72 GETTABLEKS                       R12 R12 K8 ["inputBindings"]
       74 GETTABLE                         R11 R12 R10
       75 GETUPVAL                         R12 4
       76 LOADK                            R14 K16 ["BindingUpdated"]
       77 LOADNIL                          R15
       78 MOVE                             R16 R10
       79 JUMPIFNOT                        R11 ; [+5]
       80 GETIMPORT                        R17 K18 [table.clone]
       82 MOVE                             R18 R11
       83 CALL                             R17 1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R17
       86 NAMECALL                         R12 R12 K19 ["FireGuest"]
       88 CALL                             R12 5 0
       89 FORGLOOP                         R4 2 ; [-73]
       91 NEWTABLE                         R4 0 0
       93 GETTABLEKS                       R5 R2 K12 ["bindings"]
       95 LOADNIL                          R6
       96 LOADNIL                          R7
       97 FORGPREP                         R5
       98 GETTABLE                         R10 R3 R9
       99 JUMPIFNOT                        R10 ; [+8]
      100 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      102 MOVE                             R11 R4
      103 MOVE                             R12 R9
      104 GETIMPORT                        R10 K15 [table.insert]
      106 CALL                             R10 2 0
      107 JUMP                             ; [+42]
      108 GETUPVAL                         R11 1
      109 GETTABLEKS                       R11 R11 K20 ["connectionsByUuid"]
      111 GETTABLE                         R10 R11 R9
      112 JUMPIFNOT                        R10 ; [+14]
      113 MOVE                             R11 R10
      114 LOADNIL                          R12
      115 LOADNIL                          R13
      116 FORGPREP                         R11
      117 NAMECALL                         R16 R15 K21 ["Disconnect"]
      119 CALL                             R16 1 0
      120 FORGLOOP                         R11 2 ; [-4]
      122 GETUPVAL                         R11 1
      123 GETTABLEKS                       R11 R11 K20 ["connectionsByUuid"]
      125 LOADNIL                          R12
      126 SETTABLE                         R12 R11 R9
      127 GETUPVAL                         R11 1
      128 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
      130 GETTABLE                         R10 R11 R9
      131 GETUPVAL                         R11 1
      132 GETTABLEKS                       R11 R11 K8 ["inputBindings"]
      134 LOADNIL                          R12
      135 SETTABLE                         R12 R11 R9
      136 GETUPVAL                         R11 1
      137 GETTABLEKS                       R11 R11 K11 ["inputBindingInstances"]
      139 LOADNIL                          R12
      140 SETTABLE                         R12 R11 R9
      141 JUMPIFNOT                        R10 ; [+8]
      142 GETUPVAL                         R11 4
      143 LOADK                            R13 K16 ["BindingUpdated"]
      144 LOADNIL                          R14
      145 MOVE                             R15 R9
      146 LOADNIL                          R16
      147 NAMECALL                         R11 R11 K19 ["FireGuest"]
      149 CALL                             R11 5 0
      150 FORGLOOP                         R5 2 ; [-53]
      152 SETTABLEKS                       R4 R2 K12 ["bindings"]
      154 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["inputActions"]
        3 GETTABLE                         R3 R4 R0
        4 JUMPIFNOT                        R3 ; [+7]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["inputActions"]
        8 GETTABLE                         R2 R3 R0
        9 GETTABLEKS                       R2 R2 K1 ["name"]
       11 JUMP                             ; [+1]
       12 LOADK                            R2 K2 [""]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K0 ["inputActions"]
       16 GETTABLE                         R4 R5 R1
       17 JUMPIFNOT                        R4 ; [+7]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K0 ["inputActions"]
       21 GETTABLE                         R3 R4 R1
       22 GETTABLEKS                       R3 R3 K1 ["name"]
       24 JUMP                             ; [+1]
       25 LOADK                            R3 K2 [""]
       26 GETIMPORT                        R6 K5 [string.lower]
       28 MOVE                             R7 R2
       29 CALL                             R6 1 1
       30 MOVE                             R4 R6
       31 GETIMPORT                        R5 K5 [string.lower]
       33 MOVE                             R6 R3
       34 CALL                             R5 1 1
       35 JUMPIFEQ                         R4 R5 ; [+6]
       37 JUMPIFLT                         R4 R5 ; [+2]
       39 LOADB                            R6 0 +1
       40 LOADB                            R6 1
       41 RETURN                           R6 1
       42 JUMPIFEQ                         R2 R3 ; [+6]
       44 JUMPIFLT                         R2 R3 ; [+2]
       46 LOADB                            R6 0 +1
       47 LOADB                            R6 1
       48 RETURN                           R6 1
       49 JUMPIFLT                         R0 R1 ; [+2]
       51 LOADB                            R6 0 +1
       52 LOADB                            R6 1
       53 RETURN                           R6 1

PROTO_24:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          UPVAL U0
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R2 4
       10 LOADK                            R4 K1 ["ActionUpdated"]
       11 LOADNIL                          R5
       12 MOVE                             R6 R0
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETIMPORT                        R7 K4 [table.clone]
       16 MOVE                             R8 R1
       17 CALL                             R7 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R7
       20 NAMECALL                         R2 R2 K5 ["FireGuest"]
       22 CALL                             R2 5 0
       23 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+62]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["serializeActionProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+54]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 4
       16 LOADK                            R5 K2 ["ActionUpdated"]
       17 LOADNIL                          R6
       18 MOVE                             R7 R2
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETIMPORT                        R8 K5 [table.clone]
       22 MOVE                             R9 R1
       23 CALL                             R8 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 NAMECALL                         R3 R3 K6 ["FireGuest"]
       28 CALL                             R3 5 0
       29 GETUPVAL                         R2 5
       30 CALL                             R2 0 1
       31 JUMPIFNOT                        R2 ; [+36]
       32 JUMPIFNOTEQKS                    R0 K7 ["Name"] ; [+35]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K8 ["inputContexts"]
       37 GETTABLEKS                       R4 R1 K9 ["parentUuid"]
       39 GETTABLE                         R2 R3 R4
       40 JUMPIFNOT                        R2 ; [+27]
       41 GETTABLEKS                       R3 R2 K10 ["actions"]
       43 GETIMPORT                        R4 K12 [table.sort]
       45 MOVE                             R5 R3
       46 NEWCLOSURE                       R6 P0
       47 CAPTURE                          UPVAL U0
       48 CALL                             R4 2 0
       49 GETTABLEKS                       R3 R1 K9 ["parentUuid"]
       51 GETUPVAL                         R4 4
       52 LOADK                            R6 K13 ["ContextUpdated"]
       53 LOADNIL                          R7
       54 MOVE                             R8 R3
       55 JUMPIFNOT                        R2 ; [+5]
       56 GETIMPORT                        R9 K5 [table.clone]
       58 MOVE                             R10 R2
       59 CALL                             R9 1 1
       60 JUMP                             ; [+1]
       61 LOADNIL                          R9
       62 GETUPVAL                         R10 0
       63 GETTABLEKS                       R10 R10 K14 ["contextOrder"]
       65 NAMECALL                         R4 R4 K6 ["FireGuest"]
       67 CALL                             R4 6 0
       68 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["InputBindingsChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R2 R2 K2 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       19 GETTABLE                         R3 R4 R1
       20 JUMPIF                           R3 ; [+6]
       21 NEWTABLE                         R3 0 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       26 SETTABLE                         R3 R4 R1
       27 SETTABLEKS                       R2 R3 K4 ["ActionBindingsChanged"]
       29 GETTABLEKS                       R2 R0 K5 ["Changed"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U5
       38 NAMECALL                         R2 R2 K2 ["Connect"]
       40 CALL                             R2 2 1
       41 GETUPVAL                         R4 2
       42 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       44 GETTABLE                         R3 R4 R1
       45 JUMPIF                           R3 ; [+6]
       46 NEWTABLE                         R3 0 0
       48 GETUPVAL                         R4 2
       49 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       51 SETTABLE                         R3 R4 R1
       52 SETTABLEKS                       R2 R3 K6 ["ActionPropertyChanged"]
       54 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["serializeAction"]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 1
       10 SETTABLEKS                       R1 R3 K2 ["parentUuid"]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R4 R4 K3 ["inputActions"]
       15 SETTABLE                         R3 R4 R2
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K4 ["inputActionInstances"]
       19 SETTABLE                         R0 R4 R2
       20 NAMECALL                         R4 R0 K5 ["GetInputBindings"]
       22 CALL                             R4 1 3
       23 FORGPREP                         R4
       24 LOADK                            R12 K6 ["InputBinding"]
       25 NAMECALL                         R10 R8 K7 ["IsA"]
       27 CALL                             R10 2 1
       28 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       30 LOADK                            R11 K8 ["Binding is not a InputBinding"]
       31 GETIMPORT                        R9 K10 [assert]
       33 CALL                             R9 2 0
       34 GETUPVAL                         R10 0
       35 MOVE                             R12 R8
       36 NAMECALL                         R10 R10 K0 ["GetOrCreateUniqueId"]
       38 CALL                             R10 2 1
       39 GETUPVAL                         R11 1
       40 GETTABLEKS                       R11 R11 K11 ["serializeBinding"]
       42 MOVE                             R12 R8
       43 CALL                             R11 1 1
       44 SETTABLEKS                       R2 R11 K2 ["parentUuid"]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K12 ["inputBindings"]
       49 SETTABLE                         R11 R12 R10
       50 GETUPVAL                         R12 2
       51 GETTABLEKS                       R12 R12 K13 ["inputBindingInstances"]
       53 SETTABLE                         R8 R12 R10
       54 GETUPVAL                         R12 3
       55 MOVE                             R13 R8
       56 CALL                             R12 1 0
       57 MOVE                             R9 R10
       58 GETTABLEKS                       R11 R3 K14 ["bindings"]
       60 FASTCALL2                        TABLE_INSERT R11 R9 ; [+4]
       62 MOVE                             R12 R9
       63 GETIMPORT                        R10 K17 [table.insert]
       65 CALL                             R10 2 0
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K12 ["inputBindings"]
       69 GETTABLE                         R10 R11 R9
       70 GETUPVAL                         R11 4
       71 LOADK                            R13 K18 ["BindingUpdated"]
       72 LOADNIL                          R14
       73 MOVE                             R15 R9
       74 JUMPIFNOT                        R10 ; [+5]
       75 GETIMPORT                        R16 K20 [table.clone]
       77 MOVE                             R17 R10
       78 CALL                             R16 1 1
       79 JUMP                             ; [+1]
       80 LOADNIL                          R16
       81 NAMECALL                         R11 R11 K21 ["FireGuest"]
       83 CALL                             R11 5 0
       84 FORGLOOP                         R4 2 ; [-61]
       86 GETUPVAL                         R4 5
       87 MOVE                             R5 R0
       88 CALL                             R4 1 0
       89 GETUPVAL                         R4 6
       90 MOVE                             R5 R0
       91 CALL                             R4 1 0
       92 RETURN                           R2 1

PROTO_29:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputActions"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["bindings"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R8 0
       12 GETTABLEKS                       R8 R8 K2 ["connectionsByUuid"]
       14 GETTABLE                         R7 R8 R6
       15 JUMPIFNOT                        R7 ; [+14]
       16 MOVE                             R8 R7
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 NAMECALL                         R13 R12 K3 ["Disconnect"]
       22 CALL                             R13 1 0
       23 FORGLOOP                         R8 2 ; [-4]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K2 ["connectionsByUuid"]
       28 LOADNIL                          R9
       29 SETTABLE                         R9 R8 R6
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["inputBindings"]
       33 GETTABLE                         R7 R8 R6
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K4 ["inputBindings"]
       37 LOADNIL                          R9
       38 SETTABLE                         R9 R8 R6
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K5 ["inputBindingInstances"]
       42 LOADNIL                          R9
       43 SETTABLE                         R9 R8 R6
       44 JUMPIFNOT                        R7 ; [+8]
       45 GETUPVAL                         R8 1
       46 LOADK                            R10 K6 ["BindingUpdated"]
       47 LOADNIL                          R11
       48 MOVE                             R12 R6
       49 LOADNIL                          R13
       50 NAMECALL                         R8 R8 K7 ["FireGuest"]
       52 CALL                             R8 5 0
       53 FORGLOOP                         R2 2 ; [-43]
       55 GETUPVAL                         R3 0
       56 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       58 GETTABLE                         R2 R3 R0
       59 JUMPIFNOT                        R2 ; [+14]
       60 MOVE                             R3 R2
       61 LOADNIL                          R4
       62 LOADNIL                          R5
       63 FORGPREP                         R3
       64 NAMECALL                         R8 R7 K3 ["Disconnect"]
       66 CALL                             R8 1 0
       67 FORGLOOP                         R3 2 ; [-4]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       72 LOADNIL                          R4
       73 SETTABLE                         R4 R3 R0
       74 GETUPVAL                         R2 0
       75 GETTABLEKS                       R2 R2 K0 ["inputActions"]
       77 LOADNIL                          R3
       78 SETTABLE                         R3 R2 R0
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R2 R2 K8 ["inputActionInstances"]
       82 LOADNIL                          R3
       83 SETTABLE                         R3 R2 R0
       84 GETUPVAL                         R2 1
       85 LOADK                            R4 K9 ["ActionUpdated"]
       86 LOADNIL                          R5
       87 MOVE                             R6 R0
       88 LOADNIL                          R7
       89 NAMECALL                         R2 R2 K7 ["FireGuest"]
       91 CALL                             R2 5 0
       92 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["inputContexts"]
        8 GETTABLE                         R2 R3 R1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NEWTABLE                         R3 0 0
       13 GETTABLEKS                       R4 R2 K2 ["actions"]
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 LOADB                            R9 1
       19 SETTABLE                         R9 R3 R8
       20 FORGLOOP                         R4 2 ; [-3]
       22 NEWTABLE                         R4 0 0
       24 NAMECALL                         R5 R0 K3 ["GetInputActions"]
       26 CALL                             R5 1 3
       27 FORGPREP                         R5
       28 LOADK                            R13 K4 ["InputAction"]
       29 NAMECALL                         R11 R9 K5 ["IsA"]
       31 CALL                             R11 2 1
       32 FASTCALL2K                       ASSERT R11 K6 ; [+4]
       34 LOADK                            R12 K6 ["Action is not a InputAction"]
       35 GETIMPORT                        R10 K8 [assert]
       37 CALL                             R10 2 0
       38 GETUPVAL                         R10 0
       39 MOVE                             R12 R9
       40 NAMECALL                         R10 R10 K0 ["GetOrCreateUniqueId"]
       42 CALL                             R10 2 1
       43 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       45 MOVE                             R12 R4
       46 MOVE                             R13 R10
       47 GETIMPORT                        R11 K11 [table.insert]
       49 CALL                             R11 2 0
       50 GETTABLE                         R11 R3 R10
       51 JUMPIFNOT                        R11 ; [+3]
       52 LOADNIL                          R11
       53 SETTABLE                         R11 R3 R10
       54 JUMP                             ; [+30]
       55 GETUPVAL                         R11 2
       56 MOVE                             R12 R9
       57 MOVE                             R13 R1
       58 CALL                             R11 2 1
       59 GETTABLEKS                       R13 R2 K2 ["actions"]
       61 FASTCALL2                        TABLE_INSERT R13 R11 ; [+4]
       63 MOVE                             R14 R11
       64 GETIMPORT                        R12 K11 [table.insert]
       66 CALL                             R12 2 0
       67 GETUPVAL                         R13 1
       68 GETTABLEKS                       R13 R13 K12 ["inputActions"]
       70 GETTABLE                         R12 R13 R11
       71 GETUPVAL                         R13 3
       72 LOADK                            R15 K13 ["ActionUpdated"]
       73 LOADNIL                          R16
       74 MOVE                             R17 R11
       75 JUMPIFNOT                        R12 ; [+5]
       76 GETIMPORT                        R18 K15 [table.clone]
       78 MOVE                             R19 R12
       79 CALL                             R18 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R18
       82 NAMECALL                         R13 R13 K16 ["FireGuest"]
       84 CALL                             R13 5 0
       85 FORGLOOP                         R5 2 ; [-58]
       87 MOVE                             R5 R3
       88 LOADNIL                          R6
       89 LOADNIL                          R7
       90 FORGPREP                         R5
       91 GETUPVAL                         R11 1
       92 GETTABLEKS                       R11 R11 K17 ["inputActionInstances"]
       94 GETTABLE                         R10 R11 R8
       95 JUMPIFNOT                        R10 ; [+12]
       96 GETUPVAL                         R11 1
       97 GETTABLEKS                       R11 R11 K17 ["inputActionInstances"]
       99 GETTABLE                         R10 R11 R8
      100 LOADK                            R12 K18 ["InputContext"]
      101 NAMECALL                         R10 R10 K19 ["FindFirstAncestor"]
      103 CALL                             R10 2 1
      104 JUMPIF                           R10 ; [+3]
      105 GETUPVAL                         R10 4
      106 MOVE                             R11 R8
      107 CALL                             R10 1 0
      108 FORGLOOP                         R5 1 ; [-18]
      110 GETUPVAL                         R5 5
      111 CALL                             R5 0 1
      112 JUMPIFNOT                        R5 ; [+6]
      113 GETIMPORT                        R5 K21 [table.sort]
      115 MOVE                             R6 R4
      116 NEWCLOSURE                       R7 P0
      117 CAPTURE                          UPVAL U1
      118 CALL                             R5 2 0
      119 SETTABLEKS                       R4 R2 K2 ["actions"]
      121 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        7 GETUPVAL                         R3 2
        8 GETTABLE                         R1 R2 R3
        9 GETUPVAL                         R2 4
       10 LOADK                            R4 K1 ["ContextUpdated"]
       11 LOADNIL                          R5
       12 MOVE                             R6 R0
       13 JUMPIFNOT                        R1 ; [+5]
       14 GETIMPORT                        R7 K4 [table.clone]
       16 MOVE                             R8 R1
       17 CALL                             R7 1 1
       18 JUMP                             ; [+1]
       19 LOADNIL                          R7
       20 GETUPVAL                         R8 3
       21 GETTABLEKS                       R8 R8 K5 ["contextOrder"]
       23 NAMECALL                         R2 R2 K6 ["FireGuest"]
       25 CALL                             R2 6 0
       26 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        3 GETUPVAL                         R3 1
        4 GETTABLE                         R1 R2 R3
        5 JUMPIFNOT                        R1 ; [+26]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K1 ["serializeContextProperty"]
        9 GETUPVAL                         R3 3
       10 MOVE                             R4 R1
       11 MOVE                             R5 R0
       12 CALL                             R2 3 1
       13 JUMPIFNOT                        R2 ; [+18]
       14 GETUPVAL                         R2 1
       15 GETUPVAL                         R3 4
       16 LOADK                            R5 K2 ["ContextUpdated"]
       17 LOADNIL                          R6
       18 MOVE                             R7 R2
       19 JUMPIFNOT                        R1 ; [+5]
       20 GETIMPORT                        R8 K5 [table.clone]
       22 MOVE                             R9 R1
       23 CALL                             R8 1 1
       24 JUMP                             ; [+1]
       25 LOADNIL                          R8
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K6 ["contextOrder"]
       29 NAMECALL                         R3 R3 K7 ["FireGuest"]
       31 CALL                             R3 6 0
       32 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R2 R0 K1 ["InputActionsChanged"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U3
       13 NAMECALL                         R2 R2 K2 ["Connect"]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       19 GETTABLE                         R3 R4 R1
       20 JUMPIF                           R3 ; [+6]
       21 NEWTABLE                         R3 0 0
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       26 SETTABLE                         R3 R4 R1
       27 SETTABLEKS                       R2 R3 K4 ["ContextActionsChanged"]
       29 GETTABLEKS                       R2 R0 K5 ["Changed"]
       31 NEWCLOSURE                       R4 P1
       32 CAPTURE                          UPVAL U2
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U3
       37 NAMECALL                         R2 R2 K2 ["Connect"]
       39 CALL                             R2 2 1
       40 GETUPVAL                         R4 2
       41 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       43 GETTABLE                         R3 R4 R1
       44 JUMPIF                           R3 ; [+6]
       45 NEWTABLE                         R3 0 0
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K3 ["connectionsByUuid"]
       50 SETTABLE                         R3 R4 R1
       51 SETTABLEKS                       R2 R3 K6 ["ContextPropertyChanged"]
       53 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetOrCreateUniqueId"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["serializeContext"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R4 R0 K2 ["Parent"]
       12 JUMPIFNOT                        R4 ; [+7]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R5 R0 K2 ["Parent"]
       16 NAMECALL                         R3 R3 K0 ["GetOrCreateUniqueId"]
       18 CALL                             R3 2 1
       19 JUMP                             ; [+11]
       20 GETTABLEKS                       R4 R0 K3 ["Name"]
       22 JUMPIFNOTEQKS                    R4 K4 ["Default"] ; [+3]
       24 LOADK                            R3 K5 ["DefaultContext"]
       25 JUMP                             ; [+5]
       26 GETUPVAL                         R3 0
       27 GETUPVAL                         R5 2
       28 NAMECALL                         R3 R3 K0 ["GetOrCreateUniqueId"]
       30 CALL                             R3 2 1
       31 SETTABLEKS                       R3 R2 K6 ["parentUuid"]
       33 GETUPVAL                         R3 3
       34 GETTABLEKS                       R3 R3 K7 ["inputContexts"]
       36 SETTABLE                         R2 R3 R1
       37 GETUPVAL                         R3 3
       38 GETTABLEKS                       R3 R3 K8 ["inputContextInstances"]
       40 SETTABLE                         R0 R3 R1
       41 NAMECALL                         R3 R0 K9 ["GetInputActions"]
       43 CALL                             R3 1 3
       44 FORGPREP                         R3
       45 LOADK                            R11 K10 ["InputAction"]
       46 NAMECALL                         R9 R7 K11 ["IsA"]
       48 CALL                             R9 2 1
       49 FASTCALL2K                       ASSERT R9 K12 ; [+4]
       51 LOADK                            R10 K12 ["Action is not a InputAction"]
       52 GETIMPORT                        R8 K14 [assert]
       54 CALL                             R8 2 0
       55 GETUPVAL                         R8 4
       56 MOVE                             R9 R7
       57 MOVE                             R10 R1
       58 CALL                             R8 2 1
       59 GETTABLEKS                       R10 R2 K15 ["actions"]
       61 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       63 MOVE                             R11 R8
       64 GETIMPORT                        R9 K18 [table.insert]
       66 CALL                             R9 2 0
       67 GETUPVAL                         R10 3
       68 GETTABLEKS                       R10 R10 K19 ["inputActions"]
       70 GETTABLE                         R9 R10 R8
       71 GETUPVAL                         R10 5
       72 LOADK                            R12 K20 ["ActionUpdated"]
       73 LOADNIL                          R13
       74 MOVE                             R14 R8
       75 JUMPIFNOT                        R9 ; [+5]
       76 GETIMPORT                        R15 K22 [table.clone]
       78 MOVE                             R16 R9
       79 CALL                             R15 1 1
       80 JUMP                             ; [+1]
       81 LOADNIL                          R15
       82 NAMECALL                         R10 R10 K23 ["FireGuest"]
       84 CALL                             R10 5 0
       85 FORGLOOP                         R3 2 ; [-41]
       87 GETUPVAL                         R3 6
       88 CALL                             R3 0 1
       89 JUMPIFNOT                        R3 ; [+8]
       90 GETTABLEKS                       R3 R2 K15 ["actions"]
       92 GETIMPORT                        R4 K25 [table.sort]
       94 MOVE                             R5 R3
       95 NEWCLOSURE                       R6 P0
       96 CAPTURE                          UPVAL U3
       97 CALL                             R4 2 0
       98 GETUPVAL                         R3 7
       99 MOVE                             R4 R0
      100 CALL                             R3 1 0
      101 GETUPVAL                         R4 3
      102 GETTABLEKS                       R4 R4 K26 ["contextOrder"]
      104 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
      106 MOVE                             R5 R1
      107 GETIMPORT                        R3 K18 [table.insert]
      109 CALL                             R3 2 0
      110 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
        3 GETTABLE                         R1 R2 R0
        4 JUMPIF                           R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R2 R1 K1 ["actions"]
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 GETUPVAL                         R7 1
       12 MOVE                             R8 R6
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-4]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       19 GETTABLE                         R2 R3 R0
       20 JUMPIFNOT                        R2 ; [+14]
       21 MOVE                             R3 R2
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 NAMECALL                         R8 R7 K3 ["Disconnect"]
       27 CALL                             R8 1 0
       28 FORGLOOP                         R3 2 ; [-4]
       30 GETUPVAL                         R3 0
       31 GETTABLEKS                       R3 R3 K2 ["connectionsByUuid"]
       33 LOADNIL                          R4
       34 SETTABLE                         R4 R3 R0
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K0 ["inputContexts"]
       38 LOADNIL                          R3
       39 SETTABLE                         R3 R2 R0
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K4 ["inputContextInstances"]
       43 LOADNIL                          R3
       44 SETTABLE                         R3 R2 R0
       45 NEWTABLE                         R2 0 0
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K5 ["contextOrder"]
       50 LOADNIL                          R4
       51 LOADNIL                          R5
       52 FORGPREP                         R3
       53 JUMPIFEQ                         R7 R0 ; [+8]
       55 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       57 MOVE                             R9 R2
       58 MOVE                             R10 R7
       59 GETIMPORT                        R8 K8 [table.insert]
       61 CALL                             R8 2 0
       62 FORGLOOP                         R3 2 ; [-10]
       64 GETUPVAL                         R3 0
       65 SETTABLEKS                       R2 R3 K5 ["contextOrder"]
       67 GETUPVAL                         R3 2
       68 LOADK                            R5 K9 ["ContextUpdated"]
       69 LOADNIL                          R6
       70 MOVE                             R7 R0
       71 LOADNIL                          R8
       72 GETUPVAL                         R9 0
       73 GETTABLEKS                       R9 R9 K5 ["contextOrder"]
       75 NAMECALL                         R3 R3 K10 ["FireGuest"]
       77 CALL                             R3 6 0
       78 GETUPVAL                         R3 2
       79 LOADK                            R5 K11 ["ContextOrderChanged"]
       80 LOADNIL                          R6
       81 GETUPVAL                         R7 0
       82 GETTABLEKS                       R7 R7 K5 ["contextOrder"]
       84 NAMECALL                         R3 R3 K10 ["FireGuest"]
       86 CALL                             R3 4 0
       87 RETURN                           R0 0

PROTO_36:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["contextOrder"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 LOADB                            R6 1
        9 SETTABLE                         R6 R0 R5
       10 FORGLOOP                         R1 2 ; [-3]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 1
       15 NAMECALL                         R2 R2 K1 ["GetInputContexts"]
       17 CALL                             R2 1 3
       18 FORGPREP                         R2
       19 LOADK                            R10 K2 ["InputContext"]
       20 NAMECALL                         R8 R6 K3 ["IsA"]
       22 CALL                             R8 2 1
       23 FASTCALL2K                       ASSERT R8 K4 ; [+4]
       25 LOADK                            R9 K4 ["Context is not a InputContext"]
       26 GETIMPORT                        R7 K6 [assert]
       28 CALL                             R7 2 0
       29 GETUPVAL                         R7 2
       30 MOVE                             R9 R6
       31 NAMECALL                         R7 R7 K7 ["GetOrCreateUniqueId"]
       33 CALL                             R7 2 1
       34 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       36 MOVE                             R9 R1
       37 MOVE                             R10 R7
       38 GETIMPORT                        R8 K10 [table.insert]
       40 CALL                             R8 2 0
       41 GETTABLE                         R8 R0 R7
       42 JUMPIFNOT                        R8 ; [+3]
       43 LOADNIL                          R8
       44 SETTABLE                         R8 R0 R7
       45 JUMP                             ; [+24]
       46 GETUPVAL                         R8 3
       47 MOVE                             R9 R6
       48 CALL                             R8 1 0
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K11 ["inputContexts"]
       52 GETTABLE                         R8 R9 R7
       53 GETUPVAL                         R9 4
       54 LOADK                            R11 K12 ["ContextUpdated"]
       55 LOADNIL                          R12
       56 MOVE                             R13 R7
       57 JUMPIFNOT                        R8 ; [+5]
       58 GETIMPORT                        R14 K14 [table.clone]
       60 MOVE                             R15 R8
       61 CALL                             R14 1 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R14
       64 GETUPVAL                         R15 0
       65 GETTABLEKS                       R15 R15 K0 ["contextOrder"]
       67 NAMECALL                         R9 R9 K15 ["FireGuest"]
       69 CALL                             R9 6 0
       70 FORGLOOP                         R2 2 ; [-52]
       72 MOVE                             R2 R0
       73 LOADNIL                          R3
       74 LOADNIL                          R4
       75 FORGPREP                         R2
       76 GETUPVAL                         R7 5
       77 MOVE                             R8 R5
       78 CALL                             R7 1 0
       79 FORGLOOP                         R2 2 ; [-4]
       81 GETUPVAL                         R2 0
       82 SETTABLEKS                       R1 R2 K0 ["contextOrder"]
       84 GETUPVAL                         R2 4
       85 LOADK                            R4 K16 ["ContextOrderChanged"]
       86 LOADNIL                          R5
       87 GETUPVAL                         R6 0
       88 GETTABLEKS                       R6 R6 K0 ["contextOrder"]
       90 NAMECALL                         R2 R2 K15 ["FireGuest"]
       92 CALL                             R2 4 0
       93 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["contextOrder"]
        3 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["context"]
        3 JUMPIF                           R0 ; [+16]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputContextInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+3]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["Parent"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["context"]
       23 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       25 LOADK                            R2 K4 ["Context is required"]
       26 GETIMPORT                        R0 K6 [assert]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K1 ["uuid"]
       32 JUMPIFNOT                        R0 ; [+17]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K2 ["inputContextInstances"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["uuid"]
       39 GETTABLE                         R0 R1 R2
       40 JUMPIFNOT                        R0 ; [+58]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K7 ["deserializeContext"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K0 ["context"]
       47 MOVE                             R3 R0
       48 CALL                             R1 2 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K0 ["context"]
       53 GETTABLEKS                       R1 R1 K8 ["name"]
       55 FASTCALL2K                       ASSERT R1 K9 ; [+4]
       57 LOADK                            R2 K9 ["When creating a new context, a name must be defined."]
       58 GETIMPORT                        R0 K6 [assert]
       60 CALL                             R0 2 0
       61 GETIMPORT                        R0 K12 [Instance.new]
       63 LOADK                            R1 K13 ["InputContext"]
       64 CALL                             R0 1 1
       65 GETUPVAL                         R1 3
       66 LOADK                            R3 K14 ["Inputs"]
       67 NAMECALL                         R1 R1 K15 ["FindFirstChild"]
       69 CALL                             R1 2 1
       70 JUMPIF                           R1 ; [+18]
       71 GETIMPORT                        R2 K12 [Instance.new]
       73 LOADK                            R3 K16 ["Folder"]
       74 CALL                             R2 1 1
       75 MOVE                             R1 R2
       76 FASTCALL2K                       ASSERT R1 K17 ; [+5]
       78 MOVE                             R3 R1
       79 LOADK                            R4 K17 ["Inputs folder not found"]
       80 GETIMPORT                        R2 K6 [assert]
       82 CALL                             R2 2 0
       83 LOADK                            R2 K14 ["Inputs"]
       84 SETTABLEKS                       R2 R1 K18 ["Name"]
       86 GETUPVAL                         R2 3
       87 SETTABLEKS                       R2 R1 K3 ["Parent"]
       89 SETTABLEKS                       R1 R0 K3 ["Parent"]
       91 GETUPVAL                         R2 2
       92 GETTABLEKS                       R2 R2 K7 ["deserializeContext"]
       94 GETUPVAL                         R3 0
       95 GETTABLEKS                       R3 R3 K0 ["context"]
       97 MOVE                             R4 R0
       98 CALL                             R2 2 0
       99 RETURN                           R0 0

PROTO_39:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["action"]
        3 JUMPIF                           R0 ; [+16]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputActionInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+3]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["Parent"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["action"]
       23 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       25 LOADK                            R2 K4 ["Action is required"]
       26 GETIMPORT                        R0 K6 [assert]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K1 ["uuid"]
       32 JUMPIFNOT                        R0 ; [+17]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K2 ["inputActionInstances"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["uuid"]
       39 GETTABLE                         R0 R1 R2
       40 JUMPIFNOT                        R0 ; [+90]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K7 ["deserializeAction"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K0 ["action"]
       47 MOVE                             R3 R0
       48 CALL                             R1 2 0
       49 RETURN                           R0 0
       50 GETUPVAL                         R1 0
       51 GETTABLEKS                       R1 R1 K0 ["action"]
       53 GETTABLEKS                       R1 R1 K8 ["name"]
       55 FASTCALL2K                       ASSERT R1 K9 ; [+4]
       57 LOADK                            R2 K9 ["When creating a new action, a name must be defined."]
       58 GETIMPORT                        R0 K6 [assert]
       60 CALL                             R0 2 0
       61 GETUPVAL                         R1 0
       62 GETTABLEKS                       R1 R1 K0 ["action"]
       64 GETTABLEKS                       R1 R1 K10 ["parentUuid"]
       66 FASTCALL2K                       ASSERT R1 K11 ; [+4]
       68 LOADK                            R2 K11 ["When creating a new action, a parent must be defined."]
       69 GETIMPORT                        R0 K6 [assert]
       71 CALL                             R0 2 0
       72 GETUPVAL                         R0 0
       73 GETTABLEKS                       R0 R0 K0 ["action"]
       75 GETTABLEKS                       R0 R0 K10 ["parentUuid"]
       77 GETUPVAL                         R2 1
       78 GETTABLEKS                       R2 R2 K12 ["inputContextInstances"]
       80 GETTABLE                         R1 R2 R0
       81 JUMPIF                           R1 ; [+1]
       82 RETURN                           R0 0
       83 GETIMPORT                        R2 K15 [Instance.new]
       85 LOADK                            R3 K16 ["InputAction"]
       86 CALL                             R2 1 1
       87 GETTABLEKS                       R3 R1 K3 ["Parent"]
       89 JUMPIF                           R3 ; [+31]
       90 GETTABLEKS                       R3 R1 K17 ["Name"]
       92 JUMPIFNOTEQKS                    R3 K18 ["Default"] ; [+28]
       94 GETUPVAL                         R3 3
       95 LOADK                            R5 K19 ["Inputs"]
       96 NAMECALL                         R3 R3 K20 ["FindFirstChild"]
       98 CALL                             R3 2 1
       99 JUMPIF                           R3 ; [+18]
      100 GETIMPORT                        R4 K15 [Instance.new]
      102 LOADK                            R5 K21 ["Folder"]
      103 CALL                             R4 1 1
      104 MOVE                             R3 R4
      105 FASTCALL2K                       ASSERT R3 K22 ; [+5]
      107 MOVE                             R5 R3
      108 LOADK                            R6 K22 ["Inputs folder not found"]
      109 GETIMPORT                        R4 K6 [assert]
      111 CALL                             R4 2 0
      112 LOADK                            R4 K19 ["Inputs"]
      113 SETTABLEKS                       R4 R3 K17 ["Name"]
      115 GETUPVAL                         R4 3
      116 SETTABLEKS                       R4 R3 K3 ["Parent"]
      118 SETTABLEKS                       R3 R2 K3 ["Parent"]
      120 JUMP                             ; [+2]
      121 SETTABLEKS                       R1 R2 K3 ["Parent"]
      123 GETUPVAL                         R3 2
      124 GETTABLEKS                       R3 R3 K7 ["deserializeAction"]
      126 GETUPVAL                         R4 0
      127 GETTABLEKS                       R4 R4 K0 ["action"]
      129 MOVE                             R5 R2
      130 CALL                             R3 2 0
      131 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["binding"]
        3 JUMPIF                           R0 ; [+16]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["uuid"]
        7 JUMPIFNOT                        R0 ; [+12]
        8 GETUPVAL                         R1 1
        9 GETTABLEKS                       R1 R1 K2 ["inputBindingInstances"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["uuid"]
       14 GETTABLE                         R0 R1 R2
       15 JUMPIFNOT                        R0 ; [+3]
       16 LOADNIL                          R1
       17 SETTABLEKS                       R1 R0 K3 ["Parent"]
       19 RETURN                           R0 0
       20 GETUPVAL                         R1 0
       21 GETTABLEKS                       R1 R1 K0 ["binding"]
       23 FASTCALL2K                       ASSERT R1 K4 ; [+4]
       25 LOADK                            R2 K4 ["Binding is required"]
       26 GETIMPORT                        R0 K6 [assert]
       28 CALL                             R0 2 0
       29 GETUPVAL                         R0 0
       30 GETTABLEKS                       R0 R0 K1 ["uuid"]
       32 JUMPIFNOT                        R0 ; [+82]
       33 GETUPVAL                         R1 1
       34 GETTABLEKS                       R1 R1 K2 ["inputBindingInstances"]
       36 GETUPVAL                         R2 0
       37 GETTABLEKS                       R2 R2 K1 ["uuid"]
       39 GETTABLE                         R0 R1 R2
       40 JUMPIFNOT                        R0 ; [+8]
       41 GETUPVAL                         R1 2
       42 GETTABLEKS                       R1 R1 K7 ["deserializeBinding"]
       44 GETUPVAL                         R2 0
       45 GETTABLEKS                       R2 R2 K0 ["binding"]
       47 MOVE                             R3 R0
       48 CALL                             R1 2 0
       49 GETUPVAL                         R1 0
       50 GETTABLEKS                       R1 R1 K0 ["binding"]
       52 GETTABLEKS                       R1 R1 K8 ["uiButton"]
       54 JUMPIFNOT                        R1 ; [+11]
       55 GETUPVAL                         R2 0
       56 GETTABLEKS                       R2 R2 K0 ["binding"]
       58 GETTABLEKS                       R2 R2 K8 ["uiButton"]
       60 GETTABLEKS                       R2 R2 K1 ["uuid"]
       62 JUMPIFNOTEQKS                    R2 K9 [""] ; [+2]
       64 LOADB                            R1 0 +1
       65 LOADB                            R1 1
       66 JUMPIFNOT                        R1 ; [+9]
       67 GETUPVAL                         R2 1
       68 GETTABLEKS                       R2 R2 K10 ["button"]
       70 JUMPIFNOT                        R2 ; [+5]
       71 GETUPVAL                         R2 1
       72 GETTABLEKS                       R2 R2 K10 ["button"]
       74 SETTABLEKS                       R2 R0 K11 ["UIButton"]
       76 GETUPVAL                         R2 0
       77 GETTABLEKS                       R2 R2 K0 ["binding"]
       79 GETTABLEKS                       R2 R2 K12 ["uiModifier"]
       81 JUMPIFNOT                        R2 ; [+11]
       82 GETUPVAL                         R3 0
       83 GETTABLEKS                       R3 R3 K0 ["binding"]
       85 GETTABLEKS                       R3 R3 K12 ["uiModifier"]
       87 GETTABLEKS                       R3 R3 K1 ["uuid"]
       89 JUMPIFNOTEQKS                    R3 K9 [""] ; [+2]
       91 LOADB                            R2 0 +1
       92 LOADB                            R2 1
       93 JUMPIFNOT                        R2 ; [+9]
       94 GETUPVAL                         R3 1
       95 GETTABLEKS                       R3 R3 K10 ["button"]
       97 JUMPIFNOT                        R3 ; [+5]
       98 GETUPVAL                         R3 1
       99 GETTABLEKS                       R3 R3 K10 ["button"]
      101 SETTABLEKS                       R3 R0 K13 ["UIModifier"]
      103 GETUPVAL                         R3 3
      104 GETUPVAL                         R4 2
      105 GETTABLEKS                       R4 R4 K14 ["serializeBinding"]
      107 MOVE                             R5 R0
      108 CALL                             R4 1 -1
      109 CALL                             R3 -1 1
      110 JUMPIF                           R3 ; [+3]
      111 LOADNIL                          R3
      112 SETTABLEKS                       R3 R0 K3 ["Parent"]
      114 RETURN                           R0 0
      115 GETUPVAL                         R1 0
      116 GETTABLEKS                       R1 R1 K0 ["binding"]
      118 GETTABLEKS                       R1 R1 K15 ["name"]
      120 FASTCALL2K                       ASSERT R1 K16 ; [+4]
      122 LOADK                            R2 K16 ["When creating a new binding, a name must be defined."]
      123 GETIMPORT                        R0 K6 [assert]
      125 CALL                             R0 2 0
      126 GETUPVAL                         R1 0
      127 GETTABLEKS                       R1 R1 K0 ["binding"]
      129 GETTABLEKS                       R1 R1 K17 ["parentUuid"]
      131 FASTCALL2K                       ASSERT R1 K18 ; [+4]
      133 LOADK                            R2 K18 ["When creating a new binding, a parent must be defined."]
      134 GETIMPORT                        R0 K6 [assert]
      136 CALL                             R0 2 0
      137 GETUPVAL                         R0 0
      138 GETTABLEKS                       R0 R0 K0 ["binding"]
      140 GETTABLEKS                       R0 R0 K17 ["parentUuid"]
      142 GETUPVAL                         R2 1
      143 GETTABLEKS                       R2 R2 K19 ["inputActionInstances"]
      145 GETTABLE                         R1 R2 R0
      146 JUMPIF                           R1 ; [+1]
      147 RETURN                           R0 0
      148 GETUPVAL                         R3 0
      149 GETTABLEKS                       R3 R3 K0 ["binding"]
      151 GETTABLEKS                       R3 R3 K8 ["uiButton"]
      153 JUMPIFNOT                        R3 ; [+8]
      154 GETUPVAL                         R3 1
      155 GETTABLEKS                       R3 R3 K10 ["button"]
      157 JUMPIFNOT                        R3 ; [+4]
      158 GETUPVAL                         R2 1
      159 GETTABLEKS                       R2 R2 K10 ["button"]
      161 JUMP                             ; [+1]
      162 LOADNIL                          R2
      163 GETUPVAL                         R3 0
      164 GETTABLEKS                       R3 R3 K0 ["binding"]
      166 GETTABLEKS                       R3 R3 K8 ["uiButton"]
      168 JUMPIFNOT                        R3 ; [+16]
      169 JUMPIFNOT                        R2 ; [+15]
      170 GETUPVAL                         R3 0
      171 GETTABLEKS                       R3 R3 K0 ["binding"]
      173 GETTABLEKS                       R3 R3 K8 ["uiButton"]
      175 GETTABLEKS                       R3 R3 K1 ["uuid"]
      177 GETUPVAL                         R4 4
      178 MOVE                             R6 R2
      179 NAMECALL                         R4 R4 K20 ["GetOrCreateUniqueId"]
      181 CALL                             R4 2 1
      182 JUMPIFEQ                         R3 R4 ; [+2]
      184 RETURN                           R0 0
      185 GETIMPORT                        R3 K23 [Instance.new]
      187 LOADK                            R4 K24 ["InputBinding"]
      188 CALL                             R3 1 1
      189 SETTABLEKS                       R1 R3 K3 ["Parent"]
      191 JUMPIFNOT                        R2 ; [+2]
      192 SETTABLEKS                       R2 R3 K11 ["UIButton"]
      194 GETUPVAL                         R4 2
      195 GETTABLEKS                       R4 R4 K7 ["deserializeBinding"]
      197 GETUPVAL                         R5 0
      198 GETTABLEKS                       R5 R5 K0 ["binding"]
      200 MOVE                             R6 R3
      201 CALL                             R4 2 0
      202 RETURN                           R0 0

PROTO_43:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 GETTABLEKS                       R5 R1 K1 ["appendRecording"]
       10 CALL                             R2 3 0
       11 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputContextInstances"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["uuid"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+7]
        8 NAMECALL                         R1 R0 K2 ["Clone"]
       10 CALL                             R1 1 1
       11 GETTABLEKS                       R2 R0 K3 ["Parent"]
       13 SETTABLEKS                       R2 R1 K3 ["Parent"]
       15 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["inputActionInstances"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["uuid"]
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+10]
        8 GETTABLEKS                       R1 R0 K2 ["Parent"]
       10 JUMPIFNOT                        R1 ; [+7]
       11 NAMECALL                         R1 R0 K3 ["Clone"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 SETTABLEKS                       R2 R1 K2 ["Parent"]
       18 RETURN                           R0 0

PROTO_47:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["Input Action Manager"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CALL                             R2 2 0
        6 RETURN                           R0 0

PROTO_48:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 RETURN                           R0 0

PROTO_49:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_50:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateDefaultPlayerModule"]
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
        7 GETIMPORT                        R3 K5 [Enum.RolloutState.Enabled]
        9 JUMPIFEQ                         R2 R3 ; [+13]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
       17 GETIMPORT                        R3 K7 [Enum.RolloutState.Default]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R2 3
       24 LOADK                            R4 K8 ["ShowDefaultPlayerScriptsChanged"]
       25 LOADNIL                          R5
       26 AND                              R6 R0 R1
       27 NAMECALL                         R2 R2 K9 ["FireGuest"]
       29 CALL                             R2 4 0
       30 RETURN                           R0 0

PROTO_51:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["CreateDefaultPlayerModule"]
        3 LOADB                            R1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
        7 GETIMPORT                        R3 K5 [Enum.RolloutState.Enabled]
        9 JUMPIFEQ                         R2 R3 ; [+13]
       11 GETUPVAL                         R1 2
       12 CALL                             R1 0 1
       13 JUMPIFNOT                        R1 ; [+9]
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K1 ["PlayerScriptsUseInputActionSystem"]
       17 GETIMPORT                        R3 K7 [Enum.RolloutState.Default]
       19 JUMPIFEQ                         R2 R3 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 GETUPVAL                         R2 3
       24 LOADK                            R4 K8 ["ShowDefaultPlayerScriptsChanged"]
       25 LOADNIL                          R5
       26 AND                              R6 R0 R1
       27 NAMECALL                         R2 R2 K9 ["FireGuest"]
       29 CALL                             R2 4 0
       30 RETURN                           R0 0

PROTO_52:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 2
        5 GETUPVAL                         R2 3
        6 NAMECALL                         R0 R0 K0 ["GetOrCreateUniqueId"]
        8 CALL                             R0 2 1
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R1 R1 K1 ["InputContextsChanged"]
       12 NEWCLOSURE                       R3 P0
       13 CAPTURE                          UPVAL U0
       14 NAMECALL                         R1 R1 K2 ["Connect"]
       16 CALL                             R1 2 1
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
       20 GETTABLE                         R2 R3 R0
       21 JUMPIF                           R2 ; [+6]
       22 NEWTABLE                         R2 0 0
       24 GETUPVAL                         R3 4
       25 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
       27 SETTABLE                         R2 R3 R0
       28 SETTABLEKS                       R1 R2 K4 ["ContextsChanged"]
       30 GETUPVAL                         R0 5
       31 CALL                             R0 0 1
       32 JUMPIFNOT                        R0 ; [+92]
       33 GETUPVAL                         R0 6
       34 GETTABLEKS                       R0 R0 K5 ["CreateDefaultPlayerModule"]
       36 LOADB                            R1 1
       37 GETUPVAL                         R2 7
       38 GETTABLEKS                       R2 R2 K6 ["PlayerScriptsUseInputActionSystem"]
       40 GETIMPORT                        R3 K10 [Enum.RolloutState.Enabled]
       42 JUMPIFEQ                         R2 R3 ; [+13]
       44 GETUPVAL                         R1 8
       45 CALL                             R1 0 1
       46 JUMPIFNOT                        R1 ; [+9]
       47 GETUPVAL                         R2 7
       48 GETTABLEKS                       R2 R2 K6 ["PlayerScriptsUseInputActionSystem"]
       50 GETIMPORT                        R3 K12 [Enum.RolloutState.Default]
       52 JUMPIFEQ                         R2 R3 ; [+2]
       54 LOADB                            R1 0 +1
       55 LOADB                            R1 1
       56 GETUPVAL                         R2 9
       57 LOADK                            R4 K13 ["ShowDefaultPlayerScriptsChanged"]
       58 LOADNIL                          R5
       59 AND                              R6 R0 R1
       60 NAMECALL                         R2 R2 K14 ["FireGuest"]
       62 CALL                             R2 4 0
       63 GETUPVAL                         R0 2
       64 GETUPVAL                         R2 6
       65 NAMECALL                         R0 R0 K0 ["GetOrCreateUniqueId"]
       67 CALL                             R0 2 1
       68 GETUPVAL                         R1 6
       69 LOADK                            R3 K5 ["CreateDefaultPlayerModule"]
       70 NAMECALL                         R1 R1 K15 ["GetPropertyChangedSignal"]
       72 CALL                             R1 2 1
       73 NEWCLOSURE                       R3 P1
       74 CAPTURE                          UPVAL U6
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          UPVAL U9
       78 NAMECALL                         R1 R1 K2 ["Connect"]
       80 CALL                             R1 2 1
       81 GETUPVAL                         R3 4
       82 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
       84 GETTABLE                         R2 R3 R0
       85 JUMPIF                           R2 ; [+6]
       86 NEWTABLE                         R2 0 0
       88 GETUPVAL                         R3 4
       89 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
       91 SETTABLE                         R2 R3 R0
       92 SETTABLEKS                       R1 R2 K13 ["ShowDefaultPlayerScriptsChanged"]
       94 GETUPVAL                         R0 2
       95 GETUPVAL                         R2 7
       96 NAMECALL                         R0 R0 K0 ["GetOrCreateUniqueId"]
       98 CALL                             R0 2 1
       99 GETUPVAL                         R1 7
      100 LOADK                            R3 K6 ["PlayerScriptsUseInputActionSystem"]
      101 NAMECALL                         R1 R1 K15 ["GetPropertyChangedSignal"]
      103 CALL                             R1 2 1
      104 NEWCLOSURE                       R3 P2
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U7
      107 CAPTURE                          UPVAL U8
      108 CAPTURE                          UPVAL U9
      109 NAMECALL                         R1 R1 K2 ["Connect"]
      111 CALL                             R1 2 1
      112 GETUPVAL                         R3 4
      113 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
      115 GETTABLE                         R2 R3 R0
      116 JUMPIF                           R2 ; [+6]
      117 NEWTABLE                         R2 0 0
      119 GETUPVAL                         R3 4
      120 GETTABLEKS                       R3 R3 K3 ["connectionsByUuid"]
      122 SETTABLE                         R2 R3 R0
      123 SETTABLEKS                       R1 R2 K16 ["PlayerScriptsUseInputActionSystemChanged"]
      125 RETURN                           R0 0

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K0 ["connectionsByUuid"]
        9 GETTABLE                         R6 R7 R4
       10 JUMPIFNOT                        R6 ; [+14]
       11 MOVE                             R7 R6
       12 LOADNIL                          R8
       13 LOADNIL                          R9
       14 FORGPREP                         R7
       15 NAMECALL                         R12 R11 K1 ["Disconnect"]
       17 CALL                             R12 1 0
       18 FORGLOOP                         R7 2 ; [-4]
       20 GETUPVAL                         R7 0
       21 GETTABLEKS                       R7 R7 K0 ["connectionsByUuid"]
       23 LOADNIL                          R8
       24 SETTABLE                         R8 R7 R4
       25 FORGLOOP                         R1 2 ; [-20]
       27 GETIMPORT                        R1 K4 [table.clear]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       32 CALL                             R1 1 0
       33 GETIMPORT                        R1 K4 [table.clear]
       35 GETUPVAL                         R2 0
       36 GETTABLEKS                       R2 R2 K0 ["connectionsByUuid"]
       38 CALL                             R1 1 0
       39 GETIMPORT                        R1 K4 [table.clear]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R2 R2 K5 ["inputContexts"]
       44 CALL                             R1 1 0
       45 GETIMPORT                        R1 K4 [table.clear]
       47 GETUPVAL                         R2 0
       48 GETTABLEKS                       R2 R2 K6 ["inputActions"]
       50 CALL                             R1 1 0
       51 GETIMPORT                        R1 K4 [table.clear]
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K7 ["inputBindings"]
       56 CALL                             R1 1 0
       57 GETIMPORT                        R1 K4 [table.clear]
       59 GETUPVAL                         R2 0
       60 GETTABLEKS                       R2 R2 K8 ["inputContextInstances"]
       62 CALL                             R1 1 0
       63 GETIMPORT                        R1 K4 [table.clear]
       65 GETUPVAL                         R2 0
       66 GETTABLEKS                       R2 R2 K9 ["inputActionInstances"]
       68 CALL                             R1 1 0
       69 GETIMPORT                        R1 K4 [table.clear]
       71 GETUPVAL                         R2 0
       72 GETTABLEKS                       R2 R2 K10 ["inputBindingInstances"]
       74 CALL                             R1 1 0
       75 GETUPVAL                         R1 0
       76 NEWTABLE                         R2 0 0
       78 SETTABLEKS                       R2 R1 K11 ["contextOrder"]
       80 GETUPVAL                         R1 1
       81 CALL                             R1 0 0
       82 RETURN                           R0 0

PROTO_54:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["connectionsByUuid"]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 FORGPREP                         R0
        6 GETUPVAL                         R6 0
        7 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
        9 GETTABLE                         R5 R6 R3
       10 JUMPIFNOT                        R5 ; [+14]
       11 MOVE                             R6 R5
       12 LOADNIL                          R7
       13 LOADNIL                          R8
       14 FORGPREP                         R6
       15 NAMECALL                         R11 R10 K1 ["Disconnect"]
       17 CALL                             R11 1 0
       18 FORGLOOP                         R6 2 ; [-4]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K0 ["connectionsByUuid"]
       23 LOADNIL                          R7
       24 SETTABLE                         R7 R6 R3
       25 FORGLOOP                         R0 2 ; [-20]
       27 GETIMPORT                        R0 K4 [table.clear]
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["connectionsByUuid"]
       32 CALL                             R0 1 0
       33 GETUPVAL                         R0 1
       34 CALL                             R0 0 0
       35 GETUPVAL                         R0 2
       36 JUMPIFNOT                        R0 ; [+2]
       37 GETUPVAL                         R0 2
       38 CALL                             R0 0 0
       39 GETUPVAL                         R0 3
       40 JUMPIFNOT                        R0 ; [+2]
       41 GETUPVAL                         R0 3
       42 CALL                             R0 0 0
       43 GETUPVAL                         R0 4
       44 JUMPIFNOT                        R0 ; [+2]
       45 GETUPVAL                         R0 4
       46 CALL                             R0 0 0
       47 GETUPVAL                         R0 5
       48 JUMPIFNOT                        R0 ; [+2]
       49 GETUPVAL                         R0 5
       50 CALL                             R0 0 0
       51 GETUPVAL                         R0 6
       52 JUMPIFNOT                        R0 ; [+2]
       53 GETUPVAL                         R0 6
       54 CALL                             R0 0 0
       55 GETUPVAL                         R0 7
       56 JUMPIFNOT                        R0 ; [+2]
       57 GETUPVAL                         R0 7
       58 CALL                             R0 0 0
       59 GETUPVAL                         R0 8
       60 JUMPIFNOT                        R0 ; [+4]
       61 GETUPVAL                         R0 8
       62 NAMECALL                         R0 R0 K1 ["Disconnect"]
       64 CALL                             R0 1 0
       65 RETURN                           R0 0

PROTO_55:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETIMPORT                        R0 K2 [table.clear]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K3 ["inputContexts"]
        7 CALL                             R0 1 0
        8 GETIMPORT                        R0 K2 [table.clear]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K4 ["inputActions"]
       13 CALL                             R0 1 0
       14 GETIMPORT                        R0 K2 [table.clear]
       16 GETUPVAL                         R1 1
       17 GETTABLEKS                       R1 R1 K5 ["inputBindings"]
       19 CALL                             R0 1 0
       20 GETIMPORT                        R0 K2 [table.clear]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K6 ["inputContextInstances"]
       25 CALL                             R0 1 0
       26 GETIMPORT                        R0 K2 [table.clear]
       28 GETUPVAL                         R1 1
       29 GETTABLEKS                       R1 R1 K7 ["inputActionInstances"]
       31 CALL                             R0 1 0
       32 GETIMPORT                        R0 K2 [table.clear]
       34 GETUPVAL                         R1 1
       35 GETTABLEKS                       R1 R1 K8 ["inputBindingInstances"]
       37 CALL                             R0 1 0
       38 GETUPVAL                         R0 1
       39 NEWTABLE                         R1 0 0
       41 SETTABLEKS                       R1 R0 K9 ["contextOrder"]
       43 RETURN                           R0 0

PROTO_56:
        0 DUPCLOSURE                       R2 K0 [PROTO_1]
        1 CAPTURE                          UPVAL U0
        2 DUPTABLE                         R3 K13 [{["button"] = , ["inputContexts"], ["inputActions"], ["inputBindings"], ["inputContextInstances"], ["inputActionInstances"], ["inputBindingInstances"], ["contextOrder"], ["connectionsByUuid"], ["initialized"] = False}]
        3 NEWTABLE                         R4 0 0
        5 SETTABLEKS                       R4 R3 K3 ["inputContexts"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K4 ["inputActions"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K5 ["inputBindings"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K6 ["inputContextInstances"]
       19 NEWTABLE                         R4 0 0
       21 SETTABLEKS                       R4 R3 K7 ["inputActionInstances"]
       23 NEWTABLE                         R4 0 0
       25 SETTABLEKS                       R4 R3 K8 ["inputBindingInstances"]
       27 NEWTABLE                         R4 0 0
       29 SETTABLEKS                       R4 R3 K9 ["contextOrder"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K10 ["connectionsByUuid"]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R3
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R3
       39 NEWCLOSURE                       R6 P3
       40 CAPTURE                          VAL R3
       41 NEWCLOSURE                       R7 P4
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R0
       44 NEWCLOSURE                       R8 P5
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R3
       47 NEWCLOSURE                       R9 P6
       48 CAPTURE                          VAL R0
       49 NEWCLOSURE                       R10 P7
       50 CAPTURE                          VAL R0
       51 NEWCLOSURE                       R11 P8
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R3
       54 NEWCLOSURE                       R12 P9
       55 CAPTURE                          VAL R0
       56 NEWCLOSURE                       R13 P10
       57 CAPTURE                          UPVAL U1
       58 CAPTURE                          UPVAL U2
       59 CAPTURE                          UPVAL U3
       60 CAPTURE                          VAL R0
       61 NEWCLOSURE                       R14 P11
       62 CAPTURE                          VAL R3
       63 NEWCLOSURE                       R15 P12
       64 CAPTURE                          UPVAL U4
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R0
       67 NEWCLOSURE                       R16 P13
       68 CAPTURE                          UPVAL U5
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U6
       72 GETUPVAL                         R17 5
       73 GETTABLEKS                       R17 R17 K14 ["SelectionChanged"]
       75 MOVE                             R19 R16
       76 NAMECALL                         R17 R17 K15 ["Connect"]
       78 CALL                             R17 2 1
       79 NEWCLOSURE                       R18 P14
       80 CAPTURE                          UPVAL U4
       81 CAPTURE                          VAL R3
       82 CAPTURE                          UPVAL U6
       83 CAPTURE                          VAL R0
       84 NEWCLOSURE                       R19 P15
       85 CAPTURE                          UPVAL U4
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R18
       89 NEWCLOSURE                       R20 P16
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R0
       92 NEWCLOSURE                       R21 P17
       93 CAPTURE                          UPVAL U4
       94 CAPTURE                          VAL R3
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          VAL R18
       97 CAPTURE                          VAL R0
       98 NEWCLOSURE                       R22 P18
       99 CAPTURE                          VAL R3
      100 NEWCLOSURE                       R23 P19
      101 CAPTURE                          UPVAL U4
      102 CAPTURE                          VAL R21
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          UPVAL U7
      107 NEWCLOSURE                       R24 P20
      108 CAPTURE                          UPVAL U4
      109 CAPTURE                          UPVAL U6
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R18
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R23
      114 CAPTURE                          VAL R15
      115 NEWCLOSURE                       R25 P21
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R0
      118 NEWCLOSURE                       R26 P22
      119 CAPTURE                          UPVAL U4
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R24
      122 CAPTURE                          VAL R0
      123 CAPTURE                          VAL R25
      124 CAPTURE                          UPVAL U7
      125 NEWCLOSURE                       R27 P23
      126 CAPTURE                          UPVAL U4
      127 CAPTURE                          VAL R26
      128 CAPTURE                          VAL R3
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U6
      131 NEWCLOSURE                       R28 P24
      132 CAPTURE                          UPVAL U4
      133 CAPTURE                          UPVAL U6
      134 CAPTURE                          UPVAL U8
      135 CAPTURE                          VAL R3
      136 CAPTURE                          VAL R24
      137 CAPTURE                          VAL R0
      138 CAPTURE                          UPVAL U7
      139 CAPTURE                          VAL R27
      140 NEWCLOSURE                       R29 P25
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R25
      143 CAPTURE                          VAL R0
      144 NEWCLOSURE                       R30 P26
      145 CAPTURE                          VAL R3
      146 CAPTURE                          UPVAL U8
      147 CAPTURE                          UPVAL U4
      148 CAPTURE                          VAL R28
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R29
      151 LOADK                            R33 K16 ["GetContexts"]
      152 NEWCLOSURE                       R34 P27
      153 CAPTURE                          VAL R3
      154 NAMECALL                         R31 R0 K17 ["OnHostInvokeAsync"]
      156 CALL                             R31 3 2
      157 LOADK                            R35 K18 ["UpdateContext"]
      158 NEWCLOSURE                       R36 P28
      159 CAPTURE                          VAL R2
      160 CAPTURE                          VAL R3
      161 CAPTURE                          UPVAL U6
      162 CAPTURE                          UPVAL U9
      163 NAMECALL                         R33 R0 K19 ["OnHostEvent"]
      165 CALL                             R33 3 2
      166 LOADK                            R37 K20 ["UpdateAction"]
      167 NEWCLOSURE                       R38 P29
      168 CAPTURE                          VAL R2
      169 CAPTURE                          VAL R3
      170 CAPTURE                          UPVAL U6
      171 CAPTURE                          UPVAL U9
      172 NAMECALL                         R35 R0 K19 ["OnHostEvent"]
      174 CALL                             R35 3 2
      175 LOADK                            R39 K21 ["UpdateBinding"]
      176 NEWCLOSURE                       R40 P30
      177 CAPTURE                          VAL R2
      178 CAPTURE                          VAL R3
      179 CAPTURE                          UPVAL U6
      180 CAPTURE                          UPVAL U10
      181 CAPTURE                          UPVAL U4
      182 NAMECALL                         R37 R0 K19 ["OnHostEvent"]
      184 CALL                             R37 3 2
      185 LOADK                            R41 K22 ["DuplicateContext"]
      186 NEWCLOSURE                       R42 P31
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R3
      189 NAMECALL                         R39 R0 K19 ["OnHostEvent"]
      191 CALL                             R39 3 2
      192 LOADK                            R43 K23 ["DuplicateAction"]
      193 NEWCLOSURE                       R44 P32
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R3
      196 NAMECALL                         R41 R0 K19 ["OnHostEvent"]
      198 CALL                             R41 3 2
      199 NEWCLOSURE                       R43 P33
      200 CAPTURE                          VAL R3
      201 NEWCLOSURE                       R44 P34
      202 CAPTURE                          VAL R30
      203 CAPTURE                          VAL R7
      204 CAPTURE                          UPVAL U4
      205 CAPTURE                          UPVAL U8
      206 CAPTURE                          VAL R3
      207 CAPTURE                          UPVAL U11
      208 CAPTURE                          UPVAL U1
      209 CAPTURE                          UPVAL U2
      210 CAPTURE                          UPVAL U3
      211 CAPTURE                          VAL R0
      212 LOADK                            R47 K24 ["RequestAsync"]
      213 NEWCLOSURE                       R48 P35
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R44
      216 NAMECALL                         R45 R0 K19 ["OnHostEvent"]
      218 CALL                             R45 3 2
      219 NEWCLOSURE                       R47 P36
      220 CAPTURE                          VAL R3
      221 CAPTURE                          VAL R32
      222 CAPTURE                          VAL R46
      223 CAPTURE                          VAL R34
      224 CAPTURE                          VAL R36
      225 CAPTURE                          VAL R38
      226 CAPTURE                          VAL R40
      227 CAPTURE                          VAL R42
      228 CAPTURE                          VAL R17
      229 JUMPIF                           R1 ; [+6]
      230 NAMECALL                         R48 R0 K25 ["IsHost"]
      232 CALL                             R48 1 1
      233 JUMPIFNOT                        R48 ; [+2]
      234 MOVE                             R48 R44
      235 CALL                             R48 0 0
      236 NEWCLOSURE                       R48 P37
      237 CAPTURE                          VAL R47
      238 CAPTURE                          VAL R3
      239 DUPTABLE                         R49 K29 [{"destroy", "Request", "GetContextsAsync", "UpdateContext", "UpdateAction", "UpdateBinding", "DuplicateContext", "DuplicateAction"}]
      240 SETTABLEKS                       R48 R49 K26 ["destroy"]
      242 SETTABLEKS                       R45 R49 K27 ["Request"]
      244 SETTABLEKS                       R31 R49 K28 ["GetContextsAsync"]
      246 SETTABLEKS                       R33 R49 K18 ["UpdateContext"]
      248 SETTABLEKS                       R35 R49 K20 ["UpdateAction"]
      250 SETTABLEKS                       R37 R49 K21 ["UpdateBinding"]
      252 SETTABLEKS                       R39 R49 K22 ["DuplicateContext"]
      254 SETTABLEKS                       R41 R49 K23 ["DuplicateAction"]
      256 RETURN                           R49 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ContextActionService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ReplicatedStorage"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Selection"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K1 [game]
       27 LOADK                            R6 K7 ["StarterPlayer"]
       28 NAMECALL                         R4 R4 K3 ["GetService"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K1 [game]
       33 LOADK                            R7 K8 ["UniqueIdLookupService"]
       34 NAMECALL                         R5 R5 K3 ["GetService"]
       36 CALL                             R5 2 1
       37 GETIMPORT                        R6 K1 [game]
       39 LOADK                            R8 K9 ["Workspace"]
       40 NAMECALL                         R6 R6 K3 ["GetService"]
       42 CALL                             R6 2 1
       43 GETIMPORT                        R7 K11 [script]
       45 LOADK                            R9 K12 ["InputActionManager"]
       46 NAMECALL                         R7 R7 K13 ["FindFirstAncestor"]
       48 CALL                             R7 2 1
       49 GETIMPORT                        R8 K15 [require]
       51 GETTABLEKS                       R9 R7 K16 ["Packages"]
       53 GETTABLEKS                       R9 R9 K17 ["DMNetworking"]
       55 CALL                             R8 1 1
       56 GETIMPORT                        R9 K15 [require]
       58 GETTABLEKS                       R10 R7 K18 ["Src"]
       60 GETTABLEKS                       R10 R10 K19 ["Types"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K15 [require]
       65 GETTABLEKS                       R11 R7 K18 ["Src"]
       67 GETTABLEKS                       R11 R11 K20 ["Util"]
       69 GETTABLEKS                       R11 R11 K21 ["PropertyManager"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R7 K18 ["Src"]
       74 GETTABLEKS                       R11 R11 K22 ["Flags"]
       76 GETIMPORT                        R12 K15 [require]
       78 GETTABLEKS                       R13 R11 K23 ["getFFlagIAMPlayerScripts"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K15 [require]
       83 GETTABLEKS                       R14 R11 K24 ["getFFlagIAMSortActions"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K15 [require]
       88 GETTABLEKS                       R15 R11 K25 ["getFFlagPlayerScriptsUseInputActionSystemDefault"]
       90 CALL                             R14 1 1
       91 GETTABLEKS                       R15 R7 K18 ["Src"]
       93 GETTABLEKS                       R15 R15 K20 ["Util"]
       95 GETIMPORT                        R16 K15 [require]
       97 GETTABLEKS                       R17 R15 K26 ["Cell"]
       99 GETTABLEKS                       R17 R17 K27 ["isValidBinding"]
      101 CALL                             R16 1 1
      102 DUPCLOSURE                       R17 K28 [PROTO_56]
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R4
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R14
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R10
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R2
      113 CAPTURE                          VAL R16
      114 CAPTURE                          VAL R12
      115 RETURN                           R17 1
