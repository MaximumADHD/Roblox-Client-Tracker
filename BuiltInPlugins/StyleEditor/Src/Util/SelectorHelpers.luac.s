PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["%s+"]
        2 LOADK                            R4 K1 [""]
        3 NAMECALL                         R1 R1 K2 ["gsub"]
        5 CALL                             R1 3 1
        6 SETUPVAL                         R1 0
        7 GETUPVAL                         R1 0
        8 MOVE                             R3 R0
        9 NAMECALL                         R1 R1 K3 ["find"]
       11 CALL                             R1 2 2
       12 JUMPIFNOT                        R1 ; [+66]
       13 JUMPIFNOTEQKN                    R1 K4 [1] ; [+2]
       15 RETURN                           R0 1
       16 GETUPVAL                         R3 0
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R8 R8 K5 ["SelectorSyntax"]
       20 GETTABLEKS                       R8 R8 K6 ["Child"]
       22 LENGTH                           R7 R8
       23 SUB                              R6 R1 R7
       24 FASTCALL2K                       MATH_MAX R6 K4 ; [+4]
       26 LOADK                            R7 K4 [1]
       27 GETIMPORT                        R5 K9 [math.max]
       29 CALL                             R5 2 1
       30 MOVE                             R6 R2
       31 NAMECALL                         R3 R3 K10 ["sub"]
       33 CALL                             R3 3 1
       34 GETUPVAL                         R6 1
       35 GETTABLEKS                       R6 R6 K5 ["SelectorSyntax"]
       37 GETTABLEKS                       R6 R6 K6 ["Child"]
       39 MOVE                             R7 R0
       40 CONCAT                           R5 R6 R7
       41 JUMPIFEQ                         R3 R5 ; [+2]
       43 LOADB                            R4 0 +1
       44 LOADB                            R4 1
       45 JUMPIFNOT                        R4 ; [+1]
       46 RETURN                           R0 1
       47 GETUPVAL                         R5 0
       48 GETUPVAL                         R10 1
       49 GETTABLEKS                       R10 R10 K5 ["SelectorSyntax"]
       51 GETTABLEKS                       R10 R10 K11 ["Descendant"]
       53 LENGTH                           R9 R10
       54 SUB                              R8 R1 R9
       55 FASTCALL2K                       MATH_MAX R8 K4 ; [+4]
       57 LOADK                            R9 K4 [1]
       58 GETIMPORT                        R7 K9 [math.max]
       60 CALL                             R7 2 1
       61 MOVE                             R8 R2
       62 NAMECALL                         R5 R5 K10 ["sub"]
       64 CALL                             R5 3 1
       65 MOVE                             R3 R5
       66 GETUPVAL                         R7 1
       67 GETTABLEKS                       R7 R7 K5 ["SelectorSyntax"]
       69 GETTABLEKS                       R7 R7 K11 ["Descendant"]
       71 MOVE                             R8 R0
       72 CONCAT                           R6 R7 R8
       73 JUMPIFEQ                         R3 R6 ; [+2]
       75 LOADB                            R5 0 +1
       76 LOADB                            R5 1
       77 JUMPIFNOT                        R5 ; [+1]
       78 RETURN                           R0 1
       79 LOADNIL                          R3
       80 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Classes"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R0
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 2 -1
        8 CLOSEUPVALS                      R0
        9 RETURN                           R1 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+5]
        1 LOADK                            R3 K0 ["StyleRule"]
        2 NAMECALL                         R1 R0 K1 ["IsA"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+2]
        6 LOADK                            R1 K2 [""]
        7 RETURN                           R1 1
        8 LOADB                            R2 0
        9 JUMPIFEQKNIL                     R0 ; [+5]
       11 LOADK                            R4 K0 ["StyleRule"]
       12 NAMECALL                         R2 R0 K1 ["IsA"]
       14 CALL                             R2 2 1
       15 FASTCALL2K                       ASSERT R2 K3 ; [+4]
       17 LOADK                            R3 K3 ["style cannot be nil"]
       18 GETIMPORT                        R1 K5 [assert]
       20 CALL                             R1 2 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K6 ["getSelectorChain"]
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 JUMPIFNOT                        R1 ; [+7]
       27 GETTABLEKS                       R2 R1 K7 ["Class"]
       29 JUMPIFEQKS                       R2 K2 [""] ; [+4]
       31 GETTABLEKS                       R2 R1 K7 ["Class"]
       33 RETURN                           R2 1
       34 LOADK                            R2 K2 [""]
       35 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StylingService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R2 0
        7 NAMECALL                         R0 R0 K4 ["GetStyleInfo"]
        9 CALL                             R0 2 1
       10 GETTABLEKS                       R0 R0 K5 ["SelectorChains"]
       12 RETURN                           R0 1

PROTO_4:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 LOADK                            R3 K0 ["StyleRule"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIF                           R1 ; [+2]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K3 [pcall]
       11 NEWCLOSURE                       R2 P0
       12 CAPTURE                          VAL R0
       13 CALL                             R1 1 2
       14 JUMPIFNOT                        R1 ; [+5]
       15 GETTABLEN                        R4 R2 1
       16 LENGTH                           R3 R4
       17 GETTABLEN                        R5 R2 1
       18 GETTABLE                         R4 R5 R3
       19 RETURN                           R4 1
       20 LOADNIL                          R3
       21 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetAppliedStyles"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_6:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R2 R0
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+5]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["None"]
        8 RETURN                           R2 1
        9 LOADN                            R2 0
       10 GETIMPORT                        R3 K3 [pairs]
       12 MOVE                             R4 R0
       13 CALL                             R3 1 3
       14 FORGPREP_NEXT                    R3
       15 GETIMPORT                        R8 K5 [pcall]
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R7
       20 CALL                             R8 1 2
       21 JUMPIFNOT                        R8 ; [+13]
       22 GETIMPORT                        R10 K3 [pairs]
       24 MOVE                             R11 R9
       25 CALL                             R10 1 3
       26 FORGPREP_NEXT                    R10
       27 GETTABLEKS                       R15 R14 K6 ["Instance"]
       29 JUMPIFNOTEQ                      R15 R1 ; [+3]
       31 ADDK                             R2 R2 K7 [1]
       32 JUMP                             ; [+2]
       33 FORGLOOP                         R10 2 ; [-7]
       35 FORGLOOP                         R3 2 ; [-21]
       37 LENGTH                           R3 R0
       38 JUMPIFNOTLE                      R3 R2 ; [+5]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K8 ["All"]
       43 RETURN                           R3 1
       44 LOADN                            R3 0
       45 JUMPIFNOTLE                      R2 R3 ; [+5]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K1 ["None"]
       50 RETURN                           R3 1
       51 GETUPVAL                         R3 0
       52 GETTABLEKS                       R3 R3 K9 ["Mixed"]
       54 RETURN                           R3 1

PROTO_7:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADB                            R1 0
        3 RETURN                           R1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["getSelectorChain"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIFNOT                        R1 ; [+8]
       10 GETTABLEKS                       R3 R1 K1 ["Tags"]
       12 LENGTH                           R2 R3
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+3]
       16 LOADB                            R2 1
       17 RETURN                           R2 1
       18 LOADB                            R2 0
       19 RETURN                           R2 1

PROTO_8:
        0 JUMPIFEQKNIL                     R0 ; [+6]
        2 JUMPIFEQKNIL                     R1 ; [+4]
        4 LENGTH                           R2 R1
        5 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        7 LOADB                            R2 0
        8 RETURN                           R2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K1 ["getSelectorChain"]
       12 MOVE                             R3 R0
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+2]
       15 LOADB                            R3 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R3 R2 K2 ["Name"]
       19 JUMPIFNOT                        R3 ; [+6]
       20 GETTABLEKS                       R3 R2 K2 ["Name"]
       22 JUMPIFEQKS                       R3 K3 [""] ; [+3]
       24 LOADB                            R3 0
       25 RETURN                           R3 1
       26 GETTABLEKS                       R3 R2 K4 ["Class"]
       28 JUMPIFNOT                        R3 ; [+4]
       29 GETTABLEKS                       R3 R2 K4 ["Class"]
       31 JUMPIFNOTEQKS                    R3 K3 [""] ; [+3]
       33 LOADB                            R3 1
       34 RETURN                           R3 1
       35 GETIMPORT                        R3 K6 [pairs]
       37 MOVE                             R4 R1
       38 CALL                             R3 1 3
       39 FORGPREP_NEXT                    R3
       40 GETTABLEKS                       R8 R2 K4 ["Class"]
       42 GETTABLEKS                       R9 R7 K7 ["ClassName"]
       44 JUMPIFEQ                         R8 R9 ; [+3]
       46 LOADB                            R8 0
       47 RETURN                           R8 1
       48 FORGLOOP                         R3 2 ; [-9]
       50 LOADB                            R3 1
       51 RETURN                           R3 1

PROTO_9:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["getSelectorChain"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R2 K1 ["Tags"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 MOVE                             R10 R7
       19 NAMECALL                         R8 R1 K2 ["AddTag"]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-5]
       24 RETURN                           R0 0

PROTO_10:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["getSelectorChain"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFNOTEQKNIL                  R2 ; [+2]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R3 R2 K1 ["Tags"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 MOVE                             R10 R7
       19 NAMECALL                         R8 R1 K2 ["RemoveTag"]
       21 CALL                             R8 2 0
       22 FORGLOOP                         R3 2 ; [-5]
       24 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 3
        2 LOADK                            R2 K0 ["LayerCollector"]
        3 LOADK                            R3 K1 ["StarterGui"]
        4 LOADK                            R4 K2 ["Workspace"]
        5 SETLIST                          R1 R2 3 [1]
        7 MOVE                             R2 R1
        8 LOADNIL                          R3
        9 LOADNIL                          R4
       10 FORGPREP                         R2
       11 MOVE                             R9 R6
       12 NAMECALL                         R7 R0 K3 ["IsA"]
       14 CALL                             R7 2 1
       15 JUMPIFNOT                        R7 ; [+1]
       16 RETURN                           R0 1
       17 MOVE                             R9 R6
       18 NAMECALL                         R7 R0 K4 ["FindFirstAncestorWhichIsA"]
       20 CALL                             R7 2 1
       21 JUMPIFNOT                        R7 ; [+1]
       22 RETURN                           R7 1
       23 FORGLOOP                         R2 2 ; [-13]
       25 LOADNIL                          R2
       26 RETURN                           R2 1

PROTO_12:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R2 ; [+13]
        2 GETTABLEKS                       R3 R1 K0 ["Parent"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 LOADK                            R5 K1 ["StyleLink"]
        7 NAMECALL                         R3 R2 K2 ["FindFirstChildWhichIsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R3 1
       12 GETTABLEKS                       R2 R2 K0 ["Parent"]
       14 JUMPBACK                         ; [-14]
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_13:
        0 JUMPIFNOT                        R0 ; [+8]
        1 JUMPIFNOT                        R1 ; [+7]
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+7]
        4 LOADK                            R4 K0 ["StyleSheet"]
        5 NAMECALL                         R2 R1 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETUPVAL                         R2 0
       12 JUMPIF                           R2 ; [+22]
       13 LOADK                            R4 K2 ["StyleRule"]
       14 NAMECALL                         R2 R1 K1 ["IsA"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+10]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K3 ["addStyleLinkToRoot"]
       21 MOVE                             R3 R0
       22 LOADK                            R6 K0 ["StyleSheet"]
       23 NAMECALL                         R4 R1 K4 ["FindFirstAncestorWhichIsA"]
       25 CALL                             R4 2 1
       26 CALL                             R2 2 -1
       27 RETURN                           R2 -1
       28 LOADK                            R4 K0 ["StyleSheet"]
       29 NAMECALL                         R2 R1 K1 ["IsA"]
       31 CALL                             R2 2 1
       32 JUMPIF                           R2 ; [+2]
       33 LOADNIL                          R2
       34 RETURN                           R2 1
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R2 R2 K5 ["getStyleLinkRoot"]
       38 MOVE                             R3 R0
       39 CALL                             R2 1 1
       40 GETUPVAL                         R3 0
       41 JUMPIFNOT                        R3 ; [+25]
       42 JUMPIF                           R2 ; [+2]
       43 LOADNIL                          R3
       44 RETURN                           R3 1
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K6 ["findFirstStyleLinkInHierarchy"]
       48 MOVE                             R4 R0
       49 MOVE                             R5 R2
       50 CALL                             R3 2 1
       51 JUMPIFNOT                        R3 ; [+7]
       52 GETTABLEKS                       R4 R3 K0 ["StyleSheet"]
       54 JUMPIFNOTEQKNIL                  R4 ; [+3]
       56 SETTABLEKS                       R1 R3 K0 ["StyleSheet"]
       58 RETURN                           R3 1
       59 GETUPVAL                         R4 2
       60 MOVE                             R5 R2
       61 MOVE                             R6 R1
       62 CALL                             R4 2 1
       63 LOADK                            R5 K7 ["StyleLink"]
       64 SETTABLEKS                       R5 R4 K8 ["Name"]
       66 RETURN                           R4 1
       67 JUMPIFNOT                        R2 ; [+14]
       68 LOADK                            R5 K7 ["StyleLink"]
       69 NAMECALL                         R3 R2 K9 ["FindFirstChildWhichIsA"]
       71 CALL                             R3 2 1
       72 JUMPIF                           R3 ; [+9]
       73 JUMPIFNOT                        R1 ; [+8]
       74 GETUPVAL                         R3 2
       75 MOVE                             R4 R2
       76 MOVE                             R5 R1
       77 CALL                             R3 2 1
       78 LOADK                            R4 K7 ["StyleLink"]
       79 SETTABLEKS                       R4 R3 K8 ["Name"]
       81 RETURN                           R3 1
       82 LOADNIL                          R3
       83 RETURN                           R3 1

PROTO_14:
        0 GETIMPORT                        R0 K1 [ipairs]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 3
        4 FORGPREP_INEXT                   R0
        5 JUMPIF                           R4 ; [+5]
        6 GETIMPORT                        R5 K3 [print]
        8 LOADK                            R6 K4 ["Error: No instance selected in Explorer--unable to create StyleLink"]
        9 CALL                             R5 1 0
       10 JUMP                             ; [+34]
       11 GETUPVAL                         R5 1
       12 JUMPIF                           R5 ; [+10]
       13 LOADK                            R7 K5 ["StyleLink"]
       14 NAMECALL                         R5 R4 K6 ["FindFirstChildWhichIsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETIMPORT                        R5 K3 [print]
       20 LOADK                            R6 K7 ["Error: There is already a StyleLink for this root"]
       21 CALL                             R5 1 0
       22 JUMP                             ; [+22]
       23 GETUPVAL                         R5 2
       24 GETTABLEKS                       R5 R5 K8 ["addStyleLinkToRoot"]
       26 MOVE                             R6 R4
       27 GETUPVAL                         R7 3
       28 CALL                             R5 2 1
       29 GETUPVAL                         R7 0
       30 LENGTH                           R6 R7
       31 JUMPIFNOTEQKN                    R6 K9 [1] ; [+11]
       33 JUMPIFNOT                        R5 ; [+9]
       34 GETUPVAL                         R6 4
       35 NEWTABLE                         R8 0 1
       37 MOVE                             R9 R5
       38 SETLIST                          R8 R9 1 [1]
       40 NAMECALL                         R6 R6 K10 ["Set"]
       42 CALL                             R6 2 0
       43 FORGLOOP                         R0 2 [inext] ; [-39]
       45 GETIMPORT                        R0 K14 [Enum.FinishRecordingOperation.Commit]
       47 RETURN                           R0 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Get"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K6 [{["Name"] = "StyleEditor.AddStyleLink", ["DisplayName"] = "Style Editor - Add StyleLink(s)", ["DoChange"]}]
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R4 R3 K5 ["DoChange"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StylingService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["ChangeHistoryService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Framework"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R4 K13 ["Styling"]
       36 GETTABLEKS                       R5 R5 K14 ["createStyleLink"]
       38 GETIMPORT                        R6 K10 [require]
       40 GETTABLEKS                       R7 R3 K15 ["Src"]
       42 GETTABLEKS                       R7 R7 K16 ["Util"]
       44 GETTABLEKS                       R7 R7 K17 ["MenuHelpers"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K10 [require]
       49 GETTABLEKS                       R8 R3 K15 ["Src"]
       51 GETTABLEKS                       R8 R8 K16 ["Util"]
       53 GETTABLEKS                       R8 R8 K18 ["recordChange"]
       55 CALL                             R7 1 1
       56 MOVE                             R8 R2
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K10 [require]
       60 GETTABLEKS                       R9 R3 K15 ["Src"]
       62 GETTABLEKS                       R9 R9 K19 ["Enums"]
       64 GETTABLEKS                       R9 R9 K20 ["InstancesHaveVariant"]
       66 CALL                             R8 1 1
       67 GETIMPORT                        R9 K10 [require]
       69 GETTABLEKS                       R10 R3 K11 ["Packages"]
       71 GETTABLEKS                       R10 R10 K21 ["Dash"]
       73 CALL                             R9 1 1
       74 GETTABLEKS                       R10 R9 K22 ["mapOne"]
       76 GETIMPORT                        R11 K10 [require]
       78 GETTABLEKS                       R12 R3 K15 ["Src"]
       80 GETTABLEKS                       R12 R12 K23 ["Flags"]
       82 GETTABLEKS                       R12 R12 K24 ["getFFlagStyleEditorStyleLinkInsertWhenNil"]
       84 CALL                             R11 1 1
       85 CALL                             R11 0 1
       86 NEWTABLE                         R12 16 0
       88 DUPTABLE                         R13 K41 [{["Blank"] = "", ["Child"] = ">", ["Descendant"] = ">>", ["GuiState"] = ":", ["Name"] = "#", ["PseudoInstance"] = "::", ["Tag"] = ".", ["Query"] = "@"}]
       89 SETTABLEKS                       R13 R12 K42 ["SelectorSyntax"]
       91 DUPCLOSURE                       R13 K43 [PROTO_1]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R12
       95 SETTABLEKS                       R13 R12 K44 ["isElement"]
       97 DUPCLOSURE                       R13 K45 [PROTO_2]
       98 CAPTURE                          VAL R12
       99 SETTABLEKS                       R13 R12 K46 ["findFirstClassSelector"]
      101 DUPCLOSURE                       R13 K47 [PROTO_4]
      102 SETTABLEKS                       R13 R12 K48 ["getSelectorChain"]
      104 DUPCLOSURE                       R13 K49 [PROTO_6]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R13 R12 K50 ["instancesHaveVariant"]
      109 DUPCLOSURE                       R13 K51 [PROTO_7]
      110 CAPTURE                          VAL R12
      111 SETTABLEKS                       R13 R12 K52 ["ruleHasTags"]
      113 DUPCLOSURE                       R13 K53 [PROTO_8]
      114 CAPTURE                          VAL R12
      115 SETTABLEKS                       R13 R12 K54 ["canApplyVariant"]
      117 DUPCLOSURE                       R13 K55 [PROTO_9]
      118 CAPTURE                          VAL R12
      119 SETTABLEKS                       R13 R12 K56 ["applyVariant"]
      121 DUPCLOSURE                       R13 K57 [PROTO_10]
      122 CAPTURE                          VAL R12
      123 SETTABLEKS                       R13 R12 K58 ["removeVariant"]
      125 DUPCLOSURE                       R13 K59 [PROTO_11]
      126 SETTABLEKS                       R13 R12 K60 ["getStyleLinkRoot"]
      128 DUPCLOSURE                       R13 K61 [PROTO_12]
      129 SETTABLEKS                       R13 R12 K62 ["findFirstStyleLinkInHierarchy"]
      131 DUPCLOSURE                       R13 K63 [PROTO_13]
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R5
      135 SETTABLEKS                       R13 R12 K64 ["addStyleLinkToRoot"]
      137 DUPCLOSURE                       R13 K65 [PROTO_15]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R7
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R12
      142 SETTABLEKS                       R13 R12 K66 ["addStyleLinkToSelection"]
      144 RETURN                           R12 1
