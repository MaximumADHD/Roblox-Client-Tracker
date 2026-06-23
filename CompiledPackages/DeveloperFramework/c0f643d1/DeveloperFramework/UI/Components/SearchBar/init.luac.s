PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"isHovered"}]
        9 LOADB                            R3 1
       10 SETTABLEKS                       R3 R2 K2 ["isHovered"]
       12 NAMECALL                         R0 R0 K4 ["setStateAndStyleModifier"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K3 [{"isHovered"}]
        9 LOADB                            R3 0
       10 SETTABLEKS                       R3 R2 K2 ["isHovered"]
       12 NAMECALL                         R0 R0 K4 ["setStateAndStyleModifier"]
       14 CALL                             R0 2 0
       15 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["searchDelayTask"]
       10 JUMPIFNOT                        R0 ; [+10]
       11 GETIMPORT                        R0 K5 [task.cancel]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K2 ["searchDelayTask"]
       16 CALL                             R0 1 0
       17 GETUPVAL                         R0 0
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K2 ["searchDelayTask"]
       21 GETUPVAL                         R0 0
       22 GETTABLEKS                       R0 R0 K0 ["props"]
       24 GETTABLEKS                       R0 R0 K6 ["OnSearchRequested"]
       26 JUMPIFNOT                        R0 ; [+11]
       27 GETUPVAL                         R0 0
       28 GETTABLEKS                       R0 R0 K0 ["props"]
       30 GETTABLEKS                       R0 R0 K6 ["OnSearchRequested"]
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K7 ["state"]
       35 GETTABLEKS                       R1 R1 K8 ["text"]
       37 CALL                             R0 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Disabled"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R1
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R2 ; [+8]
       11 GETUPVAL                         R3 0
       12 DUPTABLE                         R5 K3 [{"shouldFocus"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["shouldFocus"]
       16 NAMECALL                         R3 R3 K4 ["setState"]
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["Disabled"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
        9 GETIMPORT                        R3 K5 [Enum.UserInputType.Focus]
       11 JUMPIFNOTEQ                      R2 R3 ; [+6]
       13 GETUPVAL                         R2 0
       14 LOADB                            R4 0
       15 NAMECALL                         R2 R2 K6 ["onFocusLost"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["isMounted"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 0
        5 LOADNIL                          R1
        6 SETTABLEKS                       R1 R0 K1 ["searchDelayTask"]
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K2 ["requestSearch"]
       11 CALL                             R0 0 0
       12 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["IncrementalTextSearch"]
        5 JUMPIFNOT                        R0 ; [+24]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K2 ["searchDelayTask"]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETIMPORT                        R0 K5 [task.cancel]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["searchDelayTask"]
       15 CALL                             R0 1 0
       16 GETUPVAL                         R0 0
       17 GETIMPORT                        R1 K7 [task.delay]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K0 ["props"]
       22 GETTABLEKS                       R3 R3 K9 ["IncrementalTextSearchDelay"]
       24 DIVK                             R2 R3 K8 [1000]
       25 NEWCLOSURE                       R3 P0
       26 CAPTURE                          UPVAL U0
       27 CALL                             R1 2 1
       28 SETTABLEKS                       R1 R0 K2 ["searchDelayTask"]
       30 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 DUPTABLE                         R1 K1 [{"text"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K0 ["text"]
       10 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["startIncrementalTextSearch"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["text"]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOTEQ                      R1 R2 ; [+2]
        5 RETURN                           R0 0
        6 DUPTABLE                         R1 K1 [{"text"}]
        7 GETUPVAL                         R2 0
        8 SETTABLEKS                       R2 R1 K0 ["text"]
       10 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isRoact17"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 GETUPVAL                         R1 2
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 NEWCLOSURE                       R4 P1
       10 CAPTURE                          UPVAL U2
       11 NAMECALL                         R1 R1 K1 ["setState"]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 2
       16 NEWCLOSURE                       R3 P2
       17 CAPTURE                          VAL R0
       18 NAMECALL                         R1 R1 K1 ["setState"]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 2
       22 GETTABLEKS                       R1 R1 K2 ["startIncrementalTextSearch"]
       24 CALL                             R1 0 0
       25 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["OnTextBoxFocusGained"]
       12 JUMPIFNOT                        R0 ; [+6]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K0 ["props"]
       16 GETTABLEKS                       R0 R0 K2 ["OnTextBoxFocusGained"]
       18 CALL                             R0 0 0
       19 GETUPVAL                         R0 1
       20 JUMPIFNOT                        R0 ; [+9]
       21 GETUPVAL                         R0 0
       22 DUPTABLE                         R2 K4 [{"isFocused"}]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K3 ["isFocused"]
       26 NAMECALL                         R0 R0 K5 ["setState"]
       28 CALL                             R0 2 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R0 0
       31 DUPTABLE                         R2 K4 [{"isFocused"}]
       32 LOADB                            R3 1
       33 SETTABLEKS                       R3 R2 K3 ["isFocused"]
       35 NAMECALL                         R0 R0 K6 ["setStateAndStyleModifier"]
       37 CALL                             R0 2 0
       38 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnTextBoxFocusLost"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnTextBoxFocusLost"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 GETUPVAL                         R1 0
       14 MOVE                             R3 R0
       15 NAMECALL                         R1 R1 K2 ["onFocusLost"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 JUMPIFNOT                        R0 ; [+26]
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K5 [{"text", "isFocused", "shouldFocus"}]
       11 LOADK                            R3 K6 [""]
       12 SETTABLEKS                       R3 R2 K2 ["text"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["isFocused"]
       17 LOADB                            R3 1
       18 SETTABLEKS                       R3 R2 K4 ["shouldFocus"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R4 R4 K7 ["isRoact17"]
       23 GETUPVAL                         R5 3
       24 CALL                             R4 1 1
       25 JUMPIFNOT                        R4 ; [+4]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K8 ["requestSearch"]
       29 JUMP                             ; [+1]
       30 LOADNIL                          R3
       31 NAMECALL                         R0 R0 K9 ["setState"]
       33 CALL                             R0 3 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R0 0
       36 DUPTABLE                         R2 K5 [{"text", "isFocused", "shouldFocus"}]
       37 LOADK                            R3 K6 [""]
       38 SETTABLEKS                       R3 R2 K2 ["text"]
       40 LOADB                            R3 1
       41 SETTABLEKS                       R3 R2 K3 ["isFocused"]
       43 LOADB                            R3 1
       44 SETTABLEKS                       R3 R2 K4 ["shouldFocus"]
       46 GETUPVAL                         R4 2
       47 GETTABLEKS                       R4 R4 K7 ["isRoact17"]
       49 GETUPVAL                         R5 3
       50 CALL                             R4 1 1
       51 JUMPIFNOT                        R4 ; [+4]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K8 ["requestSearch"]
       55 JUMP                             ; [+1]
       56 LOADNIL                          R3
       57 NAMECALL                         R0 R0 K10 ["setStateAndStyleModifier"]
       59 CALL                             R0 3 0
       60 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K2 ["requestSearch"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_15:
        0 DUPTABLE                         R1 K5 [{"text", "lastSearchTermAsProp", "isFocused", "isHovered", "shouldFocus"}]
        1 LOADK                            R2 K6 [""]
        2 SETTABLEKS                       R2 R1 K0 ["text"]
        4 LOADK                            R2 K6 [""]
        5 SETTABLEKS                       R2 R1 K1 ["lastSearchTermAsProp"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["isFocused"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["isHovered"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K4 ["shouldFocus"]
       16 SETTABLEKS                       R1 R0 K7 ["state"]
       18 GETUPVAL                         R1 0
       19 JUMPIF                           R1 ; [+8]
       20 NEWCLOSURE                       R1 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K8 ["mouseEnter"]
       24 NEWCLOSURE                       R1 P1
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K9 ["mouseLeave"]
       28 NEWCLOSURE                       R1 P2
       29 CAPTURE                          VAL R0
       30 SETTABLEKS                       R1 R0 K10 ["requestSearch"]
       32 NEWCLOSURE                       R1 P3
       33 CAPTURE                          VAL R0
       34 CAPTURE                          UPVAL U1
       35 SETTABLEKS                       R1 R0 K11 ["onBackgroundInputBegan"]
       37 NEWCLOSURE                       R1 P4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K12 ["onBackgroundFocusLost"]
       41 NEWCLOSURE                       R1 P5
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K13 ["startIncrementalTextSearch"]
       45 NEWCLOSURE                       R1 P6
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          UPVAL U3
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K14 ["onTextChanged"]
       51 NEWCLOSURE                       R1 P7
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U0
       54 SETTABLEKS                       R1 R0 K15 ["onTextBoxFocusGained"]
       56 NEWCLOSURE                       R1 P8
       57 CAPTURE                          VAL R0
       58 SETTABLEKS                       R1 R0 K16 ["onTextBoxFocusLost"]
       60 NEWCLOSURE                       R1 P9
       61 CAPTURE                          VAL R0
       62 CAPTURE                          UPVAL U0
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 SETTABLEKS                       R1 R0 K17 ["onClearButtonClicked"]
       67 NEWCLOSURE                       R1 P10
       68 CAPTURE                          VAL R0
       69 SETTABLEKS                       R1 R0 K18 ["onSearchButtonClicked"]
       71 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R3 K1 ["OnTextChanged"]
        4 JUMPIFNOT                        R3 ; [+17]
        5 GETTABLEKS                       R3 R2 K2 ["text"]
        7 GETTABLEKS                       R4 R0 K3 ["state"]
        9 GETTABLEKS                       R4 R4 K2 ["text"]
       11 JUMPIFEQ                         R3 R4 ; [+10]
       13 GETTABLEKS                       R3 R0 K0 ["props"]
       15 GETTABLEKS                       R3 R3 K1 ["OnTextChanged"]
       17 GETTABLEKS                       R4 R0 K3 ["state"]
       19 GETTABLEKS                       R4 R4 K2 ["text"]
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isFocused"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K0 ["isFocused"]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["isHovered"]
       10 JUMPIFNOTEQKNIL                  R2 ; [+3]
       12 GETTABLEKS                       R2 R0 K1 ["isHovered"]
       14 JUMPIF                           R1 ; [+1]
       15 JUMPIFNOT                        R2 ; [+7]
       16 GETUPVAL                         R3 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K2 ["Hover"]
       20 SETTABLEKS                       R4 R3 K3 ["StyleModifier"]
       22 JUMP                             ; [+6]
       23 GETUPVAL                         R3 0
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R4 R4 K4 ["None"]
       27 SETTABLEKS                       R4 R3 K3 ["StyleModifier"]
       29 GETUPVAL                         R3 0
       30 RETURN                           R3 1

PROTO_18:
        0 NEWCLOSURE                       R5 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 GETUPVAL                         R7 2
        5 GETTABLEKS                       R7 R7 K0 ["isRoact17"]
        7 GETUPVAL                         R8 1
        8 CALL                             R7 1 1
        9 JUMPIFNOT                        R7 ; [+2]
       10 MOVE                             R6 R2
       11 JUMP                             ; [+1]
       12 LOADNIL                          R6
       13 NAMECALL                         R3 R0 K1 ["setState"]
       15 CALL                             R3 3 0
       16 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["SearchTerm"]
        2 GETTABLEKS                       R4 R1 K2 ["lastSearchTermAsProp"]
        4 ORK                              R3 R4 K1 [""]
        5 JUMPIFEQ                         R2 R3 ; [+7]
        7 DUPTABLE                         R4 K4 [{"text", "lastSearchTermAsProp"}]
        8 SETTABLEKS                       R2 R4 K3 ["text"]
       10 SETTABLEKS                       R2 R4 K2 ["lastSearchTermAsProp"]
       12 RETURN                           R4 1
       13 NEWTABLE                         R4 0 0
       15 RETURN                           R4 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+11]
        2 DUPTABLE                         R4 K2 [{"isFocused", "shouldFocus"}]
        3 LOADB                            R5 0
        4 SETTABLEKS                       R5 R4 K0 ["isFocused"]
        6 LOADB                            R5 0
        7 SETTABLEKS                       R5 R4 K1 ["shouldFocus"]
        9 NAMECALL                         R2 R0 K3 ["setState"]
       11 CALL                             R2 2 0
       12 JUMP                             ; [+10]
       13 DUPTABLE                         R4 K2 [{"isFocused", "shouldFocus"}]
       14 LOADB                            R5 0
       15 SETTABLEKS                       R5 R4 K0 ["isFocused"]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K1 ["shouldFocus"]
       20 NAMECALL                         R2 R0 K4 ["setStateAndStyleModifier"]
       22 CALL                             R2 2 0
       23 JUMPIFNOT                        R1 ; [+3]
       24 GETTABLEKS                       R2 R0 K5 ["requestSearch"]
       26 CALL                             R2 0 0
       27 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["ShouldFocusOnMount"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 DUPTABLE                         R3 K4 [{"shouldFocus"}]
        9 LOADB                            R4 1
       10 SETTABLEKS                       R4 R3 K3 ["shouldFocus"]
       12 NAMECALL                         R1 R0 K5 ["setState"]
       14 CALL                             R1 2 0
       15 RETURN                           R0 0

PROTO_22:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Localization"]
        8 GETUPVAL                         R5 0
        9 JUMPIFNOT                        R5 ; [+5]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["Tag"]
       13 GETTABLE                         R4 R1 R5
       14 JUMP                             ; [+1]
       15 LOADNIL                          R4
       16 GETUPVAL                         R6 0
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETTABLEKS                       R5 R1 K4 ["Style"]
       20 JUMPIF                           R5 ; [+5]
       21 NEWTABLE                         R5 0 0
       23 JUMP                             ; [+2]
       24 GETTABLEKS                       R5 R1 K5 ["Stylizer"]
       26 GETUPVAL                         R6 0
       27 JUMPIFNOT                        R6 ; [+14]
       28 FASTCALL1                        TYPEOF R5 ; [+3]
       29 MOVE                             R7 R5
       30 GETIMPORT                        R6 K7 [typeof]
       32 CALL                             R6 1 1
       33 JUMPIFNOTEQKS                    R6 K8 ["string"] ; [+8]
       35 GETUPVAL                         R6 2
       36 MOVE                             R7 R4
       37 MOVE                             R8 R5
       38 CALL                             R6 2 1
       39 MOVE                             R4 R6
       40 NEWTABLE                         R5 0 0
       42 GETTABLEKS                       R6 R1 K9 ["ButtonWidth"]
       44 GETTABLEKS                       R7 R1 K10 ["LayoutOrder"]
       46 GETTABLEKS                       R8 R1 K11 ["Disabled"]
       48 GETTABLEKS                       R9 R1 K12 ["PlaceholderText"]
       50 JUMPIF                           R9 ; [+6]
       51 GETUPVAL                         R11 3
       52 LOADK                            R12 K13 ["SearchBar"]
       53 LOADK                            R13 K14 ["Search"]
       54 NAMECALL                         R9 R3 K15 ["getProjectText"]
       56 CALL                             R9 4 1
       57 GETTABLEKS                       R10 R1 K16 ["ShowSearchButton"]
       59 GETTABLEKS                       R11 R1 K17 ["ShowSearchIcon"]
       61 GETTABLEKS                       R12 R1 K18 ["OnInputBegan"]
       63 GETTABLEKS                       R13 R1 K19 ["OnInputEnded"]
       65 GETTABLEKS                       R14 R1 K20 ["ShowFilterButton"]
       67 GETTABLEKS                       R15 R1 K21 ["SearchIsFiltered"]
       69 GETTABLEKS                       R16 R2 K22 ["shouldFocus"]
       71 GETTABLEKS                       R17 R2 K23 ["text"]
       73 LENGTH                           R19 R17
       74 LOADN                            R20 0
       75 JUMPIFLT                         R20 R19 ; [+2]
       77 LOADB                            R18 0 +1
       78 LOADB                            R18 1
       79 GETTABLEKS                       R19 R2 K24 ["isFocused"]
       81 GETTABLEKS                       R20 R2 K25 ["isHovered"]
       83 GETUPVAL                         R21 4
       84 GETTABLEKS                       R22 R1 K26 ["Size"]
       86 GETTABLEKS                       R23 R5 K26 ["Size"]
       88 GETIMPORT                        R24 K29 [UDim2.fromScale]
       90 LOADN                            R25 1
       91 LOADN                            R26 1
       92 CALL                             R24 2 -1
       93 CALL                             R21 -1 1
       94 GETUPVAL                         R22 4
       95 GETTABLEKS                       R23 R1 K30 ["Width"]
       97 GETTABLEKS                       R24 R5 K30 ["Width"]
       99 CALL                             R22 2 1
      100 FASTCALL1                        TYPEOF R22 ; [+3]
      101 MOVE                             R24 R22
      102 GETIMPORT                        R23 K7 [typeof]
      104 CALL                             R23 1 1
      105 JUMPIFNOTEQKS                    R23 K31 ["number"] ; [+13]
      107 GETIMPORT                        R23 K33 [UDim2.new]
      109 GETIMPORT                        R24 K35 [UDim.new]
      111 LOADN                            R25 0
      112 MOVE                             R26 R22
      113 CALL                             R24 2 1
      114 GETTABLEKS                       R25 R21 K36 ["Y"]
      116 CALL                             R23 2 1
      117 MOVE                             R21 R23
      118 JUMP                             ; [+14]
      119 FASTCALL1                        TYPEOF R22 ; [+3]
      120 MOVE                             R24 R22
      121 GETIMPORT                        R23 K7 [typeof]
      123 CALL                             R23 1 1
      124 JUMPIFNOTEQKS                    R23 K34 ["UDim"] ; [+8]
      126 GETIMPORT                        R23 K33 [UDim2.new]
      128 MOVE                             R24 R22
      129 GETTABLEKS                       R25 R21 K36 ["Y"]
      131 CALL                             R23 2 1
      132 MOVE                             R21 R23
      133 JUMPIFNOT                        R18 ; [+2]
      134 MOVE                             R25 R6
      135 JUMP                             ; [+1]
      136 LOADN                            R25 0
      137 JUMPIFNOT                        R10 ; [+2]
      138 ADDK                             R26 R6 K37 [1]
      139 JUMP                             ; [+1]
      140 LOADN                            R26 0
      141 ADD                              R24 R25 R26
      142 JUMPIFNOT                        R14 ; [+2]
      143 MOVE                             R25 R6
      144 JUMP                             ; [+1]
      145 LOADN                            R25 0
      146 ADD                              R23 R24 R25
      147 GETIMPORT                        R24 K33 [UDim2.new]
      149 LOADN                            R25 0
      150 MOVE                             R26 R6
      151 LOADN                            R27 1
      152 LOADN                            R28 0
      153 CALL                             R24 4 1
      154 GETUPVAL                         R25 0
      155 JUMPIFNOT                        R25 ; [+116]
      156 GETUPVAL                         R25 5
      157 GETTABLEKS                       R25 R25 K38 ["createElement"]
      159 GETUPVAL                         R26 6
      160 NEWTABLE                         R27 32 0
      162 GETTABLEKS                       R28 R1 K39 ["AnchorPoint"]
      164 SETTABLEKS                       R28 R27 K39 ["AnchorPoint"]
      166 GETTABLEKS                       R28 R1 K40 ["AutomaticSize"]
      168 SETTABLEKS                       R28 R27 K40 ["AutomaticSize"]
      170 SETTABLEKS                       R7 R27 K10 ["LayoutOrder"]
      172 JUMPIFNOT                        R11 ; [+2]
      173 GETUPVAL                         R28 7
      174 JUMP                             ; [+1]
      175 LOADNIL                          R28
      176 SETTABLEKS                       R28 R27 K41 ["LeadingComponent"]
      178 JUMPIFNOT                        R11 ; [+15]
      179 NEWTABLE                         R28 2 0
      181 GETIMPORT                        R29 K43 [UDim2.fromOffset]
      183 LOADN                            R30 16
      184 LOADN                            R31 16
      185 CALL                             R29 2 1
      186 SETTABLEKS                       R29 R28 K26 ["Size"]
      188 GETUPVAL                         R29 1
      189 GETTABLEKS                       R29 R29 K3 ["Tag"]
      191 LOADK                            R30 K44 ["SearchIcon Icon16 Primary"]
      192 SETTABLE                         R30 R28 R29
      193 JUMP                             ; [+1]
      194 LOADNIL                          R28
      195 SETTABLEKS                       R28 R27 K45 ["LeadingComponentProps"]
      197 SETTABLEKS                       R12 R27 K18 ["OnInputBegan"]
      199 SETTABLEKS                       R13 R27 K19 ["OnInputEnded"]
      201 GETTABLEKS                       R28 R0 K46 ["onTextChanged"]
      203 SETTABLEKS                       R28 R27 K47 ["OnTextChanged"]
      205 GETTABLEKS                       R28 R0 K48 ["onTextBoxFocusGained"]
      207 SETTABLEKS                       R28 R27 K49 ["OnFocused"]
      209 GETTABLEKS                       R28 R0 K50 ["onTextBoxFocusLost"]
      211 SETTABLEKS                       R28 R27 K51 ["OnFocusLost"]
      213 GETTABLEKS                       R28 R1 K52 ["Position"]
      215 SETTABLEKS                       R28 R27 K52 ["Position"]
      217 SETTABLEKS                       R17 R27 K53 ["Text"]
      219 GETUPVAL                         R28 8
      220 SETTABLEKS                       R28 R27 K54 ["TrailingComponent"]
      222 DUPTABLE                         R28 K59 [{"Disabled", "OnClear", "OnSearch", "OnSearchOptionsToggled", "ShowClearButton", "ShowFilterButton", "ShowSearchButton", "SearchIsFiltered", "Size"}]
      223 SETTABLEKS                       R8 R28 K11 ["Disabled"]
      225 GETTABLEKS                       R29 R0 K60 ["onClearButtonClicked"]
      227 SETTABLEKS                       R29 R28 K55 ["OnClear"]
      229 GETTABLEKS                       R29 R0 K61 ["onSearchButtonClicked"]
      231 SETTABLEKS                       R29 R28 K56 ["OnSearch"]
      233 GETTABLEKS                       R29 R0 K0 ["props"]
      235 GETTABLEKS                       R29 R29 K57 ["OnSearchOptionsToggled"]
      237 SETTABLEKS                       R29 R28 K57 ["OnSearchOptionsToggled"]
      239 SETTABLEKS                       R18 R28 K58 ["ShowClearButton"]
      241 SETTABLEKS                       R14 R28 K20 ["ShowFilterButton"]
      243 SETTABLEKS                       R10 R28 K16 ["ShowSearchButton"]
      245 SETTABLEKS                       R15 R28 K21 ["SearchIsFiltered"]
      247 GETIMPORT                        R29 K33 [UDim2.new]
      249 LOADN                            R30 0
      250 MOVE                             R31 R23
      251 LOADN                            R32 1
      252 LOADN                            R33 0
      253 CALL                             R29 4 1
      254 SETTABLEKS                       R29 R28 K26 ["Size"]
      256 SETTABLEKS                       R28 R27 K62 ["TrailingComponentProps"]
      258 SETTABLEKS                       R9 R27 K12 ["PlaceholderText"]
      260 SETTABLEKS                       R22 R27 K30 ["Width"]
      262 GETUPVAL                         R28 1
      263 GETTABLEKS                       R28 R28 K3 ["Tag"]
      265 GETUPVAL                         R29 2
      266 LOADK                            R30 K63 ["Component-SearchBar"]
      267 MOVE                             R31 R4
      268 CALL                             R29 2 1
      269 SETTABLE                         R29 R27 R28
      270 CALL                             R25 2 -1
      271 RETURN                           R25 -1
      272 GETTABLEKS                       R25 R5 K64 ["Padding"]
      274 FASTCALL1                        TYPE R25 ; [+3]
      275 MOVE                             R28 R25
      276 GETIMPORT                        R27 K66 [type]
      278 CALL                             R27 1 1
      279 JUMPIFNOTEQKS                    R27 K67 ["table"] ; [+4]
      281 GETTABLEKS                       R26 R25 K68 ["Left"]
      283 JUMPIF                           R26 ; [+1]
      284 MOVE                             R26 R25
      285 FASTCALL1                        TYPE R25 ; [+3]
      286 MOVE                             R29 R25
      287 GETIMPORT                        R28 K66 [type]
      289 CALL                             R28 1 1
      290 JUMPIFNOTEQKS                    R28 K67 ["table"] ; [+4]
      292 GETTABLEKS                       R27 R25 K69 ["Top"]
      294 JUMPIF                           R27 ; [+1]
      295 MOVE                             R27 R25
      296 GETTABLEKS                       R29 R5 K70 ["Hover"]
      298 JUMPIFNOT                        R29 ; [+9]
      299 JUMPIF                           R19 ; [+1]
      300 JUMPIFNOT                        R20 ; [+5]
      301 GETTABLEKS                       R28 R5 K70 ["Hover"]
      303 GETTABLEKS                       R28 R28 K71 ["BorderColor"]
      305 JUMP                             ; [+3]
      306 LOADNIL                          R28
      307 JUMP                             ; [+1]
      308 LOADNIL                          R28
      309 GETTABLEKS                       R29 R5 K72 ["IconWidth"]
      311 GETTABLEKS                       R30 R5 K73 ["IconColor"]
      313 GETTABLEKS                       R31 R5 K74 ["IconOffset"]
      315 GETTABLEKS                       R32 R5 K75 ["TextSize"]
      317 GETUPVAL                         R33 5
      318 GETTABLEKS                       R33 R33 K38 ["createElement"]
      320 GETUPVAL                         R34 9
      321 NEWTABLE                         R35 16 0
      323 SETTABLEKS                       R21 R35 K26 ["Size"]
      325 GETTABLEKS                       R36 R1 K40 ["AutomaticSize"]
      327 SETTABLEKS                       R36 R35 K40 ["AutomaticSize"]
      329 LOADB                            R36 1
      330 SETTABLEKS                       R36 R35 K76 ["ClipsDescendants"]
      332 LOADN                            R36 1
      333 SETTABLEKS                       R36 R35 K77 ["BackgroundTransparency"]
      335 SETTABLEKS                       R7 R35 K10 ["LayoutOrder"]
      337 SETTABLEKS                       R28 R35 K71 ["BorderColor"]
      339 LOADK                            R36 K78 ["InputBox"]
      340 SETTABLEKS                       R36 R35 K4 ["Style"]
      342 GETTABLEKS                       R36 R1 K52 ["Position"]
      344 SETTABLEKS                       R36 R35 K52 ["Position"]
      346 GETTABLEKS                       R36 R1 K39 ["AnchorPoint"]
      348 SETTABLEKS                       R36 R35 K39 ["AnchorPoint"]
      350 GETUPVAL                         R36 5
      351 GETTABLEKS                       R36 R36 K79 ["Event"]
      353 GETTABLEKS                       R36 R36 K80 ["MouseEnter"]
      355 GETTABLEKS                       R37 R0 K81 ["mouseEnter"]
      357 SETTABLE                         R37 R35 R36
      358 GETUPVAL                         R36 5
      359 GETTABLEKS                       R36 R36 K79 ["Event"]
      361 GETTABLEKS                       R36 R36 K82 ["MouseLeave"]
      363 GETTABLEKS                       R37 R0 K83 ["mouseLeave"]
      365 SETTABLE                         R37 R35 R36
      366 GETUPVAL                         R36 5
      367 GETTABLEKS                       R36 R36 K79 ["Event"]
      369 GETTABLEKS                       R36 R36 K84 ["InputBegan"]
      371 GETTABLEKS                       R37 R0 K85 ["onBackgroundInputBegan"]
      373 SETTABLE                         R37 R35 R36
      374 GETUPVAL                         R36 5
      375 GETTABLEKS                       R36 R36 K79 ["Event"]
      377 GETTABLEKS                       R36 R36 K86 ["InputEnded"]
      379 GETTABLEKS                       R37 R0 K87 ["onBackgroundFocusLost"]
      381 SETTABLE                         R37 R35 R36
      382 DUPTABLE                         R36 K90 [{"Input", "Buttons"}]
      383 GETUPVAL                         R37 5
      384 GETTABLEKS                       R37 R37 K38 ["createElement"]
      386 GETUPVAL                         R38 9
      387 DUPTABLE                         R39 K94 [{"Layout", "HorizontalAlignment", "Spacing", "Padding"}]
      388 GETIMPORT                        R40 K98 [Enum.FillDirection.Horizontal]
      390 SETTABLEKS                       R40 R39 K91 ["Layout"]
      392 GETIMPORT                        R40 K99 [Enum.HorizontalAlignment.Left]
      394 SETTABLEKS                       R40 R39 K92 ["HorizontalAlignment"]
      396 SETTABLEKS                       R31 R39 K93 ["Spacing"]
      398 DUPTABLE                         R40 K102 [{"Bottom", "Left", "Right", "Top"}]
      399 LOADN                            R41 0
      400 SETTABLEKS                       R41 R40 K100 ["Bottom"]
      402 SETTABLEKS                       R31 R40 K68 ["Left"]
      404 SETTABLEKS                       R31 R40 K101 ["Right"]
      406 LOADN                            R41 0
      407 SETTABLEKS                       R41 R40 K69 ["Top"]
      409 SETTABLEKS                       R40 R39 K64 ["Padding"]
      411 DUPTABLE                         R40 K105 [{"SearchIcon", "TextInput"}]
      412 MOVE                             R41 R11
      413 JUMPIFNOT                        R41 ; [+29]
      414 GETUPVAL                         R41 5
      415 GETTABLEKS                       R41 R41 K38 ["createElement"]
      417 GETUPVAL                         R42 9
      418 DUPTABLE                         R43 K107 [{"Size", "ScaleType", "LayoutOrder", "Style"}]
      419 GETIMPORT                        R44 K43 [UDim2.fromOffset]
      421 MOVE                             R45 R29
      422 MOVE                             R46 R29
      423 CALL                             R44 2 1
      424 SETTABLEKS                       R44 R43 K26 ["Size"]
      426 GETIMPORT                        R44 K109 [Enum.ScaleType.Fit]
      428 SETTABLEKS                       R44 R43 K106 ["ScaleType"]
      430 LOADN                            R44 1
      431 SETTABLEKS                       R44 R43 K10 ["LayoutOrder"]
      433 DUPTABLE                         R44 K112 [{"Image", "Background"}]
      434 GETTABLEKS                       R45 R5 K103 ["SearchIcon"]
      436 SETTABLEKS                       R45 R44 K110 ["Image"]
      438 SETTABLEKS                       R30 R44 K111 ["Background"]
      440 SETTABLEKS                       R44 R43 K4 ["Style"]
      442 CALL                             R41 2 1
      443 SETTABLEKS                       R41 R40 K103 ["SearchIcon"]
      445 GETUPVAL                         R41 5
      446 GETTABLEKS                       R41 R41 K38 ["createElement"]
      448 GETUPVAL                         R42 10
      449 DUPTABLE                         R43 K116 [{"Enabled", "Position", "Size", "AnchorPoint", "LayoutOrder", "PlaceholderText", "Text", "TextSize", "OnInputBegan", "OnInputEnded", "OnTextChanged", "OnFocusGained", "OnFocusLost", "ShouldFocus"}]
      450 NOT                              R44 R8
      451 SETTABLEKS                       R44 R43 K113 ["Enabled"]
      453 GETIMPORT                        R44 K33 [UDim2.new]
      455 LOADN                            R45 0
      456 MOVE                             R46 R26
      457 LOADK                            R47 K117 [0.5]
      458 LOADN                            R48 0
      459 CALL                             R44 4 1
      460 SETTABLEKS                       R44 R43 K52 ["Position"]
      462 GETIMPORT                        R44 K33 [UDim2.new]
      464 LOADN                            R45 1
      465 MULK                             R48 R26 K118 [2]
      466 ADD                              R47 R23 R48
      467 MINUS                            R46 R47
      468 LOADN                            R47 1
      469 LOADN                            R49 254
      470 MUL                              R48 R49 R27
      471 CALL                             R44 4 1
      472 SETTABLEKS                       R44 R43 K26 ["Size"]
      474 GETIMPORT                        R44 K120 [Vector2.new]
      476 LOADN                            R45 0
      477 LOADK                            R46 K117 [0.5]
      478 CALL                             R44 2 1
      479 SETTABLEKS                       R44 R43 K39 ["AnchorPoint"]
      481 LOADN                            R44 2
      482 SETTABLEKS                       R44 R43 K10 ["LayoutOrder"]
      484 SETTABLEKS                       R9 R43 K12 ["PlaceholderText"]
      486 SETTABLEKS                       R17 R43 K53 ["Text"]
      488 SETTABLEKS                       R32 R43 K75 ["TextSize"]
      490 SETTABLEKS                       R12 R43 K18 ["OnInputBegan"]
      492 SETTABLEKS                       R13 R43 K19 ["OnInputEnded"]
      494 GETTABLEKS                       R44 R0 K46 ["onTextChanged"]
      496 SETTABLEKS                       R44 R43 K47 ["OnTextChanged"]
      498 GETTABLEKS                       R44 R0 K48 ["onTextBoxFocusGained"]
      500 SETTABLEKS                       R44 R43 K114 ["OnFocusGained"]
      502 GETTABLEKS                       R44 R0 K50 ["onTextBoxFocusLost"]
      504 SETTABLEKS                       R44 R43 K51 ["OnFocusLost"]
      506 SETTABLEKS                       R16 R43 K115 ["ShouldFocus"]
      508 CALL                             R41 2 1
      509 SETTABLEKS                       R41 R40 K104 ["TextInput"]
      511 CALL                             R37 3 1
      512 SETTABLEKS                       R37 R36 K88 ["Input"]
      514 GETUPVAL                         R37 5
      515 GETTABLEKS                       R37 R37 K38 ["createElement"]
      517 GETUPVAL                         R38 8
      518 DUPTABLE                         R39 K122 [{"ButtonSize", "Disabled", "OnClear", "OnSearch", "OnSearchOptionsToggled", "ShowClearButton", "ShowFilterButton", "ShowSearchButton", "SearchIsFiltered", "Size", "Style"}]
      519 SETTABLEKS                       R24 R39 K121 ["ButtonSize"]
      521 SETTABLEKS                       R8 R39 K11 ["Disabled"]
      523 GETTABLEKS                       R40 R0 K60 ["onClearButtonClicked"]
      525 SETTABLEKS                       R40 R39 K55 ["OnClear"]
      527 GETTABLEKS                       R40 R0 K61 ["onSearchButtonClicked"]
      529 SETTABLEKS                       R40 R39 K56 ["OnSearch"]
      531 GETTABLEKS                       R40 R0 K0 ["props"]
      533 GETTABLEKS                       R40 R40 K57 ["OnSearchOptionsToggled"]
      535 SETTABLEKS                       R40 R39 K57 ["OnSearchOptionsToggled"]
      537 SETTABLEKS                       R18 R39 K58 ["ShowClearButton"]
      539 SETTABLEKS                       R14 R39 K20 ["ShowFilterButton"]
      541 SETTABLEKS                       R10 R39 K16 ["ShowSearchButton"]
      543 SETTABLEKS                       R15 R39 K21 ["SearchIsFiltered"]
      545 GETIMPORT                        R40 K33 [UDim2.new]
      547 LOADN                            R41 0
      548 MOVE                             R42 R23
      549 LOADN                            R43 1
      550 LOADN                            R44 0
      551 CALL                             R40 4 1
      552 SETTABLEKS                       R40 R39 K26 ["Size"]
      554 GETTABLEKS                       R40 R5 K89 ["Buttons"]
      556 SETTABLEKS                       R40 R39 K4 ["Style"]
      558 CALL                             R37 2 1
      559 SETTABLEKS                       R37 R36 K89 ["Buttons"]
      561 CALL                             R33 3 -1
      562 RETURN                           R33 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["isInputMainPress"]
       32 GETTABLEKS                       R6 R4 K12 ["prioritize"]
       34 GETIMPORT                        R7 K6 [require]
       36 GETTABLEKS                       R8 R0 K10 ["Util"]
       38 GETTABLEKS                       R8 R8 K13 ["Typecheck"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K10 ["Util"]
       45 GETTABLEKS                       R9 R9 K14 ["StyleModifier"]
       47 CALL                             R8 1 1
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R10 R0 K15 ["Resources"]
       52 CALL                             R9 1 1
       53 GETTABLEKS                       R10 R9 K16 ["LOCALIZATION_PROJECT_NAME"]
       55 GETIMPORT                        R11 K6 [require]
       57 GETTABLEKS                       R12 R0 K2 ["UI"]
       59 GETTABLEKS                       R12 R12 K17 ["Components"]
       61 GETTABLEKS                       R12 R12 K18 ["Pane"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K6 [require]
       66 GETTABLEKS                       R13 R0 K2 ["UI"]
       68 GETTABLEKS                       R13 R13 K17 ["Components"]
       70 GETTABLEKS                       R13 R13 K19 ["Image"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K6 [require]
       75 GETTABLEKS                       R14 R0 K2 ["UI"]
       77 GETTABLEKS                       R14 R14 K17 ["Components"]
       79 GETTABLEKS                       R14 R14 K20 ["TextInput"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K6 [require]
       84 GETTABLEKS                       R15 R0 K2 ["UI"]
       86 GETTABLEKS                       R15 R15 K17 ["Components"]
       88 GETTABLEKS                       R15 R15 K21 ["DEPRECATED_TextInput"]
       90 CALL                             R14 1 1
       91 GETIMPORT                        R15 K6 [require]
       93 GETIMPORT                        R16 K1 [script]
       95 GETTABLEKS                       R16 R16 K22 ["SearchButtons"]
       97 CALL                             R15 1 1
       98 GETTABLEKS                       R17 R0 K4 ["Parent"]
      100 LOADK                            R19 K23 ["React"]
      101 NAMECALL                         R17 R17 K24 ["FindFirstChild"]
      103 CALL                             R17 2 1
      104 JUMPIFNOT                        R17 ; [+8]
      105 GETIMPORT                        R16 K6 [require]
      107 GETTABLEKS                       R17 R0 K4 ["Parent"]
      109 GETTABLEKS                       R17 R17 K23 ["React"]
      111 CALL                             R16 1 1
      112 JUMP                             ; [+1]
      113 LOADNIL                          R16
      114 GETIMPORT                        R17 K6 [require]
      116 GETTABLEKS                       R18 R0 K25 ["Styling"]
      118 GETTABLEKS                       R18 R18 K26 ["supportsStyleSheets"]
      120 CALL                             R17 1 1
      121 GETIMPORT                        R18 K6 [require]
      123 GETTABLEKS                       R19 R0 K25 ["Styling"]
      125 GETTABLEKS                       R19 R19 K27 ["joinTags"]
      127 CALL                             R18 1 1
      128 GETTABLEKS                       R19 R1 K28 ["PureComponent"]
      130 LOADK                            R21 K29 ["SearchBar"]
      131 NAMECALL                         R19 R19 K30 ["extend"]
      133 CALL                             R19 2 1
      134 GETTABLEKS                       R20 R7 K31 ["wrap"]
      136 MOVE                             R21 R19
      137 GETIMPORT                        R22 K1 [script]
      139 CALL                             R20 2 0
      140 DUPTABLE                         R20 K42 [{"ButtonWidth", "LayoutOrder", "Disabled", "IncrementalTextSearch", "IncrementalTextSearchDelay", "ShowSearchButton", "ShowSearchIcon", "ShouldFocusOnMount", "ShowFilterButton", "SearchIsFiltered"}]
      141 LOADN                            R21 24
      142 SETTABLEKS                       R21 R20 K32 ["ButtonWidth"]
      144 LOADN                            R21 0
      145 SETTABLEKS                       R21 R20 K33 ["LayoutOrder"]
      147 LOADB                            R21 0
      148 SETTABLEKS                       R21 R20 K34 ["Disabled"]
      150 LOADB                            R21 0
      151 SETTABLEKS                       R21 R20 K35 ["IncrementalTextSearch"]
      153 LOADN                            R21 244
      154 SETTABLEKS                       R21 R20 K36 ["IncrementalTextSearchDelay"]
      156 LOADB                            R21 1
      157 SETTABLEKS                       R21 R20 K37 ["ShowSearchButton"]
      159 LOADB                            R21 0
      160 SETTABLEKS                       R21 R20 K38 ["ShowSearchIcon"]
      162 LOADB                            R21 0
      163 SETTABLEKS                       R21 R20 K39 ["ShouldFocusOnMount"]
      165 LOADB                            R21 0
      166 SETTABLEKS                       R21 R20 K40 ["ShowFilterButton"]
      168 LOADB                            R21 0
      169 SETTABLEKS                       R21 R20 K41 ["SearchIsFiltered"]
      171 SETTABLEKS                       R20 R19 K43 ["defaultProps"]
      173 DUPCLOSURE                       R20 K44 [PROTO_15]
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R4
      177 CAPTURE                          VAL R1
      178 SETTABLEKS                       R20 R19 K45 ["init"]
      180 DUPCLOSURE                       R20 K46 [PROTO_16]
      181 SETTABLEKS                       R20 R19 K47 ["didUpdate"]
      183 JUMPIF                           R17 ; [+6]
      184 DUPCLOSURE                       R20 K48 [PROTO_18]
      185 CAPTURE                          VAL R8
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R4
      188 SETTABLEKS                       R20 R19 K49 ["setStateAndStyleModifier"]
      190 DUPCLOSURE                       R20 K50 [PROTO_19]
      191 SETTABLEKS                       R20 R19 K51 ["getDerivedStateFromProps"]
      193 DUPCLOSURE                       R20 K52 [PROTO_20]
      194 CAPTURE                          VAL R17
      195 SETTABLEKS                       R20 R19 K53 ["onFocusLost"]
      197 DUPCLOSURE                       R20 K54 [PROTO_21]
      198 SETTABLEKS                       R20 R19 K55 ["didMount"]
      200 DUPCLOSURE                       R20 K56 [PROTO_22]
      201 SETTABLEKS                       R20 R19 K57 ["willUnmount"]
      203 DUPCLOSURE                       R20 K58 [PROTO_23]
      204 CAPTURE                          VAL R17
      205 CAPTURE                          VAL R16
      206 CAPTURE                          VAL R18
      207 CAPTURE                          VAL R10
      208 CAPTURE                          VAL R6
      209 CAPTURE                          VAL R1
      210 CAPTURE                          VAL R13
      211 CAPTURE                          VAL R12
      212 CAPTURE                          VAL R15
      213 CAPTURE                          VAL R11
      214 CAPTURE                          VAL R14
      215 SETTABLEKS                       R20 R19 K59 ["render"]
      217 MOVE                             R20 R3
      218 DUPTABLE                         R21 K62 [{"Localization", "Stylizer"}]
      219 GETTABLEKS                       R22 R2 K60 ["Localization"]
      221 SETTABLEKS                       R22 R21 K60 ["Localization"]
      223 JUMPIFNOT                        R17 ; [+2]
      224 LOADNIL                          R22
      225 JUMP                             ; [+2]
      226 GETTABLEKS                       R22 R2 K61 ["Stylizer"]
      228 SETTABLEKS                       R22 R21 K61 ["Stylizer"]
      230 CALL                             R20 1 1
      231 MOVE                             R21 R19
      232 CALL                             R20 1 1
      233 MOVE                             R19 R20
      234 RETURN                           R19 1
