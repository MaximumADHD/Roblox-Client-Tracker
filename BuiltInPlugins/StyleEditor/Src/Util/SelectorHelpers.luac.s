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
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 NEWTABLE                         R1 0 3
        4 LOADK                            R2 K0 ["LayerCollector"]
        5 LOADK                            R3 K1 ["StarterGui"]
        6 LOADK                            R4 K2 ["Workspace"]
        7 SETLIST                          R1 R2 3 [1]
        9 JUMP                             ; [+10]
       10 NEWTABLE                         R1 0 6
       12 LOADK                            R2 K3 ["ScreenGui"]
       13 LOADK                            R3 K4 ["SurfaceGui"]
       14 LOADK                            R4 K5 ["BillboardGui"]
       15 LOADK                            R5 K1 ["StarterGui"]
       16 LOADK                            R6 K2 ["Workspace"]
       17 LOADK                            R7 K6 ["PluginGuiService"]
       18 SETLIST                          R1 R2 6 [1]
       20 MOVE                             R2 R1
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 MOVE                             R9 R6
       25 NAMECALL                         R7 R0 K7 ["IsA"]
       27 CALL                             R7 2 1
       28 JUMPIFNOT                        R7 ; [+1]
       29 RETURN                           R0 1
       30 MOVE                             R9 R6
       31 NAMECALL                         R7 R0 K8 ["FindFirstAncestorWhichIsA"]
       33 CALL                             R7 2 1
       34 JUMPIFNOT                        R7 ; [+1]
       35 RETURN                           R7 1
       36 FORGLOOP                         R2 2 ; [-13]
       38 LOADNIL                          R2
       39 RETURN                           R2 1

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
       41 JUMPIFNOT                        R3 ; [+36]
       42 JUMPIF                           R2 ; [+2]
       43 LOADNIL                          R3
       44 RETURN                           R3 1
       45 LOADNIL                          R3
       46 GETUPVAL                         R4 2
       47 JUMPIFNOT                        R4 ; [+8]
       48 GETUPVAL                         R4 1
       49 GETTABLEKS                       R4 R4 K6 ["findFirstStyleLinkInHierarchy"]
       51 MOVE                             R5 R0
       52 MOVE                             R6 R2
       53 CALL                             R4 2 1
       54 MOVE                             R3 R4
       55 JUMP                             ; [+6]
       56 LOADK                            R6 K7 ["StyleLink"]
       57 LOADB                            R7 1
       58 NAMECALL                         R4 R2 K8 ["FindFirstChildWhichIsA"]
       60 CALL                             R4 3 1
       61 MOVE                             R3 R4
       62 JUMPIFNOT                        R3 ; [+7]
       63 GETTABLEKS                       R4 R3 K0 ["StyleSheet"]
       65 JUMPIFNOTEQKNIL                  R4 ; [+3]
       67 SETTABLEKS                       R1 R3 K0 ["StyleSheet"]
       69 RETURN                           R3 1
       70 GETUPVAL                         R4 3
       71 MOVE                             R5 R2
       72 MOVE                             R6 R1
       73 CALL                             R4 2 1
       74 LOADK                            R5 K7 ["StyleLink"]
       75 SETTABLEKS                       R5 R4 K9 ["Name"]
       77 RETURN                           R4 1
       78 JUMPIFNOT                        R2 ; [+14]
       79 LOADK                            R5 K7 ["StyleLink"]
       80 NAMECALL                         R3 R2 K8 ["FindFirstChildWhichIsA"]
       82 CALL                             R3 2 1
       83 JUMPIF                           R3 ; [+9]
       84 JUMPIFNOT                        R1 ; [+8]
       85 GETUPVAL                         R3 3
       86 MOVE                             R4 R2
       87 MOVE                             R5 R1
       88 CALL                             R3 2 1
       89 LOADK                            R4 K7 ["StyleLink"]
       90 SETTABLEKS                       R4 R3 K9 ["Name"]
       92 RETURN                           R3 1
       93 LOADNIL                          R3
       94 RETURN                           R3 1

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
        5 DUPTABLE                         R3 K4 [{"Name", "DisplayName", "DoChange"}]
        6 LOADK                            R4 K5 ["StyleEditor.AddStyleLink"]
        7 SETTABLEKS                       R4 R3 K1 ["Name"]
        9 LOADK                            R4 K6 ["Style Editor - Add StyleLink(s)"]
       10 SETTABLEKS                       R4 R3 K2 ["DisplayName"]
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U0
       18 SETTABLEKS                       R4 R3 K3 ["DoChange"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SelectorSyntax"]
        3 GETTABLEKS                       R1 R1 K1 ["PseudoInstance"]
        5 GETIMPORT                        R2 K4 [string.find]
        7 GETTABLEKS                       R3 R0 K5 ["Selector"]
        9 MOVE                             R4 R1
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+29]
       12 GETTABLEKS                       R2 R0 K6 ["Parent"]
       14 JUMPIFNOT                        R2 ; [+14]
       15 LOADK                            R5 K7 ["StyleRule"]
       16 NAMECALL                         R3 R2 K8 ["IsA"]
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+9]
       20 GETIMPORT                        R3 K4 [string.find]
       22 GETTABLEKS                       R4 R2 K5 ["Selector"]
       24 MOVE                             R5 R1
       25 CALL                             R3 2 1
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADB                            R3 1
       28 RETURN                           R3 1
       29 GETIMPORT                        R3 K10 [string.gsub]
       31 GETTABLEKS                       R4 R0 K5 ["Selector"]
       33 MOVE                             R5 R1
       34 LOADK                            R6 K11 [""]
       35 CALL                             R3 3 2
       36 LOADN                            R5 1
       37 JUMPIFNOTLT                      R5 R4 ; [+3]
       39 LOADB                            R5 1
       40 RETURN                           R5 1
       41 LOADB                            R2 0
       42 RETURN                           R2 1

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
       86 GETIMPORT                        R12 K10 [require]
       88 GETTABLEKS                       R13 R3 K15 ["Src"]
       90 GETTABLEKS                       R13 R13 K23 ["Flags"]
       92 GETTABLEKS                       R13 R13 K25 ["getFFlagStyleEditorPluginStyleSheets"]
       94 CALL                             R12 1 1
       95 CALL                             R12 0 1
       96 GETIMPORT                        R13 K10 [require]
       98 GETTABLEKS                       R14 R3 K15 ["Src"]
      100 GETTABLEKS                       R14 R14 K23 ["Flags"]
      102 GETTABLEKS                       R14 R14 K26 ["getFFlagStyleEditorUseHierarchyStyleLink"]
      104 CALL                             R13 1 1
      105 CALL                             R13 0 1
      106 NEWTABLE                         R14 16 0
      108 DUPTABLE                         R15 K35 [{"Blank", "Child", "Descendant", "GuiState", "Name", "PseudoInstance", "Tag", "Query"}]
      109 LOADK                            R16 K36 [""]
      110 SETTABLEKS                       R16 R15 K27 ["Blank"]
      112 LOADK                            R16 K37 [">"]
      113 SETTABLEKS                       R16 R15 K28 ["Child"]
      115 LOADK                            R16 K38 [">>"]
      116 SETTABLEKS                       R16 R15 K29 ["Descendant"]
      118 LOADK                            R16 K39 [":"]
      119 SETTABLEKS                       R16 R15 K30 ["GuiState"]
      121 LOADK                            R16 K40 ["#"]
      122 SETTABLEKS                       R16 R15 K31 ["Name"]
      124 LOADK                            R16 K41 ["::"]
      125 SETTABLEKS                       R16 R15 K32 ["PseudoInstance"]
      127 LOADK                            R16 K42 ["."]
      128 SETTABLEKS                       R16 R15 K33 ["Tag"]
      130 LOADK                            R16 K43 ["@"]
      131 SETTABLEKS                       R16 R15 K34 ["Query"]
      133 SETTABLEKS                       R15 R14 K44 ["SelectorSyntax"]
      135 DUPCLOSURE                       R15 K45 [PROTO_1]
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R14
      139 SETTABLEKS                       R15 R14 K46 ["isElement"]
      141 DUPCLOSURE                       R15 K47 [PROTO_2]
      142 CAPTURE                          VAL R14
      143 SETTABLEKS                       R15 R14 K48 ["findFirstClassSelector"]
      145 DUPCLOSURE                       R15 K49 [PROTO_4]
      146 SETTABLEKS                       R15 R14 K50 ["getSelectorChain"]
      148 DUPCLOSURE                       R15 K51 [PROTO_6]
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R0
      151 SETTABLEKS                       R15 R14 K52 ["instancesHaveVariant"]
      153 DUPCLOSURE                       R15 K53 [PROTO_7]
      154 CAPTURE                          VAL R14
      155 SETTABLEKS                       R15 R14 K54 ["ruleHasTags"]
      157 DUPCLOSURE                       R15 K55 [PROTO_8]
      158 CAPTURE                          VAL R14
      159 SETTABLEKS                       R15 R14 K56 ["canApplyVariant"]
      161 DUPCLOSURE                       R15 K57 [PROTO_9]
      162 CAPTURE                          VAL R14
      163 SETTABLEKS                       R15 R14 K58 ["applyVariant"]
      165 DUPCLOSURE                       R15 K59 [PROTO_10]
      166 CAPTURE                          VAL R14
      167 SETTABLEKS                       R15 R14 K60 ["removeVariant"]
      169 DUPCLOSURE                       R15 K61 [PROTO_11]
      170 CAPTURE                          VAL R12
      171 SETTABLEKS                       R15 R14 K62 ["getStyleLinkRoot"]
      173 DUPCLOSURE                       R15 K63 [PROTO_12]
      174 SETTABLEKS                       R15 R14 K64 ["findFirstStyleLinkInHierarchy"]
      176 DUPCLOSURE                       R15 K65 [PROTO_13]
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R14
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R5
      181 SETTABLEKS                       R15 R14 K66 ["addStyleLinkToRoot"]
      183 DUPCLOSURE                       R15 K67 [PROTO_15]
      184 CAPTURE                          VAL R1
      185 CAPTURE                          VAL R7
      186 CAPTURE                          VAL R11
      187 CAPTURE                          VAL R14
      188 SETTABLEKS                       R15 R14 K68 ["addStyleLinkToSelection"]
      190 DUPCLOSURE                       R15 K69 [PROTO_16]
      191 CAPTURE                          VAL R14
      192 SETTABLEKS                       R15 R14 K70 ["DEPRECATED_isNestedPseudoInstance"]
      194 RETURN                           R14 1
