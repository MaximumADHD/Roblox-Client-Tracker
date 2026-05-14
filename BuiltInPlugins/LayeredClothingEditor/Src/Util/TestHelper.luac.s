PROTO_0:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADK                            R1 K2 [0.1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [wait]
        2 LOADK                            R1 K2 [0.1]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["thunkMiddleware"]
        5 SETLIST                          R0 R1 1 [1]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K1 ["Store"]
       10 GETTABLEKS                       R1 R1 K2 ["new"]
       12 GETUPVAL                         R2 1
       13 LOADNIL                          R3
       14 MOVE                             R4 R0
       15 CALL                             R1 3 -1
       16 RETURN                           R1 -1

PROTO_3:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["click"]
        3 CALL                             R2 2 0
        4 GETIMPORT                        R2 K2 [wait]
        6 LOADK                            R3 K3 [0.1]
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["clickXPath"]
        3 MOVE                             R3 R0
        4 LOADN                            R4 2
        5 CALL                             R2 2 1
        6 GETIMPORT                        R3 K2 [wait]
        8 LOADK                            R4 K3 [0.1]
        9 CALL                             R3 1 0
       10 GETIMPORT                        R5 K7 [Enum.KeyCode.Backspace]
       12 NAMECALL                         R3 R2 K8 ["sendKey"]
       14 CALL                             R3 2 0
       15 GETIMPORT                        R3 K2 [wait]
       17 LOADK                            R4 K3 [0.1]
       18 CALL                             R3 1 0
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R2 K9 ["sendText"]
       22 CALL                             R3 2 0
       23 GETIMPORT                        R3 K2 [wait]
       25 LOADK                            R4 K3 [0.1]
       26 CALL                             R3 1 0
       27 GETIMPORT                        R5 K11 [Enum.KeyCode.Return]
       29 NAMECALL                         R3 R2 K8 ["sendKey"]
       31 CALL                             R3 2 0
       32 GETIMPORT                        R3 K2 [wait]
       34 LOADK                            R4 K3 [0.1]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mock"]
        3 CALL                             R0 0 1
        4 LOADK                            R2 K1 ["Dialog"]
        5 LOADK                            R3 K2 ["DefaultTitle"]
        6 NAMECALL                         R0 R0 K3 ["getText"]
        8 CALL                             R0 3 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K4 ["new"]
       12 GETIMPORT                        R3 K6 [game]
       14 GETTABLEKS                       R3 R3 K7 ["CoreGui"]
       16 GETTABLE                         R2 R3 R0
       17 CALL                             R1 1 1
       18 GETUPVAL                         R4 1
       19 GETTABLEKS                       R4 R4 K4 ["new"]
       21 LOADK                            R5 K8 ["SolidBackground.ButtonContainer.1.Contents.TextButton"]
       22 CALL                             R4 1 -1
       23 NAMECALL                         R2 R1 K9 ["cat"]
       25 CALL                             R2 -1 1
       26 GETUPVAL                         R3 2
       27 GETTABLEKS                       R3 R3 K10 ["waitForXPathInstance"]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 2
       32 GETTABLEKS                       R3 R3 K11 ["clickXPath"]
       34 MOVE                             R4 R2
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getScreenFlow"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R5 R5 K1 ["new"]
        7 LOADK                            R6 K2 ["SelectFrame.Content"]
        8 CALL                             R5 1 -1
        9 NAMECALL                         R3 R2 K3 ["cat"]
       11 CALL                             R3 -1 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K1 ["new"]
       15 LOADK                            R7 K4 ["NextAndBackButtonContainer.NextButton.Contents.TextButton"]
       16 CALL                             R6 1 -1
       17 NAMECALL                         R4 R3 K3 ["cat"]
       19 CALL                             R4 -1 1
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K5 ["waitForXPathInstance"]
       23 MOVE                             R6 R4
       24 CALL                             R5 1 0
       25 JUMPIFNOT                        R0 ; [+5]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K6 ["addLCItemWithFullCageFromExplorer"]
       29 CALL                             R5 0 0
       30 JUMP                             ; [+10]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K7 ["addLCItemWithAttachmentFromExplorer"]
       35 CALL                             R5 0 0
       36 JUMP                             ; [+4]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K8 ["addLCItemWithoutCageFromExplorer"]
       40 CALL                             R5 0 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K9 ["clickXPath"]
       44 MOVE                             R6 R4
       45 CALL                             R5 1 0
       46 GETIMPORT                        R5 K11 [wait]
       48 LOADK                            R6 K12 [0.1]
       49 CALL                             R5 1 0
       50 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["goToAssetTypeScreenFromStart"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["getScreenFlow"]
        9 LOADB                            R3 1
       10 CALL                             R2 1 1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K2 ["new"]
       14 LOADK                            R6 K3 ["ExpandablePane.Content"]
       15 CALL                             R5 1 -1
       16 NAMECALL                         R3 R2 K4 ["cat"]
       18 CALL                             R3 -1 1
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K2 ["new"]
       22 LOADK                            R7 K5 ["Content.ClothingTypeList.List.Shirt"]
       23 CALL                             R6 1 -1
       24 NAMECALL                         R4 R3 K4 ["cat"]
       26 CALL                             R4 -1 1
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R7 R7 K2 ["new"]
       30 LOADK                            R8 K6 ["Content.AccessoryTypeList.List.Waist"]
       31 CALL                             R7 1 -1
       32 NAMECALL                         R5 R3 K4 ["cat"]
       34 CALL                             R5 -1 1
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K2 ["new"]
       38 LOADK                            R9 K7 ["Content.List.Front"]
       39 CALL                             R8 1 -1
       40 NAMECALL                         R6 R3 K4 ["cat"]
       42 CALL                             R6 -1 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K2 ["new"]
       46 LOADK                            R10 K8 ["NextAndBackButtonContainer.NextButton.Contents.TextButton"]
       47 CALL                             R9 1 -1
       48 NAMECALL                         R7 R3 K4 ["cat"]
       50 CALL                             R7 -1 1
       51 JUMPIFNOT                        R0 ; [+11]
       52 GETUPVAL                         R8 0
       53 GETTABLEKS                       R8 R8 K9 ["waitForXPathInstance"]
       55 MOVE                             R9 R4
       56 CALL                             R8 1 0
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K10 ["clickXPath"]
       60 MOVE                             R9 R4
       61 CALL                             R8 1 0
       62 JUMP                             ; [+30]
       63 GETUPVAL                         R8 0
       64 GETTABLEKS                       R8 R8 K9 ["waitForXPathInstance"]
       66 MOVE                             R9 R5
       67 CALL                             R8 1 0
       68 GETUPVAL                         R8 0
       69 GETTABLEKS                       R8 R8 K10 ["clickXPath"]
       71 MOVE                             R9 R5
       72 CALL                             R8 1 0
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K9 ["waitForXPathInstance"]
       76 MOVE                             R9 R7
       77 CALL                             R8 1 0
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K10 ["clickXPath"]
       81 MOVE                             R9 R7
       82 CALL                             R8 1 0
       83 GETUPVAL                         R8 0
       84 GETTABLEKS                       R8 R8 K9 ["waitForXPathInstance"]
       86 MOVE                             R9 R6
       87 CALL                             R8 1 0
       88 GETUPVAL                         R8 0
       89 GETTABLEKS                       R8 R8 K10 ["clickXPath"]
       91 MOVE                             R9 R6
       92 CALL                             R8 1 0
       93 GETUPVAL                         R8 0
       94 GETTABLEKS                       R8 R8 K9 ["waitForXPathInstance"]
       96 MOVE                             R9 R7
       97 CALL                             R8 1 0
       98 GETUPVAL                         R8 0
       99 GETTABLEKS                       R8 R8 K10 ["clickXPath"]
      101 MOVE                             R9 R7
      102 CALL                             R8 1 0
      103 GETIMPORT                        R8 K12 [wait]
      105 LOADK                            R9 K13 [0.1]
      106 CALL                             R8 1 0
      107 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEquippableGridTilePath"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["waitForXPathInstance"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K2 ["new"]
       13 LOADK                            R5 K3 ["Contents.TextButton"]
       14 CALL                             R4 1 -1
       15 NAMECALL                         R2 R1 K4 ["cat"]
       17 CALL                             R2 -1 1
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["waitForXPathInstance"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K5 ["clickXPath"]
       26 MOVE                             R4 R2
       27 CALL                             R3 1 0
       28 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEditScreenContainer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["new"]
        7 LOADK                            R5 K2 ["PreviewSwizzle.Content.PreviewFrame.Grid"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R1 K3 ["cat"]
       11 CALL                             R2 -1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["new"]
       15 LOADK                            R6 K4 ["ScrollingFrame.Scroller"]
       16 CALL                             R5 1 -1
       17 NAMECALL                         R3 R2 K3 ["cat"]
       19 CALL                             R3 -1 1
       20 ADDK                             R4 R0 K5 [1]
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R7 R7 K1 ["new"]
       24 FASTCALL1                        TOSTRING R4 ; [+3]
       25 MOVE                             R9 R4
       26 GETIMPORT                        R8 K7 [tostring]
       28 CALL                             R8 1 1
       29 CALL                             R7 1 -1
       30 NAMECALL                         R5 R3 K3 ["cat"]
       32 CALL                             R5 -1 -1
       33 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEquippableGridTilePath"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K1 ["waitForXPathInstance"]
        8 MOVE                             R3 R1
        9 CALL                             R2 1 -1
       10 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["clickElement"]
        8 MOVE                             R4 R2
        9 MOVE                             R5 R1
       10 CALL                             R3 2 0
       11 RETURN                           R2 1

PROTO_12:
        0 GETIMPORT                        R1 K2 [os.time]
        2 CALL                             R1 0 1
        3 MOVE                             R2 R0
        4 CALL                             R2 0 1
        5 JUMPIF                           R2 ; [+14]
        6 GETIMPORT                        R3 K2 [os.time]
        8 CALL                             R3 0 1
        9 SUB                              R2 R3 R1
       10 LOADN                            R3 5
       11 JUMPIFNOTLT                      R3 R2 ; [+3]
       13 LOADB                            R2 0
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K4 [wait]
       17 LOADK                            R3 K5 [0.1]
       18 CALL                             R2 1 0
       19 JUMPBACK                         ; [-17]
       20 LOADB                            R2 1
       21 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["getFirstInstance"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 NAMECALL                         R2 R0 K0 ["getFirstInstance"]
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 LOADNIL                          R2
       10 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_17:
        0 GETIMPORT                        R2 K1 [pcall]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 CALL                             R2 1 2
        6 JUMPIFNOTEQKB                    R2 TRUE ; [+3]
        8 MOVE                             R4 R3
        9 JUMPIF                           R4 ; [+1]
       10 LOADNIL                          R4
       11 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETIMPORT                        R4 K1 [pcall]
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CALL                             R4 1 2
        8 JUMPIFNOTEQKB                    R4 TRUE ; [+3]
       10 MOVE                             R1 R5
       11 JUMPIF                           R1 ; [+1]
       12 LOADNIL                          R1
       13 GETUPVAL                         R2 2
       14 JUMPIFEQ                         R1 R2 ; [+2]
       16 LOADB                            R0 0 +1
       17 LOADB                            R0 1
       18 RETURN                           R0 1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 CALL                             R3 1 1
        6 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["GetChildren"]
        3 CALL                             R2 1 1
        4 LENGTH                           R1 R2
        5 GETUPVAL                         R2 1
        6 JUMPIFEQ                         R1 R2 ; [+2]
        8 LOADB                            R0 0 +1
        9 LOADB                            R0 1
       10 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 1
        5 RETURN                           R2 1

PROTO_22:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["new"]
        4 LOADK                            R2 K1 ["game.CoreGui.PluginMockGui.ScreenFlow.Screen.MainFrame.Scroller"]
        5 CALL                             R1 1 -1
        6 RETURN                           R1 -1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["new"]
       10 LOADK                            R2 K2 ["game.CoreGui.PluginMockGui.ScreenFlow"]
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADK                            R1 K1 ["game.CoreGui.PluginMockGui.Container.MainFrame"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getTempInstancesFolder"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 NAMECALL                         R1 R0 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["getTempScreenGui"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 NAMECALL                         R2 R1 K1 ["Destroy"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_25:
        0 GETIMPORT                        R0 K1 [workspace]
        2 LOADK                            R2 K2 ["TempInstancesFolder"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstChild"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+1]
        7 RETURN                           R0 1
        8 GETIMPORT                        R1 K6 [Instance.new]
       10 LOADK                            R2 K7 ["Folder"]
       11 CALL                             R1 1 1
       12 MOVE                             R0 R1
       13 LOADK                            R1 K2 ["TempInstancesFolder"]
       14 SETTABLEKS                       R1 R0 K8 ["Name"]
       16 GETIMPORT                        R1 K1 [workspace]
       18 SETTABLEKS                       R1 R0 K9 ["Parent"]
       20 RETURN                           R0 1

PROTO_26:
        0 GETIMPORT                        R0 K1 [game]
        2 GETTABLEKS                       R0 R0 K2 ["CoreGui"]
        4 LOADK                            R2 K3 ["TempScreenGui"]
        5 NAMECALL                         R0 R0 K4 ["FindFirstChild"]
        7 CALL                             R0 2 1
        8 JUMPIFNOT                        R0 ; [+1]
        9 RETURN                           R0 1
       10 GETIMPORT                        R1 K7 [Instance.new]
       12 LOADK                            R2 K8 ["ScreenGui"]
       13 GETIMPORT                        R3 K1 [game]
       15 GETTABLEKS                       R3 R3 K2 ["CoreGui"]
       17 CALL                             R1 2 1
       18 MOVE                             R0 R1
       19 LOADK                            R1 K3 ["TempScreenGui"]
       20 SETTABLEKS                       R1 R0 K9 ["Name"]
       22 GETIMPORT                        R1 K13 [Enum.ZIndexBehavior.Sibling]
       24 SETTABLEKS                       R1 R0 K11 ["ZIndexBehavior"]
       26 RETURN                           R0 1

PROTO_27:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 MOVE                             R2 R0
        5 JUMPIF                           R2 ; [+3]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["DefaultAvatarName"]
        9 SETTABLEKS                       R2 R1 K5 ["Name"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K6 ["getTempInstancesFolder"]
       14 CALL                             R2 0 1
       15 SETTABLEKS                       R2 R1 K7 ["Parent"]
       17 RETURN                           R1 1

PROTO_28:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K4 ["MeshPart"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 MOVE                             R3 R0
       10 JUMPIF                           R3 ; [+3]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["DefaultClothesName"]
       14 SETTABLEKS                       R3 R2 K6 ["Name"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["getTempInstancesFolder"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R1 K8 ["Parent"]
       22 RETURN                           R2 1

PROTO_29:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K4 ["MeshPart"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 MOVE                             R3 R0
       10 JUMPIF                           R3 ; [+3]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["DefaultClothesName"]
       14 SETTABLEKS                       R3 R2 K6 ["Name"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["getTempInstancesFolder"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R1 K8 ["Parent"]
       22 GETIMPORT                        R3 K2 [Instance.new]
       24 LOADK                            R4 K4 ["MeshPart"]
       25 MOVE                             R5 R2
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R2 K6 ["Name"]
       29 SETTABLEKS                       R4 R3 K6 ["Name"]
       31 GETIMPORT                        R4 K2 [Instance.new]
       33 LOADK                            R5 K9 ["WrapLayer"]
       34 MOVE                             R6 R2
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K10 ["DefaultMeshId"]
       39 SETTABLEKS                       R5 R4 K11 ["CageMeshId"]
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K10 ["DefaultMeshId"]
       44 SETTABLEKS                       R5 R4 K12 ["ReferenceMeshId"]
       46 RETURN                           R2 1

PROTO_30:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 GETIMPORT                        R2 K2 [Instance.new]
        6 LOADK                            R3 K4 ["MeshPart"]
        7 MOVE                             R4 R1
        8 CALL                             R2 2 1
        9 MOVE                             R3 R0
       10 JUMPIF                           R3 ; [+3]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K5 ["DefaultClothesName"]
       14 SETTABLEKS                       R3 R2 K6 ["Name"]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K7 ["getTempInstancesFolder"]
       19 CALL                             R3 0 1
       20 SETTABLEKS                       R3 R1 K8 ["Parent"]
       22 GETIMPORT                        R3 K2 [Instance.new]
       24 LOADK                            R4 K4 ["MeshPart"]
       25 MOVE                             R5 R2
       26 CALL                             R3 2 1
       27 GETTABLEKS                       R4 R2 K6 ["Name"]
       29 SETTABLEKS                       R4 R3 K6 ["Name"]
       31 GETIMPORT                        R4 K2 [Instance.new]
       33 LOADK                            R5 K9 ["WrapTarget"]
       34 MOVE                             R6 R2
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K10 ["DefaultMeshId"]
       39 SETTABLEKS                       R5 R4 K11 ["CageMeshId"]
       41 RETURN                           R2 1

PROTO_31:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Model"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K4 ["getTempInstancesFolder"]
        7 CALL                             R2 0 1
        8 SETTABLEKS                       R2 R1 K5 ["Parent"]
       10 GETIMPORT                        R2 K2 [Instance.new]
       12 LOADK                            R3 K6 ["Humanoid"]
       13 CALL                             R2 1 1
       14 SETTABLEKS                       R1 R2 K5 ["Parent"]
       16 GETIMPORT                        R3 K2 [Instance.new]
       18 LOADK                            R4 K7 ["Part"]
       19 MOVE                             R5 R1
       20 CALL                             R3 2 1
       21 LOADK                            R4 K8 ["HumanoidRootPart"]
       22 SETTABLEKS                       R4 R3 K9 ["Name"]
       24 GETIMPORT                        R4 K2 [Instance.new]
       26 LOADK                            R5 K10 ["MeshPart"]
       27 MOVE                             R6 R1
       28 CALL                             R4 2 1
       29 LOADK                            R5 K11 ["UpperTorso"]
       30 SETTABLEKS                       R5 R4 K9 ["Name"]
       32 GETIMPORT                        R5 K2 [Instance.new]
       34 LOADK                            R6 K10 ["MeshPart"]
       35 MOVE                             R7 R1
       36 CALL                             R5 2 1
       37 LOADK                            R6 K12 ["LowerTorso"]
       38 SETTABLEKS                       R6 R5 K9 ["Name"]
       40 GETIMPORT                        R6 K2 [Instance.new]
       42 LOADK                            R7 K10 ["MeshPart"]
       43 MOVE                             R8 R1
       44 CALL                             R6 2 1
       45 LOADK                            R7 K13 ["Head"]
       46 SETTABLEKS                       R7 R6 K9 ["Name"]
       48 GETIMPORT                        R7 K2 [Instance.new]
       50 LOADK                            R8 K10 ["MeshPart"]
       51 MOVE                             R9 R1
       52 CALL                             R7 2 1
       53 LOADK                            R8 K14 ["LeftFoot"]
       54 SETTABLEKS                       R8 R7 K9 ["Name"]
       56 GETIMPORT                        R8 K2 [Instance.new]
       58 LOADK                            R9 K10 ["MeshPart"]
       59 MOVE                             R10 R1
       60 CALL                             R8 2 1
       61 LOADK                            R9 K15 ["RightFoot"]
       62 SETTABLEKS                       R9 R8 K9 ["Name"]
       64 GETIMPORT                        R9 K2 [Instance.new]
       66 LOADK                            R10 K10 ["MeshPart"]
       67 MOVE                             R11 R1
       68 CALL                             R9 2 1
       69 LOADK                            R10 K16 ["LeftHand"]
       70 SETTABLEKS                       R10 R9 K9 ["Name"]
       72 GETIMPORT                        R10 K2 [Instance.new]
       74 LOADK                            R11 K10 ["MeshPart"]
       75 MOVE                             R12 R1
       76 CALL                             R10 2 1
       77 LOADK                            R11 K17 ["RightHand"]
       78 SETTABLEKS                       R11 R10 K9 ["Name"]
       80 GETIMPORT                        R11 K2 [Instance.new]
       82 LOADK                            R12 K10 ["MeshPart"]
       83 MOVE                             R13 R1
       84 CALL                             R11 2 1
       85 LOADK                            R12 K18 ["RightUpperArm"]
       86 SETTABLEKS                       R12 R11 K9 ["Name"]
       88 GETIMPORT                        R12 K2 [Instance.new]
       90 LOADK                            R13 K10 ["MeshPart"]
       91 MOVE                             R14 R1
       92 CALL                             R12 2 1
       93 LOADK                            R13 K19 ["RightLowerArm"]
       94 SETTABLEKS                       R13 R12 K9 ["Name"]
       96 GETIMPORT                        R13 K2 [Instance.new]
       98 LOADK                            R14 K10 ["MeshPart"]
       99 MOVE                             R15 R1
      100 CALL                             R13 2 1
      101 LOADK                            R14 K20 ["LeftUpperArm"]
      102 SETTABLEKS                       R14 R13 K9 ["Name"]
      104 GETIMPORT                        R14 K2 [Instance.new]
      106 LOADK                            R15 K10 ["MeshPart"]
      107 MOVE                             R16 R1
      108 CALL                             R14 2 1
      109 LOADK                            R15 K21 ["LeftLowerArm"]
      110 SETTABLEKS                       R15 R14 K9 ["Name"]
      112 GETIMPORT                        R15 K2 [Instance.new]
      114 LOADK                            R16 K10 ["MeshPart"]
      115 MOVE                             R17 R1
      116 CALL                             R15 2 1
      117 LOADK                            R16 K22 ["LeftUpperLeg"]
      118 SETTABLEKS                       R16 R15 K9 ["Name"]
      120 GETIMPORT                        R16 K2 [Instance.new]
      122 LOADK                            R17 K10 ["MeshPart"]
      123 MOVE                             R18 R1
      124 CALL                             R16 2 1
      125 LOADK                            R17 K23 ["LeftLowerLeg"]
      126 SETTABLEKS                       R17 R16 K9 ["Name"]
      128 GETIMPORT                        R17 K2 [Instance.new]
      130 LOADK                            R18 K10 ["MeshPart"]
      131 MOVE                             R19 R1
      132 CALL                             R17 2 1
      133 LOADK                            R18 K24 ["RightUpperLeg"]
      134 SETTABLEKS                       R18 R17 K9 ["Name"]
      136 GETIMPORT                        R18 K2 [Instance.new]
      138 LOADK                            R19 K10 ["MeshPart"]
      139 MOVE                             R20 R1
      140 CALL                             R18 2 1
      141 LOADK                            R19 K25 ["RightLowerLeg"]
      142 SETTABLEKS                       R19 R18 K9 ["Name"]
      144 MOVE                             R19 R0
      145 JUMPIF                           R19 ; [+3]
      146 GETUPVAL                         R19 0
      147 GETTABLEKS                       R19 R19 K26 ["DefaultAvatarName"]
      149 SETTABLEKS                       R19 R1 K9 ["Name"]
      151 GETIMPORT                        R19 K2 [Instance.new]
      153 LOADK                            R20 K27 ["WrapTarget"]
      154 MOVE                             R21 R4
      155 CALL                             R19 2 0
      156 RETURN                           R1 1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 RETURN                           R1 1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K2 [Instance.new]
        5 LOADK                            R3 K3 ["Humanoid"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R1 R2 K4 ["Parent"]
        9 GETIMPORT                        R3 K2 [Instance.new]
       11 LOADK                            R4 K5 ["MeshPart"]
       12 CALL                             R3 1 1
       13 SETTABLEKS                       R1 R3 K4 ["Parent"]
       15 GETIMPORT                        R4 K2 [Instance.new]
       17 LOADK                            R5 K6 ["Attachment"]
       18 MOVE                             R6 R3
       19 CALL                             R4 2 1
       20 GETUPVAL                         R5 1
       21 GETTABLEKS                       R5 R5 K7 ["DefaultAttachmentName"]
       23 SETTABLEKS                       R5 R4 K8 ["Name"]
       25 GETIMPORT                        R5 K2 [Instance.new]
       27 LOADK                            R6 K5 ["MeshPart"]
       28 MOVE                             R7 R1
       29 CALL                             R5 2 1
       30 LOADK                            R6 K9 ["Inner"]
       31 SETTABLEKS                       R6 R5 K8 ["Name"]
       33 GETIMPORT                        R6 K2 [Instance.new]
       35 LOADK                            R7 K5 ["MeshPart"]
       36 MOVE                             R8 R1
       37 CALL                             R6 2 1
       38 LOADK                            R7 K10 ["Outer"]
       39 SETTABLEKS                       R7 R6 K8 ["Name"]
       41 SETTABLEKS                       R3 R1 K11 ["PrimaryPart"]
       43 RETURN                           R1 1

PROTO_34:
        0 GETIMPORT                        R1 K1 [game]
        2 LOADK                            R3 K2 ["Selection"]
        3 NAMECALL                         R1 R1 K3 ["GetService"]
        5 CALL                             R1 2 1
        6 NEWTABLE                         R4 0 1
        8 MOVE                             R5 R0
        9 SETLIST                          R4 R5 1 [1]
       11 NAMECALL                         R2 R1 K4 ["Set"]
       13 CALL                             R2 2 0
       14 GETIMPORT                        R2 K6 [wait]
       16 LOADK                            R3 K7 [0.1]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0

PROTO_35:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["clickXPath"]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K2 [game]
        9 LOADK                            R4 K3 ["Selection"]
       10 NAMECALL                         R2 R2 K4 ["GetService"]
       12 CALL                             R2 2 1
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R0
       16 SETLIST                          R5 R6 1 [1]
       18 NAMECALL                         R3 R2 K5 ["Set"]
       20 CALL                             R3 2 0
       21 GETIMPORT                        R3 K7 [wait]
       23 LOADK                            R4 K8 [0.1]
       24 CALL                             R3 1 0
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R2 R2 K9 ["confirmDialog"]
       28 CALL                             R2 0 0
       29 RETURN                           R0 0

PROTO_36:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Part"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K4 ["getTempInstancesFolder"]
        7 CALL                             R1 0 1
        8 SETTABLEKS                       R1 R0 K5 ["Parent"]
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["Selection"]
       13 NAMECALL                         R1 R1 K9 ["GetService"]
       15 CALL                             R1 2 1
       16 NEWTABLE                         R4 0 1
       18 MOVE                             R5 R0
       19 SETLIST                          R4 R5 1 [1]
       21 NAMECALL                         R2 R1 K10 ["Set"]
       23 CALL                             R2 2 0
       24 GETIMPORT                        R2 K12 [wait]
       26 LOADK                            R3 K13 [0.1]
       27 CALL                             R2 1 0
       28 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createClothesWithoutCage"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R1 K3 [Instance.new]
        6 LOADK                            R2 K4 ["Attachment"]
        7 MOVE                             R3 R0
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K5 ["DefaultAttachmentName"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K7 ["AttachmentCFrame"]
       17 SETTABLEKS                       R2 R1 K8 ["CFrame"]
       19 GETIMPORT                        R2 K10 [game]
       21 LOADK                            R4 K11 ["Selection"]
       22 NAMECALL                         R2 R2 K12 ["GetService"]
       24 CALL                             R2 2 1
       25 NEWTABLE                         R5 0 1
       27 MOVE                             R6 R0
       28 SETLIST                          R5 R6 1 [1]
       30 NAMECALL                         R3 R2 K13 ["Set"]
       32 CALL                             R3 2 0
       33 GETIMPORT                        R3 K15 [wait]
       35 LOADK                            R4 K16 [0.1]
       36 CALL                             R3 1 0
       37 RETURN                           R0 1

PROTO_38:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createClothesWithoutCage"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K1 ["hasFullCages"]
        9 MOVE                             R5 R1
       10 CALL                             R4 1 1
       11 NOT                              R3 R4
       12 FASTCALL1                        ASSERT R3 ; [+2]
       13 GETIMPORT                        R2 K3 [assert]
       15 CALL                             R2 1 0
       16 GETIMPORT                        R2 K5 [game]
       18 LOADK                            R4 K6 ["Selection"]
       19 NAMECALL                         R2 R2 K7 ["GetService"]
       21 CALL                             R2 2 1
       22 NEWTABLE                         R5 0 1
       24 MOVE                             R6 R1
       25 SETLIST                          R5 R6 1 [1]
       27 NAMECALL                         R3 R2 K8 ["Set"]
       29 CALL                             R3 2 0
       30 GETIMPORT                        R3 K10 [wait]
       32 LOADK                            R4 K11 [0.1]
       33 CALL                             R3 1 0
       34 RETURN                           R1 1

PROTO_39:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createClothesWithFullCages"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["hasFullCages"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 -1 0
       15 GETIMPORT                        R2 K5 [game]
       17 LOADK                            R4 K6 ["Selection"]
       18 NAMECALL                         R2 R2 K7 ["GetService"]
       20 CALL                             R2 2 1
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R1
       24 SETLIST                          R5 R6 1 [1]
       26 NAMECALL                         R3 R2 K8 ["Set"]
       28 CALL                             R3 2 0
       29 GETIMPORT                        R3 K10 [wait]
       31 LOADK                            R4 K11 [0.1]
       32 CALL                             R3 1 0
       33 RETURN                           R1 1

PROTO_40:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["createClothesWithOuterCage"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["hasOuterCage"]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R2 K3 [assert]
       14 CALL                             R2 -1 0
       15 GETIMPORT                        R2 K5 [game]
       17 LOADK                            R4 K6 ["Selection"]
       18 NAMECALL                         R2 R2 K7 ["GetService"]
       20 CALL                             R2 2 1
       21 NEWTABLE                         R5 0 1
       23 MOVE                             R6 R1
       24 SETLIST                          R5 R6 1 [1]
       26 NAMECALL                         R3 R2 K8 ["Set"]
       28 CALL                             R3 2 0
       29 GETIMPORT                        R3 K10 [wait]
       31 LOADK                            R4 K11 [0.1]
       32 CALL                             R3 1 0
       33 RETURN                           R1 1

PROTO_41:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createAvatarWithFullCages"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["hasFullCages"]
        7 MOVE                             R3 R0
        8 CALL                             R2 1 -1
        9 FASTCALL                         ASSERT ; [+2]
       10 GETIMPORT                        R1 K3 [assert]
       12 CALL                             R1 -1 0
       13 GETIMPORT                        R1 K5 [game]
       15 LOADK                            R3 K6 ["Selection"]
       16 NAMECALL                         R1 R1 K7 ["GetService"]
       18 CALL                             R1 2 1
       19 NEWTABLE                         R4 0 1
       21 MOVE                             R5 R0
       22 SETLIST                          R4 R5 1 [1]
       24 NAMECALL                         R2 R1 K8 ["Set"]
       26 CALL                             R2 2 0
       27 GETIMPORT                        R2 K10 [wait]
       29 LOADK                            R3 K11 [0.1]
       30 CALL                             R2 1 0
       31 RETURN                           R0 1

PROTO_42:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createClothesWithFullCages"]
        3 CALL                             R0 0 1
        4 LOADK                            R3 K1 ["WrapLayer"]
        5 NAMECALL                         R1 R0 K2 ["FindFirstChild"]
        7 CALL                             R1 2 1
        8 LOADK                            R2 K3 [""]
        9 SETTABLEKS                       R2 R1 K4 ["CageMeshId"]
       11 LOADK                            R2 K3 [""]
       12 SETTABLEKS                       R2 R1 K5 ["ReferenceMeshId"]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K6 ["hasInvalidCage"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 -1
       19 FASTCALL                         ASSERT ; [+2]
       20 GETIMPORT                        R2 K8 [assert]
       22 CALL                             R2 -1 0
       23 GETIMPORT                        R2 K10 [game]
       25 LOADK                            R4 K11 ["Selection"]
       26 NAMECALL                         R2 R2 K12 ["GetService"]
       28 CALL                             R2 2 1
       29 NEWTABLE                         R5 0 1
       31 MOVE                             R6 R0
       32 SETLIST                          R5 R6 1 [1]
       34 NAMECALL                         R3 R2 K13 ["Set"]
       36 CALL                             R3 2 0
       37 GETIMPORT                        R3 K15 [wait]
       39 LOADK                            R4 K16 [0.1]
       40 CALL                             R3 1 0
       41 RETURN                           R0 1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getEditScreenContainer"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R4 R4 K1 ["new"]
        7 LOADK                            R5 K2 ["PreviewSwizzle.Content.PreviewFrame.Grid"]
        8 CALL                             R4 1 -1
        9 NAMECALL                         R2 R1 K3 ["cat"]
       11 CALL                             R2 -1 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K1 ["new"]
       15 LOADK                            R6 K4 ["ScrollingFrame.Scroller"]
       16 CALL                             R5 1 -1
       17 NAMECALL                         R3 R2 K3 ["cat"]
       19 CALL                             R3 -1 1
       20 GETUPVAL                         R6 1
       21 GETTABLEKS                       R6 R6 K1 ["new"]
       23 LOADK                            R7 K5 ["AddNewTile"]
       24 CALL                             R6 1 -1
       25 NAMECALL                         R4 R3 K3 ["cat"]
       27 CALL                             R4 -1 1
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K6 ["waitForXPathInstance"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 0
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K1 ["new"]
       36 LOADK                            R8 K7 ["Contents.TextButton"]
       37 CALL                             R7 1 -1
       38 NAMECALL                         R5 R4 K3 ["cat"]
       40 CALL                             R5 -1 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R6 R6 K6 ["waitForXPathInstance"]
       44 MOVE                             R7 R5
       45 CALL                             R6 1 0
       46 JUMPIF                           R5 ; [+1]
       47 RETURN                           R0 0
       48 GETUPVAL                         R6 0
       49 GETTABLEKS                       R6 R6 K8 ["clickXPath"]
       51 MOVE                             R7 R5
       52 CALL                             R6 1 0
       53 GETIMPORT                        R6 K10 [game]
       55 LOADK                            R8 K11 ["Selection"]
       56 NAMECALL                         R6 R6 K12 ["GetService"]
       58 CALL                             R6 2 1
       59 NEWTABLE                         R9 0 1
       61 MOVE                             R10 R0
       62 SETLIST                          R9 R10 1 [1]
       64 NAMECALL                         R7 R6 K13 ["Set"]
       66 CALL                             R7 2 0
       67 GETIMPORT                        R7 K15 [wait]
       69 LOADK                            R8 K16 [0.1]
       70 CALL                             R7 1 0
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K17 ["confirmDialog"]
       74 CALL                             R6 0 0
       75 RETURN                           R0 0

PROTO_44:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["createAvatarWithFullCages"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["createClothesWithFullCages"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Rodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["Util"]
       32 GETTABLEKS                       R4 R4 K10 ["AccessoryAndBodyToolShared"]
       34 GETTABLEKS                       R5 R4 K11 ["ItemCharacteristics"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K5 ["Packages"]
       40 GETTABLEKS                       R7 R7 K12 ["Dev"]
       42 GETTABLEKS                       R7 R7 K13 ["Rhodium"]
       44 CALL                             R6 1 1
       45 GETTABLEKS                       R7 R6 K14 ["Element"]
       47 GETTABLEKS                       R8 R6 K15 ["XPath"]
       49 GETTABLEKS                       R9 R1 K16 ["ContextServices"]
       51 GETTABLEKS                       R10 R9 K17 ["Localization"]
       53 GETIMPORT                        R11 K4 [require]
       55 GETTABLEKS                       R12 R0 K18 ["Src"]
       57 GETTABLEKS                       R12 R12 K19 ["Reducers"]
       59 GETTABLEKS                       R12 R12 K20 ["MainReducer"]
       61 CALL                             R11 1 1
       62 NEWTABLE                         R12 64 0
       64 LOADK                            R13 K21 ["clothes"]
       65 SETTABLEKS                       R13 R12 K22 ["DefaultClothesName"]
       67 LOADK                            R13 K23 ["dummy"]
       68 SETTABLEKS                       R13 R12 K24 ["DefaultAvatarName"]
       70 GETIMPORT                        R13 K27 [CFrame.new]
       72 LOADN                            R14 10
       73 LOADN                            R15 20
       74 LOADN                            R16 10
       75 CALL                             R13 3 1
       76 SETTABLEKS                       R13 R12 K28 ["AttachmentCFrame"]
       78 LOADK                            R13 K29 ["WaistFrontAttachment"]
       79 SETTABLEKS                       R13 R12 K30 ["DefaultAttachmentName"]
       81 LOADK                            R13 K31 ["https://assetdelivery.roblox.com/v1/asset/?id=6799863967"]
       82 SETTABLEKS                       R13 R12 K32 ["DefaultMeshId"]
       84 DUPCLOSURE                       R13 K33 [PROTO_0]
       85 DUPCLOSURE                       R14 K34 [PROTO_1]
       86 SETTABLEKS                       R14 R12 K35 ["delay"]
       88 DUPCLOSURE                       R14 K36 [PROTO_2]
       89 CAPTURE                          VAL R2
       90 CAPTURE                          VAL R11
       91 SETTABLEKS                       R14 R12 K37 ["createTestStore"]
       93 DUPCLOSURE                       R14 K38 [PROTO_3]
       94 SETTABLEKS                       R14 R12 K39 ["clickElement"]
       96 DUPCLOSURE                       R14 K40 [PROTO_4]
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R14 R12 K41 ["sendInputToXPath"]
      100 DUPCLOSURE                       R14 K42 [PROTO_5]
      101 CAPTURE                          VAL R10
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R12
      104 SETTABLEKS                       R14 R12 K43 ["confirmDialog"]
      106 DUPCLOSURE                       R14 K44 [PROTO_6]
      107 CAPTURE                          VAL R12
      108 CAPTURE                          VAL R8
      109 SETTABLEKS                       R14 R12 K45 ["goToAssetTypeScreenFromStart"]
      111 DUPCLOSURE                       R14 K46 [PROTO_7]
      112 CAPTURE                          VAL R12
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R14 R12 K47 ["goToEditScreenFromStart"]
      116 DUPCLOSURE                       R14 K48 [PROTO_8]
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R8
      119 SETTABLEKS                       R14 R12 K49 ["clickEquippableGridTile"]
      121 DUPCLOSURE                       R14 K50 [PROTO_9]
      122 CAPTURE                          VAL R12
      123 CAPTURE                          VAL R8
      124 SETTABLEKS                       R14 R12 K51 ["getEquippableGridTilePath"]
      126 DUPCLOSURE                       R14 K52 [PROTO_10]
      127 CAPTURE                          VAL R12
      128 SETTABLEKS                       R14 R12 K53 ["getEquippableGridTileInstance"]
      130 DUPCLOSURE                       R14 K54 [PROTO_11]
      131 CAPTURE                          VAL R7
      132 CAPTURE                          VAL R12
      133 SETTABLEKS                       R14 R12 K55 ["clickXPath"]
      135 DUPCLOSURE                       R14 K56 [PROTO_12]
      136 DUPCLOSURE                       R15 K57 [PROTO_13]
      137 CAPTURE                          VAL R14
      138 SETTABLEKS                       R15 R12 K58 ["waitForValid"]
      140 DUPCLOSURE                       R15 K59 [PROTO_15]
      141 CAPTURE                          VAL R14
      142 SETTABLEKS                       R15 R12 K60 ["waitForXPathInstance"]
      144 DUPCLOSURE                       R15 K61 [PROTO_17]
      145 DUPCLOSURE                       R16 K62 [PROTO_19]
      146 CAPTURE                          VAL R14
      147 SETTABLEKS                       R16 R12 K63 ["waitForPropertyEqualTo"]
      149 DUPCLOSURE                       R16 K64 [PROTO_21]
      150 CAPTURE                          VAL R14
      151 SETTABLEKS                       R16 R12 K65 ["waitForChildrenCountEqualTo"]
      153 DUPCLOSURE                       R16 K66 [PROTO_22]
      154 CAPTURE                          VAL R8
      155 SETTABLEKS                       R16 R12 K67 ["getScreenFlow"]
      157 DUPCLOSURE                       R16 K68 [PROTO_23]
      158 CAPTURE                          VAL R8
      159 SETTABLEKS                       R16 R12 K69 ["getEditScreenContainer"]
      161 DUPCLOSURE                       R16 K70 [PROTO_24]
      162 CAPTURE                          VAL R12
      163 SETTABLEKS                       R16 R12 K71 ["cleanTempInstances"]
      165 DUPCLOSURE                       R16 K72 [PROTO_25]
      166 SETTABLEKS                       R16 R12 K73 ["getTempInstancesFolder"]
      168 DUPCLOSURE                       R16 K74 [PROTO_26]
      169 SETTABLEKS                       R16 R12 K75 ["getTempScreenGui"]
      171 DUPCLOSURE                       R16 K76 [PROTO_27]
      172 CAPTURE                          VAL R12
      173 SETTABLEKS                       R16 R12 K77 ["createNonAvatar"]
      175 DUPCLOSURE                       R16 K78 [PROTO_28]
      176 CAPTURE                          VAL R12
      177 SETTABLEKS                       R16 R12 K79 ["createClothesWithoutCage"]
      179 DUPCLOSURE                       R16 K80 [PROTO_29]
      180 CAPTURE                          VAL R12
      181 SETTABLEKS                       R16 R12 K81 ["createClothesWithFullCages"]
      183 DUPCLOSURE                       R16 K82 [PROTO_30]
      184 CAPTURE                          VAL R12
      185 SETTABLEKS                       R16 R12 K83 ["createClothesWithOuterCage"]
      187 DUPCLOSURE                       R16 K84 [PROTO_31]
      188 CAPTURE                          VAL R12
      189 DUPCLOSURE                       R17 K85 [PROTO_32]
      190 CAPTURE                          VAL R16
      191 SETTABLEKS                       R17 R12 K86 ["createAvatarWithoutCages"]
      193 DUPCLOSURE                       R17 K87 [PROTO_33]
      194 CAPTURE                          VAL R16
      195 CAPTURE                          VAL R12
      196 SETTABLEKS                       R17 R12 K88 ["createAvatarWithFullCages"]
      198 DUPCLOSURE                       R17 K89 [PROTO_34]
      199 DUPCLOSURE                       R18 K90 [PROTO_35]
      200 CAPTURE                          VAL R12
      201 DUPCLOSURE                       R19 K91 [PROTO_36]
      202 CAPTURE                          VAL R12
      203 SETTABLEKS                       R19 R12 K92 ["addRegularPartFromExplorer"]
      205 DUPCLOSURE                       R19 K93 [PROTO_37]
      206 CAPTURE                          VAL R12
      207 SETTABLEKS                       R19 R12 K94 ["addLCItemWithAttachmentFromExplorer"]
      209 DUPCLOSURE                       R19 K95 [PROTO_38]
      210 CAPTURE                          VAL R12
      211 CAPTURE                          VAL R5
      212 SETTABLEKS                       R19 R12 K96 ["addLCItemWithoutCageFromExplorer"]
      214 DUPCLOSURE                       R19 K97 [PROTO_39]
      215 CAPTURE                          VAL R12
      216 CAPTURE                          VAL R5
      217 SETTABLEKS                       R19 R12 K98 ["addLCItemWithFullCageFromExplorer"]
      219 DUPCLOSURE                       R19 K99 [PROTO_40]
      220 CAPTURE                          VAL R12
      221 CAPTURE                          VAL R5
      222 SETTABLEKS                       R19 R12 K100 ["addLCItemWithOuterCageFromExplorer"]
      224 DUPCLOSURE                       R19 K101 [PROTO_41]
      225 CAPTURE                          VAL R12
      226 CAPTURE                          VAL R5
      227 SETTABLEKS                       R19 R12 K102 ["addAvatarWithFullCagesFromExplorer"]
      229 DUPCLOSURE                       R19 K103 [PROTO_42]
      230 CAPTURE                          VAL R12
      231 CAPTURE                          VAL R5
      232 SETTABLEKS                       R19 R12 K104 ["addLCItemWithInvalidCageFromExplorer"]
      234 DUPCLOSURE                       R19 K105 [PROTO_43]
      235 CAPTURE                          VAL R12
      236 CAPTURE                          VAL R8
      237 DUPCLOSURE                       R20 K106 [PROTO_44]
      238 CAPTURE                          VAL R19
      239 CAPTURE                          VAL R12
      240 SETTABLEKS                       R20 R12 K107 ["addAvatarToGrid"]
      242 DUPCLOSURE                       R20 K108 [PROTO_45]
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R12
      245 SETTABLEKS                       R20 R12 K109 ["addClothesItemToGrid"]
      247 RETURN                           R12 1
