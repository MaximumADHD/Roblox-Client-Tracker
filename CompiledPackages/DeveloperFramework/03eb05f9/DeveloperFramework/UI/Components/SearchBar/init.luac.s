PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["isHovered"] = True}]
        9 NAMECALL                         R0 R0 K5 ["setStateAndStyleModifier"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Disabled"]
        5 JUMPIFNOT                        R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 DUPTABLE                         R2 K4 [{["isHovered"] = False}]
        9 NAMECALL                         R0 R0 K5 ["setStateAndStyleModifier"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

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
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETUPVAL                         R3 0
       12 DUPTABLE                         R5 K4 [{["shouldFocus"] = True}]
       13 NAMECALL                         R3 R3 K5 ["setState"]
       15 CALL                             R3 2 0
       16 RETURN                           R0 0

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
       20 JUMPIFNOT                        R0 ; [+6]
       21 GETUPVAL                         R0 0
       22 DUPTABLE                         R2 K5 [{["isFocused"] = True}]
       23 NAMECALL                         R0 R0 K6 ["setState"]
       25 CALL                             R0 2 0
       26 RETURN                           R0 0
       27 GETUPVAL                         R0 0
       28 DUPTABLE                         R2 K5 [{["isFocused"] = True}]
       29 NAMECALL                         R0 R0 K7 ["setStateAndStyleModifier"]
       31 CALL                             R0 2 0
       32 RETURN                           R0 0

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
        8 JUMPIFNOT                        R0 ; [+17]
        9 GETUPVAL                         R0 0
       10 DUPTABLE                         R2 K7 [{["text"] = "", ["isFocused"] = True, ["shouldFocus"] = True}]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K8 ["isRoact17"]
       14 GETUPVAL                         R5 3
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+4]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K9 ["requestSearch"]
       20 JUMP                             ; [+1]
       21 LOADNIL                          R3
       22 NAMECALL                         R0 R0 K10 ["setState"]
       24 CALL                             R0 3 0
       25 RETURN                           R0 0
       26 GETUPVAL                         R0 0
       27 DUPTABLE                         R2 K7 [{["text"] = "", ["isFocused"] = True, ["shouldFocus"] = True}]
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K8 ["isRoact17"]
       31 GETUPVAL                         R5 3
       32 CALL                             R4 1 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K9 ["requestSearch"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R3
       39 NAMECALL                         R0 R0 K11 ["setStateAndStyleModifier"]
       41 CALL                             R0 3 0
       42 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K7 [{[1] = "", ["lastSearchTermAsProp"] = "", ["isFocused"] = False, ["isHovered"] = False, ["shouldFocus"] = False}]
        1 SETTABLEKS                       R1 R0 K8 ["state"]
        3 GETUPVAL                         R1 0
        4 JUMPIF                           R1 ; [+8]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K9 ["mouseEnter"]
        9 NEWCLOSURE                       R1 P1
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K10 ["mouseLeave"]
       13 NEWCLOSURE                       R1 P2
       14 CAPTURE                          VAL R0
       15 SETTABLEKS                       R1 R0 K11 ["requestSearch"]
       17 NEWCLOSURE                       R1 P3
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 SETTABLEKS                       R1 R0 K12 ["onBackgroundInputBegan"]
       22 NEWCLOSURE                       R1 P4
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K13 ["onBackgroundFocusLost"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K14 ["startIncrementalTextSearch"]
       30 NEWCLOSURE                       R1 P6
       31 CAPTURE                          UPVAL U2
       32 CAPTURE                          UPVAL U3
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K15 ["onTextChanged"]
       36 NEWCLOSURE                       R1 P7
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U0
       39 SETTABLEKS                       R1 R0 K16 ["onTextBoxFocusGained"]
       41 NEWCLOSURE                       R1 P8
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K17 ["onTextBoxFocusLost"]
       45 NEWCLOSURE                       R1 P9
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          UPVAL U3
       50 SETTABLEKS                       R1 R0 K18 ["onClearButtonClicked"]
       52 NEWCLOSURE                       R1 P10
       53 CAPTURE                          VAL R0
       54 SETTABLEKS                       R1 R0 K19 ["onSearchButtonClicked"]
       56 RETURN                           R0 0

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
        1 JUMPIFNOT                        R2 ; [+5]
        2 DUPTABLE                         R4 K3 [{[1] = False, ["shouldFocus"] = False}]
        3 NAMECALL                         R2 R0 K4 ["setState"]
        5 CALL                             R2 2 0
        6 JUMP                             ; [+4]
        7 DUPTABLE                         R4 K3 [{[1] = False, ["shouldFocus"] = False}]
        8 NAMECALL                         R2 R0 K5 ["setStateAndStyleModifier"]
       10 CALL                             R2 2 0
       11 JUMPIFNOT                        R1 ; [+3]
       12 GETTABLEKS                       R2 R0 K6 ["requestSearch"]
       14 CALL                             R2 0 0
       15 RETURN                           R0 0

PROTO_21:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETTABLEKS                       R1 R0 K1 ["props"]
        5 GETTABLEKS                       R1 R1 K2 ["ShouldFocusOnMount"]
        7 JUMPIFNOT                        R1 ; [+4]
        8 DUPTABLE                         R3 K5 [{["shouldFocus"] = True}]
        9 NAMECALL                         R1 R0 K6 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

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
      398 DUPTABLE                         R40 K103 [{["Bottom"] = 0, ["Left"], ["Right"], ["Top"] = 0}]
      399 SETTABLEKS                       R31 R40 K68 ["Left"]
      401 SETTABLEKS                       R31 R40 K102 ["Right"]
      403 SETTABLEKS                       R40 R39 K64 ["Padding"]
      405 DUPTABLE                         R40 K106 [{"SearchIcon", "TextInput"}]
      406 MOVE                             R41 R11
      407 JUMPIFNOT                        R41 ; [+26]
      408 GETUPVAL                         R41 5
      409 GETTABLEKS                       R41 R41 K38 ["createElement"]
      411 GETUPVAL                         R42 9
      412 DUPTABLE                         R43 K108 [{["Size"], ["ScaleType"], ["LayoutOrder"] = 1, ["Style"]}]
      413 GETIMPORT                        R44 K43 [UDim2.fromOffset]
      415 MOVE                             R45 R29
      416 MOVE                             R46 R29
      417 CALL                             R44 2 1
      418 SETTABLEKS                       R44 R43 K26 ["Size"]
      420 GETIMPORT                        R44 K110 [Enum.ScaleType.Fit]
      422 SETTABLEKS                       R44 R43 K107 ["ScaleType"]
      424 DUPTABLE                         R44 K113 [{"Image", "Background"}]
      425 GETTABLEKS                       R45 R5 K104 ["SearchIcon"]
      427 SETTABLEKS                       R45 R44 K111 ["Image"]
      429 SETTABLEKS                       R30 R44 K112 ["Background"]
      431 SETTABLEKS                       R44 R43 K4 ["Style"]
      433 CALL                             R41 2 1
      434 SETTABLEKS                       R41 R40 K104 ["SearchIcon"]
      436 GETUPVAL                         R41 5
      437 GETTABLEKS                       R41 R41 K38 ["createElement"]
      439 GETUPVAL                         R42 10
      440 DUPTABLE                         R43 K118 [{["Enabled"], ["Position"], ["Size"], ["AnchorPoint"], ["LayoutOrder"] = 2, ["PlaceholderText"], ["Text"], ["TextSize"], ["OnInputBegan"], ["OnInputEnded"], ["OnTextChanged"], ["OnFocusGained"], ["OnFocusLost"], ["ShouldFocus"]}]
      441 NOT                              R44 R8
      442 SETTABLEKS                       R44 R43 K114 ["Enabled"]
      444 GETIMPORT                        R44 K33 [UDim2.new]
      446 LOADN                            R45 0
      447 MOVE                             R46 R26
      448 LOADK                            R47 K119 [0.5]
      449 LOADN                            R48 0
      450 CALL                             R44 4 1
      451 SETTABLEKS                       R44 R43 K52 ["Position"]
      453 GETIMPORT                        R44 K33 [UDim2.new]
      455 LOADN                            R45 1
      456 MULK                             R48 R26 K115 [2]
      457 ADD                              R47 R23 R48
      458 MINUS                            R46 R47
      459 LOADN                            R47 1
      460 LOADN                            R49 -2
      461 MUL                              R48 R49 R27
      462 CALL                             R44 4 1
      463 SETTABLEKS                       R44 R43 K26 ["Size"]
      465 GETIMPORT                        R44 K121 [Vector2.new]
      467 LOADN                            R45 0
      468 LOADK                            R46 K119 [0.5]
      469 CALL                             R44 2 1
      470 SETTABLEKS                       R44 R43 K39 ["AnchorPoint"]
      472 SETTABLEKS                       R9 R43 K12 ["PlaceholderText"]
      474 SETTABLEKS                       R17 R43 K53 ["Text"]
      476 SETTABLEKS                       R32 R43 K75 ["TextSize"]
      478 SETTABLEKS                       R12 R43 K18 ["OnInputBegan"]
      480 SETTABLEKS                       R13 R43 K19 ["OnInputEnded"]
      482 GETTABLEKS                       R44 R0 K46 ["onTextChanged"]
      484 SETTABLEKS                       R44 R43 K47 ["OnTextChanged"]
      486 GETTABLEKS                       R44 R0 K48 ["onTextBoxFocusGained"]
      488 SETTABLEKS                       R44 R43 K116 ["OnFocusGained"]
      490 GETTABLEKS                       R44 R0 K50 ["onTextBoxFocusLost"]
      492 SETTABLEKS                       R44 R43 K51 ["OnFocusLost"]
      494 SETTABLEKS                       R16 R43 K117 ["ShouldFocus"]
      496 CALL                             R41 2 1
      497 SETTABLEKS                       R41 R40 K105 ["TextInput"]
      499 CALL                             R37 3 1
      500 SETTABLEKS                       R37 R36 K88 ["Input"]
      502 GETUPVAL                         R37 5
      503 GETTABLEKS                       R37 R37 K38 ["createElement"]
      505 GETUPVAL                         R38 8
      506 DUPTABLE                         R39 K123 [{"ButtonSize", "Disabled", "OnClear", "OnSearch", "OnSearchOptionsToggled", "ShowClearButton", "ShowFilterButton", "ShowSearchButton", "SearchIsFiltered", "Size", "Style"}]
      507 SETTABLEKS                       R24 R39 K122 ["ButtonSize"]
      509 SETTABLEKS                       R8 R39 K11 ["Disabled"]
      511 GETTABLEKS                       R40 R0 K60 ["onClearButtonClicked"]
      513 SETTABLEKS                       R40 R39 K55 ["OnClear"]
      515 GETTABLEKS                       R40 R0 K61 ["onSearchButtonClicked"]
      517 SETTABLEKS                       R40 R39 K56 ["OnSearch"]
      519 GETTABLEKS                       R40 R0 K0 ["props"]
      521 GETTABLEKS                       R40 R40 K57 ["OnSearchOptionsToggled"]
      523 SETTABLEKS                       R40 R39 K57 ["OnSearchOptionsToggled"]
      525 SETTABLEKS                       R18 R39 K58 ["ShowClearButton"]
      527 SETTABLEKS                       R14 R39 K20 ["ShowFilterButton"]
      529 SETTABLEKS                       R10 R39 K16 ["ShowSearchButton"]
      531 SETTABLEKS                       R15 R39 K21 ["SearchIsFiltered"]
      533 GETIMPORT                        R40 K33 [UDim2.new]
      535 LOADN                            R41 0
      536 MOVE                             R42 R23
      537 LOADN                            R43 1
      538 LOADN                            R44 0
      539 CALL                             R40 4 1
      540 SETTABLEKS                       R40 R39 K26 ["Size"]
      542 GETTABLEKS                       R40 R5 K89 ["Buttons"]
      544 SETTABLEKS                       R40 R39 K4 ["Style"]
      546 CALL                             R37 2 1
      547 SETTABLEKS                       R37 R36 K89 ["Buttons"]
      549 CALL                             R33 3 -1
      550 RETURN                           R33 -1

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
      140 DUPTABLE                         R20 K47 [{["ButtonWidth"] = 24, ["LayoutOrder"] = 0, ["Disabled"] = False, ["IncrementalTextSearch"] = False, ["IncrementalTextSearchDelay"] = 500, ["ShowSearchButton"] = True, ["ShowSearchIcon"] = False, ["ShouldFocusOnMount"] = False, ["ShowFilterButton"] = False, ["SearchIsFiltered"] = False}]
      141 SETTABLEKS                       R20 R19 K48 ["defaultProps"]
      143 DUPCLOSURE                       R20 K49 [PROTO_15]
      144 CAPTURE                          VAL R17
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R1
      148 SETTABLEKS                       R20 R19 K50 ["init"]
      150 DUPCLOSURE                       R20 K51 [PROTO_16]
      151 SETTABLEKS                       R20 R19 K52 ["didUpdate"]
      153 JUMPIF                           R17 ; [+6]
      154 DUPCLOSURE                       R20 K53 [PROTO_18]
      155 CAPTURE                          VAL R8
      156 CAPTURE                          VAL R1
      157 CAPTURE                          VAL R4
      158 SETTABLEKS                       R20 R19 K54 ["setStateAndStyleModifier"]
      160 DUPCLOSURE                       R20 K55 [PROTO_19]
      161 SETTABLEKS                       R20 R19 K56 ["getDerivedStateFromProps"]
      163 DUPCLOSURE                       R20 K57 [PROTO_20]
      164 CAPTURE                          VAL R17
      165 SETTABLEKS                       R20 R19 K58 ["onFocusLost"]
      167 DUPCLOSURE                       R20 K59 [PROTO_21]
      168 SETTABLEKS                       R20 R19 K60 ["didMount"]
      170 DUPCLOSURE                       R20 K61 [PROTO_22]
      171 SETTABLEKS                       R20 R19 K62 ["willUnmount"]
      173 DUPCLOSURE                       R20 K63 [PROTO_23]
      174 CAPTURE                          VAL R17
      175 CAPTURE                          VAL R16
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R10
      178 CAPTURE                          VAL R6
      179 CAPTURE                          VAL R1
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R12
      182 CAPTURE                          VAL R15
      183 CAPTURE                          VAL R11
      184 CAPTURE                          VAL R14
      185 SETTABLEKS                       R20 R19 K64 ["render"]
      187 MOVE                             R20 R3
      188 DUPTABLE                         R21 K67 [{"Localization", "Stylizer"}]
      189 GETTABLEKS                       R22 R2 K65 ["Localization"]
      191 SETTABLEKS                       R22 R21 K65 ["Localization"]
      193 JUMPIFNOT                        R17 ; [+2]
      194 LOADNIL                          R22
      195 JUMP                             ; [+2]
      196 GETTABLEKS                       R22 R2 K66 ["Stylizer"]
      198 SETTABLEKS                       R22 R21 K66 ["Stylizer"]
      200 CALL                             R20 1 1
      201 MOVE                             R21 R19
      202 CALL                             R20 1 1
      203 MOVE                             R19 R20
      204 RETURN                           R19 1
